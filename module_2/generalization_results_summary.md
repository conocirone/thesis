# Robo-CSK-Bench: Generalization / Out-of-Distribution (OOD) Study Results

This document summarizes the evaluation results for the **Out-of-Distribution (OOD) Generalization Study** across the four key domestic robotic tasks. In these experiments, the models and neuro-symbolic reasoning pipelines developed on Robo-CSK were evaluated zero-shot on external, unseen datasets to test their capability to transfer and generalize without further training.

---

## 1. Tidy Up

### Out-of-Distribution Datasets
* **VirtualHome** (67 Multi-choice Questions)
* **TidyBot** (598 Multi-choice Questions)

### VirtualHome Results (Accuracy)
VirtualHome objects often feature compound/camelCase naming conventions (e.g. `kitchencounter`, `alarmclock`). We evaluate under two modes:
1. **Mode A (Vocab-Aligning)**: Normalizes names using a synonym table + fuzzy matching before concept mapping.
2. **Mode B (Strict)**: Passes raw names directly to the KB lookup without any normalisation.

| Model | Mode | Full Pipeline | Pure LLM | Pure Logic | Delta (Full vs. LLM) |
| :--- | :--- | :---: | :---: | :---: | :---: |
| **mistral-large** | Mode A (Vocab-Aligning) | 91.04% | **92.54%** | — | -1.50 pp |
| | Mode B (Strict) | 89.55% | — | — | — |
| **mistral-medium** | Mode A (Vocab-Aligning) | 92.54% | **94.03%** | — | -1.49 pp |
| | Mode B (Strict) | **92.54%** | — | — | — |
| **mistral-small** | Mode A (Vocab-Aligning) | 88.06% | 88.06% | — | 0.00 pp |
| | Mode B (Strict) | 71.64% | — | **34.33%** | — |

> [!NOTE]
> **Ceiling Effect**: On VirtualHome, locations are straightforward (e.g., `beer` to `fridge`, `alarm clock` to `nightstand`). Large LLMs already perform near ceiling (~92-94%), meaning the symbolic layer does not add marginal signal. In strict Mode B, the lack of vocabulary bridging drops performance because of KB lookup misses.

---

### TidyBot Results (Accuracy)
Unlike VirtualHome, TidyBot placements are highly dependent on human preferences (the "Subjectivity Paradox"), making the task extremely challenging.

| Model | Full Pipeline | Pure LLM Baseline | Pure Logic (Mode A) | Pure Logic (Mode B) | Delta (Full vs. LLM) |
| :--- | :---: | :---: | :---: | :---: | :---: |
| **mistral-large** | **47.99%** | 39.13% | — | — | **+8.86 pp** |
| **mistral-medium** | **41.30%** | 30.94% | — | — | **+10.36 pp** |
| **mistral-small** | **34.45%** | 26.15% | **21.40%** | **19.73%** | **+8.30 pp** |

> [!TIP]
> **Robust Advantage**: Despite the overall domain shift drop (-22 pp from Robo-CSK), the symbolic grounding advantage remains highly robust, yielding an improvement of **+8.3 to +10.4 pp** across all models.

---

## 2. Tool Usage

### Out-of-Distribution Dataset
* **PIQA (Physical Interaction: Question Answering)**: A subset of **710 household-only questions** was isolated from the 1,838 validation questions to maximize overlap with the KB's domain.

### PIQA Results (Accuracy)

| Evaluation Subset | Full Pipeline | Pure LLM Baseline | Pure Logic | Delta (Full vs. LLM) |
| :--- | :---: | :---: | :---: | :---: |
| **Domain Filtered** (710 Q) | 91.69% | **94.37%** | 49.30% | -2.70 pp |
| **Unfiltered** (1,838 Q) | 82.37% | **88.37%** | 48.48% | -6.00 pp |

