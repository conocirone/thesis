% ==========================================================
% ILASP Input: goesIn(Object, Location) rule learning
% Context-dependent examples (each carries its own BK)
% Generated from ConceptNet + SOMA background knowledge
% ==========================================================

#maxv(1).

#constant(location, kitchen).
#constant(location, bedroom).
#constant(location, bathroom).
#constant(location, living_room).
#constant(location, garage).
#constant(location, fridge).
#constant(location, closet).

#constant(role, applianceRole).
#constant(role, beddingRole).
#constant(role, cleaningToolRole).
#constant(role, clothingRole).
#constant(role, consumableRole).
#constant(role, cookwareRole).
#constant(role, decorationRole).
#constant(role, documentRole).
#constant(role, entertainmentRole).
#constant(role, furnitureRole).
#constant(role, lightingRole).
#constant(role, musicalInstrumentRole).
#constant(role, safetyEquipmentRole).
#constant(role, storageContainerRole).
#constant(role, toolRole).
#constant(role, utensilRole).
#constant(role, wasteRole).

#constant(task, cleaningTask).
#constant(task, dressingTask).
#constant(task, eatingDrinkingTask).
#constant(task, foodPreparationTask).
#constant(task, gardeningTask).
#constant(task, hygieneTask).
#constant(task, leisureTask).
#constant(task, maintenanceTask).
#constant(task, sleepingTask).
#constant(task, storageTask).
#constant(task, wasteDisposalTask).
#constant(task, workStudyTask).

#modeh(goesIn(var(obj), const(location))).
#modeb(1, hasRole(var(obj), const(role))).
#modeb(1, affordsTask(var(obj), const(task))).

% --- Positive examples (weight 100) ---
#pos(e1@100, {goesIn(can_opener, kitchen)}, {}, {
  obj(can_opener). hasRole(can_opener, toolRole). affordsTask(can_opener, foodPreparationTask).
}).
#pos(e2@100, {goesIn(step_chair, kitchen)}, {}, {
  obj(step_chair). hasRole(step_chair, furnitureRole). affordsTask(step_chair, eatingDrinkingTask). affordsTask(step_chair, storageTask).
}).
#pos(e3@100, {goesIn(holdall, bedroom)}, {}, {
  obj(holdall). hasRole(holdall, storageContainerRole). affordsTask(holdall, storageTask).
}).
#pos(e4@100, {goesIn(jeans, bedroom)}, {}, {
  obj(jeans). hasRole(jeans, clothingRole). affordsTask(jeans, dressingTask).
}).
#pos(e5@100, {goesIn(toothbrush_bristle, bathroom)}, {}, {
  obj(toothbrush_bristle). affordsTask(toothbrush_bristle, hygieneTask).
}).
#pos(e6@100, {goesIn(money, bathroom)}, {}, {
  obj(money). hasRole(money, consumableRole). affordsTask(money, eatingDrinkingTask).
}).
#pos(e7@100, {goesIn(switches, living_room)}, {}, {
  obj(switches). hasRole(switches, toolRole). affordsTask(switches, workStudyTask).
}).
#pos(e8@100, {goesIn(ottoman, living_room)}, {}, {
  obj(ottoman). hasRole(ottoman, furnitureRole). affordsTask(ottoman, leisureTask).
}).
#pos(e9@100, {goesIn(curtain, garage)}, {}, {
  obj(curtain). hasRole(curtain, furnitureRole). affordsTask(curtain, leisureTask).
}).
#pos(e10@100, {goesIn(oilcloth, garage)}, {}, {
  obj(oilcloth). hasRole(oilcloth, cleaningToolRole). affordsTask(oilcloth, cleaningTask).
}).
#pos(e11@100, {goesIn(waffles, fridge)}, {}, {
  obj(waffles). hasRole(waffles, consumableRole). affordsTask(waffles, eatingDrinkingTask).
}).
#pos(e12@100, {goesIn(onions, fridge)}, {}, {
  obj(onions). hasRole(onions, consumableRole). affordsTask(onions, foodPreparationTask).
}).
#pos(e13@100, {goesIn(light_bulb, closet)}, {}, {
  obj(light_bulb). hasRole(light_bulb, lightingRole). affordsTask(light_bulb, leisureTask).
}).
#pos(e14@100, {goesIn(bandaids, closet)}, {}, {
  obj(bandaids). hasRole(bandaids, consumableRole). hasRole(bandaids, safetyEquipmentRole). affordsTask(bandaids, hygieneTask). affordsTask(bandaids, wasteDisposalTask).
}).

% --- Negative examples (weight 10) ---
#pos(e15@10, {}, {goesIn(can_opener, garage)}, {
  obj(can_opener). hasRole(can_opener, toolRole). affordsTask(can_opener, foodPreparationTask).
}).
#pos(e16@10, {}, {goesIn(step_chair, fridge)}, {
  obj(step_chair). hasRole(step_chair, furnitureRole). affordsTask(step_chair, eatingDrinkingTask). affordsTask(step_chair, storageTask).
}).
#pos(e17@10, {}, {goesIn(holdall, bathroom)}, {
  obj(holdall). hasRole(holdall, storageContainerRole). affordsTask(holdall, storageTask).
}).
#pos(e18@10, {}, {goesIn(jeans, bathroom)}, {
  obj(jeans). hasRole(jeans, clothingRole). affordsTask(jeans, dressingTask).
}).
#pos(e19@10, {}, {goesIn(toothbrush_bristle, fridge)}, {
  obj(toothbrush_bristle). affordsTask(toothbrush_bristle, hygieneTask).
}).
#pos(e20@10, {}, {goesIn(money, garage)}, {
  obj(money). hasRole(money, consumableRole). affordsTask(money, eatingDrinkingTask).
}).
#pos(e21@10, {}, {goesIn(switches, fridge)}, {
  obj(switches). hasRole(switches, toolRole). affordsTask(switches, workStudyTask).
}).
#pos(e22@10, {}, {goesIn(ottoman, bathroom)}, {
  obj(ottoman). hasRole(ottoman, furnitureRole). affordsTask(ottoman, leisureTask).
}).
#pos(e23@10, {}, {goesIn(curtain, kitchen)}, {
  obj(curtain). hasRole(curtain, furnitureRole). affordsTask(curtain, leisureTask).
}).
#pos(e24@10, {}, {goesIn(oilcloth, living_room)}, {
  obj(oilcloth). hasRole(oilcloth, cleaningToolRole). affordsTask(oilcloth, cleaningTask).
}).
#pos(e25@10, {}, {goesIn(waffles, bathroom)}, {
  obj(waffles). hasRole(waffles, consumableRole). affordsTask(waffles, eatingDrinkingTask).
}).
#pos(e26@10, {}, {goesIn(onions, closet)}, {
  obj(onions). hasRole(onions, consumableRole). affordsTask(onions, foodPreparationTask).
}).
#pos(e27@10, {}, {goesIn(light_bulb, bathroom)}, {
  obj(light_bulb). hasRole(light_bulb, lightingRole). affordsTask(light_bulb, leisureTask).
}).
#pos(e28@10, {}, {goesIn(bandaids, bedroom)}, {
  obj(bandaids). hasRole(bandaids, consumableRole). hasRole(bandaids, safetyEquipmentRole). affordsTask(bandaids, hygieneTask). affordsTask(bandaids, wasteDisposalTask).
}).
