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

% Show only the validated facts and what was removed
#show valid_quality/2.
#show valid_role/2.
#show valid_task/2.
#show removed_quality/2.
#show removed_role/2.
#show removed_task/2.
