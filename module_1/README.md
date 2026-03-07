# Module 1 -- Background Knowledge Generation

This module generates a Prolog/ASP knowledge base from ConceptNet data,
annotated with the SOMA (Socio-physical Model of Activities) ontology.
The pipeline follows a **neurosymbolic approach**: an LLM (neural component)
performs semantic annotation, and ASP integrity constraints (symbolic component)
validate and correct the output.

## Directory Structure

```
module_1/
├── README.md                          # This file
├── ConceptNet/                        # Raw ConceptNet data (not versioned)
│   ├── assertions.csv                 # Full ConceptNet dump (~10 GB)
│   └── domestic_relations.parquet     # Filtered Parquet cache (auto-generated)
├── SOMA/                              # SOMA ontology reference
│   └── OWLs/
│       ├── SOMA.owl                   # Base SOMA ontology
│       └── SOMA-HOME.owl              # Home-specific extension
├── scripts/                           # Pipeline scripts
│   ├── run_pipeline.py                # Pipeline orchestrator (runs all steps)
│   ├── concept_net_extractor.py       # Step 1: ConceptNet extraction
│   ├── filter_objects.py              # Step 2: LLM-based object filtering
│   ├── parsing.py                     # Step 3: LLM-based SOMA annotation
│   ├── apply_constraints.py           # Step 4: ASP symbolic validation
│   ├── jsons/                         # Intermediate JSON files
│   │   ├── conceptnet_domestic_subgraph.json   # Step 1 output
│   │   ├── conceptnet_objects_kept.json        # Step 2 output (kept)
│   │   └── conceptnet_objects_rejected.json    # Step 2 output (rejected)
│   └── rules/                         # Logic programming files
│       ├── background_knowledge.las            # Step 3 output (raw LLM)
│       ├── integrity_constraints.lp            # ASP validation rules
│       └── background_knowledge_validated.las  # Step 4 output (final)
└── docs/                              # Documentation and analysis
    ├── module1_development_report.md  # Full development process report
    ├── quality_analysis.md            # Detailed error analysis and metrics
    └── soma_analysis.md               # SOMA ontology codebook analysis
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
- **Clingo** (ASP solver) for Step 4:
  ```
  brew install clingo
  ```

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

This executes all 4 steps sequentially. Total runtime depends on the number of
objects and LLM speed.

### Resume from a Specific Step

```bash
python run_pipeline.py --from 3    # Resume from Step 3 (annotation)
python run_pipeline.py --only 4    # Run only Step 4 (ASP validation)
```

### Running Steps Individually

```bash
python concept_net_extractor.py    # Step 1
python filter_objects.py           # Step 2
python parsing.py                  # Step 3
python apply_constraints.py        # Step 4
```

Steps 2 and 3 support **automatic resume**: if interrupted, they pick up
from where they left off using progress files.

## Pipeline Steps

### Step 1: ConceptNet Extraction (`concept_net_extractor.py`)

Queries the ConceptNet dump to extract objects found in domestic environments.
Uses a two-hop BFS starting from 35 seed rooms (kitchen, bedroom, bathroom, etc.)
via `AtLocation` relations, then enriches each object with `UsedFor`,
`HasProperty`, and `CapableOf` relations.

- **Input**: `ConceptNet/assertions.csv`
- **Output**: `jsons/conceptnet_domestic_subgraph.json` (~1,346 candidate objects)

### Step 2: Semantic Filtering (`filter_objects.py`)

An LLM filter that classifies each object as KEEP or DISCARD based on whether
it can realistically be found in a home. Processes objects in batches of 30.

- **Input**: `jsons/conceptnet_domestic_subgraph.json`
- **Output**: `jsons/conceptnet_objects_kept.json` (~966 objects)
- **Model**: Llama 3.1 via Ollama

### Step 3: SOMA Annotation (`parsing.py`)

The core neural component. For each kept object, the LLM assigns three types
of SOMA ontology labels:

| Annotation           | Description                 | Example Values                       |
| -------------------- | --------------------------- | ------------------------------------ |
| `hasPhysicalQuality` | Physical properties         | Rigid, Liquid, Electronic, Sharp     |
| `hasRole`            | Functional role in the home | UtensilRole, ApplianceRole, ToolRole |
| `affordsTask`        | Tasks the object enables    | FoodPreparationTask, CleaningTask    |

- **Input**: `jsons/conceptnet_objects_kept.json`
- **Output**: `rules/background_knowledge.las`
- **Model**: Llama 3.1 with `temperature=0.0`

The prompt includes micro-definitions for each codebook value, 8 few-shot
examples, and explicit negative constraints to prevent common LLM errors.

### Step 4: ASP Validation (`apply_constraints.py`)

The symbolic component. Runs Clingo with 6 integrity constraints that detect
and remove logically inconsistent annotations:

| Constraint | Rule                                            | Example Correction         |
| ---------- | ----------------------------------------------- | -------------------------- |
| #1         | Toxic objects cannot be consumable              | ink: remove ConsumableRole |
| #2         | Containers are not liquids                      | bottle: remove Liquid      |
| #3         | Furniture/appliances are not liquids            | linoleum: remove Liquid    |
| #4         | Perishable+fragile food is not granular         | —                          |
| #5         | Eating utensils without food prep are not sharp | silverware: remove Sharp   |
| #6         | Cooling appliances are not heated               | fridge: remove Heated      |

- **Input**: `rules/background_knowledge.las` + `rules/integrity_constraints.lp`
- **Output**: `rules/background_knowledge_validated.las`

## Output Format

The final output (`background_knowledge_validated.las`) is in Prolog/ASP format:

```prolog
% --- knife ---
obj(knife).
hasPhysicalQuality(knife, rigid).
hasPhysicalQuality(knife, sharp).
hasRole(knife, utensilRole).
affordsTask(knife, foodPreparationTask).
```

## Quality Metrics

| Metric                         | Value    |
| ------------------------------ | -------- |
| Total objects annotated        | 966      |
| Total triples                  | 3,496    |
| ASP corrections applied        | 40 facts |

For detailed error analysis, see `docs/quality_analysis.md`.
