# Meta-Reasoning Module (Ollama-based)

This module implements neuro-symbolic reasoning by combining LLM-based semantic task analysis with deterministic Prolog-based hardware compatibility verification.

## Overview

The pipeline uses **Ollama** for LLM inference instead of Hugging Face Transformers, making it lightweight and suitable for local inference.

### Components

1. **solve.py** - Single-task demonstration script
   - Extracts semantic properties from a task using Ollama
   - Verifies if a given robot configuration can execute the task
   - Useful for testing and debugging

2. **evaluate.py** - Full evaluation script
   - Runs on the Robo-CSK benchmark dataset
   - Two evaluation modes: binary classification and multi-choice
   - Supports model selection via command-line arguments

3. **reasoner.pl** - SWI-Prolog symbolic reasoning engine
   - Translates semantic task properties to hardware requirements
   - Verifies if robot configuration meets task requirements
   - Uses deterministic logic rules

## Requirements

### System Dependencies
- **SWI-Prolog** (for symbolic reasoning)
  ```bash
  # macOS
  brew install swi-prolog
  
  # Ubuntu/Debian
  sudo apt-get install swi-prolog
  ```

- **Ollama** (for LLM inference)
  - Download from https://ollama.ai
  - Ensure Ollama service is running: `ollama serve`

### Python Dependencies
```bash
pip install pandas ollama tqdm
```

### Models
Default model: `llama3.1` (automatically pulled by Ollama)

To use a different model:
```bash
ollama pull <model-name>
```

## Usage

### Quick Test (Single Task)
```bash
cd module_2/meta_reasoning
python solve.py
```

This runs a test on the first task from the meta_reasoning dataset.

### Full Binary Classification Evaluation
```bash
python evaluate.py --mode binary
```

### Full Multi-Choice Evaluation
```bash
python evaluate.py --mode multi
```

### Full Evaluation (Both Modes)
```bash
python evaluate.py --mode all
```

### Using a Different Model
```bash
python evaluate.py --mode binary --model mistral
python evaluate.py --mode all --model neural-chat
```

## Model Configuration

The default Ollama model is set in both scripts:
```python
OLLAMA_MODEL = "llama3.1"
```

### Recommended Models (sorted by performance/speed)
- `llama3.1` - Good balance (default)
- `mistral` - Fast, decent quality
- `neural-chat` - Optimized for chat
- `orca-mini` - Very fast
- `llama2` - Stable but slower

Change the model by:
1. Editing the `OLLAMA_MODEL` variable in the script, or
2. Using the `--model` command-line argument

## How It Works

### Task Analysis Pipeline

1. **LLM Stage (Ollama)**
   - Input: Natural language task description
   - Output: 6 semantic properties (JSON)
     - `needs_grasping` - Requires object manipulation
     - `needs_precision` - Requires fine motor control
     - `needs_mobility` - Requires base movement
     - `needs_bimanual` - Requires two-handed coordination
     - `needs_contact` - Requires physical interaction
     - `needs_rigid_grip` - Requires firm grip strength

2. **Symbolic Reasoning Stage (Prolog)**
   - Translates semantic properties → hardware requirements
   - Example: `needs_grasping(true)` → requires `robot_gripper_type(two_finger)`
   - Verifies robot configuration matches requirements

### Example

**Task:** "Slice bread with a knife"

**LLM Analysis:**
```json
{
  "needs_grasping": true,
  "needs_precision": true,
  "needs_mobility": false,
  "needs_bimanual": true,
  "needs_contact": true,
  "needs_rigid_grip": true
}
```

**Prolog Requirements:**
```prolog
required_gripper_type(two_finger)    % needs grasping
required_dof(7)                      % needs grasping + precision
required_arms(2)                     % needs bimanual
required_mobile(false)               % no mobility needed
required_rigid(true)                 % needs rigid grip
```

**Robot Configuration Check:**
```
Can a 1-armed, 6-DoF robot execute this? NO
Can a 2-armed, 7-DoF robot execute this? YES
```

## Benchmark Datasets

The evaluation scripts use data from:
- `Robo-CSK-Benchmark/meta_reasoning/meta_reasoning_with_negatives.csv` (binary)
- `Robo-CSK-Benchmark/meta_reasoning/meta_reasoning_multi_questions.csv` (multi-choice)

## Output Example

```
==================================================
Neuro-Symbolic Evaluation: Meta-Reasoning (Binary)
Using Ollama model: llama3.1
==================================================
Loaded 200 questions from ../../Robo-CSK-Benchmark/meta_reasoning/meta_reasoning_with_negatives.csv
Binary Eval: 100%|█████████| 200/200 [08:32<00:00,  2.56s/it]

========================================
FINAL BINARY BENCHMARK RESULTS
========================================
Total evaluated: 200
TP: 156 | TN: 32 | FP: 8 | FN: 4
----------------------------------------
Accuracy:    0.940
Precision:   0.951
Recall:      0.975
Specificity: 0.800
F1 Score:    0.963
========================================
```

## Troubleshooting

### "Connection refused" error
Ensure Ollama is running:
```bash
ollama serve &
```

### "Model not found" error
Pull the model:
```bash
ollama pull llama3.1
```

### Slow inference
- Use a smaller, faster model: `ollama pull mistral`
- Ensure Ollama has sufficient GPU memory
- Check system resources: `top` or `Activity Monitor`

### Prolog not found
Install SWI-Prolog:
```bash
brew install swi-prolog  # macOS
sudo apt-get install swi-prolog  # Ubuntu
```

## Performance Tips

1. **Batch Processing:** The evaluate scripts cache LLM responses for identical tasks
2. **Model Selection:** Faster models (mistral) vs. more accurate (llama3.1)
3. **GPU Acceleration:** Ollama uses GPU if available; ensure proper CUDA setup

## Contributing

To modify the reasoning rules, edit `reasoner.pl` directly. The Prolog rules define the mapping between semantic properties and hardware requirements.