> [!WARNING]
> **Task Geometry Mismatch**: The pipeline is designed for entity selection (retrieving object names). PIQA tasks require choosing between free-text descriptions of physical procedures (e.g. *“Place a small wedge under the log”* vs. *“Place a small tarp under the log”*). The presence of target nouns (like *wedge* or *tarp*) is noisy, so the KB lookup adds penalty constraints rather than clean signals.

---

## 3. Meta-Reasoning

### Out-of-Distribution Dataset
* **BEHAVIOR-1K**: 250 household activities from 10 categories mapping to **2,032 binary robot capability questions** under domain shift.

### BEHAVIOR-1K Results (Accuracy / F1-Score)

| Model | Approach | Accuracy | Precision | Recall | Specificity | F1-Score | Delta F1 (vs. LLM) |
| :--- | :--- | :---: | :---: | :---: | :---: | :---: | :---: |
| **mistral-large** | **Full Pipeline** | **0.770** | 0.691 | 0.976 | 0.564 | **0.809** | **+0.292** |
| | Pure LLM | 0.667 | 0.943 | 0.356 | 0.978 | 0.517 | — |
| | Pure Logic | 0.625 | 0.572 | 0.992 | 0.257 | 0.725 | — |
| **mistral-medium** | **Full Pipeline** | **0.765** | 0.701 | 0.924 | 0.606 | **0.797** | **+0.238** |
| | Pure LLM | 0.681 | 0.905 | 0.405 | 0.958 | 0.559 | — |
| | Pure Logic | 0.625 | 0.572 | 0.992 | 0.257 | 0.725 | — |
| **mistral-small** | **Full Pipeline** | **0.768** | 0.695 | 0.955 | 0.581 | **0.804** | **+0.102** |
| | Pure LLM | 0.747 | 0.855 | 0.595 | 0.899 | 0.702 | — |
| | Pure Logic | 0.625 | 0.572 | 0.992 | 0.257 | 0.725 | — |

> [!IMPORTANT]
> **Axiomatic Generalization**: The Prolog capability axioms generalize zero-shot to unseen household tasks, consistently outperforming both Pure LLM and Pure Logic ablations across all model scales (up to **+29.2 pp F1** improvement).

---

## 4. Procedural Knowledge

### Out-of-Distribution Dataset
* **RecipeNLG**: **2,000 balanced binary questions** constructed from real-world cooking recipes.

### RecipeNLG Results (Accuracy / F1-Score)

| Model | Full Pipeline | Pure LLM Baseline | Pure Logic | Delta F1 (vs. LLM) |
| :--- | :---: | :---: | :---: | :---: |
| **mistral-large** | **0.898** | 0.786 | 0.406 | **+0.112** |
| **mistral-medium** | **0.812** | 0.640 | 0.406 | **+0.172** |
| **mistral-small** | **0.846** | 0.798 | 0.406 | **+0.048** |

> [!IMPORTANT]
> **Temporal Anchoring**: The Prolog temporal reasoner provides a clear zero-shot advantage on OOD recipes (+11.2 pp on average), anchoring steps with explicit precedence constraints compared to unconstrained LLMs.

---

## OOD Performance Summary Dashboard

| Task | OOD Dataset | Best Full Pipeline | Best Pure LLM | Delta (Full vs. LLM) | Best Configuration |
| :--- | :--- | :---: | :---: | :---: | :--- |
| **Tidy Up** | VirtualHome | 92.54% (Acc) | **94.03%** (Acc) | -1.49 pp | mistral-medium + Pure LLM |
| **Tidy Up** | TidyBot | **47.99%** (Acc) | 39.13% (Acc) | **+8.86 pp** | mistral-large + Full Pipeline |
| **Tool Usage** | PIQA (Filtered) | 91.69% (Acc) | **94.37%** (Acc) | -2.68 pp | mistral-large + Pure LLM |
| **Meta-Reasoning**| BEHAVIOR-1K | **0.809** (F1) | 0.702 (F1) | **+0.107 pp** | mistral-large + Full Pipeline |
| **Procedural** | RecipeNLG | **0.898** (F1) | 0.798 (F1) | **+0.100 pp** | mistral-large + Full Pipeline |
