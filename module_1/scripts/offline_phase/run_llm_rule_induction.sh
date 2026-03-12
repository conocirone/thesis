#!/bin/bash
#SBATCH --job-name=llm_rule_induction
#SBATCH --partition=cpu        
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=8G                    
#SBATCH --time=08:00:00            
#SBATCH --output=logs/llm_induction_%j.out
#SBATCH --error=logs/llm_induction_%j.err

echo "Starting LLM + Clingo Rule Induction Job on node: $HOSTNAME"
echo "Date: $(date)"

# ------------------------------------------------------------------------------
# ENVIRONMENT SETUP
# ------------------------------------------------------------------------------
source /homes/ccirone/thesis/thesis_env/bin/activate

# ------------------------------------------------------------------------------
# HUGGING FACE CONFIGURATION
# ------------------------------------------------------------------------------
export HF_TOKEN="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"  
export HF_MODEL="Qwen/Qwen3-Coder-Next"

# Fallback model if Qwen3-Coder-Next is unavailable on free tier:
# export HF_MODEL="Qwen/Qwen2.5-Coder-7B-Instruct"

# ------------------------------------------------------------------------------
# PRE-FLIGHT CHECKS
# ------------------------------------------------------------------------------

# Check if HF_TOKEN is set
if [ -z "$HF_TOKEN" ]; then
    echo "[ERROR] HF_TOKEN environment variable is not set!"
    echo "Please set it in this script or export it before submitting:"
    echo "  export HF_TOKEN='hf_your_token_here'"
    echo "Get a token at: https://huggingface.co/settings/tokens"
    exit 1
fi

# Check if clingo is installed (via python module)
python3 -m clingo --version &>/dev/null
if [ $? -ne 0 ]; then
    echo "[ERROR] Clingo module not found! Run: pip install clingo"
    exit 1
fi

# Check if huggingface_hub python package is installed
python3 -c "from huggingface_hub import InferenceClient" 2>/dev/null
if [ $? -ne 0 ]; then
    echo "[ERROR] huggingface_hub package not found!"
    echo "Run: pip install huggingface_hub"
    exit 1
fi

# ------------------------------------------------------------------------------
# EXECUTION SETUP (CRITICAL: Change to script directory FIRST)
# ------------------------------------------------------------------------------
cd ~/thesis/module_1/scripts/offline_phase

# Create logs directory in the CORRECT location (after cd)
mkdir -p logs

echo "=============================================="
echo "Job Configuration:"
echo 
echo "  Working Dir: $(pwd)"
echo "  Model: $HF_MODEL"
echo "  Token: ${HF_TOKEN:0:10}..."
echo "  Python: $(which python3)"
echo "=============================================="

echo "Starting induction script..."
echo ""

# Run the Python script
python3 llm_rule_induction.py

# Capture exit code
EXIT_CODE=$?

echo ""
echo "=============================================="
if [ $EXIT_CODE -eq 0 ]; then
    echo "Job completed SUCCESSFULLY at: $(date)"
else
    echo "Job FAILED with exit code $EXIT_CODE at: $(date)"
fi
echo "=============================================="

# Exit with the same code as the Python script
exit $EXIT_CODE
