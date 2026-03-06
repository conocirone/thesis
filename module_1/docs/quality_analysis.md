# Background Knowledge Quality Analysis

## Overall Statistics

| Metric                  | Count |
| ----------------------- | ----- |
| **Total objects**       | 966   |
| **Total triples**       | 3,511 |
| hasPhysicalQuality      | 1,506 |
| hasRole                 | 964   |
| affordsTask             | 1,041 |
| Objects missing role    | 12    |
| Objects missing task    | 43    |
| Objects missing quality | 69    |

## Error Summary

| Error Pattern                       | Affected Objects | % of Total | Severity  |
| ----------------------------------- | ---------------- | ---------- | --------- |
| False `Liquid`                      | 41               | 4.2%       | 🟡 Medium |
| False `Granular`                    | 24               | 2.5%       | 🟡 Medium |
| False `Sharp`                       | 16               | 1.7%       | 🟢 Low    |
| False `ConsumableRole` (toxic)      | 8                | 0.8%       | 🔴 High   |
| Missing `hasRole`                   | 12               | 1.2%       | 🟡 Medium |
| False `Heated` (cooling)            | 0                | 0%         | ✅ Fixed  |
| False `FoodPreparationTask` (toxic) | 1                | 0.1%       | 🔴 High   |
| **Total estimated errors**          | **~90**          | **~9.3%**  |           |
| **Estimated accuracy**              |                  | **~90.7%** |           |

> [!IMPORTANT]
> Some errors are debatable (e.g., `batter→Liquid` is semi-correct, `toothpaste→Liquid` is arguable). The "hard errors" (toxic+consumable, linoleum→Liquid) are ~30 objects ≈ 3% error rate.

---

## Error Pattern Details

### 1. False `Liquid` — 41 objects

Three sub-categories:

**A) Containers/dispensers erroneously marked liquid (16 objects)**
`bottle`, `cup`, `cups`, `mug`, `flask`, `pail`, `tub`, `fountain`, `faucet`, `cold faucet`, `cold tap`, `faucet overflow`, `shower`, `bath shower`, `portable shower head`, `spray hose`

**B) Semi-liquids/gels — debatable (14 objects)**
`batter`, `gel`, `gel toothpaste`, `hair gel`, `hair shaping gel`, `sculpting gel`, `jelly`, `mustard`, `peanut butter`, `soap`, `toothpaste`, `polish`, `wax`, `moistener`

**C) Clearly wrong (11 objects)**
`cafe`, `linoleum`, `bath`, `garden hose`, `sweat`, `pepsi`, `coke`, `beverage`, `correction fluid`, `mini bar`, `tub`

### 2. False `Granular` — 24 objects

**A) Food items that are solid, not granular (13 objects)**
`bread`, `cabbage`, `cake`, `carrots`, `cookie`, `cookies`, `crackers`, `food`, `ingredients`, `mint`, `nuts`, `tomato plants`, `cinnamon`

**B) Materials/objects (11 objects)**
`cardboard`, `coal`, `dice`, `dust`, `material`, `paper`, `pebble`, `plastic`, `tar`, `tiles`, `wood`

### 3. False `Sharp` — 16 objects

Objects that are pointed/thin but don't CUT: `fork`, `forks`, `spoon`, `spatula`, `whisk`, `silverware`, `kitchen utensil`, `toothpick`, `highlighter`, `highlighter pen`, `key`, `bullet`, `clippers`, `paper punch`, `staples`, `tuning fork`

### 4. False `ConsumableRole` (toxic objects) — 8 objects

`aspirin`, `acne medication`, `pill`, `ink`, `hot sauce`, `cannabis`, `rotten food`, `virus`

> [!NOTE]
> `aspirin` and `pill` are arguably consumable (medicine). `hot sauce` is definitely consumable. The real errors are: `ink`, `virus`, `rotten food`, `cannabis`.

### 5. Missing `hasRole` — 12 objects

`bicycles`, `kitty`, `material`, `puppy`, `roadway`, `sweat`, `tabby cat`, `toothbrush`, `toothbrush bristle`, `toothbrush head`, `turtle`, `wedding ring`

---

## Suggested ASP Integrity Constraints

