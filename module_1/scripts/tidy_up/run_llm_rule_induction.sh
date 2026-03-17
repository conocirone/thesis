#!/bin/bash
#SBATCH --job-name=llm_rule_induction
#SBATCH --partition=gpu
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=32G
#SBATCH --gres=gpu:1
#SBATCH --time=03:00:00
#SBATCH --output=logs/llm_induction_%j.out
#SBATCH --error=logs/llm_induction_%j.err

echo "Starting LLM + Clingo Rule Induction (Tidy Up) on node: $HOSTNAME"
echo "Date: $(date)"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"
REPO_DIR="$(cd "$SCRIPT_DIR/../../.." && pwd)"
VENV_DIR="$REPO_DIR/.venv_server"

source "$VENV_DIR/bin/activate"
export HF_HOME="${HF_HOME:-$REPO_DIR/.hf_cache}"

echo "GPU: $(nvidia-smi --query-gpu=name --format=csv,noheader 2>/dev/null || echo 'N/A')"

if ! command -v clingo &> /dev/null; then
    echo "[ERROR] Clingo not found!"
    exit 1
fi

cd "$SCRIPT_DIR"
mkdir -p logs

echo "Starting tidy_up rule induction..."
python3 llm_rule_induction.py

echo "Job finished at: $(date)"
