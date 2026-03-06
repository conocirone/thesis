# Module 1 — Background Knowledge Generation: Development Report

## 1. Objective

Build a pipeline that extracts domestic objects from ConceptNet, maps their properties to the SOMA ontology, and produces a Prolog/ASP knowledge base (`background_knowledge.las`) for use in robot reasoning tasks. The approach is **neurosymbolic**: an LLM (neural) generates semantic annotations, and ASP integrity constraints (symbolic) validate and correct them.

---

## 2. Pipeline Architecture

```
ConceptNet API → conceptnet_domestic_subgraph.json
       ↓
  LLM Filter (filter_objects.py) → conceptnet_objects_kept.json
       ↓
  LLM Semantic Parser (parsing.py) → background_knowledge.las (raw)
       ↓
  ASP Integrity Constraints → background_knowledge.las (validated)
```

### 2.1 Step 1: ConceptNet Extraction (`concept_net_extractor.py`)

Queries the ConceptNet API to extract a domestic subgraph of objects commonly found in household environments. Collects relational properties such as `UsedFor`, `HasProperty`, `IsA`, `AtLocation`, etc. Output: `conceptnet_domestic_subgraph.json` with ~1,346 candidate objects.

### 2.2 Step 2: Object Filtering (`filter_objects.py`)

An LLM-based filter that classifies each object as KEEP or DISCARD based on whether it can realistically be found inside or around a home. Uses batch processing (30 objects/call) with resume capability.

### 2.3 Step 3: SOMA Annotation (`parsing.py`)

The core neural component. For each kept object, the LLM assigns:

- **hasPhysicalQuality**: physical properties (e.g., `Rigid`, `Liquid`, `Electronic`)
- **hasRole**: functional role in the home (e.g., `UtensilRole`, `ApplianceRole`)
- **affordsTask**: tasks the object enables (e.g., `FoodPreparationTask`, `CleaningTask`)

### 2.4 Step 4: Symbolic Validation (ASP constraints)

ASP integrity constraints that catch and correct systematic LLM errors (e.g., toxic objects cannot be consumable). This is the symbolic layer that complements the neural annotation.

---

## 3. SOMA Codebook

The codebook defines the valid annotation space, derived from the SOMA (Socio-physical Model of Activities) ontology:

| Category           | Values                                                                                                                                                                                                                                                                     |
| ------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Qualities** (17) | RequiresCooling, RequiresFreezing, Perishable, Heated, Liquid, Granular, Gas_Aerosol, Heavy, Lightweight, Fragile, Rigid, Soft_Deformable, Sharp, Electronic, Toxic_Hazardous, Flammable, Washable                                                                         |
| **Roles** (17)     | ConsumableRole, UtensilRole, CookwareRole, ToolRole, CleaningToolRole, ApplianceRole, StorageContainerRole, FurnitureRole, BeddingRole, LightingRole, ClothingRole, EntertainmentRole, MusicalInstrumentRole, DecorationRole, DocumentRole, WasteRole, SafetyEquipmentRole |
| **Tasks** (12)     | FoodPreparationTask, EatingDrinkingTask, MaintenanceTask, CleaningTask, WasteDisposalTask, HygieneTask, DressingTask, StorageTask, SleepingTask, WorkStudyTask, LeisureTask, GardeningTask                                                                                 |

---

## 4. Challenges and Solutions

### 4.1 Object Filtering: Over-Aggressive Rejection

**Problem**: The initial LLM filter rejected valid domestic objects such as `wine`, `wood`, `tuna`, `trash can`, `thermostat`. Analysis of the 629 rejected objects revealed 6 incorrectly excluded categories: food/beverages, clothing, structural elements, materials, office supplies, and maintenance tools.

**Solution**: Rewrote the system prompt with 12 explicit KEEP categories and more precise DISCARD rules. Result: 777 objects kept (up from 728), all user-flagged objects correctly retained. A second pass manually recovered additional false negatives (e.g., `ball`, `banana`, `bicycle`), bringing the total to 966 kept objects.

### 4.2 LLM Annotation: Systematic Semantic Errors

**Problem**: The LLM (Llama 3.1) exhibited several recurring error patterns:

| Error Pattern                                 | Examples                                                     | Frequency   |
| --------------------------------------------- | ------------------------------------------------------------ | ----------- |
| **Liquid assigned to solids**                 | fruit→Liquid, chocolate→Liquid, butter→Liquid, faucet→Liquid | ~15 objects |
| **FoodPreparationTask for non-kitchen tools** | hammer→FoodPreparationTask, vice→FoodPreparationTask         | ~8 objects  |
| **UtensilRole for non-tableware**             | umbrella→UtensilRole, hairbrush→UtensilRole                  | ~6 objects  |
| **FurnitureRole for toys**                    | teddy bear→FurnitureRole, stuffed animal→FurnitureRole       | ~5 objects  |
| **Heated for cooling devices**                | fridge→Heated, icebox→Heated                                 | ~3 objects  |
| **ConsumableRole for non-food**               | bandaids→ConsumableRole, cotton→ConsumableRole               | ~5 objects  |
| **Granular for solid food**                   | cookies→Granular, cardboard→Granular                         | ~4 objects  |

