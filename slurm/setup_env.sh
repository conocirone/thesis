#!/bin/bash
# =============================================================================
# setup_env.sh — One-time environment setup for SLURM GPU cluster
# =============================================================================
# Run this ONCE on the cluster login node to create the Python environment.
#
# Usage:
#   bash slurm/setup_env.sh
# =============================================================================

set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
VENV_DIR="$REPO_DIR/.venv_server"

echo "=============================================="
echo "  Environment Setup for SLURM GPU Pipeline"
echo "=============================================="
echo "Repo:  $REPO_DIR"
echo "Venv:  $VENV_DIR"
echo ""

# 1. Create venv
if [ -d "$VENV_DIR" ]; then
    echo "[info] Venv already exists at $VENV_DIR"
else
    echo "[1/4] Creating Python venv..."
    python3 -m venv "$VENV_DIR"
fi

source "$VENV_DIR/bin/activate"
echo "[info] Python: $(python3 --version) at $(which python3)"

# 2. Install PyTorch with CUDA
echo ""
echo "[2/4] Installing PyTorch with CUDA support..."
pip install --upgrade pip
pip install torch --index-url https://download.pytorch.org/whl/cu121

# 3. Install remaining dependencies
echo ""
echo "[3/4] Installing pipeline dependencies..."
pip install -r "$REPO_DIR/requirements-server.txt"

# 4. HuggingFace login
echo ""
echo "[4/4] HuggingFace authentication"
echo "  Meta-Llama models require accepting the license at:"
echo "    https://huggingface.co/meta-llama/Llama-3.1-8B-Instruct"
echo ""
echo "  Then run:  huggingface-cli login"
echo "  and paste your HuggingFace token."
echo ""

if python3 -c "from huggingface_hub import HfFolder; assert HfFolder.get_token()" 2>/dev/null; then
    echo "  [ok] HuggingFace token already configured."
else
    echo "  [warn] No HuggingFace token found. Run 'huggingface-cli login' before submitting jobs."
fi

echo ""
echo "=============================================="
echo "  Setup complete!"
echo "  Activate with: source $VENV_DIR/bin/activate"
echo "=============================================="
