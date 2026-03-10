% ==========================================================
% ILASP Input: goesIn(Object, Location) rule learning
% Context-dependent examples (each carries its own BK)
% Generated from ConceptNet + SOMA background knowledge
% ==========================================================

#maxv(1).

#constant(location, bathroom).
#constant(location, bed).
#constant(location, bedroom).
#constant(location, cabinet).
#constant(location, closet).
#constant(location, dining_room).
#constant(location, drawer).
#constant(location, fridge).
#constant(location, garage).
#constant(location, garden).
#constant(location, hallway).
#constant(location, home_office).
#constant(location, kitchen).
#constant(location, laundry_room).
#constant(location, library).
#constant(location, living_room).
#constant(location, music_room).
#constant(location, pantry).
#constant(location, playroom).
#constant(location, shelf).
#constant(location, sink).
#constant(location, storage_room).
#constant(location, table).
#constant(location, trash).

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
#modeb(2, hasRole(var(obj), const(role))).
#modeb(2, affordsTask(var(obj), const(task))).

% --- Positive examples (weight 100) ---
#pos(e1@100, {goesIn(shower_switch, bathroom)}, {}, {
  obj(shower_switch). hasRole(shower_switch, toolRole). affordsTask(shower_switch, maintenanceTask).
}).
#pos(e2@100, {goesIn(separate_shower, bathroom)}, {}, {
  obj(separate_shower). hasRole(separate_shower, furnitureRole). affordsTask(separate_shower, hygieneTask).
}).
#pos(e3@100, {goesIn(fluoride_mouthwash, bathroom)}, {}, {
  obj(fluoride_mouthwash). hasRole(fluoride_mouthwash, cleaningToolRole). affordsTask(fluoride_mouthwash, hygieneTask).
}).
#pos(e4@100, {goesIn(pad, bathroom)}, {}, {
  obj(pad). hasRole(pad, beddingRole). affordsTask(pad, sleepingTask).
}).
#pos(e5@100, {goesIn(haircloth, bathroom)}, {}, {
  obj(haircloth). hasRole(haircloth, clothingRole). affordsTask(haircloth, dressingTask).
}).
#pos(e6@100, {goesIn(toys, bed)}, {}, {
  obj(toys). hasRole(toys, entertainmentRole). affordsTask(toys, leisureTask).
}).
#pos(e7@100, {goesIn(pillow_case, bed)}, {}, {
  obj(pillow_case). hasRole(pillow_case, beddingRole). affordsTask(pillow_case, sleepingTask).
}).
#pos(e8@100, {goesIn(cat, bed)}, {}, {
  obj(cat). hasRole(cat, consumableRole). affordsTask(cat, leisureTask).
}).
#pos(e9@100, {goesIn(floor, bed)}, {}, {
  obj(floor). hasRole(floor, furnitureRole). affordsTask(floor, leisureTask). affordsTask(floor, storageTask).
}).
#pos(e10@100, {goesIn(clothes, bed)}, {}, {
  obj(clothes). hasRole(clothes, clothingRole). affordsTask(clothes, dressingTask).
}).
#pos(e11@100, {goesIn(closet, bedroom)}, {}, {
  obj(closet). hasRole(closet, storageContainerRole). affordsTask(closet, storageTask).
}).
#pos(e12@100, {goesIn(light_bulb, bedroom)}, {}, {
  obj(light_bulb). hasRole(light_bulb, lightingRole). affordsTask(light_bulb, leisureTask).
}).
#pos(e13@100, {goesIn(pair_of_shoes, bedroom)}, {}, {
  obj(pair_of_shoes). hasRole(pair_of_shoes, clothingRole). affordsTask(pair_of_shoes, dressingTask).
}).
#pos(e14@100, {goesIn(room_study, bedroom)}, {}, {
  obj(room_study). hasRole(room_study, furnitureRole). affordsTask(room_study, workStudyTask).
}).
#pos(e15@100, {goesIn(tire_iron, bedroom)}, {}, {
  obj(tire_iron). hasRole(tire_iron, toolRole). affordsTask(tire_iron, maintenanceTask).
}).
#pos(e16@100, {goesIn(salt, cabinet)}, {}, {
  obj(salt). hasRole(salt, consumableRole). affordsTask(salt, foodPreparationTask).
}).
#pos(e17@100, {goesIn(bowl, cabinet)}, {}, {
  obj(bowl). hasRole(bowl, utensilRole). affordsTask(bowl, eatingDrinkingTask).
}).
#pos(e18@100, {goesIn(teakettle, cabinet)}, {}, {
  obj(teakettle). hasRole(teakettle, cookwareRole). affordsTask(teakettle, foodPreparationTask).
}).
#pos(e19@100, {goesIn(jars, cabinet)}, {}, {
  obj(jars). hasRole(jars, storageContainerRole). affordsTask(jars, storageTask).
}).
#pos(e20@100, {goesIn(acne_medication, cabinet)}, {}, {
  obj(acne_medication). hasRole(acne_medication, consumableRole). affordsTask(acne_medication, hygieneTask).
}).
#pos(e21@100, {goesIn(stairs_down, closet)}, {}, {
  obj(stairs_down). hasRole(stairs_down, furnitureRole).
}).
#pos(e22@100, {goesIn(tool, closet)}, {}, {
  obj(tool). hasRole(tool, toolRole). affordsTask(tool, maintenanceTask).
}).
#pos(e23@100, {goesIn(tin, closet)}, {}, {
  obj(tin). hasRole(tin, storageContainerRole). affordsTask(tin, storageTask).
}).
#pos(e24@100, {goesIn(shirt, closet)}, {}, {
  obj(shirt). hasRole(shirt, clothingRole). affordsTask(shirt, dressingTask).
}).
#pos(e25@100, {goesIn(folding_door, closet)}, {}, {
  obj(folding_door). hasRole(folding_door, furnitureRole). affordsTask(folding_door, storageTask).
}).
#pos(e26@100, {goesIn(water, dining_room)}, {}, {
  obj(water). hasRole(water, consumableRole). affordsTask(water, cleaningTask). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e27@100, {goesIn(one_person_chair, dining_room)}, {}, {
  obj(one_person_chair). hasRole(one_person_chair, furnitureRole). affordsTask(one_person_chair, leisureTask). affordsTask(one_person_chair, workStudyTask).
}).
#pos(e28@100, {goesIn(ice, dining_room)}, {}, {
  obj(ice). hasRole(ice, consumableRole). affordsTask(ice, eatingDrinkingTask).
}).
#pos(e29@100, {goesIn(salad_bowl, dining_room)}, {}, {
  obj(salad_bowl). hasRole(salad_bowl, utensilRole). affordsTask(salad_bowl, eatingDrinkingTask). affordsTask(salad_bowl, foodPreparationTask).
}).
#pos(e30@100, {goesIn(serving_trolley, dining_room)}, {}, {
  obj(serving_trolley). hasRole(serving_trolley, furnitureRole). hasRole(serving_trolley, storageContainerRole). affordsTask(serving_trolley, eatingDrinkingTask). affordsTask(serving_trolley, foodPreparationTask). affordsTask(serving_trolley, storageTask).
}).
#pos(e31@100, {goesIn(card_case, drawer)}, {}, {
  obj(card_case). hasRole(card_case, storageContainerRole). affordsTask(card_case, storageTask).
}).
#pos(e32@100, {goesIn(pillow_case, drawer)}, {}, {
  obj(pillow_case). hasRole(pillow_case, beddingRole). affordsTask(pillow_case, sleepingTask).
}).
#pos(e33@100, {goesIn(pot, drawer)}, {}, {
  obj(pot). hasRole(pot, cookwareRole). affordsTask(pot, foodPreparationTask).
}).
#pos(e34@100, {goesIn(puzzle, drawer)}, {}, {
  obj(puzzle). hasRole(puzzle, entertainmentRole). affordsTask(puzzle, leisureTask).
}).
#pos(e35@100, {goesIn(film, drawer)}, {}, {
  obj(film). hasRole(film, consumableRole). affordsTask(film, leisureTask).
}).
#pos(e36@100, {goesIn(chicken, fridge)}, {}, {
  obj(chicken). hasRole(chicken, consumableRole). affordsTask(chicken, eatingDrinkingTask).
}).
#pos(e37@100, {goesIn(onions, fridge)}, {}, {
  obj(onions). hasRole(onions, consumableRole). affordsTask(onions, foodPreparationTask).
}).
#pos(e38@100, {goesIn(gel, fridge)}, {}, {
  obj(gel). hasRole(gel, consumableRole). affordsTask(gel, hygieneTask). affordsTask(gel, leisureTask).
}).
#pos(e39@100, {goesIn(magnets, fridge)}, {}, {
  obj(magnets). hasRole(magnets, toolRole). affordsTask(magnets, storageTask).
}).
#pos(e40@100, {goesIn(bread, fridge)}, {}, {
  obj(bread). hasRole(bread, consumableRole). affordsTask(bread, eatingDrinkingTask). affordsTask(bread, foodPreparationTask).
}).
#pos(e41@100, {goesIn(nails, garage)}, {}, {
  obj(nails). hasRole(nails, toolRole). affordsTask(nails, maintenanceTask).
}).
#pos(e42@100, {goesIn(frisbee, garage)}, {}, {
  obj(frisbee). hasRole(frisbee, entertainmentRole). affordsTask(frisbee, leisureTask).
}).
#pos(e43@100, {goesIn(window, garage)}, {}, {
  obj(window). hasRole(window, furnitureRole). affordsTask(window, leisureTask).
}).
#pos(e44@100, {goesIn(school_book, garage)}, {}, {
  obj(school_book). hasRole(school_book, documentRole). affordsTask(school_book, workStudyTask).
}).
#pos(e45@100, {goesIn(shelf, garage)}, {}, {
  obj(shelf). hasRole(shelf, storageContainerRole). affordsTask(shelf, storageTask).
}).
#pos(e46@100, {goesIn(bird, garden)}, {}, {
  obj(bird). hasRole(bird, entertainmentRole). affordsTask(bird, gardeningTask). affordsTask(bird, leisureTask).
}).
#pos(e47@100, {goesIn(buttons, garden)}, {}, {
  obj(buttons). hasRole(buttons, toolRole). affordsTask(buttons, maintenanceTask).
}).
#pos(e48@100, {goesIn(picture, garden)}, {}, {
  obj(picture). hasRole(picture, decorationRole).
}).
#pos(e49@100, {goesIn(card, garden)}, {}, {
  obj(card). hasRole(card, consumableRole). affordsTask(card, eatingDrinkingTask).
}).
#pos(e50@100, {goesIn(kitten, garden)}, {}, {
  obj(kitten). hasRole(kitten, entertainmentRole). affordsTask(kitten, leisureTask).
}).
#pos(e51@100, {goesIn(cat, hallway)}, {}, {
  obj(cat). hasRole(cat, consumableRole). affordsTask(cat, leisureTask).
}).
#pos(e52@100, {goesIn(linen_chest, hallway)}, {}, {
  obj(linen_chest). hasRole(linen_chest, storageContainerRole). affordsTask(linen_chest, storageTask).
}).
#pos(e53@100, {goesIn(washcloth, hallway)}, {}, {
  obj(washcloth). hasRole(washcloth, cleaningToolRole). affordsTask(washcloth, cleaningTask). affordsTask(washcloth, hygieneTask).
}).
#pos(e54@100, {goesIn(cloth_linen, hallway)}, {}, {
  obj(cloth_linen). hasRole(cloth_linen, clothingRole). affordsTask(cloth_linen, dressingTask).
}).
#pos(e55@100, {goesIn(towel, hallway)}, {}, {
  obj(towel). hasRole(towel, cleaningToolRole). affordsTask(towel, cleaningTask).
}).
#pos(e56@100, {goesIn(sheet_of_paper, home_office)}, {}, {
  obj(sheet_of_paper). hasRole(sheet_of_paper, documentRole).
}).
#pos(e57@100, {goesIn(paper, home_office)}, {}, {
  obj(paper). hasRole(paper, consumableRole). affordsTask(paper, eatingDrinkingTask). affordsTask(paper, foodPreparationTask). affordsTask(paper, leisureTask). affordsTask(paper, workStudyTask).
}).
#pos(e58@100, {goesIn(binder, home_office)}, {}, {
  obj(binder). hasRole(binder, storageContainerRole). affordsTask(binder, storageTask).
}).
#pos(e59@100, {goesIn(socks, home_office)}, {}, {
  obj(socks). hasRole(socks, clothingRole). affordsTask(socks, dressingTask).
}).
#pos(e60@100, {goesIn(bureau, home_office)}, {}, {
  obj(bureau). hasRole(bureau, furnitureRole). affordsTask(bureau, storageTask).
}).
#pos(e61@100, {goesIn(beets, kitchen)}, {}, {
  obj(beets). hasRole(beets, consumableRole). affordsTask(beets, eatingDrinkingTask).
}).
#pos(e62@100, {goesIn(sugar, kitchen)}, {}, {
  obj(sugar). hasRole(sugar, consumableRole). affordsTask(sugar, foodPreparationTask).
}).
#pos(e63@100, {goesIn(paper_towels, kitchen)}, {}, {
  obj(paper_towels). hasRole(paper_towels, cleaningToolRole). affordsTask(paper_towels, cleaningTask).
}).
#pos(e64@100, {goesIn(plant, kitchen)}, {}, {
  obj(plant). hasRole(plant, consumableRole). affordsTask(plant, maintenanceTask).
}).
#pos(e65@100, {goesIn(vanity_case, kitchen)}, {}, {
  obj(vanity_case). hasRole(vanity_case, storageContainerRole). affordsTask(vanity_case, storageTask).
}).
#pos(e66@100, {goesIn(step_chair, laundry_room)}, {}, {
  obj(step_chair). hasRole(step_chair, furnitureRole). affordsTask(step_chair, eatingDrinkingTask). affordsTask(step_chair, storageTask).
}).
#pos(e67@100, {goesIn(iron, laundry_room)}, {}, {
  obj(iron). hasRole(iron, toolRole). affordsTask(iron, foodPreparationTask).
}).
#pos(e68@100, {goesIn(sink, laundry_room)}, {}, {
  obj(sink). hasRole(sink, utensilRole). affordsTask(sink, cleaningTask). affordsTask(sink, eatingDrinkingTask). affordsTask(sink, hygieneTask).
}).
#pos(e69@100, {goesIn(pail, laundry_room)}, {}, {
  obj(pail). hasRole(pail, storageContainerRole). affordsTask(pail, storageTask).
}).
#pos(e70@100, {goesIn(water_fountain, library)}, {}, {
  obj(water_fountain). hasRole(water_fountain, utensilRole). affordsTask(water_fountain, eatingDrinkingTask).
}).
#pos(e71@100, {goesIn(statue, library)}, {}, {
  obj(statue). hasRole(statue, decorationRole).
}).
#pos(e72@100, {goesIn(hot_tap, library)}, {}, {
  obj(hot_tap). hasRole(hot_tap, applianceRole). affordsTask(hot_tap, eatingDrinkingTask). affordsTask(hot_tap, hygieneTask).
}).
#pos(e73@100, {goesIn(desk, library)}, {}, {
  obj(desk). hasRole(desk, furnitureRole). affordsTask(desk, workStudyTask).
}).
#pos(e74@100, {goesIn(toilet_brush, library)}, {}, {
  obj(toilet_brush). hasRole(toilet_brush, cleaningToolRole). affordsTask(toilet_brush, cleaningTask).
}).
#pos(e75@100, {goesIn(game, living_room)}, {}, {
  obj(game). hasRole(game, entertainmentRole). affordsTask(game, leisureTask).
}).
#pos(e76@100, {goesIn(cat, living_room)}, {}, {
  obj(cat). hasRole(cat, consumableRole). affordsTask(cat, leisureTask).
}).
#pos(e77@100, {goesIn(rock, living_room)}, {}, {
  obj(rock). hasRole(rock, toolRole). affordsTask(rock, maintenanceTask).
}).
#pos(e78@100, {goesIn(penny, living_room)}, {}, {
  obj(penny). hasRole(penny, consumableRole). affordsTask(penny, eatingDrinkingTask).
}).
#pos(e79@100, {goesIn(dog, living_room)}, {}, {
  obj(dog). hasRole(dog, consumableRole). affordsTask(dog, eatingDrinkingTask). affordsTask(dog, leisureTask).
}).
#pos(e80@100, {goesIn(studio_pedestal, music_room)}, {}, {
  obj(studio_pedestal). hasRole(studio_pedestal, furnitureRole). affordsTask(studio_pedestal, storageTask).
}).
#pos(e81@100, {goesIn(keyboard, music_room)}, {}, {
  obj(keyboard). hasRole(keyboard, toolRole). affordsTask(keyboard, workStudyTask).
}).
#pos(e82@100, {goesIn(string, music_room)}, {}, {
  obj(string). hasRole(string, toolRole). affordsTask(string, foodPreparationTask). affordsTask(string, leisureTask).
}).
#pos(e83@100, {goesIn(music_stand, music_room)}, {}, {
  obj(music_stand). hasRole(music_stand, furnitureRole). affordsTask(music_stand, leisureTask).
}).
#pos(e84@100, {goesIn(tuning_fork, music_room)}, {}, {
  obj(tuning_fork). hasRole(tuning_fork, toolRole). affordsTask(tuning_fork, foodPreparationTask).
}).
#pos(e85@100, {goesIn(pickle, pantry)}, {}, {
  obj(pickle). hasRole(pickle, consumableRole). affordsTask(pickle, eatingDrinkingTask).
}).
#pos(e86@100, {goesIn(spices, pantry)}, {}, {
  obj(spices). hasRole(spices, consumableRole). affordsTask(spices, foodPreparationTask).
}).
#pos(e87@100, {goesIn(trash, pantry)}, {}, {
  obj(trash). hasRole(trash, storageContainerRole). affordsTask(trash, wasteDisposalTask).
}).
#pos(e88@100, {goesIn(can, pantry)}, {}, {
  obj(can). hasRole(can, storageContainerRole). affordsTask(can, storageTask).
}).
#pos(e89@100, {goesIn(rice, pantry)}, {}, {
  obj(rice). hasRole(rice, consumableRole). affordsTask(rice, eatingDrinkingTask). affordsTask(rice, foodPreparationTask).
}).
#pos(e90@100, {goesIn(chess_set, playroom)}, {}, {
  obj(chess_set). hasRole(chess_set, entertainmentRole). affordsTask(chess_set, leisureTask).
}).
#pos(e91@100, {goesIn(chess_knight, playroom)}, {}, {
  obj(chess_knight). hasRole(chess_knight, toolRole). affordsTask(chess_knight, leisureTask).
}).
#pos(e92@100, {goesIn(photograph, shelf)}, {}, {
  obj(photograph). hasRole(photograph, documentRole). affordsTask(photograph, leisureTask).
}).
#pos(e93@100, {goesIn(cats, shelf)}, {}, {
  obj(cats). hasRole(cats, consumableRole). affordsTask(cats, eatingDrinkingTask).
}).
#pos(e94@100, {goesIn(jar, shelf)}, {}, {
  obj(jar). hasRole(jar, storageContainerRole). affordsTask(jar, storageTask).
}).
#pos(e95@100, {goesIn(coffee_mug, shelf)}, {}, {
  obj(coffee_mug). hasRole(coffee_mug, utensilRole). affordsTask(coffee_mug, eatingDrinkingTask).
}).
#pos(e96@100, {goesIn(teddy_bear, shelf)}, {}, {
  obj(teddy_bear). hasRole(teddy_bear, entertainmentRole). affordsTask(teddy_bear, leisureTask).
}).
#pos(e97@100, {goesIn(bowl, sink)}, {}, {
  obj(bowl). hasRole(bowl, utensilRole). affordsTask(bowl, eatingDrinkingTask).
}).
#pos(e98@100, {goesIn(kitchen_utensil, sink)}, {}, {
  obj(kitchen_utensil). hasRole(kitchen_utensil, utensilRole). affordsTask(kitchen_utensil, foodPreparationTask).
}).
#pos(e99@100, {goesIn(toothpaste, sink)}, {}, {
  obj(toothpaste). hasRole(toothpaste, cleaningToolRole). affordsTask(toothpaste, hygieneTask).
}).
#pos(e100@100, {goesIn(washcloth, sink)}, {}, {
  obj(washcloth). hasRole(washcloth, cleaningToolRole). affordsTask(washcloth, cleaningTask). affordsTask(washcloth, hygieneTask).
}).
#pos(e101@100, {goesIn(toothbrush_bristle, sink)}, {}, {
  obj(toothbrush_bristle). affordsTask(toothbrush_bristle, hygieneTask).
}).
#pos(e102@100, {goesIn(mold, storage_room)}, {}, {
  obj(mold). hasRole(mold, toolRole). affordsTask(mold, maintenanceTask).
}).
#pos(e103@100, {goesIn(pair_of_shoes, storage_room)}, {}, {
  obj(pair_of_shoes). hasRole(pair_of_shoes, clothingRole). affordsTask(pair_of_shoes, dressingTask).
}).
#pos(e104@100, {goesIn(wine_cellar, storage_room)}, {}, {
  obj(wine_cellar). hasRole(wine_cellar, storageContainerRole). affordsTask(wine_cellar, storageTask).
}).
#pos(e105@100, {goesIn(games, storage_room)}, {}, {
  obj(games). hasRole(games, entertainmentRole). affordsTask(games, leisureTask).
}).
#pos(e106@100, {goesIn(swiss_cheese, storage_room)}, {}, {
  obj(swiss_cheese). hasRole(swiss_cheese, consumableRole). affordsTask(swiss_cheese, eatingDrinkingTask).
}).
#pos(e107@100, {goesIn(picture, table)}, {}, {
  obj(picture). hasRole(picture, decorationRole).
}).
#pos(e108@100, {goesIn(card_case, table)}, {}, {
  obj(card_case). hasRole(card_case, storageContainerRole). affordsTask(card_case, storageTask).
}).
#pos(e109@100, {goesIn(wax, table)}, {}, {
  obj(wax). hasRole(wax, consumableRole). affordsTask(wax, maintenanceTask).
}).
#pos(e110@100, {goesIn(eraser, table)}, {}, {
  obj(eraser). hasRole(eraser, toolRole). affordsTask(eraser, maintenanceTask).
}).
#pos(e111@100, {goesIn(aspirin, table)}, {}, {
  obj(aspirin).
}).
#pos(e112@100, {goesIn(bill, trash)}, {}, {
  obj(bill). hasRole(bill, documentRole). affordsTask(bill, leisureTask).
}).
#pos(e113@100, {goesIn(can, trash)}, {}, {
  obj(can). hasRole(can, storageContainerRole). affordsTask(can, storageTask).
}).
#pos(e114@100, {goesIn(newspaper, trash)}, {}, {
  obj(newspaper). hasRole(newspaper, documentRole).
}).
#pos(e115@100, {goesIn(trash, trash)}, {}, {
  obj(trash). hasRole(trash, storageContainerRole). affordsTask(trash, wasteDisposalTask).
}).
#pos(e116@100, {goesIn(banana_peels, trash)}, {}, {
  obj(banana_peels). hasRole(banana_peels, wasteRole). affordsTask(banana_peels, wasteDisposalTask).
}).

