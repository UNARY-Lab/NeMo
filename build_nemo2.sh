#!/bin/bash
#SBATCH --job-name=build_nemo2
#SBATCH --output=build_nemo2_%j.out
#SBATCH --time=08:00:00
#SBATCH --partition=ghx4
#SBATCH --account=bcrc-dtai-gh
#SBATCH --gpus-per-node=4

cd $SLURM_SUBMIT_DIR || { echo "Directory not found"; exit 1; }
apptainer build --force nemo-container.sif nemo.def
