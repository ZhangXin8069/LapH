#!/bin/bash

#SBATCH --job-name=y_0_16350
#SBATCH --partition=gpu-debug
##SBATCH --exclude=gpu007
#SBATCH --mail-type=end
#SBATCH --output=lap.14450.out
#SBATCH --error=lap.14450.out
#SBATCH --nodes=1
#SBATCH -n 1
#SBATCH --cpus-per-task=1
##SBATCH --time=2:00:00
##SBATCH --nodelist=gpu012 
#SBATCH --gres=gpu:1
##SBATCH --exclude=gpu013

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_ro.py    
echo "16350 job starts at" `date` > $run_dir/output_16350.log
$exe $input_dir/input_16350 >> $run_dir/output_16350.log 2>&1
echo "16350 job ends at" `date` >> $run_dir/output_16350.log
