#!/bin/bash -l

############# SLURM SETTINGS #############
#SBATCH --account=project0005   # account name (mandatory), if the job runs under a project then it'll be the project name, if not then it should =none
#SBATCH --job-name=depth_calc_f3pre   # some descriptive job name of your choice
#SBATCH --output=%x-%J.out      # output file name will contain job name + job ID
#SBATCH --error=%x-%J.err       # error file name will contain job name + job ID
#SBATCH --time=0-05:00:00       # time limit for the whole run, in the form of d-hh:mm:ss, also accepts mm, mm:ss, hh:mm:ss, d-hh, d-hh:mm
#SBATCH --mem=20G                # memory required per node, in the form of [num][M|G|T]
#SBATCH --ntasks=1              # number of Slurm tasks to be launched, increase for multi-process runs ex. MPI
#SBATCH --cpus-per-task=6       # number of processor cores to be assigned for each task, default is 1, increase for multi-threaded runs
#SBATCH --ntasks-per-node=1     # number of tasks to be launched on each allocated node
#SBATCH --mail-user=p.campbell.5@research.gla.ac.uk
#SBATCH --mail-type=ALL

############# LOADING MODULES (optional) #############

module load apps/miniforge
conda activate samtools-1.17

############# MY CODE #############

samtools depth -a  /users/2320707c/project0005/for_paul_oster/2.bwasplitter/farm_3_pretx_bwasplitter/farm_3_pretx_bwasplitter_out -H  -o f3pre_depth -q 30 -Q 20 -g SECONDARY,QCFAIL -G DUP -s
