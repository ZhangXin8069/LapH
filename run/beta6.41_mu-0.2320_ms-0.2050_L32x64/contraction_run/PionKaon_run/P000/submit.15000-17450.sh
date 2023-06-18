#!/bin/bash

#SBATCH --job-name=m_0_15000-17450
#SBATCH --partition=gpu-debug
##SBATCH --exclude=gpu007
#SBATCH --mail-type=end
#SBATCH --output=lap.15000-17450.out
#SBATCH --error=lap.15000-17450.out
#SBATCH --nodes=1
#SBATCH -n 1
#SBATCH --cpus-per-task=1
##SBATCH --time=24:00:00
##SBATCH --nodelist=gpu012 
#SBATCH --gres=gpu:1
##SBATCH --exclude=gpu013
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

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "16000 job starts at" `date` > $run_dir/output_16000.log
$exe $input_dir/input_16000 >> $run_dir/output_16000.log 2>&1 
echo "16000 job ends at" `date` >> $run_dir/output_16000.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "16050 job starts at" `date` > $run_dir/output_16050.log
$exe $input_dir/input_16050 >> $run_dir/output_16050.log 2>&1 
echo "16050 job ends at" `date` >> $run_dir/output_16050.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "16100 job starts at" `date` > $run_dir/output_16100.log
$exe $input_dir/input_16100 >> $run_dir/output_16100.log 2>&1 
echo "16100 job ends at" `date` >> $run_dir/output_16100.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "16150 job starts at" `date` > $run_dir/output_16150.log
$exe $input_dir/input_16150 >> $run_dir/output_16150.log 2>&1 
echo "16150 job ends at" `date` >> $run_dir/output_16150.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "16200 job starts at" `date` > $run_dir/output_16200.log
$exe $input_dir/input_16200 >> $run_dir/output_16200.log 2>&1 
echo "16200 job ends at" `date` >> $run_dir/output_16200.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "16250 job starts at" `date` > $run_dir/output_16250.log
$exe $input_dir/input_16250 >> $run_dir/output_16250.log 2>&1 
echo "16250 job ends at" `date` >> $run_dir/output_16250.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "16300 job starts at" `date` > $run_dir/output_16300.log
$exe $input_dir/input_16300 >> $run_dir/output_16300.log 2>&1 
echo "16300 job ends at" `date` >> $run_dir/output_16300.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "16350 job starts at" `date` > $run_dir/output_16350.log
$exe $input_dir/input_16350 >> $run_dir/output_16350.log 2>&1 
echo "16350 job ends at" `date` >> $run_dir/output_16350.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "16400 job starts at" `date` > $run_dir/output_16400.log
$exe $input_dir/input_16400 >> $run_dir/output_16400.log 2>&1 
echo "16400 job ends at" `date` >> $run_dir/output_16400.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "16450 job starts at" `date` > $run_dir/output_16450.log
$exe $input_dir/input_16450 >> $run_dir/output_16450.log 2>&1 
echo "16450 job ends at" `date` >> $run_dir/output_16450.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "16500 job starts at" `date` > $run_dir/output_16500.log
$exe $input_dir/input_16500 >> $run_dir/output_16500.log 2>&1 
echo "16500 job ends at" `date` >> $run_dir/output_16500.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "16550 job starts at" `date` > $run_dir/output_16550.log
$exe $input_dir/input_16550 >> $run_dir/output_16550.log 2>&1 
echo "16550 job ends at" `date` >> $run_dir/output_16550.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "16600 job starts at" `date` > $run_dir/output_16600.log
$exe $input_dir/input_16600 >> $run_dir/output_16600.log 2>&1 
echo "16600 job ends at" `date` >> $run_dir/output_16600.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "16650 job starts at" `date` > $run_dir/output_16650.log
$exe $input_dir/input_16650 >> $run_dir/output_16650.log 2>&1 
echo "16650 job ends at" `date` >> $run_dir/output_16650.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "16700 job starts at" `date` > $run_dir/output_16700.log
$exe $input_dir/input_16700 >> $run_dir/output_16700.log 2>&1 
echo "16700 job ends at" `date` >> $run_dir/output_16700.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "16750 job starts at" `date` > $run_dir/output_16750.log
$exe $input_dir/input_16750 >> $run_dir/output_16750.log 2>&1 
echo "16750 job ends at" `date` >> $run_dir/output_16750.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "16800 job starts at" `date` > $run_dir/output_16800.log
$exe $input_dir/input_16800 >> $run_dir/output_16800.log 2>&1 
echo "16800 job ends at" `date` >> $run_dir/output_16800.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "16850 job starts at" `date` > $run_dir/output_16850.log
$exe $input_dir/input_16850 >> $run_dir/output_16850.log 2>&1 
echo "16850 job ends at" `date` >> $run_dir/output_16850.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "16900 job starts at" `date` > $run_dir/output_16900.log
$exe $input_dir/input_16900 >> $run_dir/output_16900.log 2>&1 
echo "16900 job ends at" `date` >> $run_dir/output_16900.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "16950 job starts at" `date` > $run_dir/output_16950.log
$exe $input_dir/input_16950 >> $run_dir/output_16950.log 2>&1 
echo "16950 job ends at" `date` >> $run_dir/output_16950.log

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

