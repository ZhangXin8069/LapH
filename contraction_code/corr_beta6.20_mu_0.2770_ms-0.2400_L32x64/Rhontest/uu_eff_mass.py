import numpy as np
import fileinput
import math
import matplotlib.pyplot as plt
import copy

Nt = 64
Nev = 90

ef_mass_arr = np.zeros(Nt)
sum_mass = np.zeros((Nev,Nt))
mean_corr = np.zeros(Nt)
sum_corr = np.zeros((Nev,Nt))
jeck_corr = np.zeros((Nev,Nt))
pion_id = '/beegfs/home/zhangxin/content/LapH/contraction_code/corr_beta6.20_mu_0.2770_ms-0.2400_L32x64/'
for fid in range(Nev):
    infile = fileinput.input('%s/corr_uu_gammai_Px0Py0Pz0_conf%05d.dat'%(pion_id,13500+fid*50))
    flist = []

    for line in infile :
        tmp=line.split()
        temp =float(tmp[1])
        flist.append(temp)

    del flist[0]
    #print(flist)
    corr = np.array(flist)

    sum_corr[fid] = corr


#jackknife error
jack_error = np.zeros(Nt)
corr_bar = np.zeros(Nt)
N = Nev
for tao in range(Nt):
    corr_t = sum_corr[:,tao]
    corr_t_bar = np.mean(corr_t)
    corr_bar[tao] = corr_t_bar
    #print('check massbar:',mass_t_bar)
    corr_tn_bar = np.zeros(Nev)

    for n in range(Nev):
        corr_temp = np.delete(corr_t,n)
        corr_tn_bar[n] = np.mean(corr_temp)
        jeck_corr[n][tao] = corr_tn_bar[n]

    delta_bar = corr_tn_bar - corr_t_bar
 
    delta_bar = delta_bar**2
    sum_del_bar = sum(delta_bar)
    jack_error[tao] = np.sqrt(((N-1)*sum_del_bar)/N)
#print('jkerror',jeck_corr)



#effective mass
for num in range(Nev):
    jeck_corr_n = jeck_corr[num]
    for t_mass in range (1,corr.shape[0]-1):
        corrfun = (jeck_corr_n[t_mass+1]+jeck_corr_n[t_mass-1])/(2*jeck_corr_n[t_mass])
#    print(corrfun)
        if corrfun >=1 :
            effmass = math.acosh(corrfun)
        else :
            print('the error occur in%i.%i'%(num,t_mass))
            effmass = 0
        ef_mass_arr[t_mass] = effmass
    #print('mass%i'%(num),ef_mass_arr)
    sum_mass[num] = ef_mass_arr
    #print('efmass:',ef_mass_arr)

#effective mass jackknife error
jk_mass_err = np.zeros(Nt)
mass_bar = np.zeros(Nt)
N = Nev
for tao_err in range(Nt):
    jk_mass = sum_mass[:,tao_err]
    #print('jkmass:',jk_mass)
    mass_t_bar = np.mean(jk_mass)
    mass_bar[tao_err] = mass_t_bar
  
    mass_tn_bar = np.zeros(Nev)
    delta_bar = jk_mass-mass_t_bar
    #print('delta',delta_bar)
    
    delta_bar = delta_bar**2
    sum_mass_bar = sum(delta_bar)
    jk_mass_err[tao_err] = np.sqrt(((N-1)*sum_mass_bar)/N)

#np.savetxt('/beegfs/home/zhangxin/content/LapH/run/beta6.41_mu-0.2320_ms-0.2050_L32x64/contraction_run/PionKaon_run/P000/eff_mass_p000_uu',ef_mass_arr,fmt = '%.8f')
time = np.arange(Nt)
plt.figure(figsize = (10,10))
plt.title('rhon(uu)')
#plt.plot(time,mass_bar)
#plt.scatter(time,mass_bar)
plt.errorbar(time,mass_bar,yerr = jk_mass_err,marker = '.',linestyle = 'none')
#plt.ylim(0.15,0.20)
plt.xlabel('time')
plt.ylabel('eff_mass')
plt.show()
plt.close()
