#!/bin/bash

#SBATCH --job-name=m_0_=CONF=
#SBATCH --partition=gpu8
##SBATCH --exclude=gpu007
#SBATCH --mail-type=end
#SBATCH --output=lap.=CONF=.out
#SBATCH --error=lap.=CONF=.out
#SBATCH --nodes=1
#SBATCH -n 1
#SBATCH --cpus-per-task=1
##SBATCH --time=2:00:00
##SBATCH --nodelist=gpu012 
#SBATCH --gres=gpu:1
##SBATCH --exclude=gpu013

#run_dir=/beegfs/home/xinghy/LapH/contraction_run/beta6.20_mu-0.2770_ms-0.2400_L32x64/baryon_0_run
run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/xinghy/LapH/contraction_run/contrac_meson_zero_hx.py
# exe=/beegfs/home/xinghy/LapH/contraction_run/test.py
echo "=CONF= job starts at" `date` > $run_dir/output_=CONF=.log
$exe $input_dir/input_=CONF= >> $run_dir/output_=CONF=.log 2>&1 
echo "=CONF= job ends at" `date` >> $run_dir/output_=CONF=.log
