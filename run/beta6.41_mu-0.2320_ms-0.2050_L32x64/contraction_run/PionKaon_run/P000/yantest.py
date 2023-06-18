import numpy as np
print('well')

prem_dir = '/beegfs/home/zhangxin/content/LapH/run/beta6.41_mu-0.2320_ms-0.2050_L32x64/contraction_run/PionKaon_run/P000'

f1 = open('%s/perams.15000.%i.17'%(prem_dir,0),'rb')
print('a')
peram=np.fromfile(f1,dtype='f8')
f1.close()
#print(prem)

for sink in range(1,4):
        f = open("%s/perams.15000.%i.17"%(prem_dir,sink),'rb')
        temp = np.fromfile(f,dtype='f8')
        peram = np.append(peram,temp)
        temp = None
        f.close()

peram_size = peram.size
Nev=int(np.sqrt(peram_size/(4*4*64*2)))
peram=peram.reshape(4,64,Nev,4,Nev,2) #d_source, t_sink, ev_source, d_sink, ev_sink, complex
peram=peram.transpose(1,4,2,3,0,5) #t_sink, ev_sink, ev_souce, d_sink, d_source, complex
peram=peram[...,0] + peram[...,1]*1j
peram=peram[:,0:100,0:100,:,:]
peram_cupy=np.array(peram)
perama = peram[1,:,:,1,2]
peram_shape = np.shape(perama)
#print('peram:',peram)
print('pera:',perama)
print('shape:',peram_shape)
print('size:',peram_size)
print('Nev:',Nev)

