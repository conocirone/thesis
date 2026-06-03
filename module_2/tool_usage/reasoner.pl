% reasoner.pl — Tool Usage symbolic reasoner
%
% All facts are asserted dynamically by Python:
%   candidate(tool_name)                   — a candidate tool in the current question
%   has_affordance(tool_name, affordance)  — tool's affordance from the KB
%   cn_confirmed(tool_name, affordance)    — affordance is ConceptNet-confirmed
%   required_affordance(affordance)        — the affordance needed for the task

:- dynamic candidate/1.
:- dynamic has_affordance/2.
:- dynamic cn_confirmed/2.
:- dynamic required_affordance/1.

% --- Selection rules ---------------------------------------------------------
%
% Priority 1: A candidate that has the required affordance AND it is CN-confirmed.
% Priority 2: A candidate that has the required affordance.
% If neither applies, we output nothing (Python falls back to LLM).

% Collect all candidates with the required affordance into a list.
matching_candidates(Matches) :-
    required_affordance(Aff),
    findall(T, (candidate(T), has_affordance(T, Aff)), Matches).

% Collect only the CN-confirmed subset of matches.
cn_confirmed_candidates(Aff, CNMatches) :-
    findall(T, (candidate(T), has_affordance(T, Aff), cn_confirmed(T, Aff)), CNMatches).

% Select the best single tool:
%   - If there is exactly one CN-confirmed match, choose it.
%   - Otherwise, if there is exactly one match (regardless of source), choose it.
%   - If multiple matches, output all of them for Python-side disambiguation.
%   - If no match, output 'none'.

select_tool :-
    required_affordance(Aff),
    cn_confirmed_candidates(Aff, CNMatches),
    length(CNMatches, 1),
    CNMatches = [Best],
    !,
    write('SELECTED='), write(Best), nl,
    write('CONFIDENCE=cn_unique'), nl.

select_tool :-
    matching_candidates(Matches),
    length(Matches, 1),
    Matches = [Best],
    !,
    write('SELECTED='), write(Best), nl,
    write('CONFIDENCE=unique'), nl.

select_tool :-
    matching_candidates([]),
    !,
    write('SELECTED=none'), nl,
    write('CONFIDENCE=no_match'), nl.

select_tool :-
    matching_candidates(Matches),
    length(Matches, N), N > 1,
    write('SELECTED=ambiguous'), nl,
    write('AMBIGUOUS_SET='), write(Matches), nl,
    required_affordance(Aff),
    cn_confirmed_candidates(Aff, CNMatches),
    write('CN_CONFIRMED_SET='), write(CNMatches), nl,
    write('CONFIDENCE=ambiguous'), nl.

% Entry point
run :-
    select_tool,
    halt.
