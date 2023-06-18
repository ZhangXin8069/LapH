import numpy as np
import fileinput
import math
import matplotlib.pyplot as plt
import copy
print(plt.get_backend())

Nt = 64
Nev = 100

ef_mass_arr = np.zeros(Nt)
sum_mass = np.zeros((Nev,Nt))
mean_corr = np.zeros(Nt)
sum_corr = np.zeros((Nev,Nt))
jeck_corr = np.zeros((Nev,Nt))
#pion_id = '/beegfs/home/zhangxin/content/LapH/contraction_code'

infile = fileinput.input('/beegfs/home/zhangxin/content/LapH/contraction_code/corr_uu_gammai_Px0Py0Pz0_conf15000.dat')
flist = []

for line in infile :
    tmp=line.split()
    temp =float(tmp[1])
    flist.append(temp)

    del flist[0]
    #print(flist)
    corr = np.array(flist)
    print(corr.shape)

#effective mass

jeck_corr_n = corr
for t_mass in range (1,63):
    corrfun = (jeck_corr_n[t_mass+1]+jeck_corr_n[t_mass-1])/(2*jeck_corr_n[t_mass])
#    print(corrfun)
    if corrfun >=1 :
        effmass = math.acosh(corrfun)
    else :
        print('the error occur in.%i'%(t_mass))
        effmass = 0
    ef_mass_arr[t_mass] = effmass




#np.savetxt('/beegfs/home/zhangxin/content/LapH/run/beta6.41_mu-0.2320_ms-0.2050_L32x64/contraction_run/PionKaon_run/P000/eff_mass_p000_uu',ef_mass_arr,fmt = '%.8f')
time = np.arange(Nt)
plt.figure(figsize = (10,10))
plt.title('pion(uu)')
plt.scatter(time,ef_mass_arr)
plt.ylim(0.15,0.20)
plt.xlabel('time')
plt.ylabel('eff_mass')
plt.show()
plt.close()
