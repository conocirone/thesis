# Module 1 -- Background Knowledge Generation

This module generates a Prolog/ASP knowledge base from ConceptNet data,
annotated with the SOMA (Socio-physical Model of Activities) ontology.
The pipeline follows a **neurosymbolic approach**: an LLM (neural component)
performs semantic annotation, and ASP integrity constraints (symbolic component)
validate and correct the output.

The pipeline supports two downstream tasks:
- **Tidy Up** (`goesIn`): predict which location an object belongs in
- **Tool Usage** (`hasAffordance`): predict which affordances an object has

## Directory Structure

```
module_1/
├── README.md
├── ConceptNet/                               # Raw ConceptNet data (not versioned)
│   ├── assertions.csv                        # Full ConceptNet dump (~10 GB)
│   └── domestic_relations.parquet            # Filtered Parquet cache (auto-generated)
├── SOMA/                                     # SOMA ontology reference
│   └── OWLs/
│       ├── SOMA.owl
│       └── SOMA-HOME.owl
├── jsons/                                    # Intermediate JSON files
│   ├── conceptnet_domestic_subgraph.json     # Step 1 output
│   ├── conceptnet_objects_kept.json          # Step 2 output (kept)
│   └── conceptnet_objects_rejected.json      # Step 2 output (rejected)
├── rules/
│   ├── shared/                               # Task-agnostic knowledge (Steps 3-4)
│   │   ├── background_knowledge.las
│   │   ├── background_knowledge_validated.las
│   │   └── integrity_constraints.lp
│   ├── tidy_up/                              # Tidy Up ILASP & learned rules
│   │   ├── ilasp_tidy_up.las
│   │   └── learned_rules_*.txt
│   └── tool_usage_new/                       # (Optional) task-specific exports
├── scripts/
│   ├── run_pipeline.py                       # Pipeline orchestrator (all 10 steps)
│   ├── shared/                               # Steps 1-4: Task-agnostic preprocessing
│   │   ├── concept_net_extractor.py          # Step 1: ConceptNet extraction
│   │   ├── filter_objects.py                 # Step 2: LLM-based object filtering
│   │   ├── parsing.py                        # Step 3: LLM-based SOMA annotation
│   │   └── apply_constraints.py              # Step 4: ASP symbolic validation
│   ├── tidy_up/                              # Steps 5-7: Tidy Up task
│   │   ├── generate_ilasp_examples.py        # Step 5: ILASP example generation
│   │   ├── llm_rule_induction.py             # Step 6: LLM rule induction
│   │   ├── evaluate_rules.py                 # Offline rule evaluation
│   │   ├── evaluate.py                       # Step 7: Online evaluation
│   │   └── run_llm_rule_induction.sh         # SLURM script for Step 6
│   └── tool_usage_new/                       # Steps 8-10: Tool Usage task
│       ├── annotation_pipeline.py            # SOMA-style object annotation pipeline
│       ├── generate_examples.py              # Step 8: ILASP example generation
│       ├── learn_rules.py                    # Step 9: Rule induction
│       └── evaluate_pipeline.py              # Step 10: Evaluation report generation
└── docs/
    ├── module1_development_report.md
    ├── quality_analysis.md
    └── soma_analysis.md
```

## Prerequisites

### Software

- **Python 3.10+** with the following packages:
  ```
  pip install ollama duckdb
  ```
- **Ollama** with the Llama 3.1 model:
  ```
  brew install ollama
  ollama pull llama3.1
  ```
- **Clingo** (ASP solver) for Steps 4, 7, and 10:
  ```
  brew install clingo
  ```
