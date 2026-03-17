#!/bin/bash
#SBATCH --job-name=llm_rule_induction
#SBATCH --partition=gpu
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=16G
#SBATCH --gres=gpu:1          # Request 1 GPU
#SBATCH --time=02:00:00       # 2 hours max
#SBATCH --output=logs/llm_induction_%j.out
#SBATCH --error=logs/llm_induction_%j.err

echo "Starting LLM + Clingo Rule Induction Job on node: $HOSTNAME"
echo "Date: $(date)"

# source /home/ccirone/myenv/bin/activate

export OLLAMA_HOST="http://localhost:11434"
export OLLAMA_MODEL="llama3.1:latest" 

# Check if clingo is installed
if ! command -v clingo &> /dev/null
then
    echo "[ERROR] Clingo could not be found! Please install it (e.g., conda install -c potassco clingo)"
    exit 1
fi

# Check if ollama python package is installed
python3 -c "import ollama" 2>/dev/null
if [ $? -ne 0 ]; then
    echo "[ERROR] Ollama python package not found! Run: pip install ollama"
    exit 1
fi

# ------------------------------------------------------------------------------
# EXECUTION
# ------------------------------------------------------------------------------
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"
cd "$SCRIPT_DIR"

# Ensure log directory exists
mkdir -p logs

echo "Running with Model: $OLLAMA_MODEL via Host: $OLLAMA_HOST"
echo "Starting induction script..."

python3 llm_rule_induction.py

echo "Job finished at: $(date)"