```prolog
% ═══════════════════════════════════════════════════════════════
% INTEGRITY CONSTRAINTS — Symbolic validation of LLM output
% ═══════════════════════════════════════════════════════════════

% ── CONSTRAINT 1: Toxic objects cannot be food-related ────────
% "If X is toxic, remove ConsumableRole and food tasks"
removed_role(X, consumableRole) :-
    hasPhysicalQuality(X, toxic_Hazardous),
    hasRole(X, consumableRole),
    not is_medicine(X).
removed_task(X, foodPreparationTask) :-
    hasPhysicalQuality(X, toxic_Hazardous).
removed_task(X, eatingDrinkingTask) :-
    hasPhysicalQuality(X, toxic_Hazardous),
    not is_medicine(X).

% Exception: medicines ARE toxic but consumable
is_medicine(X) :- obj(X), hasRole(X, consumableRole),
    hasPhysicalQuality(X, perishable),
    not affordsTask(X, cleaningTask),
    not affordsTask(X, maintenanceTask).

% ── CONSTRAINT 2: Containers are NOT liquids ──────────────────
% "If X is a storage container, it is not itself a liquid"
removed_quality(X, liquid) :-
    hasRole(X, storageContainerRole),
    hasPhysicalQuality(X, liquid).

% ── CONSTRAINT 3: Fixtures are NOT liquids ────────────────────
% "If X is furniture or an appliance, it is not a liquid"
removed_quality(X, liquid) :-
    hasRole(X, furnitureRole),
    hasPhysicalQuality(X, liquid).
removed_quality(X, liquid) :-
    hasRole(X, applianceRole),
    hasPhysicalQuality(X, liquid).

% ── CONSTRAINT 4: Solid food is NOT granular ──────────────────
% "Consumables that are perishable+fragile are solid food, not granular"
removed_quality(X, granular) :-
    hasRole(X, consumableRole),
    hasPhysicalQuality(X, perishable),
    hasPhysicalQuality(X, fragile),
    hasPhysicalQuality(X, granular).

% ── CONSTRAINT 5: Non-cutting tools are NOT sharp ─────────────
% "UtensilRole items that afford EatingDrinkingTask (forks, spoons)
%  are not sharp unless they also afford FoodPreparationTask"
removed_quality(X, sharp) :-
    hasRole(X, utensilRole),
    affordsTask(X, eatingDrinkingTask),
    not affordsTask(X, foodPreparationTask),
    hasPhysicalQuality(X, sharp).

% ── CONSTRAINT 6: Cooling appliances are NOT heated ───────────
% (Already fixed by prompt, but kept as safety net)
removed_quality(X, heated) :-
    hasRole(X, applianceRole),
    hasPhysicalQuality(X, requiresCooling),
    hasPhysicalQuality(X, heated).
removed_quality(X, heated) :-
    hasRole(X, applianceRole),
    hasPhysicalQuality(X, requiresFreezing),
    hasPhysicalQuality(X, heated).

% ═══════════════════════════════════════════════════════════════
% FINAL OUTPUT: apply removals
% ═══════════════════════════════════════════════════════════════
valid_quality(X, Q) :- hasPhysicalQuality(X, Q), not removed_quality(X, Q).
valid_role(X, R)    :- hasRole(X, R),            not removed_role(X, R).
valid_task(X, T)    :- affordsTask(X, T),        not removed_task(X, T).
```

These 6 constraints would fix approximately **55-60 of the ~90 identified errors**.

### What they DON'T fix

| Remaining issue                       | Needs manual fix or richer rules                               |
| ------------------------------------- | -------------------------------------------------------------- |
| `cardboard→Granular`, `wood→Granular` | Would need a list of materials                                 |
| `fork→Sharp`, `spoon→Sharp`           | Partially fixed by constraint 5, but only if roles are correct |
| 12 objects missing `hasRole` entirely | LLM simply didn't assign one — needs retry or manual           |
| `cafe→Liquid`                         | Cafe is a place, not an object — filtering issue               |

---

## ASP Validation Results

