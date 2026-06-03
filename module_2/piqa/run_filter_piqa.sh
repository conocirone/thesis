#!/bin/bash
#SBATCH --job-name=filter_piqa
#SBATCH --partition=cpu
#SBATCH --time=24:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4G
#SBATCH --output=logs/filter_piqa_%j.out
#SBATCH --error=logs/filter_piqa_%j.err

REPO_DIR="$HOME/thesis"
VENV_DIR="$REPO_DIR/thesis_env"
SCRIPT_DIR="$REPO_DIR/module_2/piqa"

# Activate virtual environment
source "$VENV_DIR/bin/activate"

# Create logs directory if it doesn't exist
mkdir -p "$SCRIPT_DIR/logs"
export MISTRAL_API_KEY=f"{MISTRAL_API_KEY}"
# Run the script
python3 "$SCRIPT_DIR/filter_piqa.py"
