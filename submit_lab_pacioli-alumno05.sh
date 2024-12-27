#!/bin/bash
#
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno05/gitlab
#SBATCH -J sample
#SBATCH --cpus-per-task=1
#SBATCH --mail-type=NONE    #END/START/NONE
#SBATCH --mail-user=MAIL@um.es
#SBATCH --ntasks=4

for i in *.fastq
do 
./file-cut.sh $i  &
done
