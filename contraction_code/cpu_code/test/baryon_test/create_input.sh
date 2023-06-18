#!/bin/bash

peram_dir="/public/group/lqcd/perambulators/beta6.20_mu-0.2790_ms-0.2400_L32x64/light"
for conf in {4100..4100..50}
# for conf in {11000..11000..50}
do
if [ -d ${peram_dir}/${conf} ]; then
./input.sh $conf > input_${conf}
fi
done
