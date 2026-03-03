% ==========================================
% FILE: tidy_up.las
% ==========================================

% --- 1. BACKGROUND KNOWLEDGE (Generata dal tuo LLM) ---
hasPhysicalQuality(milk, requiresCooling).
affordsTask(milk, drinkingTask).

affordsTask(frying_pan, cookingTask).
hasPhysicalQuality(frying_pan, heavy).
hasRole(frying_pan, cookingToolRole).

% --- 2. TRAINING EXAMPLES (Da ConceptNet) ---
% Diciamo a ILASP: "Questi sono i fatti che DEVI riuscire a dedurre"
#pos(eg_milk, { location(milk, fridge) }, {}).
#pos(eg_frying_pan, { location(frying_pan, kitchen_cabinet) }, {}).

% --- 3. LANGUAGE BIAS (Lo spazio di ricerca) ---
% #modeh: La "Testa" della regola (Head). Cosa stiamo cercando di dedurre?
% Diciamo a ILASP che può creare regole la cui conclusione è la location.
#modeh(location(var(obj), const(room))).

% #modeb: Il "Corpo" della regola (Body). Quali condizioni può usare?
% Diciamo a ILASP che può usare le proprietà SOMA estratte dall'LLM.
#modeb(hasPhysicalQuality(var(obj), const(quality))).
#modeb(affordsTask(var(obj), const(task))).
#modeb(hasRole(var(obj), const(role))).

% Parametri di ricerca: limitiamo la lunghezza massima delle regole per efficienza
#max_penalty(10).