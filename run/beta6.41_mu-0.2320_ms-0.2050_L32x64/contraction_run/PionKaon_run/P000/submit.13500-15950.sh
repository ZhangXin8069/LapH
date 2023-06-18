#!/bin/bash

#SBATCH --job-name=m_0_13500-15950
#SBATCH --partition=gpu-debug
##SBATCH --exclude=gpu007
#SBATCH --mail-type=end
#SBATCH --output=lap.13500-15950.out
#SBATCH --error=lap.13500-15950.out
#SBATCH --nodes=1
#SBATCH -n 1
#SBATCH --cpus-per-task=1
##SBATCH --time=2:00:00
##SBATCH --nodelist=gpu012 
#SBATCH --gres=gpu:1
##SBATCH --exclude=gpu013
run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "13500 job starts at" `date` > $run_dir/output_13500.log
$exe $input_dir/input_13500 >> $run_dir/output_13500.log 2>&1 
echo "13500 job ends at" `date` >> $run_dir/output_13500.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "13550 job starts at" `date` > $run_dir/output_13550.log
$exe $input_dir/input_13550 >> $run_dir/output_13550.log 2>&1 
echo "13550 job ends at" `date` >> $run_dir/output_13550.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "13600 job starts at" `date` > $run_dir/output_13600.log
$exe $input_dir/input_13600 >> $run_dir/output_13600.log 2>&1 
echo "13600 job ends at" `date` >> $run_dir/output_13600.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "13650 job starts at" `date` > $run_dir/output_13650.log
$exe $input_dir/input_13650 >> $run_dir/output_13650.log 2>&1 
echo "13650 job ends at" `date` >> $run_dir/output_13650.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "13700 job starts at" `date` > $run_dir/output_13700.log
$exe $input_dir/input_13700 >> $run_dir/output_13700.log 2>&1 
echo "13700 job ends at" `date` >> $run_dir/output_13700.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "13750 job starts at" `date` > $run_dir/output_13750.log
$exe $input_dir/input_13750 >> $run_dir/output_13750.log 2>&1 
echo "13750 job ends at" `date` >> $run_dir/output_13750.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "13800 job starts at" `date` > $run_dir/output_13800.log
$exe $input_dir/input_13800 >> $run_dir/output_13800.log 2>&1 
echo "13800 job ends at" `date` >> $run_dir/output_13800.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "13850 job starts at" `date` > $run_dir/output_13850.log
$exe $input_dir/input_13850 >> $run_dir/output_13850.log 2>&1 
echo "13850 job ends at" `date` >> $run_dir/output_13850.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "13900 job starts at" `date` > $run_dir/output_13900.log
$exe $input_dir/input_13900 >> $run_dir/output_13900.log 2>&1 
echo "13900 job ends at" `date` >> $run_dir/output_13900.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "13950 job starts at" `date` > $run_dir/output_13950.log
$exe $input_dir/input_13950 >> $run_dir/output_13950.log 2>&1 
echo "13950 job ends at" `date` >> $run_dir/output_13950.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "14000 job starts at" `date` > $run_dir/output_14000.log
$exe $input_dir/input_14000 >> $run_dir/output_14000.log 2>&1 
echo "14000 job ends at" `date` >> $run_dir/output_14000.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "14050 job starts at" `date` > $run_dir/output_14050.log
$exe $input_dir/input_14050 >> $run_dir/output_14050.log 2>&1 
echo "14050 job ends at" `date` >> $run_dir/output_14050.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "14100 job starts at" `date` > $run_dir/output_14100.log
$exe $input_dir/input_14100 >> $run_dir/output_14100.log 2>&1 
echo "14100 job ends at" `date` >> $run_dir/output_14100.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "14150 job starts at" `date` > $run_dir/output_14150.log
$exe $input_dir/input_14150 >> $run_dir/output_14150.log 2>&1 
echo "14150 job ends at" `date` >> $run_dir/output_14150.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "14200 job starts at" `date` > $run_dir/output_14200.log
$exe $input_dir/input_14200 >> $run_dir/output_14200.log 2>&1 
echo "14200 job ends at" `date` >> $run_dir/output_14200.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "14250 job starts at" `date` > $run_dir/output_14250.log
$exe $input_dir/input_14250 >> $run_dir/output_14250.log 2>&1 
echo "14250 job ends at" `date` >> $run_dir/output_14250.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "14300 job starts at" `date` > $run_dir/output_14300.log
$exe $input_dir/input_14300 >> $run_dir/output_14300.log 2>&1 
echo "14300 job ends at" `date` >> $run_dir/output_14300.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "14350 job starts at" `date` > $run_dir/output_14350.log
$exe $input_dir/input_14350 >> $run_dir/output_14350.log 2>&1 
echo "14350 job ends at" `date` >> $run_dir/output_14350.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "14400 job starts at" `date` > $run_dir/output_14400.log
$exe $input_dir/input_14400 >> $run_dir/output_14400.log 2>&1 
echo "14400 job ends at" `date` >> $run_dir/output_14400.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "14450 job starts at" `date` > $run_dir/output_14450.log
$exe $input_dir/input_14450 >> $run_dir/output_14450.log 2>&1 
echo "14450 job ends at" `date` >> $run_dir/output_14450.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "14500 job starts at" `date` > $run_dir/output_14500.log
$exe $input_dir/input_14500 >> $run_dir/output_14500.log 2>&1 
echo "14500 job ends at" `date` >> $run_dir/output_14500.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "14550 job starts at" `date` > $run_dir/output_14550.log
$exe $input_dir/input_14550 >> $run_dir/output_14550.log 2>&1 
echo "14550 job ends at" `date` >> $run_dir/output_14550.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "14600 job starts at" `date` > $run_dir/output_14600.log
$exe $input_dir/input_14600 >> $run_dir/output_14600.log 2>&1 
echo "14600 job ends at" `date` >> $run_dir/output_14600.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "14650 job starts at" `date` > $run_dir/output_14650.log
$exe $input_dir/input_14650 >> $run_dir/output_14650.log 2>&1 
echo "14650 job ends at" `date` >> $run_dir/output_14650.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "14700 job starts at" `date` > $run_dir/output_14700.log
$exe $input_dir/input_14700 >> $run_dir/output_14700.log 2>&1 
echo "14700 job ends at" `date` >> $run_dir/output_14700.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "14750 job starts at" `date` > $run_dir/output_14750.log
$exe $input_dir/input_14750 >> $run_dir/output_14750.log 2>&1 
echo "14750 job ends at" `date` >> $run_dir/output_14750.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "14800 job starts at" `date` > $run_dir/output_14800.log
$exe $input_dir/input_14800 >> $run_dir/output_14800.log 2>&1 
echo "14800 job ends at" `date` >> $run_dir/output_14800.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "14850 job starts at" `date` > $run_dir/output_14850.log
$exe $input_dir/input_14850 >> $run_dir/output_14850.log 2>&1 
echo "14850 job ends at" `date` >> $run_dir/output_14850.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "14900 job starts at" `date` > $run_dir/output_14900.log
$exe $input_dir/input_14900 >> $run_dir/output_14900.log 2>&1 
echo "14900 job ends at" `date` >> $run_dir/output_14900.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "14950 job starts at" `date` > $run_dir/output_14950.log
$exe $input_dir/input_14950 >> $run_dir/output_14950.log 2>&1 
echo "14950 job ends at" `date` >> $run_dir/output_14950.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "15000 job starts at" `date` > $run_dir/output_15000.log
$exe $input_dir/input_15000 >> $run_dir/output_15000.log 2>&1 
echo "15000 job ends at" `date` >> $run_dir/output_15000.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "15050 job starts at" `date` > $run_dir/output_15050.log
$exe $input_dir/input_15050 >> $run_dir/output_15050.log 2>&1 
echo "15050 job ends at" `date` >> $run_dir/output_15050.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "15100 job starts at" `date` > $run_dir/output_15100.log
$exe $input_dir/input_15100 >> $run_dir/output_15100.log 2>&1 
echo "15100 job ends at" `date` >> $run_dir/output_15100.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "15150 job starts at" `date` > $run_dir/output_15150.log
$exe $input_dir/input_15150 >> $run_dir/output_15150.log 2>&1 
echo "15150 job ends at" `date` >> $run_dir/output_15150.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "15200 job starts at" `date` > $run_dir/output_15200.log
$exe $input_dir/input_15200 >> $run_dir/output_15200.log 2>&1 
echo "15200 job ends at" `date` >> $run_dir/output_15200.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "15250 job starts at" `date` > $run_dir/output_15250.log
$exe $input_dir/input_15250 >> $run_dir/output_15250.log 2>&1 
echo "15250 job ends at" `date` >> $run_dir/output_15250.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "15300 job starts at" `date` > $run_dir/output_15300.log
$exe $input_dir/input_15300 >> $run_dir/output_15300.log 2>&1 
echo "15300 job ends at" `date` >> $run_dir/output_15300.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "15350 job starts at" `date` > $run_dir/output_15350.log
$exe $input_dir/input_15350 >> $run_dir/output_15350.log 2>&1 
echo "15350 job ends at" `date` >> $run_dir/output_15350.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "15400 job starts at" `date` > $run_dir/output_15400.log
$exe $input_dir/input_15400 >> $run_dir/output_15400.log 2>&1 
echo "15400 job ends at" `date` >> $run_dir/output_15400.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "15450 job starts at" `date` > $run_dir/output_15450.log
$exe $input_dir/input_15450 >> $run_dir/output_15450.log 2>&1 
echo "15450 job ends at" `date` >> $run_dir/output_15450.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "15500 job starts at" `date` > $run_dir/output_15500.log
$exe $input_dir/input_15500 >> $run_dir/output_15500.log 2>&1 
echo "15500 job ends at" `date` >> $run_dir/output_15500.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "15550 job starts at" `date` > $run_dir/output_15550.log
$exe $input_dir/input_15550 >> $run_dir/output_15550.log 2>&1 
echo "15550 job ends at" `date` >> $run_dir/output_15550.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "15600 job starts at" `date` > $run_dir/output_15600.log
$exe $input_dir/input_15600 >> $run_dir/output_15600.log 2>&1 
echo "15600 job ends at" `date` >> $run_dir/output_15600.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "15650 job starts at" `date` > $run_dir/output_15650.log
$exe $input_dir/input_15650 >> $run_dir/output_15650.log 2>&1 
echo "15650 job ends at" `date` >> $run_dir/output_15650.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "15700 job starts at" `date` > $run_dir/output_15700.log
$exe $input_dir/input_15700 >> $run_dir/output_15700.log 2>&1 
echo "15700 job ends at" `date` >> $run_dir/output_15700.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "15750 job starts at" `date` > $run_dir/output_15750.log
$exe $input_dir/input_15750 >> $run_dir/output_15750.log 2>&1 
echo "15750 job ends at" `date` >> $run_dir/output_15750.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "15800 job starts at" `date` > $run_dir/output_15800.log
$exe $input_dir/input_15800 >> $run_dir/output_15800.log 2>&1 
echo "15800 job ends at" `date` >> $run_dir/output_15800.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "15850 job starts at" `date` > $run_dir/output_15850.log
$exe $input_dir/input_15850 >> $run_dir/output_15850.log 2>&1 
echo "15850 job ends at" `date` >> $run_dir/output_15850.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "15900 job starts at" `date` > $run_dir/output_15900.log
$exe $input_dir/input_15900 >> $run_dir/output_15900.log 2>&1 
echo "15900 job ends at" `date` >> $run_dir/output_15900.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "15950 job starts at" `date` > $run_dir/output_15950.log
$exe $input_dir/input_15950 >> $run_dir/output_15950.log 2>&1 
echo "15950 job ends at" `date` >> $run_dir/output_15950.log

