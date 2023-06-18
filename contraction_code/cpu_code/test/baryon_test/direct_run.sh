#!/bin/bash


run_dir=.
input_dir=${run_dir}
exe=/beegfs/home/xinghy/LapH/contraction_code/cpu_code/contrac_baryon_hx.py
# exe=/beegfs/home/xinghy/LapH/contraction_run/test.py
echo "4100 job starts at" `date` > $run_dir/output_4100.log
$exe $input_dir/input_4100 >> $run_dir/output_4100.log 2>&1 
echo "4100 job ends at" `date` >> $run_dir/output_4100.log