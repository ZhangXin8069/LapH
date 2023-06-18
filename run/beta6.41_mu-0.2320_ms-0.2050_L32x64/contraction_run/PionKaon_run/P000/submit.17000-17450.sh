#!/bin/bash

#SBATCH --job-name=m_0_17000-17450
#SBATCH --partition=gpu-debug
#SBATCH --mail-type=end
#SBATCH --output=lap.17000-17450.out
#SBATCH --error=lap.17000-17450.out
#SBATCH --nodes=1
#SBATCH -n 1
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=1
##SBATCH --time=2:00:00
##SBATCH --nodelist=gpu012 
##SBATCH --exclude=gpu007
##SBATCH --exclude=gpu013
run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "17000 job starts at" `date` > $run_dir/output_17000.log
$exe $input_dir/input_17000 >> $run_dir/output_17000.log 2>&1 
echo "17000 job ends at" `date` >> $run_dir/output_17000.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "17050 job starts at" `date` > $run_dir/output_17050.log
$exe $input_dir/input_17050 >> $run_dir/output_17050.log 2>&1 
echo "17050 job ends at" `date` >> $run_dir/output_17050.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "17100 job starts at" `date` > $run_dir/output_17100.log
$exe $input_dir/input_17100 >> $run_dir/output_17100.log 2>&1 
echo "17100 job ends at" `date` >> $run_dir/output_17100.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "17150 job starts at" `date` > $run_dir/output_17150.log
$exe $input_dir/input_17150 >> $run_dir/output_17150.log 2>&1 
echo "17150 job ends at" `date` >> $run_dir/output_17150.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "17200 job starts at" `date` > $run_dir/output_17200.log
$exe $input_dir/input_17200 >> $run_dir/output_17200.log 2>&1 
echo "17200 job ends at" `date` >> $run_dir/output_17200.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "17250 job starts at" `date` > $run_dir/output_17250.log
$exe $input_dir/input_17250 >> $run_dir/output_17250.log 2>&1 
echo "17250 job ends at" `date` >> $run_dir/output_17250.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "17300 job starts at" `date` > $run_dir/output_17300.log
$exe $input_dir/input_17300 >> $run_dir/output_17300.log 2>&1 
echo "17300 job ends at" `date` >> $run_dir/output_17300.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "17350 job starts at" `date` > $run_dir/output_17350.log
$exe $input_dir/input_17350 >> $run_dir/output_17350.log 2>&1 
echo "17350 job ends at" `date` >> $run_dir/output_17350.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "17400 job starts at" `date` > $run_dir/output_17400.log
$exe $input_dir/input_17400 >> $run_dir/output_17400.log 2>&1 
echo "17400 job ends at" `date` >> $run_dir/output_17400.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "17450 job starts at" `date` > $run_dir/output_17450.log
$exe $input_dir/input_17450 >> $run_dir/output_17450.log 2>&1 
echo "17450 job ends at" `date` >> $run_dir/output_17450.log

