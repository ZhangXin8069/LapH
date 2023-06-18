import numpy as np
import fileinput
import math
import matplotlib.pyplot as plt
import copy

data_id = '/beegfs/home/zhangxin/content/LapH/run/beta6.41_mu-0.2320_ms-0.2050_L32x64/contraction_run/PionKaon_run/P000/eff_mass_p000_us'
infile = fileinput.input(data_id)
sum_mass = []
for line in infile:
    temp = line.split()
    sum_mass.append(temp)
    
time = np.arange(64)
sum_mass_str = np.array(sum_mass)
sum_mass = sum_mass_str.astype(np.float)
#print('shape:',sum_mass.shape)
#print(sum_mass)

mass_bar = np.zeros(64)
jack_error = np.zeros(64)
N = 100
for tao in range(64):
    mass_t = sum_mass[:,tao]
    mass_t_bar = np.mean(mass_t)
    mass_bar[tao] = mass_t_bar
    #print('check massbar:',mass_t_bar)
    mass_tn_bar = np.zeros(100)
    for n in range(100):
        mas_temp = copy.deepcopy(mass_t)
        mas_temp[n] = 0
        mass_tn_bar[n] = np.mean(mas_temp)
    #print('check messn_bar:',mass_tn_bar)
    
    delta_bar = mass_tn_bar - mass_t_bar
    #print('check delta_bar',delta_bar)
    delta_bar = delta_bar**2
    sum_del_bar = sum(delta_bar)
    jack_error[tao] = np.sqrt(((N-1)*sum_del_bar)/N)
#print(jack_error)

#print(mass_bar.shape)
#print(time.shape)
plt.figure(figsize = (10,10))
plt.title('kaon(us)')
#plt.scatter(time,mass_bar)
plt.errorbar(time,mass_bar,yerr = jack_error,linestyle = 'none')
#plt.ylim(0.06,0.15)
plt.xlabel('time')
plt.ylabel('eff_mass')
plt.show()
