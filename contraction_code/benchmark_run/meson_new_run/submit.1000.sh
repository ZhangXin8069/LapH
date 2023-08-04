#!/bin/bash

#SBATCH --job-name=baryon_new_1000
#SBATCH --partition=gpu-debug
##SBATCH --exclude=gpu007
#SBATCH --mail-type=end
#SBATCH --output=lap.1000.out
#SBATCH --error=lap.1000.out
#SBATCH --nodes=1
#SBATCH -n 1
#SBATCH --cpus-per-task=1
##SBATCH --time=2:00:00
##SBATCH --nodelist=gpu012 
#SBATCH --gres=gpu:1
##SBATCH --exclude=gpu013

module load cuda/11.6.1-gcc-10.3.0

#run_dir=/public/home/zhangxin/LapH/contraction_run/beta6.20_mu-0.2770_ms-0.2400_L32x64/baryon_0_run
run_dir=.
input_dir=${run_dir}
exe=/public/home/zhangxin/LapH/contraction_code/new_contrac/contrac_meson_new.py
echo "1000 job starts at" `date` > $run_dir/output_1000.log
python $exe $input_dir/input_1000 >> $run_dir/output_1000.log 2>&1 
echo "1000 job ends at" `date` >> $run_dir/output_1000.log