- **ILASP** (Inductive Logic Programming) for Step 6:
  Follow installation instructions on [ilasp.com](https://www.ilasp.com/)

### Data

- Download the ConceptNet assertions dump (`assertions.csv`, ~10 GB) and place
  it in `ConceptNet/`. The file is available at:
  https://github.com/commonsense/conceptnet5/wiki/Downloads

## Running the Pipeline

### Full Pipeline

```bash
cd module_1/scripts
python run_pipeline.py
```

This executes all 10 steps sequentially. Total runtime depends on the number of
objects, LLM speed, and search space.

### Resume from a Specific Step

```bash
python run_pipeline.py --from 5    # Resume from Step 5 (tidy_up ILASP)
python run_pipeline.py --from 8    # Run tool_usage pipeline only
python run_pipeline.py --only 7    # Run only tidy_up evaluation
python run_pipeline.py --only 10   # Run only tool_usage evaluation
```

### Running Steps Individually

```bash
cd shared && python concept_net_extractor.py    # Step 1
cd shared && python filter_objects.py           # Step 2
cd shared && python parsing.py                  # Step 3
cd shared && python apply_constraints.py        # Step 4
```

Steps 2 and 3 support **automatic resume**: if interrupted, they pick up
from where they left off using progress files.

## Pipeline Steps

### Shared Steps (1-4)

These steps are task-agnostic and shared between both tidy_up and tool_usage.

**Step 1: ConceptNet Extraction** (`shared/concept_net_extractor.py`)

Queries the ConceptNet dump to extract objects found in domestic environments.
Uses a two-hop BFS starting from 35 seed rooms via `AtLocation` relations,
then enriches each object with `UsedFor`, `HasProperty`, and `CapableOf` relations.

- **Input**: `ConceptNet/assertions.csv`
- **Output**: `jsons/conceptnet_domestic_subgraph.json` (~1,346 candidate objects)

**Step 2: Semantic Filtering** (`shared/filter_objects.py`)

An LLM filter that classifies each object as KEEP or DISCARD based on whether
it can realistically be found in a home. Processes objects in batches of 30.

- **Input**: `jsons/conceptnet_domestic_subgraph.json`
- **Output**: `jsons/conceptnet_objects_kept.json` (~966 objects)
- **Model**: Llama 3.1 via Ollama

**Step 3: SOMA Annotation** (`shared/parsing.py`)

The core neural component. For each kept object, the LLM assigns three types
of SOMA ontology labels:

| Annotation           | Description                 | Example Values                       |
| -------------------- | --------------------------- | ------------------------------------ |
| `hasPhysicalQuality` | Physical properties         | Rigid, Liquid, Electronic, Sharp     |
| `hasRole`            | Functional role in the home | UtensilRole, ApplianceRole, ToolRole |
| `affordsTask`        | Tasks the object enables    | FoodPreparationTask, CleaningTask    |

- **Input**: `jsons/conceptnet_objects_kept.json`
- **Output**: `rules/shared/background_knowledge.las`
- **Model**: Llama 3.1 with `temperature=0.0`

**Step 4: ASP Validation** (`shared/apply_constraints.py`)

The symbolic component. Runs Clingo with 6 integrity constraints that detect
and remove logically inconsistent annotations.

- **Input**: `rules/shared/background_knowledge.las` + `rules/shared/integrity_constraints.lp`
- **Output**: `rules/shared/background_knowledge_validated.las`

---

### Tidy Up Task (Steps 5-7)

Target predicate: `goesIn(Object, Location)`

**Step 5: ILASP Example Generation** (`tidy_up/generate_ilasp_examples.py`)

Extracts positive examples from ConceptNet `atLocation` edges and generates
negative examples using closed-world heuristics.

- **Output**: `rules/tidy_up/ilasp_tidy_up.las`

**Step 6: LLM Rule Learning** (`tidy_up/llm_rule_induction.py`)

Uses a separate-and-conquer strategy with an LLM proposing candidate rules
and Clingo verifying coverage.

- **Output**: `rules/tidy_up/learned_rules_llm_total.txt`

**Step 7: Online Evaluation** (`tidy_up/evaluate.py`)

Unseen objects from the Robo-CSK benchmark are annotated via LLM, and their
location is deduced by Clingo. Metrics: P@k, R@k, MAP, MRR.

- **Output**: `scripts/tidy_up/evaluation_report.md`

---

### Tool Usage Task (Steps 8-10)

Target predicate: `hasAffordance(Object, Affordance)`

**Step 8: ILASP Example Generation** (`tool_usage_new/generate_examples.py`)

Generates ILASP positives/negatives for `hasAffordance` using ConceptNet as
the primary supervision source and shared validated SOMA BK.

- **Output**: `scripts/tool_usage_new/ilasp_examples/ilasp_tool_usage.las`

**Step 9: LLM Rule Learning** (`tool_usage_new/learn_rules.py`)

Learns `hasAffordance` rules from generated ILASP examples with rule quality
controls and pruning.

- **Output**: `scripts/tool_usage_new/learned_rules.txt`

**Step 10: Evaluation** (`tool_usage_new/evaluate_pipeline.py`)

Evaluates learned rules on generated ILASP examples and reports per-affordance,
macro, and micro metrics (with optional k-fold evaluation).

- **Output**: `scripts/tool_usage_new/reports/evaluation_report.md`

## Output Format

The final background knowledge (`rules/shared/background_knowledge_validated.las`)
is in Prolog/ASP format:

```prolog
% --- knife ---
obj(knife).
hasPhysicalQuality(knife, rigid).
hasPhysicalQuality(knife, sharp).
hasRole(knife, utensilRole).
affordsTask(knife, foodPreparationTask).
```

## Quality Metrics

| Metric                  | Value    |
| ----------------------- | -------- |
| Total objects annotated | 966      |
| Total triples           | 3,496    |
| ASP corrections applied | 40 facts |

For detailed error analysis, see `docs/quality_analysis.md`.
