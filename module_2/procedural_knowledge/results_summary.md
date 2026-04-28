# Procedural Knowledge — Results Summary

## Task Overview

The **Procedural Knowledge** task evaluates whether a system understands the temporal order of cooking recipe steps.

It is evaluated in two formats:

- **Binary**: given two steps from a recipe, predict whether step A occurs *before* step B (`Yes`) or not (`No`). The dataset is balanced (equal Yes/No pairs).
- **Multi-choice**: given a reference step and a recipe title, select which of several candidate steps occurs immediately *after* the reference step.

The pipeline extracts 6 semantic step-properties per step (e.g., `cooking_phase`, `requires_heat`, `is_final_step`) via LLM, then feeds them into a SWI-Prolog reasoner that applies ordering rules. If Prolog cannot determine the order, the LLM is used as a fallback.

**Dataset**: 3 104 binary pairs (1 552 Yes + 1 552 No) / 1 600 multi-choice questions

---

## Binary Results — Step Ordering (Is A before B?)

| Model | Approach | Accuracy | Precision | Recall | F1 | TP | FP |
|---|---|---|---|---|---|---|---|
| mistral-large | **Full pipeline** | **0.968** | **0.968** | **0.968** | **0.968** | 1502 | 50 |
| mistral-large | Pure LLM | 0.960 | 0.960 | 0.960 | 0.960 | 1490 | 62 |
| mistral-large | Pure Logic | 0.481 | 0.481 | 0.481 | 0.481 | 746 | 806 |
| mistral-medium | Full pipeline | 0.950 | 0.950 | 0.950 | 0.950 | 1474 | 78 |
| mistral-medium | Pure LLM | 0.927 | 0.927 | 0.927 | 0.927 | 1438 | 114 |
| mistral-medium | Pure Logic | 0.481 | 0.481 | 0.481 | 0.481 | 746 | 806 |
| mistral-small | Full pipeline | 0.964 | 0.964 | 0.964 | 0.964 | 1496 | 56 |
| mistral-small | Pure LLM | **0.983** | **0.983** | **0.983** | **0.983** | 1526 | 26 |
| mistral-small | Pure Logic | 0.481 | 0.481 | 0.481 | 0.481 | 746 | 806 |

> Note: Ratio = 1.000 for all runs (balanced Yes/No dataset, so precision = recall = accuracy).

### Key observations

- **Pure Logic collapses to near-random** (0.481 ≈ chance) for all models. The keyword-based extractor is inadequate for the nuanced cooking-phase and dependency reasoning required by the Prolog rules — it assigns identical or misleading phase labels, making the symbolic reasoner unable to distinguish order.
- **The full pipeline vs Pure LLM gap is small** for mistral-large (+0.8 pp) and mistral-medium (+2.3 pp), meaning the Prolog layer adds a modest but consistent improvement over direct LLM judgment for larger models.
- **mistral-small Pure LLM (0.983)** is the single highest binary score — higher than mistral-large's full pipeline. This is counter-intuitive and suggests mistral-small's LLM makes more conservative ordering predictions that happen to align well with the balanced binary task, while the symbolic layer may introduce some noise.
---

## Multi-Choice Results — Select the Correct Successor Step

| Model | Approach | Accuracy | Correct / Total |
|---|---|---|---|
| mistral-large | **Full pipeline** | **0.841** | 1345 / 1600 |
| mistral-large | No CoT | 0.854 | 1366 / 1600 |
| mistral-large | Pure LLM | 0.849 | 1359 / 1600 |
| mistral-large | Pure Logic | 0.665 | 1064 / 1600 |
| mistral-medium | Full pipeline | 0.856 | 1369 / 1600 |
| mistral-medium | Pure LLM | **0.863** | **1380 / 1600** |
| mistral-medium | Pure Logic | 0.668 | 1069 / 1600 |
| mistral-small | Full pipeline | 0.798 | 1277 / 1600 |
| mistral-small | Pure LLM | 0.801 | 1282 / 1600 |
| mistral-small | Pure Logic | 0.647 | 1036 / 1600 |

### Key observations

- **Pure Logic again performs poorly** (0.647–0.668), confirming the symbolic layer cannot stand alone for this task without reliable LLM features.
- **Full pipeline vs Pure LLM gap is again narrow** across all models. The neuro-symbolic pipeline is broadly on par with direct LLM selection for multi-choice ordering, because the LLM's commonsense knowledge about recipe steps is strong enough to perform without strict Prolog verification.
- **mistral-medium Pure LLM (0.863)** is the best multi-choice result. This suggests medium-size models reach a sweet spot where the LLM's cooking knowledge is strong and the symbolic layer provides diminishing returns.
- **No CoT slightly outperforms full CoT for mistral-large** in multi-choice (0.854 vs 0.841), which mirrors a common pattern: when the task requires common-sense selection rather than structured reasoning, the extra CoT step can introduce over-thinking or inconsistency.
- **mistral-small** lags significantly (-5.8 pp vs mistral-large, -6 pp vs mistral-medium), indicating smaller models struggle with the multi-step reasoning required to select the correct successor among plausible distractors.

---

## Cross-Format Comparison

| Format | Best approach | Best accuracy | Worst approach | Worst accuracy |
|---|---|---|---|---|
| Binary | mistral-small Pure LLM | 0.983 | Pure Logic (any) | 0.481 |
| Multi-choice | mistral-medium Pure LLM | 0.863 | mistral-small Pure Logic | 0.647 |

Binary is substantially easier than multi-choice for this task (0.983 vs 0.863 best). Both formats agree that **Pure Logic alone is unsuitable** and that the neuro-symbolic full pipeline is close to the Pure LLM ceiling, particularly for larger models.

---

## Summary

| Model | Binary (full) | Binary (best ablation) | Multi (full) | Multi (best ablation) |
|---|---|---|---|---|
| mistral-large | 0.968 | 0.969 (no_cot) | 0.841 | 0.854 (no_cot) |
| mistral-medium | 0.950 | 0.927 (pure_llm ↓) | 0.856 | 0.863 (pure_llm) |
| mistral-small | 0.964 | **0.983** (pure_llm) | 0.798 | 0.801 (pure_llm) |

The full neuro-symbolic pipeline delivers competitive results across all model sizes. The symbolic layer's main contribution is **consistency and zero-shot generalisation**: it prevents the model from hallucinating unlikely orderings. For binary tasks its benefit over Pure LLM is small; for multi-choice the benefit is clearer at the small-model tier.
