################ SLURM SETTINGS ################
#SBATCH --account=project0005             
#SBATCH --job-filter_by_chr
#SBATCH --output=%x-%J.out                
#SBATCH --error=%x-%J.err               
#SBATCH --time=0-01:00:00               
#SBATCH --mem=5G                         
#SBATCH --ntasks=1                        
#SBATCH --cpus-per-task=1                 
#SBATCH --ntasks-per-node=1
#SBATCH --mail-user=p.campbell.5@research.gla.ac.uk
#SBATCH --mail-type=ALL

################ RUN SCRIPT #################
