# Neuro-Symbolic Framework for Common-Sense Reasoning in Domestic Robots

A thesis project implementing two neuro-symbolic pipelines that combine LLMs with formal logic to support robot reasoning in domestic tasks. The framework is evaluated on the [Robo-CSK-Benchmark](https://github.com/conocirone/Robo-CSK-Benchmark) across five task categories and extended with an out-of-distribution (OOD) generalization study.

## Repository Structure

```
thesis/
├── module_1/                              # Pipeline 1: LLM → ILASP (rule learning)
│   ├── ConceptNet/                        # ConceptNet domestic-object data
│   ├── CSKG/                              # CSKG tool-relation data
│   ├── SOMA/                              # SOMA ontology files (.owl)
│   ├── config.json                        # Model configuration
│   ├── jsons/                             # Intermediate extracted data
│   ├── rules/                             # ASP constraints & learned rules
│   └── scripts/                           # Pipeline scripts
│       ├── run_pipeline.py                # End-to-end orchestrator (Steps 1–7)
│       ├── run_pipeline.sh                # HPC runner script
│       ├── run_ablation_study.sh          # Ablation runner
│       ├── shared/                        # Shared utilities (ConceptNet extraction,
│       │                                  #   SOMA annotation, ASP constraints)
│       ├── tidy_up/                       # Tidy-up task: ILASP examples, rule
│       │                                  #   induction, evaluation
│       └── tool_usage/                    # Tool-usage task: KB construction,
│                                          #   evaluation
│
├── module_2/                              # Pipeline 2: LLM → SWI-Prolog (runtime)
│   ├── tidy_up/                           # Tidy-up task evaluation
│   ├── table_setting/                     # Table-setting task evaluation
│   ├── tool_usage/                        # Tool-usage task evaluation
│   ├── meta_reasoning/                    # Meta-reasoning task evaluation
│   ├── procedural_knowledge/              # Procedural-knowledge task evaluation
│   ├── piqa/                              # PIQA (household-filtered) evaluation
│   ├── generalization_results_summary.md  # OOD generalization results
│   └── robo_csk_bench_best_results.md     # Best results summary
│
├── PIQA/                                  # PIQA dataset (train + validation CSVs)
├── VirtualHome/                           # VirtualHome tidy-up generalization data
├── TidyBot/                               # TidyBot tidy-up generalization data
├── Robo-CSK-Benchmark/                    # Benchmark (git submodule, see .gitignore)
├── .gitignore
├── requirements.txt                       # Python dependencies
└── README.md
```

> **Note:** `RecipeNLG/` and `BEHAVIOR-1K/` datasets are excluded from the repository due to their size. See [Generalization Study](#generalization-study) for download/generation instructions.

Each module_2 task directory follows a consistent structure:

```
<task>/
├── evaluate.py              # Main evaluation script (neural + symbolic pipeline)
├── reasoner.pl              # SWI-Prolog reasoning rules
├── run_ablation_study.sh    # HPC ablation study runner
├── results/                 # Raw evaluation outputs
└── results_summary.md       # Aggregated results tables
```

---

## System Prerequisites

These tools must be installed **at the system level** (not inside the Python venv).

### 1. Homebrew (macOS package manager)

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 2. Python 3.12 (main project runtime)

```bash
brew install python@3.12
```

### 3. Python 3.10 (required by ILASP as a dynamic library)

```bash
brew install python@3.10
```

> **Note:** Python 3.10 is only needed as a system library for ILASP. It does not affect your project's virtual environment.

### 4. ILASP (Inductive Logic Programming system)

```bash
# Download the binary for Apple Silicon (M1/M2/M3)
curl -L -o /tmp/ILASP.tar.gz \
  "https://github.com/ilaspltd/ILASP-releases/releases/download/v4.4.1/ILASP-4.4.1-macOS-M1.tar.gz"

# For Intel Mac, use:
# curl -L -o /tmp/ILASP.tar.gz \
#   "https://github.com/ilaspltd/ILASP-releases/releases/download/v4.4.1/ILASP-v4.4.1-macOS-intel.tar.gz"

tar -xzf /tmp/ILASP.tar.gz -C /tmp/
sudo mv /tmp/ILASP /usr/local/bin/ILASP
sudo chmod +x /usr/local/bin/ILASP

# Verify
ILASP --version-info
```

### 5. SWI-Prolog (required by PySwip / Module 2)

```bash
brew install swi-prolog

# Verify
swipl --version
```

### 6. Ollama (local LLM runtime)

```bash
# Install from https://ollama.com or via brew cask
brew install --cask ollama

# Pull the model used in this project
ollama pull llama3.1

# Start the Ollama server (keep running in a separate terminal)
ollama serve
```

### 7. Mistral API Key (Module 2)

Module 2 uses the Mistral API for neural inference. Set the API key as an environment variable:

```bash
export MISTRAL_API_KEY="your-api-key-here"
```

You can obtain a key from [console.mistral.ai](https://console.mistral.ai/).

---

## Python Environment Setup

```bash
# 1. Clone the repository
git clone https://github.com/conocirone/thesis.git
cd thesis

# 2. Create a virtual environment with Python 3.12
python3.12 -m venv .thesis_env

# 3. Activate it
source .thesis_env/bin/activate   # macOS/Linux

# 4. Install Python dependencies
pip install -r requirements.txt
```

---

## Reproducing the Experiments

### Module 1 — LLM → ILASP (Tidy Up & Tool Usage)

This module uses an LLM to extract SOMA-grounded properties from ConceptNet/CSKG associations, validates them using ASP integrity constraints, and feeds them to ILASP to inductively learn placement and tool-usage rules. Finally, it evaluates the learned rules against the Robo-CSK-Benchmark.

```bash
source .thesis_env/bin/activate
cd module_1/scripts

# Run the complete 7-step pipeline
python run_pipeline.py

# Resume from a specific step
python run_pipeline.py --from 5

# Run only the evaluation step
python run_pipeline.py --only 7
```

**Expected pipeline report output:**

```text
Evaluation Complete! (Hits: 31/50 -> 62.00%)
MRR: 0.5467
k=1 | P@1: ...
k=3 | P@3: ...
k=5 | P@5: ...
```

---

### Module 2 — LLM → SWI-Prolog (All Five Tasks)

This module uses an LLM to dynamically synthesize SWI-Prolog reasoning code at inference time, then executes it symbolically via PySwip to answer benchmark questions. Each task follows the same neuro-symbolic architecture: **Neural → Symbolic → Neural**.

```bash
source .thesis_env/bin/activate
export MISTRAL_API_KEY="your-key"

# Run a single task evaluation
python module_2/tidy_up/evaluate.py
python module_2/table_setting/evaluate.py
python module_2/tool_usage/evaluate.py
python module_2/meta_reasoning/evaluate.py
python module_2/procedural_knowledge/evaluate.py

# With options (available on all tasks)
python module_2/tidy_up/evaluate.py --limit 50           # sample of 50 questions
python module_2/tidy_up/evaluate.py --ablation pure_llm  # LLM only, no KB
python module_2/tidy_up/evaluate.py --ablation pure_logic # KB + Prolog only, no LLM
python module_2/tidy_up/evaluate.py --verbose             # per-question details
```

Results are saved to `<task>/results/` and summarized in `<task>/results_summary.md`.

---

### Generalization Study

The generalization study evaluates the Module 2 pipeline on out-of-distribution (OOD) datasets:

| Task | OOD Dataset | Data Location |
|---|---|---|
| Tidy Up | VirtualHome | `VirtualHome/` (included) |
| Tidy Up | TidyBot | `TidyBot/` (included) |
| Tool Usage | PIQA (household-filtered) | `PIQA/` (included) |
| Meta-Reasoning | BEHAVIOR-1K | Re-generate (see below) |
| Procedural Knowledge | RecipeNLG | Re-generate (see below) |

**To regenerate BEHAVIOR-1K data:**

```bash
python module_2/meta_reasoning/download_behavior1k.py
python module_2/meta_reasoning/annotate_behavior1k.py
```

**To regenerate RecipeNLG data:**

Download `RecipeNLG_dataset.csv` from [RecipeNLG](https://recipenlg.cs.put.poznan.pl/), place it in `RecipeNLG/`, then run:

```bash
python module_2/procedural_knowledge/create_recipenlg.py
```

Aggregated OOD results are in `module_2/generalization_results_summary.md`.
