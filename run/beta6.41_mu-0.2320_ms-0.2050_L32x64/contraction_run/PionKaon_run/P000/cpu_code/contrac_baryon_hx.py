#!/beegfs/home/liuming/software/install/python/bin/python3

#test file to check whether first term has problem

import numpy as np
# import cupy as cp
import os
import fileinput
from gamma_cupy import *
from gamma_matrix_cupy import *
from input_output import *
from opt_einsum import contract
import time

infile=fileinput.input()
for line in infile:
  tmp=line.split()
  if(tmp[0]=='Nt'):
    Nt=int(tmp[1])
  if(tmp[0]=='Nx'):
    Nx=int(tmp[1])
  if(tmp[0]=='conf_id'):
    conf_id=tmp[1]
  if(tmp[0]=='Nev'):
    Nev=int(tmp[1])
  if(tmp[0]=='Nev1'):  #number of eigenvectors used in contraction
    Nev1=int(tmp[1])
  if(tmp[0]=='Px'):
    Px=int(tmp[1])
  if(tmp[0]=='Py'):
    Py=int(tmp[1])
  if(tmp[0]=='Pz'):
    Pz=int(tmp[1])
  if(tmp[0]=='peram_u_dir'):
    peram_u_dir=tmp[1]
  if(tmp[0]=='peram_s_dir'):
    peram_s_dir=tmp[1]
  if(tmp[0]=='VVV_dir'):
    VVV_dir=tmp[1]
  if(tmp[0]=='corr_nucl_dir'):
    corr_nucl_dir=tmp[1]
  if(tmp[0]=='corr_lamb_dir'):
    corr_lamb_dir=tmp[1]

#peram_size=Nt*4*Nev*Nev*2
value_cg5,row_cg5,col_cg5 = gamma(7)
value_g5,row_g5,col_g5 = gamma(5)
# matrix_pplus = gamma_matrix(16) #positive parity projection
# matrix_pminus = gamma_matrix(17) #negative parity projection
matrix_pplus = 0.5*(gamma_matrix(0)+gamma_matrix(4))
matrix_pminus = 0.5*(gamma_matrix(0)-gamma_matrix(4))

corr_nucl_pp=np.zeros((1,Nt), dtype=complex)
corr_nucl_pm=np.zeros((1,Nt), dtype=complex)
# corr_lamb_pp=np.zeros((1,Nt), dtype=complex)
# corr_lamb_pm=np.zeros((1,Nt), dtype=complex)

# contrac_nucl_fl=np.zeros((Nt,4,4), dtype=complex)
# contrac_lamb_fl=np.zeros((Nt,4,4), dtype=complex)

# corr_proj=np.zeros((1,Nt),dtype=complex)
st = time.time()
VVV_sink=readin_VVV_all(VVV_dir, 100, Nev1,Nt,conf_id, Px, Py, Pz)
ed = time.time()
print("read VVV_sink done, time used: %.3f s" %(ed-st))