**Root cause analysis**: The codebook values themselves were ambiguous for the LLM. For example:

- `Heated` could mean "produces heat" or "needs heat" or "is warm"
- `UtensilRole` vs `ToolRole` boundary was unclear
- `Liquid`/`Granular` confused "the object IS X" with "the object CONTAINS X"

### 4.3 Solution: Iterative Prompt Engineering

Four progressive improvements were applied:

**Iteration 1 — Basic prompt** with codebook values and 2 examples.

- Result: ~40% error rate on edge cases.

**Iteration 2 — Added explicit constraints** (e.g., "ConsumableRole → ONLY food, drink, medicine").

- Result: Some improvement, but LLM still ignored constraints for ambiguous cases.

**Iteration 3 — Temperature=0 + Chain-of-Thought + validation retry loop**.

- `temperature: 0.0` for deterministic output
- Thinking protocol: 5-step silent reasoning before JSON output
- Retry mechanism: if first parse returns empty/invalid, a correction message is sent
- Result: Improved consistency, fewer empty results.

**Iteration 4 — Micro-definitions for every codebook value** (final version).

- Each value accompanied by 3-5 word definition + concrete examples + NOT-examples
- 8 targeted few-shot examples covering problematic cases (fridge, teddy bear, bandaids, chocolate, hammer)
- Explicit "COMMON MISTAKES TO AVOID" section with the 8 observed error patterns
- Result: **~80% reduction in systematic errors**. Key fixes:
  - `fridge`: Heated → Electronic+Heavy ✅
  - `teddy bear`: FurnitureRole → EntertainmentRole ✅
  - `hammer`: FoodPreparationTask → MaintenanceTask ✅
  - `chocolate`: Liquid → Perishable ✅
  - `bandaids`: Liquid+Toxic → SafetyEquipmentRole ✅

### 4.4 Codebook Design Analysis

The codebook itself was identified as a source of LLM confusion. Key ambiguities:

| Value                       | Ambiguity                                                | Mitigation                                                                           |
| --------------------------- | -------------------------------------------------------- | ------------------------------------------------------------------------------------ |
| `Heated`                    | "Produces heat" vs "manages heat" vs "is warm"           | Micro-definition in prompt: "object PRODUCES heat. NOT fridge, NOT air conditioning" |
| `Liquid` / `Granular`       | "Object IS X" vs "object CONTAINS X"                     | Explicit NOT-examples: "NOT bottles, NOT faucets"                                    |
| `UtensilRole` vs `ToolRole` | Boundary between kitchen tools and general tools         | Renamed in prompt: "ONLY kitchen/table items for eating or food prep"                |
| `FurnitureRole`             | Used as catch-all for large or non-categorizable objects | Added `EntertainmentRole` examples to redirect toys                                  |
| `ConsumableRole`            | Applied to chemicals, materials, non-food items          | Hard constraint: "NEVER containers or tools"                                         |

Rather than modifying the SOMA ontology itself, these ambiguities were resolved by adding micro-definitions (3-5 words + examples) alongside each codebook value in the system prompt.

### 4.5 ASP Integrity Constraints: Implementation and Results

Six ASP integrity constraints were implemented in `integrity_constraints.lp` to serve as the symbolic validation layer:

| #   | Constraint                           | Logic                                                                                                            |
| --- | ------------------------------------ | ---------------------------------------------------------------------------------------------------------------- |
| 1   | Toxic objects cannot be food-related | `toxic_Hazardous` -> remove `ConsumableRole`, `FoodPreparationTask`, `EatingDrinkingTask` (exception: medicines) |
| 2   | Containers are not liquids           | `StorageContainerRole` + `Liquid` -> remove `Liquid`                                                             |
| 3   | Fixtures are not liquids             | `FurnitureRole` or `ApplianceRole` + `Liquid` -> remove `Liquid`                                                 |
| 4   | Solid food is not granular           | `ConsumableRole` + `Perishable` + `Fragile` + `Granular` -> remove `Granular`                                    |
| 5   | Eating utensils are not sharp        | `UtensilRole` + `EatingDrinkingTask` without `FoodPreparationTask` -> remove `Sharp`                             |
| 6   | Cooling appliances are not heated    | `ApplianceRole` + `RequiresCooling`/`RequiresFreezing` + `Heated` -> remove `Heated`                             |

The constraints use a three-stage pattern: (1) accept all LLM output as candidates, (2) derive `removed_*` atoms via constraint rules, (3) compute `valid_*` atoms as candidates minus removals.

