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
peram_u_dir /public/group/lqcd/perambulators/beta6.41_mu-0.2320_ms-0.2050_L32x64/light/$1
peram_s_dir /public/group/lqcd/perambulators/beta6.41_mu-0.2320_ms-0.2050_L32x64/strange/$1
corr_pion_dir ./result/
corr_kaon_dir ./result/
corr_etas_dir ./result/
eigen_dir /public/group/lqcd/eigensystem/beta6.41_mu-0.2320_ms-0.2050_L32x64/$1
EOF
