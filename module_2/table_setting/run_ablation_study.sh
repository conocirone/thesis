#!/bin/bash

# Exit on any error
set -e

# Ablation study modes
ABLATIONS=("none" "pure_llm" "pure_logic" "no_cot")

echo "=================================================="
echo " Starting Table Setting Ablation Study"
echo "=================================================="

# Check for API key
if [ -z "$MISTRAL_API_KEY" ]; then
    echo "Warning: MISTRAL_API_KEY is not set. The neural components might fail."
    sleep 2
fi

mkdir -p results
    
for ablation in "${ABLATIONS[@]}"; do
    echo " -> Running $task with ablation: $ablation..."
        
    python3 evaluate.py --ablation "$ablation" --output_file "results/results.txt"
        
done
    

echo "=================================================="
echo " Ablation Study Completed."
echo "=================================================="
