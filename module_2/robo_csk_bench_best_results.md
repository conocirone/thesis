# Robo-CSK-Bench: Best Results by Task

This table reports the best score achieved for each Robo-CSK-Bench task, regardless of ablation (Full Pipeline, Pure LLM, Pure Logic, No CoT).

| Task | Evaluation Format | Metric | Best Score | Best Configuration | Notes |
|---|---|---|---:|---|---|
| Tidy Up | Multi-choice | Accuracy | **0.6997** (268/383) | mistral-large + Full pipeline | Highest discrete placement selection accuracy. |
| Tidy Up | Open / Generative | MRR | **0.897** | mistral-medium + Pure LLM | Best ranking quality in open destination generation. |
| Tool Usage | Multi-choice | Accuracy | **0.8179** (238/291) | mistral-small + Full pipeline | Best overall tool selection accuracy. |
| Table Setting | Plate prediction | Accuracy | **0.880** | mistral-small + Full pipeline | Best plate-type classification. |
| Table Setting | Cutlery prediction | Jaccard similarity | **0.778** | mistral-large + Full pipeline | Best cutlery set overlap with ground truth. |
| Procedural Knowledge | Binary step ordering | Accuracy / F1 | **0.983** | mistral-small + Pure LLM | Best pairwise temporal ordering performance. |
| Procedural Knowledge | Multi-choice next step | Accuracy | **0.863** (1380/1600) | mistral-medium + Pure LLM | Best successor-step selection. |
| Meta-Reasoning | Binary robot capability | Accuracy / F1 | **0.996** | Pure Logic | Best capability classification (model-independent). |
| Meta-Reasoning | Multi-choice robot config | Accuracy | **0.943** (4516/4788) | Pure Logic | Best configuration-selection performance (model-independent). |

## Quick Takeaway

- Best-performing setup varies by task geometry.
- Full pipeline dominates Tidy Up (multi-choice), Tool Usage, and Table Setting.
- Pure LLM leads in Procedural Knowledge.
- Pure Logic is strongest for Meta-Reasoning on Robo-CSK.

## Sources

- module_2/tidy_up/results_summary.md
- module_2/tool_usage/results_summary.md
- module_2/table_setting/results_summary.md
- module_2/procedural_knowledge/results_summary.md
- module_2/meta_reasoning/results_summary.md
