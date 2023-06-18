#!/bin/bash

#SBATCH --job-name=m_0_16000-18450
#SBATCH --partition=gpu-debug
##SBATCH --exclude=gpu007
#SBATCH --mail-type=end
#SBATCH --output=lap.16000-18450.out
#SBATCH --error=lap.16000-18450.out
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

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "17500 job starts at" `date` > $run_dir/output_17500.log
$exe $input_dir/input_17500 >> $run_dir/output_17500.log 2>&1 
echo "17500 job ends at" `date` >> $run_dir/output_17500.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "17550 job starts at" `date` > $run_dir/output_17550.log
$exe $input_dir/input_17550 >> $run_dir/output_17550.log 2>&1 
echo "17550 job ends at" `date` >> $run_dir/output_17550.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "17600 job starts at" `date` > $run_dir/output_17600.log
$exe $input_dir/input_17600 >> $run_dir/output_17600.log 2>&1 
echo "17600 job ends at" `date` >> $run_dir/output_17600.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "17650 job starts at" `date` > $run_dir/output_17650.log
$exe $input_dir/input_17650 >> $run_dir/output_17650.log 2>&1 
echo "17650 job ends at" `date` >> $run_dir/output_17650.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "17700 job starts at" `date` > $run_dir/output_17700.log
$exe $input_dir/input_17700 >> $run_dir/output_17700.log 2>&1 
echo "17700 job ends at" `date` >> $run_dir/output_17700.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "17750 job starts at" `date` > $run_dir/output_17750.log
$exe $input_dir/input_17750 >> $run_dir/output_17750.log 2>&1 
echo "17750 job ends at" `date` >> $run_dir/output_17750.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "17800 job starts at" `date` > $run_dir/output_17800.log
$exe $input_dir/input_17800 >> $run_dir/output_17800.log 2>&1 
echo "17800 job ends at" `date` >> $run_dir/output_17800.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "17850 job starts at" `date` > $run_dir/output_17850.log
$exe $input_dir/input_17850 >> $run_dir/output_17850.log 2>&1 
echo "17850 job ends at" `date` >> $run_dir/output_17850.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "17900 job starts at" `date` > $run_dir/output_17900.log
$exe $input_dir/input_17900 >> $run_dir/output_17900.log 2>&1 
echo "17900 job ends at" `date` >> $run_dir/output_17900.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "17950 job starts at" `date` > $run_dir/output_17950.log
$exe $input_dir/input_17950 >> $run_dir/output_17950.log 2>&1 
echo "17950 job ends at" `date` >> $run_dir/output_17950.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "18000 job starts at" `date` > $run_dir/output_18000.log
$exe $input_dir/input_18000 >> $run_dir/output_18000.log 2>&1 
echo "18000 job ends at" `date` >> $run_dir/output_18000.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "18050 job starts at" `date` > $run_dir/output_18050.log
$exe $input_dir/input_18050 >> $run_dir/output_18050.log 2>&1 
echo "18050 job ends at" `date` >> $run_dir/output_18050.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "18100 job starts at" `date` > $run_dir/output_18100.log
$exe $input_dir/input_18100 >> $run_dir/output_18100.log 2>&1 
echo "18100 job ends at" `date` >> $run_dir/output_18100.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "18150 job starts at" `date` > $run_dir/output_18150.log
$exe $input_dir/input_18150 >> $run_dir/output_18150.log 2>&1 
echo "18150 job ends at" `date` >> $run_dir/output_18150.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "18200 job starts at" `date` > $run_dir/output_18200.log
$exe $input_dir/input_18200 >> $run_dir/output_18200.log 2>&1 
echo "18200 job ends at" `date` >> $run_dir/output_18200.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "18250 job starts at" `date` > $run_dir/output_18250.log
$exe $input_dir/input_18250 >> $run_dir/output_18250.log 2>&1 
echo "18250 job ends at" `date` >> $run_dir/output_18250.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "18300 job starts at" `date` > $run_dir/output_18300.log
$exe $input_dir/input_18300 >> $run_dir/output_18300.log 2>&1 
echo "18300 job ends at" `date` >> $run_dir/output_18300.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "18350 job starts at" `date` > $run_dir/output_18350.log
$exe $input_dir/input_18350 >> $run_dir/output_18350.log 2>&1 
echo "18350 job ends at" `date` >> $run_dir/output_18350.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "18400 job starts at" `date` > $run_dir/output_18400.log
$exe $input_dir/input_18400 >> $run_dir/output_18400.log 2>&1 
echo "18400 job ends at" `date` >> $run_dir/output_18400.log

run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo "18450 job starts at" `date` > $run_dir/output_18450.log
$exe $input_dir/input_18450 >> $run_dir/output_18450.log 2>&1 
echo "18450 job ends at" `date` >> $run_dir/output_18450.log

