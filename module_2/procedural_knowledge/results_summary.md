# Procedural Knowledge — Results Summary

## Binary Results — Step Ordering (Robo-CSK: "Is Step A before Step B?")

3,104 balanced binary questions (776 recipes × 4 questions), Ratio = 1.000 for all runs.

### By Model and Ablation

| Model              | Approach          | Accuracy  | F1        | TP   | FP  | FN  |
| ------------------ | ----------------- | --------- | --------- | ---- | --- | --- |
| **mistral-large**  | **Full pipeline** | **0.968** | **0.968** | 1502 | 50  | 50  |
| mistral-large      | No CoT            | 0.969     | 0.969     | 1504 | 48  | 48  |
| mistral-large      | Pure LLM          | 0.960     | 0.960     | 1490 | 62  | 62  |
| mistral-large      | Pure Logic        | 0.481     | 0.481     | 746  | 806 | 806 |
| **mistral-medium** | Full pipeline     | 0.950     | 0.950     | 1474 | 78  | 78  |
| mistral-medium     | Pure LLM          | 0.927     | 0.927     | 1438 | 114 | 114 |
| mistral-medium     | Pure Logic        | 0.481     | 0.481     | 746  | 806 | 806 |
| **mistral-small**  | Pure LLM          | **0.983** | **0.983** | 1526 | 26  | 26  |
| mistral-small      | Pure Logic        | 0.481     | 0.481     | 746  | 806 | 806 |
| **llama-3.1**      | Full pipeline     | 0.965     | 0.965     | 1498 | 54  | 54  |

> **Note**: Precision = Recall = Accuracy for all runs (balanced Yes/No dataset). mistral-small full pipeline binary was only completed as a 4-question pilot. Pure Logic is model-independent.

---

## Multi-Choice Results — Select the Correct Successor Step (Robo-CSK)

1,600 multi-choice questions.

| Model              | Approach          | Accuracy  | Correct / Total |
| ------------------ | ----------------- | --------- | --------------- |
| **mistral-large**  | **Full pipeline** | 0.841     | 1345 / 1600     |
| mistral-large      | No CoT            | **0.854** | 1366 / 1600     |
| mistral-large      | Pure LLM          | 0.849     | 1359 / 1600     |
| mistral-large      | Pure Logic        | 0.665     | 1064 / 1600     |
| **mistral-medium** | Pure LLM          | **0.863** | **1380 / 1600** |
| mistral-medium     | Full pipeline     | 0.856     | 1369 / 1600     |
| mistral-medium     | Pure Logic        | 0.668     | 1069 / 1600     |
| **mistral-small**  | Pure LLM          | 0.801     | 1282 / 1600     |
| mistral-small      | Full pipeline     | 0.798     | 1277 / 1600     |
| mistral-small      | Pure Logic        | 0.647     | 1036 / 1600     |
| **llama-3.1**      | Full pipeline     | 0.722     | 1155 / 1600     |

---

## Cross-Model Comparison (Robo-CSK)

### Binary (F1 / Accuracy)

| Approach      | mistral-large | mistral-medium | mistral-small | llama-3.1 |
| ------------- | ------------- | -------------- | ------------- | --------- |
| Full pipeline | **0.968**     | 0.950          | —             | 0.965     |
| No CoT        | 0.969         | —              | —             | —         |
| Pure LLM      | 0.960         | 0.927          | **0.983**     | —         |
| Pure Logic    | 0.481         | 0.481          | 0.481         | 0.481     |

### Multi-Choice (Accuracy)

| Approach      | mistral-large | mistral-medium | mistral-small | llama-3.1 |
| ------------- | ------------- | -------------- | ------------- | --------- |
| Full pipeline | 0.841         | 0.856          | 0.798         | 0.722     |
| No CoT        | **0.854**     | —              | —             | —         |
| Pure LLM      | 0.849         | **0.863**      | **0.801**     | —         |
| Pure Logic    | 0.665         | 0.668          | 0.647         | —         |

---

## Neuro-Symbolic vs Pure LLM Delta (Robo-CSK)

### Binary

| Model          | Full Pipeline | Pure LLM | Δ F1    |
| -------------- | ------------- | -------- | ------- |
| mistral-large  | 0.968         | 0.960    | +0.008  |
| mistral-medium | 0.950         | 0.927    | +0.023  |

### Multi-Choice

| Model          | Full Pipeline | Pure LLM | Δ Accuracy |
| -------------- | ------------- | -------- | ---------- |
| mistral-medium | 0.856         | 0.863    | −0.007     |
| mistral-large  | 0.841         | 0.849    | −0.008     |
| mistral-small  | 0.798         | 0.801    | −0.003     |

