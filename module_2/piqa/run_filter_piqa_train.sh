#!/bin/bash
#SBATCH --job-name=filter_piqa_train
#SBATCH --partition=cpu
#SBATCH --time=24:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4G
#SBATCH --output=/homes/ccirone/thesis/module_2/piqa/logs/filter_piqa_train_%j.out
#SBATCH --error=/homes/ccirone/thesis/module_2/piqa/logs/filter_piqa_train_%j.err

set -x  # print each command before executing it

REPO_DIR="$HOME/thesis"
VENV_DIR="$REPO_DIR/thesis_env"
SCRIPT_DIR="$REPO_DIR/module_2/piqa"

# Activate virtual environment
source "$VENV_DIR/bin/activate"

# Load API key from secrets file (do NOT hardcode the key here)
source "$HOME/.mistral_secret"

# Run the script (unbuffered so output is flushed to logs immediately)
export PYTHONUNBUFFERED=1
python3 -u "$SCRIPT_DIR/filter_piqa_training.py"