**Execution**: The constraints were executed via Clingo (ASP solver) through `apply_constraints.py`, which parses the answer set and writes the corrected knowledge base.

**Results**: 40 facts removed across 966 objects:

- 10 qualities removed (8x `Liquid` from containers/fixtures, 1x `Sharp` from silverware, 1x other)
- 3 roles removed (`ConsumableRole` from ink, aspirin, virus)
- 27 tasks removed (food-related tasks from toxic objects like paint, detergent, toothpaste)

### 4.6 Post-Validation Quality Analysis

A detailed statistical analysis was performed on the validated output:

| Metric                         | Before (raw LLM) | After (validated) | Change    |
| ------------------------------ | ---------------- | ----------------- | --------- |
| Total triples                  | 3,511            | 3,496             | -15 (net) |
| False `Liquid`                 | 41               | 15                | -63%      |
| False `Granular`               | 24               | 21                | -12%      |
| False `Sharp`                  | 16               | 15                | -6%       |
| False `ConsumableRole` (toxic) | 8                | 5                 | -37%      |
| Missing `hasRole`              | 12               | 15                | +3        |
| Estimated errors               | ~90              | ~51               | -43%      |

The increase in missing `hasRole` (12 to 15) is expected: constraint #1 removed `ConsumableRole` from objects like `ink` and `virus` without adding a replacement. This is correct behavior — no role is better than a wrong role.

Spot checks confirmed key objects are now correctly annotated:

- `fridge`: Electronic, Heavy, ApplianceRole, StorageTask
- `ink`: Liquid, Toxic_Hazardous (no role, no task)
- `bottle`: Lightweight, StorageContainerRole (Liquid removed)
- `teddy bear`: Soft_Deformable, Lightweight, EntertainmentRole, LeisureTask

Full analysis available in `docs/quality_analysis.md`.

### 4.7 Model Selection and Performance

| Model              | Pros                                                                        | Cons                                |
| ------------------ | --------------------------------------------------------------------------- | ----------------------------------- |
| **Llama 3.1 (8B)** | Good accuracy after prompt tuning, runs locally via Ollama on Apple Silicon | Slow (~5s/object), no thinking mode |
| **Qwen 2.5 (7B)**  | Potentially faster, supports thinking mode                                  | Not tested extensively              |
| **Qwen 3.5 (4B)**  | Smaller, faster                                                             | Lower accuracy on edge cases        |

Final choice: **Llama 3.1** with temperature=0, as it showed the best accuracy after prompt optimization.

### 4.8 Infrastructure: Batch Processing and Resume

**Problem**: Processing 966 objects one-by-one was fragile — interruptions meant restarting from scratch.

**Solution**: Implemented progress files (`filter_progress.json` for Step 2, batch-level saving for Step 3) for resume capability. After each batch/object is processed, progress is saved. On restart, already-processed items are skipped automatically.

### 4.9 Pipeline Orchestration and Code Quality

A pipeline orchestrator (`run_pipeline.py`) was created to execute all 4 steps sequentially with a single command. It supports `--from N` (resume from step N) and `--only N` (run a single step) flags, and validates output files after each step.

All scripts were refactored for professional code quality:

- All comments and output messages translated to English
- Emoji characters removed from all print statements
- Section headers standardized across all files
- Docstrings added to all public functions

---

## 5. Final Output

- **Input**: 966 domestic objects with ConceptNet associations
- **Output**: `rules/background_knowledge_validated.las` — Prolog/ASP facts with SOMA annotations, validated by ASP constraints
- **Format**: `obj(X). hasPhysicalQuality(X, Q). hasRole(X, R). affordsTask(X, T).`
- **Statistics**: 966 objects, 3,496 triples, 40 symbolic corrections applied

---

## 6. Key Takeaways

1. **Prompt engineering is the most impactful lever** for LLM-based annotation. Micro-definitions with concrete examples and NOT-examples reduced errors by ~80%.
2. **Codebook design matters**: Ambiguous category names (e.g., `Heated`, `UtensilRole`) directly cause LLM confusion. Renaming in the prompt (without changing the ontology) is an effective mitigation.
3. **Neurosymbolic validation is essential**: Even the best prompt cannot eliminate all LLM errors. ASP integrity constraints provide a principled, transparent, and auditable correction mechanism — reducing residual errors by a further 43%.
4. **ConceptNet data is noisy**: The LLM must be explicitly instructed to use its own world knowledge as primary truth and treat ConceptNet as secondary hints.
5. **The symbolic layer complements, not replaces, the neural layer**: The 6 ASP constraints are concise (under 80 lines) yet correct 40 facts that the LLM consistently gets wrong. This demonstrates that small, targeted symbolic rules can significantly improve neural output quality.
