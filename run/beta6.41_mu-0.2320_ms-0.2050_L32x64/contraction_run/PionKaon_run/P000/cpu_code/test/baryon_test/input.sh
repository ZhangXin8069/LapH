#!/bin/bash
cat << EOF
Nt 64
Nx 32
conf_id $1
Nev 100
Nev1 100
Px 0
Py 0
Pz 0
peram_u_dir /public/group/lqcd/perambulators/beta6.20_mu-0.2790_ms-0.2400_L32x64/light/$1
peram_s_dir /public/group/lqcd/perambulators/beta6.20_mu-0.2790_ms-0.2400_L32x64/strange/$1
VVV_dir /public/group/lqcd/eigensystem/beta6.20_mu-0.2790_ms-0.2400_L32x64/$1/VVV
corr_nucl_dir ./result/
corr_lamb_dir ./result/
EOF
