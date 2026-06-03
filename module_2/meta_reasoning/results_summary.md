# Meta Reasoning — Results Summary

## Binary Results — Robot Capability Classification (Robo-CSK)

### mistral-large (default)

| Approach          | Accuracy  | Precision | Recall    | Specificity | F1        | TP   | TN   | FP | FN  |
| ----------------- | --------- | --------- | --------- | ----------- | --------- | ---- | ---- | -- | --- |
| **Full pipeline** | **0.973** | **1.000** | **0.945** | **1.000**   | **0.972** | 4525 | 4788 | 0  | 263 |
| No CoT            | 0.967     | 1.000     | 0.933     | 1.000       | 0.966     | 4469 | 4788 | 0  | 319 |
| Pure LLM          | 0.767     | 1.000     | 0.533     | 1.000       | 0.696     | 2554 | 4787 | 1  | 2234 |
| **Pure Logic**    | **0.996** | **1.000** | **0.993** | **1.000**   | **0.996** | 4754 | 4788 | 0  | 34  |

### mistral-medium

| Approach          | Accuracy  | Precision | Recall    | Specificity | F1        | TP   | TN   | FP | FN   |
| ----------------- | --------- | --------- | --------- | ----------- | --------- | ---- | ---- | -- | ---- |
| **Full pipeline** | **0.971** | **1.000** | **0.942** | **1.000**   | **0.970** | 4511 | 4787 | 1  | 277  |
| Pure LLM          | 0.708     | 0.997     | 0.418     | 0.999       | 0.589     | 2001 | 4781 | 7  | 2787 |

### mistral-small

| Approach          | Accuracy  | Precision | Recall    | Specificity | F1        | TP   | TN   | FP | FN   |
| ----------------- | --------- | --------- | --------- | ----------- | --------- | ---- | ---- | -- | ---- |
| Pure LLM          | 0.795     | 0.990     | 0.596     | 0.994       | 0.744     | 2854 | 4759 | 29 | 1934 |

> **Note**: mistral-small full pipeline binary was only run on a 10-sample pilot (0.900 acc); the full 9,576-sample run was not completed. Pure Logic results are model-independent (identical to mistral-large Pure Logic).

---

## Multi-Choice Results — Select the Correct Robot Config (Robo-CSK)

| Model              | Approach          | Accuracy  | Correct / Total |
| ------------------ | ----------------- | --------- | --------------- |
| **mistral-large**  | **Full pipeline** | **0.925** | 4427 / 4788     |
| mistral-large      | Pure LLM          | 0.913     | 4370 / 4788     |
| mistral-large      | **Pure Logic**    | **0.943** | 4516 / 4788     |
| **mistral-medium** | Full pipeline     | 0.929     | 4447 / 4788     |
| mistral-medium     | Pure LLM          | 0.917     | 4390 / 4788     |
| **mistral-small**  | **Full pipeline** | **0.933** | 4465 / 4788     |
| mistral-small      | Pure LLM          | 0.892     | 4273 / 4788     |

> Pure Logic multi-choice is model-independent: **0.943** (4516/4788).

---

## Cross-Model Comparison (Robo-CSK)

### Binary (F1)

| Approach      | mistral-large | mistral-medium | mistral-small |
| ------------- | ------------- | -------------- | ------------- |
| Full pipeline | **0.972**     | **0.970**      | —             |
| Pure LLM      | 0.696         | 0.589          | 0.744         |
| Pure Logic    | 0.996         | 0.996          | 0.996         |

### Multi-Choice (Accuracy)

| Approach      | mistral-large | mistral-medium | mistral-small |
| ------------- | ------------- | -------------- | ------------- |
| Full pipeline | 0.925         | **0.929**      | **0.933**     |
| Pure LLM      | 0.913         | 0.917          | 0.892         |
| Pure Logic    | 0.943         | 0.943          | 0.943         |

---

## Neuro-Symbolic vs Pure LLM Delta (Robo-CSK)

### Binary (F1)

| Model          | Full Pipeline | Pure LLM | Δ F1       |
| -------------- | ------------- | -------- | ---------- |
| mistral-large  | 0.972         | 0.696    | **+0.276** |
| mistral-medium | 0.970         | 0.589    | **+0.381** |

### Multi-Choice (Accuracy)

