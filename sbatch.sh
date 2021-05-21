#!/bin/bash
#SBATCH --ntasks=2
#SBATCH --ntasks-per-node=8
#SBATCH --partition=RT
#SBATCH --job-name=lammps_gureva
#SBATCH --comment="Gureva Lammps test"

cd ~/project/nemd

for nn in 1 2 
do 
    srun -N 1 -p RT_build --ntasks-per-node=1 --comment="nemd test" ~/bin/lmp_mpi -in in.nemd$nn
    cd ../../
done

