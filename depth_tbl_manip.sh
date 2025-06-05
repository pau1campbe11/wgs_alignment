#!/bin/bash -l

############# SLURM SETTINGS #############
#SBATCH --account=project0005   # account name (mandatory), if the job runs under a project then it'll be the project name, if not then it should =none
#SBATCH --job-name=depth_tbl_manip     # some descriptive job name of your choice
#SBATCH --output=%x-%J.out      # output file name will contain job name + job ID
#SBATCH --error=%x-%J.err       # error file name will contain job name + job ID
#SBATCH --time=0-01:00:00       # time limit for the whole run, in the form of d-hh:mm:ss, also accepts mm, mm:ss, hh:mm:ss, d-hh, d-hh:mm
#SBATCH --mem=50G                # memory required per node, in the form of [num][M|G|T]
#SBATCH --ntasks=1              # number of Slurm tasks to be launched, increase for multi-process runs ex. MPI
#SBATCH --cpus-per-task=1       # number of processor cores to be assigned for each task, default is 1, increase for multi-threaded runs
#SBATCH --ntasks-per-node=1     # number of tasks to be launched on each allocated node
#SBATCH --mail-user=p.campbell.5@research.gla.ac.uk
#SBATCH --mail-type=ALL

############# SCRIPT ############# 

############# ADD HEADER

awk 'NR==1 {print "Chromosome\tPosition\tCoverage"; next} 1' f1post_depth > f1post_depth_header.txt
awk 'NR==1 {print "Chromosome\tPosition\tCoverage"; next} 1' f1pre_depth > f1pre_depth_header.txt
awk 'NR==1 {print "Chromosome\tPosition\tCoverage"; next} 1' f2post_depth > f2post_depth_header.txt
awk 'NR==1 {print "Chromosome\tPosition\tCoverage"; next} 1' f2pre_depth > f2pre_depth_header.txt
awk 'NR==1 {print "Chromosome\tPosition\tCoverage"; next} 1' f3post_depth > f3post_depth_header.txt
awk 'NR==1 {print "Chromosome\tPosition\tCoverage"; next} 1' f3pre_depth > f3pre_depth_header.txt

############# ADD SAMPLE NAME AND COLUMN 

awk '{print "f1post", $0}' f1post_depth_header.txt > f1post_depth_prefix.txt
awk '{print "f1pre", $0}' f1pre_depth_header.txt > f1pre_depth_prefix.txt
awk '{print "f2post", $0}' f2post_depth_header.txt > f2post_depth_prefix.txt
awk '{print "f2pre", $0}' f2pre_depth_header.txt > f2pre_depth_prefix.txt
awk '{print "f3post", $0}' f3post_depth_header.txt > f3post_depth_prefix.txt
awk '{print "f3pre", $0}' f3pre_depth_header.txt > f3pre_depth_prefix.txt

############# ADD SAMPLE TO HEADER

awk 'NR==1 {$1="Sample"} {print}' OFS='\t' f1post_depth_prefix.txt > f1post_depth_updated.txt
awk 'NR==1 {$1="Sample"} {print}' OFS='\t' f1pre_depth_prefix.txt > f1pre_depth_updated.txt
awk 'NR==1 {$1="Sample"} {print}' OFS='\t' f2post_depth_prefix.txt > f2post_depth_updated.txt
awk 'NR==1 {$1="Sample"} {print}' OFS='\t' f2pre_depth_prefix.txt > f2pre_depth_updated.txt
awk 'NR==1 {$1="Sample"} {print}' OFS='\t' f3post_depth_prefix.txt > f3post_depth_updated.txt
awk 'NR==1 {$1="Sample"} {print}' OFS='\t' f3pre_depth_prefix.txt > f3pre_depth_updated.txt

############# FILTER FOR CHROMOSOMES 

awk -F'\t' '$2 ~ /OZ172662.1/ || $2 ~ /OZ172663.1/ || $2 ~ /OZ172664.1/ || $2 ~ /OZ172665.1/ || $2 ~ /OZ172666.1/ || $2 ~ /OZ172667.1/' f1post_depth_updated.txt > f1post_depth_filtered.txt
awk -F'\t' '$2 ~ /OZ172662.1/ || $2 ~ /OZ172663.1/ || $2 ~ /OZ172664.1/ || $2 ~ /OZ172665.1/ || $2 ~ /OZ172666.1/ || $2 ~ /OZ172667.1/' f1pre_depth_updated.txt > f1pre_depth_filtered.txt
awk -F'\t' '$2 ~ /OZ172662.1/ || $2 ~ /OZ172663.1/ || $2 ~ /OZ172664.1/ || $2 ~ /OZ172665.1/ || $2 ~ /OZ172666.1/ || $2 ~ /OZ172667.1/' f2post_depth_updated.txt > f2post_depth_filtered.txt
awk -F'\t' '$2 ~ /OZ172662.1/ || $2 ~ /OZ172663.1/ || $2 ~ /OZ172664.1/ || $2 ~ /OZ172665.1/ || $2 ~ /OZ172666.1/ || $2 ~ /OZ172667.1/' f2pre_depth_updated.txt > f2pre_depth_filtered.txt
awk -F'\t' '$2 ~ /OZ172662.1/ || $2 ~ /OZ172663.1/ || $2 ~ /OZ172664.1/ || $2 ~ /OZ172665.1/ || $2 ~ /OZ172666.1/ || $2 ~ /OZ172667.1/' f3post_depth_updated.txt > f3post_depth_filtered.txt
awk -F'\t' '$2 ~ /OZ172662.1/ || $2 ~ /OZ172663.1/ || $2 ~ /OZ172664.1/ || $2 ~ /OZ172665.1/ || $2 ~ /OZ172666.1/ || $2 ~ /OZ172667.1/' f3pre_depth_updated.txt > f3pre_depth_filtered.txt

