#!/bin/bash
cat << EOF
Nt 96
Nx 32
conf_id $1
Nev 100
Nev1 100
Px 0
Py 0
Pz 0
peram_u_dir /public/group/lqcd/perambulators/beta6.41_mu-0.2295_ms-0.2050_L32x96/light/$1
peram_s_dir /public/group/lqcd/perambulators/beta6.41_mu-0.2295_ms-0.2050_L32x96/strange/$1
VVV_dir /public/group/lqcd/eigensystem/beta6.41_mu-0.2295_ms-0.2050_L32x96/$1/VVV
corr_pion_dir ./result
VdV_dir /beegfs/group-bak/lqcd/eigensystem/beta6.41_mu-0.2295_ms-0.2050_L32x96/$1/VdaggerV
EOF