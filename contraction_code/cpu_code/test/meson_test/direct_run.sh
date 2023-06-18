#!/bin/bash


run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/xinghy/LapH/contraction_code/cpu_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/xinghy/LapH/contraction_run/test.py
echo "13500 job starts at" `date` > $run_dir/output_13500.log
$exe $input_dir/input_13500 >> $run_dir/output_13500.log 2>&1 
echo "13500 job ends at" `date` >> $run_dir/output_13500.log