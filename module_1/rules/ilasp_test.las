#maxv(1).
#constant(location, kitchen).
#constant(location, bedroom).
#constant(role, utensilRole).
#constant(role, clothingRole).
#constant(task, foodPreparationTask).

hasRole(knife, utensilRole).
affordsTask(knife, foodPreparationTask).
hasRole(shirt, clothingRole).
hasRole(spoon, utensilRole).

#modeh(goesIn(var(obj), const(location))).
#modeb(1, hasRole(var(obj), const(role))).
#modeb(1, affordsTask(var(obj), const(task))).

#pos(p1, {goesIn(knife, kitchen)}, {}).
#pos(p2, {goesIn(spoon, kitchen)}, {}).
#pos(p3, {goesIn(shirt, bedroom)}, {}).
#neg(n1, {goesIn(knife, bedroom)}, {}).
