% ============================================================
% Procedural Knowledge Temporal Reasoner
% ============================================================
% Determines whether step_a comes BEFORE step_b in a recipe,
% based on semantic properties extracted by the LLM.
%
% Facts are dynamically asserted before querying:
%   step_a_phase(Phase)         step_b_phase(Phase)
%   step_a_requires_heat(Bool)  step_b_requires_heat(Bool)
%   step_a_is_final(Bool)       step_b_is_final(Bool)
%   step_a_transforms_state(Bool) step_b_transforms_state(Bool)
%   step_a_depends_on_b(Bool)   step_b_depends_on_a(Bool)
%
% Phase is one of:
%   preheating, prep, mixing, marinating, heating, cooking, 
%   assembly, resting, cooling, finishing, serving
% ============================================================

:- dynamic step_a_phase/1, step_b_phase/1.
:- dynamic step_a_requires_heat/1, step_b_requires_heat/1.
:- dynamic step_a_is_final/1, step_b_is_final/1.
:- dynamic step_a_transforms_state/1, step_b_transforms_state/1.
:- dynamic step_a_depends_on_b/1, step_b_depends_on_a/1.
:- dynamic step_a_belongs_to_recipe/1, step_b_belongs_to_recipe/1.

% -----------------------------------------------------------
% Gate: if a step doesn't belong to the recipe, reject ordering
% (used to filter distractor steps from other recipes).
% -----------------------------------------------------------
valid_steps :-
    step_a_belongs_to_recipe(true),
    step_b_belongs_to_recipe(true).

% -----------------------------------------------------------
% Phase ordering hierarchy (more granular cooking phases)
% Lower number = earlier in a typical recipe
% -----------------------------------------------------------
phase_order(preheating, 1).  % Preheating oven, boiling water, preparing pans
phase_order(prep, 2).        % Washing, peeling, chopping, measuring
phase_order(mixing, 3).      % Combining raw ingredients 
phase_order(marinating, 4).  % Soaking, brining, marinating
phase_order(heating, 5).     % Melting butter, heating oil in pan
phase_order(cooking, 6).     % Main cooking: bake, fry, saute, roast, simmer
phase_order(assembly, 7).    % Layering, stuffing, arranging cooked components
phase_order(resting, 8).     % Letting dough rise, meat rest, cool slightly
phase_order(cooling, 9).     % Chilling, refrigerating, freezing
phase_order(finishing, 10).   % Final seasoning, glazing, garnishing, topping
phase_order(serving, 11).    % Plating, serving, presenting

% -----------------------------------------------------------
% Rule 1: Phase-based ordering (strongest signal)
% If the two steps are in different phases, the earlier phase 
% comes first.
% -----------------------------------------------------------
comes_before :-
    valid_steps,
    step_a_phase(PA), step_b_phase(PB),
    phase_order(PA, OA), phase_order(PB, OB),
    OA < OB.

% -----------------------------------------------------------
% Rule 2: Dependency-based ordering
% If step B depends on the output of step A, then A comes first.
% (e.g., "cook pasta" before "mix pasta with sauce")
% -----------------------------------------------------------
comes_before :-
    valid_steps,
    step_b_depends_on_a(true).

% -----------------------------------------------------------
% Rule 3: Reverse dependency check
% If step A depends on step B, then A does NOT come first.
% This is handled by the negation — comes_before will fail, 
% and comes_after (not comes_before) will succeed.
% -----------------------------------------------------------

% -----------------------------------------------------------
% Rule 4: Final step heuristic
% A non-final step always comes before a final step.
% -----------------------------------------------------------
comes_before :-
    valid_steps,
    step_a_is_final(false), step_b_is_final(true).

% -----------------------------------------------------------
% Rule 5: Heat progression
% Within the same phase, a step that doesn't require heat
% comes before one that does (e.g., prep ingredients, then cook).
% -----------------------------------------------------------
comes_before :-
    valid_steps,
    step_a_phase(PA), step_b_phase(PB), PA == PB,
    step_a_requires_heat(false), step_b_requires_heat(true).

% -----------------------------------------------------------
% Rule 6: State transformation
% Within the same phase, a step that doesn't transform state
% comes before one that does (indicates progression).
% -----------------------------------------------------------
comes_before :-
    valid_steps,
    step_a_phase(PA), step_b_phase(PB), PA == PB,
    step_a_transforms_state(false), step_b_transforms_state(true).
