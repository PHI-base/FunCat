#!/bin/bash
#SBATCH --job-name=phi417_eggnog
#SBATCH --output=phi417_eggnog.out
#SBATCH --error=phi417_eggnog.err
#SBATCH --partition=standard
#SBATCH --time=1-00:00:00
#SBATCH --cpus-per-task=12
#SBATCH --cpus-per-task=12
#SBATCH --mem=100G
#SBATCH --qos=medium
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=martin.urban@rothamsted.ac.uk


# Load any necessary modules
module load eggnog-mapper/2.1.9-foss-2022a

# Define input and output files
INPUT_FILE="phi-base_current.fas"
OUTPUT_DIR="Phi417_eggnog_output"

# Create output directory if it doesn't exist
mkdir -p $OUTPUT_DIR

# Run EggNOG-mapper
emapper.py -i $INPUT_FILE -o $OUTPUT_DIR/phi417_output --cpu 4
