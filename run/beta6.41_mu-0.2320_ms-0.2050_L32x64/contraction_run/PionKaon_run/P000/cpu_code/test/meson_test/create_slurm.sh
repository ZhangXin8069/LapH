#!/bin/bash

peram_dir="/beegfs/group/lqcd/perambulators/beta6.41_mu-0.2320_ms-0.2050_L32x64/light"
#peram_dir="/beegfs/group/lqcd/eigensystem/beta6.41_mu-0.2295_ms-0.2050_L32x96"
# for conf in {13550..21600..50}
for conf in {13500..13500..50}
do
 if [ -d $peram_dir/${conf} ]; then
 sed "s/=CONF=/$conf/g" submit_slurm.sh > submit.$conf.sh
 chmod +x submit.$conf.sh
 sbatch submit.$conf.sh
 fi
done
