import os
import shutil

for x in range(0,10):
	xname = '%03d' %x
	fname =  '/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_py/contrac_meson_zero_hx.%s.py'%(xname)
	shutil.copy('/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py',fname)

print('done')
