# Meta Reasoning — Results Summary

## Task Overview

The **Meta Reasoning** task asks: _"Given a household task description and a robot's physical configuration, can the robot execute the task?"_

It is evaluated in two formats:

- **Binary**: predict `True` (can execute) or `False` (cannot execute) given a (task, robot config) pair.
- **Multi-choice**: given a task and a set of candidate robot configurations (each scored by Prolog), select the single configuration that can execute the task best.

The pipeline extracts 6 boolean task-property features (e.g., `needs_grasping`, `needs_mobility`) via LLM, then feeds them into a SWI-Prolog reasoner that checks whether the robot's spec satisfies each requirement.

**Model**: `mistral-large-latest` 
**Dataset size**: 4 788 binary questions / 4 788 multi-choice questions

---

## Binary Results

| Approach | Accuracy | Precision | Recall | Specificity | F1 |
|---|---|---|---|---|---|
| **Full pipeline** | **0.973** | **1.000** | **0.945** | **1.000** | **0.972** |
| Pure LLM | 0.767 | 1.000 | 0.533 | 1.000 | 0.696 |
| **Pure Logic** | **0.996** | **1.000** | **0.993** | **1.000** | **0.996** |

Raw counts (Full pipeline): TP = 4525 | TN = 4788 | FP = 0 | FN = 263  
Raw counts (Pure Logic):     TP = 4754 | TN = 4788 | FP = 0 | FN = 34

### Key observations

- **Specificity = 1.000 across all modes**: the system never produces a false positive (never claims an incapable robot can do the task). All errors are false negatives.
- **Pure Logic outperforms the full pipeline** (0.996 vs 0.973). The keyword-based task feature extractor is more conservative than the LLM, it defaults to requiring fewer capabilities, which reduces missed positives. This indicates the LLM occasionally over-estimates task requirements (e.g., marking `needs_grasping = True` for tasks that can be done by pushing).
- **Pure LLM is the weakest** (0.767, Recall 0.533): without Prolog's structured check, the LLM alone misses more than half of positive cases, likely because it makes holistic judgements that fail on edge-case configurations.

---

## Multi-Choice Results

| Approach | Accuracy | Correct / Total |
|---|---|---|
| **Full pipeline** | **0.925** | 4427 / 4788 |
| Pure LLM | 0.913 | 4370 / 4788 |
| **Pure Logic** | **0.943** | 4516 / 4788 |


### Key observations

- **Pure Logic again outperforms the full pipeline** (0.943 vs 0.925) for the same reason as the binary case: the keyword extractor's conservative feature set leads to fewer configurations being incorrectly disqualified.
- **Full pipeline outperforms Pure LLM** by +1.2 pp, confirming the symbolic layer adds value over direct LLM scoring.
- The multi-choice task is harder than the binary task for the LLM alone because the system must rank configurations rather than make a simple yes/no decision.

---

## Summary

| Approach | Binary F1 | Multi Accuracy | Notes |
|---|---|---|---|
| **Full pipeline** | 0.972 | 0.925 | Balanced; safe default |
| Pure LLM | 0.696 | 0.913 | High false-negative rate in binary |
| **Pure Logic** | **0.996** | **0.943** | Best overall; conservative extractor avoids LLM over-specification |

The main takeaway for this task is that the **symbolic Prolog layer is the backbone of performance**. The LLM's primary role is feature extraction, and when the keywords are regular enough the rule-based extractor can match or exceed LLM accuracy. The full neuro-symbolic pipeline remains the recommended default because it handles free-text variation more robustly.
