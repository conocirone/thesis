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

### 4.4 Residual Errors and Symbolic Validation

Despite prompt improvements, ~10% of annotations still contain errors (e.g., `cookie→Granular`, `faucet→Liquid`, `linoleum→Liquid`). These are addressed by **ASP integrity constraints** that encode logical rules such as:

```prolog
% Toxic objects cannot be consumable or used for food preparation
removed_role(X, consumableRole)      :- hasPhysicalQuality(X, toxic_Hazardous).
removed_task(X, foodPreparationTask) :- hasPhysicalQuality(X, toxic_Hazardous).

% Cooling appliances are not Heated
removed_quality(X, heated)           :- hasRole(X, applianceRole),
                                        affordsTask(X, storageTask),
                                        not affordsTask(X, foodPreparationTask).
```

This represents the **neurosymbolic complementarity**: the neural component (LLM) handles open-ended semantic interpretation, while the symbolic component (ASP) enforces logical coherence.

### 4.5 Model Selection and Performance

| Model              | Pros                                                                        | Cons                                |
| ------------------ | --------------------------------------------------------------------------- | ----------------------------------- |
| **Llama 3.1 (8B)** | Good accuracy after prompt tuning, runs locally via Ollama on Apple Silicon | Slow (~5s/object), no thinking mode |
| **Qwen 2.5 (7B)**  | Potentially faster, supports thinking mode                                  | Not tested extensively              |
| **Qwen 3.5 (4B)**  | Smaller, faster                                                             | Lower accuracy on edge cases        |

Final choice: **Llama 3.1** with temperature=0, as it showed the best accuracy after prompt optimization.

### 4.6 Infrastructure: Batch Processing and Resume

**Problem**: Processing 966 objects one-by-one was fragile — interruptions meant restarting from scratch.

**Solution**: Implemented `parsing_progress.json` for resume capability. After each object is processed, progress is saved. On restart, already-processed objects are skipped automatically.

---

## 5. Final Output

- **Input**: 966 domestic objects with ConceptNet associations
- **Output**: `background_knowledge.las` — Prolog/ASP facts encoding SOMA annotations
- **Format**: `obj(X). hasPhysicalQuality(X, Q). hasRole(X, R). affordsTask(X, T).`
- **Quality**: ~90% accuracy after prompt engineering; remaining errors correctable via ASP constraints

---

## 6. Key Takeaways

1. **Prompt engineering is the most impactful lever** for LLM-based annotation. Micro-definitions with concrete examples reduced errors by 80%.
2. **Codebook design matters**: Ambiguous category names (e.g., `Heated`, `UtensilRole`) directly cause LLM confusion. Renaming in the prompt (without changing the ontology) is an effective mitigation.
3. **Neurosymbolic validation is essential**: Even the best prompt cannot eliminate all LLM errors. ASP integrity constraints provide a principled, transparent, and auditable correction mechanism.
4. **ConceptNet data is noisy**: The LLM must be explicitly instructed to use its own world knowledge as primary truth and treat ConceptNet as secondary hints.
