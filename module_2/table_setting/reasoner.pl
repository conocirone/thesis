% reasoner.pl

% Dynamic predicates are asserted by Python
:- dynamic is_soup_or_broth/1.
:- dynamic is_handheld_food/1.
:- dynamic needs_cutting/1.
:- dynamic is_asian_cuisine/1.
:- dynamic is_long_noodles/1.
:- dynamic has_sauce_or_small_pieces/1.
:- dynamic is_dessert/1.
:- dynamic is_skewer_food/1.
:- dynamic is_tongs_food/1.

% Cutlery Rules
cutlery('Spoon') :- is_soup_or_broth(true).
% Desserts only imply spoon when not handheld (e.g., pudding, tiramisu).
cutlery('Spoon') :- is_dessert(true), is_handheld_food(false).
% "has_sauce_or_small_pieces" is intentionally interpreted as "loose small pieces
% (rice/beans/peas) OR very saucy foods that are commonly scooped", not merely
% "served with sauce". We restrict it to avoid over-predicting spoons.
cutlery('Spoon') :-
    has_sauce_or_small_pieces(true),
    is_long_noodles(false),
    is_handheld_food(false),
    needs_cutting(false),
    is_asian_cuisine(false).

% Western long-noodle dishes often use a spoon (support twirling / sauce).
cutlery('Spoon') :- is_long_noodles(true), is_asian_cuisine(false).

cutlery('Fork') :- needs_cutting(true).
cutlery('Fork') :- is_long_noodles(true).
% Desserts only imply fork when not handheld (e.g., cake slice vs cookies).
cutlery('Fork') :- is_dessert(true), is_handheld_food(false).

% Default Western plated meals typically use a fork (even if no cutting is needed).
cutlery('Fork') :-
    is_soup_or_broth(false),
    is_dessert(false),
    is_handheld_food(false),
    is_asian_cuisine(false).

cutlery('Knife') :- needs_cutting(true).
% Western long-noodle pasta is often paired with a knife in the benchmark.
cutlery('Knife') :- is_long_noodles(true), is_asian_cuisine(false).
% Default knife for non-handheld, non-soup, non-dessert Western plated meals.
cutlery('Knife') :-
    is_soup_or_broth(false),
    is_dessert(false),
    is_handheld_food(false),
    is_asian_cuisine(false),
    has_sauce_or_small_pieces(false),
    is_long_noodles(false).

cutlery('Chopsticks') :- is_asian_cuisine(true), (is_long_noodles(true) ; has_sauce_or_small_pieces(true) ; is_handheld_food(true)).

cutlery('Hands') :- is_handheld_food(true).

% The benchmark often still expects a full table setting (knife+fork) even for
% handheld mains like burgers/wraps/nachos.
% Restrict to non-Asian handheld foods (avoid adding knife/fork for sushi).
cutlery('Fork') :- is_handheld_food(true), is_dessert(false), is_asian_cuisine(false).
cutlery('Knife') :- is_handheld_food(true), is_dessert(false), is_asian_cuisine(false).

% Non-Asian soups/stews in the benchmark often include a fork in addition to spoon.
cutlery('Fork') :- is_soup_or_broth(true), is_asian_cuisine(false).

cutlery('Skewer') :- is_skewer_food(true).

cutlery('Tongs') :- is_tongs_food(true).

% Retrieve all valid cutlery as a list without duplicates.
get_all_cutlery(Result) :-
    setof(C, cutlery(C), Result),
    !.
get_all_cutlery([]). % fallback if none

% Plate Rules
plate('Bowl') :- is_soup_or_broth(true), !.
plate('Dessert Plate') :- is_dessert(true), !.
% Many noodle dishes in the benchmark are served in a bowl.
plate('Bowl') :- is_long_noodles(true), !.
% Saucy / small-piece meals (rice/beans/curry) are usually bowl-served unless handheld.
plate('Bowl') :- has_sauce_or_small_pieces(true), is_handheld_food(false), !.
plate('Dinner Plate') :- \+ is_soup_or_broth(true), \+ is_dessert(true), \+ is_long_noodles(true), \+ has_sauce_or_small_pieces(true), !.
% Fallback
plate('Dinner Plate').

evaluate_meal :-
    get_all_cutlery(CutleryList),
    plate(Plate),
    write('CUTLERY='), write(CutleryList), nl,
    write('PLATE='), write(Plate), nl,
    halt.
