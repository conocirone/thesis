% ==========================================
% FILE: tidy_up.las
% ==========================================

% --- 0. TYPE DECLARATIONS ---
% var(type) usa predicati nel BK: obj(milk). obj(frying_pan).
obj(milk). obj(frying_pan).

% const(type) usa le direttive #constant — NON fatti nel BK
#constant(room, fridge).
#constant(room, kitchen_cabinet).
#constant(quality, requiresCooling).
#constant(quality, heavy).
#constant(task, drinkingTask).
#constant(task, cookingTask).
#constant(role, cookingToolRole).

% --- 1. BACKGROUND KNOWLEDGE (Generata dal LLM) ---
hasPhysicalQuality(milk, requiresCooling).
affordsTask(milk, drinkingTask).

affordsTask(frying_pan, cookingTask).
hasPhysicalQuality(frying_pan, heavy).
hasRole(frying_pan, cookingToolRole).

% --- 2. TRAINING EXAMPLES (Da ConceptNet) ---
#pos(eg_milk,       { location(milk,       fridge)          }, {}).
#pos(eg_frying_pan, { location(frying_pan, kitchen_cabinet) }, {}).

% --- 3. LANGUAGE BIAS (Lo spazio di ricerca) ---
#modeh(location(var(obj), const(room))).

#modeb(hasPhysicalQuality(var(obj), const(quality))).
#modeb(affordsTask(var(obj), const(task))).
#modeb(hasRole(var(obj), const(role))).