% --- Negative examples (weight 10) ---
#pos(e117@10, {}, {goesIn(shower_switch, kitchen)}, {
  obj(shower_switch). hasRole(shower_switch, toolRole). affordsTask(shower_switch, maintenanceTask).
}).
#pos(e118@10, {}, {goesIn(shower_switch, playroom)}, {
  obj(shower_switch). hasRole(shower_switch, toolRole). affordsTask(shower_switch, maintenanceTask).
}).
#pos(e119@10, {}, {goesIn(separate_shower, closet)}, {
  obj(separate_shower). hasRole(separate_shower, furnitureRole). affordsTask(separate_shower, hygieneTask).
}).
#pos(e120@10, {}, {goesIn(separate_shower, shelf)}, {
  obj(separate_shower). hasRole(separate_shower, furnitureRole). affordsTask(separate_shower, hygieneTask).
}).
#pos(e121@10, {}, {goesIn(fluoride_mouthwash, garden)}, {
  obj(fluoride_mouthwash). hasRole(fluoride_mouthwash, cleaningToolRole). affordsTask(fluoride_mouthwash, hygieneTask).
}).
#pos(e122@10, {}, {goesIn(fluoride_mouthwash, kitchen)}, {
  obj(fluoride_mouthwash). hasRole(fluoride_mouthwash, cleaningToolRole). affordsTask(fluoride_mouthwash, hygieneTask).
}).
#pos(e123@10, {}, {goesIn(pad, drawer)}, {
  obj(pad). hasRole(pad, beddingRole). affordsTask(pad, sleepingTask).
}).
#pos(e124@10, {}, {goesIn(pad, playroom)}, {
  obj(pad). hasRole(pad, beddingRole). affordsTask(pad, sleepingTask).
}).
#pos(e125@10, {}, {goesIn(haircloth, garden)}, {
  obj(haircloth). hasRole(haircloth, clothingRole). affordsTask(haircloth, dressingTask).
}).
#pos(e126@10, {}, {goesIn(haircloth, music_room)}, {
  obj(haircloth). hasRole(haircloth, clothingRole). affordsTask(haircloth, dressingTask).
}).
#pos(e127@10, {}, {goesIn(toys, dining_room)}, {
  obj(toys). hasRole(toys, entertainmentRole). affordsTask(toys, leisureTask).
}).
#pos(e128@10, {}, {goesIn(toys, kitchen)}, {
  obj(toys). hasRole(toys, entertainmentRole). affordsTask(toys, leisureTask).
}).
#pos(e129@10, {}, {goesIn(pillow_case, cabinet)}, {
  obj(pillow_case). hasRole(pillow_case, beddingRole). affordsTask(pillow_case, sleepingTask).
}).
#pos(e130@10, {}, {goesIn(pillow_case, fridge)}, {
  obj(pillow_case). hasRole(pillow_case, beddingRole). affordsTask(pillow_case, sleepingTask).
}).
#pos(e131@10, {}, {goesIn(cat, fridge)}, {
  obj(cat). hasRole(cat, consumableRole). affordsTask(cat, leisureTask).
}).
#pos(e132@10, {}, {goesIn(cat, laundry_room)}, {
  obj(cat). hasRole(cat, consumableRole). affordsTask(cat, leisureTask).
}).
#pos(e133@10, {}, {goesIn(floor, kitchen)}, {
  obj(floor). hasRole(floor, furnitureRole). affordsTask(floor, leisureTask). affordsTask(floor, storageTask).
}).
#pos(e134@10, {}, {goesIn(floor, shelf)}, {
  obj(floor). hasRole(floor, furnitureRole). affordsTask(floor, leisureTask). affordsTask(floor, storageTask).
}).
#pos(e135@10, {}, {goesIn(clothes, hallway)}, {
  obj(clothes). hasRole(clothes, clothingRole). affordsTask(clothes, dressingTask).
}).
#pos(e136@10, {}, {goesIn(clothes, living_room)}, {
  obj(clothes). hasRole(clothes, clothingRole). affordsTask(clothes, dressingTask).
}).
#pos(e137@10, {}, {goesIn(closet, kitchen)}, {
  obj(closet). hasRole(closet, storageContainerRole). affordsTask(closet, storageTask).
}).
#pos(e138@10, {}, {goesIn(closet, sink)}, {
  obj(closet). hasRole(closet, storageContainerRole). affordsTask(closet, storageTask).
}).
#pos(e139@10, {}, {goesIn(light_bulb, fridge)}, {
  obj(light_bulb). hasRole(light_bulb, lightingRole). affordsTask(light_bulb, leisureTask).
}).
#pos(e140@10, {}, {goesIn(light_bulb, garage)}, {
  obj(light_bulb). hasRole(light_bulb, lightingRole). affordsTask(light_bulb, leisureTask).
}).
#pos(e141@10, {}, {goesIn(pair_of_shoes, playroom)}, {
  obj(pair_of_shoes). hasRole(pair_of_shoes, clothingRole). affordsTask(pair_of_shoes, dressingTask).
}).
#pos(e142@10, {}, {goesIn(pair_of_shoes, shelf)}, {
  obj(pair_of_shoes). hasRole(pair_of_shoes, clothingRole). affordsTask(pair_of_shoes, dressingTask).
}).
#pos(e143@10, {}, {goesIn(room_study, music_room)}, {
  obj(room_study). hasRole(room_study, furnitureRole). affordsTask(room_study, workStudyTask).
}).
#pos(e144@10, {}, {goesIn(room_study, pantry)}, {
  obj(room_study). hasRole(room_study, furnitureRole). affordsTask(room_study, workStudyTask).
}).
#pos(e145@10, {}, {goesIn(tire_iron, home_office)}, {
  obj(tire_iron). hasRole(tire_iron, toolRole). affordsTask(tire_iron, maintenanceTask).
}).
#pos(e146@10, {}, {goesIn(tire_iron, pantry)}, {
  obj(tire_iron). hasRole(tire_iron, toolRole). affordsTask(tire_iron, maintenanceTask).
}).
#pos(e147@10, {}, {goesIn(salt, bed)}, {
  obj(salt). hasRole(salt, consumableRole). affordsTask(salt, foodPreparationTask).
}).
#pos(e148@10, {}, {goesIn(salt, dining_room)}, {
  obj(salt). hasRole(salt, consumableRole). affordsTask(salt, foodPreparationTask).
}).
#pos(e149@10, {}, {goesIn(bowl, living_room)}, {
  obj(bowl). hasRole(bowl, utensilRole). affordsTask(bowl, eatingDrinkingTask).
}).
#pos(e150@10, {}, {goesIn(bowl, shelf)}, {
  obj(bowl). hasRole(bowl, utensilRole). affordsTask(bowl, eatingDrinkingTask).
}).
#pos(e151@10, {}, {goesIn(teakettle, hallway)}, {
  obj(teakettle). hasRole(teakettle, cookwareRole). affordsTask(teakettle, foodPreparationTask).
}).
#pos(e152@10, {}, {goesIn(teakettle, pantry)}, {
  obj(teakettle). hasRole(teakettle, cookwareRole). affordsTask(teakettle, foodPreparationTask).
}).
#pos(e153@10, {}, {goesIn(jars, fridge)}, {
  obj(jars). hasRole(jars, storageContainerRole). affordsTask(jars, storageTask).
}).
#pos(e154@10, {}, {goesIn(jars, shelf)}, {
  obj(jars). hasRole(jars, storageContainerRole). affordsTask(jars, storageTask).
}).
#pos(e155@10, {}, {goesIn(acne_medication, bedroom)}, {
  obj(acne_medication). hasRole(acne_medication, consumableRole). affordsTask(acne_medication, hygieneTask).
}).
#pos(e156@10, {}, {goesIn(acne_medication, laundry_room)}, {
  obj(acne_medication). hasRole(acne_medication, consumableRole). affordsTask(acne_medication, hygieneTask).
}).
#pos(e157@10, {}, {goesIn(stairs_down, bed)}, {
  obj(stairs_down). hasRole(stairs_down, furnitureRole).
}).
#pos(e158@10, {}, {goesIn(stairs_down, home_office)}, {
  obj(stairs_down). hasRole(stairs_down, furnitureRole).
}).
#pos(e159@10, {}, {goesIn(tool, pantry)}, {
  obj(tool). hasRole(tool, toolRole). affordsTask(tool, maintenanceTask).
}).
#pos(e160@10, {}, {goesIn(tool, table)}, {
  obj(tool). hasRole(tool, toolRole). affordsTask(tool, maintenanceTask).
}).
#pos(e161@10, {}, {goesIn(tin, pantry)}, {
  obj(tin). hasRole(tin, storageContainerRole). affordsTask(tin, storageTask).
}).
#pos(e162@10, {}, {goesIn(tin, table)}, {
  obj(tin). hasRole(tin, storageContainerRole). affordsTask(tin, storageTask).
}).
#pos(e163@10, {}, {goesIn(shirt, kitchen)}, {
  obj(shirt). hasRole(shirt, clothingRole). affordsTask(shirt, dressingTask).
}).
#pos(e164@10, {}, {goesIn(shirt, sink)}, {
  obj(shirt). hasRole(shirt, clothingRole). affordsTask(shirt, dressingTask).
}).
#pos(e165@10, {}, {goesIn(folding_door, bathroom)}, {
  obj(folding_door). hasRole(folding_door, furnitureRole). affordsTask(folding_door, storageTask).
}).
#pos(e166@10, {}, {goesIn(folding_door, dining_room)}, {
  obj(folding_door). hasRole(folding_door, furnitureRole). affordsTask(folding_door, storageTask).
}).
#pos(e167@10, {}, {goesIn(water, drawer)}, {
  obj(water). hasRole(water, consumableRole). affordsTask(water, cleaningTask). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e168@10, {}, {goesIn(water, laundry_room)}, {
  obj(water). hasRole(water, consumableRole). affordsTask(water, cleaningTask). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e169@10, {}, {goesIn(one_person_chair, garden)}, {
  obj(one_person_chair). hasRole(one_person_chair, furnitureRole). affordsTask(one_person_chair, leisureTask). affordsTask(one_person_chair, workStudyTask).
}).
#pos(e170@10, {}, {goesIn(one_person_chair, kitchen)}, {
  obj(one_person_chair). hasRole(one_person_chair, furnitureRole). affordsTask(one_person_chair, leisureTask). affordsTask(one_person_chair, workStudyTask).
}).
#pos(e171@10, {}, {goesIn(ice, library)}, {
  obj(ice). hasRole(ice, consumableRole). affordsTask(ice, eatingDrinkingTask).
}).
#pos(e172@10, {}, {goesIn(ice, living_room)}, {
  obj(ice). hasRole(ice, consumableRole). affordsTask(ice, eatingDrinkingTask).
}).
#pos(e173@10, {}, {goesIn(salad_bowl, bed)}, {
  obj(salad_bowl). hasRole(salad_bowl, utensilRole). affordsTask(salad_bowl, eatingDrinkingTask). affordsTask(salad_bowl, foodPreparationTask).
}).
#pos(e174@10, {}, {goesIn(salad_bowl, living_room)}, {
  obj(salad_bowl). hasRole(salad_bowl, utensilRole). affordsTask(salad_bowl, eatingDrinkingTask). affordsTask(salad_bowl, foodPreparationTask).
}).
#pos(e175@10, {}, {goesIn(serving_trolley, bed)}, {
  obj(serving_trolley). hasRole(serving_trolley, furnitureRole). hasRole(serving_trolley, storageContainerRole). affordsTask(serving_trolley, eatingDrinkingTask). affordsTask(serving_trolley, foodPreparationTask). affordsTask(serving_trolley, storageTask).
}).
#pos(e176@10, {}, {goesIn(serving_trolley, sink)}, {
  obj(serving_trolley). hasRole(serving_trolley, furnitureRole). hasRole(serving_trolley, storageContainerRole). affordsTask(serving_trolley, eatingDrinkingTask). affordsTask(serving_trolley, foodPreparationTask). affordsTask(serving_trolley, storageTask).
}).
#pos(e177@10, {}, {goesIn(card_case, fridge)}, {
  obj(card_case). hasRole(card_case, storageContainerRole). affordsTask(card_case, storageTask).
}).
#pos(e178@10, {}, {goesIn(card_case, playroom)}, {
  obj(card_case). hasRole(card_case, storageContainerRole). affordsTask(card_case, storageTask).
}).
#pos(e179@10, {}, {goesIn(pot, living_room)}, {
  obj(pot). hasRole(pot, cookwareRole). affordsTask(pot, foodPreparationTask).
}).
#pos(e180@10, {}, {goesIn(pot, storage_room)}, {
  obj(pot). hasRole(pot, cookwareRole). affordsTask(pot, foodPreparationTask).
}).
#pos(e181@10, {}, {goesIn(puzzle, bedroom)}, {
  obj(puzzle). hasRole(puzzle, entertainmentRole). affordsTask(puzzle, leisureTask).
}).
#pos(e182@10, {}, {goesIn(puzzle, home_office)}, {
  obj(puzzle). hasRole(puzzle, entertainmentRole). affordsTask(puzzle, leisureTask).
}).
#pos(e183@10, {}, {goesIn(film, laundry_room)}, {
  obj(film). hasRole(film, consumableRole). affordsTask(film, leisureTask).
}).
#pos(e184@10, {}, {goesIn(film, pantry)}, {
  obj(film). hasRole(film, consumableRole). affordsTask(film, leisureTask).
}).
#pos(e185@10, {}, {goesIn(chicken, music_room)}, {
  obj(chicken). hasRole(chicken, consumableRole). affordsTask(chicken, eatingDrinkingTask).
}).
#pos(e186@10, {}, {goesIn(chicken, shelf)}, {
  obj(chicken). hasRole(chicken, consumableRole). affordsTask(chicken, eatingDrinkingTask).
}).
#pos(e187@10, {}, {goesIn(onions, cabinet)}, {
  obj(onions). hasRole(onions, consumableRole). affordsTask(onions, foodPreparationTask).
}).
#pos(e188@10, {}, {goesIn(onions, garden)}, {
  obj(onions). hasRole(onions, consumableRole). affordsTask(onions, foodPreparationTask).
}).
#pos(e189@10, {}, {goesIn(gel, closet)}, {
  obj(gel). hasRole(gel, consumableRole). affordsTask(gel, hygieneTask). affordsTask(gel, leisureTask).
}).
#pos(e190@10, {}, {goesIn(gel, dining_room)}, {
  obj(gel). hasRole(gel, consumableRole). affordsTask(gel, hygieneTask). affordsTask(gel, leisureTask).
}).
#pos(e191@10, {}, {goesIn(magnets, kitchen)}, {
  obj(magnets). hasRole(magnets, toolRole). affordsTask(magnets, storageTask).
}).
#pos(e192@10, {}, {goesIn(magnets, laundry_room)}, {
  obj(magnets). hasRole(magnets, toolRole). affordsTask(magnets, storageTask).
}).
#pos(e193@10, {}, {goesIn(bread, home_office)}, {
  obj(bread). hasRole(bread, consumableRole). affordsTask(bread, eatingDrinkingTask). affordsTask(bread, foodPreparationTask).
}).
#pos(e194@10, {}, {goesIn(bread, sink)}, {
  obj(bread). hasRole(bread, consumableRole). affordsTask(bread, eatingDrinkingTask). affordsTask(bread, foodPreparationTask).
}).
#pos(e195@10, {}, {goesIn(nails, dining_room)}, {
  obj(nails). hasRole(nails, toolRole). affordsTask(nails, maintenanceTask).
}).
#pos(e196@10, {}, {goesIn(nails, library)}, {
  obj(nails). hasRole(nails, toolRole). affordsTask(nails, maintenanceTask).
}).
#pos(e197@10, {}, {goesIn(frisbee, drawer)}, {
  obj(frisbee). hasRole(frisbee, entertainmentRole). affordsTask(frisbee, leisureTask).
}).
#pos(e198@10, {}, {goesIn(frisbee, sink)}, {
  obj(frisbee). hasRole(frisbee, entertainmentRole). affordsTask(frisbee, leisureTask).
}).
#pos(e199@10, {}, {goesIn(window, library)}, {
  obj(window). hasRole(window, furnitureRole). affordsTask(window, leisureTask).
}).
#pos(e200@10, {}, {goesIn(window, playroom)}, {
  obj(window). hasRole(window, furnitureRole). affordsTask(window, leisureTask).
}).
#pos(e201@10, {}, {goesIn(school_book, bed)}, {
  obj(school_book). hasRole(school_book, documentRole). affordsTask(school_book, workStudyTask).
}).
#pos(e202@10, {}, {goesIn(school_book, pantry)}, {
  obj(school_book). hasRole(school_book, documentRole). affordsTask(school_book, workStudyTask).
}).
#pos(e203@10, {}, {goesIn(shelf, dining_room)}, {
  obj(shelf). hasRole(shelf, storageContainerRole). affordsTask(shelf, storageTask).
}).
#pos(e204@10, {}, {goesIn(shelf, trash)}, {
  obj(shelf). hasRole(shelf, storageContainerRole). affordsTask(shelf, storageTask).
}).
#pos(e205@10, {}, {goesIn(bird, closet)}, {
  obj(bird). hasRole(bird, entertainmentRole). affordsTask(bird, gardeningTask). affordsTask(bird, leisureTask).
}).
#pos(e206@10, {}, {goesIn(bird, kitchen)}, {
  obj(bird). hasRole(bird, entertainmentRole). affordsTask(bird, gardeningTask). affordsTask(bird, leisureTask).
}).
#pos(e207@10, {}, {goesIn(buttons, sink)}, {
  obj(buttons). hasRole(buttons, toolRole). affordsTask(buttons, maintenanceTask).
}).
#pos(e208@10, {}, {goesIn(buttons, table)}, {
  obj(buttons). hasRole(buttons, toolRole). affordsTask(buttons, maintenanceTask).
}).
#pos(e209@10, {}, {goesIn(picture, closet)}, {
  obj(picture). hasRole(picture, decorationRole).
}).
#pos(e210@10, {}, {goesIn(picture, music_room)}, {
  obj(picture). hasRole(picture, decorationRole).
}).
#pos(e211@10, {}, {goesIn(card, pantry)}, {
  obj(card). hasRole(card, consumableRole). affordsTask(card, eatingDrinkingTask).
}).
#pos(e212@10, {}, {goesIn(card, sink)}, {
  obj(card). hasRole(card, consumableRole). affordsTask(card, eatingDrinkingTask).
}).
#pos(e213@10, {}, {goesIn(kitten, dining_room)}, {
  obj(kitten). hasRole(kitten, entertainmentRole). affordsTask(kitten, leisureTask).
}).
#pos(e214@10, {}, {goesIn(kitten, hallway)}, {
  obj(kitten). hasRole(kitten, entertainmentRole). affordsTask(kitten, leisureTask).
}).
#pos(e215@10, {}, {goesIn(linen_chest, laundry_room)}, {
  obj(linen_chest). hasRole(linen_chest, storageContainerRole). affordsTask(linen_chest, storageTask).
}).
#pos(e216@10, {}, {goesIn(linen_chest, trash)}, {
  obj(linen_chest). hasRole(linen_chest, storageContainerRole). affordsTask(linen_chest, storageTask).
}).
#pos(e217@10, {}, {goesIn(washcloth, drawer)}, {
  obj(washcloth). hasRole(washcloth, cleaningToolRole). affordsTask(washcloth, cleaningTask). affordsTask(washcloth, hygieneTask).
}).
#pos(e218@10, {}, {goesIn(washcloth, library)}, {
  obj(washcloth). hasRole(washcloth, cleaningToolRole). affordsTask(washcloth, cleaningTask). affordsTask(washcloth, hygieneTask).
}).
#pos(e219@10, {}, {goesIn(cloth_linen, kitchen)}, {
  obj(cloth_linen). hasRole(cloth_linen, clothingRole). affordsTask(cloth_linen, dressingTask).
}).
#pos(e220@10, {}, {goesIn(cloth_linen, table)}, {
  obj(cloth_linen). hasRole(cloth_linen, clothingRole). affordsTask(cloth_linen, dressingTask).
}).
#pos(e221@10, {}, {goesIn(towel, living_room)}, {
  obj(towel). hasRole(towel, cleaningToolRole). affordsTask(towel, cleaningTask).
}).
#pos(e222@10, {}, {goesIn(towel, table)}, {
  obj(towel). hasRole(towel, cleaningToolRole). affordsTask(towel, cleaningTask).
}).
#pos(e223@10, {}, {goesIn(sheet_of_paper, shelf)}, {
  obj(sheet_of_paper). hasRole(sheet_of_paper, documentRole).
}).
#pos(e224@10, {}, {goesIn(sheet_of_paper, sink)}, {
  obj(sheet_of_paper). hasRole(sheet_of_paper, documentRole).
}).
#pos(e225@10, {}, {goesIn(paper, kitchen)}, {
  obj(paper). hasRole(paper, consumableRole). affordsTask(paper, eatingDrinkingTask). affordsTask(paper, foodPreparationTask). affordsTask(paper, leisureTask). affordsTask(paper, workStudyTask).
}).
#pos(e226@10, {}, {goesIn(paper, shelf)}, {
  obj(paper). hasRole(paper, consumableRole). affordsTask(paper, eatingDrinkingTask). affordsTask(paper, foodPreparationTask). affordsTask(paper, leisureTask). affordsTask(paper, workStudyTask).
}).
#pos(e227@10, {}, {goesIn(binder, bathroom)}, {
  obj(binder). hasRole(binder, storageContainerRole). affordsTask(binder, storageTask).
}).
#pos(e228@10, {}, {goesIn(binder, playroom)}, {
  obj(binder). hasRole(binder, storageContainerRole). affordsTask(binder, storageTask).
}).
#pos(e229@10, {}, {goesIn(socks, living_room)}, {
  obj(socks). hasRole(socks, clothingRole). affordsTask(socks, dressingTask).
}).
#pos(e230@10, {}, {goesIn(socks, music_room)}, {
  obj(socks). hasRole(socks, clothingRole). affordsTask(socks, dressingTask).
}).
#pos(e231@10, {}, {goesIn(bureau, closet)}, {
  obj(bureau). hasRole(bureau, furnitureRole). affordsTask(bureau, storageTask).
}).
#pos(e232@10, {}, {goesIn(bureau, trash)}, {
  obj(bureau). hasRole(bureau, furnitureRole). affordsTask(bureau, storageTask).
}).
#pos(e233@10, {}, {goesIn(beets, library)}, {
  obj(beets). hasRole(beets, consumableRole). affordsTask(beets, eatingDrinkingTask).
}).
#pos(e234@10, {}, {goesIn(beets, sink)}, {
  obj(beets). hasRole(beets, consumableRole). affordsTask(beets, eatingDrinkingTask).
}).
#pos(e235@10, {}, {goesIn(sugar, bathroom)}, {
  obj(sugar). hasRole(sugar, consumableRole). affordsTask(sugar, foodPreparationTask).
}).
#pos(e236@10, {}, {goesIn(sugar, laundry_room)}, {
  obj(sugar). hasRole(sugar, consumableRole). affordsTask(sugar, foodPreparationTask).
}).
#pos(e237@10, {}, {goesIn(paper_towels, music_room)}, {
  obj(paper_towels). hasRole(paper_towels, cleaningToolRole). affordsTask(paper_towels, cleaningTask).
}).
#pos(e238@10, {}, {goesIn(paper_towels, storage_room)}, {
  obj(paper_towels). hasRole(paper_towels, cleaningToolRole). affordsTask(paper_towels, cleaningTask).
}).
#pos(e239@10, {}, {goesIn(plant, hallway)}, {
  obj(plant). hasRole(plant, consumableRole). affordsTask(plant, maintenanceTask).
}).
#pos(e240@10, {}, {goesIn(plant, home_office)}, {
  obj(plant). hasRole(plant, consumableRole). affordsTask(plant, maintenanceTask).
}).
#pos(e241@10, {}, {goesIn(vanity_case, bed)}, {
  obj(vanity_case). hasRole(vanity_case, storageContainerRole). affordsTask(vanity_case, storageTask).
}).
#pos(e242@10, {}, {goesIn(vanity_case, storage_room)}, {
  obj(vanity_case). hasRole(vanity_case, storageContainerRole). affordsTask(vanity_case, storageTask).
}).
#pos(e243@10, {}, {goesIn(step_chair, fridge)}, {
  obj(step_chair). hasRole(step_chair, furnitureRole). affordsTask(step_chair, eatingDrinkingTask). affordsTask(step_chair, storageTask).
}).
#pos(e244@10, {}, {goesIn(step_chair, storage_room)}, {
  obj(step_chair). hasRole(step_chair, furnitureRole). affordsTask(step_chair, eatingDrinkingTask). affordsTask(step_chair, storageTask).
}).
#pos(e245@10, {}, {goesIn(iron, music_room)}, {
  obj(iron). hasRole(iron, toolRole). affordsTask(iron, foodPreparationTask).
}).
#pos(e246@10, {}, {goesIn(iron, sink)}, {
  obj(iron). hasRole(iron, toolRole). affordsTask(iron, foodPreparationTask).
}).
#pos(e247@10, {}, {goesIn(sink, dining_room)}, {
  obj(sink). hasRole(sink, utensilRole). affordsTask(sink, cleaningTask). affordsTask(sink, eatingDrinkingTask). affordsTask(sink, hygieneTask).
}).
#pos(e248@10, {}, {goesIn(sink, garage)}, {
  obj(sink). hasRole(sink, utensilRole). affordsTask(sink, cleaningTask). affordsTask(sink, eatingDrinkingTask). affordsTask(sink, hygieneTask).
}).
#pos(e249@10, {}, {goesIn(pail, bed)}, {
  obj(pail). hasRole(pail, storageContainerRole). affordsTask(pail, storageTask).
}).
#pos(e250@10, {}, {goesIn(pail, storage_room)}, {
  obj(pail). hasRole(pail, storageContainerRole). affordsTask(pail, storageTask).
}).
#pos(e251@10, {}, {goesIn(water_fountain, cabinet)}, {
  obj(water_fountain). hasRole(water_fountain, utensilRole). affordsTask(water_fountain, eatingDrinkingTask).
}).
#pos(e252@10, {}, {goesIn(water_fountain, trash)}, {
  obj(water_fountain). hasRole(water_fountain, utensilRole). affordsTask(water_fountain, eatingDrinkingTask).
}).
#pos(e253@10, {}, {goesIn(statue, bathroom)}, {
  obj(statue). hasRole(statue, decorationRole).
}).
#pos(e254@10, {}, {goesIn(statue, drawer)}, {
  obj(statue). hasRole(statue, decorationRole).
}).
#pos(e255@10, {}, {goesIn(hot_tap, home_office)}, {
  obj(hot_tap). hasRole(hot_tap, applianceRole). affordsTask(hot_tap, eatingDrinkingTask). affordsTask(hot_tap, hygieneTask).
}).
#pos(e256@10, {}, {goesIn(hot_tap, music_room)}, {
  obj(hot_tap). hasRole(hot_tap, applianceRole). affordsTask(hot_tap, eatingDrinkingTask). affordsTask(hot_tap, hygieneTask).
}).
#pos(e257@10, {}, {goesIn(desk, dining_room)}, {
  obj(desk). hasRole(desk, furnitureRole). affordsTask(desk, workStudyTask).
}).
#pos(e258@10, {}, {goesIn(desk, pantry)}, {
  obj(desk). hasRole(desk, furnitureRole). affordsTask(desk, workStudyTask).
}).
#pos(e259@10, {}, {goesIn(toilet_brush, fridge)}, {
  obj(toilet_brush). hasRole(toilet_brush, cleaningToolRole). affordsTask(toilet_brush, cleaningTask).
}).
#pos(e260@10, {}, {goesIn(toilet_brush, living_room)}, {
  obj(toilet_brush). hasRole(toilet_brush, cleaningToolRole). affordsTask(toilet_brush, cleaningTask).
}).
#pos(e261@10, {}, {goesIn(game, laundry_room)}, {
  obj(game). hasRole(game, entertainmentRole). affordsTask(game, leisureTask).
}).
#pos(e262@10, {}, {goesIn(game, pantry)}, {
  obj(game). hasRole(game, entertainmentRole). affordsTask(game, leisureTask).
}).
#pos(e263@10, {}, {goesIn(rock, cabinet)}, {
  obj(rock). hasRole(rock, toolRole). affordsTask(rock, maintenanceTask).
}).
#pos(e264@10, {}, {goesIn(rock, table)}, {
  obj(rock). hasRole(rock, toolRole). affordsTask(rock, maintenanceTask).
}).
#pos(e265@10, {}, {goesIn(penny, dining_room)}, {
  obj(penny). hasRole(penny, consumableRole). affordsTask(penny, eatingDrinkingTask).
}).
#pos(e266@10, {}, {goesIn(penny, playroom)}, {
  obj(penny). hasRole(penny, consumableRole). affordsTask(penny, eatingDrinkingTask).
}).
#pos(e267@10, {}, {goesIn(dog, garage)}, {
  obj(dog). hasRole(dog, consumableRole). affordsTask(dog, eatingDrinkingTask). affordsTask(dog, leisureTask).
}).
#pos(e268@10, {}, {goesIn(dog, storage_room)}, {
  obj(dog). hasRole(dog, consumableRole). affordsTask(dog, eatingDrinkingTask). affordsTask(dog, leisureTask).
}).
#pos(e269@10, {}, {goesIn(studio_pedestal, hallway)}, {
  obj(studio_pedestal). hasRole(studio_pedestal, furnitureRole). affordsTask(studio_pedestal, storageTask).
}).
#pos(e270@10, {}, {goesIn(studio_pedestal, table)}, {
  obj(studio_pedestal). hasRole(studio_pedestal, furnitureRole). affordsTask(studio_pedestal, storageTask).
}).
#pos(e271@10, {}, {goesIn(keyboard, living_room)}, {
  obj(keyboard). hasRole(keyboard, toolRole). affordsTask(keyboard, workStudyTask).
}).
#pos(e272@10, {}, {goesIn(keyboard, pantry)}, {
  obj(keyboard). hasRole(keyboard, toolRole). affordsTask(keyboard, workStudyTask).
}).
#pos(e273@10, {}, {goesIn(string, hallway)}, {
  obj(string). hasRole(string, toolRole). affordsTask(string, foodPreparationTask). affordsTask(string, leisureTask).
}).
#pos(e274@10, {}, {goesIn(string, kitchen)}, {
  obj(string). hasRole(string, toolRole). affordsTask(string, foodPreparationTask). affordsTask(string, leisureTask).
}).
#pos(e275@10, {}, {goesIn(music_stand, dining_room)}, {
  obj(music_stand). hasRole(music_stand, furnitureRole). affordsTask(music_stand, leisureTask).
}).
#pos(e276@10, {}, {goesIn(music_stand, library)}, {
  obj(music_stand). hasRole(music_stand, furnitureRole). affordsTask(music_stand, leisureTask).
}).
#pos(e277@10, {}, {goesIn(tuning_fork, hallway)}, {
  obj(tuning_fork). hasRole(tuning_fork, toolRole). affordsTask(tuning_fork, foodPreparationTask).
}).
#pos(e278@10, {}, {goesIn(tuning_fork, playroom)}, {
  obj(tuning_fork). hasRole(tuning_fork, toolRole). affordsTask(tuning_fork, foodPreparationTask).
}).
#pos(e279@10, {}, {goesIn(pickle, home_office)}, {
  obj(pickle). hasRole(pickle, consumableRole). affordsTask(pickle, eatingDrinkingTask).
}).
#pos(e280@10, {}, {goesIn(pickle, playroom)}, {
  obj(pickle). hasRole(pickle, consumableRole). affordsTask(pickle, eatingDrinkingTask).
}).
#pos(e281@10, {}, {goesIn(spices, garden)}, {
  obj(spices). hasRole(spices, consumableRole). affordsTask(spices, foodPreparationTask).
}).
#pos(e282@10, {}, {goesIn(spices, playroom)}, {
  obj(spices). hasRole(spices, consumableRole). affordsTask(spices, foodPreparationTask).
}).
#pos(e283@10, {}, {goesIn(trash, garden)}, {
  obj(trash). hasRole(trash, storageContainerRole). affordsTask(trash, wasteDisposalTask).
}).
#pos(e284@10, {}, {goesIn(trash, hallway)}, {
  obj(trash). hasRole(trash, storageContainerRole). affordsTask(trash, wasteDisposalTask).
}).
#pos(e285@10, {}, {goesIn(can, garden)}, {
  obj(can). hasRole(can, storageContainerRole). affordsTask(can, storageTask).
}).
#pos(e286@10, {}, {goesIn(can, storage_room)}, {
  obj(can). hasRole(can, storageContainerRole). affordsTask(can, storageTask).
}).
#pos(e287@10, {}, {goesIn(rice, garage)}, {
  obj(rice). hasRole(rice, consumableRole). affordsTask(rice, eatingDrinkingTask). affordsTask(rice, foodPreparationTask).
}).
#pos(e288@10, {}, {goesIn(rice, hallway)}, {
  obj(rice). hasRole(rice, consumableRole). affordsTask(rice, eatingDrinkingTask). affordsTask(rice, foodPreparationTask).
}).
#pos(e289@10, {}, {goesIn(chess_set, home_office)}, {
  obj(chess_set). hasRole(chess_set, entertainmentRole). affordsTask(chess_set, leisureTask).
}).
#pos(e290@10, {}, {goesIn(chess_set, trash)}, {
  obj(chess_set). hasRole(chess_set, entertainmentRole). affordsTask(chess_set, leisureTask).
}).
#pos(e291@10, {}, {goesIn(chess_knight, drawer)}, {
  obj(chess_knight). hasRole(chess_knight, toolRole). affordsTask(chess_knight, leisureTask).
}).
#pos(e292@10, {}, {goesIn(chess_knight, music_room)}, {
  obj(chess_knight). hasRole(chess_knight, toolRole). affordsTask(chess_knight, leisureTask).
}).
#pos(e293@10, {}, {goesIn(photograph, hallway)}, {
  obj(photograph). hasRole(photograph, documentRole). affordsTask(photograph, leisureTask).
}).
#pos(e294@10, {}, {goesIn(photograph, living_room)}, {
  obj(photograph). hasRole(photograph, documentRole). affordsTask(photograph, leisureTask).
}).
#pos(e295@10, {}, {goesIn(cats, home_office)}, {
  obj(cats). hasRole(cats, consumableRole). affordsTask(cats, eatingDrinkingTask).
}).
#pos(e296@10, {}, {goesIn(cats, pantry)}, {
  obj(cats). hasRole(cats, consumableRole). affordsTask(cats, eatingDrinkingTask).
}).
#pos(e297@10, {}, {goesIn(jar, home_office)}, {
  obj(jar). hasRole(jar, storageContainerRole). affordsTask(jar, storageTask).
}).
#pos(e298@10, {}, {goesIn(jar, laundry_room)}, {
  obj(jar). hasRole(jar, storageContainerRole). affordsTask(jar, storageTask).
}).
#pos(e299@10, {}, {goesIn(coffee_mug, closet)}, {
  obj(coffee_mug). hasRole(coffee_mug, utensilRole). affordsTask(coffee_mug, eatingDrinkingTask).
}).
#pos(e300@10, {}, {goesIn(coffee_mug, storage_room)}, {
  obj(coffee_mug). hasRole(coffee_mug, utensilRole). affordsTask(coffee_mug, eatingDrinkingTask).
}).
#pos(e301@10, {}, {goesIn(teddy_bear, playroom)}, {
  obj(teddy_bear). hasRole(teddy_bear, entertainmentRole). affordsTask(teddy_bear, leisureTask).
}).
#pos(e302@10, {}, {goesIn(teddy_bear, trash)}, {
  obj(teddy_bear). hasRole(teddy_bear, entertainmentRole). affordsTask(teddy_bear, leisureTask).
}).
#pos(e303@10, {}, {goesIn(kitchen_utensil, library)}, {
  obj(kitchen_utensil). hasRole(kitchen_utensil, utensilRole). affordsTask(kitchen_utensil, foodPreparationTask).
}).
#pos(e304@10, {}, {goesIn(kitchen_utensil, trash)}, {
  obj(kitchen_utensil). hasRole(kitchen_utensil, utensilRole). affordsTask(kitchen_utensil, foodPreparationTask).
}).
#pos(e305@10, {}, {goesIn(toothpaste, dining_room)}, {
  obj(toothpaste). hasRole(toothpaste, cleaningToolRole). affordsTask(toothpaste, hygieneTask).
}).
#pos(e306@10, {}, {goesIn(toothpaste, kitchen)}, {
  obj(toothpaste). hasRole(toothpaste, cleaningToolRole). affordsTask(toothpaste, hygieneTask).
}).
#pos(e307@10, {}, {goesIn(toothbrush_bristle, cabinet)}, {
  obj(toothbrush_bristle). affordsTask(toothbrush_bristle, hygieneTask).
}).
#pos(e308@10, {}, {goesIn(toothbrush_bristle, home_office)}, {
  obj(toothbrush_bristle). affordsTask(toothbrush_bristle, hygieneTask).
}).
#pos(e309@10, {}, {goesIn(mold, dining_room)}, {
  obj(mold). hasRole(mold, toolRole). affordsTask(mold, maintenanceTask).
}).
#pos(e310@10, {}, {goesIn(mold, laundry_room)}, {
  obj(mold). hasRole(mold, toolRole). affordsTask(mold, maintenanceTask).
}).
#pos(e311@10, {}, {goesIn(wine_cellar, laundry_room)}, {
  obj(wine_cellar). hasRole(wine_cellar, storageContainerRole). affordsTask(wine_cellar, storageTask).
}).
#pos(e312@10, {}, {goesIn(wine_cellar, music_room)}, {
  obj(wine_cellar). hasRole(wine_cellar, storageContainerRole). affordsTask(wine_cellar, storageTask).
}).
#pos(e313@10, {}, {goesIn(games, garden)}, {
  obj(games). hasRole(games, entertainmentRole). affordsTask(games, leisureTask).
}).
#pos(e314@10, {}, {goesIn(games, table)}, {
  obj(games). hasRole(games, entertainmentRole). affordsTask(games, leisureTask).
}).
#pos(e315@10, {}, {goesIn(swiss_cheese, drawer)}, {
  obj(swiss_cheese). hasRole(swiss_cheese, consumableRole). affordsTask(swiss_cheese, eatingDrinkingTask).
}).
#pos(e316@10, {}, {goesIn(swiss_cheese, living_room)}, {
  obj(swiss_cheese). hasRole(swiss_cheese, consumableRole). affordsTask(swiss_cheese, eatingDrinkingTask).
}).
#pos(e317@10, {}, {goesIn(wax, fridge)}, {
  obj(wax). hasRole(wax, consumableRole). affordsTask(wax, maintenanceTask).
}).
#pos(e318@10, {}, {goesIn(wax, shelf)}, {
  obj(wax). hasRole(wax, consumableRole). affordsTask(wax, maintenanceTask).
}).
#pos(e319@10, {}, {goesIn(eraser, garage)}, {
  obj(eraser). hasRole(eraser, toolRole). affordsTask(eraser, maintenanceTask).
}).
#pos(e320@10, {}, {goesIn(eraser, pantry)}, {
  obj(eraser). hasRole(eraser, toolRole). affordsTask(eraser, maintenanceTask).
}).
#pos(e321@10, {}, {goesIn(aspirin, garage)}, {
  obj(aspirin).
}).
#pos(e322@10, {}, {goesIn(aspirin, trash)}, {
  obj(aspirin).
}).
#pos(e323@10, {}, {goesIn(bill, cabinet)}, {
  obj(bill). hasRole(bill, documentRole). affordsTask(bill, leisureTask).
}).
#pos(e324@10, {}, {goesIn(bill, closet)}, {
  obj(bill). hasRole(bill, documentRole). affordsTask(bill, leisureTask).
}).
#pos(e325@10, {}, {goesIn(newspaper, hallway)}, {
  obj(newspaper). hasRole(newspaper, documentRole).
}).
#pos(e326@10, {}, {goesIn(newspaper, table)}, {
  obj(newspaper). hasRole(newspaper, documentRole).
}).
#pos(e327@10, {}, {goesIn(banana_peels, bed)}, {
  obj(banana_peels). hasRole(banana_peels, wasteRole). affordsTask(banana_peels, wasteDisposalTask).
}).
#pos(e328@10, {}, {goesIn(banana_peels, storage_room)}, {
  obj(banana_peels). hasRole(banana_peels, wasteRole). affordsTask(banana_peels, wasteDisposalTask).
}).