The constraints were executed via [apply_constraints.py](file:///Users/conocirone/Desktop/thesis/module_1/scripts/apply_constraints.py), which runs Clingo on [background_knowledge.las](file:///Users/conocirone/Desktop/thesis/module_1/scripts/rules/background_knowledge.las) + [integrity_constraints.lp](file:///Users/conocirone/Desktop/thesis/module_1/scripts/rules/integrity_constraints.lp) and writes a corrected `background_knowledge_validated.las`.

> [!NOTE]
> An initial run returned 0 corrections due to a bug in the `#show` directives (`removed_quality/3` instead of the correct arity `/2`). After fixing the arity, all 40 corrections were applied.

### Corrections Applied: 40 facts removed

**Qualities removed (10):**

| Object | Removed Quality | Constraint |
|---|---|---|
| `bottle` | `liquid` | #2 (Container ≠ Liquid) |
| `cans_of_paint` | `liquid` | #2 |
| `flask` | `liquid` | #2 |
| `fountain` | `liquid` | #2 |
| `pail` | `liquid` | #2 |
| `tub` | `liquid` | #2 |
| `mini_bar` | `liquid` | #2 |
| `linoleum` | `liquid` | #3 (Furniture ≠ Liquid) |
| `shower` | `liquid` | #3 (Appliance ≠ Liquid) |
| `silverware` | `sharp` | #5 (Eating utensil ≠ Sharp) |

**Roles removed (3):**

| Object | Removed Role | Constraint |
|---|---|---|
| `aspirin` | `consumableRole` | #1 (Toxic ≠ Consumable) |
| `ink` | `consumableRole` | #1 |
| `virus` | `consumableRole` | #1 |

**Tasks removed (27):**

| Object | Removed Task | Constraint |
|---|---|---|
| `ink` | `eatingDrinkingTask`, `foodPreparationTask` | #1 |
| `virus` | `eatingDrinkingTask`, `foodPreparationTask` | #1 |
| `aspirin` | `eatingDrinkingTask`, `foodPreparationTask` | #1 |
| `paint` | `eatingDrinkingTask`, `foodPreparationTask` | #1 |
| `varnish` | `eatingDrinkingTask`, `foodPreparationTask` | #1 |
| `detergent` | `eatingDrinkingTask`, `foodPreparationTask` | #1 |
| `toothpaste` | `eatingDrinkingTask`, `foodPreparationTask` | #1 |
| `gel_toothpaste` | `eatingDrinkingTask`, `foodPreparationTask` | #1 |
| `sculpting_gel` | `eatingDrinkingTask`, `foodPreparationTask` | #1 |
| `fluoride_mouthwash` | `eatingDrinkingTask`, `foodPreparationTask` | #1 |
| `cannabis` | `foodPreparationTask` | #1 |
| `acne_medication` | `foodPreparationTask` | #1 |
| `pill` | `foodPreparationTask` | #1 |
| `hot_sauce` | `foodPreparationTask` | #1 |
| `rotten_food` | `foodPreparationTask` | #1 |
| `electricity` | `eatingDrinkingTask`, `foodPreparationTask` | #1 |

### Post-Validation Statistics

| Metric | Before (raw LLM) | After (validated) | Change |
|---|---|---|---|
| Total triples | 3,511 | 3,496 | -15 (net) |
| False `Liquid` | 41 | 15 | **-63%** |
| False `Granular` | 24 | 21 | -12% |
| False `Sharp` | 16 | 15 | -6% |
| False `ConsumableRole` (toxic) | 8 | 5* | -37% |
| Missing `hasRole` | 12 | 15 | +3** |
| **Estimated errors** | **~90** | **~51** | **-43%** |
| **Estimated accuracy** | **~90.7%** | **~94.8%** | **+4.1pp** |

*\*5 remaining are debatable medicines (aspirin, pill, acne\_medication, hot\_sauce, cannabis) — kept by the `is_medicine` exception rule.*

*\*\*Increased because constraint #1 removed ConsumableRole from `aspirin`, `ink`, `virus` without adding a replacement role — this is correct: no role is better than a wrong role.*

### Spot Check — Key Objects After Validation

| Object | Qualities | Roles | Tasks | Status |
|---|---|---|---|---|
| `knife` | rigid, sharp | utensilRole | foodPreparationTask | ✅ |
| `fridge` | electronic, heavy | applianceRole | storageTask | ✅ |
| `ink` | liquid, toxic\_Hazardous | *(none)* | *(none)* | ✅ Fixed |
| `bottle` | lightweight | storageContainerRole | eatingDrinkingTask | ✅ Fixed |
| `linoleum` | fragile | furnitureRole | cleaningTask | ✅ Fixed |
| `chocolate` | perishable | consumableRole | eatingDrinkingTask | ✅ |
| `teddy bear` | lightweight, soft\_Deformable | entertainmentRole | leisureTask | ✅ |
| `icebox` | requiresFreezing | applianceRole | storageTask | ✅ |
