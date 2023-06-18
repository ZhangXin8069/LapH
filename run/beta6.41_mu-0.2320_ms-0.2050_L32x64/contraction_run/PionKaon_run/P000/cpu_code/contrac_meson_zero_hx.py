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
	if(tmp[0]=='peram_u_dir'):
		peram_u_dir=tmp[1]
	if(tmp[0]=='peram_s_dir'):
		peram_s_dir=tmp[1]
	if(tmp[0]=='corr_pion_dir'):
		corr_pion_dir=tmp[1]
	if(tmp[0]=='corr_kaon_dir'):
		corr_kaon_dir=tmp[1]
	if(tmp[0]=='corr_etas_dir'):
		corr_etas_dir=tmp[1]

#peram_size=Nt*4*Nev*Nev*2
value_g5Gamma,row_g5Gamma,col_g5Gamma = gamma(0)
value_Gammag5,row_Gammag5,col_Gammag5 = gamma(0)

corr_pion=np.zeros((1,Nt), dtype=complex)
corr_kaon=np.zeros((1,Nt), dtype=complex)
corr_etas=np.zeros((1,Nt), dtype=complex)

for t_source in range(0,Nt,1):
	st0 = time.time()
	st = time.time()
	peram_u=readin_peram(peram_u_dir, conf_id, Nt, Nev, Nev1, t_source)
	ed = time.time()
	print("read peram_u done, time used: %.3f s" %(ed-st))
	
	st = time.time()	
	peram_s=readin_peram(peram_s_dir, conf_id, Nt, 100, Nev1, t_source)
	ed = time.time()
	print("read peram_s done, time used: %.3f s" %(ed-st))

	for t_sink in range(0,Nt):

		contrac_pion_temp=0.0
		contrac_kaon_temp=0.0
		contrac_etas_temp=0.0

		st = time.time()
		for id1 in range(4):
			for id2 in range(4):
				
				contrac_pion_temp=( contrac_pion_temp + value_g5Gamma[id1] * value_Gammag5[id2] *
				contract("ec,ec",  peram_u[t_sink,:,:,col_g5Gamma[id1],row_Gammag5[id2]], np.conj(peram_u[t_sink,:,:,row_g5Gamma[id1],col_Gammag5[id2]]) ) )

				contrac_kaon_temp=( contrac_kaon_temp+ value_g5Gamma[id1] * value_Gammag5[id2] *
				contract("ec,ec",  peram_u[t_sink,:,:,col_g5Gamma[id1],row_Gammag5[id2]], np.conj(peram_s[t_sink,:,:,row_g5Gamma[id1],col_Gammag5[id2]]) ) )

				contrac_etas_temp=( contrac_etas_temp + value_g5Gamma[id1] * value_Gammag5[id2] *
				contract("ec,ec",  peram_s[t_sink,:,:,col_g5Gamma[id1],row_Gammag5[id2]], np.conj(peram_s[t_sink,:,:,row_g5Gamma[id1],col_Gammag5[id2]]) ) )


		ed = time.time()
		print("compute corr t_sink t_source %d %d done, time used: %.3f s" %(t_sink, t_source, ed-st))


		corr_pion[0,(t_sink-t_source+Nt)%Nt] = corr_pion[0,(t_sink-t_source+Nt)%Nt] + contrac_pion_temp
		corr_kaon[0,(t_sink-t_source+Nt)%Nt] = corr_kaon[0,(t_sink-t_source+Nt)%Nt] + contrac_kaon_temp
		corr_etas[0,(t_sink-t_source+Nt)%Nt] = corr_etas[0,(t_sink-t_source+Nt)%Nt] + contrac_etas_temp


	del peram_u, peram_s
	# cp._default_memory_pool.free_all_blocks()

	

	ed0 = time.time()
	print("****************all complete for t_source %d, time used: %.3f s****************" %(t_source, ed0-st0))


# corr_pion=cp.asnumpy(corr_pion)
# corr_kaon=cp.asnumpy(corr_kaon)
# corr_etas=cp.asnumpy(corr_etas)

write_data_ascii(corr_pion, Nt, Nx, "%s/corr_uu_gamma5_Px0Py0Pz0_conf%s.dat"%(corr_pion_dir, conf_id))
write_data_ascii(corr_kaon, Nt, Nx, "%s/corr_us_gamma5_Px0Py0Pz0_conf%s.dat"%(corr_kaon_dir, conf_id))	
# write_data_ascii(corr_etas, Nt, Nx, "%s/corr_ss_gamma5_Px0Py0Pz0_conf%s.dat"%(corr_etas_dir, conf_id))	