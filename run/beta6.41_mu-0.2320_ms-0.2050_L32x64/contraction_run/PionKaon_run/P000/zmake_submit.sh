path="."
begin=17000
space=50
num=10
end=$((${begin} + (${num} - 1) * ${space}))
name="${begin}-${end}"
echo ${name}

echo "#!/bin/bash

#SBATCH --job-name=m_0_${name}
#SBATCH --partition=gpu-debug
#SBATCH --mail-type=end
#SBATCH --output=lap.${name}.out
#SBATCH --error=lap.${name}.out
#SBATCH --nodes=1
#SBATCH -n 1
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=1
##SBATCH --time=2:00:00
##SBATCH --nodelist=gpu012 
##SBATCH --exclude=gpu007
##SBATCH --exclude=gpu013" >submit.${name}.sh

for i in $(seq ${num}); do
    label=$(((${begin} + (${i}-1) * ${space})))
    echo "$label"
    
    echo "Nt 64
Nx 32
conf_id ${label}
Nev 100
Nev1 100
Px 0
Py 0
Pz 0
peram_u_dir /public/group/lqcd/perambulators/beta6.41_mu-0.2320_ms-0.2050_L32x64/light/${label}
peram_s_dir /public/group/lqcd/perambulators/beta6.41_mu-0.2320_ms-0.2050_L32x64/strange/${label}
corr_pion_dir /beegfs/group/lqcd/corr/beta6.41_mu-0.2320_ms-0.2050_L32x64/2pt/Pion
corr_kaon_dir /beegfs/group/lqcd/corr/beta6.41_mu-0.2320_ms-0.2050_L32x64/2pt/Kaon
eigen_dir /public/group/lqcd/eigensystem/beta6.41_mu-0.2295_ms-0.2050_L32x96/${label}" >'input_'${label}
    echo "run_dir=.
input_dir=\${run_dir}
exe=/beegfs/home/zhangxin/content/LapH/contraction_code/contrac_meson_zero_hx.py
# exe=/beegfs/home/zhangxin/content/LapH/contraction_run/test.py
echo \"${label} job starts at\" \`date\` > \$run_dir/output_${label}.log
\$exe \$input_dir/input_${label} >> \$run_dir/output_${label}.log 2>&1 
echo \"${label} job ends at\" \`date\` >> \$run_dir/output_${label}.log
" >>submit.${name}.sh
done