> In procedural knowledge, Pure LLM performs comparably to (and sometimes marginally exceeds) the full pipeline in multi-choice. The temporal Prolog reasoner provides its strongest advantage in the binary format, where it anchors step ordering with explicit precedence constraints.

---

## Generalization — RecipeNLG (OOD Binary Step Ordering)

2,000 balanced binary questions (500 real-world recipes from RecipeNLG, zero-shot transfer with unmodified reasoner).

| Model              | Approach          | Accuracy  | F1        | TP  | FP  | FN  |
| ------------------ | ----------------- | --------- | --------- | --- | --- | --- |
| **mistral-large**  | **Full pipeline** | **0.898** | **0.898** | 898 | 102 | 102 |
| mistral-large      | Pure LLM          | 0.786     | 0.786     | 786 | 214 | 214 |
| mistral-large      | Pure Logic        | 0.406     | 0.406     | 406 | 594 | 594 |
| **mistral-medium** | Full pipeline     | 0.812     | 0.812     | 812 | 188 | 188 |
| mistral-medium     | Pure LLM          | 0.640     | 0.640     | 640 | 360 | 360 |
| mistral-medium     | Pure Logic        | 0.406     | 0.406     | 406 | 594 | 594 |
| **mistral-small**  | **Full pipeline** | **0.846** | **0.846** | 846 | 154 | 154 |
| mistral-small      | Pure LLM          | 0.798     | 0.798     | 798 | 202 | 202 |
| mistral-small      | Pure Logic        | 0.406     | 0.406     | 406 | 594 | 594 |

> Ratio = 1.000 for all runs (balanced dataset). Pure Logic is model-independent.

### RecipeNLG Ablation Analysis

| Approach      | mistral-large | mistral-medium | mistral-small |
| ------------- | ------------- | -------------- | ------------- |
| Full pipeline | **0.898**     | **0.812**      | **0.846**     |
| Pure LLM      | 0.786         | 0.640          | 0.798         |
| Pure Logic    | 0.406         | 0.406          | 0.406         |

### RecipeNLG Neuro-Symbolic vs Pure LLM Delta

| Model          | Full Pipeline | Pure LLM | Δ F1       |
| -------------- | ------------- | -------- | ---------- |
| mistral-medium | 0.812         | 0.640    | **+0.172** |
| mistral-large  | 0.898         | 0.786    | **+0.112** |
| mistral-small  | 0.846         | 0.798    | **+0.048** |

The symbolic Prolog reasoner provides a clear, consistent advantage on OOD recipes. The full pipeline beats Pure LLM across all three model sizes, with the largest boost for mistral-medium (+17.2 pp).

---

## Cross-Format Comparison (Best Results)

| Format                    | Best Approach                    | Best Accuracy | Worst Approach           | Worst Accuracy |
| ------------------------- | -------------------------------- | ------------- | ------------------------ | -------------- |
| Binary (Robo-CSK)         | mistral-small Pure LLM           | **0.983**     | Pure Logic (any)         | 0.481          |
| Multi-choice (Robo-CSK)   | mistral-medium Pure LLM          | **0.863**     | mistral-small Pure Logic | 0.647          |
| Binary (RecipeNLG — OOD)  | mistral-large Full pipeline      | **0.898**     | Pure Logic (any)         | 0.406          |

---

## Summary

### Robo-CSK (In-Distribution)

| Model          | Binary F1 (full) | Binary F1 (best ablation) | Multi Acc (full) | Multi Acc (best ablation)  |
| -------------- | ---------------- | ------------------------- | ---------------- | -------------------------- |
| mistral-large  | 0.968            | 0.969 (no_cot)            | 0.841            | 0.854 (no_cot)             |
| mistral-medium | 0.950            | 0.927 (pure_llm ↓)        | 0.856            | 0.863 (pure_llm)           |
| mistral-small  | —                | **0.983** (pure_llm)      | 0.798            | 0.801 (pure_llm)           |
| llama-3.1      | 0.965            | —                         | 0.722            | —                          |

### RecipeNLG (Out-of-Distribution)

| Model              | Full Pipeline F1 | Pure LLM F1 | Δ F1   |
| ------------------ | ---------------- | ----------- | ------ |
| **mistral-large**  | **0.898**        | 0.786       | +0.112 |
| mistral-small      | 0.846            | 0.798       | +0.048 |
| mistral-medium     | 0.812            | 0.640       | +0.172 |

The neuro-symbolic pipeline's advantage is amplified on OOD data: on RecipeNLG, the full pipeline outperforms Pure LLM by +11.1 pp on average, compared to a near-zero delta on in-distribution Robo-CSK. The Prolog temporal reasoning generalizes zero-shot to diverse real-world recipes.
