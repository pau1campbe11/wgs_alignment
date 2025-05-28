#!/bin/bash -l

################ SLURM SETTINGS ################
#SBATCH --account=project0005             
#SBATCH --job-name=zero_cov_chr                     
#SBATCH --output=%x-%J.out                
#SBATCH --error=%x-%J.err               
#SBATCH --time=0-4:00:00               
#SBATCH --mem=10G                         
#SBATCH --ntasks=1                        
#SBATCH --cpus-per-task=1                 
#SBATCH --ntasks-per-node=1
#SBATCH --mail-user=p.campbell.5@research.gla.ac.uk
#SBATCH --mail-type=ALL

################ SCRIPT ################ 

################ FARM 1 POST

awk -F'\t' '$3 == 0 {count++} END {print count}' f1post_depth_chr1.txt > zero_count_f1_post_chr1.txt
awk -F'\t' '$3 == 0 {count++} END {print count}' f1post_depth_chr2.txt > zero_count_f1_post_chr2.txt
awk -F'\t' '$3 == 0 {count++} END {print count}' f1post_depth_chr3.txt > zero_count_f1_post_chr3.txt
awk -F'\t' '$3 == 0 {count++} END {print count}' f1post_depth_chr4.txt > zero_count_f1_post_chr4.txt
awk -F'\t' '$3 == 0 {count++} END {print count}' f1post_depth_chr5.txt > zero_count_f1_post_chr5.txt
awk -F'\t' '$3 == 0 {count++} END {print count}' f1post_depth_chrx.txt > zero_count_f1_post_chrX.txt

################ FARM 1 PRE

awk -F'\t' '$3 == 0 {count++} END {print count}' f1pre_depth_chr1.txt > zero_count_f1_post_chr1.txt
awk -F'\t' '$3 == 0 {count++} END {print count}' f1pre_depth_chr2.txt > zero_count_f1_post_chr2.txt
awk -F'\t' '$3 == 0 {count++} END {print count}' f1pre_depth_chr3.txt > zero_count_f1_post_chr3.txt
awk -F'\t' '$3 == 0 {count++} END {print count}' f1pre_depth_chr4.txt > zero_count_f1_post_chr4.txt
awk -F'\t' '$3 == 0 {count++} END {print count}' f1pre_depth_chr5.txt > zero_count_f1_post_chr5.txt
awk -F'\t' '$3 == 0 {count++} END {print count}' f1pre_depth_chrx.txt > zero_count_f1_post_chrX.txt

################ FARM 2 POST

awk -F'\t' '$3 == 0 {count++} END {print count}' f2post_depth_chr1.txt > zero_count_f2_post_chr1.txt
awk -F'\t' '$3 == 0 {count++} END {print count}' f2post_depth_chr2.txt > zero_count_f2_post_chr2.txt
awk -F'\t' '$3 == 0 {count++} END {print count}' f2post_depth_chr3.txt > zero_count_f2_post_chr3.txt
awk -F'\t' '$3 == 0 {count++} END {print count}' f2post_depth_chr4.txt > zero_count_f2_post_chr4.txt
awk -F'\t' '$3 == 0 {count++} END {print count}' f2post_depth_chr5.txt > zero_count_f2_post_chr5.txt
awk -F'\t' '$3 == 0 {count++} END {print count}' f2post_depth_chrx.txt > zero_count_f2_post_chrX.txt

################ FARM 2 PRE

awk -F'\t' '$3 == 0 {count++} END {print count}' f2pre_depth_chr1.txt > zero_count_f2_post_chr1.txt
awk -F'\t' '$3 == 0 {count++} END {print count}' f2pre_depth_chr2.txt > zero_count_f2_post_chr2.txt
awk -F'\t' '$3 == 0 {count++} END {print count}' f2pre_depth_chr3.txt > zero_count_f2_post_chr3.txt
awk -F'\t' '$3 == 0 {count++} END {print count}' f2pre_depth_chr4.txt > zero_count_f2_post_chr4.txt
awk -F'\t' '$3 == 0 {count++} END {print count}' f2pre_depth_chr5.txt > zero_count_f2_post_chr5.txt
awk -F'\t' '$3 == 0 {count++} END {print count}' f2pre_depth_chrx.txt > zero_count_f2_post_chrX.txt

################ FARM 3 POST

awk -F'\t' '$3 == 0 {count++} END {print count}' f3post_depth_chr1.txt > zero_count_f3_post_chr1.txt
awk -F'\t' '$3 == 0 {count++} END {print count}' f3post_depth_chr2.txt > zero_count_f3_post_chr2.txt
awk -F'\t' '$3 == 0 {count++} END {print count}' f3post_depth_chr3.txt > zero_count_f3_post_chr3.txt
awk -F'\t' '$3 == 0 {count++} END {print count}' f3post_depth_chr4.txt > zero_count_f3_post_chr4.txt
awk -F'\t' '$3 == 0 {count++} END {print count}' f3post_depth_chr5.txt > zero_count_f3_post_chr5.txt
awk -F'\t' '$3 == 0 {count++} END {print count}' f3post_depth_chrx.txt > zero_count_f3_post_chrX.txt

################ FARM 3 PRE

awk -F'\t' '$3 == 0 {count++} END {print count}' f3pre_depth_chr1.txt > zero_count_f3_post_chr1.txt
awk -F'\t' '$3 == 0 {count++} END {print count}' f3pre_depth_chr2.txt > zero_count_f3_post_chr2.txt
awk -F'\t' '$3 == 0 {count++} END {print count}' f3pre_depth_chr3.txt > zero_count_f3_post_chr3.txt
awk -F'\t' '$3 == 0 {count++} END {print count}' f3pre_depth_chr4.txt > zero_count_f3_post_chr4.txt
awk -F'\t' '$3 == 0 {count++} END {print count}' f3pre_depth_chr5.txt > zero_count_f3_post_chr5.txt
awk -F'\t' '$3 == 0 {count++} END {print count}' f3pre_depth_chrx.txt > zero_count_f3_post_chrX.txt