| Model          | Full Pipeline | Pure LLM | Δ Accuracy |
| -------------- | ------------- | -------- | ---------- |
| mistral-small  | 0.933         | 0.892    | **+0.041** |
| mistral-medium | 0.929         | 0.917    | +0.012     |
| mistral-large  | 0.925         | 0.913    | +0.012     |

---

## Generalization — BEHAVIOR-1K (OOD Binary Evaluation)

Tasks: 250 diverse household activities from 10 categories × multiple robot configs = ~2,032 binary questions.

| Model              | Approach          | Accuracy  | Precision | Recall    | Specificity | F1        | TP   | TN  | FP  | FN  |
| ------------------ | ----------------- | --------- | --------- | --------- | ----------- | --------- | ---- | --- | --- | --- |
| **mistral-large**  | **Full pipeline** | **0.770** | 0.691     | **0.976** | 0.564       | **0.809** | 992  | 573 | 443 | 24  |
| mistral-large      | Pure LLM          | 0.667     | 0.943     | 0.356     | 0.978       | 0.517     | 362  | 994 | 22  | 654 |
| mistral-large      | Pure Logic        | 0.625     | 0.572     | 0.992     | 0.257       | 0.725     | 1008 | 261 | 755 | 8   |
| **mistral-medium** | **Full pipeline** | **0.765** | 0.701     | **0.924** | 0.606       | **0.797** | 939  | 616 | 400 | 77  |
| mistral-medium     | Pure LLM          | 0.681     | 0.905     | 0.405     | 0.958       | 0.559     | 411  | 973 | 43  | 605 |
| mistral-medium     | Pure Logic        | 0.625     | 0.572     | 0.992     | 0.257       | 0.725     | 1008 | 261 | 755 | 8   |
| **mistral-small**  | **Full pipeline** | **0.768** | 0.695     | **0.955** | 0.581       | **0.804** | 970  | 590 | 426 | 46  |
| mistral-small      | Pure LLM          | 0.747     | 0.855     | 0.595     | 0.899       | 0.702     | 605  | 913 | 103 | 411 |
| mistral-small      | Pure Logic        | 0.625     | 0.572     | 0.992     | 0.257       | 0.725     | 1008 | 261 | 755 | 8   |

### BEHAVIOR-1K Ablation Analysis

| Approach      | mistral-large | mistral-medium | mistral-small |
| ------------- | ------------- | -------------- | ------------- |
| Full pipeline | **0.809**     | **0.797**      | **0.804**     |
| Pure LLM      | 0.517         | 0.559          | 0.702         |
| Pure Logic    | 0.725         | 0.725          | 0.725         |

### BEHAVIOR-1K Neuro-Symbolic vs Pure LLM Delta

| Model          | Full Pipeline F1 | Pure LLM F1 | Δ F1       |
| -------------- | ---------------- | ----------- | ---------- |
| mistral-large  | 0.809            | 0.517       | **+0.292** |
| mistral-medium | 0.797            | 0.559       | **+0.238** |
| mistral-small  | 0.804            | 0.702       | **+0.102** |

---

## Summary

### Robo-CSK (In-Distribution)

| Approach          | Binary F1 (large) | Multi Accuracy (best) | Notes                                                |
| ----------------- | ------------------ | --------------------- | ---------------------------------------------------- |
| **Full pipeline** | 0.972              | 0.933 (small)         | Balanced; safe default                               |
| Pure LLM          | 0.696              | 0.917 (medium)        | High false-negative rate in binary                   |
| **Pure Logic**    | **0.996**          | **0.943**             | Best overall; conservative extraction avoids LLM FNs |

### BEHAVIOR-1K (Out-of-Distribution)

| Model              | Full Pipeline F1 | Full Pipeline Acc | Pure LLM F1 | Δ F1   |
| ------------------ | ---------------- | ----------------- | ----------- | ------ |
| **mistral-large**  | **0.809**        | **0.770**         | 0.517       | +0.292 |
| mistral-small      | 0.804            | 0.768             | 0.702       | +0.102 |
| mistral-medium     | 0.797            | 0.765             | 0.559       | +0.238 |

The full neuro-symbolic pipeline consistently outperforms both ablations on BEHAVIOR-1K, confirming that the symbolic robot capability axioms generalize zero-shot to unseen household tasks.
