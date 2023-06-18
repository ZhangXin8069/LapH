#!/bin/bash

peram_dir="/public/group/lqcd/perambulators/beta6.41_mu-0.2320_ms-0.2050_L32x64/light"
# for conf in {13550..21600..50}
for conf in {13500..13500..50}
do
if [ -d ${peram_dir}/${conf} ]; then
./input.sh $conf > input_${conf}
fi
done