for t_source in range(0,Nt):
  st0 = time.time()
  st = time.time()
  peram_u=readin_peram(peram_u_dir, conf_id, Nt, Nev, Nev1, t_source)
  ed = time.time()
  print("read peram_u done, time used: %.3f s" %(ed-st))
  
  # st = time.time()	
  # peram_s=readin_peram(peram_s_dir, conf_id, Nt, Nev, Nev1, t_source)
  # ed = time.time()
  # print("read peram_s done, time used: %.3f s" %(ed-st))

  for t_sink in range(0,Nt):

    contrac_nucl_temp=np.zeros((4,4), dtype=complex)
    # contrac_lamb_temp=np.zeros((4,4), dtype=complex)

    st = time.time()
    for id1 in range(4):
      for id2 in range(4):
        
        contrac_nucl_temp=( contrac_nucl_temp+value_cg5[id1]*value_cg5[id2]*
        (contract("abc,ad,be,cfil,def->il", VVV_sink[t_sink], peram_u[t_sink,:,:,row_cg5[id1],row_cg5[id2]], 
        peram_u[t_sink,:,:,col_cg5[id1],col_cg5[id2]], peram_u[t_sink,:,:,:,:], np.conj(VVV_sink[t_source]))-
        contract("abc,afl,be,cdi,def->il", VVV_sink[t_sink], peram_u[t_sink,:,:,row_cg5[id1],:], 
        peram_u[t_sink,:,:,col_cg5[id1],col_cg5[id2]], peram_u[t_sink,:,:,:,row_cg5[id2]], np.conj(VVV_sink[t_source]))) )

        # contrac_nucl_term2=( contrac_nucl_term2+value_cg5[id1]*value_cg5[id2]*
        # contract("abc,ae,bd,cfil,def->il", VVV_sink[t_sink], peram_u[t_sink,:,:,row_cg5[id1],col_cg5[id2]], 
        # peram_u[t_sink,:,:,col_cg5[id1],row_cg5[id2]], peram_u[t_sink,:,:,:,:], np.conj(VVV_sink[t_source])) )

        # contrac_lamb_temp=( contrac_lamb_temp+value_cg5[id1]*value_cg5[id2]*
        # contract("abc,ad,be,cfil,def->il", VVV_sink[t_sink], peram_u[t_sink,:,:,row_cg5[id1],row_cg5[id2]], 
        # peram_u[t_sink,:,:,col_cg5[id1],col_cg5[id2]], peram_s[t_sink,:,:,:,:], np.conj(VVV_sink[t_source]) ) )

    contrac_nucl_pp=np.trace(np.matmul(matrix_pplus,contrac_nucl_temp))	
    contrac_nucl_pm=np.trace(np.matmul(matrix_pminus,contrac_nucl_temp))	
    # contrac_lamb_pp=np.trace(np.matmul(matrix_pplus,contrac_lamb_temp))
    # contrac_lamb_pm=np.trace(np.matmul(matrix_pminus,contrac_lamb_temp))

    ed = time.time()
    print("compute corr t_sink t_source %d %d done, time used: %.3f s" %(t_sink, t_source, ed-st))

    if(t_sink<t_source):
      contrac_nucl_pp=-1.0*contrac_nucl_pp
      # contrac_lamb_pp=-1.0*contrac_lamb_pp
    if(t_sink>t_source):
      contrac_nucl_pm=-1.0*contrac_nucl_pm
      # contrac_lamb_pm=-1.0*contrac_lamb_pm

    corr_nucl_pp[0,(t_sink-t_source+Nt)%Nt] = corr_nucl_pp[0,(t_sink-t_source+Nt)%Nt] + contrac_nucl_pp
    corr_nucl_pm[0,(t_sink-t_source+Nt)%Nt] = corr_nucl_pm[0,(t_sink-t_source+Nt)%Nt] + contrac_nucl_pm
    # corr_lamb_pp[0,(t_sink-t_source+Nt)%Nt] = corr_lamb_pp[0,(t_sink-t_source+Nt)%Nt] + contrac_lamb_pp
    # corr_lamb_pm[0,(t_sink-t_source+Nt)%Nt] = corr_lamb_pm[0,(t_sink-t_source+Nt)%Nt] + contrac_lamb_pm

  # del peram_u, peram_s
  # np._default_memory_pool.free_all_blocks()

  ed0 = time.time()
  print("****************all complete for t_source %d, time used: %.3f s****************" %(t_source, ed0-st0))


# for id1 in range(4):
# 	for id2 in range(4):
# 		corr_nucl[0] = corr_nucl[0] + matrix_pplus[id2,id1]*contrac_nucl_fl[:,id1, id2]
# 		corr_lamb[0] = corr_lamb[0] + matrix_pplus[id2,id1]*contrac_lamb_fl[:,id1, id2]

# corr_nucl[0]=np.trace(np.matmul(matrix_pplus,contrac_nucl_fl[:]), axis1=1, axis2=2)	
# corr_lamb[0]=np.trace(np.matmul(matrix_pminus,contrac_lamb_fl[:]), axis1=1, axis2=2)	

# corr_nucl_pp=np.asnumpy(corr_nucl_pp)
# corr_nucl_pm=np.asnumpy(corr_nucl_pm)
# corr_lamb_pp=np.asnumpy(corr_lamb_pp)
# corr_lamb_pm=np.asnumpy(corr_lamb_pm)

write_data_ascii(corr_nucl_pp, Nt, Nx, "%s/corr_Nucleon_pp_Px%sPy%sPz%s.conf%s.dat"%(corr_nucl_dir,Px,Py,Pz,conf_id))
write_data_ascii(corr_nucl_pm, Nt, Nx, "%s/corr_Nucleon_pm_Px%sPy%sPz%s.conf%s.dat"%(corr_nucl_dir,Px,Py,Pz,conf_id))
# write_data_ascii(corr_lamb_pp, Nt, Nx, "%s/corr_Lambda_pp_Px%sPy%sPz%s.conf%s.dat"%(corr_lamb_dir,Px,Py,Pz,conf_id))
# write_data_ascii(corr_lamb_pm, Nt, Nx, "%s/corr_Lambda_pm_Px%sPy%sPz%s.conf%s.dat"%(corr_lamb_dir,Px,Py,Pz,conf_id))