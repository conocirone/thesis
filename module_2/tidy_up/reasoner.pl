% reasoner.pl — Tidy-Up symbolic reasoner
%
% Architecture mirrors the tool_usage reasoner, adapted for object placement:
% instead of "affordance → tool", this reasons "object → location type".
%
% All facts are asserted dynamically by Python:
%   candidate(location_name)               — a candidate location in the current question
%   has_location(location_name, canonical) — location's canonical type (from LOCATION_MAP)
%   kb_confirmed(location_name, canonical) — canonical is KB-confirmed for this object
%   required_canonical(canonical)          — the canonical location type inferred for the object

:- dynamic candidate/1.
:- dynamic has_location/2.
:- dynamic kb_confirmed/2.
:- dynamic required_canonical/1.

% --- Selection rules ---------------------------------------------------------
%
% Priority 1: A candidate whose canonical type is KB-confirmed.
% Priority 2: A candidate whose canonical type matches the required canonical.
% If neither applies, output nothing (Python falls back to LLM).

% Collect all candidates whose mapped canonical matches the required one.
matching_candidates(Matches) :-
    required_canonical(Canon),
    findall(C, (candidate(C), has_location(C, Canon)), Matches).

% Collect only the KB-confirmed subset.
kb_confirmed_candidates(Canon, KBMatches) :-
    findall(C, (candidate(C), has_location(C, Canon), kb_confirmed(C, Canon)), KBMatches).

% Select the best single candidate:
%   - If exactly one KB-confirmed match exists, choose it.
%   - Else if exactly one match (any source) exists, choose it.
%   - If multiple matches, output 'ambiguous' for Python-side disambiguation.
%   - If no match, output 'none'.

select_location :-
    required_canonical(Canon),
    kb_confirmed_candidates(Canon, KBMatches),
    length(KBMatches, 1),
    KBMatches = [Best],
    !,
    write('SELECTED='), write(Best), nl,
    write('CONFIDENCE=kb_unique'), nl.

select_location :-
    matching_candidates(Matches),
    length(Matches, 1),
    Matches = [Best],
    !,
    write('SELECTED='), write(Best), nl,
    write('CONFIDENCE=unique'), nl.

select_location :-
    matching_candidates([]),
    !,
    write('SELECTED=none'), nl,
    write('CONFIDENCE=no_match'), nl.

select_location :-
    matching_candidates(Matches),
    length(Matches, N), N > 1,
    write('SELECTED=ambiguous'), nl,
    write('AMBIGUOUS_SET='), write(Matches), nl,
    required_canonical(Canon),
    kb_confirmed_candidates(Canon, KBMatches),
    write('KB_CONFIRMED_SET='), write(KBMatches), nl,
    write('CONFIDENCE=ambiguous'), nl.

% Entry point
run :-
    select_location,
    halt.
