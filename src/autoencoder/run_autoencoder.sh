#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=12
#SBATCH --time=72:00:00
#SBATCH --mem=64GB
#SBATCH --gres=gpu:k80:1
#SBATCH --job-name=lightning_training
#SBATCH --mail-type=END
##SBATCH --mail-user=nsk367@nyu.edu
#SBATCH --output=slurm_%j.out

python autoencoder.py

