# Neuro-Symbolic Framework for Common-Sense Reasoning in Domestic Robots

A thesis project implementing a neuro-symbolic pipeline that uses an LLM to translate noisy common-sense knowledge (from ConceptNet) into formal logical triples, grounded in the SOMA ontology, to support robot reasoning in domestic tasks.

## Repository Structure

```
thesis/
├── module_1/                          # LLM → ILASP pipeline (Tidy Up & Tool Usage)
│   ├── ConceptNet/                    # Raw ConceptNet datasets
│   ├── SOMA/                          # SOMA ontology files (.owl)
│   ├── docs/                          # Development and Analysis Reports
│   ├── scripts/                       # Pipeline scripts (offline/online phases)
│   ├── rules/                         # ASP constraints and learned rules
│   └── jsons/                         # Intermediate extracted data
├── module_2/                          # LLM → SWI-Prolog pipeline (Table Setting)
│   └── pipeline_MVP_mod2.py           # LLM synthesizes Prolog logic → PySwip executes it
├── .gitignore
├── requirements.txt                   # Python dependencies (pip)
└── README.md
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

### Module 1 — LLM → ILASP (Tidy Up)

This module uses an LLM to extract SOMA-grounded properties from ConceptNet associations, validates them using ASP integrity constraints, and feeds them to ILASP to inductively learn placement rules for domestic objects. Finally, it evaluates the learned rules simulating a real-world scenario against the Robo-CSK benchmark.

```bash
source .thesis_env/bin/activate
cd module_1/scripts

# Run the complete 7-step pipeline
python run_pipeline.py
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

### Module 2 — LLM → SWI-Prolog (Table Setting)

This module uses an LLM to dynamically synthesize SWI-Prolog code describing the physical properties of a meal, then executes it symbolically via PySwip to deduce the correct cutlery and plate.

```bash
source .thesis_env/bin/activate
python module_2/pipeline_MVP_mod2.py
```

**Expected output:**

```
- Item selezionato: fork
- Item selezionato: knife
- Item selezionato: dinner_plate
```
