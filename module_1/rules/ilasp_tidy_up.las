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
#pos(e1@100, {goesIn(account_book, table)}, {}, {
  obj(account_book). hasRole(account_book, documentRole). affordsTask(account_book, workStudyTask).
}).
#pos(e2@100, {goesIn(acne_medication, bathroom)}, {}, {
  obj(acne_medication). hasRole(acne_medication, consumableRole). affordsTask(acne_medication, hygieneTask).
}).
#pos(e3@100, {goesIn(acne_medication, cabinet)}, {}, {
  obj(acne_medication). hasRole(acne_medication, consumableRole). affordsTask(acne_medication, hygieneTask).
}).
#pos(e4@100, {goesIn(acne_medication, library)}, {}, {
  obj(acne_medication). hasRole(acne_medication, consumableRole). affordsTask(acne_medication, hygieneTask).
}).
#pos(e5@100, {goesIn(acorns, garage)}, {}, {
  obj(acorns). hasRole(acorns, consumableRole). affordsTask(acorns, eatingDrinkingTask).
}).
#pos(e6@100, {goesIn(acoustic_guitar, bedroom)}, {}, {
  obj(acoustic_guitar). hasRole(acoustic_guitar, musicalInstrumentRole). affordsTask(acoustic_guitar, leisureTask). affordsTask(acoustic_guitar, workStudyTask).
}).
#pos(e7@100, {goesIn(acoustic_guitar, closet)}, {}, {
  obj(acoustic_guitar). hasRole(acoustic_guitar, musicalInstrumentRole). affordsTask(acoustic_guitar, leisureTask). affordsTask(acoustic_guitar, workStudyTask).
}).
#pos(e8@100, {goesIn(acoustic_guitar, music_room)}, {}, {
  obj(acoustic_guitar). hasRole(acoustic_guitar, musicalInstrumentRole). affordsTask(acoustic_guitar, leisureTask). affordsTask(acoustic_guitar, workStudyTask).
}).
#pos(e9@100, {goesIn(acrylic, garage)}, {}, {
  obj(acrylic). hasRole(acrylic, toolRole). affordsTask(acrylic, maintenanceTask).
}).
#pos(e10@100, {goesIn(acrylic, garden)}, {}, {
  obj(acrylic). hasRole(acrylic, toolRole). affordsTask(acrylic, maintenanceTask).
}).
#pos(e11@100, {goesIn(acrylic, storage_room)}, {}, {
  obj(acrylic). hasRole(acrylic, toolRole). affordsTask(acrylic, maintenanceTask).
}).
#pos(e12@100, {goesIn(air_conditioner, bedroom)}, {}, {
  obj(air_conditioner). hasRole(air_conditioner, applianceRole). affordsTask(air_conditioner, maintenanceTask).
}).
#pos(e13@100, {goesIn(air_conditioning, bedroom)}, {}, {
  obj(air_conditioning). hasRole(air_conditioning, applianceRole). affordsTask(air_conditioning, storageTask).
}).
#pos(e14@100, {goesIn(album, bedroom)}, {}, {
  obj(album). hasRole(album, storageContainerRole). affordsTask(album, leisureTask).
}).
#pos(e15@100, {goesIn(album, closet)}, {}, {
  obj(album). hasRole(album, storageContainerRole). affordsTask(album, leisureTask).
}).
#pos(e16@100, {goesIn(alcohol, fridge)}, {}, {
  obj(alcohol). hasRole(alcohol, consumableRole). affordsTask(alcohol, leisureTask).
}).
#pos(e17@100, {goesIn(alcohol, storage_room)}, {}, {
  obj(alcohol). hasRole(alcohol, consumableRole). affordsTask(alcohol, leisureTask).
}).
#pos(e18@100, {goesIn(aluminum_foil, trash)}, {}, {
  obj(aluminum_foil). hasRole(aluminum_foil, cookwareRole). affordsTask(aluminum_foil, foodPreparationTask).
}).
#pos(e19@100, {goesIn(apple, bedroom)}, {}, {
  obj(apple). hasRole(apple, consumableRole). affordsTask(apple, eatingDrinkingTask).
}).
#pos(e20@100, {goesIn(apple, fridge)}, {}, {
  obj(apple). hasRole(apple, consumableRole). affordsTask(apple, eatingDrinkingTask).
}).
#pos(e21@100, {goesIn(apples, fridge)}, {}, {
  obj(apples). hasRole(apples, consumableRole). affordsTask(apples, eatingDrinkingTask).
}).
#pos(e22@100, {goesIn(apples, storage_room)}, {}, {
  obj(apples). hasRole(apples, consumableRole). affordsTask(apples, eatingDrinkingTask).
}).
#pos(e23@100, {goesIn(apples, table)}, {}, {
  obj(apples). hasRole(apples, consumableRole). affordsTask(apples, eatingDrinkingTask).
}).
#pos(e24@100, {goesIn(appointment_book, table)}, {}, {
  obj(appointment_book). hasRole(appointment_book, documentRole). affordsTask(appointment_book, workStudyTask).
}).
#pos(e25@100, {goesIn(arch, bedroom)}, {}, {
  obj(arch). hasRole(arch, furnitureRole). affordsTask(arch, storageTask).
}).
#pos(e26@100, {goesIn(arch, closet)}, {}, {
  obj(arch). hasRole(arch, furnitureRole). affordsTask(arch, storageTask).
}).
#pos(e27@100, {goesIn(arch, library)}, {}, {
  obj(arch). hasRole(arch, furnitureRole). affordsTask(arch, storageTask).
}).
#pos(e28@100, {goesIn(armchair, home_office)}, {}, {
  obj(armchair). hasRole(armchair, furnitureRole). affordsTask(armchair, leisureTask).
}).
#pos(e29@100, {goesIn(armoire, bedroom)}, {}, {
  obj(armoire). hasRole(armoire, furnitureRole). affordsTask(armoire, storageTask).
}).
#pos(e30@100, {goesIn(armoire, living_room)}, {}, {
  obj(armoire). hasRole(armoire, furnitureRole). affordsTask(armoire, storageTask).
}).
#pos(e31@100, {goesIn(artichoke_hearts, pantry)}, {}, {
  obj(artichoke_hearts). hasRole(artichoke_hearts, consumableRole). affordsTask(artichoke_hearts, eatingDrinkingTask).
}).
#pos(e32@100, {goesIn(artichokes, fridge)}, {}, {
  obj(artichokes). hasRole(artichokes, consumableRole). affordsTask(artichokes, eatingDrinkingTask).
}).
#pos(e33@100, {goesIn(aspirin, table)}, {}, {
  obj(aspirin).
}).
#pos(e34@100, {goesIn(attache_case, bedroom)}, {}, {
  obj(attache_case). hasRole(attache_case, storageContainerRole). affordsTask(attache_case, storageTask).
}).
#pos(e35@100, {goesIn(attache_case, garden)}, {}, {
  obj(attache_case). hasRole(attache_case, storageContainerRole). affordsTask(attache_case, storageTask).
}).
#pos(e36@100, {goesIn(attache_case, hallway)}, {}, {
  obj(attache_case). hasRole(attache_case, storageContainerRole). affordsTask(attache_case, storageTask).
}).
#pos(e37@100, {goesIn(attache_case, kitchen)}, {}, {
  obj(attache_case). hasRole(attache_case, storageContainerRole). affordsTask(attache_case, storageTask).
}).
#pos(e38@100, {goesIn(attache_case, living_room)}, {}, {
  obj(attache_case). hasRole(attache_case, storageContainerRole). affordsTask(attache_case, storageTask).
}).
#pos(e39@100, {goesIn(baby, bedroom)}, {}, {
  obj(baby). hasRole(baby, entertainmentRole). affordsTask(baby, leisureTask).
}).
#pos(e40@100, {goesIn(baby, living_room)}, {}, {
  obj(baby). hasRole(baby, entertainmentRole). affordsTask(baby, leisureTask).
}).
#pos(e41@100, {goesIn(back_garden, bedroom)}, {}, {
  obj(back_garden). hasRole(back_garden, storageContainerRole). affordsTask(back_garden, gardeningTask).
}).
#pos(e42@100, {goesIn(backyard, bedroom)}, {}, {
  obj(backyard). hasRole(backyard, furnitureRole). affordsTask(backyard, gardeningTask). affordsTask(backyard, leisureTask).
}).
#pos(e43@100, {goesIn(bag, bed)}, {}, {
  obj(bag). hasRole(bag, storageContainerRole). affordsTask(bag, storageTask).
}).
#pos(e44@100, {goesIn(bag, drawer)}, {}, {
  obj(bag). hasRole(bag, storageContainerRole). affordsTask(bag, storageTask).
}).
#pos(e45@100, {goesIn(bag, shelf)}, {}, {
  obj(bag). hasRole(bag, storageContainerRole). affordsTask(bag, storageTask).
}).
#pos(e46@100, {goesIn(bag, table)}, {}, {
  obj(bag). hasRole(bag, storageContainerRole). affordsTask(bag, storageTask).
}).
#pos(e47@100, {goesIn(bag, trash)}, {}, {
  obj(bag). hasRole(bag, storageContainerRole). affordsTask(bag, storageTask).
}).
#pos(e48@100, {goesIn(baggage_trunk, storage_room)}, {}, {
  obj(baggage_trunk). hasRole(baggage_trunk, storageContainerRole). affordsTask(baggage_trunk, storageTask).
}).
#pos(e49@100, {goesIn(baking_oven, bedroom)}, {}, {
  obj(baking_oven). hasRole(baking_oven, cookwareRole). affordsTask(baking_oven, foodPreparationTask).
}).
#pos(e50@100, {goesIn(baking_oven, kitchen)}, {}, {
  obj(baking_oven). hasRole(baking_oven, cookwareRole). affordsTask(baking_oven, foodPreparationTask).
}).
#pos(e51@100, {goesIn(baking_oven, living_room)}, {}, {
  obj(baking_oven). hasRole(baking_oven, cookwareRole). affordsTask(baking_oven, foodPreparationTask).
}).
#pos(e52@100, {goesIn(balcony, bedroom)}, {}, {
  obj(balcony). hasRole(balcony, furnitureRole). affordsTask(balcony, leisureTask).
}).
#pos(e53@100, {goesIn(balcony_railing, garden)}, {}, {
  obj(balcony_railing). hasRole(balcony_railing, furnitureRole). affordsTask(balcony_railing, leisureTask).
}).
#pos(e54@100, {goesIn(balcony_seat, garden)}, {}, {
  obj(balcony_seat). hasRole(balcony_seat, furnitureRole). affordsTask(balcony_seat, leisureTask).
}).
#pos(e55@100, {goesIn(ballpoint_pen, drawer)}, {}, {
  obj(ballpoint_pen). hasRole(ballpoint_pen, toolRole).
}).
#pos(e56@100, {goesIn(ballpoint_pen, table)}, {}, {
  obj(ballpoint_pen). hasRole(ballpoint_pen, toolRole).
}).
#pos(e57@100, {goesIn(banana, kitchen)}, {}, {
  obj(banana). hasRole(banana, consumableRole). affordsTask(banana, eatingDrinkingTask).
}).
#pos(e58@100, {goesIn(banana, pantry)}, {}, {
  obj(banana). hasRole(banana, consumableRole). affordsTask(banana, eatingDrinkingTask).
}).
#pos(e59@100, {goesIn(banana_peels, trash)}, {}, {
  obj(banana_peels). hasRole(banana_peels, wasteRole). affordsTask(banana_peels, wasteDisposalTask).
}).
#pos(e60@100, {goesIn(bandages, bathroom)}, {}, {
  obj(bandages). hasRole(bandages, safetyEquipmentRole). affordsTask(bandages, hygieneTask).
}).
#pos(e61@100, {goesIn(bandages, library)}, {}, {
  obj(bandages). hasRole(bandages, safetyEquipmentRole). affordsTask(bandages, hygieneTask).
}).
#pos(e62@100, {goesIn(bandaids, closet)}, {}, {
  obj(bandaids). hasRole(bandaids, consumableRole). hasRole(bandaids, safetyEquipmentRole). affordsTask(bandaids, hygieneTask). affordsTask(bandaids, wasteDisposalTask).
}).
#pos(e63@100, {goesIn(bandaids, garage)}, {}, {
  obj(bandaids). hasRole(bandaids, consumableRole). hasRole(bandaids, safetyEquipmentRole). affordsTask(bandaids, hygieneTask). affordsTask(bandaids, wasteDisposalTask).
}).
#pos(e64@100, {goesIn(bandaids, kitchen)}, {}, {
  obj(bandaids). hasRole(bandaids, consumableRole). hasRole(bandaids, safetyEquipmentRole). affordsTask(bandaids, hygieneTask). affordsTask(bandaids, wasteDisposalTask).
}).
#pos(e65@100, {goesIn(bandaids, pantry)}, {}, {
  obj(bandaids). hasRole(bandaids, consumableRole). hasRole(bandaids, safetyEquipmentRole). affordsTask(bandaids, hygieneTask). affordsTask(bandaids, wasteDisposalTask).
}).
#pos(e66@100, {goesIn(bar_stool, garden)}, {}, {
  obj(bar_stool). hasRole(bar_stool, furnitureRole). affordsTask(bar_stool, leisureTask).
}).
#pos(e67@100, {goesIn(bar_stool, kitchen)}, {}, {
  obj(bar_stool). hasRole(bar_stool, furnitureRole). affordsTask(bar_stool, leisureTask).
}).
#pos(e68@100, {goesIn(barbecue, garage)}, {}, {
  obj(barbecue). hasRole(barbecue, cookwareRole). affordsTask(barbecue, foodPreparationTask).
}).
#pos(e69@100, {goesIn(basement, bedroom)}, {}, {
  obj(basement). hasRole(basement, furnitureRole). affordsTask(basement, storageTask).
}).
#pos(e70@100, {goesIn(basement, closet)}, {}, {
  obj(basement). hasRole(basement, furnitureRole). affordsTask(basement, storageTask).
}).
#pos(e71@100, {goesIn(basement, storage_room)}, {}, {
  obj(basement). hasRole(basement, furnitureRole). affordsTask(basement, storageTask).
}).
#pos(e72@100, {goesIn(basket, kitchen)}, {}, {
  obj(basket). hasRole(basket, storageContainerRole). affordsTask(basket, storageTask).
}).
#pos(e73@100, {goesIn(basket_with_handle, kitchen)}, {}, {
  obj(basket_with_handle). hasRole(basket_with_handle, storageContainerRole). affordsTask(basket_with_handle, storageTask).
}).
#pos(e74@100, {goesIn(bass, bathroom)}, {}, {
  obj(bass). hasRole(bass, consumableRole). affordsTask(bass, eatingDrinkingTask).
}).
#pos(e75@100, {goesIn(bass, closet)}, {}, {
  obj(bass). hasRole(bass, consumableRole). affordsTask(bass, eatingDrinkingTask).
}).
#pos(e76@100, {goesIn(bat, storage_room)}, {}, {
  obj(bat). hasRole(bat, toolRole). affordsTask(bat, leisureTask).
}).
#pos(e77@100, {goesIn(bath, bedroom)}, {}, {
  obj(bath). hasRole(bath, cleaningToolRole). affordsTask(bath, hygieneTask). affordsTask(bath, leisureTask).
}).
#pos(e78@100, {goesIn(bath_shower, bathroom)}, {}, {
  obj(bath_shower). hasRole(bath_shower, cleaningToolRole). affordsTask(bath_shower, hygieneTask).
}).
#pos(e79@100, {goesIn(bath_shower, bedroom)}, {}, {
  obj(bath_shower). hasRole(bath_shower, cleaningToolRole). affordsTask(bath_shower, hygieneTask).
}).
#pos(e80@100, {goesIn(bathroom, bedroom)}, {}, {
  obj(bathroom). hasRole(bathroom, furnitureRole). affordsTask(bathroom, hygieneTask). affordsTask(bathroom, leisureTask).
}).
#pos(e81@100, {goesIn(bathroom, library)}, {}, {
  obj(bathroom). hasRole(bathroom, furnitureRole). affordsTask(bathroom, hygieneTask). affordsTask(bathroom, leisureTask).
}).
#pos(e82@100, {goesIn(batten, bedroom)}, {}, {
  obj(batten). hasRole(batten, toolRole). affordsTask(batten, maintenanceTask).
}).
#pos(e83@100, {goesIn(batten, closet)}, {}, {
  obj(batten). hasRole(batten, toolRole). affordsTask(batten, maintenanceTask).
}).
#pos(e84@100, {goesIn(batten, library)}, {}, {
  obj(batten). hasRole(batten, toolRole). affordsTask(batten, maintenanceTask).
}).
#pos(e85@100, {goesIn(batter, closet)}, {}, {
  obj(batter). hasRole(batter, consumableRole). affordsTask(batter, foodPreparationTask).
}).
#pos(e86@100, {goesIn(batter, garage)}, {}, {
  obj(batter). hasRole(batter, consumableRole). affordsTask(batter, foodPreparationTask).
}).
#pos(e87@100, {goesIn(batter, storage_room)}, {}, {
  obj(batter). hasRole(batter, consumableRole). affordsTask(batter, foodPreparationTask).
}).
#pos(e88@100, {goesIn(battery_charger, garage)}, {}, {
  obj(battery_charger). hasRole(battery_charger, toolRole). affordsTask(battery_charger, maintenanceTask).
}).
#pos(e89@100, {goesIn(bay, bathroom)}, {}, {
  obj(bay). hasRole(bay, storageContainerRole). affordsTask(bay, storageTask).
}).
#pos(e90@100, {goesIn(bay, closet)}, {}, {
  obj(bay). hasRole(bay, storageContainerRole). affordsTask(bay, storageTask).
}).
#pos(e91@100, {goesIn(bay_window, bedroom)}, {}, {
  obj(bay_window). hasRole(bay_window, furnitureRole). affordsTask(bay_window, leisureTask).
}).
#pos(e92@100, {goesIn(bay_window, living_room)}, {}, {
  obj(bay_window). hasRole(bay_window, furnitureRole). affordsTask(bay_window, leisureTask).
}).
#pos(e93@100, {goesIn(beach_towel, bedroom)}, {}, {
  obj(beach_towel). hasRole(beach_towel, beddingRole). affordsTask(beach_towel, leisureTask).
}).
#pos(e94@100, {goesIn(beach_towel, closet)}, {}, {
  obj(beach_towel). hasRole(beach_towel, beddingRole). affordsTask(beach_towel, leisureTask).
}).
#pos(e95@100, {goesIn(beach_towel, hallway)}, {}, {
  obj(beach_towel). hasRole(beach_towel, beddingRole). affordsTask(beach_towel, leisureTask).
}).
#pos(e96@100, {goesIn(beam, bedroom)}, {}, {
  obj(beam). hasRole(beam, toolRole). affordsTask(beam, maintenanceTask).
}).
#pos(e97@100, {goesIn(beam, garage)}, {}, {
  obj(beam). hasRole(beam, toolRole). affordsTask(beam, maintenanceTask).
}).
#pos(e98@100, {goesIn(bean_bag_chair, bedroom)}, {}, {
  obj(bean_bag_chair). hasRole(bean_bag_chair, furnitureRole). affordsTask(bean_bag_chair, leisureTask).
}).
#pos(e99@100, {goesIn(bean_bag_chair, closet)}, {}, {
  obj(bean_bag_chair). hasRole(bean_bag_chair, furnitureRole). affordsTask(bean_bag_chair, leisureTask).
}).
#pos(e100@100, {goesIn(bean_bag_chair, library)}, {}, {
  obj(bean_bag_chair). hasRole(bean_bag_chair, furnitureRole). affordsTask(bean_bag_chair, leisureTask).
}).
#pos(e101@100, {goesIn(bean_bag_chair, living_room)}, {}, {
  obj(bean_bag_chair). hasRole(bean_bag_chair, furnitureRole). affordsTask(bean_bag_chair, leisureTask).
}).
#pos(e102@100, {goesIn(beanbag, bedroom)}, {}, {
  obj(beanbag). hasRole(beanbag, furnitureRole). affordsTask(beanbag, leisureTask).
}).
#pos(e103@100, {goesIn(beanbag_chair, living_room)}, {}, {
  obj(beanbag_chair). hasRole(beanbag_chair, furnitureRole). affordsTask(beanbag_chair, leisureTask). affordsTask(beanbag_chair, sleepingTask).
}).
#pos(e104@100, {goesIn(beanbag_chair, trash)}, {}, {
  obj(beanbag_chair). hasRole(beanbag_chair, furnitureRole). affordsTask(beanbag_chair, leisureTask). affordsTask(beanbag_chair, sleepingTask).
}).
#pos(e105@100, {goesIn(bed, bedroom)}, {}, {
  obj(bed). hasRole(bed, furnitureRole). affordsTask(bed, sleepingTask).
}).
#pos(e106@100, {goesIn(bed, closet)}, {}, {
  obj(bed). hasRole(bed, furnitureRole). affordsTask(bed, sleepingTask).
}).
#pos(e107@100, {goesIn(bed, storage_room)}, {}, {
  obj(bed). hasRole(bed, furnitureRole). affordsTask(bed, sleepingTask).
}).
#pos(e108@100, {goesIn(bed_sheet, bed)}, {}, {
  obj(bed_sheet). hasRole(bed_sheet, beddingRole). affordsTask(bed_sheet, sleepingTask).
}).
#pos(e109@100, {goesIn(bed_sheet, bedroom)}, {}, {
  obj(bed_sheet). hasRole(bed_sheet, beddingRole). affordsTask(bed_sheet, sleepingTask).
}).
#pos(e110@100, {goesIn(bed_sheet, closet)}, {}, {
  obj(bed_sheet). hasRole(bed_sheet, beddingRole). affordsTask(bed_sheet, sleepingTask).
}).
#pos(e111@100, {goesIn(bedroom, bedroom)}, {}, {
  obj(bedroom). hasRole(bedroom, furnitureRole). affordsTask(bedroom, sleepingTask).
}).
#pos(e112@100, {goesIn(beds, bedroom)}, {}, {
  obj(beds). hasRole(beds, furnitureRole). affordsTask(beds, sleepingTask).
}).
#pos(e113@100, {goesIn(beer, bedroom)}, {}, {
  obj(beer). hasRole(beer, consumableRole). affordsTask(beer, eatingDrinkingTask).
}).
#pos(e114@100, {goesIn(beer, closet)}, {}, {
  obj(beer). hasRole(beer, consumableRole). affordsTask(beer, eatingDrinkingTask).
}).
#pos(e115@100, {goesIn(beer, fridge)}, {}, {
  obj(beer). hasRole(beer, consumableRole). affordsTask(beer, eatingDrinkingTask).
}).
#pos(e116@100, {goesIn(beer, garage)}, {}, {
  obj(beer). hasRole(beer, consumableRole). affordsTask(beer, eatingDrinkingTask).
}).
#pos(e117@100, {goesIn(beer, kitchen)}, {}, {
  obj(beer). hasRole(beer, consumableRole). affordsTask(beer, eatingDrinkingTask).
}).
#pos(e118@100, {goesIn(beer, pantry)}, {}, {
  obj(beer). hasRole(beer, consumableRole). affordsTask(beer, eatingDrinkingTask).
}).
#pos(e119@100, {goesIn(beer, shelf)}, {}, {
  obj(beer). hasRole(beer, consumableRole). affordsTask(beer, eatingDrinkingTask).
}).
#pos(e120@100, {goesIn(beer_mug, fridge)}, {}, {
  obj(beer_mug). hasRole(beer_mug, utensilRole). affordsTask(beer_mug, eatingDrinkingTask).
}).
#pos(e121@100, {goesIn(beets, kitchen)}, {}, {
  obj(beets). hasRole(beets, consumableRole). affordsTask(beets, eatingDrinkingTask).
}).
#pos(e122@100, {goesIn(beets, pantry)}, {}, {
  obj(beets). hasRole(beets, consumableRole). affordsTask(beets, eatingDrinkingTask).
}).
#pos(e123@100, {goesIn(bell, garage)}, {}, {
  obj(bell). hasRole(bell, toolRole). affordsTask(bell, maintenanceTask).
}).
#pos(e124@100, {goesIn(belt, bedroom)}, {}, {
  obj(belt). hasRole(belt, clothingRole). affordsTask(belt, dressingTask).
}).
#pos(e125@100, {goesIn(belt, closet)}, {}, {
  obj(belt). hasRole(belt, clothingRole). affordsTask(belt, dressingTask).
}).
#pos(e126@100, {goesIn(bench, garden)}, {}, {
  obj(bench). hasRole(bench, furnitureRole). affordsTask(bench, leisureTask). affordsTask(bench, storageTask).
}).
#pos(e127@100, {goesIn(beverage, bedroom)}, {}, {
  obj(beverage). hasRole(beverage, consumableRole). affordsTask(beverage, eatingDrinkingTask).
}).
#pos(e128@100, {goesIn(bicycle, garage)}, {}, {
  obj(bicycle). hasRole(bicycle, furnitureRole). affordsTask(bicycle, leisureTask). affordsTask(bicycle, workStudyTask).
}).
#pos(e129@100, {goesIn(bicycle_storage_area, garage)}, {}, {
  obj(bicycle_storage_area). hasRole(bicycle_storage_area, storageContainerRole). affordsTask(bicycle_storage_area, storageTask).
}).
#pos(e130@100, {goesIn(bicycles, garage)}, {}, {
  obj(bicycles).
}).
#pos(e131@100, {goesIn(bike, garage)}, {}, {
  obj(bike). hasRole(bike, furnitureRole). affordsTask(bike, leisureTask). affordsTask(bike, workStudyTask).
}).
#pos(e132@100, {goesIn(bill, trash)}, {}, {
  obj(bill). hasRole(bill, documentRole). affordsTask(bill, leisureTask).
}).
#pos(e133@100, {goesIn(bill_file, home_office)}, {}, {
  obj(bill_file). hasRole(bill_file, storageContainerRole). affordsTask(bill_file, storageTask).
}).
#pos(e134@100, {goesIn(binder, home_office)}, {}, {
  obj(binder). hasRole(binder, storageContainerRole). affordsTask(binder, storageTask).
}).
#pos(e135@100, {goesIn(binder, library)}, {}, {
  obj(binder). hasRole(binder, storageContainerRole). affordsTask(binder, storageTask).
}).
#pos(e136@100, {goesIn(binder, living_room)}, {}, {
  obj(binder). hasRole(binder, storageContainerRole). affordsTask(binder, storageTask).
}).
#pos(e137@100, {goesIn(bird, garage)}, {}, {
  obj(bird). hasRole(bird, entertainmentRole). affordsTask(bird, gardeningTask). affordsTask(bird, leisureTask).
}).
#pos(e138@100, {goesIn(bird, garden)}, {}, {
  obj(bird). hasRole(bird, entertainmentRole). affordsTask(bird, gardeningTask). affordsTask(bird, leisureTask).
}).
#pos(e139@100, {goesIn(birds, garage)}, {}, {
  obj(birds). hasRole(birds, consumableRole). affordsTask(birds, eatingDrinkingTask).
}).
#pos(e140@100, {goesIn(birds, library)}, {}, {
  obj(birds). hasRole(birds, consumableRole). affordsTask(birds, eatingDrinkingTask).
}).
#pos(e141@100, {goesIn(birth_control_pill, bedroom)}, {}, {
  obj(birth_control_pill). hasRole(birth_control_pill, consumableRole). affordsTask(birth_control_pill, eatingDrinkingTask).
}).
#pos(e142@100, {goesIn(blanket, bedroom)}, {}, {
  obj(blanket). hasRole(blanket, beddingRole). affordsTask(blanket, sleepingTask).
}).
#pos(e143@100, {goesIn(blanket, closet)}, {}, {
  obj(blanket). hasRole(blanket, beddingRole). affordsTask(blanket, sleepingTask).
}).
#pos(e144@100, {goesIn(blanket, hallway)}, {}, {
  obj(blanket). hasRole(blanket, beddingRole). affordsTask(blanket, sleepingTask).
}).
#pos(e145@100, {goesIn(blanketing, bedroom)}, {}, {
  obj(blanketing). hasRole(blanketing, beddingRole). affordsTask(blanketing, sleepingTask).
}).
#pos(e146@100, {goesIn(blanketing, hallway)}, {}, {
  obj(blanketing). hasRole(blanketing, beddingRole). affordsTask(blanketing, sleepingTask).
}).
#pos(e147@100, {goesIn(blankets, bedroom)}, {}, {
  obj(blankets). hasRole(blankets, beddingRole). affordsTask(blankets, sleepingTask).
}).
#pos(e148@100, {goesIn(blankets, drawer)}, {}, {
  obj(blankets). hasRole(blankets, beddingRole). affordsTask(blankets, sleepingTask).
}).
#pos(e149@100, {goesIn(blankets, garage)}, {}, {
  obj(blankets). hasRole(blankets, beddingRole). affordsTask(blankets, sleepingTask).
}).
#pos(e150@100, {goesIn(blankets, storage_room)}, {}, {
  obj(blankets). hasRole(blankets, beddingRole). affordsTask(blankets, sleepingTask).
}).
#pos(e151@100, {goesIn(blowdryer, bathroom)}, {}, {
  obj(blowdryer). hasRole(blowdryer, applianceRole). affordsTask(blowdryer, leisureTask).
}).
#pos(e152@100, {goesIn(blowdryer, closet)}, {}, {
  obj(blowdryer). hasRole(blowdryer, applianceRole). affordsTask(blowdryer, leisureTask).
}).
#pos(e153@100, {goesIn(blowdryer, library)}, {}, {
  obj(blowdryer). hasRole(blowdryer, applianceRole). affordsTask(blowdryer, leisureTask).
}).
#pos(e154@100, {goesIn(board_game, bedroom)}, {}, {
  obj(board_game). hasRole(board_game, entertainmentRole). affordsTask(board_game, leisureTask).
}).
#pos(e155@100, {goesIn(board_game, cabinet)}, {}, {
  obj(board_game). hasRole(board_game, entertainmentRole). affordsTask(board_game, leisureTask).
}).
#pos(e156@100, {goesIn(board_game, living_room)}, {}, {
  obj(board_game). hasRole(board_game, entertainmentRole). affordsTask(board_game, leisureTask).
}).
#pos(e157@100, {goesIn(board_game, shelf)}, {}, {
  obj(board_game). hasRole(board_game, entertainmentRole). affordsTask(board_game, leisureTask).
}).
#pos(e158@100, {goesIn(book, bed)}, {}, {
  obj(book). hasRole(book, documentRole). affordsTask(book, leisureTask). affordsTask(book, workStudyTask).
}).
#pos(e159@100, {goesIn(book, bedroom)}, {}, {
  obj(book). hasRole(book, documentRole). affordsTask(book, leisureTask). affordsTask(book, workStudyTask).
}).
#pos(e160@100, {goesIn(book, closet)}, {}, {
  obj(book). hasRole(book, documentRole). affordsTask(book, leisureTask). affordsTask(book, workStudyTask).
}).
#pos(e161@100, {goesIn(book, drawer)}, {}, {
  obj(book). hasRole(book, documentRole). affordsTask(book, leisureTask). affordsTask(book, workStudyTask).
}).
#pos(e162@100, {goesIn(book, garden)}, {}, {
  obj(book). hasRole(book, documentRole). affordsTask(book, leisureTask). affordsTask(book, workStudyTask).
}).
#pos(e163@100, {goesIn(book, home_office)}, {}, {
  obj(book). hasRole(book, documentRole). affordsTask(book, leisureTask). affordsTask(book, workStudyTask).
}).
#pos(e164@100, {goesIn(book, library)}, {}, {
  obj(book). hasRole(book, documentRole). affordsTask(book, leisureTask). affordsTask(book, workStudyTask).
}).
#pos(e165@100, {goesIn(book, living_room)}, {}, {
  obj(book). hasRole(book, documentRole). affordsTask(book, leisureTask). affordsTask(book, workStudyTask).
}).
#pos(e166@100, {goesIn(book, shelf)}, {}, {
  obj(book). hasRole(book, documentRole). affordsTask(book, leisureTask). affordsTask(book, workStudyTask).
}).
#pos(e167@100, {goesIn(book, table)}, {}, {
  obj(book). hasRole(book, documentRole). affordsTask(book, leisureTask). affordsTask(book, workStudyTask).
}).
#pos(e168@100, {goesIn(book_end, bedroom)}, {}, {
  obj(book_end). hasRole(book_end, furnitureRole). affordsTask(book_end, storageTask).
}).
#pos(e169@100, {goesIn(book_end, closet)}, {}, {
  obj(book_end). hasRole(book_end, furnitureRole). affordsTask(book_end, storageTask).
}).
#pos(e170@100, {goesIn(book_end, library)}, {}, {
  obj(book_end). hasRole(book_end, furnitureRole). affordsTask(book_end, storageTask).
}).
#pos(e171@100, {goesIn(book_end, shelf)}, {}, {
  obj(book_end). hasRole(book_end, furnitureRole). affordsTask(book_end, storageTask).
}).
#pos(e172@100, {goesIn(bookcase, bedroom)}, {}, {
  obj(bookcase). hasRole(bookcase, storageContainerRole). affordsTask(bookcase, storageTask).
}).
#pos(e173@100, {goesIn(bookcase, home_office)}, {}, {
  obj(bookcase). hasRole(bookcase, storageContainerRole). affordsTask(bookcase, storageTask).
}).
#pos(e174@100, {goesIn(bookcase, living_room)}, {}, {
  obj(bookcase). hasRole(bookcase, storageContainerRole). affordsTask(bookcase, storageTask).
}).
#pos(e175@100, {goesIn(bookend, library)}, {}, {
  obj(bookend). hasRole(bookend, furnitureRole). affordsTask(bookend, storageTask).
}).
#pos(e176@100, {goesIn(bookend, shelf)}, {}, {
  obj(bookend). hasRole(bookend, furnitureRole). affordsTask(bookend, storageTask).
}).
#pos(e177@100, {goesIn(books, bed)}, {}, {
  obj(books). hasRole(books, documentRole). affordsTask(books, leisureTask). affordsTask(books, workStudyTask).
}).
#pos(e178@100, {goesIn(books, shelf)}, {}, {
  obj(books). hasRole(books, documentRole). affordsTask(books, leisureTask). affordsTask(books, workStudyTask).
}).
#pos(e179@100, {goesIn(books, storage_room)}, {}, {
  obj(books). hasRole(books, documentRole). affordsTask(books, leisureTask). affordsTask(books, workStudyTask).
}).
#pos(e180@100, {goesIn(books, table)}, {}, {
  obj(books). hasRole(books, documentRole). affordsTask(books, leisureTask). affordsTask(books, workStudyTask).
}).
#pos(e181@100, {goesIn(bookshelf, bedroom)}, {}, {
  obj(bookshelf). hasRole(bookshelf, storageContainerRole). affordsTask(bookshelf, storageTask).
}).
#pos(e182@100, {goesIn(bookshelf, library)}, {}, {
  obj(bookshelf). hasRole(bookshelf, storageContainerRole). affordsTask(bookshelf, storageTask).
}).
#pos(e183@100, {goesIn(boots, bedroom)}, {}, {
  obj(boots). hasRole(boots, clothingRole). affordsTask(boots, dressingTask).
}).
#pos(e184@100, {goesIn(boots, closet)}, {}, {
  obj(boots). hasRole(boots, clothingRole). affordsTask(boots, dressingTask).
}).
#pos(e185@100, {goesIn(bottle, bedroom)}, {}, {
  obj(bottle). hasRole(bottle, storageContainerRole). affordsTask(bottle, eatingDrinkingTask).
}).
#pos(e186@100, {goesIn(bottle, fridge)}, {}, {
  obj(bottle). hasRole(bottle, storageContainerRole). affordsTask(bottle, eatingDrinkingTask).
}).
#pos(e187@100, {goesIn(bottle_of_vodka, fridge)}, {}, {
  obj(bottle_of_vodka). hasRole(bottle_of_vodka, consumableRole). affordsTask(bottle_of_vodka, eatingDrinkingTask).
}).
#pos(e188@100, {goesIn(bottle_of_vodka, table)}, {}, {
  obj(bottle_of_vodka). hasRole(bottle_of_vodka, consumableRole). affordsTask(bottle_of_vodka, eatingDrinkingTask).
}).
#pos(e189@100, {goesIn(bottled_water, fridge)}, {}, {
  obj(bottled_water). hasRole(bottled_water, consumableRole). affordsTask(bottled_water, eatingDrinkingTask).
}).
#pos(e190@100, {goesIn(bowl, cabinet)}, {}, {
  obj(bowl). hasRole(bowl, utensilRole). affordsTask(bowl, eatingDrinkingTask).
}).
#pos(e191@100, {goesIn(bowl, fridge)}, {}, {
  obj(bowl). hasRole(bowl, utensilRole). affordsTask(bowl, eatingDrinkingTask).
}).
#pos(e192@100, {goesIn(bowl, kitchen)}, {}, {
  obj(bowl). hasRole(bowl, utensilRole). affordsTask(bowl, eatingDrinkingTask).
}).
#pos(e193@100, {goesIn(bowl, sink)}, {}, {
  obj(bowl). hasRole(bowl, utensilRole). affordsTask(bowl, eatingDrinkingTask).
}).
#pos(e194@100, {goesIn(bowl, table)}, {}, {
  obj(bowl). hasRole(bowl, utensilRole). affordsTask(bowl, eatingDrinkingTask).
}).
#pos(e195@100, {goesIn(box, bedroom)}, {}, {
  obj(box). hasRole(box, storageContainerRole). affordsTask(box, storageTask).
}).
#pos(e196@100, {goesIn(box, closet)}, {}, {
  obj(box). hasRole(box, storageContainerRole). affordsTask(box, storageTask).
}).
#pos(e197@100, {goesIn(box, garage)}, {}, {
  obj(box). hasRole(box, storageContainerRole). affordsTask(box, storageTask).
}).
#pos(e198@100, {goesIn(box, storage_room)}, {}, {
  obj(box). hasRole(box, storageContainerRole). affordsTask(box, storageTask).
}).
#pos(e199@100, {goesIn(boxes, bedroom)}, {}, {
  obj(boxes). hasRole(boxes, storageContainerRole). affordsTask(boxes, storageTask).
}).
#pos(e200@100, {goesIn(boxes, closet)}, {}, {
  obj(boxes). hasRole(boxes, storageContainerRole). affordsTask(boxes, storageTask).
}).
#pos(e201@100, {goesIn(boxes, garage)}, {}, {
  obj(boxes). hasRole(boxes, storageContainerRole). affordsTask(boxes, storageTask).
}).
#pos(e202@100, {goesIn(boxes, storage_room)}, {}, {
  obj(boxes). hasRole(boxes, storageContainerRole). affordsTask(boxes, storageTask).
}).
#pos(e203@100, {goesIn(bra, drawer)}, {}, {
  obj(bra). hasRole(bra, clothingRole). affordsTask(bra, dressingTask).
}).
#pos(e204@100, {goesIn(brass, bedroom)}, {}, {
  obj(brass). hasRole(brass, decorationRole).
}).
#pos(e205@100, {goesIn(bread, fridge)}, {}, {
  obj(bread). hasRole(bread, consumableRole). affordsTask(bread, eatingDrinkingTask). affordsTask(bread, foodPreparationTask).
}).
#pos(e206@100, {goesIn(bread, kitchen)}, {}, {
  obj(bread). hasRole(bread, consumableRole). affordsTask(bread, eatingDrinkingTask). affordsTask(bread, foodPreparationTask).
}).
#pos(e207@100, {goesIn(bread, pantry)}, {}, {
  obj(bread). hasRole(bread, consumableRole). affordsTask(bread, eatingDrinkingTask). affordsTask(bread, foodPreparationTask).
}).
#pos(e208@100, {goesIn(breakfast, table)}, {}, {
  obj(breakfast). hasRole(breakfast, consumableRole). affordsTask(breakfast, eatingDrinkingTask).
}).
#pos(e209@100, {goesIn(bricks, garage)}, {}, {
  obj(bricks). hasRole(bricks, toolRole). affordsTask(bricks, maintenanceTask).
}).
#pos(e210@100, {goesIn(briefcase, table)}, {}, {
  obj(briefcase). hasRole(briefcase, storageContainerRole). affordsTask(briefcase, storageTask).
}).
#pos(e211@100, {goesIn(broccoli, kitchen)}, {}, {
  obj(broccoli). hasRole(broccoli, consumableRole). affordsTask(broccoli, eatingDrinkingTask).
}).
#pos(e212@100, {goesIn(broom, bedroom)}, {}, {
  obj(broom). hasRole(broom, cleaningToolRole). affordsTask(broom, cleaningTask).
}).
#pos(e213@100, {goesIn(broom, closet)}, {}, {
  obj(broom). hasRole(broom, cleaningToolRole). affordsTask(broom, cleaningTask).
}).
#pos(e214@100, {goesIn(broom, garage)}, {}, {
  obj(broom). hasRole(broom, cleaningToolRole). affordsTask(broom, cleaningTask).
}).
#pos(e215@100, {goesIn(brush, garage)}, {}, {
  obj(brush). hasRole(brush, toolRole). affordsTask(brush, cleaningTask).
}).
#pos(e216@100, {goesIn(bucket, garage)}, {}, {
  obj(bucket). hasRole(bucket, storageContainerRole). affordsTask(bucket, storageTask).
}).
#pos(e217@100, {goesIn(bucket, kitchen)}, {}, {
  obj(bucket). hasRole(bucket, storageContainerRole). affordsTask(bucket, storageTask).
}).
#pos(e218@100, {goesIn(bucket, pantry)}, {}, {
  obj(bucket). hasRole(bucket, storageContainerRole). affordsTask(bucket, storageTask).
}).
#pos(e219@100, {goesIn(bucket, storage_room)}, {}, {
  obj(bucket). hasRole(bucket, storageContainerRole). affordsTask(bucket, storageTask).
}).
#pos(e220@100, {goesIn(bulb, bedroom)}, {}, {
  obj(bulb). hasRole(bulb, lightingRole). affordsTask(bulb, leisureTask).
}).
#pos(e221@100, {goesIn(bullet, closet)}, {}, {
  obj(bullet). hasRole(bullet, toolRole). affordsTask(bullet, maintenanceTask).
}).
#pos(e222@100, {goesIn(bullet, garage)}, {}, {
  obj(bullet). hasRole(bullet, toolRole). affordsTask(bullet, maintenanceTask).
}).
#pos(e223@100, {goesIn(bullet, library)}, {}, {
  obj(bullet). hasRole(bullet, toolRole). affordsTask(bullet, maintenanceTask).
}).
#pos(e224@100, {goesIn(bullet, storage_room)}, {}, {
  obj(bullet). hasRole(bullet, toolRole). affordsTask(bullet, maintenanceTask).
}).
#pos(e225@100, {goesIn(bungalow, bed)}, {}, {
  obj(bungalow). hasRole(bungalow, furnitureRole). affordsTask(bungalow, leisureTask).
}).
#pos(e226@100, {goesIn(bureau, bedroom)}, {}, {
  obj(bureau). hasRole(bureau, furnitureRole). affordsTask(bureau, storageTask).
}).
#pos(e227@100, {goesIn(bureau, home_office)}, {}, {
  obj(bureau). hasRole(bureau, furnitureRole). affordsTask(bureau, storageTask).
}).
#pos(e228@100, {goesIn(butter, fridge)}, {}, {
  obj(butter). hasRole(butter, consumableRole). affordsTask(butter, eatingDrinkingTask).
}).
#pos(e229@100, {goesIn(buttons, garage)}, {}, {
  obj(buttons). hasRole(buttons, toolRole). affordsTask(buttons, maintenanceTask).
}).
#pos(e230@100, {goesIn(buttons, garden)}, {}, {
  obj(buttons). hasRole(buttons, toolRole). affordsTask(buttons, maintenanceTask).
}).
#pos(e231@100, {goesIn(buttons, kitchen)}, {}, {
  obj(buttons). hasRole(buttons, toolRole). affordsTask(buttons, maintenanceTask).
}).
#pos(e232@100, {goesIn(buttons, living_room)}, {}, {
  obj(buttons). hasRole(buttons, toolRole). affordsTask(buttons, maintenanceTask).
}).
#pos(e233@100, {goesIn(buttons, pantry)}, {}, {
  obj(buttons). hasRole(buttons, toolRole). affordsTask(buttons, maintenanceTask).
}).
#pos(e234@100, {goesIn(buttons, storage_room)}, {}, {
  obj(buttons). hasRole(buttons, toolRole). affordsTask(buttons, maintenanceTask).
}).
#pos(e235@100, {goesIn(cabbage, fridge)}, {}, {
  obj(cabbage). hasRole(cabbage, consumableRole). affordsTask(cabbage, eatingDrinkingTask).
}).
#pos(e236@100, {goesIn(cabbage, kitchen)}, {}, {
  obj(cabbage). hasRole(cabbage, consumableRole). affordsTask(cabbage, eatingDrinkingTask).
}).
#pos(e237@100, {goesIn(cabinets, kitchen)}, {}, {
  obj(cabinets). hasRole(cabinets, storageContainerRole). affordsTask(cabinets, storageTask).
}).
#pos(e238@100, {goesIn(cabinets, pantry)}, {}, {
  obj(cabinets). hasRole(cabinets, storageContainerRole). affordsTask(cabinets, storageTask).
}).
#pos(e239@100, {goesIn(cable, bedroom)}, {}, {
  obj(cable). hasRole(cable, toolRole). affordsTask(cable, maintenanceTask).
}).
#pos(e240@100, {goesIn(cable, library)}, {}, {
  obj(cable). hasRole(cable, toolRole). affordsTask(cable, maintenanceTask).
}).
#pos(e241@100, {goesIn(cable, living_room)}, {}, {
  obj(cable). hasRole(cable, toolRole). affordsTask(cable, maintenanceTask).
}).
#pos(e242@100, {goesIn(cable, table)}, {}, {
  obj(cable). hasRole(cable, toolRole). affordsTask(cable, maintenanceTask).
}).
#pos(e243@100, {goesIn(cafe, kitchen)}, {}, {
  obj(cafe). hasRole(cafe, consumableRole). affordsTask(cafe, eatingDrinkingTask).
}).
#pos(e244@100, {goesIn(cake, fridge)}, {}, {
  obj(cake). hasRole(cake, consumableRole). affordsTask(cake, eatingDrinkingTask).
}).
#pos(e245@100, {goesIn(cake, kitchen)}, {}, {
  obj(cake). hasRole(cake, consumableRole). affordsTask(cake, eatingDrinkingTask).
}).
#pos(e246@100, {goesIn(calculator, table)}, {}, {
  obj(calculator). hasRole(calculator, toolRole). affordsTask(calculator, workStudyTask).
}).
#pos(e247@100, {goesIn(calendar, fridge)}, {}, {
  obj(calendar). hasRole(calendar, documentRole). affordsTask(calendar, workStudyTask).
}).
#pos(e248@100, {goesIn(calendar, table)}, {}, {
  obj(calendar). hasRole(calendar, documentRole). affordsTask(calendar, workStudyTask).
}).
#pos(e249@100, {goesIn(calendar_pad, table)}, {}, {
  obj(calendar_pad). hasRole(calendar_pad, storageContainerRole). affordsTask(calendar_pad, leisureTask).
}).
#pos(e250@100, {goesIn(camera, drawer)}, {}, {
  obj(camera). hasRole(camera, toolRole). affordsTask(camera, leisureTask). affordsTask(camera, workStudyTask).
}).
#pos(e251@100, {goesIn(can, cabinet)}, {}, {
  obj(can). hasRole(can, storageContainerRole). affordsTask(can, storageTask).
}).
#pos(e252@100, {goesIn(can, kitchen)}, {}, {
  obj(can). hasRole(can, storageContainerRole). affordsTask(can, storageTask).
}).
#pos(e253@100, {goesIn(can, pantry)}, {}, {
  obj(can). hasRole(can, storageContainerRole). affordsTask(can, storageTask).
}).
#pos(e254@100, {goesIn(can, shelf)}, {}, {
  obj(can). hasRole(can, storageContainerRole). affordsTask(can, storageTask).
}).
#pos(e255@100, {goesIn(can, trash)}, {}, {
  obj(can). hasRole(can, storageContainerRole). affordsTask(can, storageTask).
}).
#pos(e256@100, {goesIn(can_opener, kitchen)}, {}, {
  obj(can_opener). hasRole(can_opener, toolRole). affordsTask(can_opener, foodPreparationTask).
}).
#pos(e257@100, {goesIn(candle, bedroom)}, {}, {
  obj(candle). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e258@100, {goesIn(candle, drawer)}, {}, {
  obj(candle). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e259@100, {goesIn(candle, kitchen)}, {}, {
  obj(candle). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e260@100, {goesIn(candle, shelf)}, {}, {
  obj(candle). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e261@100, {goesIn(candle, storage_room)}, {}, {
  obj(candle). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e262@100, {goesIn(candle, table)}, {}, {
  obj(candle). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e263@100, {goesIn(candlestick, table)}, {}, {
  obj(candlestick). hasRole(candlestick, utensilRole). affordsTask(candlestick, leisureTask).
}).
#pos(e264@100, {goesIn(candy, closet)}, {}, {
  obj(candy). hasRole(candy, consumableRole). affordsTask(candy, eatingDrinkingTask).
}).
#pos(e265@100, {goesIn(candy, garage)}, {}, {
  obj(candy). hasRole(candy, consumableRole). affordsTask(candy, eatingDrinkingTask).
}).
#pos(e266@100, {goesIn(candy, pantry)}, {}, {
  obj(candy). hasRole(candy, consumableRole). affordsTask(candy, eatingDrinkingTask).
}).
#pos(e267@100, {goesIn(candy, storage_room)}, {}, {
  obj(candy). hasRole(candy, consumableRole). affordsTask(candy, eatingDrinkingTask).
}).
#pos(e268@100, {goesIn(cannabis, garden)}, {}, {
  obj(cannabis). hasRole(cannabis, consumableRole). affordsTask(cannabis, leisureTask).
}).
#pos(e269@100, {goesIn(cans, kitchen)}, {}, {
  obj(cans). hasRole(cans, storageContainerRole). affordsTask(cans, storageTask).
}).
#pos(e270@100, {goesIn(cans, pantry)}, {}, {
  obj(cans). hasRole(cans, storageContainerRole). affordsTask(cans, storageTask).
}).
#pos(e271@100, {goesIn(cans_of_paint, closet)}, {}, {
  obj(cans_of_paint). hasRole(cans_of_paint, storageContainerRole). affordsTask(cans_of_paint, maintenanceTask).
}).
#pos(e272@100, {goesIn(cans_of_paint, garage)}, {}, {
  obj(cans_of_paint). hasRole(cans_of_paint, storageContainerRole). affordsTask(cans_of_paint, maintenanceTask).
}).
#pos(e273@100, {goesIn(cans_of_paint, storage_room)}, {}, {
  obj(cans_of_paint). hasRole(cans_of_paint, storageContainerRole). affordsTask(cans_of_paint, maintenanceTask).
}).
#pos(e274@100, {goesIn(card, garden)}, {}, {
  obj(card). hasRole(card, consumableRole). affordsTask(card, eatingDrinkingTask).
}).
#pos(e275@100, {goesIn(card_case, drawer)}, {}, {
  obj(card_case). hasRole(card_case, storageContainerRole). affordsTask(card_case, storageTask).
}).
#pos(e276@100, {goesIn(card_case, table)}, {}, {
  obj(card_case). hasRole(card_case, storageContainerRole). affordsTask(card_case, storageTask).
}).
#pos(e277@100, {goesIn(card_catalog, kitchen)}, {}, {
  obj(card_catalog). hasRole(card_catalog, storageContainerRole). affordsTask(card_catalog, storageTask).
}).
#pos(e278@100, {goesIn(card_catalog, library)}, {}, {
  obj(card_catalog). hasRole(card_catalog, storageContainerRole). affordsTask(card_catalog, storageTask).
}).
#pos(e279@100, {goesIn(cardboard, closet)}, {}, {
  obj(cardboard). hasRole(cardboard, storageContainerRole). affordsTask(cardboard, storageTask).
}).
#pos(e280@100, {goesIn(cardboard, garage)}, {}, {
  obj(cardboard). hasRole(cardboard, storageContainerRole). affordsTask(cardboard, storageTask).
}).
#pos(e281@100, {goesIn(cardboard, storage_room)}, {}, {
  obj(cardboard). hasRole(cardboard, storageContainerRole). affordsTask(cardboard, storageTask).
}).
#pos(e282@100, {goesIn(cardboard_box, bedroom)}, {}, {
  obj(cardboard_box). hasRole(cardboard_box, storageContainerRole). affordsTask(cardboard_box, storageTask).
}).
#pos(e283@100, {goesIn(cardboard_box, garage)}, {}, {
  obj(cardboard_box). hasRole(cardboard_box, storageContainerRole). affordsTask(cardboard_box, storageTask).
}).
#pos(e284@100, {goesIn(cardboard_box, trash)}, {}, {
  obj(cardboard_box). hasRole(cardboard_box, storageContainerRole). affordsTask(cardboard_box, storageTask).
}).
#pos(e285@100, {goesIn(cards, table)}, {}, {
  obj(cards). hasRole(cards, entertainmentRole). affordsTask(cards, leisureTask).
}).
#pos(e286@100, {goesIn(carpet, bathroom)}, {}, {
  obj(carpet). hasRole(carpet, furnitureRole). affordsTask(carpet, leisureTask).
}).
#pos(e287@100, {goesIn(carpet, bed)}, {}, {
  obj(carpet). hasRole(carpet, furnitureRole). affordsTask(carpet, leisureTask).
}).
#pos(e288@100, {goesIn(carpet, bedroom)}, {}, {
  obj(carpet). hasRole(carpet, furnitureRole). affordsTask(carpet, leisureTask).
}).
#pos(e289@100, {goesIn(carpet, closet)}, {}, {
  obj(carpet). hasRole(carpet, furnitureRole). affordsTask(carpet, leisureTask).
}).
#pos(e290@100, {goesIn(carpet, library)}, {}, {
  obj(carpet). hasRole(carpet, furnitureRole). affordsTask(carpet, leisureTask).
}).
#pos(e291@100, {goesIn(carpet, table)}, {}, {
  obj(carpet). hasRole(carpet, furnitureRole). affordsTask(carpet, leisureTask).
}).
#pos(e292@100, {goesIn(carpeting, bed)}, {}, {
  obj(carpeting). hasRole(carpeting, furnitureRole). affordsTask(carpeting, leisureTask).
}).
#pos(e293@100, {goesIn(carpeting, bedroom)}, {}, {
  obj(carpeting). hasRole(carpeting, furnitureRole). affordsTask(carpeting, leisureTask).
}).
#pos(e294@100, {goesIn(carrots, fridge)}, {}, {
  obj(carrots). hasRole(carrots, consumableRole). affordsTask(carrots, eatingDrinkingTask). affordsTask(carrots, foodPreparationTask).
}).
#pos(e295@100, {goesIn(carrots, storage_room)}, {}, {
  obj(carrots). hasRole(carrots, consumableRole). affordsTask(carrots, eatingDrinkingTask). affordsTask(carrots, foodPreparationTask).
}).
#pos(e296@100, {goesIn(cash_register, storage_room)}, {}, {
  obj(cash_register). hasRole(cash_register, applianceRole). affordsTask(cash_register, workStudyTask).
}).
#pos(e297@100, {goesIn(cat, bed)}, {}, {
  obj(cat). hasRole(cat, consumableRole). affordsTask(cat, leisureTask).
}).
#pos(e298@100, {goesIn(cat, bedroom)}, {}, {
  obj(cat). hasRole(cat, consumableRole). affordsTask(cat, leisureTask).
}).
#pos(e299@100, {goesIn(cat, closet)}, {}, {
  obj(cat). hasRole(cat, consumableRole). affordsTask(cat, leisureTask).
}).
#pos(e300@100, {goesIn(cat, garage)}, {}, {
  obj(cat). hasRole(cat, consumableRole). affordsTask(cat, leisureTask).
}).
#pos(e301@100, {goesIn(cat, garden)}, {}, {
  obj(cat). hasRole(cat, consumableRole). affordsTask(cat, leisureTask).
}).
#pos(e302@100, {goesIn(cat, hallway)}, {}, {
  obj(cat). hasRole(cat, consumableRole). affordsTask(cat, leisureTask).
}).
#pos(e303@100, {goesIn(cat, kitchen)}, {}, {
  obj(cat). hasRole(cat, consumableRole). affordsTask(cat, leisureTask).
}).
#pos(e304@100, {goesIn(cat, library)}, {}, {
  obj(cat). hasRole(cat, consumableRole). affordsTask(cat, leisureTask).
}).
#pos(e305@100, {goesIn(cat, living_room)}, {}, {
  obj(cat). hasRole(cat, consumableRole). affordsTask(cat, leisureTask).
}).
#pos(e306@100, {goesIn(cat, shelf)}, {}, {
  obj(cat). hasRole(cat, consumableRole). affordsTask(cat, leisureTask).
}).
#pos(e307@100, {goesIn(cat, storage_room)}, {}, {
  obj(cat). hasRole(cat, consumableRole). affordsTask(cat, leisureTask).
}).
#pos(e308@100, {goesIn(cat, table)}, {}, {
  obj(cat). hasRole(cat, consumableRole). affordsTask(cat, leisureTask).
}).
#pos(e309@100, {goesIn(cats, shelf)}, {}, {
  obj(cats). hasRole(cats, consumableRole). affordsTask(cats, eatingDrinkingTask).
}).
#pos(e310@100, {goesIn(cd_rom, closet)}, {}, {
  obj(cd_rom). hasRole(cd_rom, storageContainerRole). affordsTask(cd_rom, storageTask).
}).
#pos(e311@100, {goesIn(cd_rom, garage)}, {}, {
  obj(cd_rom). hasRole(cd_rom, storageContainerRole). affordsTask(cd_rom, storageTask).
}).
#pos(e312@100, {goesIn(cd_rom, storage_room)}, {}, {
  obj(cd_rom). hasRole(cd_rom, storageContainerRole). affordsTask(cd_rom, storageTask).
}).
#pos(e313@100, {goesIn(cd_rom, table)}, {}, {
  obj(cd_rom). hasRole(cd_rom, storageContainerRole). affordsTask(cd_rom, storageTask).
}).
#pos(e314@100, {goesIn(cds, drawer)}, {}, {
  obj(cds). hasRole(cds, storageContainerRole). affordsTask(cds, leisureTask).
}).
#pos(e315@100, {goesIn(ceiling, bedroom)}, {}, {
  obj(ceiling). hasRole(ceiling, furnitureRole). affordsTask(ceiling, storageTask).
}).
#pos(e316@100, {goesIn(celery, fridge)}, {}, {
  obj(celery). hasRole(celery, consumableRole). affordsTask(celery, eatingDrinkingTask).
}).
#pos(e317@100, {goesIn(cellar, closet)}, {}, {
  obj(cellar). hasRole(cellar, storageContainerRole). affordsTask(cellar, storageTask).
}).
#pos(e318@100, {goesIn(cellar, storage_room)}, {}, {
  obj(cellar). hasRole(cellar, storageContainerRole). affordsTask(cellar, storageTask).
}).
#pos(e319@100, {goesIn(cereal, cabinet)}, {}, {
  obj(cereal). hasRole(cereal, consumableRole). affordsTask(cereal, eatingDrinkingTask).
}).
#pos(e320@100, {goesIn(cereal, closet)}, {}, {
  obj(cereal). hasRole(cereal, consumableRole). affordsTask(cereal, eatingDrinkingTask).
}).
#pos(e321@100, {goesIn(cereal, fridge)}, {}, {
  obj(cereal). hasRole(cereal, consumableRole). affordsTask(cereal, eatingDrinkingTask).
}).
#pos(e322@100, {goesIn(cereal, garage)}, {}, {
  obj(cereal). hasRole(cereal, consumableRole). affordsTask(cereal, eatingDrinkingTask).
}).
#pos(e323@100, {goesIn(cereal, kitchen)}, {}, {
  obj(cereal). hasRole(cereal, consumableRole). affordsTask(cereal, eatingDrinkingTask).
}).
#pos(e324@100, {goesIn(cereal, pantry)}, {}, {
  obj(cereal). hasRole(cereal, consumableRole). affordsTask(cereal, eatingDrinkingTask).
}).
#pos(e325@100, {goesIn(cereal, shelf)}, {}, {
  obj(cereal). hasRole(cereal, consumableRole). affordsTask(cereal, eatingDrinkingTask).
}).
#pos(e326@100, {goesIn(cereal, storage_room)}, {}, {
  obj(cereal). hasRole(cereal, consumableRole). affordsTask(cereal, eatingDrinkingTask).
}).
#pos(e327@100, {goesIn(cereal_bowl, cabinet)}, {}, {
  obj(cereal_bowl). hasRole(cereal_bowl, utensilRole). affordsTask(cereal_bowl, eatingDrinkingTask).
}).
#pos(e328@100, {goesIn(cereal_bowl, kitchen)}, {}, {
  obj(cereal_bowl). hasRole(cereal_bowl, utensilRole). affordsTask(cereal_bowl, eatingDrinkingTask).
}).
#pos(e329@100, {goesIn(chain, garage)}, {}, {
  obj(chain). hasRole(chain, toolRole). affordsTask(chain, maintenanceTask).
}).
#pos(e330@100, {goesIn(chain, storage_room)}, {}, {
  obj(chain). hasRole(chain, toolRole). affordsTask(chain, maintenanceTask).
}).
#pos(e331@100, {goesIn(chair, bedroom)}, {}, {
  obj(chair). hasRole(chair, furnitureRole). affordsTask(chair, leisureTask). affordsTask(chair, storageTask).
}).
#pos(e332@100, {goesIn(chair, closet)}, {}, {
  obj(chair). hasRole(chair, furnitureRole). affordsTask(chair, leisureTask). affordsTask(chair, storageTask).
}).
#pos(e333@100, {goesIn(chair, garden)}, {}, {
  obj(chair). hasRole(chair, furnitureRole). affordsTask(chair, leisureTask). affordsTask(chair, storageTask).
}).
#pos(e334@100, {goesIn(chair, hallway)}, {}, {
  obj(chair). hasRole(chair, furnitureRole). affordsTask(chair, leisureTask). affordsTask(chair, storageTask).
}).
#pos(e335@100, {goesIn(chair, kitchen)}, {}, {
  obj(chair). hasRole(chair, furnitureRole). affordsTask(chair, leisureTask). affordsTask(chair, storageTask).
}).
#pos(e336@100, {goesIn(chair, library)}, {}, {
  obj(chair). hasRole(chair, furnitureRole). affordsTask(chair, leisureTask). affordsTask(chair, storageTask).
}).
#pos(e337@100, {goesIn(chair, living_room)}, {}, {
  obj(chair). hasRole(chair, furnitureRole). affordsTask(chair, leisureTask). affordsTask(chair, storageTask).
}).
#pos(e338@100, {goesIn(chair, table)}, {}, {
  obj(chair). hasRole(chair, furnitureRole). affordsTask(chair, leisureTask). affordsTask(chair, storageTask).
}).
#pos(e339@100, {goesIn(chairs, closet)}, {}, {
  obj(chairs). hasRole(chairs, furnitureRole). affordsTask(chairs, leisureTask).
}).
#pos(e340@100, {goesIn(chairs, library)}, {}, {
  obj(chairs). hasRole(chairs, furnitureRole). affordsTask(chairs, leisureTask).
}).
#pos(e341@100, {goesIn(chairs, table)}, {}, {
  obj(chairs). hasRole(chairs, furnitureRole). affordsTask(chairs, leisureTask).
}).
#pos(e342@100, {goesIn(change, drawer)}, {}, {
  obj(change). hasRole(change, entertainmentRole). affordsTask(change, leisureTask).
}).
#pos(e343@100, {goesIn(change, pantry)}, {}, {
  obj(change). hasRole(change, entertainmentRole). affordsTask(change, leisureTask).
}).
#pos(e344@100, {goesIn(channel, bedroom)}, {}, {
  obj(channel). hasRole(channel, storageContainerRole). affordsTask(channel, leisureTask).
}).
#pos(e345@100, {goesIn(channel, living_room)}, {}, {
  obj(channel). hasRole(channel, storageContainerRole). affordsTask(channel, leisureTask).
}).
#pos(e346@100, {goesIn(checkbook, drawer)}, {}, {
  obj(checkbook). hasRole(checkbook, documentRole). affordsTask(checkbook, workStudyTask).
}).
#pos(e347@100, {goesIn(checkbook, table)}, {}, {
  obj(checkbook). hasRole(checkbook, documentRole). affordsTask(checkbook, workStudyTask).
}).
#pos(e348@100, {goesIn(checkbook_holder, drawer)}, {}, {
  obj(checkbook_holder). hasRole(checkbook_holder, storageContainerRole). affordsTask(checkbook_holder, storageTask).
}).
#pos(e349@100, {goesIn(checkbook_holder, table)}, {}, {
  obj(checkbook_holder). hasRole(checkbook_holder, storageContainerRole). affordsTask(checkbook_holder, storageTask).
}).
#pos(e350@100, {goesIn(cheese, fridge)}, {}, {
  obj(cheese). hasRole(cheese, consumableRole). affordsTask(cheese, eatingDrinkingTask).
}).
#pos(e351@100, {goesIn(cheese, kitchen)}, {}, {
  obj(cheese). hasRole(cheese, consumableRole). affordsTask(cheese, eatingDrinkingTask).
}).
#pos(e352@100, {goesIn(cheque_book, bedroom)}, {}, {
  obj(cheque_book). hasRole(cheque_book, documentRole). affordsTask(cheque_book, eatingDrinkingTask).
}).
#pos(e353@100, {goesIn(cheque_book_holder, drawer)}, {}, {
  obj(cheque_book_holder). hasRole(cheque_book_holder, storageContainerRole). affordsTask(cheque_book_holder, storageTask).
}).
#pos(e354@100, {goesIn(chess_bishop, playroom)}, {}, {
  obj(chess_bishop). hasRole(chess_bishop, toolRole). affordsTask(chess_bishop, leisureTask).
}).
#pos(e355@100, {goesIn(chess_board, bedroom)}, {}, {
  obj(chess_board). hasRole(chess_board, furnitureRole). affordsTask(chess_board, leisureTask).
}).
#pos(e356@100, {goesIn(chess_board, library)}, {}, {
  obj(chess_board). hasRole(chess_board, furnitureRole). affordsTask(chess_board, leisureTask).
}).
#pos(e357@100, {goesIn(chess_king, library)}, {}, {
  obj(chess_king). hasRole(chess_king, entertainmentRole). affordsTask(chess_king, leisureTask).
}).
#pos(e358@100, {goesIn(chess_king, living_room)}, {}, {
  obj(chess_king). hasRole(chess_king, entertainmentRole). affordsTask(chess_king, leisureTask).
}).
#pos(e359@100, {goesIn(chess_king, playroom)}, {}, {
  obj(chess_king). hasRole(chess_king, entertainmentRole). affordsTask(chess_king, leisureTask).
}).
#pos(e360@100, {goesIn(chess_knight, library)}, {}, {
  obj(chess_knight). hasRole(chess_knight, toolRole). affordsTask(chess_knight, leisureTask).
}).
#pos(e361@100, {goesIn(chess_knight, playroom)}, {}, {
  obj(chess_knight). hasRole(chess_knight, toolRole). affordsTask(chess_knight, leisureTask).
}).
#pos(e362@100, {goesIn(chess_pawn, living_room)}, {}, {
  obj(chess_pawn). hasRole(chess_pawn, entertainmentRole). affordsTask(chess_pawn, leisureTask).
}).
#pos(e363@100, {goesIn(chess_pawn, playroom)}, {}, {
  obj(chess_pawn). hasRole(chess_pawn, entertainmentRole). affordsTask(chess_pawn, leisureTask).
}).
#pos(e364@100, {goesIn(chess_piece, library)}, {}, {
  obj(chess_piece). hasRole(chess_piece, entertainmentRole). affordsTask(chess_piece, leisureTask).
}).
#pos(e365@100, {goesIn(chess_piece, living_room)}, {}, {
  obj(chess_piece). hasRole(chess_piece, entertainmentRole). affordsTask(chess_piece, leisureTask).
}).
#pos(e366@100, {goesIn(chess_piece, playroom)}, {}, {
  obj(chess_piece). hasRole(chess_piece, entertainmentRole). affordsTask(chess_piece, leisureTask).
}).
#pos(e367@100, {goesIn(chess_queen, living_room)}, {}, {
  obj(chess_queen). hasRole(chess_queen, entertainmentRole). affordsTask(chess_queen, leisureTask).
}).
#pos(e368@100, {goesIn(chess_queen, playroom)}, {}, {
  obj(chess_queen). hasRole(chess_queen, entertainmentRole). affordsTask(chess_queen, leisureTask).
}).
#pos(e369@100, {goesIn(chess_rook, library)}, {}, {
  obj(chess_rook). hasRole(chess_rook, toolRole). affordsTask(chess_rook, leisureTask).
}).
#pos(e370@100, {goesIn(chess_rook, living_room)}, {}, {
  obj(chess_rook). hasRole(chess_rook, toolRole). affordsTask(chess_rook, leisureTask).
}).
#pos(e371@100, {goesIn(chess_rook, playroom)}, {}, {
  obj(chess_rook). hasRole(chess_rook, toolRole). affordsTask(chess_rook, leisureTask).
}).
#pos(e372@100, {goesIn(chess_set, cabinet)}, {}, {
  obj(chess_set). hasRole(chess_set, entertainmentRole). affordsTask(chess_set, leisureTask).
}).
#pos(e373@100, {goesIn(chess_set, drawer)}, {}, {
  obj(chess_set). hasRole(chess_set, entertainmentRole). affordsTask(chess_set, leisureTask).
}).
#pos(e374@100, {goesIn(chess_set, living_room)}, {}, {
  obj(chess_set). hasRole(chess_set, entertainmentRole). affordsTask(chess_set, leisureTask).
}).
#pos(e375@100, {goesIn(chess_set, playroom)}, {}, {
  obj(chess_set). hasRole(chess_set, entertainmentRole). affordsTask(chess_set, leisureTask).
}).
#pos(e376@100, {goesIn(chesspiece, living_room)}, {}, {
  obj(chesspiece). hasRole(chesspiece, entertainmentRole). affordsTask(chesspiece, leisureTask).
}).
#pos(e377@100, {goesIn(chesspiece, playroom)}, {}, {
  obj(chesspiece). hasRole(chesspiece, entertainmentRole). affordsTask(chesspiece, leisureTask).
}).
#pos(e378@100, {goesIn(chest, bedroom)}, {}, {
  obj(chest). hasRole(chest, storageContainerRole). affordsTask(chest, storageTask).
}).
#pos(e379@100, {goesIn(chicken, fridge)}, {}, {
  obj(chicken). hasRole(chicken, consumableRole). affordsTask(chicken, eatingDrinkingTask).
}).
#pos(e380@100, {goesIn(chicken, kitchen)}, {}, {
  obj(chicken). hasRole(chicken, consumableRole). affordsTask(chicken, eatingDrinkingTask).
}).
#pos(e381@100, {goesIn(chimney, garage)}, {}, {
  obj(chimney). hasRole(chimney, furnitureRole). affordsTask(chimney, maintenanceTask).
}).
#pos(e382@100, {goesIn(chine_cotton, closet)}, {}, {
  obj(chine_cotton). hasRole(chine_cotton, clothingRole). affordsTask(chine_cotton, dressingTask).
}).
#pos(e383@100, {goesIn(chinese_food, fridge)}, {}, {
  obj(chinese_food). hasRole(chinese_food, consumableRole). affordsTask(chinese_food, eatingDrinkingTask).
}).
#pos(e384@100, {goesIn(chips, kitchen)}, {}, {
  obj(chips). hasRole(chips, consumableRole). affordsTask(chips, eatingDrinkingTask).
}).
#pos(e385@100, {goesIn(chips, pantry)}, {}, {
  obj(chips). hasRole(chips, consumableRole). affordsTask(chips, eatingDrinkingTask).
}).
#pos(e386@100, {goesIn(chocolate, closet)}, {}, {
  obj(chocolate). hasRole(chocolate, consumableRole). affordsTask(chocolate, eatingDrinkingTask).
}).
#pos(e387@100, {goesIn(chocolate, garage)}, {}, {
  obj(chocolate). hasRole(chocolate, consumableRole). affordsTask(chocolate, eatingDrinkingTask).
}).
#pos(e388@100, {goesIn(chocolate, storage_room)}, {}, {
  obj(chocolate). hasRole(chocolate, consumableRole). affordsTask(chocolate, eatingDrinkingTask).
}).
#pos(e389@100, {goesIn(cinnamon, kitchen)}, {}, {
  obj(cinnamon). hasRole(cinnamon, consumableRole). affordsTask(cinnamon, foodPreparationTask).
}).
#pos(e390@100, {goesIn(clam, bathroom)}, {}, {
  obj(clam). hasRole(clam, consumableRole). affordsTask(clam, eatingDrinkingTask).
}).
#pos(e391@100, {goesIn(clam, closet)}, {}, {
  obj(clam). hasRole(clam, consumableRole). affordsTask(clam, eatingDrinkingTask).
}).
#pos(e392@100, {goesIn(clavichord, music_room)}, {}, {
  obj(clavichord). hasRole(clavichord, musicalInstrumentRole). affordsTask(clavichord, leisureTask).
}).
#pos(e393@100, {goesIn(clip, table)}, {}, {
  obj(clip). hasRole(clip, toolRole). affordsTask(clip, maintenanceTask).
}).
#pos(e394@100, {goesIn(clipboard, table)}, {}, {
  obj(clipboard). hasRole(clipboard, toolRole). affordsTask(clipboard, workStudyTask).
}).
#pos(e395@100, {goesIn(clippers, bathroom)}, {}, {
  obj(clippers). hasRole(clippers, toolRole). affordsTask(clippers, maintenanceTask).
}).
#pos(e396@100, {goesIn(clippers, drawer)}, {}, {
  obj(clippers). hasRole(clippers, toolRole). affordsTask(clippers, maintenanceTask).
}).
#pos(e397@100, {goesIn(clippers, library)}, {}, {
  obj(clippers). hasRole(clippers, toolRole). affordsTask(clippers, maintenanceTask).
}).
#pos(e398@100, {goesIn(clock, bedroom)}, {}, {
  obj(clock). hasRole(clock, decorationRole). affordsTask(clock, leisureTask).
}).
#pos(e399@100, {goesIn(clock, shelf)}, {}, {
  obj(clock). hasRole(clock, decorationRole). affordsTask(clock, leisureTask).
}).
#pos(e400@100, {goesIn(clock, table)}, {}, {
  obj(clock). hasRole(clock, decorationRole). affordsTask(clock, leisureTask).
}).
#pos(e401@100, {goesIn(closet, bedroom)}, {}, {
  obj(closet). hasRole(closet, storageContainerRole). affordsTask(closet, storageTask).
}).
#pos(e402@100, {goesIn(closet, closet)}, {}, {
  obj(closet). hasRole(closet, storageContainerRole). affordsTask(closet, storageTask).
}).
#pos(e403@100, {goesIn(cloth, bathroom)}, {}, {
  obj(cloth). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask). affordsTask(cloth, storageTask).
}).
#pos(e404@100, {goesIn(cloth, bedroom)}, {}, {
  obj(cloth). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask). affordsTask(cloth, storageTask).
}).
#pos(e405@100, {goesIn(cloth, closet)}, {}, {
  obj(cloth). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask). affordsTask(cloth, storageTask).
}).
#pos(e406@100, {goesIn(cloth, hallway)}, {}, {
  obj(cloth). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask). affordsTask(cloth, storageTask).
}).
#pos(e407@100, {goesIn(cloth, kitchen)}, {}, {
  obj(cloth). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask). affordsTask(cloth, storageTask).
}).
#pos(e408@100, {goesIn(cloth, library)}, {}, {
  obj(cloth). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask). affordsTask(cloth, storageTask).
}).
#pos(e409@100, {goesIn(cloth, table)}, {}, {
  obj(cloth). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask). affordsTask(cloth, storageTask).
}).
#pos(e410@100, {goesIn(cloth_linen, bedroom)}, {}, {
  obj(cloth_linen). hasRole(cloth_linen, clothingRole). affordsTask(cloth_linen, dressingTask).
}).
#pos(e411@100, {goesIn(cloth_linen, closet)}, {}, {
  obj(cloth_linen). hasRole(cloth_linen, clothingRole). affordsTask(cloth_linen, dressingTask).
}).
#pos(e412@100, {goesIn(cloth_linen, hallway)}, {}, {
  obj(cloth_linen). hasRole(cloth_linen, clothingRole). affordsTask(cloth_linen, dressingTask).
}).
#pos(e413@100, {goesIn(clothes, bed)}, {}, {
  obj(clothes). hasRole(clothes, clothingRole). affordsTask(clothes, dressingTask).
}).
#pos(e414@100, {goesIn(clothes, bedroom)}, {}, {
  obj(clothes). hasRole(clothes, clothingRole). affordsTask(clothes, dressingTask).
}).
#pos(e415@100, {goesIn(clothes, closet)}, {}, {
  obj(clothes). hasRole(clothes, clothingRole). affordsTask(clothes, dressingTask).
}).
#pos(e416@100, {goesIn(clothes, drawer)}, {}, {
  obj(clothes). hasRole(clothes, clothingRole). affordsTask(clothes, dressingTask).
}).
#pos(e417@100, {goesIn(clothes, garage)}, {}, {
  obj(clothes). hasRole(clothes, clothingRole). affordsTask(clothes, dressingTask).
}).
#pos(e418@100, {goesIn(clothes, storage_room)}, {}, {
  obj(clothes). hasRole(clothes, clothingRole). affordsTask(clothes, dressingTask).
}).
#pos(e419@100, {goesIn(clothes_closet, bedroom)}, {}, {
  obj(clothes_closet). hasRole(clothes_closet, storageContainerRole). affordsTask(clothes_closet, storageTask).
}).
#pos(e420@100, {goesIn(clothes_closet, closet)}, {}, {
  obj(clothes_closet). hasRole(clothes_closet, storageContainerRole). affordsTask(clothes_closet, storageTask).
}).
#pos(e421@100, {goesIn(clothes_dryer, garage)}, {}, {
  obj(clothes_dryer). hasRole(clothes_dryer, applianceRole). affordsTask(clothes_dryer, maintenanceTask).
}).
#pos(e422@100, {goesIn(clothing, bedroom)}, {}, {
  obj(clothing). hasRole(clothing, clothingRole). affordsTask(clothing, dressingTask).
}).
#pos(e423@100, {goesIn(clothing, closet)}, {}, {
  obj(clothing). hasRole(clothing, clothingRole). affordsTask(clothing, dressingTask).
}).
#pos(e424@100, {goesIn(clothing, drawer)}, {}, {
  obj(clothing). hasRole(clothing, clothingRole). affordsTask(clothing, dressingTask).
}).
#pos(e425@100, {goesIn(clothing, garage)}, {}, {
  obj(clothing). hasRole(clothing, clothingRole). affordsTask(clothing, dressingTask).
}).
#pos(e426@100, {goesIn(clothing, library)}, {}, {
  obj(clothing). hasRole(clothing, clothingRole). affordsTask(clothing, dressingTask).
}).
#pos(e427@100, {goesIn(clothing, storage_room)}, {}, {
  obj(clothing). hasRole(clothing, clothingRole). affordsTask(clothing, dressingTask).
}).
#pos(e428@100, {goesIn(clothing_closet, bedroom)}, {}, {
  obj(clothing_closet). hasRole(clothing_closet, storageContainerRole). affordsTask(clothing_closet, storageTask).
}).
#pos(e429@100, {goesIn(clothing_shelf, bedroom)}, {}, {
  obj(clothing_shelf). hasRole(clothing_shelf, storageContainerRole). affordsTask(clothing_shelf, storageTask).
}).
#pos(e430@100, {goesIn(clothing_shelf, cabinet)}, {}, {
  obj(clothing_shelf). hasRole(clothing_shelf, storageContainerRole). affordsTask(clothing_shelf, storageTask).
}).
#pos(e431@100, {goesIn(clothing_shelf, closet)}, {}, {
  obj(clothing_shelf). hasRole(clothing_shelf, storageContainerRole). affordsTask(clothing_shelf, storageTask).
}).
#pos(e432@100, {goesIn(coal, bed)}, {}, {
  obj(coal). hasRole(coal, consumableRole). affordsTask(coal, leisureTask).
}).
#pos(e433@100, {goesIn(coal, storage_room)}, {}, {
  obj(coal). hasRole(coal, consumableRole). affordsTask(coal, leisureTask).
}).
#pos(e434@100, {goesIn(coast, library)}, {}, {
  obj(coast). hasRole(coast, toolRole). affordsTask(coast, maintenanceTask).
}).
#pos(e435@100, {goesIn(coat, bedroom)}, {}, {
  obj(coat). hasRole(coat, clothingRole). affordsTask(coat, dressingTask).
}).
#pos(e436@100, {goesIn(coat, closet)}, {}, {
  obj(coat). hasRole(coat, clothingRole). affordsTask(coat, dressingTask).
}).
#pos(e437@100, {goesIn(coat_hangers, bedroom)}, {}, {
  obj(coat_hangers). hasRole(coat_hangers, storageContainerRole). affordsTask(coat_hangers, storageTask).
}).
#pos(e438@100, {goesIn(coat_hangers, closet)}, {}, {
  obj(coat_hangers). hasRole(coat_hangers, storageContainerRole). affordsTask(coat_hangers, storageTask).
}).
#pos(e439@100, {goesIn(coats, bedroom)}, {}, {
  obj(coats). hasRole(coats, clothingRole). affordsTask(coats, dressingTask).
}).
#pos(e440@100, {goesIn(coats, closet)}, {}, {
  obj(coats). hasRole(coats, clothingRole). affordsTask(coats, dressingTask).
}).
#pos(e441@100, {goesIn(cocktail_cabinet, dining_room)}, {}, {
  obj(cocktail_cabinet). hasRole(cocktail_cabinet, storageContainerRole). affordsTask(cocktail_cabinet, storageTask).
}).
#pos(e442@100, {goesIn(cocktail_cabinet, living_room)}, {}, {
  obj(cocktail_cabinet). hasRole(cocktail_cabinet, storageContainerRole). affordsTask(cocktail_cabinet, storageTask).
}).
#pos(e443@100, {goesIn(coffe_table, bedroom)}, {}, {
  obj(coffe_table). hasRole(coffe_table, furnitureRole). affordsTask(coffe_table, leisureTask).
}).
#pos(e444@100, {goesIn(coffe_table, living_room)}, {}, {
  obj(coffe_table). hasRole(coffe_table, furnitureRole). affordsTask(coffe_table, leisureTask).
}).
#pos(e445@100, {goesIn(coffee, closet)}, {}, {
  obj(coffee). hasRole(coffee, consumableRole). affordsTask(coffee, eatingDrinkingTask).
}).
#pos(e446@100, {goesIn(coffee, garage)}, {}, {
  obj(coffee). hasRole(coffee, consumableRole). affordsTask(coffee, eatingDrinkingTask).
}).
#pos(e447@100, {goesIn(coffee, kitchen)}, {}, {
  obj(coffee). hasRole(coffee, consumableRole). affordsTask(coffee, eatingDrinkingTask).
}).
#pos(e448@100, {goesIn(coffee, pantry)}, {}, {
  obj(coffee). hasRole(coffee, consumableRole). affordsTask(coffee, eatingDrinkingTask).
}).
#pos(e449@100, {goesIn(coffee, shelf)}, {}, {
  obj(coffee). hasRole(coffee, consumableRole). affordsTask(coffee, eatingDrinkingTask).
}).
#pos(e450@100, {goesIn(coffee_cups, cabinet)}, {}, {
  obj(coffee_cups). hasRole(coffee_cups, utensilRole). affordsTask(coffee_cups, eatingDrinkingTask).
}).
#pos(e451@100, {goesIn(coffee_mug, cabinet)}, {}, {
  obj(coffee_mug). hasRole(coffee_mug, utensilRole). affordsTask(coffee_mug, eatingDrinkingTask).
}).
#pos(e452@100, {goesIn(coffee_mug, kitchen)}, {}, {
  obj(coffee_mug). hasRole(coffee_mug, utensilRole). affordsTask(coffee_mug, eatingDrinkingTask).
}).
#pos(e453@100, {goesIn(coffee_mug, shelf)}, {}, {
  obj(coffee_mug). hasRole(coffee_mug, utensilRole). affordsTask(coffee_mug, eatingDrinkingTask).
}).
#pos(e454@100, {goesIn(coffee_table, bedroom)}, {}, {
  obj(coffee_table). hasRole(coffee_table, furnitureRole). affordsTask(coffee_table, leisureTask). affordsTask(coffee_table, storageTask).
}).
#pos(e455@100, {goesIn(coffee_table, living_room)}, {}, {
  obj(coffee_table). hasRole(coffee_table, furnitureRole). affordsTask(coffee_table, leisureTask). affordsTask(coffee_table, storageTask).
}).
#pos(e456@100, {goesIn(coil, bedroom)}, {}, {
  obj(coil). hasRole(coil, toolRole). affordsTask(coil, maintenanceTask).
}).
#pos(e457@100, {goesIn(coil, fridge)}, {}, {
  obj(coil). hasRole(coil, toolRole). affordsTask(coil, maintenanceTask).
}).
#pos(e458@100, {goesIn(coil, living_room)}, {}, {
  obj(coil). hasRole(coil, toolRole). affordsTask(coil, maintenanceTask).
}).
#pos(e459@100, {goesIn(coin, garden)}, {}, {
  obj(coin). hasRole(coin, consumableRole). affordsTask(coin, eatingDrinkingTask). affordsTask(coin, leisureTask).
}).
#pos(e460@100, {goesIn(coins, bathroom)}, {}, {
  obj(coins). hasRole(coins, consumableRole). affordsTask(coins, eatingDrinkingTask).
}).
#pos(e461@100, {goesIn(coins, bedroom)}, {}, {
  obj(coins). hasRole(coins, consumableRole). affordsTask(coins, eatingDrinkingTask).
}).
#pos(e462@100, {goesIn(coins, closet)}, {}, {
  obj(coins). hasRole(coins, consumableRole). affordsTask(coins, eatingDrinkingTask).
}).
#pos(e463@100, {goesIn(coins, drawer)}, {}, {
  obj(coins). hasRole(coins, consumableRole). affordsTask(coins, eatingDrinkingTask).
}).
#pos(e464@100, {goesIn(coins, garage)}, {}, {
  obj(coins). hasRole(coins, consumableRole). affordsTask(coins, eatingDrinkingTask).
}).
#pos(e465@100, {goesIn(coins, library)}, {}, {
  obj(coins). hasRole(coins, consumableRole). affordsTask(coins, eatingDrinkingTask).
}).
#pos(e466@100, {goesIn(coins, pantry)}, {}, {
  obj(coins). hasRole(coins, consumableRole). affordsTask(coins, eatingDrinkingTask).
}).
#pos(e467@100, {goesIn(coins, table)}, {}, {
  obj(coins). hasRole(coins, consumableRole). affordsTask(coins, eatingDrinkingTask).
}).
#pos(e468@100, {goesIn(coke, kitchen)}, {}, {
  obj(coke). hasRole(coke, consumableRole). affordsTask(coke, eatingDrinkingTask).
}).
#pos(e469@100, {goesIn(coke, pantry)}, {}, {
  obj(coke). hasRole(coke, consumableRole). affordsTask(coke, eatingDrinkingTask).
}).
#pos(e470@100, {goesIn(cold_faucet, bathroom)}, {}, {
  obj(cold_faucet). hasRole(cold_faucet, toolRole). affordsTask(cold_faucet, eatingDrinkingTask).
}).
#pos(e471@100, {goesIn(cold_faucet, closet)}, {}, {
  obj(cold_faucet). hasRole(cold_faucet, toolRole). affordsTask(cold_faucet, eatingDrinkingTask).
}).
#pos(e472@100, {goesIn(cold_faucet, kitchen)}, {}, {
  obj(cold_faucet). hasRole(cold_faucet, toolRole). affordsTask(cold_faucet, eatingDrinkingTask).
}).
#pos(e473@100, {goesIn(cold_faucet, library)}, {}, {
  obj(cold_faucet). hasRole(cold_faucet, toolRole). affordsTask(cold_faucet, eatingDrinkingTask).
}).
#pos(e474@100, {goesIn(cold_faucet, storage_room)}, {}, {
  obj(cold_faucet). hasRole(cold_faucet, toolRole). affordsTask(cold_faucet, eatingDrinkingTask).
}).
#pos(e475@100, {goesIn(cold_storage, fridge)}, {}, {
  obj(cold_storage). hasRole(cold_storage, applianceRole). affordsTask(cold_storage, storageTask).
}).
#pos(e476@100, {goesIn(cold_tap, kitchen)}, {}, {
  obj(cold_tap). hasRole(cold_tap, toolRole). affordsTask(cold_tap, eatingDrinkingTask). affordsTask(cold_tap, hygieneTask).
}).
#pos(e477@100, {goesIn(cold_tap, sink)}, {}, {
  obj(cold_tap). hasRole(cold_tap, toolRole). affordsTask(cold_tap, eatingDrinkingTask). affordsTask(cold_tap, hygieneTask).
}).
#pos(e478@100, {goesIn(cold_water, fridge)}, {}, {
  obj(cold_water). hasRole(cold_water, consumableRole). affordsTask(cold_water, eatingDrinkingTask).
}).
#pos(e479@100, {goesIn(cold_water, library)}, {}, {
  obj(cold_water). hasRole(cold_water, consumableRole). affordsTask(cold_water, eatingDrinkingTask).
}).
#pos(e480@100, {goesIn(column, bedroom)}, {}, {
  obj(column). hasRole(column, storageContainerRole). affordsTask(column, storageTask).
}).
#pos(e481@100, {goesIn(column, library)}, {}, {
  obj(column). hasRole(column, storageContainerRole). affordsTask(column, storageTask).
}).
#pos(e482@100, {goesIn(column, table)}, {}, {
  obj(column). hasRole(column, storageContainerRole). affordsTask(column, storageTask).
}).
#pos(e483@100, {goesIn(comforter, bedroom)}, {}, {
  obj(comforter). hasRole(comforter, beddingRole). affordsTask(comforter, sleepingTask).
}).
#pos(e484@100, {goesIn(comforter, hallway)}, {}, {
  obj(comforter). hasRole(comforter, beddingRole). affordsTask(comforter, sleepingTask).
}).
#pos(e485@100, {goesIn(comforter, storage_room)}, {}, {
  obj(comforter). hasRole(comforter, beddingRole). affordsTask(comforter, sleepingTask).
}).
#pos(e486@100, {goesIn(compost, garden)}, {}, {
  obj(compost). hasRole(compost, wasteRole). affordsTask(compost, wasteDisposalTask).
}).
#pos(e487@100, {goesIn(computer, bedroom)}, {}, {
  obj(computer). hasRole(computer, applianceRole). affordsTask(computer, leisureTask). affordsTask(computer, workStudyTask).
}).
#pos(e488@100, {goesIn(computer, closet)}, {}, {
  obj(computer). hasRole(computer, applianceRole). affordsTask(computer, leisureTask). affordsTask(computer, workStudyTask).
}).
#pos(e489@100, {goesIn(computer, garage)}, {}, {
  obj(computer). hasRole(computer, applianceRole). affordsTask(computer, leisureTask). affordsTask(computer, workStudyTask).
}).
#pos(e490@100, {goesIn(computer, library)}, {}, {
  obj(computer). hasRole(computer, applianceRole). affordsTask(computer, leisureTask). affordsTask(computer, workStudyTask).
}).
#pos(e491@100, {goesIn(computer, storage_room)}, {}, {
  obj(computer). hasRole(computer, applianceRole). affordsTask(computer, leisureTask). affordsTask(computer, workStudyTask).
}).
#pos(e492@100, {goesIn(computer, table)}, {}, {
  obj(computer). hasRole(computer, applianceRole). affordsTask(computer, leisureTask). affordsTask(computer, workStudyTask).
}).
#pos(e493@100, {goesIn(concrete, bathroom)}, {}, {
  obj(concrete). hasRole(concrete, toolRole). affordsTask(concrete, maintenanceTask).
}).
#pos(e494@100, {goesIn(concrete, bedroom)}, {}, {
  obj(concrete). hasRole(concrete, toolRole). affordsTask(concrete, maintenanceTask).
}).
#pos(e495@100, {goesIn(concrete, closet)}, {}, {
  obj(concrete). hasRole(concrete, toolRole). affordsTask(concrete, maintenanceTask).
}).
#pos(e496@100, {goesIn(container, bedroom)}, {}, {
  obj(container). hasRole(container, storageContainerRole). affordsTask(container, storageTask).
}).
#pos(e497@100, {goesIn(container, cabinet)}, {}, {
  obj(container). hasRole(container, storageContainerRole). affordsTask(container, storageTask).
}).
#pos(e498@100, {goesIn(container, closet)}, {}, {
  obj(container). hasRole(container, storageContainerRole). affordsTask(container, storageTask).
}).
#pos(e499@100, {goesIn(container, fridge)}, {}, {
  obj(container). hasRole(container, storageContainerRole). affordsTask(container, storageTask).
}).
#pos(e500@100, {goesIn(container, garage)}, {}, {
  obj(container). hasRole(container, storageContainerRole). affordsTask(container, storageTask).
}).
#pos(e501@100, {goesIn(container, kitchen)}, {}, {
  obj(container). hasRole(container, storageContainerRole). affordsTask(container, storageTask).
}).
#pos(e502@100, {goesIn(container, pantry)}, {}, {
  obj(container). hasRole(container, storageContainerRole). affordsTask(container, storageTask).
}).
#pos(e503@100, {goesIn(container_can, cabinet)}, {}, {
  obj(container_can). hasRole(container_can, storageContainerRole). affordsTask(container_can, storageTask).
}).
#pos(e504@100, {goesIn(container_can, garage)}, {}, {
  obj(container_can). hasRole(container_can, storageContainerRole). affordsTask(container_can, storageTask).
}).
#pos(e505@100, {goesIn(container_can, kitchen)}, {}, {
  obj(container_can). hasRole(container_can, storageContainerRole). affordsTask(container_can, storageTask).
}).
#pos(e506@100, {goesIn(container_can, pantry)}, {}, {
  obj(container_can). hasRole(container_can, storageContainerRole). affordsTask(container_can, storageTask).
}).
#pos(e507@100, {goesIn(container_cup, kitchen)}, {}, {
  obj(container_cup). hasRole(container_cup, utensilRole). affordsTask(container_cup, eatingDrinkingTask).
}).
#pos(e508@100, {goesIn(continental_quilt, bed)}, {}, {
  obj(continental_quilt). hasRole(continental_quilt, beddingRole). affordsTask(continental_quilt, sleepingTask).
}).
#pos(e509@100, {goesIn(continental_quilt, storage_room)}, {}, {
  obj(continental_quilt). hasRole(continental_quilt, beddingRole). affordsTask(continental_quilt, sleepingTask).
}).
#pos(e510@100, {goesIn(cook, kitchen)}, {}, {
  obj(cook). hasRole(cook, cookwareRole). affordsTask(cook, foodPreparationTask).
}).
#pos(e511@100, {goesIn(cookie, pantry)}, {}, {
  obj(cookie). hasRole(cookie, consumableRole). affordsTask(cookie, eatingDrinkingTask).
}).
#pos(e512@100, {goesIn(cookie_jar, shelf)}, {}, {
  obj(cookie_jar). hasRole(cookie_jar, storageContainerRole). affordsTask(cookie_jar, storageTask).
}).
#pos(e513@100, {goesIn(cookies, bedroom)}, {}, {
  obj(cookies). hasRole(cookies, consumableRole). affordsTask(cookies, eatingDrinkingTask).
}).
#pos(e514@100, {goesIn(cookies, closet)}, {}, {
  obj(cookies). hasRole(cookies, consumableRole). affordsTask(cookies, eatingDrinkingTask).
}).
#pos(e515@100, {goesIn(cookies, fridge)}, {}, {
  obj(cookies). hasRole(cookies, consumableRole). affordsTask(cookies, eatingDrinkingTask).
}).
#pos(e516@100, {goesIn(cookies, garage)}, {}, {
  obj(cookies). hasRole(cookies, consumableRole). affordsTask(cookies, eatingDrinkingTask).
}).
#pos(e517@100, {goesIn(cookies, kitchen)}, {}, {
  obj(cookies). hasRole(cookies, consumableRole). affordsTask(cookies, eatingDrinkingTask).
}).
#pos(e518@100, {goesIn(cookies, pantry)}, {}, {
  obj(cookies). hasRole(cookies, consumableRole). affordsTask(cookies, eatingDrinkingTask).
}).
#pos(e519@100, {goesIn(cookies, storage_room)}, {}, {
  obj(cookies). hasRole(cookies, consumableRole). affordsTask(cookies, eatingDrinkingTask).
}).
#pos(e520@100, {goesIn(cooling_device, bedroom)}, {}, {
  obj(cooling_device). hasRole(cooling_device, applianceRole). affordsTask(cooling_device, storageTask).
}).
#pos(e521@100, {goesIn(cooling_device, library)}, {}, {
  obj(cooling_device). hasRole(cooling_device, applianceRole). affordsTask(cooling_device, storageTask).
}).
#pos(e522@100, {goesIn(corn, closet)}, {}, {
  obj(corn). hasRole(corn, consumableRole). affordsTask(corn, eatingDrinkingTask).
}).
#pos(e523@100, {goesIn(corn, garage)}, {}, {
  obj(corn). hasRole(corn, consumableRole). affordsTask(corn, eatingDrinkingTask).
}).
#pos(e524@100, {goesIn(corn, kitchen)}, {}, {
  obj(corn). hasRole(corn, consumableRole). affordsTask(corn, eatingDrinkingTask).
}).
#pos(e525@100, {goesIn(corn, pantry)}, {}, {
  obj(corn). hasRole(corn, consumableRole). affordsTask(corn, eatingDrinkingTask).
}).
#pos(e526@100, {goesIn(corn, storage_room)}, {}, {
  obj(corn). hasRole(corn, consumableRole). affordsTask(corn, eatingDrinkingTask).
}).
#pos(e527@100, {goesIn(corner_cupboard, kitchen)}, {}, {
  obj(corner_cupboard). hasRole(corner_cupboard, storageContainerRole). affordsTask(corner_cupboard, storageTask).
}).
#pos(e528@100, {goesIn(correction_fluid, table)}, {}, {
  obj(correction_fluid). hasRole(correction_fluid, cleaningToolRole). affordsTask(correction_fluid, maintenanceTask).
}).
#pos(e529@100, {goesIn(cottage_cheese, fridge)}, {}, {
  obj(cottage_cheese). hasRole(cottage_cheese, consumableRole). affordsTask(cottage_cheese, eatingDrinkingTask).
}).
#pos(e530@100, {goesIn(cottage_cheese, kitchen)}, {}, {
  obj(cottage_cheese). hasRole(cottage_cheese, consumableRole). affordsTask(cottage_cheese, eatingDrinkingTask).
}).
#pos(e531@100, {goesIn(cotton, closet)}, {}, {
  obj(cotton). hasRole(cotton, consumableRole). affordsTask(cotton, dressingTask). affordsTask(cotton, storageTask).
}).
#pos(e532@100, {goesIn(couch, bedroom)}, {}, {
  obj(couch). hasRole(couch, furnitureRole). affordsTask(couch, leisureTask). affordsTask(couch, sleepingTask).
}).
#pos(e533@100, {goesIn(couch, living_room)}, {}, {
  obj(couch). hasRole(couch, furnitureRole). affordsTask(couch, leisureTask). affordsTask(couch, sleepingTask).
}).
#pos(e534@100, {goesIn(counter, kitchen)}, {}, {
  obj(counter). hasRole(counter, furnitureRole). affordsTask(counter, workStudyTask).
}).
#pos(e535@100, {goesIn(coupon, garden)}, {}, {
  obj(coupon). hasRole(coupon, consumableRole). affordsTask(coupon, leisureTask).
}).
#pos(e536@100, {goesIn(coupon, library)}, {}, {
  obj(coupon). hasRole(coupon, consumableRole). affordsTask(coupon, leisureTask).
}).
#pos(e537@100, {goesIn(crab, fridge)}, {}, {
  obj(crab). hasRole(crab, consumableRole). affordsTask(crab, eatingDrinkingTask).
}).
#pos(e538@100, {goesIn(crab, garden)}, {}, {
  obj(crab). hasRole(crab, consumableRole). affordsTask(crab, eatingDrinkingTask).
}).
#pos(e539@100, {goesIn(crab, kitchen)}, {}, {
  obj(crab). hasRole(crab, consumableRole). affordsTask(crab, eatingDrinkingTask).
}).
#pos(e540@100, {goesIn(crab, pantry)}, {}, {
  obj(crab). hasRole(crab, consumableRole). affordsTask(crab, eatingDrinkingTask).
}).
#pos(e541@100, {goesIn(crackers, cabinet)}, {}, {
  obj(crackers). hasRole(crackers, consumableRole). affordsTask(crackers, eatingDrinkingTask).
}).
#pos(e542@100, {goesIn(crackers, kitchen)}, {}, {
  obj(crackers). hasRole(crackers, consumableRole). affordsTask(crackers, eatingDrinkingTask).
}).
#pos(e543@100, {goesIn(crackers, pantry)}, {}, {
  obj(crackers). hasRole(crackers, consumableRole). affordsTask(crackers, eatingDrinkingTask).
}).
#pos(e544@100, {goesIn(crash_cymbal, music_room)}, {}, {
  obj(crash_cymbal). hasRole(crash_cymbal, musicalInstrumentRole). affordsTask(crash_cymbal, leisureTask).
}).
#pos(e545@100, {goesIn(cup, bedroom)}, {}, {
  obj(cup). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e546@100, {goesIn(cup, closet)}, {}, {
  obj(cup). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e547@100, {goesIn(cup, kitchen)}, {}, {
  obj(cup). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e548@100, {goesIn(cup, library)}, {}, {
  obj(cup). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e549@100, {goesIn(cup, shelf)}, {}, {
  obj(cup). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e550@100, {goesIn(cup, sink)}, {}, {
  obj(cup). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e551@100, {goesIn(cup, table)}, {}, {
  obj(cup). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e552@100, {goesIn(cup_of_coffee, kitchen)}, {}, {
  obj(cup_of_coffee). hasRole(cup_of_coffee, consumableRole). affordsTask(cup_of_coffee, eatingDrinkingTask).
}).
#pos(e553@100, {goesIn(cup_of_coffee, table)}, {}, {
  obj(cup_of_coffee). hasRole(cup_of_coffee, consumableRole). affordsTask(cup_of_coffee, eatingDrinkingTask).
}).
#pos(e554@100, {goesIn(cupboard, kitchen)}, {}, {
  obj(cupboard). hasRole(cupboard, storageContainerRole). affordsTask(cupboard, storageTask).
}).
#pos(e555@100, {goesIn(cupboard, pantry)}, {}, {
  obj(cupboard). hasRole(cupboard, storageContainerRole). affordsTask(cupboard, storageTask).
}).
#pos(e556@100, {goesIn(cups, library)}, {}, {
  obj(cups). hasRole(cups, utensilRole). affordsTask(cups, eatingDrinkingTask).
}).
#pos(e557@100, {goesIn(curling_iron, bathroom)}, {}, {
  obj(curling_iron). hasRole(curling_iron, toolRole). affordsTask(curling_iron, hygieneTask).
}).
#pos(e558@100, {goesIn(curling_iron, drawer)}, {}, {
  obj(curling_iron). hasRole(curling_iron, toolRole). affordsTask(curling_iron, hygieneTask).
}).
#pos(e559@100, {goesIn(curling_iron, library)}, {}, {
  obj(curling_iron). hasRole(curling_iron, toolRole). affordsTask(curling_iron, hygieneTask).
}).
#pos(e560@100, {goesIn(curtain, bedroom)}, {}, {
  obj(curtain). hasRole(curtain, furnitureRole). affordsTask(curtain, leisureTask).
}).
#pos(e561@100, {goesIn(curtain, garage)}, {}, {
  obj(curtain). hasRole(curtain, furnitureRole). affordsTask(curtain, leisureTask).
}).
#pos(e562@100, {goesIn(curtain, storage_room)}, {}, {
  obj(curtain). hasRole(curtain, furnitureRole). affordsTask(curtain, leisureTask).
}).
#pos(e563@100, {goesIn(dandruff_shampoo, bathroom)}, {}, {
  obj(dandruff_shampoo). hasRole(dandruff_shampoo, cleaningToolRole). affordsTask(dandruff_shampoo, hygieneTask).
}).
#pos(e564@100, {goesIn(dandruff_shampoo, bedroom)}, {}, {
  obj(dandruff_shampoo). hasRole(dandruff_shampoo, cleaningToolRole). affordsTask(dandruff_shampoo, hygieneTask).
}).
#pos(e565@100, {goesIn(dandruff_shampoo, library)}, {}, {
  obj(dandruff_shampoo). hasRole(dandruff_shampoo, cleaningToolRole). affordsTask(dandruff_shampoo, hygieneTask).
}).
#pos(e566@100, {goesIn(denim, bedroom)}, {}, {
  obj(denim). hasRole(denim, clothingRole). affordsTask(denim, dressingTask).
}).
#pos(e567@100, {goesIn(denim, closet)}, {}, {
  obj(denim). hasRole(denim, clothingRole). affordsTask(denim, dressingTask).
}).
#pos(e568@100, {goesIn(dental_floss, bathroom)}, {}, {
  obj(dental_floss). hasRole(dental_floss, cleaningToolRole). affordsTask(dental_floss, hygieneTask).
}).
#pos(e569@100, {goesIn(dental_floss, library)}, {}, {
  obj(dental_floss). hasRole(dental_floss, cleaningToolRole). affordsTask(dental_floss, hygieneTask).
}).
#pos(e570@100, {goesIn(desk, bedroom)}, {}, {
  obj(desk). hasRole(desk, furnitureRole). affordsTask(desk, workStudyTask).
}).
#pos(e571@100, {goesIn(desk, home_office)}, {}, {
  obj(desk). hasRole(desk, furnitureRole). affordsTask(desk, workStudyTask).
}).
#pos(e572@100, {goesIn(desk, library)}, {}, {
  obj(desk). hasRole(desk, furnitureRole). affordsTask(desk, workStudyTask).
}).
#pos(e573@100, {goesIn(desk, living_room)}, {}, {
  obj(desk). hasRole(desk, furnitureRole). affordsTask(desk, workStudyTask).
}).
#pos(e574@100, {goesIn(desk_drawer, table)}, {}, {
  obj(desk_drawer). hasRole(desk_drawer, storageContainerRole). affordsTask(desk_drawer, storageTask).
}).
#pos(e575@100, {goesIn(desk_tray, bedroom)}, {}, {
  obj(desk_tray). hasRole(desk_tray, storageContainerRole). affordsTask(desk_tray, storageTask).
}).
#pos(e576@100, {goesIn(desk_tray, home_office)}, {}, {
  obj(desk_tray). hasRole(desk_tray, storageContainerRole). affordsTask(desk_tray, storageTask).
}).
#pos(e577@100, {goesIn(desk_tray, table)}, {}, {
  obj(desk_tray). hasRole(desk_tray, storageContainerRole). affordsTask(desk_tray, storageTask).
}).
#pos(e578@100, {goesIn(desserts, fridge)}, {}, {
  obj(desserts). hasRole(desserts, consumableRole). affordsTask(desserts, eatingDrinkingTask).
}).
#pos(e579@100, {goesIn(detergent, closet)}, {}, {
  obj(detergent). hasRole(detergent, cleaningToolRole). affordsTask(detergent, cleaningTask).
}).
#pos(e580@100, {goesIn(detergent, storage_room)}, {}, {
  obj(detergent). hasRole(detergent, cleaningToolRole). affordsTask(detergent, cleaningTask).
}).
#pos(e581@100, {goesIn(dice, living_room)}, {}, {
  obj(dice). hasRole(dice, toolRole). affordsTask(dice, leisureTask).
}).
#pos(e582@100, {goesIn(dictionaries, library)}, {}, {
  obj(dictionaries). hasRole(dictionaries, toolRole). affordsTask(dictionaries, workStudyTask).
}).
#pos(e583@100, {goesIn(dictionary, library)}, {}, {
  obj(dictionary). hasRole(dictionary, toolRole). affordsTask(dictionary, workStudyTask).
}).
#pos(e584@100, {goesIn(dictionary, shelf)}, {}, {
  obj(dictionary). hasRole(dictionary, toolRole). affordsTask(dictionary, workStudyTask).
}).
#pos(e585@100, {goesIn(dictionary, table)}, {}, {
  obj(dictionary). hasRole(dictionary, toolRole). affordsTask(dictionary, workStudyTask).
}).
#pos(e586@100, {goesIn(dining_area, bedroom)}, {}, {
  obj(dining_area). hasRole(dining_area, furnitureRole). affordsTask(dining_area, eatingDrinkingTask). affordsTask(dining_area, leisureTask).
}).
#pos(e587@100, {goesIn(dining_room_table, bedroom)}, {}, {
  obj(dining_room_table). hasRole(dining_room_table, furnitureRole). affordsTask(dining_room_table, eatingDrinkingTask). affordsTask(dining_room_table, leisureTask).
}).
#pos(e588@100, {goesIn(dining_room_table, dining_room)}, {}, {
  obj(dining_room_table). hasRole(dining_room_table, furnitureRole). affordsTask(dining_room_table, eatingDrinkingTask). affordsTask(dining_room_table, leisureTask).
}).
#pos(e589@100, {goesIn(dining_room_table, living_room)}, {}, {
  obj(dining_room_table). hasRole(dining_room_table, furnitureRole). affordsTask(dining_room_table, eatingDrinkingTask). affordsTask(dining_room_table, leisureTask).
}).
#pos(e590@100, {goesIn(dining_table, bedroom)}, {}, {
  obj(dining_table). hasRole(dining_table, furnitureRole). affordsTask(dining_table, eatingDrinkingTask). affordsTask(dining_table, leisureTask). affordsTask(dining_table, storageTask).
}).
#pos(e591@100, {goesIn(dinner, table)}, {}, {
  obj(dinner). hasRole(dinner, consumableRole). affordsTask(dinner, eatingDrinkingTask).
}).
#pos(e592@100, {goesIn(dinner_plate, cabinet)}, {}, {
  obj(dinner_plate). hasRole(dinner_plate, utensilRole). affordsTask(dinner_plate, eatingDrinkingTask).
}).
#pos(e593@100, {goesIn(dinner_plate, table)}, {}, {
  obj(dinner_plate). hasRole(dinner_plate, utensilRole). affordsTask(dinner_plate, eatingDrinkingTask).
}).
#pos(e594@100, {goesIn(dirty_dishes, kitchen)}, {}, {
  obj(dirty_dishes). hasRole(dirty_dishes, utensilRole). affordsTask(dirty_dishes, cleaningTask).
}).
#pos(e595@100, {goesIn(dish, kitchen)}, {}, {
  obj(dish). hasRole(dish, utensilRole). affordsTask(dish, eatingDrinkingTask).
}).
#pos(e596@100, {goesIn(dish, pantry)}, {}, {
  obj(dish). hasRole(dish, utensilRole). affordsTask(dish, eatingDrinkingTask).
}).
#pos(e597@100, {goesIn(dish, sink)}, {}, {
  obj(dish). hasRole(dish, utensilRole). affordsTask(dish, eatingDrinkingTask).
}).
#pos(e598@100, {goesIn(dish, table)}, {}, {
  obj(dish). hasRole(dish, utensilRole). affordsTask(dish, eatingDrinkingTask).
}).
#pos(e599@100, {goesIn(dishes, kitchen)}, {}, {
  obj(dishes). hasRole(dishes, utensilRole). affordsTask(dishes, eatingDrinkingTask). affordsTask(dishes, foodPreparationTask).
}).
#pos(e600@100, {goesIn(dishes, pantry)}, {}, {
  obj(dishes). hasRole(dishes, utensilRole). affordsTask(dishes, eatingDrinkingTask). affordsTask(dishes, foodPreparationTask).
}).
#pos(e601@100, {goesIn(dishes, shelf)}, {}, {
  obj(dishes). hasRole(dishes, utensilRole). affordsTask(dishes, eatingDrinkingTask). affordsTask(dishes, foodPreparationTask).
}).
#pos(e602@100, {goesIn(dishes, table)}, {}, {
  obj(dishes). hasRole(dishes, utensilRole). affordsTask(dishes, eatingDrinkingTask). affordsTask(dishes, foodPreparationTask).
}).
#pos(e603@100, {goesIn(dishwasher, kitchen)}, {}, {
  obj(dishwasher). hasRole(dishwasher, applianceRole). affordsTask(dishwasher, cleaningTask).
}).
#pos(e604@100, {goesIn(disk, library)}, {}, {
  obj(disk). hasRole(disk, storageContainerRole). affordsTask(disk, storageTask).
}).
#pos(e605@100, {goesIn(display_cabinet, living_room)}, {}, {
  obj(display_cabinet). hasRole(display_cabinet, furnitureRole). hasRole(display_cabinet, storageContainerRole). affordsTask(display_cabinet, leisureTask). affordsTask(display_cabinet, storageTask).
}).
#pos(e606@100, {goesIn(display_cabinet, storage_room)}, {}, {
  obj(display_cabinet). hasRole(display_cabinet, furnitureRole). hasRole(display_cabinet, storageContainerRole). affordsTask(display_cabinet, leisureTask). affordsTask(display_cabinet, storageTask).
}).
#pos(e607@100, {goesIn(disposable_razor, bathroom)}, {}, {
  obj(disposable_razor). hasRole(disposable_razor, utensilRole). affordsTask(disposable_razor, foodPreparationTask).
}).
#pos(e608@100, {goesIn(disposable_razor, kitchen)}, {}, {
  obj(disposable_razor). hasRole(disposable_razor, utensilRole). affordsTask(disposable_razor, foodPreparationTask).
}).
#pos(e609@100, {goesIn(disposable_razor, library)}, {}, {
  obj(disposable_razor). hasRole(disposable_razor, utensilRole). affordsTask(disposable_razor, foodPreparationTask).
}).
#pos(e610@100, {goesIn(disposable_razor, trash)}, {}, {
  obj(disposable_razor). hasRole(disposable_razor, utensilRole). affordsTask(disposable_razor, foodPreparationTask).
}).
#pos(e611@100, {goesIn(divider, library)}, {}, {
  obj(divider). hasRole(divider, furnitureRole). affordsTask(divider, storageTask).
}).
#pos(e612@100, {goesIn(divider, living_room)}, {}, {
  obj(divider). hasRole(divider, furnitureRole). affordsTask(divider, storageTask).
}).
#pos(e613@100, {goesIn(dog, bed)}, {}, {
  obj(dog). hasRole(dog, consumableRole). affordsTask(dog, eatingDrinkingTask). affordsTask(dog, leisureTask).
}).
#pos(e614@100, {goesIn(dog, bedroom)}, {}, {
  obj(dog). hasRole(dog, consumableRole). affordsTask(dog, eatingDrinkingTask). affordsTask(dog, leisureTask).
}).
#pos(e615@100, {goesIn(dog, garden)}, {}, {
  obj(dog). hasRole(dog, consumableRole). affordsTask(dog, eatingDrinkingTask). affordsTask(dog, leisureTask).
}).
#pos(e616@100, {goesIn(dog, living_room)}, {}, {
  obj(dog). hasRole(dog, consumableRole). affordsTask(dog, eatingDrinkingTask). affordsTask(dog, leisureTask).
}).
#pos(e617@100, {goesIn(dog, table)}, {}, {
  obj(dog). hasRole(dog, consumableRole). affordsTask(dog, eatingDrinkingTask). affordsTask(dog, leisureTask).
}).
#pos(e618@100, {goesIn(dogs, bedroom)}, {}, {
  obj(dogs). hasRole(dogs, consumableRole). affordsTask(dogs, eatingDrinkingTask).
}).
#pos(e619@100, {goesIn(door, garage)}, {}, {
  obj(door). hasRole(door, furnitureRole). affordsTask(door, storageTask).
}).
#pos(e620@100, {goesIn(door, library)}, {}, {
  obj(door). hasRole(door, furnitureRole). affordsTask(door, storageTask).
}).
#pos(e621@100, {goesIn(door_with_lock, bedroom)}, {}, {
  obj(door_with_lock). hasRole(door_with_lock, furnitureRole). affordsTask(door_with_lock, maintenanceTask).
}).
#pos(e622@100, {goesIn(door_with_lock, closet)}, {}, {
  obj(door_with_lock). hasRole(door_with_lock, furnitureRole). affordsTask(door_with_lock, maintenanceTask).
}).
#pos(e623@100, {goesIn(door_with_lock, garage)}, {}, {
  obj(door_with_lock). hasRole(door_with_lock, furnitureRole). affordsTask(door_with_lock, maintenanceTask).
}).
#pos(e624@100, {goesIn(doormat, bedroom)}, {}, {
  obj(doormat). hasRole(doormat, furnitureRole). affordsTask(doormat, cleaningTask).
}).
#pos(e625@100, {goesIn(doormat, garden)}, {}, {
  obj(doormat). hasRole(doormat, furnitureRole). affordsTask(doormat, cleaningTask).
}).
#pos(e626@100, {goesIn(doormat, hallway)}, {}, {
  obj(doormat). hasRole(doormat, furnitureRole). affordsTask(doormat, cleaningTask).
}).
#pos(e627@100, {goesIn(doormat, library)}, {}, {
  obj(doormat). hasRole(doormat, furnitureRole). affordsTask(doormat, cleaningTask).
}).
#pos(e628@100, {goesIn(doorway, bedroom)}, {}, {
  obj(doorway). hasRole(doorway, furnitureRole). affordsTask(doorway, leisureTask).
}).
#pos(e629@100, {goesIn(doorway, library)}, {}, {
  obj(doorway). hasRole(doorway, furnitureRole). affordsTask(doorway, leisureTask).
}).
#pos(e630@100, {goesIn(double_edged_razor, bathroom)}, {}, {
  obj(double_edged_razor). hasRole(double_edged_razor, utensilRole). affordsTask(double_edged_razor, foodPreparationTask).
}).
#pos(e631@100, {goesIn(double_edged_razor, library)}, {}, {
  obj(double_edged_razor). hasRole(double_edged_razor, utensilRole). affordsTask(double_edged_razor, foodPreparationTask).
}).
#pos(e632@100, {goesIn(drawer, bedroom)}, {}, {
  obj(drawer). hasRole(drawer, storageContainerRole). affordsTask(drawer, storageTask).
}).
#pos(e633@100, {goesIn(drawer, kitchen)}, {}, {
  obj(drawer). hasRole(drawer, storageContainerRole). affordsTask(drawer, storageTask).
}).
#pos(e634@100, {goesIn(drawer, living_room)}, {}, {
  obj(drawer). hasRole(drawer, storageContainerRole). affordsTask(drawer, storageTask).
}).
#pos(e635@100, {goesIn(drawing_room, bedroom)}, {}, {
  obj(drawing_room). hasRole(drawing_room, furnitureRole). affordsTask(drawing_room, leisureTask).
}).
#pos(e636@100, {goesIn(drawstring_bag, closet)}, {}, {
  obj(drawstring_bag). hasRole(drawstring_bag, storageContainerRole). affordsTask(drawstring_bag, storageTask).
}).
#pos(e637@100, {goesIn(drawstring_bag, garage)}, {}, {
  obj(drawstring_bag). hasRole(drawstring_bag, storageContainerRole). affordsTask(drawstring_bag, storageTask).
}).
#pos(e638@100, {goesIn(drawstring_bag, kitchen)}, {}, {
  obj(drawstring_bag). hasRole(drawstring_bag, storageContainerRole). affordsTask(drawstring_bag, storageTask).
}).
#pos(e639@100, {goesIn(drawstring_bag, laundry_room)}, {}, {
  obj(drawstring_bag). hasRole(drawstring_bag, storageContainerRole). affordsTask(drawstring_bag, storageTask).
}).
#pos(e640@100, {goesIn(drawstring_bag, storage_room)}, {}, {
  obj(drawstring_bag). hasRole(drawstring_bag, storageContainerRole). affordsTask(drawstring_bag, storageTask).
}).
#pos(e641@100, {goesIn(dress, bedroom)}, {}, {
  obj(dress). hasRole(dress, clothingRole). affordsTask(dress, dressingTask).
}).
#pos(e642@100, {goesIn(dress, closet)}, {}, {
  obj(dress). hasRole(dress, clothingRole). affordsTask(dress, dressingTask).
}).
#pos(e643@100, {goesIn(dress, storage_room)}, {}, {
  obj(dress). hasRole(dress, clothingRole). affordsTask(dress, dressingTask).
}).
#pos(e644@100, {goesIn(dresser, bedroom)}, {}, {
  obj(dresser). hasRole(dresser, furnitureRole). affordsTask(dresser, storageTask).
}).
#pos(e645@100, {goesIn(dresser, drawer)}, {}, {
  obj(dresser). hasRole(dresser, furnitureRole). affordsTask(dresser, storageTask).
}).
#pos(e646@100, {goesIn(drill, closet)}, {}, {
  obj(drill). hasRole(drill, toolRole). affordsTask(drill, maintenanceTask).
}).
#pos(e647@100, {goesIn(drill, garage)}, {}, {
  obj(drill). hasRole(drill, toolRole). affordsTask(drill, maintenanceTask).
}).
#pos(e648@100, {goesIn(drill, storage_room)}, {}, {
  obj(drill). hasRole(drill, toolRole). affordsTask(drill, maintenanceTask).
}).
#pos(e649@100, {goesIn(drink, bedroom)}, {}, {
  obj(drink). hasRole(drink, consumableRole). affordsTask(drink, eatingDrinkingTask).
}).
#pos(e650@100, {goesIn(drink, closet)}, {}, {
  obj(drink). hasRole(drink, consumableRole). affordsTask(drink, eatingDrinkingTask).
}).
#pos(e651@100, {goesIn(drink, kitchen)}, {}, {
  obj(drink). hasRole(drink, consumableRole). affordsTask(drink, eatingDrinkingTask).
}).
#pos(e652@100, {goesIn(drink, pantry)}, {}, {
  obj(drink). hasRole(drink, consumableRole). affordsTask(drink, eatingDrinkingTask).
}).
#pos(e653@100, {goesIn(drinking_water, closet)}, {}, {
  obj(drinking_water). hasRole(drinking_water, consumableRole). affordsTask(drinking_water, eatingDrinkingTask).
}).
#pos(e654@100, {goesIn(drinking_water, garage)}, {}, {
  obj(drinking_water). hasRole(drinking_water, consumableRole). affordsTask(drinking_water, eatingDrinkingTask).
}).
#pos(e655@100, {goesIn(drinking_water, kitchen)}, {}, {
  obj(drinking_water). hasRole(drinking_water, consumableRole). affordsTask(drinking_water, eatingDrinkingTask).
}).
#pos(e656@100, {goesIn(drinking_water, library)}, {}, {
  obj(drinking_water). hasRole(drinking_water, consumableRole). affordsTask(drinking_water, eatingDrinkingTask).
}).
#pos(e657@100, {goesIn(drinking_water, pantry)}, {}, {
  obj(drinking_water). hasRole(drinking_water, consumableRole). affordsTask(drinking_water, eatingDrinkingTask).
}).
#pos(e658@100, {goesIn(drinks, fridge)}, {}, {
  obj(drinks). hasRole(drinks, consumableRole). affordsTask(drinks, eatingDrinkingTask).
}).
#pos(e659@100, {goesIn(dryer, closet)}, {}, {
  obj(dryer). hasRole(dryer, applianceRole). affordsTask(dryer, maintenanceTask).
}).
#pos(e660@100, {goesIn(dryer, storage_room)}, {}, {
  obj(dryer). hasRole(dryer, applianceRole). affordsTask(dryer, maintenanceTask).
}).
#pos(e661@100, {goesIn(dust, bathroom)}, {}, {
  obj(dust). hasRole(dust, wasteRole). affordsTask(dust, cleaningTask).
}).
#pos(e662@100, {goesIn(dust, bed)}, {}, {
  obj(dust). hasRole(dust, wasteRole). affordsTask(dust, cleaningTask).
}).
#pos(e663@100, {goesIn(dust, bedroom)}, {}, {
  obj(dust). hasRole(dust, wasteRole). affordsTask(dust, cleaningTask).
}).
#pos(e664@100, {goesIn(dust, closet)}, {}, {
  obj(dust). hasRole(dust, wasteRole). affordsTask(dust, cleaningTask).
}).
#pos(e665@100, {goesIn(dust, drawer)}, {}, {
  obj(dust). hasRole(dust, wasteRole). affordsTask(dust, cleaningTask).
}).
#pos(e666@100, {goesIn(dust, fridge)}, {}, {
  obj(dust). hasRole(dust, wasteRole). affordsTask(dust, cleaningTask).
}).
#pos(e667@100, {goesIn(dust, garage)}, {}, {
  obj(dust). hasRole(dust, wasteRole). affordsTask(dust, cleaningTask).
}).
#pos(e668@100, {goesIn(dust, kitchen)}, {}, {
  obj(dust). hasRole(dust, wasteRole). affordsTask(dust, cleaningTask).
}).
#pos(e669@100, {goesIn(dust, library)}, {}, {
  obj(dust). hasRole(dust, wasteRole). affordsTask(dust, cleaningTask).
}).
#pos(e670@100, {goesIn(dust, living_room)}, {}, {
  obj(dust). hasRole(dust, wasteRole). affordsTask(dust, cleaningTask).
}).
#pos(e671@100, {goesIn(dust, shelf)}, {}, {
  obj(dust). hasRole(dust, wasteRole). affordsTask(dust, cleaningTask).
}).
#pos(e672@100, {goesIn(dust, storage_room)}, {}, {
  obj(dust). hasRole(dust, wasteRole). affordsTask(dust, cleaningTask).
}).
#pos(e673@100, {goesIn(dust, table)}, {}, {
  obj(dust). hasRole(dust, wasteRole). affordsTask(dust, cleaningTask).
}).
#pos(e674@100, {goesIn(dustbin, bedroom)}, {}, {
  obj(dustbin). hasRole(dustbin, storageContainerRole). hasRole(dustbin, wasteRole). affordsTask(dustbin, wasteDisposalTask).
}).
#pos(e675@100, {goesIn(dustbin, cabinet)}, {}, {
  obj(dustbin). hasRole(dustbin, storageContainerRole). hasRole(dustbin, wasteRole). affordsTask(dustbin, wasteDisposalTask).
}).
#pos(e676@100, {goesIn(dustbin, closet)}, {}, {
  obj(dustbin). hasRole(dustbin, storageContainerRole). hasRole(dustbin, wasteRole). affordsTask(dustbin, wasteDisposalTask).
}).
#pos(e677@100, {goesIn(dustbin, kitchen)}, {}, {
  obj(dustbin). hasRole(dustbin, storageContainerRole). hasRole(dustbin, wasteRole). affordsTask(dustbin, wasteDisposalTask).
}).
#pos(e678@100, {goesIn(duvet, bed)}, {}, {
  obj(duvet). hasRole(duvet, beddingRole). affordsTask(duvet, sleepingTask).
}).
#pos(e679@100, {goesIn(duvet, bedroom)}, {}, {
  obj(duvet). hasRole(duvet, beddingRole). affordsTask(duvet, sleepingTask).
}).
#pos(e680@100, {goesIn(duvet, living_room)}, {}, {
  obj(duvet). hasRole(duvet, beddingRole). affordsTask(duvet, sleepingTask).
}).
#pos(e681@100, {goesIn(duvet_cover, bed)}, {}, {
  obj(duvet_cover). hasRole(duvet_cover, beddingRole). affordsTask(duvet_cover, sleepingTask).
}).
#pos(e682@100, {goesIn(duvet_cover, bedroom)}, {}, {
  obj(duvet_cover). hasRole(duvet_cover, beddingRole). affordsTask(duvet_cover, sleepingTask).
}).
#pos(e683@100, {goesIn(egg, fridge)}, {}, {
  obj(egg). hasRole(egg, consumableRole). affordsTask(egg, eatingDrinkingTask). affordsTask(egg, foodPreparationTask).
}).
#pos(e684@100, {goesIn(egg, kitchen)}, {}, {
  obj(egg). hasRole(egg, consumableRole). affordsTask(egg, eatingDrinkingTask). affordsTask(egg, foodPreparationTask).
}).
#pos(e685@100, {goesIn(egg_shells, trash)}, {}, {
  obj(egg_shells). hasRole(egg_shells, wasteRole).
}).
#pos(e686@100, {goesIn(eggs, fridge)}, {}, {
  obj(eggs). hasRole(eggs, consumableRole). affordsTask(eggs, eatingDrinkingTask).
}).
#pos(e687@100, {goesIn(electric_blanket, bedroom)}, {}, {
  obj(electric_blanket). hasRole(electric_blanket, beddingRole). affordsTask(electric_blanket, sleepingTask).
}).
#pos(e688@100, {goesIn(electric_blanket, closet)}, {}, {
  obj(electric_blanket). hasRole(electric_blanket, beddingRole). affordsTask(electric_blanket, sleepingTask).
}).
#pos(e689@100, {goesIn(electric_fan, bedroom)}, {}, {
  obj(electric_fan). hasRole(electric_fan, applianceRole). affordsTask(electric_fan, leisureTask).
}).
#pos(e690@100, {goesIn(electric_fan, closet)}, {}, {
  obj(electric_fan). hasRole(electric_fan, applianceRole). affordsTask(electric_fan, leisureTask).
}).
#pos(e691@100, {goesIn(electric_fan, library)}, {}, {
  obj(electric_fan). hasRole(electric_fan, applianceRole). affordsTask(electric_fan, leisureTask).
}).
#pos(e692@100, {goesIn(electric_pencil_sharpener, garage)}, {}, {
  obj(electric_pencil_sharpener). hasRole(electric_pencil_sharpener, toolRole). affordsTask(electric_pencil_sharpener, maintenanceTask).
}).
#pos(e693@100, {goesIn(electric_pencil_sharpener, storage_room)}, {}, {
  obj(electric_pencil_sharpener). hasRole(electric_pencil_sharpener, toolRole). affordsTask(electric_pencil_sharpener, maintenanceTask).
}).
#pos(e694@100, {goesIn(electric_pencil_sharpener, table)}, {}, {
  obj(electric_pencil_sharpener). hasRole(electric_pencil_sharpener, toolRole). affordsTask(electric_pencil_sharpener, maintenanceTask).
}).
#pos(e695@100, {goesIn(electric_razor, bathroom)}, {}, {
  obj(electric_razor). hasRole(electric_razor, toolRole). affordsTask(electric_razor, foodPreparationTask).
}).
#pos(e696@100, {goesIn(electric_razor, library)}, {}, {
  obj(electric_razor). hasRole(electric_razor, toolRole). affordsTask(electric_razor, foodPreparationTask).
}).
#pos(e697@100, {goesIn(electric_socket, bedroom)}, {}, {
  obj(electric_socket). hasRole(electric_socket, applianceRole). affordsTask(electric_socket, workStudyTask).
}).
#pos(e698@100, {goesIn(electricity, bedroom)}, {}, {
  obj(electricity). hasRole(electricity, applianceRole). affordsTask(electricity, leisureTask). affordsTask(electricity, workStudyTask).
}).
#pos(e699@100, {goesIn(electricity, closet)}, {}, {
  obj(electricity). hasRole(electricity, applianceRole). affordsTask(electricity, leisureTask). affordsTask(electricity, workStudyTask).
}).
#pos(e700@100, {goesIn(electricity, storage_room)}, {}, {
  obj(electricity). hasRole(electricity, applianceRole). affordsTask(electricity, leisureTask). affordsTask(electricity, workStudyTask).
}).
#pos(e701@100, {goesIn(electronic_appliance, bedroom)}, {}, {
  obj(electronic_appliance). hasRole(electronic_appliance, applianceRole). affordsTask(electronic_appliance, leisureTask). affordsTask(electronic_appliance, workStudyTask).
}).
#pos(e702@100, {goesIn(electronic_appliance, living_room)}, {}, {
  obj(electronic_appliance). hasRole(electronic_appliance, applianceRole). affordsTask(electronic_appliance, leisureTask). affordsTask(electronic_appliance, workStudyTask).
}).
#pos(e703@100, {goesIn(encyclopedia, library)}, {}, {
  obj(encyclopedia). hasRole(encyclopedia, documentRole). affordsTask(encyclopedia, workStudyTask).
}).
#pos(e704@100, {goesIn(entrance, bedroom)}, {}, {
  obj(entrance). hasRole(entrance, furnitureRole). affordsTask(entrance, leisureTask).
}).
#pos(e705@100, {goesIn(entrance_hall, bedroom)}, {}, {
  obj(entrance_hall). hasRole(entrance_hall, furnitureRole).
}).
#pos(e706@100, {goesIn(entrance_hall, garage)}, {}, {
  obj(entrance_hall). hasRole(entrance_hall, furnitureRole).
}).
#pos(e707@100, {goesIn(entranceway, bedroom)}, {}, {
  obj(entranceway). hasRole(entranceway, furnitureRole). affordsTask(entranceway, leisureTask).
}).
#pos(e708@100, {goesIn(entryway, bedroom)}, {}, {
  obj(entryway). hasRole(entryway, furnitureRole). affordsTask(entryway, leisureTask).
}).
#pos(e709@100, {goesIn(entryway, garden)}, {}, {
  obj(entryway). hasRole(entryway, furnitureRole). affordsTask(entryway, leisureTask).
}).
#pos(e710@100, {goesIn(envelope, drawer)}, {}, {
  obj(envelope). hasRole(envelope, storageContainerRole). affordsTask(envelope, storageTask).
}).
#pos(e711@100, {goesIn(envelope, table)}, {}, {
  obj(envelope). hasRole(envelope, storageContainerRole). affordsTask(envelope, storageTask).
}).
#pos(e712@100, {goesIn(eraser, table)}, {}, {
  obj(eraser). hasRole(eraser, toolRole). affordsTask(eraser, maintenanceTask).
}).
#pos(e713@100, {goesIn(eyeglasses_case, drawer)}, {}, {
  obj(eyeglasses_case). hasRole(eyeglasses_case, storageContainerRole). affordsTask(eyeglasses_case, storageTask).
}).
#pos(e714@100, {goesIn(fan, bedroom)}, {}, {
  obj(fan). hasRole(fan, applianceRole). affordsTask(fan, leisureTask).
}).
#pos(e715@100, {goesIn(fan, garage)}, {}, {
  obj(fan). hasRole(fan, applianceRole). affordsTask(fan, leisureTask).
}).
#pos(e716@100, {goesIn(fan, living_room)}, {}, {
  obj(fan). hasRole(fan, applianceRole). affordsTask(fan, leisureTask).
}).
#pos(e717@100, {goesIn(fan, storage_room)}, {}, {
  obj(fan). hasRole(fan, applianceRole). affordsTask(fan, leisureTask).
}).
#pos(e718@100, {goesIn(fans, bedroom)}, {}, {
  obj(fans). hasRole(fans, applianceRole). affordsTask(fans, leisureTask).
}).
#pos(e719@100, {goesIn(faucet, bathroom)}, {}, {
  obj(faucet). hasRole(faucet, toolRole). affordsTask(faucet, eatingDrinkingTask). affordsTask(faucet, hygieneTask).
}).
#pos(e720@100, {goesIn(faucet, library)}, {}, {
  obj(faucet). hasRole(faucet, toolRole). affordsTask(faucet, eatingDrinkingTask). affordsTask(faucet, hygieneTask).
}).
#pos(e721@100, {goesIn(faucet, sink)}, {}, {
  obj(faucet). hasRole(faucet, toolRole). affordsTask(faucet, eatingDrinkingTask). affordsTask(faucet, hygieneTask).
}).
#pos(e722@100, {goesIn(faucet_overflow, bathroom)}, {}, {
  obj(faucet_overflow). hasRole(faucet_overflow, toolRole). affordsTask(faucet_overflow, maintenanceTask).
}).
#pos(e723@100, {goesIn(faucet_overflow, kitchen)}, {}, {
  obj(faucet_overflow). hasRole(faucet_overflow, toolRole). affordsTask(faucet_overflow, maintenanceTask).
}).
#pos(e724@100, {goesIn(faucet_overflow, library)}, {}, {
  obj(faucet_overflow). hasRole(faucet_overflow, toolRole). affordsTask(faucet_overflow, maintenanceTask).
}).
#pos(e725@100, {goesIn(faucet_overflow, sink)}, {}, {
  obj(faucet_overflow). hasRole(faucet_overflow, toolRole). affordsTask(faucet_overflow, maintenanceTask).
}).
#pos(e726@100, {goesIn(feather, bedroom)}, {}, {
  obj(feather). hasRole(feather, consumableRole). affordsTask(feather, leisureTask).
}).
#pos(e727@100, {goesIn(feather, closet)}, {}, {
  obj(feather). hasRole(feather, consumableRole). affordsTask(feather, leisureTask).
}).
#pos(e728@100, {goesIn(feather, garden)}, {}, {
  obj(feather). hasRole(feather, consumableRole). affordsTask(feather, leisureTask).
}).
#pos(e729@100, {goesIn(feathers, bedroom)}, {}, {
  obj(feathers). hasRole(feathers, beddingRole). affordsTask(feathers, leisureTask).
}).
#pos(e730@100, {goesIn(felt, bedroom)}, {}, {
  obj(felt). hasRole(felt, consumableRole). affordsTask(felt, leisureTask).
}).
#pos(e731@100, {goesIn(felt, closet)}, {}, {
  obj(felt). hasRole(felt, consumableRole). affordsTask(felt, leisureTask).
}).
#pos(e732@100, {goesIn(felt, table)}, {}, {
  obj(felt). hasRole(felt, consumableRole). affordsTask(felt, leisureTask).
}).
#pos(e733@100, {goesIn(ferret, closet)}, {}, {
  obj(ferret). hasRole(ferret, entertainmentRole). affordsTask(ferret, leisureTask).
}).
#pos(e734@100, {goesIn(ferret, garage)}, {}, {
  obj(ferret). hasRole(ferret, entertainmentRole). affordsTask(ferret, leisureTask).
}).
#pos(e735@100, {goesIn(ferret, living_room)}, {}, {
  obj(ferret). hasRole(ferret, entertainmentRole). affordsTask(ferret, leisureTask).
}).
#pos(e736@100, {goesIn(ferret, storage_room)}, {}, {
  obj(ferret). hasRole(ferret, entertainmentRole). affordsTask(ferret, leisureTask).
}).
#pos(e737@100, {goesIn(fertilizer, garage)}, {}, {
  obj(fertilizer). hasRole(fertilizer, toolRole). affordsTask(fertilizer, gardeningTask).
}).
#pos(e738@100, {goesIn(fiberglass, garage)}, {}, {
  obj(fiberglass). hasRole(fiberglass, storageContainerRole). affordsTask(fiberglass, maintenanceTask).
}).
#pos(e739@100, {goesIn(file, drawer)}, {}, {
  obj(file). hasRole(file, storageContainerRole). affordsTask(file, storageTask).
}).
#pos(e740@100, {goesIn(file, garage)}, {}, {
  obj(file). hasRole(file, storageContainerRole). affordsTask(file, storageTask).
}).
#pos(e741@100, {goesIn(file, library)}, {}, {
  obj(file). hasRole(file, storageContainerRole). affordsTask(file, storageTask).
}).
#pos(e742@100, {goesIn(file_cabinet, table)}, {}, {
  obj(file_cabinet). hasRole(file_cabinet, storageContainerRole). affordsTask(file_cabinet, storageTask).
}).
#pos(e743@100, {goesIn(files, drawer)}, {}, {
  obj(files). hasRole(files, storageContainerRole). affordsTask(files, storageTask).
}).
#pos(e744@100, {goesIn(files, library)}, {}, {
  obj(files). hasRole(files, storageContainerRole). affordsTask(files, storageTask).
}).
#pos(e745@100, {goesIn(files, table)}, {}, {
  obj(files). hasRole(files, storageContainerRole). affordsTask(files, storageTask).
}).
#pos(e746@100, {goesIn(filing_box, bedroom)}, {}, {
  obj(filing_box). hasRole(filing_box, storageContainerRole). affordsTask(filing_box, storageTask).
}).
#pos(e747@100, {goesIn(filing_box, closet)}, {}, {
  obj(filing_box). hasRole(filing_box, storageContainerRole). affordsTask(filing_box, storageTask).
}).
#pos(e748@100, {goesIn(film, drawer)}, {}, {
  obj(film). hasRole(film, consumableRole). affordsTask(film, leisureTask).
}).
#pos(e749@100, {goesIn(fire, bedroom)}, {}, {
  obj(fire). hasRole(fire, toolRole). affordsTask(fire, leisureTask). affordsTask(fire, maintenanceTask).
}).
#pos(e750@100, {goesIn(fire, living_room)}, {}, {
  obj(fire). hasRole(fire, toolRole). affordsTask(fire, leisureTask). affordsTask(fire, maintenanceTask).
}).
#pos(e751@100, {goesIn(fire_extinguisher, bedroom)}, {}, {
  obj(fire_extinguisher). hasRole(fire_extinguisher, safetyEquipmentRole). affordsTask(fire_extinguisher, maintenanceTask).
}).
#pos(e752@100, {goesIn(fire_extinguisher, garage)}, {}, {
  obj(fire_extinguisher). hasRole(fire_extinguisher, safetyEquipmentRole). affordsTask(fire_extinguisher, maintenanceTask).
}).
#pos(e753@100, {goesIn(fire_extinguisher, kitchen)}, {}, {
  obj(fire_extinguisher). hasRole(fire_extinguisher, safetyEquipmentRole). affordsTask(fire_extinguisher, maintenanceTask).
}).
#pos(e754@100, {goesIn(fireplace, bedroom)}, {}, {
  obj(fireplace). hasRole(fireplace, cookwareRole). affordsTask(fireplace, foodPreparationTask).
}).
#pos(e755@100, {goesIn(fireplace, living_room)}, {}, {
  obj(fireplace). hasRole(fireplace, cookwareRole). affordsTask(fireplace, foodPreparationTask).
}).
#pos(e756@100, {goesIn(fish, bathroom)}, {}, {
  obj(fish). hasRole(fish, consumableRole). affordsTask(fish, eatingDrinkingTask).
}).
#pos(e757@100, {goesIn(fish, closet)}, {}, {
  obj(fish). hasRole(fish, consumableRole). affordsTask(fish, eatingDrinkingTask).
}).
#pos(e758@100, {goesIn(fish, fridge)}, {}, {
  obj(fish). hasRole(fish, consumableRole). affordsTask(fish, eatingDrinkingTask).
}).
#pos(e759@100, {goesIn(fish, garage)}, {}, {
  obj(fish). hasRole(fish, consumableRole). affordsTask(fish, eatingDrinkingTask).
}).
#pos(e760@100, {goesIn(fishes, bathroom)}, {}, {
  obj(fishes). hasRole(fishes, consumableRole). affordsTask(fishes, eatingDrinkingTask).
}).
#pos(e761@100, {goesIn(fishes, closet)}, {}, {
  obj(fishes). hasRole(fishes, consumableRole). affordsTask(fishes, eatingDrinkingTask).
}).
#pos(e762@100, {goesIn(flask, cabinet)}, {}, {
  obj(flask). hasRole(flask, storageContainerRole). affordsTask(flask, eatingDrinkingTask). affordsTask(flask, storageTask).
}).
#pos(e763@100, {goesIn(flask, storage_room)}, {}, {
  obj(flask). hasRole(flask, storageContainerRole). affordsTask(flask, eatingDrinkingTask). affordsTask(flask, storageTask).
}).
#pos(e764@100, {goesIn(flight_bag, bedroom)}, {}, {
  obj(flight_bag). hasRole(flight_bag, storageContainerRole).
}).
#pos(e765@100, {goesIn(flight_bag, garage)}, {}, {
  obj(flight_bag). hasRole(flight_bag, storageContainerRole).
}).
#pos(e766@100, {goesIn(flight_bag, storage_room)}, {}, {
  obj(flight_bag). hasRole(flight_bag, storageContainerRole).
}).
#pos(e767@100, {goesIn(floor, bathroom)}, {}, {
  obj(floor). hasRole(floor, furnitureRole). affordsTask(floor, leisureTask). affordsTask(floor, storageTask).
}).
#pos(e768@100, {goesIn(floor, bed)}, {}, {
  obj(floor). hasRole(floor, furnitureRole). affordsTask(floor, leisureTask). affordsTask(floor, storageTask).
}).
#pos(e769@100, {goesIn(floor, bedroom)}, {}, {
  obj(floor). hasRole(floor, furnitureRole). affordsTask(floor, leisureTask). affordsTask(floor, storageTask).
}).
#pos(e770@100, {goesIn(floor, closet)}, {}, {
  obj(floor). hasRole(floor, furnitureRole). affordsTask(floor, leisureTask). affordsTask(floor, storageTask).
}).
#pos(e771@100, {goesIn(floor, garage)}, {}, {
  obj(floor). hasRole(floor, furnitureRole). affordsTask(floor, leisureTask). affordsTask(floor, storageTask).
}).
#pos(e772@100, {goesIn(floor, library)}, {}, {
  obj(floor). hasRole(floor, furnitureRole). affordsTask(floor, leisureTask). affordsTask(floor, storageTask).
}).
#pos(e773@100, {goesIn(floor, table)}, {}, {
  obj(floor). hasRole(floor, furnitureRole). affordsTask(floor, leisureTask). affordsTask(floor, storageTask).
}).
#pos(e774@100, {goesIn(flooring, bathroom)}, {}, {
  obj(flooring). hasRole(flooring, furnitureRole). affordsTask(flooring, leisureTask).
}).
#pos(e775@100, {goesIn(flooring, bedroom)}, {}, {
  obj(flooring). hasRole(flooring, furnitureRole). affordsTask(flooring, leisureTask).
}).
#pos(e776@100, {goesIn(flooring, closet)}, {}, {
  obj(flooring). hasRole(flooring, furnitureRole). affordsTask(flooring, leisureTask).
}).
#pos(e777@100, {goesIn(flooring, kitchen)}, {}, {
  obj(flooring). hasRole(flooring, furnitureRole). affordsTask(flooring, leisureTask).
}).
#pos(e778@100, {goesIn(flour, cabinet)}, {}, {
  obj(flour). hasRole(flour, consumableRole). affordsTask(flour, foodPreparationTask).
}).
#pos(e779@100, {goesIn(flour, kitchen)}, {}, {
  obj(flour). hasRole(flour, consumableRole). affordsTask(flour, foodPreparationTask).
}).
#pos(e780@100, {goesIn(flour, pantry)}, {}, {
  obj(flour). hasRole(flour, consumableRole). affordsTask(flour, foodPreparationTask).
}).
#pos(e781@100, {goesIn(flower, shelf)}, {}, {
  obj(flower). hasRole(flower, consumableRole). affordsTask(flower, eatingDrinkingTask).
}).
#pos(e782@100, {goesIn(flowers, garden)}, {}, {
  obj(flowers). hasRole(flowers, consumableRole). affordsTask(flowers, gardeningTask). affordsTask(flowers, leisureTask).
}).
#pos(e783@100, {goesIn(flowers, table)}, {}, {
  obj(flowers). hasRole(flowers, consumableRole). affordsTask(flowers, gardeningTask). affordsTask(flowers, leisureTask).
}).
#pos(e784@100, {goesIn(fluoride_mouthwash, bathroom)}, {}, {
  obj(fluoride_mouthwash). hasRole(fluoride_mouthwash, cleaningToolRole). affordsTask(fluoride_mouthwash, hygieneTask).
}).
#pos(e785@100, {goesIn(fluoride_mouthwash, bedroom)}, {}, {
  obj(fluoride_mouthwash). hasRole(fluoride_mouthwash, cleaningToolRole). affordsTask(fluoride_mouthwash, hygieneTask).
}).
#pos(e786@100, {goesIn(fluoride_mouthwash, library)}, {}, {
  obj(fluoride_mouthwash). hasRole(fluoride_mouthwash, cleaningToolRole). affordsTask(fluoride_mouthwash, hygieneTask).
}).
#pos(e787@100, {goesIn(folder, shelf)}, {}, {
  obj(folder). hasRole(folder, storageContainerRole). affordsTask(folder, storageTask).
}).
#pos(e788@100, {goesIn(folding_chair, bedroom)}, {}, {
  obj(folding_chair). hasRole(folding_chair, furnitureRole). affordsTask(folding_chair, leisureTask). affordsTask(folding_chair, storageTask).
}).
#pos(e789@100, {goesIn(folding_chair, closet)}, {}, {
  obj(folding_chair). hasRole(folding_chair, furnitureRole). affordsTask(folding_chair, leisureTask). affordsTask(folding_chair, storageTask).
}).
#pos(e790@100, {goesIn(folding_chair, garage)}, {}, {
  obj(folding_chair). hasRole(folding_chair, furnitureRole). affordsTask(folding_chair, leisureTask). affordsTask(folding_chair, storageTask).
}).
#pos(e791@100, {goesIn(folding_door, bedroom)}, {}, {
  obj(folding_door). hasRole(folding_door, furnitureRole). affordsTask(folding_door, storageTask).
}).
#pos(e792@100, {goesIn(folding_door, closet)}, {}, {
  obj(folding_door). hasRole(folding_door, furnitureRole). affordsTask(folding_door, storageTask).
}).
#pos(e793@100, {goesIn(folding_door, hallway)}, {}, {
  obj(folding_door). hasRole(folding_door, furnitureRole). affordsTask(folding_door, storageTask).
}).
#pos(e794@100, {goesIn(folding_door, library)}, {}, {
  obj(folding_door). hasRole(folding_door, furnitureRole). affordsTask(folding_door, storageTask).
}).
#pos(e795@100, {goesIn(folding_shower_door, bathroom)}, {}, {
  obj(folding_shower_door). hasRole(folding_shower_door, furnitureRole). affordsTask(folding_shower_door, leisureTask).
}).
#pos(e796@100, {goesIn(folding_shower_door, library)}, {}, {
  obj(folding_shower_door). hasRole(folding_shower_door, furnitureRole). affordsTask(folding_shower_door, leisureTask).
}).
#pos(e797@100, {goesIn(food, bedroom)}, {}, {
  obj(food). hasRole(food, consumableRole). affordsTask(food, eatingDrinkingTask).
}).
#pos(e798@100, {goesIn(food, cabinet)}, {}, {
  obj(food). hasRole(food, consumableRole). affordsTask(food, eatingDrinkingTask).
}).
#pos(e799@100, {goesIn(food, closet)}, {}, {
  obj(food). hasRole(food, consumableRole). affordsTask(food, eatingDrinkingTask).
}).
#pos(e800@100, {goesIn(food, fridge)}, {}, {
  obj(food). hasRole(food, consumableRole). affordsTask(food, eatingDrinkingTask).
}).
#pos(e801@100, {goesIn(food, garage)}, {}, {
  obj(food). hasRole(food, consumableRole). affordsTask(food, eatingDrinkingTask).
}).
#pos(e802@100, {goesIn(food, kitchen)}, {}, {
  obj(food). hasRole(food, consumableRole). affordsTask(food, eatingDrinkingTask).
}).
#pos(e803@100, {goesIn(food, pantry)}, {}, {
  obj(food). hasRole(food, consumableRole). affordsTask(food, eatingDrinkingTask).
}).
#pos(e804@100, {goesIn(food, shelf)}, {}, {
  obj(food). hasRole(food, consumableRole). affordsTask(food, eatingDrinkingTask).
}).
#pos(e805@100, {goesIn(food, storage_room)}, {}, {
  obj(food). hasRole(food, consumableRole). affordsTask(food, eatingDrinkingTask).
}).
#pos(e806@100, {goesIn(food, table)}, {}, {
  obj(food). hasRole(food, consumableRole). affordsTask(food, eatingDrinkingTask).
}).
#pos(e807@100, {goesIn(food, trash)}, {}, {
  obj(food). hasRole(food, consumableRole). affordsTask(food, eatingDrinkingTask).
}).
#pos(e808@100, {goesIn(food_can, bedroom)}, {}, {
  obj(food_can). hasRole(food_can, storageContainerRole). affordsTask(food_can, storageTask).
}).
#pos(e809@100, {goesIn(football, garage)}, {}, {
  obj(football). hasRole(football, entertainmentRole). affordsTask(football, leisureTask).
}).
#pos(e810@100, {goesIn(footstool, garage)}, {}, {
  obj(footstool). hasRole(footstool, furnitureRole). affordsTask(footstool, leisureTask). affordsTask(footstool, storageTask).
}).
#pos(e811@100, {goesIn(footstool, living_room)}, {}, {
  obj(footstool). hasRole(footstool, furnitureRole). affordsTask(footstool, leisureTask). affordsTask(footstool, storageTask).
}).
#pos(e812@100, {goesIn(footstool, storage_room)}, {}, {
  obj(footstool). hasRole(footstool, furnitureRole). affordsTask(footstool, leisureTask). affordsTask(footstool, storageTask).
}).
#pos(e813@100, {goesIn(footstool, table)}, {}, {
  obj(footstool). hasRole(footstool, furnitureRole). affordsTask(footstool, leisureTask). affordsTask(footstool, storageTask).
}).
#pos(e814@100, {goesIn(fork, drawer)}, {}, {
  obj(fork). hasRole(fork, utensilRole). affordsTask(fork, eatingDrinkingTask). affordsTask(fork, foodPreparationTask).
}).
#pos(e815@100, {goesIn(fork, kitchen)}, {}, {
  obj(fork). hasRole(fork, utensilRole). affordsTask(fork, eatingDrinkingTask). affordsTask(fork, foodPreparationTask).
}).
#pos(e816@100, {goesIn(fork, table)}, {}, {
  obj(fork). hasRole(fork, utensilRole). affordsTask(fork, eatingDrinkingTask). affordsTask(fork, foodPreparationTask).
}).
#pos(e817@100, {goesIn(forks, table)}, {}, {
  obj(forks). hasRole(forks, utensilRole). affordsTask(forks, eatingDrinkingTask). affordsTask(forks, foodPreparationTask).
}).
#pos(e818@100, {goesIn(foundation, bedroom)}, {}, {
  obj(foundation). hasRole(foundation, furnitureRole). affordsTask(foundation, maintenanceTask).
}).
#pos(e819@100, {goesIn(foundation, closet)}, {}, {
  obj(foundation). hasRole(foundation, furnitureRole). affordsTask(foundation, maintenanceTask).
}).
#pos(e820@100, {goesIn(fountain, garden)}, {}, {
  obj(fountain). hasRole(fountain, storageContainerRole). affordsTask(fountain, leisureTask).
}).
#pos(e821@100, {goesIn(fountain_pen, drawer)}, {}, {
  obj(fountain_pen). hasRole(fountain_pen, toolRole).
}).
#pos(e822@100, {goesIn(fountain_pen, table)}, {}, {
  obj(fountain_pen). hasRole(fountain_pen, toolRole).
}).
#pos(e823@100, {goesIn(foyer, bedroom)}, {}, {
  obj(foyer). hasRole(foyer, furnitureRole). affordsTask(foyer, leisureTask).
}).
#pos(e824@100, {goesIn(frame, bed)}, {}, {
  obj(frame). hasRole(frame, furnitureRole). affordsTask(frame, leisureTask).
}).
#pos(e825@100, {goesIn(freezer, garage)}, {}, {
  obj(freezer). hasRole(freezer, applianceRole). affordsTask(freezer, storageTask).
}).
#pos(e826@100, {goesIn(freezer, kitchen)}, {}, {
  obj(freezer). hasRole(freezer, applianceRole). affordsTask(freezer, storageTask).
}).
#pos(e827@100, {goesIn(freezer, pantry)}, {}, {
  obj(freezer). hasRole(freezer, applianceRole). affordsTask(freezer, storageTask).
}).
#pos(e828@100, {goesIn(fresh_fruit, closet)}, {}, {
  obj(fresh_fruit). hasRole(fresh_fruit, consumableRole). affordsTask(fresh_fruit, eatingDrinkingTask).
}).
#pos(e829@100, {goesIn(fresh_fruit, garage)}, {}, {
  obj(fresh_fruit). hasRole(fresh_fruit, consumableRole). affordsTask(fresh_fruit, eatingDrinkingTask).
}).
#pos(e830@100, {goesIn(fresh_fruit, kitchen)}, {}, {
  obj(fresh_fruit). hasRole(fresh_fruit, consumableRole). affordsTask(fresh_fruit, eatingDrinkingTask).
}).
#pos(e831@100, {goesIn(fresh_fruit, pantry)}, {}, {
  obj(fresh_fruit). hasRole(fresh_fruit, consumableRole). affordsTask(fresh_fruit, eatingDrinkingTask).
}).
#pos(e832@100, {goesIn(fresh_vegetables, fridge)}, {}, {
  obj(fresh_vegetables). hasRole(fresh_vegetables, consumableRole). affordsTask(fresh_vegetables, eatingDrinkingTask).
}).
#pos(e833@100, {goesIn(fridge, kitchen)}, {}, {
  obj(fridge). hasRole(fridge, applianceRole). affordsTask(fridge, storageTask).
}).
#pos(e834@100, {goesIn(frisbee, garage)}, {}, {
  obj(frisbee). hasRole(frisbee, entertainmentRole). affordsTask(frisbee, leisureTask).
}).
#pos(e835@100, {goesIn(front_courtyard, bedroom)}, {}, {
  obj(front_courtyard). hasRole(front_courtyard, furnitureRole). affordsTask(front_courtyard, gardeningTask). affordsTask(front_courtyard, leisureTask).
}).
#pos(e836@100, {goesIn(front_garden, bedroom)}, {}, {
  obj(front_garden). hasRole(front_garden, decorationRole). affordsTask(front_garden, leisureTask).
}).
#pos(e837@100, {goesIn(front_yard, garden)}, {}, {
  obj(front_yard). hasRole(front_yard, furnitureRole). affordsTask(front_yard, gardeningTask). affordsTask(front_yard, leisureTask).
}).
#pos(e838@100, {goesIn(fruit, closet)}, {}, {
  obj(fruit). hasRole(fruit, consumableRole). affordsTask(fruit, eatingDrinkingTask).
}).
#pos(e839@100, {goesIn(fruit, fridge)}, {}, {
  obj(fruit). hasRole(fruit, consumableRole). affordsTask(fruit, eatingDrinkingTask).
}).
#pos(e840@100, {goesIn(fruit, garage)}, {}, {
  obj(fruit). hasRole(fruit, consumableRole). affordsTask(fruit, eatingDrinkingTask).
}).
#pos(e841@100, {goesIn(fruit, kitchen)}, {}, {
  obj(fruit). hasRole(fruit, consumableRole). affordsTask(fruit, eatingDrinkingTask).
}).
#pos(e842@100, {goesIn(fruit, pantry)}, {}, {
  obj(fruit). hasRole(fruit, consumableRole). affordsTask(fruit, eatingDrinkingTask).
}).
#pos(e843@100, {goesIn(frying_pan, kitchen)}, {}, {
  obj(frying_pan). hasRole(frying_pan, cookwareRole). affordsTask(frying_pan, foodPreparationTask).
}).
#pos(e844@100, {goesIn(fur, bedroom)}, {}, {
  obj(fur). hasRole(fur, consumableRole). affordsTask(fur, eatingDrinkingTask).
}).
#pos(e845@100, {goesIn(fur, closet)}, {}, {
  obj(fur). hasRole(fur, consumableRole). affordsTask(fur, eatingDrinkingTask).
}).
#pos(e846@100, {goesIn(fur, kitchen)}, {}, {
  obj(fur). hasRole(fur, consumableRole). affordsTask(fur, eatingDrinkingTask).
}).
#pos(e847@100, {goesIn(fur, living_room)}, {}, {
  obj(fur). hasRole(fur, consumableRole). affordsTask(fur, eatingDrinkingTask).
}).
#pos(e848@100, {goesIn(fur, storage_room)}, {}, {
  obj(fur). hasRole(fur, consumableRole). affordsTask(fur, eatingDrinkingTask).
}).
#pos(e849@100, {goesIn(furnace, bedroom)}, {}, {
  obj(furnace). hasRole(furnace, applianceRole). affordsTask(furnace, maintenanceTask).
}).
#pos(e850@100, {goesIn(furnace, closet)}, {}, {
  obj(furnace). hasRole(furnace, applianceRole). affordsTask(furnace, maintenanceTask).
}).
#pos(e851@100, {goesIn(furnace, storage_room)}, {}, {
  obj(furnace). hasRole(furnace, applianceRole). affordsTask(furnace, maintenanceTask).
}).
#pos(e852@100, {goesIn(furniture, bedroom)}, {}, {
  obj(furniture). hasRole(furniture, furnitureRole). affordsTask(furniture, storageTask).
}).
#pos(e853@100, {goesIn(furniture, closet)}, {}, {
  obj(furniture). hasRole(furniture, furnitureRole). affordsTask(furniture, storageTask).
}).
#pos(e854@100, {goesIn(furniture, library)}, {}, {
  obj(furniture). hasRole(furniture, furnitureRole). affordsTask(furniture, storageTask).
}).
#pos(e855@100, {goesIn(furniture, living_room)}, {}, {
  obj(furniture). hasRole(furniture, furnitureRole). affordsTask(furniture, storageTask).
}).
#pos(e856@100, {goesIn(furniture_dresser, bedroom)}, {}, {
  obj(furniture_dresser). hasRole(furniture_dresser, furnitureRole). affordsTask(furniture_dresser, storageTask).
}).
#pos(e857@100, {goesIn(furniture_dresser, closet)}, {}, {
  obj(furniture_dresser). hasRole(furniture_dresser, furnitureRole). affordsTask(furniture_dresser, storageTask).
}).
#pos(e858@100, {goesIn(furniture_secretary, bedroom)}, {}, {
  obj(furniture_secretary). hasRole(furniture_secretary, furnitureRole). affordsTask(furniture_secretary, workStudyTask).
}).
#pos(e859@100, {goesIn(furniture_secretary, living_room)}, {}, {
  obj(furniture_secretary). hasRole(furniture_secretary, furnitureRole). affordsTask(furniture_secretary, workStudyTask).
}).
#pos(e860@100, {goesIn(game, living_room)}, {}, {
  obj(game). hasRole(game, entertainmentRole). affordsTask(game, leisureTask).
}).
#pos(e861@100, {goesIn(game, table)}, {}, {
  obj(game). hasRole(game, entertainmentRole). affordsTask(game, leisureTask).
}).
#pos(e862@100, {goesIn(games, drawer)}, {}, {
  obj(games). hasRole(games, entertainmentRole). affordsTask(games, leisureTask).
}).
#pos(e863@100, {goesIn(games, storage_room)}, {}, {
  obj(games). hasRole(games, entertainmentRole). affordsTask(games, leisureTask).
}).
#pos(e864@100, {goesIn(garage, bedroom)}, {}, {
  obj(garage). hasRole(garage, storageContainerRole). affordsTask(garage, storageTask).
}).
#pos(e865@100, {goesIn(garage, garage)}, {}, {
  obj(garage). hasRole(garage, storageContainerRole). affordsTask(garage, storageTask).
}).
#pos(e866@100, {goesIn(garbage, bedroom)}, {}, {
  obj(garbage). hasRole(garbage, storageContainerRole). hasRole(garbage, wasteRole). affordsTask(garbage, wasteDisposalTask).
}).
#pos(e867@100, {goesIn(garbage, closet)}, {}, {
  obj(garbage). hasRole(garbage, storageContainerRole). hasRole(garbage, wasteRole). affordsTask(garbage, wasteDisposalTask).
}).
#pos(e868@100, {goesIn(garbage, garage)}, {}, {
  obj(garbage). hasRole(garbage, storageContainerRole). hasRole(garbage, wasteRole). affordsTask(garbage, wasteDisposalTask).
}).
#pos(e869@100, {goesIn(garbage, kitchen)}, {}, {
  obj(garbage). hasRole(garbage, storageContainerRole). hasRole(garbage, wasteRole). affordsTask(garbage, wasteDisposalTask).
}).
#pos(e870@100, {goesIn(garbage, library)}, {}, {
  obj(garbage). hasRole(garbage, storageContainerRole). hasRole(garbage, wasteRole). affordsTask(garbage, wasteDisposalTask).
}).
#pos(e871@100, {goesIn(garbage, living_room)}, {}, {
  obj(garbage). hasRole(garbage, storageContainerRole). hasRole(garbage, wasteRole). affordsTask(garbage, wasteDisposalTask).
}).
#pos(e872@100, {goesIn(garbage, pantry)}, {}, {
  obj(garbage). hasRole(garbage, storageContainerRole). hasRole(garbage, wasteRole). affordsTask(garbage, wasteDisposalTask).
}).
#pos(e873@100, {goesIn(garbage, trash)}, {}, {
  obj(garbage). hasRole(garbage, storageContainerRole). hasRole(garbage, wasteRole). affordsTask(garbage, wasteDisposalTask).
}).
#pos(e874@100, {goesIn(garbage_can, garage)}, {}, {
  obj(garbage_can). hasRole(garbage_can, storageContainerRole). affordsTask(garbage_can, wasteDisposalTask).
}).
#pos(e875@100, {goesIn(garbage_can, kitchen)}, {}, {
  obj(garbage_can). hasRole(garbage_can, storageContainerRole). affordsTask(garbage_can, wasteDisposalTask).
}).
#pos(e876@100, {goesIn(garbage_waste, garage)}, {}, {
  obj(garbage_waste). hasRole(garbage_waste, consumableRole). affordsTask(garbage_waste, wasteDisposalTask).
}).
#pos(e877@100, {goesIn(garbage_waste, kitchen)}, {}, {
  obj(garbage_waste). hasRole(garbage_waste, consumableRole). affordsTask(garbage_waste, wasteDisposalTask).
}).
#pos(e878@100, {goesIn(garden, garden)}, {}, {
  obj(garden). hasRole(garden, furnitureRole). affordsTask(garden, gardeningTask).
}).
#pos(e879@100, {goesIn(garden_hose, garage)}, {}, {
  obj(garden_hose). hasRole(garden_hose, toolRole). affordsTask(garden_hose, gardeningTask). affordsTask(garden_hose, hygieneTask).
}).
#pos(e880@100, {goesIn(garlic, kitchen)}, {}, {
  obj(garlic). hasRole(garlic, consumableRole). affordsTask(garlic, foodPreparationTask).
}).
#pos(e881@100, {goesIn(garment_bag, bedroom)}, {}, {
  obj(garment_bag). hasRole(garment_bag, storageContainerRole). affordsTask(garment_bag, storageTask).
}).
#pos(e882@100, {goesIn(garment_bag, closet)}, {}, {
  obj(garment_bag). hasRole(garment_bag, storageContainerRole). affordsTask(garment_bag, storageTask).
}).
#pos(e883@100, {goesIn(gasoline, garage)}, {}, {
  obj(gasoline). hasRole(gasoline, consumableRole). affordsTask(gasoline, leisureTask). affordsTask(gasoline, workStudyTask).
}).
#pos(e884@100, {goesIn(gate, garden)}, {}, {
  obj(gate). hasRole(gate, furnitureRole). affordsTask(gate, maintenanceTask).
}).
#pos(e885@100, {goesIn(gate_leg_table, dining_room)}, {}, {
  obj(gate_leg_table). hasRole(gate_leg_table, furnitureRole). affordsTask(gate_leg_table, leisureTask). affordsTask(gate_leg_table, workStudyTask).
}).
#pos(e886@100, {goesIn(gel, bathroom)}, {}, {
  obj(gel). hasRole(gel, consumableRole). affordsTask(gel, hygieneTask). affordsTask(gel, leisureTask).
}).
#pos(e887@100, {goesIn(gel, fridge)}, {}, {
  obj(gel). hasRole(gel, consumableRole). affordsTask(gel, hygieneTask). affordsTask(gel, leisureTask).
}).
#pos(e888@100, {goesIn(gel, library)}, {}, {
  obj(gel). hasRole(gel, consumableRole). affordsTask(gel, hygieneTask). affordsTask(gel, leisureTask).
}).
#pos(e889@100, {goesIn(gel_toothpaste, bathroom)}, {}, {
  obj(gel_toothpaste). hasRole(gel_toothpaste, cleaningToolRole). affordsTask(gel_toothpaste, hygieneTask).
}).
#pos(e890@100, {goesIn(gel_toothpaste, library)}, {}, {
  obj(gel_toothpaste). hasRole(gel_toothpaste, cleaningToolRole). affordsTask(gel_toothpaste, hygieneTask).
}).
#pos(e891@100, {goesIn(gift, closet)}, {}, {
  obj(gift). hasRole(gift, consumableRole). affordsTask(gift, leisureTask).
}).
#pos(e892@100, {goesIn(gift, garage)}, {}, {
  obj(gift). hasRole(gift, consumableRole). affordsTask(gift, leisureTask).
}).
#pos(e893@100, {goesIn(gift, storage_room)}, {}, {
  obj(gift). hasRole(gift, consumableRole). affordsTask(gift, leisureTask).
}).
#pos(e894@100, {goesIn(glass, bedroom)}, {}, {
  obj(glass). hasRole(glass, utensilRole). affordsTask(glass, eatingDrinkingTask).
}).
#pos(e895@100, {goesIn(glass, dining_room)}, {}, {
  obj(glass). hasRole(glass, utensilRole). affordsTask(glass, eatingDrinkingTask).
}).
#pos(e896@100, {goesIn(glass, garage)}, {}, {
  obj(glass). hasRole(glass, utensilRole). affordsTask(glass, eatingDrinkingTask).
}).
#pos(e897@100, {goesIn(glass, kitchen)}, {}, {
  obj(glass). hasRole(glass, utensilRole). affordsTask(glass, eatingDrinkingTask).
}).
#pos(e898@100, {goesIn(glass, sink)}, {}, {
  obj(glass). hasRole(glass, utensilRole). affordsTask(glass, eatingDrinkingTask).
}).
#pos(e899@100, {goesIn(glass, storage_room)}, {}, {
  obj(glass). hasRole(glass, utensilRole). affordsTask(glass, eatingDrinkingTask).
}).
#pos(e900@100, {goesIn(glass, table)}, {}, {
  obj(glass). hasRole(glass, utensilRole). affordsTask(glass, eatingDrinkingTask).
}).
#pos(e901@100, {goesIn(glass_fronted_cupboard, dining_room)}, {}, {
  obj(glass_fronted_cupboard). hasRole(glass_fronted_cupboard, storageContainerRole). affordsTask(glass_fronted_cupboard, storageTask).
}).
#pos(e902@100, {goesIn(glass_fronted_cupboard, kitchen)}, {}, {
  obj(glass_fronted_cupboard). hasRole(glass_fronted_cupboard, storageContainerRole). affordsTask(glass_fronted_cupboard, storageTask).
}).
#pos(e903@100, {goesIn(glass_fronted_display_cabinet, kitchen)}, {}, {
  obj(glass_fronted_display_cabinet). hasRole(glass_fronted_display_cabinet, storageContainerRole). affordsTask(glass_fronted_display_cabinet, storageTask).
}).
#pos(e904@100, {goesIn(glass_fronted_display_cabinet, living_room)}, {}, {
  obj(glass_fronted_display_cabinet). hasRole(glass_fronted_display_cabinet, storageContainerRole). affordsTask(glass_fronted_display_cabinet, storageTask).
}).
#pos(e905@100, {goesIn(glass_of_water, table)}, {}, {
  obj(glass_of_water). hasRole(glass_of_water, consumableRole). affordsTask(glass_of_water, eatingDrinkingTask).
}).
#pos(e906@100, {goesIn(glasses, cabinet)}, {}, {
  obj(glasses). hasRole(glasses, utensilRole). affordsTask(glasses, eatingDrinkingTask).
}).
#pos(e907@100, {goesIn(glasses, drawer)}, {}, {
  obj(glasses). hasRole(glasses, utensilRole). affordsTask(glasses, eatingDrinkingTask).
}).
#pos(e908@100, {goesIn(glasses_case, drawer)}, {}, {
  obj(glasses_case). hasRole(glasses_case, storageContainerRole). affordsTask(glasses_case, storageTask).
}).
#pos(e909@100, {goesIn(glue, bedroom)}, {}, {
  obj(glue). hasRole(glue, toolRole). affordsTask(glue, maintenanceTask).
}).
#pos(e910@100, {goesIn(glue, garage)}, {}, {
  obj(glue). hasRole(glue, toolRole). affordsTask(glue, maintenanceTask).
}).
#pos(e911@100, {goesIn(glue, table)}, {}, {
  obj(glue). hasRole(glue, toolRole). affordsTask(glue, maintenanceTask).
}).
#pos(e912@100, {goesIn(glue_stick, drawer)}, {}, {
  obj(glue_stick). hasRole(glue_stick, toolRole). affordsTask(glue_stick, maintenanceTask).
}).
#pos(e913@100, {goesIn(glue_stick, table)}, {}, {
  obj(glue_stick). hasRole(glue_stick, toolRole). affordsTask(glue_stick, maintenanceTask).
}).
#pos(e914@100, {goesIn(good_book, shelf)}, {}, {
  obj(good_book). hasRole(good_book, documentRole). affordsTask(good_book, leisureTask).
}).
#pos(e915@100, {goesIn(grape, fridge)}, {}, {
  obj(grape). hasRole(grape, consumableRole). affordsTask(grape, eatingDrinkingTask).
}).
#pos(e916@100, {goesIn(grape, garden)}, {}, {
  obj(grape). hasRole(grape, consumableRole). affordsTask(grape, eatingDrinkingTask).
}).
#pos(e917@100, {goesIn(grape, kitchen)}, {}, {
  obj(grape). hasRole(grape, consumableRole). affordsTask(grape, eatingDrinkingTask).
}).
#pos(e918@100, {goesIn(grape, pantry)}, {}, {
  obj(grape). hasRole(grape, consumableRole). affordsTask(grape, eatingDrinkingTask).
}).
#pos(e919@100, {goesIn(grape, storage_room)}, {}, {
  obj(grape). hasRole(grape, consumableRole). affordsTask(grape, eatingDrinkingTask).
}).
#pos(e920@100, {goesIn(grape_juice, fridge)}, {}, {
  obj(grape_juice). hasRole(grape_juice, consumableRole). affordsTask(grape_juice, eatingDrinkingTask).
}).
#pos(e921@100, {goesIn(grapes, fridge)}, {}, {
  obj(grapes). hasRole(grapes, consumableRole). affordsTask(grapes, eatingDrinkingTask).
}).
#pos(e922@100, {goesIn(grease, garage)}, {}, {
  obj(grease). hasRole(grease, cleaningToolRole). affordsTask(grease, maintenanceTask).
}).
#pos(e923@100, {goesIn(grill, kitchen)}, {}, {
  obj(grill). hasRole(grill, cookwareRole). affordsTask(grill, foodPreparationTask).
}).
#pos(e924@100, {goesIn(groceries, bedroom)}, {}, {
  obj(groceries). hasRole(groceries, consumableRole). affordsTask(groceries, eatingDrinkingTask).
}).
#pos(e925@100, {goesIn(groceries, garage)}, {}, {
  obj(groceries). hasRole(groceries, consumableRole). affordsTask(groceries, eatingDrinkingTask).
}).
#pos(e926@100, {goesIn(groceries, kitchen)}, {}, {
  obj(groceries). hasRole(groceries, consumableRole). affordsTask(groceries, eatingDrinkingTask).
}).
#pos(e927@100, {goesIn(groceries, pantry)}, {}, {
  obj(groceries). hasRole(groceries, consumableRole). affordsTask(groceries, eatingDrinkingTask).
}).
#pos(e928@100, {goesIn(groceries, shelf)}, {}, {
  obj(groceries). hasRole(groceries, consumableRole). affordsTask(groceries, eatingDrinkingTask).
}).
#pos(e929@100, {goesIn(groceries, storage_room)}, {}, {
  obj(groceries). hasRole(groceries, consumableRole). affordsTask(groceries, eatingDrinkingTask).
}).
#pos(e930@100, {goesIn(guitar, music_room)}, {}, {
  obj(guitar). hasRole(guitar, musicalInstrumentRole). affordsTask(guitar, leisureTask).
}).
#pos(e931@100, {goesIn(gum, library)}, {}, {
  obj(gum). hasRole(gum, consumableRole). affordsTask(gum, eatingDrinkingTask).
}).
#pos(e932@100, {goesIn(gum, shelf)}, {}, {
  obj(gum). hasRole(gum, consumableRole). affordsTask(gum, eatingDrinkingTask).
}).
#pos(e933@100, {goesIn(gum, table)}, {}, {
  obj(gum). hasRole(gum, consumableRole). affordsTask(gum, eatingDrinkingTask).
}).
#pos(e934@100, {goesIn(gum, trash)}, {}, {
  obj(gum). hasRole(gum, consumableRole). affordsTask(gum, eatingDrinkingTask).
}).
#pos(e935@100, {goesIn(gutter, garage)}, {}, {
  obj(gutter). hasRole(gutter, toolRole). affordsTask(gutter, maintenanceTask).
}).
#pos(e936@100, {goesIn(hair, bathroom)}, {}, {
  obj(hair). hasRole(hair, toolRole). affordsTask(hair, hygieneTask).
}).
#pos(e937@100, {goesIn(hair, bed)}, {}, {
  obj(hair). hasRole(hair, toolRole). affordsTask(hair, hygieneTask).
}).
#pos(e938@100, {goesIn(hair, bedroom)}, {}, {
  obj(hair). hasRole(hair, toolRole). affordsTask(hair, hygieneTask).
}).
#pos(e939@100, {goesIn(hair, garage)}, {}, {
  obj(hair). hasRole(hair, toolRole). affordsTask(hair, hygieneTask).
}).
#pos(e940@100, {goesIn(hair, kitchen)}, {}, {
  obj(hair). hasRole(hair, toolRole). affordsTask(hair, hygieneTask).
}).
#pos(e941@100, {goesIn(hair, living_room)}, {}, {
  obj(hair). hasRole(hair, toolRole). affordsTask(hair, hygieneTask).
}).
#pos(e942@100, {goesIn(hair, pantry)}, {}, {
  obj(hair). hasRole(hair, toolRole). affordsTask(hair, hygieneTask).
}).
#pos(e943@100, {goesIn(hair, sink)}, {}, {
  obj(hair). hasRole(hair, toolRole). affordsTask(hair, hygieneTask).
}).
#pos(e944@100, {goesIn(hair_accessory, bathroom)}, {}, {
  obj(hair_accessory). hasRole(hair_accessory, toolRole). affordsTask(hair_accessory, dressingTask).
}).
#pos(e945@100, {goesIn(hair_accessory, library)}, {}, {
  obj(hair_accessory). hasRole(hair_accessory, toolRole). affordsTask(hair_accessory, dressingTask).
}).
#pos(e946@100, {goesIn(hair_care_article, bathroom)}, {}, {
  obj(hair_care_article). hasRole(hair_care_article, cleaningToolRole). affordsTask(hair_care_article, hygieneTask).
}).
#pos(e947@100, {goesIn(hair_care_article, library)}, {}, {
  obj(hair_care_article). hasRole(hair_care_article, cleaningToolRole). affordsTask(hair_care_article, hygieneTask).
}).
#pos(e948@100, {goesIn(hair_clip, drawer)}, {}, {
  obj(hair_clip). hasRole(hair_clip, utensilRole). affordsTask(hair_clip, dressingTask).
}).
#pos(e949@100, {goesIn(hair_conditioner, bedroom)}, {}, {
  obj(hair_conditioner). hasRole(hair_conditioner, cleaningToolRole). affordsTask(hair_conditioner, hygieneTask).
}).
#pos(e950@100, {goesIn(hair_dryer, bathroom)}, {}, {
  obj(hair_dryer). hasRole(hair_dryer, applianceRole). affordsTask(hair_dryer, hygieneTask). affordsTask(hair_dryer, leisureTask).
}).
#pos(e951@100, {goesIn(hair_dryer, closet)}, {}, {
  obj(hair_dryer). hasRole(hair_dryer, applianceRole). affordsTask(hair_dryer, hygieneTask). affordsTask(hair_dryer, leisureTask).
}).
#pos(e952@100, {goesIn(hair_dryer, garage)}, {}, {
  obj(hair_dryer). hasRole(hair_dryer, applianceRole). affordsTask(hair_dryer, hygieneTask). affordsTask(hair_dryer, leisureTask).
}).
#pos(e953@100, {goesIn(hair_dryer, library)}, {}, {
  obj(hair_dryer). hasRole(hair_dryer, applianceRole). affordsTask(hair_dryer, hygieneTask). affordsTask(hair_dryer, leisureTask).
}).
#pos(e954@100, {goesIn(hair_dryer, storage_room)}, {}, {
  obj(hair_dryer). hasRole(hair_dryer, applianceRole). affordsTask(hair_dryer, hygieneTask). affordsTask(hair_dryer, leisureTask).
}).
#pos(e955@100, {goesIn(hair_gel, bathroom)}, {}, {
  obj(hair_gel). hasRole(hair_gel, toolRole). affordsTask(hair_gel, leisureTask).
}).
#pos(e956@100, {goesIn(hair_gel, bedroom)}, {}, {
  obj(hair_gel). hasRole(hair_gel, toolRole). affordsTask(hair_gel, leisureTask).
}).
#pos(e957@100, {goesIn(hair_gel, library)}, {}, {
  obj(hair_gel). hasRole(hair_gel, toolRole). affordsTask(hair_gel, leisureTask).
}).
#pos(e958@100, {goesIn(hair_shaping_gel, bathroom)}, {}, {
  obj(hair_shaping_gel). hasRole(hair_shaping_gel, cleaningToolRole). affordsTask(hair_shaping_gel, hygieneTask).
}).
#pos(e959@100, {goesIn(hair_shaping_gel, library)}, {}, {
  obj(hair_shaping_gel). hasRole(hair_shaping_gel, cleaningToolRole). affordsTask(hair_shaping_gel, hygieneTask).
}).
#pos(e960@100, {goesIn(hairbrush, bathroom)}, {}, {
  obj(hairbrush). hasRole(hairbrush, toolRole). affordsTask(hairbrush, hygieneTask).
}).
#pos(e961@100, {goesIn(hairbrush, bedroom)}, {}, {
  obj(hairbrush). hasRole(hairbrush, toolRole). affordsTask(hairbrush, hygieneTask).
}).
#pos(e962@100, {goesIn(hairbrush, library)}, {}, {
  obj(hairbrush). hasRole(hairbrush, toolRole). affordsTask(hairbrush, hygieneTask).
}).
#pos(e963@100, {goesIn(haircloth, bathroom)}, {}, {
  obj(haircloth). hasRole(haircloth, clothingRole). affordsTask(haircloth, dressingTask).
}).
#pos(e964@100, {goesIn(haircloth, library)}, {}, {
  obj(haircloth). hasRole(haircloth, clothingRole). affordsTask(haircloth, dressingTask).
}).
#pos(e965@100, {goesIn(hairdresser_chair, garage)}, {}, {
  obj(hairdresser_chair). hasRole(hairdresser_chair, furnitureRole). affordsTask(hairdresser_chair, leisureTask).
}).
#pos(e966@100, {goesIn(hairpin, bathroom)}, {}, {
  obj(hairpin). hasRole(hairpin, utensilRole). affordsTask(hairpin, dressingTask).
}).
#pos(e967@100, {goesIn(hairpin, library)}, {}, {
  obj(hairpin). hasRole(hairpin, utensilRole). affordsTask(hairpin, dressingTask).
}).
#pos(e968@100, {goesIn(hall, library)}, {}, {
  obj(hall). hasRole(hall, furnitureRole). affordsTask(hall, leisureTask). affordsTask(hall, workStudyTask).
}).
#pos(e969@100, {goesIn(hallway, bedroom)}, {}, {
  obj(hallway). hasRole(hallway, furnitureRole). affordsTask(hallway, leisureTask).
}).
#pos(e970@100, {goesIn(ham, fridge)}, {}, {
  obj(ham). hasRole(ham, consumableRole). affordsTask(ham, eatingDrinkingTask).
}).
#pos(e971@100, {goesIn(hammer, garage)}, {}, {
  obj(hammer). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e972@100, {goesIn(hammers, music_room)}, {}, {
  obj(hammers). hasRole(hammers, toolRole). affordsTask(hammers, maintenanceTask).
}).
#pos(e973@100, {goesIn(handbag, bedroom)}, {}, {
  obj(handbag). hasRole(handbag, storageContainerRole). affordsTask(handbag, storageTask).
}).
#pos(e974@100, {goesIn(handbag, closet)}, {}, {
  obj(handbag). hasRole(handbag, storageContainerRole). affordsTask(handbag, storageTask).
}).
#pos(e975@100, {goesIn(handbag, storage_room)}, {}, {
  obj(handbag). hasRole(handbag, storageContainerRole). affordsTask(handbag, storageTask).
}).
#pos(e976@100, {goesIn(handle, bathroom)}, {}, {
  obj(handle). hasRole(handle, toolRole). affordsTask(handle, maintenanceTask).
}).
#pos(e977@100, {goesIn(handle, drawer)}, {}, {
  obj(handle). hasRole(handle, toolRole). affordsTask(handle, maintenanceTask).
}).
#pos(e978@100, {goesIn(handle, fridge)}, {}, {
  obj(handle). hasRole(handle, toolRole). affordsTask(handle, maintenanceTask).
}).
#pos(e979@100, {goesIn(handle, library)}, {}, {
  obj(handle). hasRole(handle, toolRole). affordsTask(handle, maintenanceTask).
}).
#pos(e980@100, {goesIn(hanger, bedroom)}, {}, {
  obj(hanger). hasRole(hanger, storageContainerRole). affordsTask(hanger, dressingTask).
}).
#pos(e981@100, {goesIn(hanger, closet)}, {}, {
  obj(hanger). hasRole(hanger, storageContainerRole). affordsTask(hanger, dressingTask).
}).
#pos(e982@100, {goesIn(hanging_rail, bedroom)}, {}, {
  obj(hanging_rail). hasRole(hanging_rail, furnitureRole). affordsTask(hanging_rail, storageTask).
}).
#pos(e983@100, {goesIn(hard_drive, library)}, {}, {
  obj(hard_drive). hasRole(hard_drive, applianceRole). affordsTask(hard_drive, workStudyTask).
}).
#pos(e984@100, {goesIn(hat, bedroom)}, {}, {
  obj(hat). hasRole(hat, clothingRole). affordsTask(hat, dressingTask).
}).
#pos(e985@100, {goesIn(hat, closet)}, {}, {
  obj(hat). hasRole(hat, clothingRole). affordsTask(hat, dressingTask).
}).
#pos(e986@100, {goesIn(hat, garage)}, {}, {
  obj(hat). hasRole(hat, clothingRole). affordsTask(hat, dressingTask).
}).
#pos(e987@100, {goesIn(hat, shelf)}, {}, {
  obj(hat). hasRole(hat, clothingRole). affordsTask(hat, dressingTask).
}).
#pos(e988@100, {goesIn(hat, storage_room)}, {}, {
  obj(hat). hasRole(hat, clothingRole). affordsTask(hat, dressingTask).
}).
#pos(e989@100, {goesIn(hats, storage_room)}, {}, {
  obj(hats). hasRole(hats, clothingRole). affordsTask(hats, leisureTask).
}).
#pos(e990@100, {goesIn(hearing_aid, drawer)}, {}, {
  obj(hearing_aid). hasRole(hearing_aid, toolRole). affordsTask(hearing_aid, workStudyTask).
}).
#pos(e991@100, {goesIn(heat_source, bedroom)}, {}, {
  obj(heat_source). hasRole(heat_source, cookwareRole). affordsTask(heat_source, foodPreparationTask).
}).
#pos(e992@100, {goesIn(heated_towel_rack, bathroom)}, {}, {
  obj(heated_towel_rack). hasRole(heated_towel_rack, storageContainerRole). affordsTask(heated_towel_rack, eatingDrinkingTask).
}).
#pos(e993@100, {goesIn(heated_towel_rack, library)}, {}, {
  obj(heated_towel_rack). hasRole(heated_towel_rack, storageContainerRole). affordsTask(heated_towel_rack, eatingDrinkingTask).
}).
#pos(e994@100, {goesIn(heater, bedroom)}, {}, {
  obj(heater). hasRole(heater, applianceRole). affordsTask(heater, maintenanceTask).
}).
#pos(e995@100, {goesIn(heater, garage)}, {}, {
  obj(heater). hasRole(heater, applianceRole). affordsTask(heater, maintenanceTask).
}).
#pos(e996@100, {goesIn(heating_room, closet)}, {}, {
  obj(heating_room). hasRole(heating_room, applianceRole). affordsTask(heating_room, leisureTask).
}).
#pos(e997@100, {goesIn(heating_room, storage_room)}, {}, {
  obj(heating_room). hasRole(heating_room, applianceRole). affordsTask(heating_room, leisureTask).
}).
#pos(e998@100, {goesIn(hide_bed, bedroom)}, {}, {
  obj(hide_bed). hasRole(hide_bed, furnitureRole). affordsTask(hide_bed, sleepingTask).
}).
#pos(e999@100, {goesIn(hide_bed, closet)}, {}, {
  obj(hide_bed). hasRole(hide_bed, furnitureRole). affordsTask(hide_bed, sleepingTask).
}).
#pos(e1000@100, {goesIn(hide_bed, living_room)}, {}, {
  obj(hide_bed). hasRole(hide_bed, furnitureRole). affordsTask(hide_bed, sleepingTask).
}).
#pos(e1001@100, {goesIn(hide_bed_sofa, bedroom)}, {}, {
  obj(hide_bed_sofa). hasRole(hide_bed_sofa, furnitureRole). affordsTask(hide_bed_sofa, leisureTask). affordsTask(hide_bed_sofa, sleepingTask).
}).
#pos(e1002@100, {goesIn(highlighter, table)}, {}, {
  obj(highlighter). hasRole(highlighter, toolRole). affordsTask(highlighter, leisureTask). affordsTask(highlighter, workStudyTask).
}).
#pos(e1003@100, {goesIn(highlighter_pen, table)}, {}, {
  obj(highlighter_pen). hasRole(highlighter_pen, utensilRole). affordsTask(highlighter_pen, foodPreparationTask).
}).
#pos(e1004@100, {goesIn(hinged_door, bedroom)}, {}, {
  obj(hinged_door). hasRole(hinged_door, furnitureRole). affordsTask(hinged_door, maintenanceTask). affordsTask(hinged_door, storageTask).
}).
#pos(e1005@100, {goesIn(hinged_door, kitchen)}, {}, {
  obj(hinged_door). hasRole(hinged_door, furnitureRole). affordsTask(hinged_door, maintenanceTask). affordsTask(hinged_door, storageTask).
}).
#pos(e1006@100, {goesIn(hinged_door, library)}, {}, {
  obj(hinged_door). hasRole(hinged_door, furnitureRole). affordsTask(hinged_door, maintenanceTask). affordsTask(hinged_door, storageTask).
}).
#pos(e1007@100, {goesIn(hinged_door, pantry)}, {}, {
  obj(hinged_door). hasRole(hinged_door, furnitureRole). affordsTask(hinged_door, maintenanceTask). affordsTask(hinged_door, storageTask).
}).
#pos(e1008@100, {goesIn(hoist, garage)}, {}, {
  obj(hoist). hasRole(hoist, toolRole). affordsTask(hoist, maintenanceTask).
}).
#pos(e1009@100, {goesIn(hoist, storage_room)}, {}, {
  obj(hoist). hasRole(hoist, toolRole). affordsTask(hoist, maintenanceTask).
}).
#pos(e1010@100, {goesIn(holdall, bedroom)}, {}, {
  obj(holdall). hasRole(holdall, storageContainerRole). affordsTask(holdall, storageTask).
}).
#pos(e1011@100, {goesIn(holdall, closet)}, {}, {
  obj(holdall). hasRole(holdall, storageContainerRole). affordsTask(holdall, storageTask).
}).
#pos(e1012@100, {goesIn(hole_punch, table)}, {}, {
  obj(hole_punch). hasRole(hole_punch, toolRole). affordsTask(hole_punch, maintenanceTask).
}).
#pos(e1013@100, {goesIn(home_office, bedroom)}, {}, {
  obj(home_office). hasRole(home_office, furnitureRole). affordsTask(home_office, workStudyTask).
}).
#pos(e1014@100, {goesIn(honey, pantry)}, {}, {
  obj(honey). hasRole(honey, consumableRole). affordsTask(honey, eatingDrinkingTask).
}).
#pos(e1015@100, {goesIn(hook, cabinet)}, {}, {
  obj(hook). hasRole(hook, toolRole).
}).
#pos(e1016@100, {goesIn(horn, garage)}, {}, {
  obj(horn). hasRole(horn, musicalInstrumentRole). affordsTask(horn, leisureTask).
}).
#pos(e1017@100, {goesIn(hose, garage)}, {}, {
  obj(hose). hasRole(hose, toolRole). affordsTask(hose, cleaningTask). affordsTask(hose, gardeningTask).
}).
#pos(e1018@100, {goesIn(hose, garden)}, {}, {
  obj(hose). hasRole(hose, toolRole). affordsTask(hose, cleaningTask). affordsTask(hose, gardeningTask).
}).
#pos(e1019@100, {goesIn(hose, storage_room)}, {}, {
  obj(hose). hasRole(hose, toolRole). affordsTask(hose, cleaningTask). affordsTask(hose, gardeningTask).
}).
#pos(e1020@100, {goesIn(hot_faucet, bathroom)}, {}, {
  obj(hot_faucet). hasRole(hot_faucet, toolRole). affordsTask(hot_faucet, hygieneTask).
}).
#pos(e1021@100, {goesIn(hot_faucet, kitchen)}, {}, {
  obj(hot_faucet). hasRole(hot_faucet, toolRole). affordsTask(hot_faucet, hygieneTask).
}).
#pos(e1022@100, {goesIn(hot_faucet, library)}, {}, {
  obj(hot_faucet). hasRole(hot_faucet, toolRole). affordsTask(hot_faucet, hygieneTask).
}).
#pos(e1023@100, {goesIn(hot_faucet, sink)}, {}, {
  obj(hot_faucet). hasRole(hot_faucet, toolRole). affordsTask(hot_faucet, hygieneTask).
}).
#pos(e1024@100, {goesIn(hot_sauce, fridge)}, {}, {
  obj(hot_sauce). hasRole(hot_sauce, consumableRole). affordsTask(hot_sauce, eatingDrinkingTask).
}).
#pos(e1025@100, {goesIn(hot_sauce, pantry)}, {}, {
  obj(hot_sauce). hasRole(hot_sauce, consumableRole). affordsTask(hot_sauce, eatingDrinkingTask).
}).
#pos(e1026@100, {goesIn(hot_table, kitchen)}, {}, {
  obj(hot_table). hasRole(hot_table, cookwareRole). affordsTask(hot_table, foodPreparationTask).
}).
#pos(e1027@100, {goesIn(hot_tap, bathroom)}, {}, {
  obj(hot_tap). hasRole(hot_tap, applianceRole). affordsTask(hot_tap, eatingDrinkingTask). affordsTask(hot_tap, hygieneTask).
}).
#pos(e1028@100, {goesIn(hot_tap, library)}, {}, {
  obj(hot_tap). hasRole(hot_tap, applianceRole). affordsTask(hot_tap, eatingDrinkingTask). affordsTask(hot_tap, hygieneTask).
}).
#pos(e1029@100, {goesIn(hot_tap, sink)}, {}, {
  obj(hot_tap). hasRole(hot_tap, applianceRole). affordsTask(hot_tap, eatingDrinkingTask). affordsTask(hot_tap, hygieneTask).
}).
#pos(e1030@100, {goesIn(house, bedroom)}, {}, {
  obj(house). hasRole(house, furnitureRole). affordsTask(house, leisureTask). affordsTask(house, storageTask).
}).
#pos(e1031@100, {goesIn(house, garden)}, {}, {
  obj(house). hasRole(house, furnitureRole). affordsTask(house, leisureTask). affordsTask(house, storageTask).
}).
#pos(e1032@100, {goesIn(house, library)}, {}, {
  obj(house). hasRole(house, furnitureRole). affordsTask(house, leisureTask). affordsTask(house, storageTask).
}).
#pos(e1033@100, {goesIn(ice, dining_room)}, {}, {
  obj(ice). hasRole(ice, consumableRole). affordsTask(ice, eatingDrinkingTask).
}).
#pos(e1034@100, {goesIn(ice, fridge)}, {}, {
  obj(ice). hasRole(ice, consumableRole). affordsTask(ice, eatingDrinkingTask).
}).
#pos(e1035@100, {goesIn(ice, kitchen)}, {}, {
  obj(ice). hasRole(ice, consumableRole). affordsTask(ice, eatingDrinkingTask).
}).
#pos(e1036@100, {goesIn(ice_cream, fridge)}, {}, {
  obj(ice_cream). hasRole(ice_cream, consumableRole). affordsTask(ice_cream, eatingDrinkingTask).
}).
#pos(e1037@100, {goesIn(ice_cubes, dining_room)}, {}, {
  obj(ice_cubes). hasRole(ice_cubes, consumableRole). affordsTask(ice_cubes, eatingDrinkingTask).
}).
#pos(e1038@100, {goesIn(ice_cubes, fridge)}, {}, {
  obj(ice_cubes). hasRole(ice_cubes, consumableRole). affordsTask(ice_cubes, eatingDrinkingTask).
}).
#pos(e1039@100, {goesIn(ice_cubes, kitchen)}, {}, {
  obj(ice_cubes). hasRole(ice_cubes, consumableRole). affordsTask(ice_cubes, eatingDrinkingTask).
}).
#pos(e1040@100, {goesIn(icebox, bedroom)}, {}, {
  obj(icebox). hasRole(icebox, applianceRole). affordsTask(icebox, storageTask).
}).
#pos(e1041@100, {goesIn(icebox, kitchen)}, {}, {
  obj(icebox). hasRole(icebox, applianceRole). affordsTask(icebox, storageTask).
}).
#pos(e1042@100, {goesIn(icecream, fridge)}, {}, {
  obj(icecream). hasRole(icecream, consumableRole). affordsTask(icecream, eatingDrinkingTask).
}).
#pos(e1043@100, {goesIn(index_card, library)}, {}, {
  obj(index_card). hasRole(index_card, documentRole). affordsTask(index_card, workStudyTask).
}).
#pos(e1044@100, {goesIn(index_card_cabinet, library)}, {}, {
  obj(index_card_cabinet). hasRole(index_card_cabinet, storageContainerRole). affordsTask(index_card_cabinet, storageTask).
}).
#pos(e1045@100, {goesIn(ingredients, kitchen)}, {}, {
  obj(ingredients). hasRole(ingredients, consumableRole). affordsTask(ingredients, foodPreparationTask).
}).
#pos(e1046@100, {goesIn(ink, garden)}, {}, {
  obj(ink).
}).
#pos(e1047@100, {goesIn(ink, home_office)}, {}, {
  obj(ink).
}).
#pos(e1048@100, {goesIn(ink, library)}, {}, {
  obj(ink).
}).
#pos(e1049@100, {goesIn(instrument_triangle, table)}, {}, {
  obj(instrument_triangle). hasRole(instrument_triangle, musicalInstrumentRole). affordsTask(instrument_triangle, leisureTask). affordsTask(instrument_triangle, workStudyTask).
}).
#pos(e1050@100, {goesIn(interior_area, bedroom)}, {}, {
  obj(interior_area). hasRole(interior_area, furnitureRole). affordsTask(interior_area, leisureTask). affordsTask(interior_area, workStudyTask).
}).
#pos(e1051@100, {goesIn(iron, bedroom)}, {}, {
  obj(iron). hasRole(iron, toolRole). affordsTask(iron, foodPreparationTask).
}).
#pos(e1052@100, {goesIn(iron, hallway)}, {}, {
  obj(iron). hasRole(iron, toolRole). affordsTask(iron, foodPreparationTask).
}).
#pos(e1053@100, {goesIn(iron, kitchen)}, {}, {
  obj(iron). hasRole(iron, toolRole). affordsTask(iron, foodPreparationTask).
}).
#pos(e1054@100, {goesIn(iron, laundry_room)}, {}, {
  obj(iron). hasRole(iron, toolRole). affordsTask(iron, foodPreparationTask).
}).
#pos(e1055@100, {goesIn(iron, storage_room)}, {}, {
  obj(iron). hasRole(iron, toolRole). affordsTask(iron, foodPreparationTask).
}).
#pos(e1056@100, {goesIn(jack, bedroom)}, {}, {
  obj(jack). hasRole(jack, toolRole). affordsTask(jack, maintenanceTask).
}).
#pos(e1057@100, {goesIn(jack, closet)}, {}, {
  obj(jack). hasRole(jack, toolRole). affordsTask(jack, maintenanceTask).
}).
#pos(e1058@100, {goesIn(jack, garage)}, {}, {
  obj(jack). hasRole(jack, toolRole). affordsTask(jack, maintenanceTask).
}).
#pos(e1059@100, {goesIn(jack, storage_room)}, {}, {
  obj(jack). hasRole(jack, toolRole). affordsTask(jack, maintenanceTask).
}).
#pos(e1060@100, {goesIn(jacket, bedroom)}, {}, {
  obj(jacket). hasRole(jacket, clothingRole). affordsTask(jacket, dressingTask).
}).
#pos(e1061@100, {goesIn(jacket, closet)}, {}, {
  obj(jacket). hasRole(jacket, clothingRole). affordsTask(jacket, dressingTask).
}).
#pos(e1062@100, {goesIn(jacket, garage)}, {}, {
  obj(jacket). hasRole(jacket, clothingRole). affordsTask(jacket, dressingTask).
}).
#pos(e1063@100, {goesIn(jar, bedroom)}, {}, {
  obj(jar). hasRole(jar, storageContainerRole). affordsTask(jar, storageTask).
}).
#pos(e1064@100, {goesIn(jar, cabinet)}, {}, {
  obj(jar). hasRole(jar, storageContainerRole). affordsTask(jar, storageTask).
}).
#pos(e1065@100, {goesIn(jar, fridge)}, {}, {
  obj(jar). hasRole(jar, storageContainerRole). affordsTask(jar, storageTask).
}).
#pos(e1066@100, {goesIn(jar, kitchen)}, {}, {
  obj(jar). hasRole(jar, storageContainerRole). affordsTask(jar, storageTask).
}).
#pos(e1067@100, {goesIn(jar, pantry)}, {}, {
  obj(jar). hasRole(jar, storageContainerRole). affordsTask(jar, storageTask).
}).
#pos(e1068@100, {goesIn(jar, shelf)}, {}, {
  obj(jar). hasRole(jar, storageContainerRole). affordsTask(jar, storageTask).
}).
#pos(e1069@100, {goesIn(jars, cabinet)}, {}, {
  obj(jars). hasRole(jars, storageContainerRole). affordsTask(jars, storageTask).
}).
#pos(e1070@100, {goesIn(jars, storage_room)}, {}, {
  obj(jars). hasRole(jars, storageContainerRole). affordsTask(jars, storageTask).
}).
#pos(e1071@100, {goesIn(jeans, bedroom)}, {}, {
  obj(jeans). hasRole(jeans, clothingRole). affordsTask(jeans, dressingTask).
}).
#pos(e1072@100, {goesIn(jeans, closet)}, {}, {
  obj(jeans). hasRole(jeans, clothingRole). affordsTask(jeans, dressingTask).
}).
#pos(e1073@100, {goesIn(jeans, drawer)}, {}, {
  obj(jeans). hasRole(jeans, clothingRole). affordsTask(jeans, dressingTask).
}).
#pos(e1074@100, {goesIn(jeans, storage_room)}, {}, {
  obj(jeans). hasRole(jeans, clothingRole). affordsTask(jeans, dressingTask).
}).
#pos(e1075@100, {goesIn(jello, fridge)}, {}, {
  obj(jello). hasRole(jello, consumableRole). affordsTask(jello, eatingDrinkingTask).
}).
#pos(e1076@100, {goesIn(jelly, fridge)}, {}, {
  obj(jelly). hasRole(jelly, consumableRole). affordsTask(jelly, eatingDrinkingTask).
}).
#pos(e1077@100, {goesIn(jelly, pantry)}, {}, {
  obj(jelly). hasRole(jelly, consumableRole). affordsTask(jelly, eatingDrinkingTask).
}).
#pos(e1078@100, {goesIn(jewelry, closet)}, {}, {
  obj(jewelry). hasRole(jewelry, decorationRole). affordsTask(jewelry, leisureTask).
}).
#pos(e1079@100, {goesIn(jewelry, garage)}, {}, {
  obj(jewelry). hasRole(jewelry, decorationRole). affordsTask(jewelry, leisureTask).
}).
#pos(e1080@100, {goesIn(jewelry, storage_room)}, {}, {
  obj(jewelry). hasRole(jewelry, decorationRole). affordsTask(jewelry, leisureTask).
}).
#pos(e1081@100, {goesIn(juice, fridge)}, {}, {
  obj(juice). hasRole(juice, consumableRole). affordsTask(juice, eatingDrinkingTask).
}).
#pos(e1082@100, {goesIn(ketchup, fridge)}, {}, {
  obj(ketchup). hasRole(ketchup, consumableRole). affordsTask(ketchup, eatingDrinkingTask).
}).
#pos(e1083@100, {goesIn(kettle, kitchen)}, {}, {
  obj(kettle). hasRole(kettle, cookwareRole). affordsTask(kettle, foodPreparationTask).
}).
#pos(e1084@100, {goesIn(key, library)}, {}, {
  obj(key). hasRole(key, toolRole). affordsTask(key, maintenanceTask).
}).
#pos(e1085@100, {goesIn(keyboard, music_room)}, {}, {
  obj(keyboard). hasRole(keyboard, toolRole). affordsTask(keyboard, workStudyTask).
}).
#pos(e1086@100, {goesIn(keyboard, table)}, {}, {
  obj(keyboard). hasRole(keyboard, toolRole). affordsTask(keyboard, workStudyTask).
}).
#pos(e1087@100, {goesIn(keys, music_room)}, {}, {
  obj(keys). hasRole(keys, toolRole). affordsTask(keys, maintenanceTask).
}).
#pos(e1088@100, {goesIn(keys, shelf)}, {}, {
  obj(keys). hasRole(keys, toolRole). affordsTask(keys, maintenanceTask).
}).
#pos(e1089@100, {goesIn(keys, table)}, {}, {
  obj(keys). hasRole(keys, toolRole). affordsTask(keys, maintenanceTask).
}).
#pos(e1090@100, {goesIn(kitchen_table, closet)}, {}, {
  obj(kitchen_table). hasRole(kitchen_table, furnitureRole). affordsTask(kitchen_table, eatingDrinkingTask). affordsTask(kitchen_table, foodPreparationTask). affordsTask(kitchen_table, leisureTask). affordsTask(kitchen_table, storageTask).
}).
#pos(e1091@100, {goesIn(kitchen_table, storage_room)}, {}, {
  obj(kitchen_table). hasRole(kitchen_table, furnitureRole). affordsTask(kitchen_table, eatingDrinkingTask). affordsTask(kitchen_table, foodPreparationTask). affordsTask(kitchen_table, leisureTask). affordsTask(kitchen_table, storageTask).
}).
#pos(e1092@100, {goesIn(kitchen_utensil, drawer)}, {}, {
  obj(kitchen_utensil). hasRole(kitchen_utensil, utensilRole). affordsTask(kitchen_utensil, foodPreparationTask).
}).
#pos(e1093@100, {goesIn(kitchen_utensil, kitchen)}, {}, {
  obj(kitchen_utensil). hasRole(kitchen_utensil, utensilRole). affordsTask(kitchen_utensil, foodPreparationTask).
}).
#pos(e1094@100, {goesIn(kitchen_utensil, sink)}, {}, {
  obj(kitchen_utensil). hasRole(kitchen_utensil, utensilRole). affordsTask(kitchen_utensil, foodPreparationTask).
}).
#pos(e1095@100, {goesIn(kitchenette, bedroom)}, {}, {
  obj(kitchenette). hasRole(kitchenette, cookwareRole). hasRole(kitchenette, storageContainerRole). affordsTask(kitchenette, eatingDrinkingTask). affordsTask(kitchenette, foodPreparationTask). affordsTask(kitchenette, storageTask).
}).
#pos(e1096@100, {goesIn(kitten, bed)}, {}, {
  obj(kitten). hasRole(kitten, entertainmentRole). affordsTask(kitten, leisureTask).
}).
#pos(e1097@100, {goesIn(kitten, bedroom)}, {}, {
  obj(kitten). hasRole(kitten, entertainmentRole). affordsTask(kitten, leisureTask).
}).
#pos(e1098@100, {goesIn(kitten, closet)}, {}, {
  obj(kitten). hasRole(kitten, entertainmentRole). affordsTask(kitten, leisureTask).
}).
#pos(e1099@100, {goesIn(kitten, garage)}, {}, {
  obj(kitten). hasRole(kitten, entertainmentRole). affordsTask(kitten, leisureTask).
}).
#pos(e1100@100, {goesIn(kitten, garden)}, {}, {
  obj(kitten). hasRole(kitten, entertainmentRole). affordsTask(kitten, leisureTask).
}).
#pos(e1101@100, {goesIn(kitten, kitchen)}, {}, {
  obj(kitten). hasRole(kitten, entertainmentRole). affordsTask(kitten, leisureTask).
}).
#pos(e1102@100, {goesIn(kitten, library)}, {}, {
  obj(kitten). hasRole(kitten, entertainmentRole). affordsTask(kitten, leisureTask).
}).
#pos(e1103@100, {goesIn(kitten, living_room)}, {}, {
  obj(kitten). hasRole(kitten, entertainmentRole). affordsTask(kitten, leisureTask).
}).
#pos(e1104@100, {goesIn(kitten, storage_room)}, {}, {
  obj(kitten). hasRole(kitten, entertainmentRole). affordsTask(kitten, leisureTask).
}).
#pos(e1105@100, {goesIn(kitten, table)}, {}, {
  obj(kitten). hasRole(kitten, entertainmentRole). affordsTask(kitten, leisureTask).
}).
#pos(e1106@100, {goesIn(kitty, bed)}, {}, {
  obj(kitty). affordsTask(kitty, leisureTask).
}).
#pos(e1107@100, {goesIn(kleenex, closet)}, {}, {
  obj(kleenex). hasRole(kleenex, consumableRole). affordsTask(kleenex, hygieneTask).
}).
#pos(e1108@100, {goesIn(kleenex, garage)}, {}, {
  obj(kleenex). hasRole(kleenex, consumableRole). affordsTask(kleenex, hygieneTask).
}).
#pos(e1109@100, {goesIn(kleenex, storage_room)}, {}, {
  obj(kleenex). hasRole(kleenex, consumableRole). affordsTask(kleenex, hygieneTask).
}).
#pos(e1110@100, {goesIn(knife, drawer)}, {}, {
  obj(knife). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e1111@100, {goesIn(knife, kitchen)}, {}, {
  obj(knife). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e1112@100, {goesIn(knife, table)}, {}, {
  obj(knife). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e1113@100, {goesIn(knives, drawer)}, {}, {
  obj(knives). hasRole(knives, utensilRole). affordsTask(knives, foodPreparationTask).
}).
#pos(e1114@100, {goesIn(knives, kitchen)}, {}, {
  obj(knives). hasRole(knives, utensilRole). affordsTask(knives, foodPreparationTask).
}).
#pos(e1115@100, {goesIn(knob, bedroom)}, {}, {
  obj(knob). hasRole(knob, toolRole). affordsTask(knob, maintenanceTask).
}).
#pos(e1116@100, {goesIn(knob, library)}, {}, {
  obj(knob). hasRole(knob, toolRole). affordsTask(knob, maintenanceTask).
}).
#pos(e1117@100, {goesIn(knob, living_room)}, {}, {
  obj(knob). hasRole(knob, toolRole). affordsTask(knob, maintenanceTask).
}).
#pos(e1118@100, {goesIn(label_maker, drawer)}, {}, {
  obj(label_maker). hasRole(label_maker, toolRole). affordsTask(label_maker, workStudyTask).
}).
#pos(e1119@100, {goesIn(label_maker, storage_room)}, {}, {
  obj(label_maker). hasRole(label_maker, toolRole). affordsTask(label_maker, workStudyTask).
}).
#pos(e1120@100, {goesIn(labeler, drawer)}, {}, {
  obj(labeler). hasRole(labeler, toolRole). affordsTask(labeler, storageTask).
}).
#pos(e1121@100, {goesIn(labeler, table)}, {}, {
  obj(labeler). hasRole(labeler, toolRole). affordsTask(labeler, storageTask).
}).
#pos(e1122@100, {goesIn(ladder, garage)}, {}, {
  obj(ladder). hasRole(ladder, toolRole). affordsTask(ladder, maintenanceTask).
}).
#pos(e1123@100, {goesIn(lamp, bedroom)}, {}, {
  obj(lamp). hasRole(lamp, lightingRole). affordsTask(lamp, leisureTask).
}).
#pos(e1124@100, {goesIn(lamp, shelf)}, {}, {
  obj(lamp). hasRole(lamp, lightingRole). affordsTask(lamp, leisureTask).
}).
#pos(e1125@100, {goesIn(lamp, table)}, {}, {
  obj(lamp). hasRole(lamp, lightingRole). affordsTask(lamp, leisureTask).
}).
#pos(e1126@100, {goesIn(lantern, bedroom)}, {}, {
  obj(lantern). hasRole(lantern, decorationRole). affordsTask(lantern, leisureTask).
}).
#pos(e1127@100, {goesIn(large_container, garden)}, {}, {
  obj(large_container). hasRole(large_container, storageContainerRole). affordsTask(large_container, storageTask).
}).
#pos(e1128@100, {goesIn(large_container, kitchen)}, {}, {
  obj(large_container). hasRole(large_container, storageContainerRole). affordsTask(large_container, storageTask).
}).
#pos(e1129@100, {goesIn(large_container, pantry)}, {}, {
  obj(large_container). hasRole(large_container, storageContainerRole). affordsTask(large_container, storageTask).
}).
#pos(e1130@100, {goesIn(laundry_room, bedroom)}, {}, {
  obj(laundry_room). hasRole(laundry_room, storageContainerRole). affordsTask(laundry_room, cleaningTask).
}).
#pos(e1131@100, {goesIn(laundry_room, closet)}, {}, {
  obj(laundry_room). hasRole(laundry_room, storageContainerRole). affordsTask(laundry_room, cleaningTask).
}).
#pos(e1132@100, {goesIn(laundry_room, storage_room)}, {}, {
  obj(laundry_room). hasRole(laundry_room, storageContainerRole). affordsTask(laundry_room, cleaningTask).
}).
#pos(e1133@100, {goesIn(lawn_mower, garage)}, {}, {
  obj(lawn_mower). hasRole(lawn_mower, toolRole). affordsTask(lawn_mower, maintenanceTask).
}).
#pos(e1134@100, {goesIn(lawnmower, garage)}, {}, {
  obj(lawnmower). hasRole(lawnmower, toolRole). affordsTask(lawnmower, maintenanceTask).
}).
#pos(e1135@100, {goesIn(lawnmowers, garage)}, {}, {
  obj(lawnmowers). hasRole(lawnmowers, toolRole). affordsTask(lawnmowers, maintenanceTask).
}).
#pos(e1136@100, {goesIn(lead_pencil, table)}, {}, {
  obj(lead_pencil). hasRole(lead_pencil, toolRole).
}).
#pos(e1137@100, {goesIn(leaves, garage)}, {}, {
  obj(leaves). hasRole(leaves, wasteRole). affordsTask(leaves, wasteDisposalTask).
}).
#pos(e1138@100, {goesIn(led, bedroom)}, {}, {
  obj(led). hasRole(led, lightingRole). affordsTask(led, leisureTask). affordsTask(led, workStudyTask).
}).
#pos(e1139@100, {goesIn(ledger, table)}, {}, {
  obj(ledger). hasRole(ledger, documentRole). affordsTask(ledger, workStudyTask).
}).
#pos(e1140@100, {goesIn(leg, bedroom)}, {}, {
  obj(leg). hasRole(leg, furnitureRole). affordsTask(leg, leisureTask).
}).
#pos(e1141@100, {goesIn(leg, garden)}, {}, {
  obj(leg). hasRole(leg, furnitureRole). affordsTask(leg, leisureTask).
}).
#pos(e1142@100, {goesIn(leg, hallway)}, {}, {
  obj(leg). hasRole(leg, furnitureRole). affordsTask(leg, leisureTask).
}).
#pos(e1143@100, {goesIn(leg, kitchen)}, {}, {
  obj(leg). hasRole(leg, furnitureRole). affordsTask(leg, leisureTask).
}).
#pos(e1144@100, {goesIn(leg, living_room)}, {}, {
  obj(leg). hasRole(leg, furnitureRole). affordsTask(leg, leisureTask).
}).
#pos(e1145@100, {goesIn(leg, table)}, {}, {
  obj(leg). hasRole(leg, furnitureRole). affordsTask(leg, leisureTask).
}).
#pos(e1146@100, {goesIn(legs, table)}, {}, {
  obj(legs). hasRole(legs, furnitureRole). affordsTask(legs, leisureTask).
}).
#pos(e1147@100, {goesIn(lemon, fridge)}, {}, {
  obj(lemon). hasRole(lemon, consumableRole). affordsTask(lemon, eatingDrinkingTask).
}).
#pos(e1148@100, {goesIn(lemon_curd, pantry)}, {}, {
  obj(lemon_curd). hasRole(lemon_curd, consumableRole). affordsTask(lemon_curd, eatingDrinkingTask).
}).
#pos(e1149@100, {goesIn(lemon_juice, fridge)}, {}, {
  obj(lemon_juice). hasRole(lemon_juice, consumableRole). affordsTask(lemon_juice, eatingDrinkingTask).
}).
#pos(e1150@100, {goesIn(lemon_juice, pantry)}, {}, {
  obj(lemon_juice). hasRole(lemon_juice, consumableRole). affordsTask(lemon_juice, eatingDrinkingTask).
}).
#pos(e1151@100, {goesIn(letter_slot, bedroom)}, {}, {
  obj(letter_slot). hasRole(letter_slot, storageContainerRole). affordsTask(letter_slot, storageTask).
}).
#pos(e1152@100, {goesIn(letter_slot, garden)}, {}, {
  obj(letter_slot). hasRole(letter_slot, storageContainerRole). affordsTask(letter_slot, storageTask).
}).
#pos(e1153@100, {goesIn(letters, drawer)}, {}, {
  obj(letters). hasRole(letters, documentRole). affordsTask(letters, workStudyTask).
}).
#pos(e1154@100, {goesIn(letters, garden)}, {}, {
  obj(letters). hasRole(letters, documentRole). affordsTask(letters, workStudyTask).
}).
#pos(e1155@100, {goesIn(letters, library)}, {}, {
  obj(letters). hasRole(letters, documentRole). affordsTask(letters, workStudyTask).
}).
#pos(e1156@100, {goesIn(lettuce, fridge)}, {}, {
  obj(lettuce). hasRole(lettuce, consumableRole). affordsTask(lettuce, eatingDrinkingTask).
}).
#pos(e1157@100, {goesIn(level, garage)}, {}, {
  obj(level). hasRole(level, toolRole). affordsTask(level, maintenanceTask).
}).
#pos(e1158@100, {goesIn(library, bedroom)}, {}, {
  obj(library). hasRole(library, storageContainerRole). affordsTask(library, leisureTask). affordsTask(library, workStudyTask).
}).
#pos(e1159@100, {goesIn(library, library)}, {}, {
  obj(library). hasRole(library, storageContainerRole). affordsTask(library, leisureTask). affordsTask(library, workStudyTask).
}).
#pos(e1160@100, {goesIn(light, bedroom)}, {}, {
  obj(light). hasRole(light, consumableRole). affordsTask(light, leisureTask).
}).
#pos(e1161@100, {goesIn(light, closet)}, {}, {
  obj(light). hasRole(light, consumableRole). affordsTask(light, leisureTask).
}).
#pos(e1162@100, {goesIn(light, fridge)}, {}, {
  obj(light). hasRole(light, consumableRole). affordsTask(light, leisureTask).
}).
#pos(e1163@100, {goesIn(light, garden)}, {}, {
  obj(light). hasRole(light, consumableRole). affordsTask(light, leisureTask).
}).
#pos(e1164@100, {goesIn(light, storage_room)}, {}, {
  obj(light). hasRole(light, consumableRole). affordsTask(light, leisureTask).
}).
#pos(e1165@100, {goesIn(light, table)}, {}, {
  obj(light). hasRole(light, consumableRole). affordsTask(light, leisureTask).
}).
#pos(e1166@100, {goesIn(light_bulb, bedroom)}, {}, {
  obj(light_bulb). hasRole(light_bulb, lightingRole). affordsTask(light_bulb, leisureTask).
}).
#pos(e1167@100, {goesIn(light_bulb, closet)}, {}, {
  obj(light_bulb). hasRole(light_bulb, lightingRole). affordsTask(light_bulb, leisureTask).
}).
#pos(e1168@100, {goesIn(light_bulb, storage_room)}, {}, {
  obj(light_bulb). hasRole(light_bulb, lightingRole). affordsTask(light_bulb, leisureTask).
}).
#pos(e1169@100, {goesIn(light_source, bedroom)}, {}, {
  obj(light_source). hasRole(light_source, lightingRole). affordsTask(light_source, leisureTask). affordsTask(light_source, workStudyTask).
}).
#pos(e1170@100, {goesIn(light_source, hallway)}, {}, {
  obj(light_source). hasRole(light_source, lightingRole). affordsTask(light_source, leisureTask). affordsTask(light_source, workStudyTask).
}).
#pos(e1171@100, {goesIn(light_source, kitchen)}, {}, {
  obj(light_source). hasRole(light_source, lightingRole). affordsTask(light_source, leisureTask). affordsTask(light_source, workStudyTask).
}).
#pos(e1172@100, {goesIn(light_source, storage_room)}, {}, {
  obj(light_source). hasRole(light_source, lightingRole). affordsTask(light_source, leisureTask). affordsTask(light_source, workStudyTask).
}).
#pos(e1173@100, {goesIn(lightbulb, fridge)}, {}, {
  obj(lightbulb). hasRole(lightbulb, lightingRole). affordsTask(lightbulb, leisureTask).
}).
#pos(e1174@100, {goesIn(limes, fridge)}, {}, {
  obj(limes). hasRole(limes, consumableRole). affordsTask(limes, eatingDrinkingTask).
}).
#pos(e1175@100, {goesIn(linen, bedroom)}, {}, {
  obj(linen). hasRole(linen, beddingRole). hasRole(linen, clothingRole). affordsTask(linen, dressingTask). affordsTask(linen, sleepingTask).
}).
#pos(e1176@100, {goesIn(linen, closet)}, {}, {
  obj(linen). hasRole(linen, beddingRole). hasRole(linen, clothingRole). affordsTask(linen, dressingTask). affordsTask(linen, sleepingTask).
}).
#pos(e1177@100, {goesIn(linen, hallway)}, {}, {
  obj(linen). hasRole(linen, beddingRole). hasRole(linen, clothingRole). affordsTask(linen, dressingTask). affordsTask(linen, sleepingTask).
}).
#pos(e1178@100, {goesIn(linen_chest, bedroom)}, {}, {
  obj(linen_chest). hasRole(linen_chest, storageContainerRole). affordsTask(linen_chest, storageTask).
}).
#pos(e1179@100, {goesIn(linen_chest, closet)}, {}, {
  obj(linen_chest). hasRole(linen_chest, storageContainerRole). affordsTask(linen_chest, storageTask).
}).
#pos(e1180@100, {goesIn(linen_chest, hallway)}, {}, {
  obj(linen_chest). hasRole(linen_chest, storageContainerRole). affordsTask(linen_chest, storageTask).
}).
#pos(e1181@100, {goesIn(linen_chest, library)}, {}, {
  obj(linen_chest). hasRole(linen_chest, storageContainerRole). affordsTask(linen_chest, storageTask).
}).
#pos(e1182@100, {goesIn(linen_closet, bedroom)}, {}, {
  obj(linen_closet). hasRole(linen_closet, storageContainerRole). affordsTask(linen_closet, storageTask).
}).
#pos(e1183@100, {goesIn(linen_closet, hallway)}, {}, {
  obj(linen_closet). hasRole(linen_closet, storageContainerRole). affordsTask(linen_closet, storageTask).
}).
#pos(e1184@100, {goesIn(linoleum, bedroom)}, {}, {
  obj(linoleum). hasRole(linoleum, furnitureRole). affordsTask(linoleum, cleaningTask).
}).
#pos(e1185@100, {goesIn(linoleum, closet)}, {}, {
  obj(linoleum). hasRole(linoleum, furnitureRole). affordsTask(linoleum, cleaningTask).
}).
#pos(e1186@100, {goesIn(linoleum, kitchen)}, {}, {
  obj(linoleum). hasRole(linoleum, furnitureRole). affordsTask(linoleum, cleaningTask).
}).
#pos(e1187@100, {goesIn(linoleum, library)}, {}, {
  obj(linoleum). hasRole(linoleum, furnitureRole). affordsTask(linoleum, cleaningTask).
}).
#pos(e1188@100, {goesIn(lip, bathroom)}, {}, {
  obj(lip). hasRole(lip, utensilRole). affordsTask(lip, eatingDrinkingTask).
}).
#pos(e1189@100, {goesIn(lip, kitchen)}, {}, {
  obj(lip). hasRole(lip, utensilRole). affordsTask(lip, eatingDrinkingTask).
}).
#pos(e1190@100, {goesIn(lip, library)}, {}, {
  obj(lip). hasRole(lip, utensilRole). affordsTask(lip, eatingDrinkingTask).
}).
#pos(e1191@100, {goesIn(lip, living_room)}, {}, {
  obj(lip). hasRole(lip, utensilRole). affordsTask(lip, eatingDrinkingTask).
}).
#pos(e1192@100, {goesIn(lip, pantry)}, {}, {
  obj(lip). hasRole(lip, utensilRole). affordsTask(lip, eatingDrinkingTask).
}).
#pos(e1193@100, {goesIn(lip, storage_room)}, {}, {
  obj(lip). hasRole(lip, utensilRole). affordsTask(lip, eatingDrinkingTask).
}).
#pos(e1194@100, {goesIn(liquid, closet)}, {}, {
  obj(liquid). hasRole(liquid, consumableRole). affordsTask(liquid, eatingDrinkingTask).
}).
#pos(e1195@100, {goesIn(liquid, garage)}, {}, {
  obj(liquid). hasRole(liquid, consumableRole). affordsTask(liquid, eatingDrinkingTask).
}).
#pos(e1196@100, {goesIn(liquid, kitchen)}, {}, {
  obj(liquid). hasRole(liquid, consumableRole). affordsTask(liquid, eatingDrinkingTask).
}).
#pos(e1197@100, {goesIn(liquid, pantry)}, {}, {
  obj(liquid). hasRole(liquid, consumableRole). affordsTask(liquid, eatingDrinkingTask).
}).
#pos(e1198@100, {goesIn(liquids, closet)}, {}, {
  obj(liquids). hasRole(liquids, consumableRole). affordsTask(liquids, eatingDrinkingTask).
}).
#pos(e1199@100, {goesIn(liquids, garage)}, {}, {
  obj(liquids). hasRole(liquids, consumableRole). affordsTask(liquids, eatingDrinkingTask).
}).
#pos(e1200@100, {goesIn(liquids, kitchen)}, {}, {
  obj(liquids). hasRole(liquids, consumableRole). affordsTask(liquids, eatingDrinkingTask).
}).
#pos(e1201@100, {goesIn(liquids, pantry)}, {}, {
  obj(liquids). hasRole(liquids, consumableRole). affordsTask(liquids, eatingDrinkingTask).
}).
#pos(e1202@100, {goesIn(liquor_glass, cabinet)}, {}, {
  obj(liquor_glass). hasRole(liquor_glass, utensilRole). affordsTask(liquor_glass, eatingDrinkingTask).
}).
#pos(e1203@100, {goesIn(liquor_glass, kitchen)}, {}, {
  obj(liquor_glass). hasRole(liquor_glass, utensilRole). affordsTask(liquor_glass, eatingDrinkingTask).
}).
#pos(e1204@100, {goesIn(lock, garden)}, {}, {
  obj(lock). hasRole(lock, toolRole). affordsTask(lock, maintenanceTask).
}).
#pos(e1205@100, {goesIn(lock, library)}, {}, {
  obj(lock). hasRole(lock, toolRole). affordsTask(lock, maintenanceTask).
}).
#pos(e1206@100, {goesIn(love_seat, bedroom)}, {}, {
  obj(love_seat). hasRole(love_seat, furnitureRole). affordsTask(love_seat, leisureTask). affordsTask(love_seat, storageTask).
}).
#pos(e1207@100, {goesIn(luggage, bedroom)}, {}, {
  obj(luggage). hasRole(luggage, storageContainerRole). affordsTask(luggage, storageTask).
}).
#pos(e1208@100, {goesIn(luggage, closet)}, {}, {
  obj(luggage). hasRole(luggage, storageContainerRole). affordsTask(luggage, storageTask).
}).
#pos(e1209@100, {goesIn(luggage, garage)}, {}, {
  obj(luggage). hasRole(luggage, storageContainerRole). affordsTask(luggage, storageTask).
}).
#pos(e1210@100, {goesIn(luggage, storage_room)}, {}, {
  obj(luggage). hasRole(luggage, storageContainerRole). affordsTask(luggage, storageTask).
}).
#pos(e1211@100, {goesIn(lunch, table)}, {}, {
  obj(lunch). hasRole(lunch, consumableRole). affordsTask(lunch, eatingDrinkingTask).
}).
#pos(e1212@100, {goesIn(magazine, bed)}, {}, {
  obj(magazine). hasRole(magazine, documentRole). affordsTask(magazine, leisureTask).
}).
#pos(e1213@100, {goesIn(magazine, garden)}, {}, {
  obj(magazine). hasRole(magazine, documentRole). affordsTask(magazine, leisureTask).
}).
#pos(e1214@100, {goesIn(magazine, library)}, {}, {
  obj(magazine). hasRole(magazine, documentRole). affordsTask(magazine, leisureTask).
}).
#pos(e1215@100, {goesIn(magazine, storage_room)}, {}, {
  obj(magazine). hasRole(magazine, documentRole). affordsTask(magazine, leisureTask).
}).
#pos(e1216@100, {goesIn(magazine, table)}, {}, {
  obj(magazine). hasRole(magazine, documentRole). affordsTask(magazine, leisureTask).
}).
#pos(e1217@100, {goesIn(magazines, bed)}, {}, {
  obj(magazines). hasRole(magazines, documentRole). affordsTask(magazines, leisureTask).
}).
#pos(e1218@100, {goesIn(magazines, library)}, {}, {
  obj(magazines). hasRole(magazines, documentRole). affordsTask(magazines, leisureTask).
}).
#pos(e1219@100, {goesIn(magazines, table)}, {}, {
  obj(magazines). hasRole(magazines, documentRole). affordsTask(magazines, leisureTask).
}).
#pos(e1220@100, {goesIn(magnet, fridge)}, {}, {
  obj(magnet). hasRole(magnet, toolRole). affordsTask(magnet, maintenanceTask).
}).
#pos(e1221@100, {goesIn(magnets, fridge)}, {}, {
  obj(magnets). hasRole(magnets, toolRole). affordsTask(magnets, storageTask).
}).
#pos(e1222@100, {goesIn(mail, bedroom)}, {}, {
  obj(mail). hasRole(mail, documentRole). affordsTask(mail, workStudyTask).
}).
#pos(e1223@100, {goesIn(mail, fridge)}, {}, {
  obj(mail). hasRole(mail, documentRole). affordsTask(mail, workStudyTask).
}).
#pos(e1224@100, {goesIn(mail, table)}, {}, {
  obj(mail). hasRole(mail, documentRole). affordsTask(mail, workStudyTask).
}).
#pos(e1225@100, {goesIn(mailbox, garden)}, {}, {
  obj(mailbox). hasRole(mailbox, storageContainerRole). affordsTask(mailbox, storageTask).
}).
#pos(e1226@100, {goesIn(main_entrance, bedroom)}, {}, {
  obj(main_entrance). hasRole(main_entrance, furnitureRole). affordsTask(main_entrance, leisureTask).
}).
#pos(e1227@100, {goesIn(map, library)}, {}, {
  obj(map). hasRole(map, storageContainerRole).
}).
#pos(e1228@100, {goesIn(map, table)}, {}, {
  obj(map). hasRole(map, storageContainerRole).
}).
#pos(e1229@100, {goesIn(maps, library)}, {}, {
  obj(maps). hasRole(maps, toolRole). affordsTask(maps, leisureTask).
}).
#pos(e1230@100, {goesIn(marble, living_room)}, {}, {
  obj(marble). hasRole(marble, decorationRole). affordsTask(marble, leisureTask).
}).
#pos(e1231@100, {goesIn(marble, pantry)}, {}, {
  obj(marble). hasRole(marble, decorationRole). affordsTask(marble, leisureTask).
}).
#pos(e1232@100, {goesIn(marker, bedroom)}, {}, {
  obj(marker). hasRole(marker, toolRole).
}).
#pos(e1233@100, {goesIn(marker, closet)}, {}, {
  obj(marker). hasRole(marker, toolRole).
}).
#pos(e1234@100, {goesIn(marker, drawer)}, {}, {
  obj(marker). hasRole(marker, toolRole).
}).
#pos(e1235@100, {goesIn(marker, library)}, {}, {
  obj(marker). hasRole(marker, toolRole).
}).
#pos(e1236@100, {goesIn(marker, table)}, {}, {
  obj(marker). hasRole(marker, toolRole).
}).
#pos(e1237@100, {goesIn(mat, bathroom)}, {}, {
  obj(mat). hasRole(mat, storageContainerRole). affordsTask(mat, storageTask).
}).
#pos(e1238@100, {goesIn(mat, bedroom)}, {}, {
  obj(mat). hasRole(mat, storageContainerRole). affordsTask(mat, storageTask).
}).
#pos(e1239@100, {goesIn(mat, library)}, {}, {
  obj(mat). hasRole(mat, storageContainerRole). affordsTask(mat, storageTask).
}).
#pos(e1240@100, {goesIn(mat, living_room)}, {}, {
  obj(mat). hasRole(mat, storageContainerRole). affordsTask(mat, storageTask).
}).
#pos(e1241@100, {goesIn(matches, closet)}, {}, {
  obj(matches). hasRole(matches, toolRole). affordsTask(matches, leisureTask).
}).
#pos(e1242@100, {goesIn(matches, garage)}, {}, {
  obj(matches). hasRole(matches, toolRole). affordsTask(matches, leisureTask).
}).
#pos(e1243@100, {goesIn(matches, storage_room)}, {}, {
  obj(matches). hasRole(matches, toolRole). affordsTask(matches, leisureTask).
}).
#pos(e1244@100, {goesIn(material, bedroom)}, {}, {
  obj(material). affordsTask(material, maintenanceTask).
}).
#pos(e1245@100, {goesIn(mayonnaise, fridge)}, {}, {
  obj(mayonnaise). hasRole(mayonnaise, consumableRole). affordsTask(mayonnaise, eatingDrinkingTask).
}).
#pos(e1246@100, {goesIn(mayonnaise, pantry)}, {}, {
  obj(mayonnaise). hasRole(mayonnaise, consumableRole). affordsTask(mayonnaise, eatingDrinkingTask).
}).
#pos(e1247@100, {goesIn(meal, kitchen)}, {}, {
  obj(meal). hasRole(meal, consumableRole). affordsTask(meal, eatingDrinkingTask).
}).
#pos(e1248@100, {goesIn(meat, fridge)}, {}, {
  obj(meat). hasRole(meat, consumableRole). affordsTask(meat, eatingDrinkingTask). affordsTask(meat, foodPreparationTask).
}).
#pos(e1249@100, {goesIn(meat, kitchen)}, {}, {
  obj(meat). hasRole(meat, consumableRole). affordsTask(meat, eatingDrinkingTask). affordsTask(meat, foodPreparationTask).
}).
#pos(e1250@100, {goesIn(meat, pantry)}, {}, {
  obj(meat). hasRole(meat, consumableRole). affordsTask(meat, eatingDrinkingTask). affordsTask(meat, foodPreparationTask).
}).
#pos(e1251@100, {goesIn(mechanical_pencil, drawer)}, {}, {
  obj(mechanical_pencil). hasRole(mechanical_pencil, toolRole).
}).
#pos(e1252@100, {goesIn(medicine, bathroom)}, {}, {
  obj(medicine). hasRole(medicine, consumableRole). affordsTask(medicine, eatingDrinkingTask).
}).
#pos(e1253@100, {goesIn(medicine, library)}, {}, {
  obj(medicine). hasRole(medicine, consumableRole). affordsTask(medicine, eatingDrinkingTask).
}).
#pos(e1254@100, {goesIn(medicine, pantry)}, {}, {
  obj(medicine). hasRole(medicine, consumableRole). affordsTask(medicine, eatingDrinkingTask).
}).
#pos(e1255@100, {goesIn(metronome, music_room)}, {}, {
  obj(metronome). hasRole(metronome, musicalInstrumentRole). affordsTask(metronome, leisureTask).
}).
#pos(e1256@100, {goesIn(microwave, kitchen)}, {}, {
  obj(microwave). hasRole(microwave, applianceRole). affordsTask(microwave, foodPreparationTask).
}).
#pos(e1257@100, {goesIn(microwave_oven, bedroom)}, {}, {
  obj(microwave_oven). hasRole(microwave_oven, applianceRole). affordsTask(microwave_oven, foodPreparationTask).
}).
#pos(e1258@100, {goesIn(microwave_oven, kitchen)}, {}, {
  obj(microwave_oven). hasRole(microwave_oven, applianceRole). affordsTask(microwave_oven, foodPreparationTask).
}).
#pos(e1259@100, {goesIn(milk, bedroom)}, {}, {
  obj(milk). hasRole(milk, consumableRole). affordsTask(milk, eatingDrinkingTask).
}).
#pos(e1260@100, {goesIn(milk, closet)}, {}, {
  obj(milk). hasRole(milk, consumableRole). affordsTask(milk, eatingDrinkingTask).
}).
#pos(e1261@100, {goesIn(milk, fridge)}, {}, {
  obj(milk). hasRole(milk, consumableRole). affordsTask(milk, eatingDrinkingTask).
}).
#pos(e1262@100, {goesIn(milk, garage)}, {}, {
  obj(milk). hasRole(milk, consumableRole). affordsTask(milk, eatingDrinkingTask).
}).
#pos(e1263@100, {goesIn(milk, kitchen)}, {}, {
  obj(milk). hasRole(milk, consumableRole). affordsTask(milk, eatingDrinkingTask).
}).
#pos(e1264@100, {goesIn(milk, pantry)}, {}, {
  obj(milk). hasRole(milk, consumableRole). affordsTask(milk, eatingDrinkingTask).
}).
#pos(e1265@100, {goesIn(mini_bar, bedroom)}, {}, {
  obj(mini_bar). hasRole(mini_bar, applianceRole). hasRole(mini_bar, storageContainerRole). affordsTask(mini_bar, eatingDrinkingTask). affordsTask(mini_bar, foodPreparationTask). affordsTask(mini_bar, storageTask).
}).
#pos(e1266@100, {goesIn(minibar, closet)}, {}, {
  obj(minibar). hasRole(minibar, storageContainerRole). affordsTask(minibar, eatingDrinkingTask). affordsTask(minibar, storageTask).
}).
#pos(e1267@100, {goesIn(minibar, storage_room)}, {}, {
  obj(minibar). hasRole(minibar, storageContainerRole). affordsTask(minibar, eatingDrinkingTask). affordsTask(minibar, storageTask).
}).
#pos(e1268@100, {goesIn(mint, fridge)}, {}, {
  obj(mint). hasRole(mint, consumableRole). affordsTask(mint, eatingDrinkingTask).
}).
#pos(e1269@100, {goesIn(mirror, bedroom)}, {}, {
  obj(mirror). hasRole(mirror, decorationRole). affordsTask(mirror, leisureTask).
}).
#pos(e1270@100, {goesIn(mirror, closet)}, {}, {
  obj(mirror). hasRole(mirror, decorationRole). affordsTask(mirror, leisureTask).
}).
#pos(e1271@100, {goesIn(moistener, bathroom)}, {}, {
  obj(moistener). hasRole(moistener, cleaningToolRole). affordsTask(moistener, hygieneTask).
}).
#pos(e1272@100, {goesIn(moistener, library)}, {}, {
  obj(moistener). hasRole(moistener, cleaningToolRole). affordsTask(moistener, hygieneTask).
}).
#pos(e1273@100, {goesIn(mold, bathroom)}, {}, {
  obj(mold). hasRole(mold, toolRole). affordsTask(mold, maintenanceTask).
}).
#pos(e1274@100, {goesIn(mold, bedroom)}, {}, {
  obj(mold). hasRole(mold, toolRole). affordsTask(mold, maintenanceTask).
}).
#pos(e1275@100, {goesIn(mold, closet)}, {}, {
  obj(mold). hasRole(mold, toolRole). affordsTask(mold, maintenanceTask).
}).
#pos(e1276@100, {goesIn(mold, fridge)}, {}, {
  obj(mold). hasRole(mold, toolRole). affordsTask(mold, maintenanceTask).
}).
#pos(e1277@100, {goesIn(mold, storage_room)}, {}, {
  obj(mold). hasRole(mold, toolRole). affordsTask(mold, maintenanceTask).
}).
#pos(e1278@100, {goesIn(money, bathroom)}, {}, {
  obj(money). hasRole(money, consumableRole). affordsTask(money, eatingDrinkingTask).
}).
#pos(e1279@100, {goesIn(money, bedroom)}, {}, {
  obj(money). hasRole(money, consumableRole). affordsTask(money, eatingDrinkingTask).
}).
#pos(e1280@100, {goesIn(money, closet)}, {}, {
  obj(money). hasRole(money, consumableRole). affordsTask(money, eatingDrinkingTask).
}).
#pos(e1281@100, {goesIn(money, drawer)}, {}, {
  obj(money). hasRole(money, consumableRole). affordsTask(money, eatingDrinkingTask).
}).
#pos(e1282@100, {goesIn(money, library)}, {}, {
  obj(money). hasRole(money, consumableRole). affordsTask(money, eatingDrinkingTask).
}).
#pos(e1283@100, {goesIn(money, storage_room)}, {}, {
  obj(money). hasRole(money, consumableRole). affordsTask(money, eatingDrinkingTask).
}).
#pos(e1284@100, {goesIn(monitor, closet)}, {}, {
  obj(monitor). hasRole(monitor, applianceRole). affordsTask(monitor, leisureTask).
}).
#pos(e1285@100, {goesIn(monitor, garage)}, {}, {
  obj(monitor). hasRole(monitor, applianceRole). affordsTask(monitor, leisureTask).
}).
#pos(e1286@100, {goesIn(monitor, storage_room)}, {}, {
  obj(monitor). hasRole(monitor, applianceRole). affordsTask(monitor, leisureTask).
}).
#pos(e1287@100, {goesIn(monitor, table)}, {}, {
  obj(monitor). hasRole(monitor, applianceRole). affordsTask(monitor, leisureTask).
}).
#pos(e1288@100, {goesIn(monkey, bedroom)}, {}, {
  obj(monkey). hasRole(monkey, entertainmentRole). affordsTask(monkey, leisureTask).
}).
#pos(e1289@100, {goesIn(monkey, closet)}, {}, {
  obj(monkey). hasRole(monkey, entertainmentRole). affordsTask(monkey, leisureTask).
}).
#pos(e1290@100, {goesIn(monkey, garage)}, {}, {
  obj(monkey). hasRole(monkey, entertainmentRole). affordsTask(monkey, leisureTask).
}).
#pos(e1291@100, {goesIn(monkey, library)}, {}, {
  obj(monkey). hasRole(monkey, entertainmentRole). affordsTask(monkey, leisureTask).
}).
#pos(e1292@100, {goesIn(monkey, storage_room)}, {}, {
  obj(monkey). hasRole(monkey, entertainmentRole). affordsTask(monkey, leisureTask).
}).
#pos(e1293@100, {goesIn(mouse, bedroom)}, {}, {
  obj(mouse). hasRole(mouse, toolRole). affordsTask(mouse, workStudyTask).
}).
#pos(e1294@100, {goesIn(mouse, cabinet)}, {}, {
  obj(mouse). hasRole(mouse, toolRole). affordsTask(mouse, workStudyTask).
}).
#pos(e1295@100, {goesIn(mouse, closet)}, {}, {
  obj(mouse). hasRole(mouse, toolRole). affordsTask(mouse, workStudyTask).
}).
#pos(e1296@100, {goesIn(mouse, garage)}, {}, {
  obj(mouse). hasRole(mouse, toolRole). affordsTask(mouse, workStudyTask).
}).
#pos(e1297@100, {goesIn(mouse, garden)}, {}, {
  obj(mouse). hasRole(mouse, toolRole). affordsTask(mouse, workStudyTask).
}).
#pos(e1298@100, {goesIn(mouse, kitchen)}, {}, {
  obj(mouse). hasRole(mouse, toolRole). affordsTask(mouse, workStudyTask).
}).
#pos(e1299@100, {goesIn(mouse, library)}, {}, {
  obj(mouse). hasRole(mouse, toolRole). affordsTask(mouse, workStudyTask).
}).
#pos(e1300@100, {goesIn(mouse, living_room)}, {}, {
  obj(mouse). hasRole(mouse, toolRole). affordsTask(mouse, workStudyTask).
}).
#pos(e1301@100, {goesIn(mouse, pantry)}, {}, {
  obj(mouse). hasRole(mouse, toolRole). affordsTask(mouse, workStudyTask).
}).
#pos(e1302@100, {goesIn(mouse, shelf)}, {}, {
  obj(mouse). hasRole(mouse, toolRole). affordsTask(mouse, workStudyTask).
}).
#pos(e1303@100, {goesIn(mouse, storage_room)}, {}, {
  obj(mouse). hasRole(mouse, toolRole). affordsTask(mouse, workStudyTask).
}).
#pos(e1304@100, {goesIn(mouse, table)}, {}, {
  obj(mouse). hasRole(mouse, toolRole). affordsTask(mouse, workStudyTask).
}).
#pos(e1305@100, {goesIn(mouse, trash)}, {}, {
  obj(mouse). hasRole(mouse, toolRole). affordsTask(mouse, workStudyTask).
}).
#pos(e1306@100, {goesIn(mouthwash, bathroom)}, {}, {
  obj(mouthwash). hasRole(mouthwash, cleaningToolRole). affordsTask(mouthwash, hygieneTask).
}).
#pos(e1307@100, {goesIn(mouthwash, bedroom)}, {}, {
  obj(mouthwash). hasRole(mouthwash, cleaningToolRole). affordsTask(mouthwash, hygieneTask).
}).
#pos(e1308@100, {goesIn(mouthwash, library)}, {}, {
  obj(mouthwash). hasRole(mouthwash, cleaningToolRole). affordsTask(mouthwash, hygieneTask).
}).
#pos(e1309@100, {goesIn(mug, cabinet)}, {}, {
  obj(mug). hasRole(mug, utensilRole). affordsTask(mug, eatingDrinkingTask).
}).
#pos(e1310@100, {goesIn(mushrooms, fridge)}, {}, {
  obj(mushrooms). hasRole(mushrooms, consumableRole). affordsTask(mushrooms, eatingDrinkingTask).
}).
#pos(e1311@100, {goesIn(mushrooms, kitchen)}, {}, {
  obj(mushrooms). hasRole(mushrooms, consumableRole). affordsTask(mushrooms, eatingDrinkingTask).
}).
#pos(e1312@100, {goesIn(mushrooms, pantry)}, {}, {
  obj(mushrooms). hasRole(mushrooms, consumableRole). affordsTask(mushrooms, eatingDrinkingTask).
}).
#pos(e1313@100, {goesIn(music_stand, music_room)}, {}, {
  obj(music_stand). hasRole(music_stand, furnitureRole). affordsTask(music_stand, leisureTask).
}).
#pos(e1314@100, {goesIn(musical_instrument, music_room)}, {}, {
  obj(musical_instrument). hasRole(musical_instrument, musicalInstrumentRole). affordsTask(musical_instrument, leisureTask).
}).
#pos(e1315@100, {goesIn(mustard, fridge)}, {}, {
  obj(mustard). hasRole(mustard, consumableRole). affordsTask(mustard, eatingDrinkingTask).
}).
#pos(e1316@100, {goesIn(mustard, pantry)}, {}, {
  obj(mustard). hasRole(mustard, consumableRole). affordsTask(mustard, eatingDrinkingTask).
}).
#pos(e1317@100, {goesIn(nail_clippers, drawer)}, {}, {
  obj(nail_clippers). hasRole(nail_clippers, toolRole). affordsTask(nail_clippers, maintenanceTask).
}).
#pos(e1318@100, {goesIn(nails, closet)}, {}, {
  obj(nails). hasRole(nails, toolRole). affordsTask(nails, maintenanceTask).
}).
#pos(e1319@100, {goesIn(nails, garage)}, {}, {
  obj(nails). hasRole(nails, toolRole). affordsTask(nails, maintenanceTask).
}).
#pos(e1320@100, {goesIn(nails, kitchen)}, {}, {
  obj(nails). hasRole(nails, toolRole). affordsTask(nails, maintenanceTask).
}).
#pos(e1321@100, {goesIn(nails, pantry)}, {}, {
  obj(nails). hasRole(nails, toolRole). affordsTask(nails, maintenanceTask).
}).
#pos(e1322@100, {goesIn(neckwear, bedroom)}, {}, {
  obj(neckwear). hasRole(neckwear, clothingRole). affordsTask(neckwear, dressingTask).
}).
#pos(e1323@100, {goesIn(neckwear, closet)}, {}, {
  obj(neckwear). hasRole(neckwear, clothingRole). affordsTask(neckwear, dressingTask).
}).
#pos(e1324@100, {goesIn(neckwear, storage_room)}, {}, {
  obj(neckwear). hasRole(neckwear, clothingRole). affordsTask(neckwear, dressingTask).
}).
#pos(e1325@100, {goesIn(needle, closet)}, {}, {
  obj(needle). hasRole(needle, utensilRole). affordsTask(needle, foodPreparationTask).
}).
#pos(e1326@100, {goesIn(nest_of_tables, storage_room)}, {}, {
  obj(nest_of_tables). hasRole(nest_of_tables, furnitureRole). affordsTask(nest_of_tables, storageTask).
}).
#pos(e1327@100, {goesIn(net, garage)}, {}, {
  obj(net). hasRole(net, toolRole). affordsTask(net, maintenanceTask).
}).
#pos(e1328@100, {goesIn(newspaper, bedroom)}, {}, {
  obj(newspaper). hasRole(newspaper, documentRole).
}).
#pos(e1329@100, {goesIn(newspaper, closet)}, {}, {
  obj(newspaper). hasRole(newspaper, documentRole).
}).
#pos(e1330@100, {goesIn(newspaper, garden)}, {}, {
  obj(newspaper). hasRole(newspaper, documentRole).
}).
#pos(e1331@100, {goesIn(newspaper, library)}, {}, {
  obj(newspaper). hasRole(newspaper, documentRole).
}).
#pos(e1332@100, {goesIn(newspaper, living_room)}, {}, {
  obj(newspaper). hasRole(newspaper, documentRole).
}).
#pos(e1333@100, {goesIn(newspaper, trash)}, {}, {
  obj(newspaper). hasRole(newspaper, documentRole).
}).
#pos(e1334@100, {goesIn(newspapers, library)}, {}, {
  obj(newspapers). hasRole(newspapers, documentRole).
}).
#pos(e1335@100, {goesIn(night_table, hallway)}, {}, {
  obj(night_table). hasRole(night_table, storageContainerRole). affordsTask(night_table, storageTask).
}).
#pos(e1336@100, {goesIn(note, bedroom)}, {}, {
  obj(note). hasRole(note, documentRole). affordsTask(note, workStudyTask).
}).
#pos(e1337@100, {goesIn(note, closet)}, {}, {
  obj(note). hasRole(note, documentRole). affordsTask(note, workStudyTask).
}).
#pos(e1338@100, {goesIn(note, fridge)}, {}, {
  obj(note). hasRole(note, documentRole). affordsTask(note, workStudyTask).
}).
#pos(e1339@100, {goesIn(note, library)}, {}, {
  obj(note). hasRole(note, documentRole). affordsTask(note, workStudyTask).
}).
#pos(e1340@100, {goesIn(note, shelf)}, {}, {
  obj(note). hasRole(note, documentRole). affordsTask(note, workStudyTask).
}).
#pos(e1341@100, {goesIn(note, table)}, {}, {
  obj(note). hasRole(note, documentRole). affordsTask(note, workStudyTask).
}).
#pos(e1342@100, {goesIn(notebook, table)}, {}, {
  obj(notebook). hasRole(notebook, documentRole). affordsTask(notebook, workStudyTask).
}).
#pos(e1343@100, {goesIn(notepad, drawer)}, {}, {
  obj(notepad). hasRole(notepad, documentRole). affordsTask(notepad, workStudyTask).
}).
#pos(e1344@100, {goesIn(notepad, table)}, {}, {
  obj(notepad). hasRole(notepad, documentRole). affordsTask(notepad, workStudyTask).
}).
#pos(e1345@100, {goesIn(nuts, closet)}, {}, {
  obj(nuts). hasRole(nuts, consumableRole). affordsTask(nuts, eatingDrinkingTask).
}).
#pos(e1346@100, {goesIn(nuts, garage)}, {}, {
  obj(nuts). hasRole(nuts, consumableRole). affordsTask(nuts, eatingDrinkingTask).
}).
#pos(e1347@100, {goesIn(nuts, kitchen)}, {}, {
  obj(nuts). hasRole(nuts, consumableRole). affordsTask(nuts, eatingDrinkingTask).
}).
#pos(e1348@100, {goesIn(nuts, pantry)}, {}, {
  obj(nuts). hasRole(nuts, consumableRole). affordsTask(nuts, eatingDrinkingTask).
}).
#pos(e1349@100, {goesIn(nylon, closet)}, {}, {
  obj(nylon). hasRole(nylon, clothingRole). affordsTask(nylon, dressingTask).
}).
#pos(e1350@100, {goesIn(nylon, drawer)}, {}, {
  obj(nylon). hasRole(nylon, clothingRole). affordsTask(nylon, dressingTask).
}).
#pos(e1351@100, {goesIn(oil, bedroom)}, {}, {
  obj(oil). hasRole(oil, consumableRole). affordsTask(oil, foodPreparationTask).
}).
#pos(e1352@100, {goesIn(oil, kitchen)}, {}, {
  obj(oil). hasRole(oil, consumableRole). affordsTask(oil, foodPreparationTask).
}).
#pos(e1353@100, {goesIn(oilcloth, garage)}, {}, {
  obj(oilcloth). hasRole(oilcloth, cleaningToolRole). affordsTask(oilcloth, cleaningTask).
}).
#pos(e1354@100, {goesIn(old_books, storage_room)}, {}, {
  obj(old_books). hasRole(old_books, documentRole). affordsTask(old_books, leisureTask).
}).
#pos(e1355@100, {goesIn(old_dress, bedroom)}, {}, {
  obj(old_dress). hasRole(old_dress, clothingRole). affordsTask(old_dress, dressingTask).
}).
#pos(e1356@100, {goesIn(old_dress, garage)}, {}, {
  obj(old_dress). hasRole(old_dress, clothingRole). affordsTask(old_dress, dressingTask).
}).
#pos(e1357@100, {goesIn(old_dress, storage_room)}, {}, {
  obj(old_dress). hasRole(old_dress, clothingRole). affordsTask(old_dress, dressingTask).
}).
#pos(e1358@100, {goesIn(old_newspapers, kitchen)}, {}, {
  obj(old_newspapers). hasRole(old_newspapers, wasteRole). affordsTask(old_newspapers, wasteDisposalTask).
}).
#pos(e1359@100, {goesIn(old_newspapers, pantry)}, {}, {
  obj(old_newspapers). hasRole(old_newspapers, wasteRole). affordsTask(old_newspapers, wasteDisposalTask).
}).
#pos(e1360@100, {goesIn(old_newspapers, trash)}, {}, {
  obj(old_newspapers). hasRole(old_newspapers, wasteRole). affordsTask(old_newspapers, wasteDisposalTask).
}).
#pos(e1361@100, {goesIn(old_things, storage_room)}, {}, {
  obj(old_things). hasRole(old_things, furnitureRole). affordsTask(old_things, storageTask).
}).
#pos(e1362@100, {goesIn(olives, fridge)}, {}, {
  obj(olives). hasRole(olives, consumableRole). affordsTask(olives, eatingDrinkingTask).
}).
#pos(e1363@100, {goesIn(olives, pantry)}, {}, {
  obj(olives). hasRole(olives, consumableRole). affordsTask(olives, eatingDrinkingTask).
}).
#pos(e1364@100, {goesIn(on_off_switch, bedroom)}, {}, {
  obj(on_off_switch). hasRole(on_off_switch, toolRole). affordsTask(on_off_switch, maintenanceTask).
}).
#pos(e1365@100, {goesIn(on_off_switch, library)}, {}, {
  obj(on_off_switch). hasRole(on_off_switch, toolRole). affordsTask(on_off_switch, maintenanceTask).
}).
#pos(e1366@100, {goesIn(one_person_chair, dining_room)}, {}, {
  obj(one_person_chair). hasRole(one_person_chair, furnitureRole). affordsTask(one_person_chair, leisureTask). affordsTask(one_person_chair, workStudyTask).
}).
#pos(e1367@100, {goesIn(onions, fridge)}, {}, {
  obj(onions). hasRole(onions, consumableRole). affordsTask(onions, foodPreparationTask).
}).
#pos(e1368@100, {goesIn(onions, kitchen)}, {}, {
  obj(onions). hasRole(onions, consumableRole). affordsTask(onions, foodPreparationTask).
}).
#pos(e1369@100, {goesIn(onions, pantry)}, {}, {
  obj(onions). hasRole(onions, consumableRole). affordsTask(onions, foodPreparationTask).
}).
#pos(e1370@100, {goesIn(onions, table)}, {}, {
  obj(onions). hasRole(onions, consumableRole). affordsTask(onions, foodPreparationTask).
}).
#pos(e1371@100, {goesIn(orange_juice, fridge)}, {}, {
  obj(orange_juice). hasRole(orange_juice, consumableRole). affordsTask(orange_juice, eatingDrinkingTask).
}).
#pos(e1372@100, {goesIn(ottoman, closet)}, {}, {
  obj(ottoman). hasRole(ottoman, furnitureRole). affordsTask(ottoman, leisureTask).
}).
#pos(e1373@100, {goesIn(ottoman, living_room)}, {}, {
  obj(ottoman). hasRole(ottoman, furnitureRole). affordsTask(ottoman, leisureTask).
}).
#pos(e1374@100, {goesIn(ottoman, storage_room)}, {}, {
  obj(ottoman). hasRole(ottoman, furnitureRole). affordsTask(ottoman, leisureTask).
}).
#pos(e1375@100, {goesIn(outfit, bedroom)}, {}, {
  obj(outfit). hasRole(outfit, clothingRole). affordsTask(outfit, dressingTask).
}).
#pos(e1376@100, {goesIn(outfit, closet)}, {}, {
  obj(outfit). hasRole(outfit, clothingRole). affordsTask(outfit, dressingTask).
}).
#pos(e1377@100, {goesIn(oven, living_room)}, {}, {
  obj(oven). hasRole(oven, cookwareRole). affordsTask(oven, foodPreparationTask).
}).
#pos(e1378@100, {goesIn(oven_mitts, kitchen)}, {}, {
  obj(oven_mitts). hasRole(oven_mitts, utensilRole). affordsTask(oven_mitts, foodPreparationTask).
}).
#pos(e1379@100, {goesIn(pad, bathroom)}, {}, {
  obj(pad). hasRole(pad, beddingRole). affordsTask(pad, sleepingTask).
}).
#pos(e1380@100, {goesIn(pad, bedroom)}, {}, {
  obj(pad). hasRole(pad, beddingRole). affordsTask(pad, sleepingTask).
}).
#pos(e1381@100, {goesIn(pad, closet)}, {}, {
  obj(pad). hasRole(pad, beddingRole). affordsTask(pad, sleepingTask).
}).
#pos(e1382@100, {goesIn(pad, pantry)}, {}, {
  obj(pad). hasRole(pad, beddingRole). affordsTask(pad, sleepingTask).
}).
#pos(e1383@100, {goesIn(pad, table)}, {}, {
  obj(pad). hasRole(pad, beddingRole). affordsTask(pad, sleepingTask).
}).
#pos(e1384@100, {goesIn(page, garden)}, {}, {
  obj(page). hasRole(page, documentRole).
}).
#pos(e1385@100, {goesIn(page, library)}, {}, {
  obj(page). hasRole(page, documentRole).
}).
#pos(e1386@100, {goesIn(pail, garage)}, {}, {
  obj(pail). hasRole(pail, storageContainerRole). affordsTask(pail, storageTask).
}).
#pos(e1387@100, {goesIn(pail, garden)}, {}, {
  obj(pail). hasRole(pail, storageContainerRole). affordsTask(pail, storageTask).
}).
#pos(e1388@100, {goesIn(pail, laundry_room)}, {}, {
  obj(pail). hasRole(pail, storageContainerRole). affordsTask(pail, storageTask).
}).
#pos(e1389@100, {goesIn(paint, garage)}, {}, {
  obj(paint). hasRole(paint, toolRole). affordsTask(paint, maintenanceTask).
}).
#pos(e1390@100, {goesIn(paint, garden)}, {}, {
  obj(paint). hasRole(paint, toolRole). affordsTask(paint, maintenanceTask).
}).
#pos(e1391@100, {goesIn(paint, kitchen)}, {}, {
  obj(paint). hasRole(paint, toolRole). affordsTask(paint, maintenanceTask).
}).
#pos(e1392@100, {goesIn(paint, pantry)}, {}, {
  obj(paint). hasRole(paint, toolRole). affordsTask(paint, maintenanceTask).
}).
#pos(e1393@100, {goesIn(paint, shelf)}, {}, {
  obj(paint). hasRole(paint, toolRole). affordsTask(paint, maintenanceTask).
}).
#pos(e1394@100, {goesIn(paint, storage_room)}, {}, {
  obj(paint). hasRole(paint, toolRole). affordsTask(paint, maintenanceTask).
}).
#pos(e1395@100, {goesIn(painting, storage_room)}, {}, {
  obj(painting). hasRole(painting, decorationRole). affordsTask(painting, leisureTask).
}).
#pos(e1396@100, {goesIn(pair_of_pants, bedroom)}, {}, {
  obj(pair_of_pants). hasRole(pair_of_pants, clothingRole). affordsTask(pair_of_pants, dressingTask).
}).
#pos(e1397@100, {goesIn(pair_of_pants, storage_room)}, {}, {
  obj(pair_of_pants). hasRole(pair_of_pants, clothingRole). affordsTask(pair_of_pants, dressingTask).
}).
#pos(e1398@100, {goesIn(pair_of_scissors, drawer)}, {}, {
  obj(pair_of_scissors). hasRole(pair_of_scissors, toolRole). affordsTask(pair_of_scissors, maintenanceTask).
}).
#pos(e1399@100, {goesIn(pair_of_shoes, bedroom)}, {}, {
  obj(pair_of_shoes). hasRole(pair_of_shoes, clothingRole). affordsTask(pair_of_shoes, dressingTask).
}).
#pos(e1400@100, {goesIn(pair_of_shoes, closet)}, {}, {
  obj(pair_of_shoes). hasRole(pair_of_shoes, clothingRole). affordsTask(pair_of_shoes, dressingTask).
}).
#pos(e1401@100, {goesIn(pair_of_shoes, garage)}, {}, {
  obj(pair_of_shoes). hasRole(pair_of_shoes, clothingRole). affordsTask(pair_of_shoes, dressingTask).
}).
#pos(e1402@100, {goesIn(pair_of_shoes, storage_room)}, {}, {
  obj(pair_of_shoes). hasRole(pair_of_shoes, clothingRole). affordsTask(pair_of_shoes, dressingTask).
}).
#pos(e1403@100, {goesIn(pan, kitchen)}, {}, {
  obj(pan). hasRole(pan, cookwareRole). affordsTask(pan, foodPreparationTask).
}).
#pos(e1404@100, {goesIn(pan, pantry)}, {}, {
  obj(pan). hasRole(pan, cookwareRole). affordsTask(pan, foodPreparationTask).
}).
#pos(e1405@100, {goesIn(pans, drawer)}, {}, {
  obj(pans). hasRole(pans, cookwareRole). affordsTask(pans, foodPreparationTask).
}).
#pos(e1406@100, {goesIn(pans, kitchen)}, {}, {
  obj(pans). hasRole(pans, cookwareRole). affordsTask(pans, foodPreparationTask).
}).
#pos(e1407@100, {goesIn(pantry, kitchen)}, {}, {
  obj(pantry). hasRole(pantry, storageContainerRole). affordsTask(pantry, storageTask).
}).
#pos(e1408@100, {goesIn(pantry, pantry)}, {}, {
  obj(pantry). hasRole(pantry, storageContainerRole). affordsTask(pantry, storageTask).
}).
#pos(e1409@100, {goesIn(pants, bedroom)}, {}, {
  obj(pants). hasRole(pants, clothingRole). affordsTask(pants, dressingTask).
}).
#pos(e1410@100, {goesIn(pants, closet)}, {}, {
  obj(pants). hasRole(pants, clothingRole). affordsTask(pants, dressingTask).
}).
#pos(e1411@100, {goesIn(paper, closet)}, {}, {
  obj(paper). hasRole(paper, consumableRole). affordsTask(paper, eatingDrinkingTask). affordsTask(paper, foodPreparationTask). affordsTask(paper, leisureTask). affordsTask(paper, workStudyTask).
}).
#pos(e1412@100, {goesIn(paper, drawer)}, {}, {
  obj(paper). hasRole(paper, consumableRole). affordsTask(paper, eatingDrinkingTask). affordsTask(paper, foodPreparationTask). affordsTask(paper, leisureTask). affordsTask(paper, workStudyTask).
}).
#pos(e1413@100, {goesIn(paper, home_office)}, {}, {
  obj(paper). hasRole(paper, consumableRole). affordsTask(paper, eatingDrinkingTask). affordsTask(paper, foodPreparationTask). affordsTask(paper, leisureTask). affordsTask(paper, workStudyTask).
}).
#pos(e1414@100, {goesIn(paper, library)}, {}, {
  obj(paper). hasRole(paper, consumableRole). affordsTask(paper, eatingDrinkingTask). affordsTask(paper, foodPreparationTask). affordsTask(paper, leisureTask). affordsTask(paper, workStudyTask).
}).
#pos(e1415@100, {goesIn(paper, trash)}, {}, {
  obj(paper). hasRole(paper, consumableRole). affordsTask(paper, eatingDrinkingTask). affordsTask(paper, foodPreparationTask). affordsTask(paper, leisureTask). affordsTask(paper, workStudyTask).
}).
#pos(e1416@100, {goesIn(paper_and_pencil, table)}, {}, {
  obj(paper_and_pencil). hasRole(paper_and_pencil, toolRole). affordsTask(paper_and_pencil, workStudyTask).
}).
#pos(e1417@100, {goesIn(paper_clip, drawer)}, {}, {
  obj(paper_clip). hasRole(paper_clip, toolRole). affordsTask(paper_clip, maintenanceTask).
}).
#pos(e1418@100, {goesIn(paper_clip, table)}, {}, {
  obj(paper_clip). hasRole(paper_clip, toolRole). affordsTask(paper_clip, maintenanceTask).
}).
#pos(e1419@100, {goesIn(paper_clips, drawer)}, {}, {
  obj(paper_clips). hasRole(paper_clips, toolRole). affordsTask(paper_clips, workStudyTask).
}).
#pos(e1420@100, {goesIn(paper_clips, table)}, {}, {
  obj(paper_clips). hasRole(paper_clips, toolRole). affordsTask(paper_clips, workStudyTask).
}).
#pos(e1421@100, {goesIn(paper_fastener, garage)}, {}, {
  obj(paper_fastener). hasRole(paper_fastener, toolRole). affordsTask(paper_fastener, maintenanceTask).
}).
#pos(e1422@100, {goesIn(paper_page, bedroom)}, {}, {
  obj(paper_page). hasRole(paper_page, documentRole). affordsTask(paper_page, leisureTask). affordsTask(paper_page, workStudyTask).
}).
#pos(e1423@100, {goesIn(paper_page, closet)}, {}, {
  obj(paper_page). hasRole(paper_page, documentRole). affordsTask(paper_page, leisureTask). affordsTask(paper_page, workStudyTask).
}).
#pos(e1424@100, {goesIn(paper_page, garden)}, {}, {
  obj(paper_page). hasRole(paper_page, documentRole). affordsTask(paper_page, leisureTask). affordsTask(paper_page, workStudyTask).
}).
#pos(e1425@100, {goesIn(paper_page, library)}, {}, {
  obj(paper_page). hasRole(paper_page, documentRole). affordsTask(paper_page, leisureTask). affordsTask(paper_page, workStudyTask).
}).
#pos(e1426@100, {goesIn(paper_punch, drawer)}, {}, {
  obj(paper_punch). hasRole(paper_punch, toolRole). affordsTask(paper_punch, maintenanceTask).
}).
#pos(e1427@100, {goesIn(paper_punch, table)}, {}, {
  obj(paper_punch). hasRole(paper_punch, toolRole). affordsTask(paper_punch, maintenanceTask).
}).
#pos(e1428@100, {goesIn(paper_sign, hallway)}, {}, {
  obj(paper_sign). hasRole(paper_sign, decorationRole). affordsTask(paper_sign, leisureTask). affordsTask(paper_sign, workStudyTask).
}).
#pos(e1429@100, {goesIn(paper_towels, kitchen)}, {}, {
  obj(paper_towels). hasRole(paper_towels, cleaningToolRole). affordsTask(paper_towels, cleaningTask).
}).
#pos(e1430@100, {goesIn(paper_towels, pantry)}, {}, {
  obj(paper_towels). hasRole(paper_towels, cleaningToolRole). affordsTask(paper_towels, cleaningTask).
}).
#pos(e1431@100, {goesIn(paperclip, table)}, {}, {
  obj(paperclip). hasRole(paperclip, toolRole). affordsTask(paperclip, workStudyTask).
}).
#pos(e1432@100, {goesIn(papers, drawer)}, {}, {
  obj(papers). hasRole(papers, documentRole). affordsTask(papers, cleaningTask).
}).
#pos(e1433@100, {goesIn(papers, garage)}, {}, {
  obj(papers). hasRole(papers, documentRole). affordsTask(papers, cleaningTask).
}).
#pos(e1434@100, {goesIn(papers, table)}, {}, {
  obj(papers). hasRole(papers, documentRole). affordsTask(papers, cleaningTask).
}).
#pos(e1435@100, {goesIn(paperweight, table)}, {}, {
  obj(paperweight). hasRole(paperweight, toolRole).
}).
#pos(e1436@100, {goesIn(parlor, bedroom)}, {}, {
  obj(parlor). hasRole(parlor, furnitureRole). affordsTask(parlor, leisureTask).
}).
#pos(e1437@100, {goesIn(pasta, closet)}, {}, {
  obj(pasta). hasRole(pasta, consumableRole). affordsTask(pasta, eatingDrinkingTask). affordsTask(pasta, foodPreparationTask).
}).
#pos(e1438@100, {goesIn(pasta, garage)}, {}, {
  obj(pasta). hasRole(pasta, consumableRole). affordsTask(pasta, eatingDrinkingTask). affordsTask(pasta, foodPreparationTask).
}).
#pos(e1439@100, {goesIn(pasta, kitchen)}, {}, {
  obj(pasta). hasRole(pasta, consumableRole). affordsTask(pasta, eatingDrinkingTask). affordsTask(pasta, foodPreparationTask).
}).
#pos(e1440@100, {goesIn(pasta, pantry)}, {}, {
  obj(pasta). hasRole(pasta, consumableRole). affordsTask(pasta, eatingDrinkingTask). affordsTask(pasta, foodPreparationTask).
}).
#pos(e1441@100, {goesIn(pasta, storage_room)}, {}, {
  obj(pasta). hasRole(pasta, consumableRole). affordsTask(pasta, eatingDrinkingTask). affordsTask(pasta, foodPreparationTask).
}).
#pos(e1442@100, {goesIn(patio, bedroom)}, {}, {
  obj(patio). hasRole(patio, furnitureRole). affordsTask(patio, leisureTask).
}).
#pos(e1443@100, {goesIn(patio, garden)}, {}, {
  obj(patio). hasRole(patio, furnitureRole). affordsTask(patio, leisureTask).
}).
#pos(e1444@100, {goesIn(patio_door, garden)}, {}, {
  obj(patio_door). hasRole(patio_door, furnitureRole). affordsTask(patio_door, leisureTask).
}).
#pos(e1445@100, {goesIn(peanut_butter, cabinet)}, {}, {
  obj(peanut_butter). hasRole(peanut_butter, consumableRole). affordsTask(peanut_butter, eatingDrinkingTask).
}).
#pos(e1446@100, {goesIn(peanut_butter, closet)}, {}, {
  obj(peanut_butter). hasRole(peanut_butter, consumableRole). affordsTask(peanut_butter, eatingDrinkingTask).
}).
#pos(e1447@100, {goesIn(peanut_butter, garage)}, {}, {
  obj(peanut_butter). hasRole(peanut_butter, consumableRole). affordsTask(peanut_butter, eatingDrinkingTask).
}).
#pos(e1448@100, {goesIn(peanut_butter, kitchen)}, {}, {
  obj(peanut_butter). hasRole(peanut_butter, consumableRole). affordsTask(peanut_butter, eatingDrinkingTask).
}).
#pos(e1449@100, {goesIn(peanut_butter, pantry)}, {}, {
  obj(peanut_butter). hasRole(peanut_butter, consumableRole). affordsTask(peanut_butter, eatingDrinkingTask).
}).
#pos(e1450@100, {goesIn(peanuts, closet)}, {}, {
  obj(peanuts). hasRole(peanuts, consumableRole). affordsTask(peanuts, eatingDrinkingTask).
}).
#pos(e1451@100, {goesIn(peanuts, garage)}, {}, {
  obj(peanuts). hasRole(peanuts, consumableRole). affordsTask(peanuts, eatingDrinkingTask).
}).
#pos(e1452@100, {goesIn(peanuts, kitchen)}, {}, {
  obj(peanuts). hasRole(peanuts, consumableRole). affordsTask(peanuts, eatingDrinkingTask).
}).
#pos(e1453@100, {goesIn(peanuts, pantry)}, {}, {
  obj(peanuts). hasRole(peanuts, consumableRole). affordsTask(peanuts, eatingDrinkingTask).
}).
#pos(e1454@100, {goesIn(pears, kitchen)}, {}, {
  obj(pears). hasRole(pears, consumableRole). affordsTask(pears, eatingDrinkingTask).
}).
#pos(e1455@100, {goesIn(pears, pantry)}, {}, {
  obj(pears). hasRole(pears, consumableRole). affordsTask(pears, eatingDrinkingTask).
}).
#pos(e1456@100, {goesIn(peas, fridge)}, {}, {
  obj(peas). hasRole(peas, consumableRole). affordsTask(peas, eatingDrinkingTask).
}).
#pos(e1457@100, {goesIn(peas, kitchen)}, {}, {
  obj(peas). hasRole(peas, consumableRole). affordsTask(peas, eatingDrinkingTask).
}).
#pos(e1458@100, {goesIn(peas, pantry)}, {}, {
  obj(peas). hasRole(peas, consumableRole). affordsTask(peas, eatingDrinkingTask).
}).
#pos(e1459@100, {goesIn(pebble, closet)}, {}, {
  obj(pebble). hasRole(pebble, toolRole). affordsTask(pebble, maintenanceTask).
}).
#pos(e1460@100, {goesIn(pedestal, garden)}, {}, {
  obj(pedestal). hasRole(pedestal, furnitureRole). affordsTask(pedestal, storageTask).
}).
#pos(e1461@100, {goesIn(pedestal, hallway)}, {}, {
  obj(pedestal). hasRole(pedestal, furnitureRole). affordsTask(pedestal, storageTask).
}).
#pos(e1462@100, {goesIn(pedestal, library)}, {}, {
  obj(pedestal). hasRole(pedestal, furnitureRole). affordsTask(pedestal, storageTask).
}).
#pos(e1463@100, {goesIn(pen, closet)}, {}, {
  obj(pen). hasRole(pen, toolRole).
}).
#pos(e1464@100, {goesIn(pen, drawer)}, {}, {
  obj(pen). hasRole(pen, toolRole).
}).
#pos(e1465@100, {goesIn(pen, garage)}, {}, {
  obj(pen). hasRole(pen, toolRole).
}).
#pos(e1466@100, {goesIn(pen, storage_room)}, {}, {
  obj(pen). hasRole(pen, toolRole).
}).
#pos(e1467@100, {goesIn(pen, table)}, {}, {
  obj(pen). hasRole(pen, toolRole).
}).
#pos(e1468@100, {goesIn(pencil, closet)}, {}, {
  obj(pencil). hasRole(pencil, toolRole).
}).
#pos(e1469@100, {goesIn(pencil, drawer)}, {}, {
  obj(pencil). hasRole(pencil, toolRole).
}).
#pos(e1470@100, {goesIn(pencil, kitchen)}, {}, {
  obj(pencil). hasRole(pencil, toolRole).
}).
#pos(e1471@100, {goesIn(pencil, shelf)}, {}, {
  obj(pencil). hasRole(pencil, toolRole).
}).
#pos(e1472@100, {goesIn(pencil_sharpener, library)}, {}, {
  obj(pencil_sharpener). hasRole(pencil_sharpener, toolRole). affordsTask(pencil_sharpener, foodPreparationTask).
}).
#pos(e1473@100, {goesIn(pencil_sharpener, table)}, {}, {
  obj(pencil_sharpener). hasRole(pencil_sharpener, toolRole). affordsTask(pencil_sharpener, foodPreparationTask).
}).
#pos(e1474@100, {goesIn(pennies, bathroom)}, {}, {
  obj(pennies). hasRole(pennies, consumableRole). affordsTask(pennies, eatingDrinkingTask).
}).
#pos(e1475@100, {goesIn(pennies, closet)}, {}, {
  obj(pennies). hasRole(pennies, consumableRole). affordsTask(pennies, eatingDrinkingTask).
}).
#pos(e1476@100, {goesIn(pennies, drawer)}, {}, {
  obj(pennies). hasRole(pennies, consumableRole). affordsTask(pennies, eatingDrinkingTask).
}).
#pos(e1477@100, {goesIn(pennies, library)}, {}, {
  obj(pennies). hasRole(pennies, consumableRole). affordsTask(pennies, eatingDrinkingTask).
}).
#pos(e1478@100, {goesIn(pennies, pantry)}, {}, {
  obj(pennies). hasRole(pennies, consumableRole). affordsTask(pennies, eatingDrinkingTask).
}).
#pos(e1479@100, {goesIn(penny, bedroom)}, {}, {
  obj(penny). hasRole(penny, consumableRole). affordsTask(penny, eatingDrinkingTask).
}).
#pos(e1480@100, {goesIn(penny, living_room)}, {}, {
  obj(penny). hasRole(penny, consumableRole). affordsTask(penny, eatingDrinkingTask).
}).
#pos(e1481@100, {goesIn(pens_and_pencils, table)}, {}, {
  obj(pens_and_pencils). hasRole(pens_and_pencils, toolRole). affordsTask(pens_and_pencils, workStudyTask).
}).
#pos(e1482@100, {goesIn(pepper, table)}, {}, {
  obj(pepper). hasRole(pepper, consumableRole). affordsTask(pepper, foodPreparationTask).
}).
#pos(e1483@100, {goesIn(pepper_and_salt, kitchen)}, {}, {
  obj(pepper_and_salt). hasRole(pepper_and_salt, consumableRole). affordsTask(pepper_and_salt, foodPreparationTask).
}).
#pos(e1484@100, {goesIn(pepsi, fridge)}, {}, {
  obj(pepsi). hasRole(pepsi, consumableRole). affordsTask(pepsi, eatingDrinkingTask).
}).
#pos(e1485@100, {goesIn(pet, bedroom)}, {}, {
  obj(pet). hasRole(pet, entertainmentRole). affordsTask(pet, leisureTask).
}).
#pos(e1486@100, {goesIn(pets, bedroom)}, {}, {
  obj(pets). hasRole(pets, entertainmentRole). affordsTask(pets, leisureTask).
}).
#pos(e1487@100, {goesIn(pets, table)}, {}, {
  obj(pets). hasRole(pets, entertainmentRole). affordsTask(pets, leisureTask).
}).
#pos(e1488@100, {goesIn(phillips_head_screwdriver, garage)}, {}, {
  obj(phillips_head_screwdriver). hasRole(phillips_head_screwdriver, toolRole). affordsTask(phillips_head_screwdriver, maintenanceTask).
}).
#pos(e1489@100, {goesIn(phillips_screwdriver, garage)}, {}, {
  obj(phillips_screwdriver). hasRole(phillips_screwdriver, toolRole). affordsTask(phillips_screwdriver, maintenanceTask).
}).
#pos(e1490@100, {goesIn(phillips_screwdriver, storage_room)}, {}, {
  obj(phillips_screwdriver). hasRole(phillips_screwdriver, toolRole). affordsTask(phillips_screwdriver, maintenanceTask).
}).
#pos(e1491@100, {goesIn(phone, bedroom)}, {}, {
  obj(phone). hasRole(phone, toolRole). affordsTask(phone, workStudyTask).
}).
#pos(e1492@100, {goesIn(phone, table)}, {}, {
  obj(phone). hasRole(phone, toolRole). affordsTask(phone, workStudyTask).
}).
#pos(e1493@100, {goesIn(phone_book, drawer)}, {}, {
  obj(phone_book). hasRole(phone_book, documentRole). affordsTask(phone_book, workStudyTask).
}).
#pos(e1494@100, {goesIn(photograph, shelf)}, {}, {
  obj(photograph). hasRole(photograph, documentRole). affordsTask(photograph, leisureTask).
}).
#pos(e1495@100, {goesIn(piano, music_room)}, {}, {
  obj(piano). hasRole(piano, musicalInstrumentRole). affordsTask(piano, leisureTask). affordsTask(piano, workStudyTask).
}).
#pos(e1496@100, {goesIn(pickle, pantry)}, {}, {
  obj(pickle). hasRole(pickle, consumableRole). affordsTask(pickle, eatingDrinkingTask).
}).
#pos(e1497@100, {goesIn(picnic_basket, kitchen)}, {}, {
  obj(picnic_basket). hasRole(picnic_basket, storageContainerRole). affordsTask(picnic_basket, eatingDrinkingTask). affordsTask(picnic_basket, storageTask).
}).
#pos(e1498@100, {goesIn(picture, garden)}, {}, {
  obj(picture). hasRole(picture, decorationRole).
}).
#pos(e1499@100, {goesIn(picture, library)}, {}, {
  obj(picture). hasRole(picture, decorationRole).
}).
#pos(e1500@100, {goesIn(picture, shelf)}, {}, {
  obj(picture). hasRole(picture, decorationRole).
}).
#pos(e1501@100, {goesIn(picture, table)}, {}, {
  obj(picture). hasRole(picture, decorationRole).
}).
#pos(e1502@100, {goesIn(picture_frame, shelf)}, {}, {
  obj(picture_frame). hasRole(picture_frame, decorationRole).
}).
#pos(e1503@100, {goesIn(pictures, bedroom)}, {}, {
  obj(pictures). hasRole(pictures, decorationRole). affordsTask(pictures, leisureTask).
}).
#pos(e1504@100, {goesIn(pictures, drawer)}, {}, {
  obj(pictures). hasRole(pictures, decorationRole). affordsTask(pictures, leisureTask).
}).
#pos(e1505@100, {goesIn(pictures, fridge)}, {}, {
  obj(pictures). hasRole(pictures, decorationRole). affordsTask(pictures, leisureTask).
}).
#pos(e1506@100, {goesIn(pictures, garage)}, {}, {
  obj(pictures). hasRole(pictures, decorationRole). affordsTask(pictures, leisureTask).
}).
#pos(e1507@100, {goesIn(pictures, garden)}, {}, {
  obj(pictures). hasRole(pictures, decorationRole). affordsTask(pictures, leisureTask).
}).
#pos(e1508@100, {goesIn(pictures, library)}, {}, {
  obj(pictures). hasRole(pictures, decorationRole). affordsTask(pictures, leisureTask).
}).
#pos(e1509@100, {goesIn(pictures, storage_room)}, {}, {
  obj(pictures). hasRole(pictures, decorationRole). affordsTask(pictures, leisureTask).
}).
#pos(e1510@100, {goesIn(piece, kitchen)}, {}, {
  obj(piece). hasRole(piece, toolRole). affordsTask(piece, maintenanceTask).
}).
#pos(e1511@100, {goesIn(pig, garden)}, {}, {
  obj(pig). hasRole(pig, consumableRole). affordsTask(pig, foodPreparationTask).
}).
#pos(e1512@100, {goesIn(pigeons, garage)}, {}, {
  obj(pigeons). hasRole(pigeons, consumableRole). affordsTask(pigeons, eatingDrinkingTask).
}).
#pos(e1513@100, {goesIn(pill, bedroom)}, {}, {
  obj(pill). hasRole(pill, consumableRole). affordsTask(pill, eatingDrinkingTask).
}).
#pos(e1514@100, {goesIn(pill, pantry)}, {}, {
  obj(pill). hasRole(pill, consumableRole). affordsTask(pill, eatingDrinkingTask).
}).
#pos(e1515@100, {goesIn(pillow, bedroom)}, {}, {
  obj(pillow). hasRole(pillow, beddingRole). affordsTask(pillow, sleepingTask).
}).
#pos(e1516@100, {goesIn(pillow_case, bed)}, {}, {
  obj(pillow_case). hasRole(pillow_case, beddingRole). affordsTask(pillow_case, sleepingTask).
}).
#pos(e1517@100, {goesIn(pillow_case, bedroom)}, {}, {
  obj(pillow_case). hasRole(pillow_case, beddingRole). affordsTask(pillow_case, sleepingTask).
}).
#pos(e1518@100, {goesIn(pillow_case, closet)}, {}, {
  obj(pillow_case). hasRole(pillow_case, beddingRole). affordsTask(pillow_case, sleepingTask).
}).
#pos(e1519@100, {goesIn(pillow_case, drawer)}, {}, {
  obj(pillow_case). hasRole(pillow_case, beddingRole). affordsTask(pillow_case, sleepingTask).
}).
#pos(e1520@100, {goesIn(pillow_case, hallway)}, {}, {
  obj(pillow_case). hasRole(pillow_case, beddingRole). affordsTask(pillow_case, sleepingTask).
}).
#pos(e1521@100, {goesIn(pillowcase, bed)}, {}, {
  obj(pillowcase). hasRole(pillowcase, beddingRole). affordsTask(pillowcase, sleepingTask).
}).
#pos(e1522@100, {goesIn(pillowcase, bedroom)}, {}, {
  obj(pillowcase). hasRole(pillowcase, beddingRole). affordsTask(pillowcase, sleepingTask).
}).
#pos(e1523@100, {goesIn(pillowcase, hallway)}, {}, {
  obj(pillowcase). hasRole(pillowcase, beddingRole). affordsTask(pillowcase, sleepingTask).
}).
#pos(e1524@100, {goesIn(pineapple, pantry)}, {}, {
  obj(pineapple). hasRole(pineapple, consumableRole). affordsTask(pineapple, eatingDrinkingTask).
}).
#pos(e1525@100, {goesIn(pipe, library)}, {}, {
  obj(pipe). hasRole(pipe, toolRole). affordsTask(pipe, maintenanceTask).
}).
#pos(e1526@100, {goesIn(pizza, kitchen)}, {}, {
  obj(pizza). hasRole(pizza, consumableRole). affordsTask(pizza, eatingDrinkingTask).
}).
#pos(e1527@100, {goesIn(place_setting, table)}, {}, {
  obj(place_setting). hasRole(place_setting, utensilRole). affordsTask(place_setting, eatingDrinkingTask).
}).
#pos(e1528@100, {goesIn(placemat, table)}, {}, {
  obj(placemat). hasRole(placemat, utensilRole). affordsTask(placemat, eatingDrinkingTask).
}).
#pos(e1529@100, {goesIn(plant, bedroom)}, {}, {
  obj(plant). hasRole(plant, consumableRole). affordsTask(plant, maintenanceTask).
}).
#pos(e1530@100, {goesIn(plant, closet)}, {}, {
  obj(plant). hasRole(plant, consumableRole). affordsTask(plant, maintenanceTask).
}).
#pos(e1531@100, {goesIn(plant, garden)}, {}, {
  obj(plant). hasRole(plant, consumableRole). affordsTask(plant, maintenanceTask).
}).
#pos(e1532@100, {goesIn(plant, kitchen)}, {}, {
  obj(plant). hasRole(plant, consumableRole). affordsTask(plant, maintenanceTask).
}).
#pos(e1533@100, {goesIn(plant, shelf)}, {}, {
  obj(plant). hasRole(plant, consumableRole). affordsTask(plant, maintenanceTask).
}).
#pos(e1534@100, {goesIn(plant, storage_room)}, {}, {
  obj(plant). hasRole(plant, consumableRole). affordsTask(plant, maintenanceTask).
}).
#pos(e1535@100, {goesIn(plant, table)}, {}, {
  obj(plant). hasRole(plant, consumableRole). affordsTask(plant, maintenanceTask).
}).
#pos(e1536@100, {goesIn(plants, bathroom)}, {}, {
  obj(plants). hasRole(plants, consumableRole). affordsTask(plants, eatingDrinkingTask).
}).
#pos(e1537@100, {goesIn(plants, closet)}, {}, {
  obj(plants). hasRole(plants, consumableRole). affordsTask(plants, eatingDrinkingTask).
}).
#pos(e1538@100, {goesIn(plants, garden)}, {}, {
  obj(plants). hasRole(plants, consumableRole). affordsTask(plants, eatingDrinkingTask).
}).
#pos(e1539@100, {goesIn(plastic, cabinet)}, {}, {
  obj(plastic). hasRole(plastic, toolRole).
}).
#pos(e1540@100, {goesIn(plastic, kitchen)}, {}, {
  obj(plastic). hasRole(plastic, toolRole).
}).
#pos(e1541@100, {goesIn(plastic, trash)}, {}, {
  obj(plastic). hasRole(plastic, toolRole).
}).
#pos(e1542@100, {goesIn(plate, cabinet)}, {}, {
  obj(plate). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e1543@100, {goesIn(plate, kitchen)}, {}, {
  obj(plate). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e1544@100, {goesIn(plate, sink)}, {}, {
  obj(plate). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e1545@100, {goesIn(plate, table)}, {}, {
  obj(plate). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e1546@100, {goesIn(plates, cabinet)}, {}, {
  obj(plates). hasRole(plates, utensilRole). affordsTask(plates, eatingDrinkingTask).
}).
#pos(e1547@100, {goesIn(plates, kitchen)}, {}, {
  obj(plates). hasRole(plates, utensilRole). affordsTask(plates, eatingDrinkingTask).
}).
#pos(e1548@100, {goesIn(plates, shelf)}, {}, {
  obj(plates). hasRole(plates, utensilRole). affordsTask(plates, eatingDrinkingTask).
}).
#pos(e1549@100, {goesIn(plates, table)}, {}, {
  obj(plates). hasRole(plates, utensilRole). affordsTask(plates, eatingDrinkingTask).
}).
#pos(e1550@100, {goesIn(plumbing, bathroom)}, {}, {
  obj(plumbing). hasRole(plumbing, toolRole). affordsTask(plumbing, maintenanceTask).
}).
#pos(e1551@100, {goesIn(plumbing, bedroom)}, {}, {
  obj(plumbing). hasRole(plumbing, toolRole). affordsTask(plumbing, maintenanceTask).
}).
#pos(e1552@100, {goesIn(plumbing, kitchen)}, {}, {
  obj(plumbing). hasRole(plumbing, toolRole). affordsTask(plumbing, maintenanceTask).
}).
#pos(e1553@100, {goesIn(plumbing, library)}, {}, {
  obj(plumbing). hasRole(plumbing, toolRole). affordsTask(plumbing, maintenanceTask).
}).
#pos(e1554@100, {goesIn(pocket, closet)}, {}, {
  obj(pocket). hasRole(pocket, storageContainerRole). affordsTask(pocket, storageTask).
}).
#pos(e1555@100, {goesIn(poker_chips, table)}, {}, {
  obj(poker_chips). hasRole(poker_chips, entertainmentRole). affordsTask(poker_chips, leisureTask).
}).
#pos(e1556@100, {goesIn(polish, closet)}, {}, {
  obj(polish). hasRole(polish, cleaningToolRole). affordsTask(polish, cleaningTask).
}).
#pos(e1557@100, {goesIn(polish, garage)}, {}, {
  obj(polish). hasRole(polish, cleaningToolRole). affordsTask(polish, cleaningTask).
}).
#pos(e1558@100, {goesIn(polish, table)}, {}, {
  obj(polish). hasRole(polish, cleaningToolRole). affordsTask(polish, cleaningTask).
}).
#pos(e1559@100, {goesIn(popcorn, pantry)}, {}, {
  obj(popcorn). hasRole(popcorn, consumableRole). affordsTask(popcorn, eatingDrinkingTask).
}).
#pos(e1560@100, {goesIn(pork, fridge)}, {}, {
  obj(pork). hasRole(pork, consumableRole). affordsTask(pork, eatingDrinkingTask).
}).
#pos(e1561@100, {goesIn(portable_shower_head, garage)}, {}, {
  obj(portable_shower_head). hasRole(portable_shower_head, cleaningToolRole). affordsTask(portable_shower_head, hygieneTask).
}).
#pos(e1562@100, {goesIn(post_note, table)}, {}, {
  obj(post_note). hasRole(post_note, documentRole). affordsTask(post_note, workStudyTask).
}).
#pos(e1563@100, {goesIn(post_notes, table)}, {}, {
  obj(post_notes). hasRole(post_notes, consumableRole). affordsTask(post_notes, leisureTask).
}).
#pos(e1564@100, {goesIn(poster, bedroom)}, {}, {
  obj(poster). hasRole(poster, decorationRole). affordsTask(poster, leisureTask).
}).
#pos(e1565@100, {goesIn(pot, cabinet)}, {}, {
  obj(pot). hasRole(pot, cookwareRole). affordsTask(pot, foodPreparationTask).
}).
#pos(e1566@100, {goesIn(pot, drawer)}, {}, {
  obj(pot). hasRole(pot, cookwareRole). affordsTask(pot, foodPreparationTask).
}).
#pos(e1567@100, {goesIn(pot, garden)}, {}, {
  obj(pot). hasRole(pot, cookwareRole). affordsTask(pot, foodPreparationTask).
}).
#pos(e1568@100, {goesIn(pot, kitchen)}, {}, {
  obj(pot). hasRole(pot, cookwareRole). affordsTask(pot, foodPreparationTask).
}).
#pos(e1569@100, {goesIn(potato, closet)}, {}, {
  obj(potato). hasRole(potato, consumableRole). affordsTask(potato, eatingDrinkingTask).
}).
#pos(e1570@100, {goesIn(potato, garden)}, {}, {
  obj(potato). hasRole(potato, consumableRole). affordsTask(potato, eatingDrinkingTask).
}).
#pos(e1571@100, {goesIn(potato, kitchen)}, {}, {
  obj(potato). hasRole(potato, consumableRole). affordsTask(potato, eatingDrinkingTask).
}).
#pos(e1572@100, {goesIn(potato, pantry)}, {}, {
  obj(potato). hasRole(potato, consumableRole). affordsTask(potato, eatingDrinkingTask).
}).
#pos(e1573@100, {goesIn(potato, sink)}, {}, {
  obj(potato). hasRole(potato, consumableRole). affordsTask(potato, eatingDrinkingTask).
}).
#pos(e1574@100, {goesIn(potato, storage_room)}, {}, {
  obj(potato). hasRole(potato, consumableRole). affordsTask(potato, eatingDrinkingTask).
}).
#pos(e1575@100, {goesIn(potatoes, kitchen)}, {}, {
  obj(potatoes). hasRole(potatoes, consumableRole). affordsTask(potatoes, foodPreparationTask).
}).
#pos(e1576@100, {goesIn(potatoes, storage_room)}, {}, {
  obj(potatoes). hasRole(potatoes, consumableRole). affordsTask(potatoes, foodPreparationTask).
}).
#pos(e1577@100, {goesIn(pots, cabinet)}, {}, {
  obj(pots). hasRole(pots, cookwareRole). affordsTask(pots, foodPreparationTask).
}).
#pos(e1578@100, {goesIn(pots, drawer)}, {}, {
  obj(pots). hasRole(pots, cookwareRole). affordsTask(pots, foodPreparationTask).
}).
#pos(e1579@100, {goesIn(pouch, closet)}, {}, {
  obj(pouch). hasRole(pouch, storageContainerRole). affordsTask(pouch, storageTask).
}).
#pos(e1580@100, {goesIn(power_screwdriver, garage)}, {}, {
  obj(power_screwdriver). hasRole(power_screwdriver, toolRole). affordsTask(power_screwdriver, maintenanceTask).
}).
#pos(e1581@100, {goesIn(present, closet)}, {}, {
  obj(present). hasRole(present, consumableRole). affordsTask(present, eatingDrinkingTask).
}).
#pos(e1582@100, {goesIn(present, garage)}, {}, {
  obj(present). hasRole(present, consumableRole). affordsTask(present, eatingDrinkingTask).
}).
#pos(e1583@100, {goesIn(present, storage_room)}, {}, {
  obj(present). hasRole(present, consumableRole). affordsTask(present, eatingDrinkingTask).
}).
#pos(e1584@100, {goesIn(printer, home_office)}, {}, {
  obj(printer). hasRole(printer, applianceRole). affordsTask(printer, workStudyTask).
}).
#pos(e1585@100, {goesIn(printer, library)}, {}, {
  obj(printer). hasRole(printer, applianceRole). affordsTask(printer, workStudyTask).
}).
#pos(e1586@100, {goesIn(printer, table)}, {}, {
  obj(printer). hasRole(printer, applianceRole). affordsTask(printer, workStudyTask).
}).
#pos(e1587@100, {goesIn(pump, garage)}, {}, {
  obj(pump). hasRole(pump, toolRole). affordsTask(pump, maintenanceTask).
}).
#pos(e1588@100, {goesIn(puppy, table)}, {}, {
  obj(puppy). affordsTask(puppy, leisureTask).
}).
#pos(e1589@100, {goesIn(purse, bedroom)}, {}, {
  obj(purse). hasRole(purse, storageContainerRole). affordsTask(purse, storageTask).
}).
#pos(e1590@100, {goesIn(puzzle, drawer)}, {}, {
  obj(puzzle). hasRole(puzzle, entertainmentRole). affordsTask(puzzle, leisureTask).
}).
#pos(e1591@100, {goesIn(puzzle, garden)}, {}, {
  obj(puzzle). hasRole(puzzle, entertainmentRole). affordsTask(puzzle, leisureTask).
}).
#pos(e1592@100, {goesIn(puzzle, library)}, {}, {
  obj(puzzle). hasRole(puzzle, entertainmentRole). affordsTask(puzzle, leisureTask).
}).
#pos(e1593@100, {goesIn(puzzle, table)}, {}, {
  obj(puzzle). hasRole(puzzle, entertainmentRole). affordsTask(puzzle, leisureTask).
}).
#pos(e1594@100, {goesIn(quill_brush, drawer)}, {}, {
  obj(quill_brush). hasRole(quill_brush, toolRole).
}).
#pos(e1595@100, {goesIn(quill_brush, table)}, {}, {
  obj(quill_brush). hasRole(quill_brush, toolRole).
}).
#pos(e1596@100, {goesIn(radiator, garage)}, {}, {
  obj(radiator). hasRole(radiator, applianceRole). affordsTask(radiator, maintenanceTask).
}).
#pos(e1597@100, {goesIn(radio, bedroom)}, {}, {
  obj(radio). hasRole(radio, applianceRole). affordsTask(radio, leisureTask).
}).
#pos(e1598@100, {goesIn(radio, garage)}, {}, {
  obj(radio). hasRole(radio, applianceRole). affordsTask(radio, leisureTask).
}).
#pos(e1599@100, {goesIn(radio, storage_room)}, {}, {
  obj(radio). hasRole(radio, applianceRole). affordsTask(radio, leisureTask).
}).
#pos(e1600@100, {goesIn(rafter, storage_room)}, {}, {
  obj(rafter). hasRole(rafter, furnitureRole). affordsTask(rafter, maintenanceTask).
}).
#pos(e1601@100, {goesIn(railing, bedroom)}, {}, {
  obj(railing). hasRole(railing, furnitureRole).
}).
#pos(e1602@100, {goesIn(railing, garden)}, {}, {
  obj(railing). hasRole(railing, furnitureRole).
}).
#pos(e1603@100, {goesIn(ratchet_screwdriver, closet)}, {}, {
  obj(ratchet_screwdriver). hasRole(ratchet_screwdriver, toolRole). affordsTask(ratchet_screwdriver, maintenanceTask).
}).
#pos(e1604@100, {goesIn(ratchet_screwdriver, garage)}, {}, {
  obj(ratchet_screwdriver). hasRole(ratchet_screwdriver, toolRole). affordsTask(ratchet_screwdriver, maintenanceTask).
}).
#pos(e1605@100, {goesIn(ratchet_screwdriver, storage_room)}, {}, {
  obj(ratchet_screwdriver). hasRole(ratchet_screwdriver, toolRole). affordsTask(ratchet_screwdriver, maintenanceTask).
}).
#pos(e1606@100, {goesIn(reading_glasses, drawer)}, {}, {
  obj(reading_glasses). hasRole(reading_glasses, toolRole). affordsTask(reading_glasses, workStudyTask).
}).
#pos(e1607@100, {goesIn(recipes, fridge)}, {}, {
  obj(recipes). hasRole(recipes, consumableRole). affordsTask(recipes, foodPreparationTask).
}).
#pos(e1608@100, {goesIn(recycling_bin, table)}, {}, {
  obj(recycling_bin). hasRole(recycling_bin, storageContainerRole). affordsTask(recycling_bin, wasteDisposalTask).
}).
#pos(e1609@100, {goesIn(refill, closet)}, {}, {
  obj(refill). hasRole(refill, consumableRole). affordsTask(refill, eatingDrinkingTask).
}).
#pos(e1610@100, {goesIn(refill, kitchen)}, {}, {
  obj(refill). hasRole(refill, consumableRole). affordsTask(refill, eatingDrinkingTask).
}).
#pos(e1611@100, {goesIn(refrigerator, bedroom)}, {}, {
  obj(refrigerator). hasRole(refrigerator, applianceRole). affordsTask(refrigerator, storageTask).
}).
#pos(e1612@100, {goesIn(refrigerator, garage)}, {}, {
  obj(refrigerator). hasRole(refrigerator, applianceRole). affordsTask(refrigerator, storageTask).
}).
#pos(e1613@100, {goesIn(refrigerator, kitchen)}, {}, {
  obj(refrigerator). hasRole(refrigerator, applianceRole). affordsTask(refrigerator, storageTask).
}).
#pos(e1614@100, {goesIn(refrigerator, pantry)}, {}, {
  obj(refrigerator). hasRole(refrigerator, applianceRole). affordsTask(refrigerator, storageTask).
}).
#pos(e1615@100, {goesIn(refrigerator_freezer, bedroom)}, {}, {
  obj(refrigerator_freezer). hasRole(refrigerator_freezer, applianceRole). affordsTask(refrigerator_freezer, foodPreparationTask). affordsTask(refrigerator_freezer, storageTask).
}).
#pos(e1616@100, {goesIn(refrigerator_freezer, closet)}, {}, {
  obj(refrigerator_freezer). hasRole(refrigerator_freezer, applianceRole). affordsTask(refrigerator_freezer, foodPreparationTask). affordsTask(refrigerator_freezer, storageTask).
}).
#pos(e1617@100, {goesIn(refrigerator_freezer, garage)}, {}, {
  obj(refrigerator_freezer). hasRole(refrigerator_freezer, applianceRole). affordsTask(refrigerator_freezer, foodPreparationTask). affordsTask(refrigerator_freezer, storageTask).
}).
#pos(e1618@100, {goesIn(refrigerator_freezer, storage_room)}, {}, {
  obj(refrigerator_freezer). hasRole(refrigerator_freezer, applianceRole). affordsTask(refrigerator_freezer, foodPreparationTask). affordsTask(refrigerator_freezer, storageTask).
}).
#pos(e1619@100, {goesIn(refuse, garage)}, {}, {
  obj(refuse). hasRole(refuse, wasteRole). affordsTask(refuse, wasteDisposalTask).
}).
#pos(e1620@100, {goesIn(refuse, kitchen)}, {}, {
  obj(refuse). hasRole(refuse, wasteRole). affordsTask(refuse, wasteDisposalTask).
}).
#pos(e1621@100, {goesIn(refuse, trash)}, {}, {
  obj(refuse). hasRole(refuse, wasteRole). affordsTask(refuse, wasteDisposalTask).
}).
#pos(e1622@100, {goesIn(remote_control, bedroom)}, {}, {
  obj(remote_control). hasRole(remote_control, toolRole). affordsTask(remote_control, leisureTask).
}).
#pos(e1623@100, {goesIn(remote_control, living_room)}, {}, {
  obj(remote_control). hasRole(remote_control, toolRole). affordsTask(remote_control, leisureTask).
}).
#pos(e1624@100, {goesIn(revolving_door, hallway)}, {}, {
  obj(revolving_door). hasRole(revolving_door, furnitureRole). affordsTask(revolving_door, leisureTask).
}).
#pos(e1625@100, {goesIn(ribbon, closet)}, {}, {
  obj(ribbon). hasRole(ribbon, clothingRole). affordsTask(ribbon, dressingTask).
}).
#pos(e1626@100, {goesIn(ribbon, garage)}, {}, {
  obj(ribbon). hasRole(ribbon, clothingRole). affordsTask(ribbon, dressingTask).
}).
#pos(e1627@100, {goesIn(ribbon, storage_room)}, {}, {
  obj(ribbon). hasRole(ribbon, clothingRole). affordsTask(ribbon, dressingTask).
}).
#pos(e1628@100, {goesIn(rice, fridge)}, {}, {
  obj(rice). hasRole(rice, consumableRole). affordsTask(rice, eatingDrinkingTask). affordsTask(rice, foodPreparationTask).
}).
#pos(e1629@100, {goesIn(rice, kitchen)}, {}, {
  obj(rice). hasRole(rice, consumableRole). affordsTask(rice, eatingDrinkingTask). affordsTask(rice, foodPreparationTask).
}).
#pos(e1630@100, {goesIn(rice, pantry)}, {}, {
  obj(rice). hasRole(rice, consumableRole). affordsTask(rice, eatingDrinkingTask). affordsTask(rice, foodPreparationTask).
}).
#pos(e1631@100, {goesIn(ring, closet)}, {}, {
  obj(ring). hasRole(ring, utensilRole). affordsTask(ring, eatingDrinkingTask).
}).
#pos(e1632@100, {goesIn(ring, garage)}, {}, {
  obj(ring). hasRole(ring, utensilRole). affordsTask(ring, eatingDrinkingTask).
}).
#pos(e1633@100, {goesIn(ring, storage_room)}, {}, {
  obj(ring). hasRole(ring, utensilRole). affordsTask(ring, eatingDrinkingTask).
}).
#pos(e1634@100, {goesIn(roadway, library)}, {}, {
  obj(roadway).
}).
#pos(e1635@100, {goesIn(robot, garage)}, {}, {
  obj(robot). hasRole(robot, applianceRole). affordsTask(robot, maintenanceTask). affordsTask(robot, workStudyTask).
}).
#pos(e1636@100, {goesIn(rock, bathroom)}, {}, {
  obj(rock). hasRole(rock, toolRole). affordsTask(rock, maintenanceTask).
}).
#pos(e1637@100, {goesIn(rock, bedroom)}, {}, {
  obj(rock). hasRole(rock, toolRole). affordsTask(rock, maintenanceTask).
}).
#pos(e1638@100, {goesIn(rock, closet)}, {}, {
  obj(rock). hasRole(rock, toolRole). affordsTask(rock, maintenanceTask).
}).
#pos(e1639@100, {goesIn(rock, garden)}, {}, {
  obj(rock). hasRole(rock, toolRole). affordsTask(rock, maintenanceTask).
}).
#pos(e1640@100, {goesIn(rock, hallway)}, {}, {
  obj(rock). hasRole(rock, toolRole). affordsTask(rock, maintenanceTask).
}).
#pos(e1641@100, {goesIn(rock, kitchen)}, {}, {
  obj(rock). hasRole(rock, toolRole). affordsTask(rock, maintenanceTask).
}).
#pos(e1642@100, {goesIn(rock, living_room)}, {}, {
  obj(rock). hasRole(rock, toolRole). affordsTask(rock, maintenanceTask).
}).
#pos(e1643@100, {goesIn(rocks, drawer)}, {}, {
  obj(rocks). hasRole(rocks, toolRole). affordsTask(rocks, maintenanceTask).
}).
#pos(e1644@100, {goesIn(rolodex, table)}, {}, {
  obj(rolodex). hasRole(rolodex, storageContainerRole). affordsTask(rolodex, workStudyTask).
}).
#pos(e1645@100, {goesIn(roof, garage)}, {}, {
  obj(roof). hasRole(roof, furnitureRole). affordsTask(roof, leisureTask).
}).
#pos(e1646@100, {goesIn(rook, living_room)}, {}, {
  obj(rook). hasRole(rook, toolRole). affordsTask(rook, leisureTask).
}).
#pos(e1647@100, {goesIn(rook, playroom)}, {}, {
  obj(rook). hasRole(rook, toolRole). affordsTask(rook, leisureTask).
}).
#pos(e1648@100, {goesIn(room_study, bedroom)}, {}, {
  obj(room_study). hasRole(room_study, furnitureRole). affordsTask(room_study, workStudyTask).
}).
#pos(e1649@100, {goesIn(room_study, library)}, {}, {
  obj(room_study). hasRole(room_study, furnitureRole). affordsTask(room_study, workStudyTask).
}).
#pos(e1650@100, {goesIn(room_study, storage_room)}, {}, {
  obj(room_study). hasRole(room_study, furnitureRole). affordsTask(room_study, workStudyTask).
}).
#pos(e1651@100, {goesIn(roots, bathroom)}, {}, {
  obj(roots). hasRole(roots, consumableRole). affordsTask(roots, eatingDrinkingTask).
}).
#pos(e1652@100, {goesIn(roots, closet)}, {}, {
  obj(roots). hasRole(roots, consumableRole). affordsTask(roots, eatingDrinkingTask).
}).
#pos(e1653@100, {goesIn(rope, garage)}, {}, {
  obj(rope). hasRole(rope, toolRole). affordsTask(rope, leisureTask). affordsTask(rope, maintenanceTask).
}).
#pos(e1654@100, {goesIn(rose, garden)}, {}, {
  obj(rose). hasRole(rose, consumableRole). affordsTask(rose, eatingDrinkingTask).
}).
#pos(e1655@100, {goesIn(rotten_food, trash)}, {}, {
  obj(rotten_food). hasRole(rotten_food, consumableRole). affordsTask(rotten_food, eatingDrinkingTask).
}).
#pos(e1656@100, {goesIn(round_brush, bathroom)}, {}, {
  obj(round_brush). hasRole(round_brush, cleaningToolRole). affordsTask(round_brush, cleaningTask).
}).
#pos(e1657@100, {goesIn(round_brush, library)}, {}, {
  obj(round_brush). hasRole(round_brush, cleaningToolRole). affordsTask(round_brush, cleaningTask).
}).
#pos(e1658@100, {goesIn(route, library)}, {}, {
  obj(route). hasRole(route, toolRole). affordsTask(route, leisureTask).
}).
#pos(e1659@100, {goesIn(row, garden)}, {}, {
  obj(row). hasRole(row, storageContainerRole). affordsTask(row, storageTask).
}).
#pos(e1660@100, {goesIn(row, table)}, {}, {
  obj(row). hasRole(row, storageContainerRole). affordsTask(row, storageTask).
}).
#pos(e1661@100, {goesIn(rubber, bedroom)}, {}, {
  obj(rubber). hasRole(rubber, toolRole). affordsTask(rubber, maintenanceTask).
}).
#pos(e1662@100, {goesIn(rubber, trash)}, {}, {
  obj(rubber). hasRole(rubber, toolRole). affordsTask(rubber, maintenanceTask).
}).
#pos(e1663@100, {goesIn(rubber_stamp, table)}, {}, {
  obj(rubber_stamp). hasRole(rubber_stamp, toolRole).
}).
#pos(e1664@100, {goesIn(rug, bed)}, {}, {
  obj(rug). hasRole(rug, furnitureRole). affordsTask(rug, leisureTask).
}).
#pos(e1665@100, {goesIn(rug, bedroom)}, {}, {
  obj(rug). hasRole(rug, furnitureRole). affordsTask(rug, leisureTask).
}).
#pos(e1666@100, {goesIn(rug, living_room)}, {}, {
  obj(rug). hasRole(rug, furnitureRole). affordsTask(rug, leisureTask).
}).
#pos(e1667@100, {goesIn(rug, table)}, {}, {
  obj(rug). hasRole(rug, furnitureRole). affordsTask(rug, leisureTask).
}).
#pos(e1668@100, {goesIn(ruler, drawer)}, {}, {
  obj(ruler). hasRole(ruler, toolRole). affordsTask(ruler, maintenanceTask).
}).
#pos(e1669@100, {goesIn(ruler, table)}, {}, {
  obj(ruler). hasRole(ruler, toolRole). affordsTask(ruler, maintenanceTask).
}).
#pos(e1670@100, {goesIn(safe, bedroom)}, {}, {
  obj(safe). hasRole(safe, safetyEquipmentRole). affordsTask(safe, maintenanceTask).
}).
#pos(e1671@100, {goesIn(safe, closet)}, {}, {
  obj(safe). hasRole(safe, safetyEquipmentRole). affordsTask(safe, maintenanceTask).
}).
#pos(e1672@100, {goesIn(safety_pins, storage_room)}, {}, {
  obj(safety_pins). hasRole(safety_pins, toolRole). affordsTask(safety_pins, maintenanceTask).
}).
#pos(e1673@100, {goesIn(salad, fridge)}, {}, {
  obj(salad). hasRole(salad, consumableRole). affordsTask(salad, eatingDrinkingTask).
}).
#pos(e1674@100, {goesIn(salad_bowl, cabinet)}, {}, {
  obj(salad_bowl). hasRole(salad_bowl, utensilRole). affordsTask(salad_bowl, eatingDrinkingTask). affordsTask(salad_bowl, foodPreparationTask).
}).
#pos(e1675@100, {goesIn(salad_bowl, dining_room)}, {}, {
  obj(salad_bowl). hasRole(salad_bowl, utensilRole). affordsTask(salad_bowl, eatingDrinkingTask). affordsTask(salad_bowl, foodPreparationTask).
}).
#pos(e1676@100, {goesIn(salad_bowl, kitchen)}, {}, {
  obj(salad_bowl). hasRole(salad_bowl, utensilRole). affordsTask(salad_bowl, eatingDrinkingTask). affordsTask(salad_bowl, foodPreparationTask).
}).
#pos(e1677@100, {goesIn(salad_spinner, cabinet)}, {}, {
  obj(salad_spinner). hasRole(salad_spinner, utensilRole). affordsTask(salad_spinner, foodPreparationTask).
}).
#pos(e1678@100, {goesIn(salt, bathroom)}, {}, {
  obj(salt). hasRole(salt, consumableRole). affordsTask(salt, foodPreparationTask).
}).
#pos(e1679@100, {goesIn(salt, cabinet)}, {}, {
  obj(salt). hasRole(salt, consumableRole). affordsTask(salt, foodPreparationTask).
}).
#pos(e1680@100, {goesIn(salt, closet)}, {}, {
  obj(salt). hasRole(salt, consumableRole). affordsTask(salt, foodPreparationTask).
}).
#pos(e1681@100, {goesIn(salt, kitchen)}, {}, {
  obj(salt). hasRole(salt, consumableRole). affordsTask(salt, foodPreparationTask).
}).
#pos(e1682@100, {goesIn(salt, pantry)}, {}, {
  obj(salt). hasRole(salt, consumableRole). affordsTask(salt, foodPreparationTask).
}).
#pos(e1683@100, {goesIn(salt, shelf)}, {}, {
  obj(salt). hasRole(salt, consumableRole). affordsTask(salt, foodPreparationTask).
}).
#pos(e1684@100, {goesIn(salt, table)}, {}, {
  obj(salt). hasRole(salt, consumableRole). affordsTask(salt, foodPreparationTask).
}).
#pos(e1685@100, {goesIn(salt_and_pepper, table)}, {}, {
  obj(salt_and_pepper). hasRole(salt_and_pepper, utensilRole). affordsTask(salt_and_pepper, foodPreparationTask).
}).
#pos(e1686@100, {goesIn(saltshaker, cabinet)}, {}, {
  obj(saltshaker). hasRole(saltshaker, utensilRole). affordsTask(saltshaker, foodPreparationTask).
}).
#pos(e1687@100, {goesIn(sauce, kitchen)}, {}, {
  obj(sauce). hasRole(sauce, consumableRole). affordsTask(sauce, foodPreparationTask).
}).
#pos(e1688@100, {goesIn(saucepan, cabinet)}, {}, {
  obj(saucepan). hasRole(saucepan, cookwareRole). affordsTask(saucepan, foodPreparationTask).
}).
#pos(e1689@100, {goesIn(saucepan, kitchen)}, {}, {
  obj(saucepan). hasRole(saucepan, cookwareRole). affordsTask(saucepan, foodPreparationTask).
}).
#pos(e1690@100, {goesIn(saucer, kitchen)}, {}, {
  obj(saucer). hasRole(saucer, utensilRole). affordsTask(saucer, eatingDrinkingTask).
}).
#pos(e1691@100, {goesIn(saw, closet)}, {}, {
  obj(saw). hasRole(saw, toolRole). affordsTask(saw, maintenanceTask).
}).
#pos(e1692@100, {goesIn(saw, garage)}, {}, {
  obj(saw). hasRole(saw, toolRole). affordsTask(saw, maintenanceTask).
}).
#pos(e1693@100, {goesIn(saw, storage_room)}, {}, {
  obj(saw). hasRole(saw, toolRole). affordsTask(saw, maintenanceTask).
}).
#pos(e1694@100, {goesIn(scale, bathroom)}, {}, {
  obj(scale). hasRole(scale, toolRole).
}).
#pos(e1695@100, {goesIn(scale, library)}, {}, {
  obj(scale). hasRole(scale, toolRole).
}).
#pos(e1696@100, {goesIn(school_book, garage)}, {}, {
  obj(school_book). hasRole(school_book, documentRole). affordsTask(school_book, workStudyTask).
}).
#pos(e1697@100, {goesIn(science_fiction_books, library)}, {}, {
  obj(science_fiction_books). hasRole(science_fiction_books, documentRole). affordsTask(science_fiction_books, leisureTask).
}).
#pos(e1698@100, {goesIn(scissors, bedroom)}, {}, {
  obj(scissors). hasRole(scissors, toolRole). affordsTask(scissors, foodPreparationTask).
}).
#pos(e1699@100, {goesIn(scissors, drawer)}, {}, {
  obj(scissors). hasRole(scissors, toolRole). affordsTask(scissors, foodPreparationTask).
}).
#pos(e1700@100, {goesIn(scissors, table)}, {}, {
  obj(scissors). hasRole(scissors, toolRole). affordsTask(scissors, foodPreparationTask).
}).
#pos(e1701@100, {goesIn(scotch_tape, table)}, {}, {
  obj(scotch_tape). hasRole(scotch_tape, toolRole). affordsTask(scotch_tape, maintenanceTask).
}).
#pos(e1702@100, {goesIn(screw, garage)}, {}, {
  obj(screw). hasRole(screw, toolRole). affordsTask(screw, maintenanceTask).
}).
#pos(e1703@100, {goesIn(screw, library)}, {}, {
  obj(screw). hasRole(screw, toolRole). affordsTask(screw, maintenanceTask).
}).
#pos(e1704@100, {goesIn(screwdriver, drawer)}, {}, {
  obj(screwdriver). hasRole(screwdriver, toolRole). affordsTask(screwdriver, maintenanceTask).
}).
#pos(e1705@100, {goesIn(screwdriver, garage)}, {}, {
  obj(screwdriver). hasRole(screwdriver, toolRole). affordsTask(screwdriver, maintenanceTask).
}).
#pos(e1706@100, {goesIn(screws, closet)}, {}, {
  obj(screws). hasRole(screws, toolRole). affordsTask(screws, maintenanceTask).
}).
#pos(e1707@100, {goesIn(screws, garage)}, {}, {
  obj(screws). hasRole(screws, toolRole). affordsTask(screws, maintenanceTask).
}).
#pos(e1708@100, {goesIn(screws, kitchen)}, {}, {
  obj(screws). hasRole(screws, toolRole). affordsTask(screws, maintenanceTask).
}).
#pos(e1709@100, {goesIn(screws, pantry)}, {}, {
  obj(screws). hasRole(screws, toolRole). affordsTask(screws, maintenanceTask).
}).
#pos(e1710@100, {goesIn(sculpting_gel, bathroom)}, {}, {
  obj(sculpting_gel). hasRole(sculpting_gel, cleaningToolRole). affordsTask(sculpting_gel, hygieneTask).
}).
#pos(e1711@100, {goesIn(sculpting_gel, library)}, {}, {
  obj(sculpting_gel). hasRole(sculpting_gel, cleaningToolRole). affordsTask(sculpting_gel, hygieneTask).
}).
#pos(e1712@100, {goesIn(seat, garage)}, {}, {
  obj(seat). hasRole(seat, furnitureRole). affordsTask(seat, leisureTask). affordsTask(seat, sleepingTask).
}).
#pos(e1713@100, {goesIn(seat, garden)}, {}, {
  obj(seat). hasRole(seat, furnitureRole). affordsTask(seat, leisureTask). affordsTask(seat, sleepingTask).
}).
#pos(e1714@100, {goesIn(second_floor, bedroom)}, {}, {
  obj(second_floor). hasRole(second_floor, furnitureRole).
}).
#pos(e1715@100, {goesIn(second_floor, storage_room)}, {}, {
  obj(second_floor). hasRole(second_floor, furnitureRole).
}).
#pos(e1716@100, {goesIn(seeds, pantry)}, {}, {
  obj(seeds). hasRole(seeds, consumableRole). affordsTask(seeds, gardeningTask).
}).
#pos(e1717@100, {goesIn(self_adhesive_label, table)}, {}, {
  obj(self_adhesive_label). hasRole(self_adhesive_label, utensilRole). affordsTask(self_adhesive_label, maintenanceTask).
}).
#pos(e1718@100, {goesIn(separate_shower, bathroom)}, {}, {
  obj(separate_shower). hasRole(separate_shower, furnitureRole). affordsTask(separate_shower, hygieneTask).
}).
#pos(e1719@100, {goesIn(separate_shower, library)}, {}, {
  obj(separate_shower). hasRole(separate_shower, furnitureRole). affordsTask(separate_shower, hygieneTask).
}).
#pos(e1720@100, {goesIn(serving_trolley, dining_room)}, {}, {
  obj(serving_trolley). hasRole(serving_trolley, furnitureRole). hasRole(serving_trolley, storageContainerRole). affordsTask(serving_trolley, eatingDrinkingTask). affordsTask(serving_trolley, foodPreparationTask). affordsTask(serving_trolley, storageTask).
}).
#pos(e1721@100, {goesIn(serving_trolley, kitchen)}, {}, {
  obj(serving_trolley). hasRole(serving_trolley, furnitureRole). hasRole(serving_trolley, storageContainerRole). affordsTask(serving_trolley, eatingDrinkingTask). affordsTask(serving_trolley, foodPreparationTask). affordsTask(serving_trolley, storageTask).
}).
#pos(e1722@100, {goesIn(shades, bedroom)}, {}, {
  obj(shades). hasRole(shades, furnitureRole). affordsTask(shades, leisureTask).
}).
#pos(e1723@100, {goesIn(shades, garage)}, {}, {
  obj(shades). hasRole(shades, furnitureRole). affordsTask(shades, leisureTask).
}).
#pos(e1724@100, {goesIn(shades, storage_room)}, {}, {
  obj(shades). hasRole(shades, furnitureRole). affordsTask(shades, leisureTask).
}).
#pos(e1725@100, {goesIn(shampoo, bedroom)}, {}, {
  obj(shampoo). hasRole(shampoo, cleaningToolRole). affordsTask(shampoo, hygieneTask).
}).
#pos(e1726@100, {goesIn(shampoo_and_conditioner, bathroom)}, {}, {
  obj(shampoo_and_conditioner). hasRole(shampoo_and_conditioner, cleaningToolRole). affordsTask(shampoo_and_conditioner, hygieneTask).
}).
#pos(e1727@100, {goesIn(shampoo_and_conditioner, library)}, {}, {
  obj(shampoo_and_conditioner). hasRole(shampoo_and_conditioner, cleaningToolRole). affordsTask(shampoo_and_conditioner, hygieneTask).
}).
#pos(e1728@100, {goesIn(sheet, bedroom)}, {}, {
  obj(sheet). hasRole(sheet, beddingRole). affordsTask(sheet, sleepingTask).
}).
#pos(e1729@100, {goesIn(sheet, hallway)}, {}, {
  obj(sheet). hasRole(sheet, beddingRole). affordsTask(sheet, sleepingTask).
}).
#pos(e1730@100, {goesIn(sheet_of_paper, closet)}, {}, {
  obj(sheet_of_paper). hasRole(sheet_of_paper, documentRole).
}).
#pos(e1731@100, {goesIn(sheet_of_paper, garage)}, {}, {
  obj(sheet_of_paper). hasRole(sheet_of_paper, documentRole).
}).
#pos(e1732@100, {goesIn(sheet_of_paper, home_office)}, {}, {
  obj(sheet_of_paper). hasRole(sheet_of_paper, documentRole).
}).
#pos(e1733@100, {goesIn(sheet_of_paper, storage_room)}, {}, {
  obj(sheet_of_paper). hasRole(sheet_of_paper, documentRole).
}).
#pos(e1734@100, {goesIn(sheets, bedroom)}, {}, {
  obj(sheets). hasRole(sheets, beddingRole). affordsTask(sheets, sleepingTask).
}).
#pos(e1735@100, {goesIn(sheets, drawer)}, {}, {
  obj(sheets). hasRole(sheets, beddingRole). affordsTask(sheets, sleepingTask).
}).
#pos(e1736@100, {goesIn(shelf, bathroom)}, {}, {
  obj(shelf). hasRole(shelf, storageContainerRole). affordsTask(shelf, storageTask).
}).
#pos(e1737@100, {goesIn(shelf, bedroom)}, {}, {
  obj(shelf). hasRole(shelf, storageContainerRole). affordsTask(shelf, storageTask).
}).
#pos(e1738@100, {goesIn(shelf, cabinet)}, {}, {
  obj(shelf). hasRole(shelf, storageContainerRole). affordsTask(shelf, storageTask).
}).
#pos(e1739@100, {goesIn(shelf, closet)}, {}, {
  obj(shelf). hasRole(shelf, storageContainerRole). affordsTask(shelf, storageTask).
}).
#pos(e1740@100, {goesIn(shelf, fridge)}, {}, {
  obj(shelf). hasRole(shelf, storageContainerRole). affordsTask(shelf, storageTask).
}).
#pos(e1741@100, {goesIn(shelf, garage)}, {}, {
  obj(shelf). hasRole(shelf, storageContainerRole). affordsTask(shelf, storageTask).
}).
#pos(e1742@100, {goesIn(shelf, library)}, {}, {
  obj(shelf). hasRole(shelf, storageContainerRole). affordsTask(shelf, storageTask).
}).
#pos(e1743@100, {goesIn(shellac, kitchen)}, {}, {
  obj(shellac). hasRole(shellac, toolRole). affordsTask(shellac, maintenanceTask).
}).
#pos(e1744@100, {goesIn(shellac, pantry)}, {}, {
  obj(shellac). hasRole(shellac, toolRole). affordsTask(shellac, maintenanceTask).
}).
#pos(e1745@100, {goesIn(shelter, bedroom)}, {}, {
  obj(shelter). hasRole(shelter, furnitureRole). affordsTask(shelter, storageTask).
}).
#pos(e1746@100, {goesIn(shirt, bedroom)}, {}, {
  obj(shirt). hasRole(shirt, clothingRole). affordsTask(shirt, dressingTask).
}).
#pos(e1747@100, {goesIn(shirt, closet)}, {}, {
  obj(shirt). hasRole(shirt, clothingRole). affordsTask(shirt, dressingTask).
}).
#pos(e1748@100, {goesIn(shirt, drawer)}, {}, {
  obj(shirt). hasRole(shirt, clothingRole). affordsTask(shirt, dressingTask).
}).
#pos(e1749@100, {goesIn(shirts, bedroom)}, {}, {
  obj(shirts). hasRole(shirts, clothingRole). affordsTask(shirts, dressingTask).
}).
#pos(e1750@100, {goesIn(shirts, closet)}, {}, {
  obj(shirts). hasRole(shirts, clothingRole). affordsTask(shirts, dressingTask).
}).
#pos(e1751@100, {goesIn(shoe, bedroom)}, {}, {
  obj(shoe). hasRole(shoe, clothingRole). affordsTask(shoe, dressingTask).
}).
#pos(e1752@100, {goesIn(shoe, closet)}, {}, {
  obj(shoe). hasRole(shoe, clothingRole). affordsTask(shoe, dressingTask).
}).
#pos(e1753@100, {goesIn(shoes, bed)}, {}, {
  obj(shoes). hasRole(shoes, clothingRole). affordsTask(shoes, dressingTask).
}).
#pos(e1754@100, {goesIn(shoes, bedroom)}, {}, {
  obj(shoes). hasRole(shoes, clothingRole). affordsTask(shoes, dressingTask).
}).
#pos(e1755@100, {goesIn(shoes, closet)}, {}, {
  obj(shoes). hasRole(shoes, clothingRole). affordsTask(shoes, dressingTask).
}).
#pos(e1756@100, {goesIn(shoes, garage)}, {}, {
  obj(shoes). hasRole(shoes, clothingRole). affordsTask(shoes, dressingTask).
}).
#pos(e1757@100, {goesIn(shoes, library)}, {}, {
  obj(shoes). hasRole(shoes, clothingRole). affordsTask(shoes, dressingTask).
}).
#pos(e1758@100, {goesIn(shoes, living_room)}, {}, {
  obj(shoes). hasRole(shoes, clothingRole). affordsTask(shoes, dressingTask).
}).
#pos(e1759@100, {goesIn(shoes, storage_room)}, {}, {
  obj(shoes). hasRole(shoes, clothingRole). affordsTask(shoes, dressingTask).
}).
#pos(e1760@100, {goesIn(shoes, table)}, {}, {
  obj(shoes). hasRole(shoes, clothingRole). affordsTask(shoes, dressingTask).
}).
#pos(e1761@100, {goesIn(shopping_bag, bedroom)}, {}, {
  obj(shopping_bag). hasRole(shopping_bag, storageContainerRole). affordsTask(shopping_bag, storageTask).
}).
#pos(e1762@100, {goesIn(shopping_bag, closet)}, {}, {
  obj(shopping_bag). hasRole(shopping_bag, storageContainerRole). affordsTask(shopping_bag, storageTask).
}).
#pos(e1763@100, {goesIn(shopping_bag, storage_room)}, {}, {
  obj(shopping_bag). hasRole(shopping_bag, storageContainerRole). affordsTask(shopping_bag, storageTask).
}).
#pos(e1764@100, {goesIn(shopping_basket, storage_room)}, {}, {
  obj(shopping_basket). hasRole(shopping_basket, storageContainerRole).
}).
#pos(e1765@100, {goesIn(shopping_list, fridge)}, {}, {
  obj(shopping_list). hasRole(shopping_list, storageContainerRole).
}).
#pos(e1766@100, {goesIn(shower, bedroom)}, {}, {
  obj(shower). hasRole(shower, applianceRole). affordsTask(shower, cleaningTask). affordsTask(shower, hygieneTask).
}).
#pos(e1767@100, {goesIn(shower_door, bathroom)}, {}, {
  obj(shower_door). hasRole(shower_door, furnitureRole). affordsTask(shower_door, leisureTask).
}).
#pos(e1768@100, {goesIn(shower_door, library)}, {}, {
  obj(shower_door). hasRole(shower_door, furnitureRole). affordsTask(shower_door, leisureTask).
}).
#pos(e1769@100, {goesIn(shower_switch, bathroom)}, {}, {
  obj(shower_switch). hasRole(shower_switch, toolRole). affordsTask(shower_switch, maintenanceTask).
}).
#pos(e1770@100, {goesIn(shower_switch, library)}, {}, {
  obj(shower_switch). hasRole(shower_switch, toolRole). affordsTask(shower_switch, maintenanceTask).
}).
#pos(e1771@100, {goesIn(shrimp, kitchen)}, {}, {
  obj(shrimp). hasRole(shrimp, consumableRole). affordsTask(shrimp, eatingDrinkingTask).
}).
#pos(e1772@100, {goesIn(side_chair, bedroom)}, {}, {
  obj(side_chair). hasRole(side_chair, furnitureRole). affordsTask(side_chair, leisureTask).
}).
#pos(e1773@100, {goesIn(side_chair, library)}, {}, {
  obj(side_chair). hasRole(side_chair, furnitureRole). affordsTask(side_chair, leisureTask).
}).
#pos(e1774@100, {goesIn(side_chair, table)}, {}, {
  obj(side_chair). hasRole(side_chair, furnitureRole). affordsTask(side_chair, leisureTask).
}).
#pos(e1775@100, {goesIn(sideboard, dining_room)}, {}, {
  obj(sideboard). hasRole(sideboard, furnitureRole). affordsTask(sideboard, storageTask).
}).
#pos(e1776@100, {goesIn(sideboard, kitchen)}, {}, {
  obj(sideboard). hasRole(sideboard, furnitureRole). affordsTask(sideboard, storageTask).
}).
#pos(e1777@100, {goesIn(silk, closet)}, {}, {
  obj(silk). hasRole(silk, clothingRole). affordsTask(silk, dressingTask).
}).
#pos(e1778@100, {goesIn(silver, bedroom)}, {}, {
  obj(silver). hasRole(silver, toolRole).
}).
#pos(e1779@100, {goesIn(silverware, cabinet)}, {}, {
  obj(silverware). hasRole(silverware, utensilRole). affordsTask(silverware, eatingDrinkingTask).
}).
#pos(e1780@100, {goesIn(silverware, kitchen)}, {}, {
  obj(silverware). hasRole(silverware, utensilRole). affordsTask(silverware, eatingDrinkingTask).
}).
#pos(e1781@100, {goesIn(silverware, table)}, {}, {
  obj(silverware). hasRole(silverware, utensilRole). affordsTask(silverware, eatingDrinkingTask).
}).
#pos(e1782@100, {goesIn(sink, bedroom)}, {}, {
  obj(sink). hasRole(sink, utensilRole). affordsTask(sink, cleaningTask). affordsTask(sink, eatingDrinkingTask). affordsTask(sink, hygieneTask).
}).
#pos(e1783@100, {goesIn(sink, kitchen)}, {}, {
  obj(sink). hasRole(sink, utensilRole). affordsTask(sink, cleaningTask). affordsTask(sink, eatingDrinkingTask). affordsTask(sink, hygieneTask).
}).
#pos(e1784@100, {goesIn(sink, laundry_room)}, {}, {
  obj(sink). hasRole(sink, utensilRole). affordsTask(sink, cleaningTask). affordsTask(sink, eatingDrinkingTask). affordsTask(sink, hygieneTask).
}).
#pos(e1785@100, {goesIn(sink, storage_room)}, {}, {
  obj(sink). hasRole(sink, utensilRole). affordsTask(sink, cleaningTask). affordsTask(sink, eatingDrinkingTask). affordsTask(sink, hygieneTask).
}).
#pos(e1786@100, {goesIn(skin_care_article, bathroom)}, {}, {
  obj(skin_care_article). hasRole(skin_care_article, documentRole). affordsTask(skin_care_article, leisureTask).
}).
#pos(e1787@100, {goesIn(skin_care_article, library)}, {}, {
  obj(skin_care_article). hasRole(skin_care_article, documentRole). affordsTask(skin_care_article, leisureTask).
}).
#pos(e1788@100, {goesIn(skirt, bedroom)}, {}, {
  obj(skirt). hasRole(skirt, clothingRole). affordsTask(skirt, dressingTask).
}).
#pos(e1789@100, {goesIn(skirt, closet)}, {}, {
  obj(skirt). hasRole(skirt, clothingRole). affordsTask(skirt, dressingTask).
}).
#pos(e1790@100, {goesIn(skirts, storage_room)}, {}, {
  obj(skirts). hasRole(skirts, clothingRole). affordsTask(skirts, dressingTask).
}).
#pos(e1791@100, {goesIn(skylight, bedroom)}, {}, {
  obj(skylight). hasRole(skylight, furnitureRole). affordsTask(skylight, leisureTask).
}).
#pos(e1792@100, {goesIn(skylight, garage)}, {}, {
  obj(skylight). hasRole(skylight, furnitureRole). affordsTask(skylight, leisureTask).
}).
#pos(e1793@100, {goesIn(slipper, bed)}, {}, {
  obj(slipper). hasRole(slipper, clothingRole). affordsTask(slipper, dressingTask).
}).
#pos(e1794@100, {goesIn(slippers, bed)}, {}, {
  obj(slippers). hasRole(slippers, clothingRole). affordsTask(slippers, dressingTask).
}).
#pos(e1795@100, {goesIn(slippers, bedroom)}, {}, {
  obj(slippers). hasRole(slippers, clothingRole). affordsTask(slippers, dressingTask).
}).
#pos(e1796@100, {goesIn(smoothie, fridge)}, {}, {
  obj(smoothie). hasRole(smoothie, consumableRole). affordsTask(smoothie, eatingDrinkingTask).
}).
#pos(e1797@100, {goesIn(soap, sink)}, {}, {
  obj(soap). hasRole(soap, cleaningToolRole). affordsTask(soap, hygieneTask).
}).
#pos(e1798@100, {goesIn(soap_dish, sink)}, {}, {
  obj(soap_dish). hasRole(soap_dish, storageContainerRole). affordsTask(soap_dish, hygieneTask).
}).
#pos(e1799@100, {goesIn(sock, bedroom)}, {}, {
  obj(sock). hasRole(sock, clothingRole). affordsTask(sock, dressingTask).
}).
#pos(e1800@100, {goesIn(sock, drawer)}, {}, {
  obj(sock). hasRole(sock, clothingRole). affordsTask(sock, dressingTask).
}).
#pos(e1801@100, {goesIn(socks, bed)}, {}, {
  obj(socks). hasRole(socks, clothingRole). affordsTask(socks, dressingTask).
}).
#pos(e1802@100, {goesIn(socks, bedroom)}, {}, {
  obj(socks). hasRole(socks, clothingRole). affordsTask(socks, dressingTask).
}).
#pos(e1803@100, {goesIn(socks, closet)}, {}, {
  obj(socks). hasRole(socks, clothingRole). affordsTask(socks, dressingTask).
}).
#pos(e1804@100, {goesIn(socks, drawer)}, {}, {
  obj(socks). hasRole(socks, clothingRole). affordsTask(socks, dressingTask).
}).
#pos(e1805@100, {goesIn(socks, home_office)}, {}, {
  obj(socks). hasRole(socks, clothingRole). affordsTask(socks, dressingTask).
}).
#pos(e1806@100, {goesIn(soda, kitchen)}, {}, {
  obj(soda). hasRole(soda, consumableRole). affordsTask(soda, eatingDrinkingTask).
}).
#pos(e1807@100, {goesIn(soda, pantry)}, {}, {
  obj(soda). hasRole(soda, consumableRole). affordsTask(soda, eatingDrinkingTask).
}).
#pos(e1808@100, {goesIn(soda_pop, kitchen)}, {}, {
  obj(soda_pop). hasRole(soda_pop, consumableRole). affordsTask(soda_pop, eatingDrinkingTask).
}).
#pos(e1809@100, {goesIn(soda_pop, pantry)}, {}, {
  obj(soda_pop). hasRole(soda_pop, consumableRole). affordsTask(soda_pop, eatingDrinkingTask).
}).
#pos(e1810@100, {goesIn(sofa, bedroom)}, {}, {
  obj(sofa). hasRole(sofa, furnitureRole). affordsTask(sofa, leisureTask). affordsTask(sofa, sleepingTask).
}).
#pos(e1811@100, {goesIn(sofa, living_room)}, {}, {
  obj(sofa). hasRole(sofa, furnitureRole). affordsTask(sofa, leisureTask). affordsTask(sofa, sleepingTask).
}).
#pos(e1812@100, {goesIn(sofa_bed, closet)}, {}, {
  obj(sofa_bed). hasRole(sofa_bed, furnitureRole). affordsTask(sofa_bed, sleepingTask).
}).
#pos(e1813@100, {goesIn(sofa_bed, living_room)}, {}, {
  obj(sofa_bed). hasRole(sofa_bed, furnitureRole). affordsTask(sofa_bed, sleepingTask).
}).
#pos(e1814@100, {goesIn(sofa_bed, storage_room)}, {}, {
  obj(sofa_bed). hasRole(sofa_bed, furnitureRole). affordsTask(sofa_bed, sleepingTask).
}).
#pos(e1815@100, {goesIn(sofa_hide_bed, living_room)}, {}, {
  obj(sofa_hide_bed). hasRole(sofa_hide_bed, furnitureRole). affordsTask(sofa_hide_bed, sleepingTask).
}).
#pos(e1816@100, {goesIn(sofabed, bedroom)}, {}, {
  obj(sofabed). hasRole(sofabed, furnitureRole). affordsTask(sofabed, sleepingTask).
}).
#pos(e1817@100, {goesIn(sofabed, living_room)}, {}, {
  obj(sofabed). hasRole(sofabed, furnitureRole). affordsTask(sofabed, sleepingTask).
}).
#pos(e1818@100, {goesIn(spaghetti_sauce, fridge)}, {}, {
  obj(spaghetti_sauce). hasRole(spaghetti_sauce, consumableRole). affordsTask(spaghetti_sauce, foodPreparationTask).
}).
#pos(e1819@100, {goesIn(spaghetti_sauce, pantry)}, {}, {
  obj(spaghetti_sauce). hasRole(spaghetti_sauce, consumableRole). affordsTask(spaghetti_sauce, foodPreparationTask).
}).
#pos(e1820@100, {goesIn(spare_tire, bedroom)}, {}, {
  obj(spare_tire). hasRole(spare_tire, toolRole). affordsTask(spare_tire, maintenanceTask).
}).
#pos(e1821@100, {goesIn(spare_tire, garage)}, {}, {
  obj(spare_tire). hasRole(spare_tire, toolRole). affordsTask(spare_tire, maintenanceTask).
}).
#pos(e1822@100, {goesIn(spare_tire, storage_room)}, {}, {
  obj(spare_tire). hasRole(spare_tire, toolRole). affordsTask(spare_tire, maintenanceTask).
}).
#pos(e1823@100, {goesIn(spatula, drawer)}, {}, {
  obj(spatula). hasRole(spatula, utensilRole). affordsTask(spatula, foodPreparationTask).
}).
#pos(e1824@100, {goesIn(spatula, kitchen)}, {}, {
  obj(spatula). hasRole(spatula, utensilRole). affordsTask(spatula, foodPreparationTask).
}).
#pos(e1825@100, {goesIn(speaker, shelf)}, {}, {
  obj(speaker). hasRole(speaker, applianceRole). affordsTask(speaker, leisureTask).
}).
#pos(e1826@100, {goesIn(speaker, table)}, {}, {
  obj(speaker). hasRole(speaker, applianceRole). affordsTask(speaker, leisureTask).
}).
#pos(e1827@100, {goesIn(spices, cabinet)}, {}, {
  obj(spices). hasRole(spices, consumableRole). affordsTask(spices, foodPreparationTask).
}).
#pos(e1828@100, {goesIn(spices, kitchen)}, {}, {
  obj(spices). hasRole(spices, consumableRole). affordsTask(spices, foodPreparationTask).
}).
#pos(e1829@100, {goesIn(spices, pantry)}, {}, {
  obj(spices). hasRole(spices, consumableRole). affordsTask(spices, foodPreparationTask).
}).
#pos(e1830@100, {goesIn(spices, shelf)}, {}, {
  obj(spices). hasRole(spices, consumableRole). affordsTask(spices, foodPreparationTask).
}).
#pos(e1831@100, {goesIn(spiral_binding, bedroom)}, {}, {
  obj(spiral_binding). hasRole(spiral_binding, toolRole). affordsTask(spiral_binding, maintenanceTask).
}).
#pos(e1832@100, {goesIn(spiral_binding, closet)}, {}, {
  obj(spiral_binding). hasRole(spiral_binding, toolRole). affordsTask(spiral_binding, maintenanceTask).
}).
#pos(e1833@100, {goesIn(spiral_binding, library)}, {}, {
  obj(spiral_binding). hasRole(spiral_binding, toolRole). affordsTask(spiral_binding, maintenanceTask).
}).
#pos(e1834@100, {goesIn(spoon, bed)}, {}, {
  obj(spoon). hasRole(spoon, utensilRole). affordsTask(spoon, eatingDrinkingTask). affordsTask(spoon, foodPreparationTask).
}).
#pos(e1835@100, {goesIn(spoon, kitchen)}, {}, {
  obj(spoon). hasRole(spoon, utensilRole). affordsTask(spoon, eatingDrinkingTask). affordsTask(spoon, foodPreparationTask).
}).
#pos(e1836@100, {goesIn(spoon, table)}, {}, {
  obj(spoon). hasRole(spoon, utensilRole). affordsTask(spoon, eatingDrinkingTask). affordsTask(spoon, foodPreparationTask).
}).
#pos(e1837@100, {goesIn(spray_hose, garage)}, {}, {
  obj(spray_hose). hasRole(spray_hose, toolRole). affordsTask(spray_hose, cleaningTask). affordsTask(spray_hose, gardeningTask).
}).
#pos(e1838@100, {goesIn(spray_hose, garden)}, {}, {
  obj(spray_hose). hasRole(spray_hose, toolRole). affordsTask(spray_hose, cleaningTask). affordsTask(spray_hose, gardeningTask).
}).
#pos(e1839@100, {goesIn(stacking_chairs, bedroom)}, {}, {
  obj(stacking_chairs). hasRole(stacking_chairs, furnitureRole). affordsTask(stacking_chairs, storageTask).
}).
#pos(e1840@100, {goesIn(stacking_chairs, closet)}, {}, {
  obj(stacking_chairs). hasRole(stacking_chairs, furnitureRole). affordsTask(stacking_chairs, storageTask).
}).
#pos(e1841@100, {goesIn(staircase, bedroom)}, {}, {
  obj(staircase). hasRole(staircase, furnitureRole). affordsTask(staircase, leisureTask). affordsTask(staircase, maintenanceTask).
}).
#pos(e1842@100, {goesIn(staircase, storage_room)}, {}, {
  obj(staircase). hasRole(staircase, furnitureRole). affordsTask(staircase, leisureTask). affordsTask(staircase, maintenanceTask).
}).
#pos(e1843@100, {goesIn(stairs, bedroom)}, {}, {
  obj(stairs). hasRole(stairs, furnitureRole).
}).
#pos(e1844@100, {goesIn(stairs, garage)}, {}, {
  obj(stairs). hasRole(stairs, furnitureRole).
}).
#pos(e1845@100, {goesIn(stairs, storage_room)}, {}, {
  obj(stairs). hasRole(stairs, furnitureRole).
}).
#pos(e1846@100, {goesIn(stairs_down, bedroom)}, {}, {
  obj(stairs_down). hasRole(stairs_down, furnitureRole).
}).
#pos(e1847@100, {goesIn(stairs_down, closet)}, {}, {
  obj(stairs_down). hasRole(stairs_down, furnitureRole).
}).
#pos(e1848@100, {goesIn(stairs_down, storage_room)}, {}, {
  obj(stairs_down). hasRole(stairs_down, furnitureRole).
}).
#pos(e1849@100, {goesIn(stairs_railing, bedroom)}, {}, {
  obj(stairs_railing). hasRole(stairs_railing, furnitureRole). affordsTask(stairs_railing, maintenanceTask).
}).
#pos(e1850@100, {goesIn(stairway, bedroom)}, {}, {
  obj(stairway). hasRole(stairway, furnitureRole).
}).
#pos(e1851@100, {goesIn(stairwell, bedroom)}, {}, {
  obj(stairwell). hasRole(stairwell, furnitureRole). affordsTask(stairwell, leisureTask). affordsTask(stairwell, maintenanceTask).
}).
#pos(e1852@100, {goesIn(stairwell, storage_room)}, {}, {
  obj(stairwell). hasRole(stairwell, furnitureRole). affordsTask(stairwell, leisureTask). affordsTask(stairwell, maintenanceTask).
}).
#pos(e1853@100, {goesIn(stamp_pad, table)}, {}, {
  obj(stamp_pad). hasRole(stamp_pad, toolRole). affordsTask(stamp_pad, foodPreparationTask).
}).
#pos(e1854@100, {goesIn(stamps, drawer)}, {}, {
  obj(stamps). hasRole(stamps, consumableRole). affordsTask(stamps, eatingDrinkingTask).
}).
#pos(e1855@100, {goesIn(stamps, table)}, {}, {
  obj(stamps). hasRole(stamps, consumableRole). affordsTask(stamps, eatingDrinkingTask).
}).
#pos(e1856@100, {goesIn(staple_remover, table)}, {}, {
  obj(staple_remover). hasRole(staple_remover, toolRole). affordsTask(staple_remover, maintenanceTask).
}).
#pos(e1857@100, {goesIn(stapler, table)}, {}, {
  obj(stapler). hasRole(stapler, toolRole). affordsTask(stapler, maintenanceTask).
}).
#pos(e1858@100, {goesIn(staples, closet)}, {}, {
  obj(staples). hasRole(staples, toolRole). affordsTask(staples, foodPreparationTask).
}).
#pos(e1859@100, {goesIn(staples, garage)}, {}, {
  obj(staples). hasRole(staples, toolRole). affordsTask(staples, foodPreparationTask).
}).
#pos(e1860@100, {goesIn(staples, kitchen)}, {}, {
  obj(staples). hasRole(staples, toolRole). affordsTask(staples, foodPreparationTask).
}).
#pos(e1861@100, {goesIn(staples, pantry)}, {}, {
  obj(staples). hasRole(staples, toolRole). affordsTask(staples, foodPreparationTask).
}).
#pos(e1862@100, {goesIn(staples, storage_room)}, {}, {
  obj(staples). hasRole(staples, toolRole). affordsTask(staples, foodPreparationTask).
}).
#pos(e1863@100, {goesIn(staples, table)}, {}, {
  obj(staples). hasRole(staples, toolRole). affordsTask(staples, foodPreparationTask).
}).
#pos(e1864@100, {goesIn(statue, library)}, {}, {
  obj(statue). hasRole(statue, decorationRole).
}).
#pos(e1865@100, {goesIn(steak, fridge)}, {}, {
  obj(steak). hasRole(steak, consumableRole). hasRole(steak, utensilRole). affordsTask(steak, eatingDrinkingTask). affordsTask(steak, foodPreparationTask).
}).
#pos(e1866@100, {goesIn(steak, kitchen)}, {}, {
  obj(steak). hasRole(steak, consumableRole). hasRole(steak, utensilRole). affordsTask(steak, eatingDrinkingTask). affordsTask(steak, foodPreparationTask).
}).
#pos(e1867@100, {goesIn(steaks, fridge)}, {}, {
  obj(steaks). hasRole(steaks, consumableRole). affordsTask(steaks, eatingDrinkingTask). affordsTask(steaks, foodPreparationTask).
}).
#pos(e1868@100, {goesIn(steel, garage)}, {}, {
  obj(steel). hasRole(steel, toolRole). affordsTask(steel, maintenanceTask).
}).
#pos(e1869@100, {goesIn(steel_pen, table)}, {}, {
  obj(steel_pen). hasRole(steel_pen, toolRole).
}).
#pos(e1870@100, {goesIn(step_chair, bedroom)}, {}, {
  obj(step_chair). hasRole(step_chair, furnitureRole). affordsTask(step_chair, eatingDrinkingTask). affordsTask(step_chair, storageTask).
}).
#pos(e1871@100, {goesIn(step_chair, closet)}, {}, {
  obj(step_chair). hasRole(step_chair, furnitureRole). affordsTask(step_chair, eatingDrinkingTask). affordsTask(step_chair, storageTask).
}).
#pos(e1872@100, {goesIn(step_chair, garage)}, {}, {
  obj(step_chair). hasRole(step_chair, furnitureRole). affordsTask(step_chair, eatingDrinkingTask). affordsTask(step_chair, storageTask).
}).
#pos(e1873@100, {goesIn(step_chair, kitchen)}, {}, {
  obj(step_chair). hasRole(step_chair, furnitureRole). affordsTask(step_chair, eatingDrinkingTask). affordsTask(step_chair, storageTask).
}).
#pos(e1874@100, {goesIn(step_chair, laundry_room)}, {}, {
  obj(step_chair). hasRole(step_chair, furnitureRole). affordsTask(step_chair, eatingDrinkingTask). affordsTask(step_chair, storageTask).
}).
#pos(e1875@100, {goesIn(step_chair, library)}, {}, {
  obj(step_chair). hasRole(step_chair, furnitureRole). affordsTask(step_chair, eatingDrinkingTask). affordsTask(step_chair, storageTask).
}).
#pos(e1876@100, {goesIn(stick_of_butter, fridge)}, {}, {
  obj(stick_of_butter). hasRole(stick_of_butter, consumableRole). affordsTask(stick_of_butter, foodPreparationTask).
}).
#pos(e1877@100, {goesIn(sticking_plaster, bathroom)}, {}, {
  obj(sticking_plaster). hasRole(sticking_plaster, safetyEquipmentRole). affordsTask(sticking_plaster, hygieneTask).
}).
#pos(e1878@100, {goesIn(sticking_plaster, library)}, {}, {
  obj(sticking_plaster). hasRole(sticking_plaster, safetyEquipmentRole). affordsTask(sticking_plaster, hygieneTask).
}).
#pos(e1879@100, {goesIn(storage, storage_room)}, {}, {
  obj(storage). hasRole(storage, storageContainerRole). affordsTask(storage, storageTask).
}).
#pos(e1880@100, {goesIn(storage_furniture, bedroom)}, {}, {
  obj(storage_furniture). hasRole(storage_furniture, furnitureRole). affordsTask(storage_furniture, storageTask).
}).
#pos(e1881@100, {goesIn(storage_furniture, storage_room)}, {}, {
  obj(storage_furniture). hasRole(storage_furniture, furnitureRole). affordsTask(storage_furniture, storageTask).
}).
#pos(e1882@100, {goesIn(storage_pan, cabinet)}, {}, {
  obj(storage_pan). hasRole(storage_pan, cookwareRole). affordsTask(storage_pan, foodPreparationTask).
}).
#pos(e1883@100, {goesIn(storage_pan, garage)}, {}, {
  obj(storage_pan). hasRole(storage_pan, cookwareRole). affordsTask(storage_pan, foodPreparationTask).
}).
#pos(e1884@100, {goesIn(storage_pan, kitchen)}, {}, {
  obj(storage_pan). hasRole(storage_pan, cookwareRole). affordsTask(storage_pan, foodPreparationTask).
}).
#pos(e1885@100, {goesIn(store_shelf, garage)}, {}, {
  obj(store_shelf). hasRole(store_shelf, storageContainerRole). affordsTask(store_shelf, storageTask).
}).
#pos(e1886@100, {goesIn(stove, bedroom)}, {}, {
  obj(stove). hasRole(stove, cookwareRole). affordsTask(stove, foodPreparationTask).
}).
#pos(e1887@100, {goesIn(stove, living_room)}, {}, {
  obj(stove). hasRole(stove, cookwareRole). affordsTask(stove, foodPreparationTask).
}).
#pos(e1888@100, {goesIn(strawberries, fridge)}, {}, {
  obj(strawberries). hasRole(strawberries, consumableRole). affordsTask(strawberries, eatingDrinkingTask).
}).
#pos(e1889@100, {goesIn(string, music_room)}, {}, {
  obj(string). hasRole(string, toolRole). affordsTask(string, foodPreparationTask). affordsTask(string, leisureTask).
}).
#pos(e1890@100, {goesIn(strings, music_room)}, {}, {
  obj(strings). hasRole(strings, toolRole). affordsTask(strings, leisureTask).
}).
#pos(e1891@100, {goesIn(studio_pedestal, music_room)}, {}, {
  obj(studio_pedestal). hasRole(studio_pedestal, furnitureRole). affordsTask(studio_pedestal, storageTask).
}).
#pos(e1892@100, {goesIn(study, library)}, {}, {
  obj(study). hasRole(study, furnitureRole). affordsTask(study, workStudyTask).
}).
#pos(e1893@100, {goesIn(stuffed_animal, library)}, {}, {
  obj(stuffed_animal). hasRole(stuffed_animal, entertainmentRole). affordsTask(stuffed_animal, leisureTask).
}).
#pos(e1894@100, {goesIn(stylus, drawer)}, {}, {
  obj(stylus). hasRole(stylus, toolRole).
}).
#pos(e1895@100, {goesIn(sugar, cabinet)}, {}, {
  obj(sugar). hasRole(sugar, consumableRole). affordsTask(sugar, foodPreparationTask).
}).
#pos(e1896@100, {goesIn(sugar, closet)}, {}, {
  obj(sugar). hasRole(sugar, consumableRole). affordsTask(sugar, foodPreparationTask).
}).
#pos(e1897@100, {goesIn(sugar, garage)}, {}, {
  obj(sugar). hasRole(sugar, consumableRole). affordsTask(sugar, foodPreparationTask).
}).
#pos(e1898@100, {goesIn(sugar, kitchen)}, {}, {
  obj(sugar). hasRole(sugar, consumableRole). affordsTask(sugar, foodPreparationTask).
}).
#pos(e1899@100, {goesIn(sugar, pantry)}, {}, {
  obj(sugar). hasRole(sugar, consumableRole). affordsTask(sugar, foodPreparationTask).
}).
#pos(e1900@100, {goesIn(suit, bedroom)}, {}, {
  obj(suit). hasRole(suit, clothingRole). affordsTask(suit, dressingTask).
}).
#pos(e1901@100, {goesIn(suit, closet)}, {}, {
  obj(suit). hasRole(suit, clothingRole). affordsTask(suit, dressingTask).
}).
#pos(e1902@100, {goesIn(suntan_lotion, storage_room)}, {}, {
  obj(suntan_lotion). hasRole(suntan_lotion, cleaningToolRole). affordsTask(suntan_lotion, hygieneTask).
}).
#pos(e1903@100, {goesIn(sushi, kitchen)}, {}, {
  obj(sushi). hasRole(sushi, consumableRole). affordsTask(sushi, eatingDrinkingTask).
}).
#pos(e1904@100, {goesIn(sweat, bed)}, {}, {
  obj(sweat). affordsTask(sweat, hygieneTask).
}).
#pos(e1905@100, {goesIn(sweater, drawer)}, {}, {
  obj(sweater). hasRole(sweater, clothingRole). affordsTask(sweater, dressingTask).
}).
#pos(e1906@100, {goesIn(swiss_cheese, storage_room)}, {}, {
  obj(swiss_cheese). hasRole(swiss_cheese, consumableRole). affordsTask(swiss_cheese, eatingDrinkingTask).
}).
#pos(e1907@100, {goesIn(switches, bedroom)}, {}, {
  obj(switches). hasRole(switches, toolRole). affordsTask(switches, workStudyTask).
}).
#pos(e1908@100, {goesIn(switches, living_room)}, {}, {
  obj(switches). hasRole(switches, toolRole). affordsTask(switches, workStudyTask).
}).
#pos(e1909@100, {goesIn(t_shirt, bedroom)}, {}, {
  obj(t_shirt). hasRole(t_shirt, clothingRole). affordsTask(t_shirt, dressingTask).
}).
#pos(e1910@100, {goesIn(t_shirt, closet)}, {}, {
  obj(t_shirt). hasRole(t_shirt, clothingRole). affordsTask(t_shirt, dressingTask).
}).
#pos(e1911@100, {goesIn(t_shirt, storage_room)}, {}, {
  obj(t_shirt). hasRole(t_shirt, clothingRole). affordsTask(t_shirt, dressingTask).
}).
#pos(e1912@100, {goesIn(tabby_cat, storage_room)}, {}, {
  obj(tabby_cat). affordsTask(tabby_cat, leisureTask).
}).
#pos(e1913@100, {goesIn(table, bedroom)}, {}, {
  obj(table). hasRole(table, furnitureRole). affordsTask(table, eatingDrinkingTask). affordsTask(table, foodPreparationTask). affordsTask(table, leisureTask). affordsTask(table, workStudyTask).
}).
#pos(e1914@100, {goesIn(table, closet)}, {}, {
  obj(table). hasRole(table, furnitureRole). affordsTask(table, eatingDrinkingTask). affordsTask(table, foodPreparationTask). affordsTask(table, leisureTask). affordsTask(table, workStudyTask).
}).
#pos(e1915@100, {goesIn(table, dining_room)}, {}, {
  obj(table). hasRole(table, furnitureRole). affordsTask(table, eatingDrinkingTask). affordsTask(table, foodPreparationTask). affordsTask(table, leisureTask). affordsTask(table, workStudyTask).
}).
#pos(e1916@100, {goesIn(table, kitchen)}, {}, {
  obj(table). hasRole(table, furnitureRole). affordsTask(table, eatingDrinkingTask). affordsTask(table, foodPreparationTask). affordsTask(table, leisureTask). affordsTask(table, workStudyTask).
}).
#pos(e1917@100, {goesIn(table, library)}, {}, {
  obj(table). hasRole(table, furnitureRole). affordsTask(table, eatingDrinkingTask). affordsTask(table, foodPreparationTask). affordsTask(table, leisureTask). affordsTask(table, workStudyTask).
}).
#pos(e1918@100, {goesIn(table, living_room)}, {}, {
  obj(table). hasRole(table, furnitureRole). affordsTask(table, eatingDrinkingTask). affordsTask(table, foodPreparationTask). affordsTask(table, leisureTask). affordsTask(table, workStudyTask).
}).
#pos(e1919@100, {goesIn(table_cloth, cabinet)}, {}, {
  obj(table_cloth). hasRole(table_cloth, beddingRole). affordsTask(table_cloth, leisureTask).
}).
#pos(e1920@100, {goesIn(table_cloth, table)}, {}, {
  obj(table_cloth). hasRole(table_cloth, beddingRole). affordsTask(table_cloth, leisureTask).
}).
#pos(e1921@100, {goesIn(tablecloth, bedroom)}, {}, {
  obj(tablecloth). hasRole(tablecloth, decorationRole). affordsTask(tablecloth, leisureTask).
}).
#pos(e1922@100, {goesIn(tablecloth, hallway)}, {}, {
  obj(tablecloth). hasRole(tablecloth, decorationRole). affordsTask(tablecloth, leisureTask).
}).
#pos(e1923@100, {goesIn(tablecloth, table)}, {}, {
  obj(tablecloth). hasRole(tablecloth, decorationRole). affordsTask(tablecloth, leisureTask).
}).
#pos(e1924@100, {goesIn(tables, bedroom)}, {}, {
  obj(tables). hasRole(tables, furnitureRole). affordsTask(tables, storageTask).
}).
#pos(e1925@100, {goesIn(tables, library)}, {}, {
  obj(tables). hasRole(tables, furnitureRole). affordsTask(tables, storageTask).
}).
#pos(e1926@100, {goesIn(tablespoon, drawer)}, {}, {
  obj(tablespoon). hasRole(tablespoon, utensilRole). affordsTask(tablespoon, eatingDrinkingTask). affordsTask(tablespoon, foodPreparationTask).
}).
#pos(e1927@100, {goesIn(tablespoon, kitchen)}, {}, {
  obj(tablespoon). hasRole(tablespoon, utensilRole). affordsTask(tablespoon, eatingDrinkingTask). affordsTask(tablespoon, foodPreparationTask).
}).
#pos(e1928@100, {goesIn(tack, bathroom)}, {}, {
  obj(tack). hasRole(tack, utensilRole). affordsTask(tack, foodPreparationTask).
}).
#pos(e1929@100, {goesIn(tack, bedroom)}, {}, {
  obj(tack). hasRole(tack, utensilRole). affordsTask(tack, foodPreparationTask).
}).
#pos(e1930@100, {goesIn(tack, closet)}, {}, {
  obj(tack). hasRole(tack, utensilRole). affordsTask(tack, foodPreparationTask).
}).
#pos(e1931@100, {goesIn(tanning_lotion, bathroom)}, {}, {
  obj(tanning_lotion). hasRole(tanning_lotion, consumableRole). affordsTask(tanning_lotion, hygieneTask).
}).
#pos(e1932@100, {goesIn(tanning_lotion, bedroom)}, {}, {
  obj(tanning_lotion). hasRole(tanning_lotion, consumableRole). affordsTask(tanning_lotion, hygieneTask).
}).
#pos(e1933@100, {goesIn(tanning_lotion, library)}, {}, {
  obj(tanning_lotion). hasRole(tanning_lotion, consumableRole). affordsTask(tanning_lotion, hygieneTask).
}).
#pos(e1934@100, {goesIn(tap, bathroom)}, {}, {
  obj(tap). hasRole(tap, toolRole). affordsTask(tap, hygieneTask). affordsTask(tap, leisureTask).
}).
#pos(e1935@100, {goesIn(tap, library)}, {}, {
  obj(tap). hasRole(tap, toolRole). affordsTask(tap, hygieneTask). affordsTask(tap, leisureTask).
}).
#pos(e1936@100, {goesIn(tap, sink)}, {}, {
  obj(tap). hasRole(tap, toolRole). affordsTask(tap, hygieneTask). affordsTask(tap, leisureTask).
}).
#pos(e1937@100, {goesIn(tape, drawer)}, {}, {
  obj(tape). hasRole(tape, toolRole). affordsTask(tape, maintenanceTask).
}).
#pos(e1938@100, {goesIn(tape_dispenser, drawer)}, {}, {
  obj(tape_dispenser). hasRole(tape_dispenser, toolRole). affordsTask(tape_dispenser, maintenanceTask).
}).
#pos(e1939@100, {goesIn(tape_dispenser, table)}, {}, {
  obj(tape_dispenser). hasRole(tape_dispenser, toolRole). affordsTask(tape_dispenser, maintenanceTask).
}).
#pos(e1940@100, {goesIn(tape_measure, storage_room)}, {}, {
  obj(tape_measure). hasRole(tape_measure, toolRole). affordsTask(tape_measure, maintenanceTask).
}).
#pos(e1941@100, {goesIn(tapestry, bedroom)}, {}, {
  obj(tapestry). hasRole(tapestry, decorationRole). affordsTask(tapestry, leisureTask).
}).
#pos(e1942@100, {goesIn(tar, garage)}, {}, {
  obj(tar). hasRole(tar, consumableRole). affordsTask(tar, wasteDisposalTask).
}).
#pos(e1943@100, {goesIn(tea, cabinet)}, {}, {
  obj(tea). hasRole(tea, consumableRole). affordsTask(tea, eatingDrinkingTask).
}).
#pos(e1944@100, {goesIn(tea, closet)}, {}, {
  obj(tea). hasRole(tea, consumableRole). affordsTask(tea, eatingDrinkingTask).
}).
#pos(e1945@100, {goesIn(tea, fridge)}, {}, {
  obj(tea). hasRole(tea, consumableRole). affordsTask(tea, eatingDrinkingTask).
}).
#pos(e1946@100, {goesIn(tea, kitchen)}, {}, {
  obj(tea). hasRole(tea, consumableRole). affordsTask(tea, eatingDrinkingTask).
}).
#pos(e1947@100, {goesIn(teakettle, bathroom)}, {}, {
  obj(teakettle). hasRole(teakettle, cookwareRole). affordsTask(teakettle, foodPreparationTask).
}).
#pos(e1948@100, {goesIn(teakettle, cabinet)}, {}, {
  obj(teakettle). hasRole(teakettle, cookwareRole). affordsTask(teakettle, foodPreparationTask).
}).
#pos(e1949@100, {goesIn(teakettle, closet)}, {}, {
  obj(teakettle). hasRole(teakettle, cookwareRole). affordsTask(teakettle, foodPreparationTask).
}).
#pos(e1950@100, {goesIn(teaspoon, kitchen)}, {}, {
  obj(teaspoon). hasRole(teaspoon, utensilRole). affordsTask(teaspoon, foodPreparationTask).
}).
#pos(e1951@100, {goesIn(teddy_bear, bed)}, {}, {
  obj(teddy_bear). hasRole(teddy_bear, entertainmentRole). affordsTask(teddy_bear, leisureTask).
}).
#pos(e1952@100, {goesIn(teddy_bear, shelf)}, {}, {
  obj(teddy_bear). hasRole(teddy_bear, entertainmentRole). affordsTask(teddy_bear, leisureTask).
}).
#pos(e1953@100, {goesIn(telephone, table)}, {}, {
  obj(telephone). hasRole(telephone, toolRole).
}).
#pos(e1954@100, {goesIn(telephone_book, bedroom)}, {}, {
  obj(telephone_book). hasRole(telephone_book, documentRole). affordsTask(telephone_book, workStudyTask).
}).
#pos(e1955@100, {goesIn(telephone_book, closet)}, {}, {
  obj(telephone_book). hasRole(telephone_book, documentRole). affordsTask(telephone_book, workStudyTask).
}).
#pos(e1956@100, {goesIn(telephone_book, drawer)}, {}, {
  obj(telephone_book). hasRole(telephone_book, documentRole). affordsTask(telephone_book, workStudyTask).
}).
#pos(e1957@100, {goesIn(telephone_book, library)}, {}, {
  obj(telephone_book). hasRole(telephone_book, documentRole). affordsTask(telephone_book, workStudyTask).
}).
#pos(e1958@100, {goesIn(telephone_book, table)}, {}, {
  obj(telephone_book). hasRole(telephone_book, documentRole). affordsTask(telephone_book, workStudyTask).
}).
#pos(e1959@100, {goesIn(telephone_directory, bedroom)}, {}, {
  obj(telephone_directory). hasRole(telephone_directory, documentRole). affordsTask(telephone_directory, workStudyTask).
}).
#pos(e1960@100, {goesIn(telephone_directory, kitchen)}, {}, {
  obj(telephone_directory). hasRole(telephone_directory, documentRole). affordsTask(telephone_directory, workStudyTask).
}).
#pos(e1961@100, {goesIn(telephone_directory, library)}, {}, {
  obj(telephone_directory). hasRole(telephone_directory, documentRole). affordsTask(telephone_directory, workStudyTask).
}).
#pos(e1962@100, {goesIn(telephone_directory, shelf)}, {}, {
  obj(telephone_directory). hasRole(telephone_directory, documentRole). affordsTask(telephone_directory, workStudyTask).
}).
#pos(e1963@100, {goesIn(telephone_index, bedroom)}, {}, {
  obj(telephone_index). hasRole(telephone_index, toolRole). affordsTask(telephone_index, workStudyTask).
}).
#pos(e1964@100, {goesIn(telephone_index, closet)}, {}, {
  obj(telephone_index). hasRole(telephone_index, toolRole). affordsTask(telephone_index, workStudyTask).
}).
#pos(e1965@100, {goesIn(telephone_index, library)}, {}, {
  obj(telephone_index). hasRole(telephone_index, toolRole). affordsTask(telephone_index, workStudyTask).
}).
#pos(e1966@100, {goesIn(television, bedroom)}, {}, {
  obj(television). hasRole(television, applianceRole). affordsTask(television, leisureTask).
}).
#pos(e1967@100, {goesIn(television, living_room)}, {}, {
  obj(television). hasRole(television, applianceRole). affordsTask(television, leisureTask).
}).
#pos(e1968@100, {goesIn(terrace, bedroom)}, {}, {
  obj(terrace). hasRole(terrace, furnitureRole). affordsTask(terrace, leisureTask). affordsTask(terrace, storageTask).
}).
#pos(e1969@100, {goesIn(terrace, garden)}, {}, {
  obj(terrace). hasRole(terrace, furnitureRole). affordsTask(terrace, leisureTask). affordsTask(terrace, storageTask).
}).
#pos(e1970@100, {goesIn(terrace_railing, garden)}, {}, {
  obj(terrace_railing). hasRole(terrace_railing, furnitureRole). affordsTask(terrace_railing, leisureTask).
}).
#pos(e1971@100, {goesIn(textile, kitchen)}, {}, {
  obj(textile). hasRole(textile, clothingRole). affordsTask(textile, dressingTask).
}).
#pos(e1972@100, {goesIn(thermostat, fridge)}, {}, {
  obj(thermostat). hasRole(thermostat, applianceRole). affordsTask(thermostat, maintenanceTask).
}).
#pos(e1973@100, {goesIn(thumb_tack, drawer)}, {}, {
  obj(thumb_tack). hasRole(thumb_tack, toolRole). affordsTask(thumb_tack, maintenanceTask).
}).
#pos(e1974@100, {goesIn(thumbtacks, table)}, {}, {
  obj(thumbtacks). hasRole(thumbtacks, toolRole). affordsTask(thumbtacks, maintenanceTask).
}).
#pos(e1975@100, {goesIn(ties, bedroom)}, {}, {
  obj(ties). hasRole(ties, clothingRole). affordsTask(ties, dressingTask).
}).
#pos(e1976@100, {goesIn(ties, closet)}, {}, {
  obj(ties). hasRole(ties, clothingRole). affordsTask(ties, dressingTask).
}).
#pos(e1977@100, {goesIn(tile, closet)}, {}, {
  obj(tile). hasRole(tile, furnitureRole). affordsTask(tile, maintenanceTask).
}).
#pos(e1978@100, {goesIn(tile, garage)}, {}, {
  obj(tile). hasRole(tile, furnitureRole). affordsTask(tile, maintenanceTask).
}).
#pos(e1979@100, {goesIn(tile, library)}, {}, {
  obj(tile). hasRole(tile, furnitureRole). affordsTask(tile, maintenanceTask).
}).
#pos(e1980@100, {goesIn(tiles, closet)}, {}, {
  obj(tiles). hasRole(tiles, furnitureRole). affordsTask(tiles, maintenanceTask).
}).
#pos(e1981@100, {goesIn(tiles, garage)}, {}, {
  obj(tiles). hasRole(tiles, furnitureRole). affordsTask(tiles, maintenanceTask).
}).
#pos(e1982@100, {goesIn(tiles, library)}, {}, {
  obj(tiles). hasRole(tiles, furnitureRole). affordsTask(tiles, maintenanceTask).
}).
#pos(e1983@100, {goesIn(tin, cabinet)}, {}, {
  obj(tin). hasRole(tin, storageContainerRole). affordsTask(tin, storageTask).
}).
#pos(e1984@100, {goesIn(tin, closet)}, {}, {
  obj(tin). hasRole(tin, storageContainerRole). affordsTask(tin, storageTask).
}).
#pos(e1985@100, {goesIn(tin, trash)}, {}, {
  obj(tin). hasRole(tin, storageContainerRole). affordsTask(tin, storageTask).
}).
#pos(e1986@100, {goesIn(tin_cans, trash)}, {}, {
  obj(tin_cans). hasRole(tin_cans, storageContainerRole). affordsTask(tin_cans, storageTask).
}).
#pos(e1987@100, {goesIn(tire_iron, bedroom)}, {}, {
  obj(tire_iron). hasRole(tire_iron, toolRole). affordsTask(tire_iron, maintenanceTask).
}).
#pos(e1988@100, {goesIn(tire_iron, garage)}, {}, {
  obj(tire_iron). hasRole(tire_iron, toolRole). affordsTask(tire_iron, maintenanceTask).
}).
#pos(e1989@100, {goesIn(tire_iron, storage_room)}, {}, {
  obj(tire_iron). hasRole(tire_iron, toolRole). affordsTask(tire_iron, maintenanceTask).
}).
#pos(e1990@100, {goesIn(tissue_holder, bathroom)}, {}, {
  obj(tissue_holder). hasRole(tissue_holder, storageContainerRole). affordsTask(tissue_holder, storageTask).
}).
#pos(e1991@100, {goesIn(tissue_holder, library)}, {}, {
  obj(tissue_holder). hasRole(tissue_holder, storageContainerRole). affordsTask(tissue_holder, storageTask).
}).
#pos(e1992@100, {goesIn(tofu, fridge)}, {}, {
  obj(tofu). hasRole(tofu, consumableRole). affordsTask(tofu, eatingDrinkingTask).
}).
#pos(e1993@100, {goesIn(toilet, bathroom)}, {}, {
  obj(toilet). hasRole(toilet, furnitureRole). affordsTask(toilet, wasteDisposalTask).
}).
#pos(e1994@100, {goesIn(toilet, bedroom)}, {}, {
  obj(toilet). hasRole(toilet, furnitureRole). affordsTask(toilet, wasteDisposalTask).
}).
#pos(e1995@100, {goesIn(toilet, library)}, {}, {
  obj(toilet). hasRole(toilet, furnitureRole). affordsTask(toilet, wasteDisposalTask).
}).
#pos(e1996@100, {goesIn(toilet, trash)}, {}, {
  obj(toilet). hasRole(toilet, furnitureRole). affordsTask(toilet, wasteDisposalTask).
}).
#pos(e1997@100, {goesIn(toilet_brush, bathroom)}, {}, {
  obj(toilet_brush). hasRole(toilet_brush, cleaningToolRole). affordsTask(toilet_brush, cleaningTask).
}).
#pos(e1998@100, {goesIn(toilet_brush, library)}, {}, {
  obj(toilet_brush). hasRole(toilet_brush, cleaningToolRole). affordsTask(toilet_brush, cleaningTask).
}).
#pos(e1999@100, {goesIn(toilet_paper, bathroom)}, {}, {
  obj(toilet_paper). hasRole(toilet_paper, consumableRole). affordsTask(toilet_paper, hygieneTask).
}).
#pos(e2000@100, {goesIn(toilet_paper, library)}, {}, {
  obj(toilet_paper). hasRole(toilet_paper, consumableRole). affordsTask(toilet_paper, hygieneTask).
}).
#pos(e2001@100, {goesIn(toilet_seat, bathroom)}, {}, {
  obj(toilet_seat). hasRole(toilet_seat, furnitureRole). affordsTask(toilet_seat, wasteDisposalTask).
}).
#pos(e2002@100, {goesIn(toilet_tank, bathroom)}, {}, {
  obj(toilet_tank). hasRole(toilet_tank, storageContainerRole). affordsTask(toilet_tank, wasteDisposalTask).
}).
#pos(e2003@100, {goesIn(toilets, bathroom)}, {}, {
  obj(toilets). hasRole(toilets, furnitureRole). affordsTask(toilets, wasteDisposalTask).
}).
#pos(e2004@100, {goesIn(toilets, library)}, {}, {
  obj(toilets). hasRole(toilets, furnitureRole). affordsTask(toilets, wasteDisposalTask).
}).
#pos(e2005@100, {goesIn(tomato, fridge)}, {}, {
  obj(tomato). hasRole(tomato, consumableRole). affordsTask(tomato, eatingDrinkingTask).
}).
#pos(e2006@100, {goesIn(tomato_plants, bedroom)}, {}, {
  obj(tomato_plants). hasRole(tomato_plants, consumableRole). affordsTask(tomato_plants, foodPreparationTask). affordsTask(tomato_plants, gardeningTask).
}).
#pos(e2007@100, {goesIn(tomatoes, fridge)}, {}, {
  obj(tomatoes). hasRole(tomatoes, consumableRole). affordsTask(tomatoes, eatingDrinkingTask).
}).
#pos(e2008@100, {goesIn(tool, closet)}, {}, {
  obj(tool). hasRole(tool, toolRole). affordsTask(tool, maintenanceTask).
}).
#pos(e2009@100, {goesIn(tool, garage)}, {}, {
  obj(tool). hasRole(tool, toolRole). affordsTask(tool, maintenanceTask).
}).
#pos(e2010@100, {goesIn(tool, storage_room)}, {}, {
  obj(tool). hasRole(tool, toolRole). affordsTask(tool, maintenanceTask).
}).
#pos(e2011@100, {goesIn(toolbox, garage)}, {}, {
  obj(toolbox). hasRole(toolbox, toolRole). affordsTask(toolbox, maintenanceTask).
}).
#pos(e2012@100, {goesIn(tools, drawer)}, {}, {
  obj(tools). hasRole(tools, toolRole). affordsTask(tools, maintenanceTask).
}).
#pos(e2013@100, {goesIn(tools, garage)}, {}, {
  obj(tools). hasRole(tools, toolRole). affordsTask(tools, maintenanceTask).
}).
#pos(e2014@100, {goesIn(tools, storage_room)}, {}, {
  obj(tools). hasRole(tools, toolRole). affordsTask(tools, maintenanceTask).
}).
#pos(e2015@100, {goesIn(toothbrush, bedroom)}, {}, {
  obj(toothbrush). affordsTask(toothbrush, hygieneTask).
}).
#pos(e2016@100, {goesIn(toothbrush_bristle, bathroom)}, {}, {
  obj(toothbrush_bristle). affordsTask(toothbrush_bristle, hygieneTask).
}).
#pos(e2017@100, {goesIn(toothbrush_bristle, bedroom)}, {}, {
  obj(toothbrush_bristle). affordsTask(toothbrush_bristle, hygieneTask).
}).
#pos(e2018@100, {goesIn(toothbrush_bristle, library)}, {}, {
  obj(toothbrush_bristle). affordsTask(toothbrush_bristle, hygieneTask).
}).
#pos(e2019@100, {goesIn(toothbrush_bristle, sink)}, {}, {
  obj(toothbrush_bristle). affordsTask(toothbrush_bristle, hygieneTask).
}).
#pos(e2020@100, {goesIn(toothbrush_head, trash)}, {}, {
  obj(toothbrush_head). affordsTask(toothbrush_head, hygieneTask).
}).
#pos(e2021@100, {goesIn(toothpaste, bathroom)}, {}, {
  obj(toothpaste). hasRole(toothpaste, cleaningToolRole). affordsTask(toothpaste, hygieneTask).
}).
#pos(e2022@100, {goesIn(toothpaste, library)}, {}, {
  obj(toothpaste). hasRole(toothpaste, cleaningToolRole). affordsTask(toothpaste, hygieneTask).
}).
#pos(e2023@100, {goesIn(toothpaste, sink)}, {}, {
  obj(toothpaste). hasRole(toothpaste, cleaningToolRole). affordsTask(toothpaste, hygieneTask).
}).
#pos(e2024@100, {goesIn(toothpick, closet)}, {}, {
  obj(toothpick). hasRole(toothpick, utensilRole). affordsTask(toothpick, eatingDrinkingTask). affordsTask(toothpick, foodPreparationTask).
}).
#pos(e2025@100, {goesIn(toothpick, garage)}, {}, {
  obj(toothpick). hasRole(toothpick, utensilRole). affordsTask(toothpick, eatingDrinkingTask). affordsTask(toothpick, foodPreparationTask).
}).
#pos(e2026@100, {goesIn(toothpick, storage_room)}, {}, {
  obj(toothpick). hasRole(toothpick, utensilRole). affordsTask(toothpick, eatingDrinkingTask). affordsTask(toothpick, foodPreparationTask).
}).
#pos(e2027@100, {goesIn(torch, garage)}, {}, {
  obj(torch). hasRole(torch, lightingRole). affordsTask(torch, leisureTask).
}).
#pos(e2028@100, {goesIn(tote_bag, bedroom)}, {}, {
  obj(tote_bag). hasRole(tote_bag, storageContainerRole). affordsTask(tote_bag, storageTask).
}).
#pos(e2029@100, {goesIn(tote_bag, closet)}, {}, {
  obj(tote_bag). hasRole(tote_bag, storageContainerRole). affordsTask(tote_bag, storageTask).
}).
#pos(e2030@100, {goesIn(towel, bedroom)}, {}, {
  obj(towel). hasRole(towel, cleaningToolRole). affordsTask(towel, cleaningTask).
}).
#pos(e2031@100, {goesIn(towel, cabinet)}, {}, {
  obj(towel). hasRole(towel, cleaningToolRole). affordsTask(towel, cleaningTask).
}).
#pos(e2032@100, {goesIn(towel, closet)}, {}, {
  obj(towel). hasRole(towel, cleaningToolRole). affordsTask(towel, cleaningTask).
}).
#pos(e2033@100, {goesIn(towel, garage)}, {}, {
  obj(towel). hasRole(towel, cleaningToolRole). affordsTask(towel, cleaningTask).
}).
#pos(e2034@100, {goesIn(towel, hallway)}, {}, {
  obj(towel). hasRole(towel, cleaningToolRole). affordsTask(towel, cleaningTask).
}).
#pos(e2035@100, {goesIn(towel, storage_room)}, {}, {
  obj(towel). hasRole(towel, cleaningToolRole). affordsTask(towel, cleaningTask).
}).
#pos(e2036@100, {goesIn(towel_bar, library)}, {}, {
  obj(towel_bar). hasRole(towel_bar, storageContainerRole). affordsTask(towel_bar, storageTask).
}).
#pos(e2037@100, {goesIn(towel_rack, bathroom)}, {}, {
  obj(towel_rack). hasRole(towel_rack, storageContainerRole). affordsTask(towel_rack, storageTask).
}).
#pos(e2038@100, {goesIn(towel_rack, library)}, {}, {
  obj(towel_rack). hasRole(towel_rack, storageContainerRole). affordsTask(towel_rack, storageTask).
}).
#pos(e2039@100, {goesIn(toy, table)}, {}, {
  obj(toy). hasRole(toy, entertainmentRole). affordsTask(toy, leisureTask).
}).
#pos(e2040@100, {goesIn(toys, bed)}, {}, {
  obj(toys). hasRole(toys, entertainmentRole). affordsTask(toys, leisureTask).
}).
#pos(e2041@100, {goesIn(toys, bedroom)}, {}, {
  obj(toys). hasRole(toys, entertainmentRole). affordsTask(toys, leisureTask).
}).
#pos(e2042@100, {goesIn(toys, closet)}, {}, {
  obj(toys). hasRole(toys, entertainmentRole). affordsTask(toys, leisureTask).
}).
#pos(e2043@100, {goesIn(toys, drawer)}, {}, {
  obj(toys). hasRole(toys, entertainmentRole). affordsTask(toys, leisureTask).
}).
#pos(e2044@100, {goesIn(toys, garage)}, {}, {
  obj(toys). hasRole(toys, entertainmentRole). affordsTask(toys, leisureTask).
}).
#pos(e2045@100, {goesIn(toys, library)}, {}, {
  obj(toys). hasRole(toys, entertainmentRole). affordsTask(toys, leisureTask).
}).
#pos(e2046@100, {goesIn(toys, living_room)}, {}, {
  obj(toys). hasRole(toys, entertainmentRole). affordsTask(toys, leisureTask).
}).
#pos(e2047@100, {goesIn(toys, storage_room)}, {}, {
  obj(toys). hasRole(toys, entertainmentRole). affordsTask(toys, leisureTask).
}).
#pos(e2048@100, {goesIn(trash, bed)}, {}, {
  obj(trash). hasRole(trash, storageContainerRole). affordsTask(trash, wasteDisposalTask).
}).
#pos(e2049@100, {goesIn(trash, closet)}, {}, {
  obj(trash). hasRole(trash, storageContainerRole). affordsTask(trash, wasteDisposalTask).
}).
#pos(e2050@100, {goesIn(trash, garage)}, {}, {
  obj(trash). hasRole(trash, storageContainerRole). affordsTask(trash, wasteDisposalTask).
}).
#pos(e2051@100, {goesIn(trash, kitchen)}, {}, {
  obj(trash). hasRole(trash, storageContainerRole). affordsTask(trash, wasteDisposalTask).
}).
#pos(e2052@100, {goesIn(trash, pantry)}, {}, {
  obj(trash). hasRole(trash, storageContainerRole). affordsTask(trash, wasteDisposalTask).
}).
#pos(e2053@100, {goesIn(trash, trash)}, {}, {
  obj(trash). hasRole(trash, storageContainerRole). affordsTask(trash, wasteDisposalTask).
}).
#pos(e2054@100, {goesIn(trash_can, kitchen)}, {}, {
  obj(trash_can). hasRole(trash_can, storageContainerRole). hasRole(trash_can, wasteRole). affordsTask(trash_can, wasteDisposalTask).
}).
#pos(e2055@100, {goesIn(trash_can, table)}, {}, {
  obj(trash_can). hasRole(trash_can, storageContainerRole). hasRole(trash_can, wasteRole). affordsTask(trash_can, wasteDisposalTask).
}).
#pos(e2056@100, {goesIn(trash_container, kitchen)}, {}, {
  obj(trash_container). hasRole(trash_container, storageContainerRole). affordsTask(trash_container, wasteDisposalTask).
}).
#pos(e2057@100, {goesIn(trunk, bedroom)}, {}, {
  obj(trunk). hasRole(trunk, storageContainerRole). affordsTask(trunk, storageTask).
}).
#pos(e2058@100, {goesIn(trunk, garage)}, {}, {
  obj(trunk). hasRole(trunk, storageContainerRole). affordsTask(trunk, storageTask).
}).
#pos(e2059@100, {goesIn(trunk, storage_room)}, {}, {
  obj(trunk). hasRole(trunk, storageContainerRole). affordsTask(trunk, storageTask).
}).
#pos(e2060@100, {goesIn(tub, kitchen)}, {}, {
  obj(tub). hasRole(tub, storageContainerRole). affordsTask(tub, eatingDrinkingTask). affordsTask(tub, hygieneTask). affordsTask(tub, leisureTask).
}).
#pos(e2061@100, {goesIn(tuna, bathroom)}, {}, {
  obj(tuna). hasRole(tuna, consumableRole). affordsTask(tuna, eatingDrinkingTask).
}).
#pos(e2062@100, {goesIn(tuna, closet)}, {}, {
  obj(tuna). hasRole(tuna, consumableRole). affordsTask(tuna, eatingDrinkingTask).
}).
#pos(e2063@100, {goesIn(tuna, kitchen)}, {}, {
  obj(tuna). hasRole(tuna, consumableRole). affordsTask(tuna, eatingDrinkingTask).
}).
#pos(e2064@100, {goesIn(tuna, pantry)}, {}, {
  obj(tuna). hasRole(tuna, consumableRole). affordsTask(tuna, eatingDrinkingTask).
}).
#pos(e2065@100, {goesIn(tuning_fork, music_room)}, {}, {
  obj(tuning_fork). hasRole(tuning_fork, toolRole). affordsTask(tuning_fork, foodPreparationTask).
}).
#pos(e2066@100, {goesIn(turkey, fridge)}, {}, {
  obj(turkey). hasRole(turkey, consumableRole). affordsTask(turkey, eatingDrinkingTask).
}).
#pos(e2067@100, {goesIn(turtle, bathroom)}, {}, {
  obj(turtle). affordsTask(turtle, leisureTask).
}).
#pos(e2068@100, {goesIn(turtle, closet)}, {}, {
  obj(turtle). affordsTask(turtle, leisureTask).
}).
#pos(e2069@100, {goesIn(turtle, garage)}, {}, {
  obj(turtle). affordsTask(turtle, leisureTask).
}).
#pos(e2070@100, {goesIn(turtle, storage_room)}, {}, {
  obj(turtle). affordsTask(turtle, leisureTask).
}).
#pos(e2071@100, {goesIn(tv, bedroom)}, {}, {
  obj(tv). hasRole(tv, applianceRole). affordsTask(tv, leisureTask).
}).
#pos(e2072@100, {goesIn(tv, living_room)}, {}, {
  obj(tv). hasRole(tv, applianceRole). affordsTask(tv, leisureTask).
}).
#pos(e2073@100, {goesIn(tweed, bedroom)}, {}, {
  obj(tweed). hasRole(tweed, clothingRole). affordsTask(tweed, dressingTask).
}).
#pos(e2074@100, {goesIn(tweed, closet)}, {}, {
  obj(tweed). hasRole(tweed, clothingRole). affordsTask(tweed, dressingTask).
}).
#pos(e2075@100, {goesIn(typewriter, table)}, {}, {
  obj(typewriter). hasRole(typewriter, toolRole).
}).
#pos(e2076@100, {goesIn(umbrella, bedroom)}, {}, {
  obj(umbrella). hasRole(umbrella, toolRole). affordsTask(umbrella, leisureTask).
}).
#pos(e2077@100, {goesIn(umbrella, closet)}, {}, {
  obj(umbrella). hasRole(umbrella, toolRole). affordsTask(umbrella, leisureTask).
}).
#pos(e2078@100, {goesIn(underwear, drawer)}, {}, {
  obj(underwear). hasRole(underwear, clothingRole). affordsTask(underwear, dressingTask).
}).
#pos(e2079@100, {goesIn(upright_piano, bedroom)}, {}, {
  obj(upright_piano). hasRole(upright_piano, entertainmentRole). affordsTask(upright_piano, leisureTask).
}).
#pos(e2080@100, {goesIn(upright_piano, living_room)}, {}, {
  obj(upright_piano). hasRole(upright_piano, entertainmentRole). affordsTask(upright_piano, leisureTask).
}).
#pos(e2081@100, {goesIn(upright_piano, music_room)}, {}, {
  obj(upright_piano). hasRole(upright_piano, entertainmentRole). affordsTask(upright_piano, leisureTask).
}).
#pos(e2082@100, {goesIn(utensils, cabinet)}, {}, {
  obj(utensils). hasRole(utensils, utensilRole).
}).
#pos(e2083@100, {goesIn(utensils, drawer)}, {}, {
  obj(utensils). hasRole(utensils, utensilRole).
}).
#pos(e2084@100, {goesIn(utility_case, garage)}, {}, {
  obj(utility_case). hasRole(utility_case, storageContainerRole). affordsTask(utility_case, storageTask).
}).
#pos(e2085@100, {goesIn(vacuum, bedroom)}, {}, {
  obj(vacuum). hasRole(vacuum, cleaningToolRole). affordsTask(vacuum, cleaningTask).
}).
#pos(e2086@100, {goesIn(vacuum, closet)}, {}, {
  obj(vacuum). hasRole(vacuum, cleaningToolRole). affordsTask(vacuum, cleaningTask).
}).
#pos(e2087@100, {goesIn(vacuum, garage)}, {}, {
  obj(vacuum). hasRole(vacuum, cleaningToolRole). affordsTask(vacuum, cleaningTask).
}).
#pos(e2088@100, {goesIn(vacuum, kitchen)}, {}, {
  obj(vacuum). hasRole(vacuum, cleaningToolRole). affordsTask(vacuum, cleaningTask).
}).
#pos(e2089@100, {goesIn(vacuum, pantry)}, {}, {
  obj(vacuum). hasRole(vacuum, cleaningToolRole). affordsTask(vacuum, cleaningTask).
}).
#pos(e2090@100, {goesIn(vanity_case, bedroom)}, {}, {
  obj(vanity_case). hasRole(vanity_case, storageContainerRole). affordsTask(vanity_case, storageTask).
}).
#pos(e2091@100, {goesIn(vanity_case, closet)}, {}, {
  obj(vanity_case). hasRole(vanity_case, storageContainerRole). affordsTask(vanity_case, storageTask).
}).
#pos(e2092@100, {goesIn(vanity_case, kitchen)}, {}, {
  obj(vanity_case). hasRole(vanity_case, storageContainerRole). affordsTask(vanity_case, storageTask).
}).
#pos(e2093@100, {goesIn(varnish, table)}, {}, {
  obj(varnish). hasRole(varnish, toolRole). affordsTask(varnish, maintenanceTask).
}).
#pos(e2094@100, {goesIn(vase, shelf)}, {}, {
  obj(vase). hasRole(vase, decorationRole). affordsTask(vase, storageTask).
}).
#pos(e2095@100, {goesIn(vase, table)}, {}, {
  obj(vase). hasRole(vase, decorationRole). affordsTask(vase, storageTask).
}).
#pos(e2096@100, {goesIn(vcr, bedroom)}, {}, {
  obj(vcr). hasRole(vcr, applianceRole). affordsTask(vcr, leisureTask).
}).
#pos(e2097@100, {goesIn(vcr, living_room)}, {}, {
  obj(vcr). hasRole(vcr, applianceRole). affordsTask(vcr, leisureTask).
}).
#pos(e2098@100, {goesIn(vegemite, pantry)}, {}, {
  obj(vegemite). hasRole(vegemite, consumableRole). affordsTask(vegemite, eatingDrinkingTask).
}).
#pos(e2099@100, {goesIn(vegetable_garden, garden)}, {}, {
  obj(vegetable_garden). hasRole(vegetable_garden, furnitureRole). affordsTask(vegetable_garden, gardeningTask).
}).
#pos(e2100@100, {goesIn(vegetables, fridge)}, {}, {
  obj(vegetables). hasRole(vegetables, consumableRole). affordsTask(vegetables, eatingDrinkingTask).
}).
#pos(e2101@100, {goesIn(vegetables, garden)}, {}, {
  obj(vegetables). hasRole(vegetables, consumableRole). affordsTask(vegetables, eatingDrinkingTask).
}).
#pos(e2102@100, {goesIn(vegetables, kitchen)}, {}, {
  obj(vegetables). hasRole(vegetables, consumableRole). affordsTask(vegetables, eatingDrinkingTask).
}).
#pos(e2103@100, {goesIn(vegetables, pantry)}, {}, {
  obj(vegetables). hasRole(vegetables, consumableRole). affordsTask(vegetables, eatingDrinkingTask).
}).
#pos(e2104@100, {goesIn(velvet, bedroom)}, {}, {
  obj(velvet). hasRole(velvet, clothingRole). affordsTask(velvet, dressingTask).
}).
#pos(e2105@100, {goesIn(velvet, closet)}, {}, {
  obj(velvet). hasRole(velvet, clothingRole). affordsTask(velvet, dressingTask).
}).
#pos(e2106@100, {goesIn(vent_brush, storage_room)}, {}, {
  obj(vent_brush). hasRole(vent_brush, cleaningToolRole). affordsTask(vent_brush, cleaningTask).
}).
#pos(e2107@100, {goesIn(ventilation_system, bedroom)}, {}, {
  obj(ventilation_system). hasRole(ventilation_system, applianceRole). affordsTask(ventilation_system, maintenanceTask).
}).
#pos(e2108@100, {goesIn(vice, garage)}, {}, {
  obj(vice). hasRole(vice, toolRole). affordsTask(vice, maintenanceTask).
}).
#pos(e2109@100, {goesIn(vice, storage_room)}, {}, {
  obj(vice). hasRole(vice, toolRole). affordsTask(vice, maintenanceTask).
}).
#pos(e2110@100, {goesIn(vinyl, bedroom)}, {}, {
  obj(vinyl). hasRole(vinyl, consumableRole). affordsTask(vinyl, leisureTask).
}).
#pos(e2111@100, {goesIn(vinyl, closet)}, {}, {
  obj(vinyl). hasRole(vinyl, consumableRole). affordsTask(vinyl, leisureTask).
}).
#pos(e2112@100, {goesIn(violin, music_room)}, {}, {
  obj(violin). hasRole(violin, musicalInstrumentRole). affordsTask(violin, leisureTask).
}).
#pos(e2113@100, {goesIn(virus, library)}, {}, {
  obj(virus). affordsTask(virus, maintenanceTask).
}).
#pos(e2114@100, {goesIn(waffles, fridge)}, {}, {
  obj(waffles). hasRole(waffles, consumableRole). affordsTask(waffles, eatingDrinkingTask).
}).
#pos(e2115@100, {goesIn(wall, bedroom)}, {}, {
  obj(wall). hasRole(wall, furnitureRole).
}).
#pos(e2116@100, {goesIn(wallet, bed)}, {}, {
  obj(wallet). hasRole(wallet, storageContainerRole). affordsTask(wallet, storageTask).
}).
#pos(e2117@100, {goesIn(walls, bedroom)}, {}, {
  obj(walls). hasRole(walls, furnitureRole). affordsTask(walls, storageTask).
}).
#pos(e2118@100, {goesIn(wardrobe, bedroom)}, {}, {
  obj(wardrobe). hasRole(wardrobe, furnitureRole). affordsTask(wardrobe, storageTask).
}).
#pos(e2119@100, {goesIn(wardrobe, closet)}, {}, {
  obj(wardrobe). hasRole(wardrobe, furnitureRole). affordsTask(wardrobe, storageTask).
}).
#pos(e2120@100, {goesIn(wash_cloth, bedroom)}, {}, {
  obj(wash_cloth). hasRole(wash_cloth, cleaningToolRole). affordsTask(wash_cloth, cleaningTask).
}).
#pos(e2121@100, {goesIn(wash_cloth, hallway)}, {}, {
  obj(wash_cloth). hasRole(wash_cloth, cleaningToolRole). affordsTask(wash_cloth, cleaningTask).
}).
#pos(e2122@100, {goesIn(wash_cloth, kitchen)}, {}, {
  obj(wash_cloth). hasRole(wash_cloth, cleaningToolRole). affordsTask(wash_cloth, cleaningTask).
}).
#pos(e2123@100, {goesIn(wash_cloth, sink)}, {}, {
  obj(wash_cloth). hasRole(wash_cloth, cleaningToolRole). affordsTask(wash_cloth, cleaningTask).
}).
#pos(e2124@100, {goesIn(washcloth, bedroom)}, {}, {
  obj(washcloth). hasRole(washcloth, cleaningToolRole). affordsTask(washcloth, cleaningTask). affordsTask(washcloth, hygieneTask).
}).
#pos(e2125@100, {goesIn(washcloth, hallway)}, {}, {
  obj(washcloth). hasRole(washcloth, cleaningToolRole). affordsTask(washcloth, cleaningTask). affordsTask(washcloth, hygieneTask).
}).
#pos(e2126@100, {goesIn(washcloth, sink)}, {}, {
  obj(washcloth). hasRole(washcloth, cleaningToolRole). affordsTask(washcloth, cleaningTask). affordsTask(washcloth, hygieneTask).
}).
#pos(e2127@100, {goesIn(washcloth, storage_room)}, {}, {
  obj(washcloth). hasRole(washcloth, cleaningToolRole). affordsTask(washcloth, cleaningTask). affordsTask(washcloth, hygieneTask).
}).
#pos(e2128@100, {goesIn(washing_machine, bedroom)}, {}, {
  obj(washing_machine). hasRole(washing_machine, applianceRole). affordsTask(washing_machine, cleaningTask).
}).
#pos(e2129@100, {goesIn(washing_machine, storage_room)}, {}, {
  obj(washing_machine). hasRole(washing_machine, applianceRole). affordsTask(washing_machine, cleaningTask).
}).
#pos(e2130@100, {goesIn(water, bathroom)}, {}, {
  obj(water). hasRole(water, consumableRole). affordsTask(water, cleaningTask). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e2131@100, {goesIn(water, bedroom)}, {}, {
  obj(water). hasRole(water, consumableRole). affordsTask(water, cleaningTask). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e2132@100, {goesIn(water, closet)}, {}, {
  obj(water). hasRole(water, consumableRole). affordsTask(water, cleaningTask). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e2133@100, {goesIn(water, dining_room)}, {}, {
  obj(water). hasRole(water, consumableRole). affordsTask(water, cleaningTask). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e2134@100, {goesIn(water, garage)}, {}, {
  obj(water). hasRole(water, consumableRole). affordsTask(water, cleaningTask). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e2135@100, {goesIn(water, garden)}, {}, {
  obj(water). hasRole(water, consumableRole). affordsTask(water, cleaningTask). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e2136@100, {goesIn(water, kitchen)}, {}, {
  obj(water). hasRole(water, consumableRole). affordsTask(water, cleaningTask). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e2137@100, {goesIn(water, library)}, {}, {
  obj(water). hasRole(water, consumableRole). affordsTask(water, cleaningTask). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e2138@100, {goesIn(water, pantry)}, {}, {
  obj(water). hasRole(water, consumableRole). affordsTask(water, cleaningTask). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e2139@100, {goesIn(water, sink)}, {}, {
  obj(water). hasRole(water, consumableRole). affordsTask(water, cleaningTask). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e2140@100, {goesIn(water, storage_room)}, {}, {
  obj(water). hasRole(water, consumableRole). affordsTask(water, cleaningTask). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e2141@100, {goesIn(water_fountain, library)}, {}, {
  obj(water_fountain). hasRole(water_fountain, utensilRole). affordsTask(water_fountain, eatingDrinkingTask).
}).
#pos(e2142@100, {goesIn(water_spout, closet)}, {}, {
  obj(water_spout). hasRole(water_spout, toolRole). affordsTask(water_spout, eatingDrinkingTask). affordsTask(water_spout, hygieneTask). affordsTask(water_spout, maintenanceTask).
}).
#pos(e2143@100, {goesIn(water_spout, garden)}, {}, {
  obj(water_spout). hasRole(water_spout, toolRole). affordsTask(water_spout, eatingDrinkingTask). affordsTask(water_spout, hygieneTask). affordsTask(water_spout, maintenanceTask).
}).
#pos(e2144@100, {goesIn(water_spout, sink)}, {}, {
  obj(water_spout). hasRole(water_spout, toolRole). affordsTask(water_spout, eatingDrinkingTask). affordsTask(water_spout, hygieneTask). affordsTask(water_spout, maintenanceTask).
}).
#pos(e2145@100, {goesIn(water_spout, storage_room)}, {}, {
  obj(water_spout). hasRole(water_spout, toolRole). affordsTask(water_spout, eatingDrinkingTask). affordsTask(water_spout, hygieneTask). affordsTask(water_spout, maintenanceTask).
}).
#pos(e2146@100, {goesIn(wave_clip, library)}, {}, {
  obj(wave_clip). hasRole(wave_clip, toolRole). affordsTask(wave_clip, leisureTask).
}).
#pos(e2147@100, {goesIn(wax, closet)}, {}, {
  obj(wax). hasRole(wax, consumableRole). affordsTask(wax, maintenanceTask).
}).
#pos(e2148@100, {goesIn(wax, library)}, {}, {
  obj(wax). hasRole(wax, consumableRole). affordsTask(wax, maintenanceTask).
}).
#pos(e2149@100, {goesIn(wax, table)}, {}, {
  obj(wax). hasRole(wax, consumableRole). affordsTask(wax, maintenanceTask).
}).
#pos(e2150@100, {goesIn(waxed_dental_floss, bathroom)}, {}, {
  obj(waxed_dental_floss). hasRole(waxed_dental_floss, cleaningToolRole). affordsTask(waxed_dental_floss, hygieneTask).
}).
#pos(e2151@100, {goesIn(waxed_dental_floss, library)}, {}, {
  obj(waxed_dental_floss). hasRole(waxed_dental_floss, cleaningToolRole). affordsTask(waxed_dental_floss, hygieneTask).
}).
#pos(e2152@100, {goesIn(weather_vane, garage)}, {}, {
  obj(weather_vane). hasRole(weather_vane, decorationRole).
}).
#pos(e2153@100, {goesIn(wedding_ring, closet)}, {}, {
  obj(wedding_ring). affordsTask(wedding_ring, leisureTask).
}).
#pos(e2154@100, {goesIn(wedding_ring, garage)}, {}, {
  obj(wedding_ring). affordsTask(wedding_ring, leisureTask).
}).
#pos(e2155@100, {goesIn(wedding_ring, storage_room)}, {}, {
  obj(wedding_ring). affordsTask(wedding_ring, leisureTask).
}).
#pos(e2156@100, {goesIn(weights, closet)}, {}, {
  obj(weights). hasRole(weights, toolRole). affordsTask(weights, workStudyTask).
}).
#pos(e2157@100, {goesIn(weights, storage_room)}, {}, {
  obj(weights). hasRole(weights, toolRole). affordsTask(weights, workStudyTask).
}).
#pos(e2158@100, {goesIn(wheat, pantry)}, {}, {
  obj(wheat). hasRole(wheat, consumableRole). affordsTask(wheat, foodPreparationTask).
}).
#pos(e2159@100, {goesIn(wheel, bedroom)}, {}, {
  obj(wheel). hasRole(wheel, toolRole). affordsTask(wheel, maintenanceTask).
}).
#pos(e2160@100, {goesIn(wheel, garage)}, {}, {
  obj(wheel). hasRole(wheel, toolRole). affordsTask(wheel, maintenanceTask).
}).
#pos(e2161@100, {goesIn(wheel, storage_room)}, {}, {
  obj(wheel). hasRole(wheel, toolRole). affordsTask(wheel, maintenanceTask).
}).
#pos(e2162@100, {goesIn(whisk, drawer)}, {}, {
  obj(whisk). hasRole(whisk, utensilRole). affordsTask(whisk, foodPreparationTask).
}).
#pos(e2163@100, {goesIn(whisky, pantry)}, {}, {
  obj(whisky). hasRole(whisky, consumableRole). affordsTask(whisky, eatingDrinkingTask).
}).
#pos(e2164@100, {goesIn(wind_instrument, music_room)}, {}, {
  obj(wind_instrument). hasRole(wind_instrument, musicalInstrumentRole). affordsTask(wind_instrument, leisureTask).
}).
#pos(e2165@100, {goesIn(window, bedroom)}, {}, {
  obj(window). hasRole(window, furnitureRole). affordsTask(window, leisureTask).
}).
#pos(e2166@100, {goesIn(window, garage)}, {}, {
  obj(window). hasRole(window, furnitureRole). affordsTask(window, leisureTask).
}).
#pos(e2167@100, {goesIn(window, storage_room)}, {}, {
  obj(window). hasRole(window, furnitureRole). affordsTask(window, leisureTask).
}).
#pos(e2168@100, {goesIn(window_curtain, bedroom)}, {}, {
  obj(window_curtain). hasRole(window_curtain, decorationRole). affordsTask(window_curtain, leisureTask).
}).
#pos(e2169@100, {goesIn(window_curtain, kitchen)}, {}, {
  obj(window_curtain). hasRole(window_curtain, decorationRole). affordsTask(window_curtain, leisureTask).
}).
#pos(e2170@100, {goesIn(window_curtain, living_room)}, {}, {
  obj(window_curtain). hasRole(window_curtain, decorationRole). affordsTask(window_curtain, leisureTask).
}).
#pos(e2171@100, {goesIn(window_tab, bedroom)}, {}, {
  obj(window_tab). hasRole(window_tab, toolRole). affordsTask(window_tab, maintenanceTask).
}).
#pos(e2172@100, {goesIn(window_tab, garage)}, {}, {
  obj(window_tab). hasRole(window_tab, toolRole). affordsTask(window_tab, maintenanceTask).
}).
#pos(e2173@100, {goesIn(window_tab, storage_room)}, {}, {
  obj(window_tab). hasRole(window_tab, toolRole). affordsTask(window_tab, maintenanceTask).
}).
#pos(e2174@100, {goesIn(windows, bedroom)}, {}, {
  obj(windows). hasRole(windows, furnitureRole).
}).
#pos(e2175@100, {goesIn(wine, bedroom)}, {}, {
  obj(wine). hasRole(wine, consumableRole). affordsTask(wine, eatingDrinkingTask).
}).
#pos(e2176@100, {goesIn(wine, closet)}, {}, {
  obj(wine). hasRole(wine, consumableRole). affordsTask(wine, eatingDrinkingTask).
}).
#pos(e2177@100, {goesIn(wine, storage_room)}, {}, {
  obj(wine). hasRole(wine, consumableRole). affordsTask(wine, eatingDrinkingTask).
}).
#pos(e2178@100, {goesIn(wine_cellar, bedroom)}, {}, {
  obj(wine_cellar). hasRole(wine_cellar, storageContainerRole). affordsTask(wine_cellar, storageTask).
}).
#pos(e2179@100, {goesIn(wine_cellar, closet)}, {}, {
  obj(wine_cellar). hasRole(wine_cellar, storageContainerRole). affordsTask(wine_cellar, storageTask).
}).
#pos(e2180@100, {goesIn(wine_cellar, storage_room)}, {}, {
  obj(wine_cellar). hasRole(wine_cellar, storageContainerRole). affordsTask(wine_cellar, storageTask).
}).
#pos(e2181@100, {goesIn(wine_glass, cabinet)}, {}, {
  obj(wine_glass). hasRole(wine_glass, utensilRole). affordsTask(wine_glass, eatingDrinkingTask).
}).
#pos(e2182@100, {goesIn(wood, bathroom)}, {}, {
  obj(wood). hasRole(wood, toolRole). affordsTask(wood, maintenanceTask).
}).
#pos(e2183@100, {goesIn(wood, bedroom)}, {}, {
  obj(wood). hasRole(wood, toolRole). affordsTask(wood, maintenanceTask).
}).
#pos(e2184@100, {goesIn(wood, closet)}, {}, {
  obj(wood). hasRole(wood, toolRole). affordsTask(wood, maintenanceTask).
}).
#pos(e2185@100, {goesIn(wood, garage)}, {}, {
  obj(wood). hasRole(wood, toolRole). affordsTask(wood, maintenanceTask).
}).
#pos(e2186@100, {goesIn(wood, table)}, {}, {
  obj(wood). hasRole(wood, toolRole). affordsTask(wood, maintenanceTask).
}).
#pos(e2187@100, {goesIn(wooden_floor, bedroom)}, {}, {
  obj(wooden_floor). hasRole(wooden_floor, furnitureRole). affordsTask(wooden_floor, leisureTask).
}).
#pos(e2188@100, {goesIn(wooden_floor, closet)}, {}, {
  obj(wooden_floor). hasRole(wooden_floor, furnitureRole). affordsTask(wooden_floor, leisureTask).
}).
#pos(e2189@100, {goesIn(wooden_floor, garden)}, {}, {
  obj(wooden_floor). hasRole(wooden_floor, furnitureRole). affordsTask(wooden_floor, leisureTask).
}).
#pos(e2190@100, {goesIn(wooden_rod, bedroom)}, {}, {
  obj(wooden_rod). hasRole(wooden_rod, toolRole). affordsTask(wooden_rod, maintenanceTask).
}).
#pos(e2191@100, {goesIn(wooden_rod, closet)}, {}, {
  obj(wooden_rod). hasRole(wooden_rod, toolRole). affordsTask(wooden_rod, maintenanceTask).
}).
#pos(e2192@100, {goesIn(wool, closet)}, {}, {
  obj(wool). hasRole(wool, consumableRole). affordsTask(wool, dressingTask).
}).
#pos(e2193@100, {goesIn(woolen_fabric, bedroom)}, {}, {
  obj(woolen_fabric). hasRole(woolen_fabric, clothingRole). affordsTask(woolen_fabric, dressingTask).
}).
#pos(e2194@100, {goesIn(woolen_fabric, closet)}, {}, {
  obj(woolen_fabric). hasRole(woolen_fabric, clothingRole). affordsTask(woolen_fabric, dressingTask).
}).
#pos(e2195@100, {goesIn(wrench, garage)}, {}, {
  obj(wrench). hasRole(wrench, toolRole). affordsTask(wrench, maintenanceTask).
}).
#pos(e2196@100, {goesIn(writing_brush, library)}, {}, {
  obj(writing_brush). hasRole(writing_brush, toolRole). affordsTask(writing_brush, leisureTask). affordsTask(writing_brush, workStudyTask).
}).
#pos(e2197@100, {goesIn(yard, bedroom)}, {}, {
  obj(yard). hasRole(yard, furnitureRole). affordsTask(yard, leisureTask). affordsTask(yard, maintenanceTask).
}).
#pos(e2198@100, {goesIn(yogurt, fridge)}, {}, {
  obj(yogurt). hasRole(yogurt, consumableRole). affordsTask(yogurt, eatingDrinkingTask).
}).

% --- Negative examples (weight 10) ---
#pos(e2199@10, {}, {goesIn(account_book, cabinet)}, {
  obj(account_book). hasRole(account_book, documentRole). affordsTask(account_book, workStudyTask).
}).
#pos(e2200@10, {}, {goesIn(account_book, sink)}, {
  obj(account_book). hasRole(account_book, documentRole). affordsTask(account_book, workStudyTask).
}).
#pos(e2201@10, {}, {goesIn(acne_medication, bed)}, {
  obj(acne_medication). hasRole(acne_medication, consumableRole). affordsTask(acne_medication, hygieneTask).
}).
#pos(e2202@10, {}, {goesIn(acne_medication, hallway)}, {
  obj(acne_medication). hasRole(acne_medication, consumableRole). affordsTask(acne_medication, hygieneTask).
}).
#pos(e2203@10, {}, {goesIn(acorns, closet)}, {
  obj(acorns). hasRole(acorns, consumableRole). affordsTask(acorns, eatingDrinkingTask).
}).
#pos(e2204@10, {}, {goesIn(acorns, fridge)}, {
  obj(acorns). hasRole(acorns, consumableRole). affordsTask(acorns, eatingDrinkingTask).
}).
#pos(e2205@10, {}, {goesIn(acoustic_guitar, dining_room)}, {
  obj(acoustic_guitar). hasRole(acoustic_guitar, musicalInstrumentRole). affordsTask(acoustic_guitar, leisureTask). affordsTask(acoustic_guitar, workStudyTask).
}).
#pos(e2206@10, {}, {goesIn(acoustic_guitar, sink)}, {
  obj(acoustic_guitar). hasRole(acoustic_guitar, musicalInstrumentRole). affordsTask(acoustic_guitar, leisureTask). affordsTask(acoustic_guitar, workStudyTask).
}).
#pos(e2207@10, {}, {goesIn(acrylic, bedroom)}, {
  obj(acrylic). hasRole(acrylic, toolRole). affordsTask(acrylic, maintenanceTask).
}).
#pos(e2208@10, {}, {goesIn(acrylic, sink)}, {
  obj(acrylic). hasRole(acrylic, toolRole). affordsTask(acrylic, maintenanceTask).
}).
#pos(e2209@10, {}, {goesIn(air_conditioner, bed)}, {
  obj(air_conditioner). hasRole(air_conditioner, applianceRole). affordsTask(air_conditioner, maintenanceTask).
}).
#pos(e2210@10, {}, {goesIn(air_conditioner, library)}, {
  obj(air_conditioner). hasRole(air_conditioner, applianceRole). affordsTask(air_conditioner, maintenanceTask).
}).
#pos(e2211@10, {}, {goesIn(air_conditioning, bathroom)}, {
  obj(air_conditioning). hasRole(air_conditioning, applianceRole). affordsTask(air_conditioning, storageTask).
}).
#pos(e2212@10, {}, {goesIn(air_conditioning, cabinet)}, {
  obj(air_conditioning). hasRole(air_conditioning, applianceRole). affordsTask(air_conditioning, storageTask).
}).
#pos(e2213@10, {}, {goesIn(album, garage)}, {
  obj(album). hasRole(album, storageContainerRole). affordsTask(album, leisureTask).
}).
#pos(e2214@10, {}, {goesIn(album, garden)}, {
  obj(album). hasRole(album, storageContainerRole). affordsTask(album, leisureTask).
}).
#pos(e2215@10, {}, {goesIn(alcohol, pantry)}, {
  obj(alcohol). hasRole(alcohol, consumableRole). affordsTask(alcohol, leisureTask).
}).
#pos(e2216@10, {}, {goesIn(alcohol, sink)}, {
  obj(alcohol). hasRole(alcohol, consumableRole). affordsTask(alcohol, leisureTask).
}).
#pos(e2217@10, {}, {goesIn(aluminum_foil, bathroom)}, {
  obj(aluminum_foil). hasRole(aluminum_foil, cookwareRole). affordsTask(aluminum_foil, foodPreparationTask).
}).
#pos(e2218@10, {}, {goesIn(aluminum_foil, pantry)}, {
  obj(aluminum_foil). hasRole(aluminum_foil, cookwareRole). affordsTask(aluminum_foil, foodPreparationTask).
}).
#pos(e2219@10, {}, {goesIn(apple, garage)}, {
  obj(apple). hasRole(apple, consumableRole). affordsTask(apple, eatingDrinkingTask).
}).
#pos(e2220@10, {}, {goesIn(apple, table)}, {
  obj(apple). hasRole(apple, consumableRole). affordsTask(apple, eatingDrinkingTask).
}).
#pos(e2221@10, {}, {goesIn(apples, library)}, {
  obj(apples). hasRole(apples, consumableRole). affordsTask(apples, eatingDrinkingTask).
}).
#pos(e2222@10, {}, {goesIn(apples, playroom)}, {
  obj(apples). hasRole(apples, consumableRole). affordsTask(apples, eatingDrinkingTask).
}).
#pos(e2223@10, {}, {goesIn(appointment_book, fridge)}, {
  obj(appointment_book). hasRole(appointment_book, documentRole). affordsTask(appointment_book, workStudyTask).
}).
#pos(e2224@10, {}, {goesIn(appointment_book, library)}, {
  obj(appointment_book). hasRole(appointment_book, documentRole). affordsTask(appointment_book, workStudyTask).
}).
#pos(e2225@10, {}, {goesIn(arch, hallway)}, {
  obj(arch). hasRole(arch, furnitureRole). affordsTask(arch, storageTask).
}).
#pos(e2226@10, {}, {goesIn(arch, storage_room)}, {
  obj(arch). hasRole(arch, furnitureRole). affordsTask(arch, storageTask).
}).
#pos(e2227@10, {}, {goesIn(armchair, bathroom)}, {
  obj(armchair). hasRole(armchair, furnitureRole). affordsTask(armchair, leisureTask).
}).
#pos(e2228@10, {}, {goesIn(armchair, dining_room)}, {
  obj(armchair). hasRole(armchair, furnitureRole). affordsTask(armchair, leisureTask).
}).
#pos(e2229@10, {}, {goesIn(armoire, home_office)}, {
  obj(armoire). hasRole(armoire, furnitureRole). affordsTask(armoire, storageTask).
}).
#pos(e2230@10, {}, {goesIn(armoire, library)}, {
  obj(armoire). hasRole(armoire, furnitureRole). affordsTask(armoire, storageTask).
}).
#pos(e2231@10, {}, {goesIn(artichoke_hearts, closet)}, {
  obj(artichoke_hearts). hasRole(artichoke_hearts, consumableRole). affordsTask(artichoke_hearts, eatingDrinkingTask).
}).
#pos(e2232@10, {}, {goesIn(artichoke_hearts, garage)}, {
  obj(artichoke_hearts). hasRole(artichoke_hearts, consumableRole). affordsTask(artichoke_hearts, eatingDrinkingTask).
}).
#pos(e2233@10, {}, {goesIn(artichokes, drawer)}, {
  obj(artichokes). hasRole(artichokes, consumableRole). affordsTask(artichokes, eatingDrinkingTask).
}).
#pos(e2234@10, {}, {goesIn(artichokes, home_office)}, {
  obj(artichokes). hasRole(artichokes, consumableRole). affordsTask(artichokes, eatingDrinkingTask).
}).
#pos(e2235@10, {}, {goesIn(aspirin, bedroom)}, {
  obj(aspirin).
}).
#pos(e2236@10, {}, {goesIn(aspirin, cabinet)}, {
  obj(aspirin).
}).
#pos(e2237@10, {}, {goesIn(attache_case, closet)}, {
  obj(attache_case). hasRole(attache_case, storageContainerRole). affordsTask(attache_case, storageTask).
}).
#pos(e2238@10, {}, {goesIn(attache_case, pantry)}, {
  obj(attache_case). hasRole(attache_case, storageContainerRole). affordsTask(attache_case, storageTask).
}).
#pos(e2239@10, {}, {goesIn(baby, kitchen)}, {
  obj(baby). hasRole(baby, entertainmentRole). affordsTask(baby, leisureTask).
}).
#pos(e2240@10, {}, {goesIn(baby, storage_room)}, {
  obj(baby). hasRole(baby, entertainmentRole). affordsTask(baby, leisureTask).
}).
#pos(e2241@10, {}, {goesIn(back_garden, bed)}, {
  obj(back_garden). hasRole(back_garden, storageContainerRole). affordsTask(back_garden, gardeningTask).
}).
#pos(e2242@10, {}, {goesIn(back_garden, garden)}, {
  obj(back_garden). hasRole(back_garden, storageContainerRole). affordsTask(back_garden, gardeningTask).
}).
#pos(e2243@10, {}, {goesIn(backyard, living_room)}, {
  obj(backyard). hasRole(backyard, furnitureRole). affordsTask(backyard, gardeningTask). affordsTask(backyard, leisureTask).
}).
#pos(e2244@10, {}, {goesIn(backyard, playroom)}, {
  obj(backyard). hasRole(backyard, furnitureRole). affordsTask(backyard, gardeningTask). affordsTask(backyard, leisureTask).
}).
#pos(e2245@10, {}, {goesIn(bag, closet)}, {
  obj(bag). hasRole(bag, storageContainerRole). affordsTask(bag, storageTask).
}).
#pos(e2246@10, {}, {goesIn(bag, library)}, {
  obj(bag). hasRole(bag, storageContainerRole). affordsTask(bag, storageTask).
}).
#pos(e2247@10, {}, {goesIn(baggage_trunk, bedroom)}, {
  obj(baggage_trunk). hasRole(baggage_trunk, storageContainerRole). affordsTask(baggage_trunk, storageTask).
}).
#pos(e2248@10, {}, {goesIn(baggage_trunk, pantry)}, {
  obj(baggage_trunk). hasRole(baggage_trunk, storageContainerRole). affordsTask(baggage_trunk, storageTask).
}).
#pos(e2249@10, {}, {goesIn(baking_oven, hallway)}, {
  obj(baking_oven). hasRole(baking_oven, cookwareRole). affordsTask(baking_oven, foodPreparationTask).
}).
#pos(e2250@10, {}, {goesIn(baking_oven, table)}, {
  obj(baking_oven). hasRole(baking_oven, cookwareRole). affordsTask(baking_oven, foodPreparationTask).
}).
#pos(e2251@10, {}, {goesIn(balcony, kitchen)}, {
  obj(balcony). hasRole(balcony, furnitureRole). affordsTask(balcony, leisureTask).
}).
#pos(e2252@10, {}, {goesIn(balcony, shelf)}, {
  obj(balcony). hasRole(balcony, furnitureRole). affordsTask(balcony, leisureTask).
}).
#pos(e2253@10, {}, {goesIn(balcony_railing, drawer)}, {
  obj(balcony_railing). hasRole(balcony_railing, furnitureRole). affordsTask(balcony_railing, leisureTask).
}).
#pos(e2254@10, {}, {goesIn(balcony_railing, trash)}, {
  obj(balcony_railing). hasRole(balcony_railing, furnitureRole). affordsTask(balcony_railing, leisureTask).
}).
#pos(e2255@10, {}, {goesIn(balcony_seat, bed)}, {
  obj(balcony_seat). hasRole(balcony_seat, furnitureRole). affordsTask(balcony_seat, leisureTask).
}).
#pos(e2256@10, {}, {goesIn(balcony_seat, bedroom)}, {
  obj(balcony_seat). hasRole(balcony_seat, furnitureRole). affordsTask(balcony_seat, leisureTask).
}).
#pos(e2257@10, {}, {goesIn(ballpoint_pen, garage)}, {
  obj(ballpoint_pen). hasRole(ballpoint_pen, toolRole).
}).
#pos(e2258@10, {}, {goesIn(ballpoint_pen, trash)}, {
  obj(ballpoint_pen). hasRole(ballpoint_pen, toolRole).
}).
#pos(e2259@10, {}, {goesIn(banana, bedroom)}, {
  obj(banana). hasRole(banana, consumableRole). affordsTask(banana, eatingDrinkingTask).
}).
#pos(e2260@10, {}, {goesIn(banana, garden)}, {
  obj(banana). hasRole(banana, consumableRole). affordsTask(banana, eatingDrinkingTask).
}).
#pos(e2261@10, {}, {goesIn(banana_peels, cabinet)}, {
  obj(banana_peels). hasRole(banana_peels, wasteRole). affordsTask(banana_peels, wasteDisposalTask).
}).
#pos(e2262@10, {}, {goesIn(banana_peels, fridge)}, {
  obj(banana_peels). hasRole(banana_peels, wasteRole). affordsTask(banana_peels, wasteDisposalTask).
}).
#pos(e2263@10, {}, {goesIn(bandages, garden)}, {
  obj(bandages). hasRole(bandages, safetyEquipmentRole). affordsTask(bandages, hygieneTask).
}).
#pos(e2264@10, {}, {goesIn(bandages, laundry_room)}, {
  obj(bandages). hasRole(bandages, safetyEquipmentRole). affordsTask(bandages, hygieneTask).
}).
#pos(e2265@10, {}, {goesIn(bandaids, library)}, {
  obj(bandaids). hasRole(bandaids, consumableRole). hasRole(bandaids, safetyEquipmentRole). affordsTask(bandaids, hygieneTask). affordsTask(bandaids, wasteDisposalTask).
}).
#pos(e2266@10, {}, {goesIn(bandaids, playroom)}, {
  obj(bandaids). hasRole(bandaids, consumableRole). hasRole(bandaids, safetyEquipmentRole). affordsTask(bandaids, hygieneTask). affordsTask(bandaids, wasteDisposalTask).
}).
#pos(e2267@10, {}, {goesIn(bar_stool, dining_room)}, {
  obj(bar_stool). hasRole(bar_stool, furnitureRole). affordsTask(bar_stool, leisureTask).
}).
#pos(e2268@10, {}, {goesIn(bar_stool, laundry_room)}, {
  obj(bar_stool). hasRole(bar_stool, furnitureRole). affordsTask(bar_stool, leisureTask).
}).
#pos(e2269@10, {}, {goesIn(barbecue, drawer)}, {
  obj(barbecue). hasRole(barbecue, cookwareRole). affordsTask(barbecue, foodPreparationTask).
}).
#pos(e2270@10, {}, {goesIn(barbecue, kitchen)}, {
  obj(barbecue). hasRole(barbecue, cookwareRole). affordsTask(barbecue, foodPreparationTask).
}).
#pos(e2271@10, {}, {goesIn(basement, cabinet)}, {
  obj(basement). hasRole(basement, furnitureRole). affordsTask(basement, storageTask).
}).
#pos(e2272@10, {}, {goesIn(basement, hallway)}, {
  obj(basement). hasRole(basement, furnitureRole). affordsTask(basement, storageTask).
}).
#pos(e2273@10, {}, {goesIn(basket, sink)}, {
  obj(basket). hasRole(basket, storageContainerRole). affordsTask(basket, storageTask).
}).
#pos(e2274@10, {}, {goesIn(basket, storage_room)}, {
  obj(basket). hasRole(basket, storageContainerRole). affordsTask(basket, storageTask).
}).
#pos(e2275@10, {}, {goesIn(basket_with_handle, dining_room)}, {
  obj(basket_with_handle). hasRole(basket_with_handle, storageContainerRole). affordsTask(basket_with_handle, storageTask).
}).
#pos(e2276@10, {}, {goesIn(basket_with_handle, playroom)}, {
  obj(basket_with_handle). hasRole(basket_with_handle, storageContainerRole). affordsTask(basket_with_handle, storageTask).
}).
#pos(e2277@10, {}, {goesIn(bass, fridge)}, {
  obj(bass). hasRole(bass, consumableRole). affordsTask(bass, eatingDrinkingTask).
}).
#pos(e2278@10, {}, {goesIn(bass, garden)}, {
  obj(bass). hasRole(bass, consumableRole). affordsTask(bass, eatingDrinkingTask).
}).
#pos(e2279@10, {}, {goesIn(bat, kitchen)}, {
  obj(bat). hasRole(bat, toolRole). affordsTask(bat, leisureTask).
}).
#pos(e2280@10, {}, {goesIn(bat, library)}, {
  obj(bat). hasRole(bat, toolRole). affordsTask(bat, leisureTask).
}).
#pos(e2281@10, {}, {goesIn(bath, garden)}, {
  obj(bath). hasRole(bath, cleaningToolRole). affordsTask(bath, hygieneTask). affordsTask(bath, leisureTask).
}).
#pos(e2282@10, {}, {goesIn(bath, storage_room)}, {
  obj(bath). hasRole(bath, cleaningToolRole). affordsTask(bath, hygieneTask). affordsTask(bath, leisureTask).
}).
#pos(e2283@10, {}, {goesIn(bath_shower, garden)}, {
  obj(bath_shower). hasRole(bath_shower, cleaningToolRole). affordsTask(bath_shower, hygieneTask).
}).
#pos(e2284@10, {}, {goesIn(bath_shower, shelf)}, {
  obj(bath_shower). hasRole(bath_shower, cleaningToolRole). affordsTask(bath_shower, hygieneTask).
}).
#pos(e2285@10, {}, {goesIn(bathroom, home_office)}, {
  obj(bathroom). hasRole(bathroom, furnitureRole). affordsTask(bathroom, hygieneTask). affordsTask(bathroom, leisureTask).
}).
#pos(e2286@10, {}, {goesIn(bathroom, trash)}, {
  obj(bathroom). hasRole(bathroom, furnitureRole). affordsTask(bathroom, hygieneTask). affordsTask(bathroom, leisureTask).
}).
#pos(e2287@10, {}, {goesIn(batten, bed)}, {
  obj(batten). hasRole(batten, toolRole). affordsTask(batten, maintenanceTask).
}).
#pos(e2288@10, {}, {goesIn(batten, garden)}, {
  obj(batten). hasRole(batten, toolRole). affordsTask(batten, maintenanceTask).
}).
#pos(e2289@10, {}, {goesIn(batter, bed)}, {
  obj(batter). hasRole(batter, consumableRole). affordsTask(batter, foodPreparationTask).
}).
#pos(e2290@10, {}, {goesIn(batter, kitchen)}, {
  obj(batter). hasRole(batter, consumableRole). affordsTask(batter, foodPreparationTask).
}).
#pos(e2291@10, {}, {goesIn(battery_charger, garden)}, {
  obj(battery_charger). hasRole(battery_charger, toolRole). affordsTask(battery_charger, maintenanceTask).
}).
#pos(e2292@10, {}, {goesIn(battery_charger, laundry_room)}, {
  obj(battery_charger). hasRole(battery_charger, toolRole). affordsTask(battery_charger, maintenanceTask).
}).
#pos(e2293@10, {}, {goesIn(bay, cabinet)}, {
  obj(bay). hasRole(bay, storageContainerRole). affordsTask(bay, storageTask).
}).
#pos(e2294@10, {}, {goesIn(bay, garage)}, {
  obj(bay). hasRole(bay, storageContainerRole). affordsTask(bay, storageTask).
}).
#pos(e2295@10, {}, {goesIn(bay_window, home_office)}, {
  obj(bay_window). hasRole(bay_window, furnitureRole). affordsTask(bay_window, leisureTask).
}).
#pos(e2296@10, {}, {goesIn(bay_window, sink)}, {
  obj(bay_window). hasRole(bay_window, furnitureRole). affordsTask(bay_window, leisureTask).
}).
#pos(e2297@10, {}, {goesIn(beach_towel, garage)}, {
  obj(beach_towel). hasRole(beach_towel, beddingRole). affordsTask(beach_towel, leisureTask).
}).
#pos(e2298@10, {}, {goesIn(beach_towel, playroom)}, {
  obj(beach_towel). hasRole(beach_towel, beddingRole). affordsTask(beach_towel, leisureTask).
}).
#pos(e2299@10, {}, {goesIn(beam, library)}, {
  obj(beam). hasRole(beam, toolRole). affordsTask(beam, maintenanceTask).
}).
#pos(e2300@10, {}, {goesIn(beam, table)}, {
  obj(beam). hasRole(beam, toolRole). affordsTask(beam, maintenanceTask).
}).
#pos(e2301@10, {}, {goesIn(bean_bag_chair, drawer)}, {
  obj(bean_bag_chair). hasRole(bean_bag_chair, furnitureRole). affordsTask(bean_bag_chair, leisureTask).
}).
#pos(e2302@10, {}, {goesIn(bean_bag_chair, playroom)}, {
  obj(bean_bag_chair). hasRole(bean_bag_chair, furnitureRole). affordsTask(bean_bag_chair, leisureTask).
}).
#pos(e2303@10, {}, {goesIn(beanbag, dining_room)}, {
  obj(beanbag). hasRole(beanbag, furnitureRole). affordsTask(beanbag, leisureTask).
}).
#pos(e2304@10, {}, {goesIn(beanbag, garden)}, {
  obj(beanbag). hasRole(beanbag, furnitureRole). affordsTask(beanbag, leisureTask).
}).
#pos(e2305@10, {}, {goesIn(beanbag_chair, fridge)}, {
  obj(beanbag_chair). hasRole(beanbag_chair, furnitureRole). affordsTask(beanbag_chair, leisureTask). affordsTask(beanbag_chair, sleepingTask).
}).
#pos(e2306@10, {}, {goesIn(beanbag_chair, playroom)}, {
  obj(beanbag_chair). hasRole(beanbag_chair, furnitureRole). affordsTask(beanbag_chair, leisureTask). affordsTask(beanbag_chair, sleepingTask).
}).
#pos(e2307@10, {}, {goesIn(bed, hallway)}, {
  obj(bed). hasRole(bed, furnitureRole). affordsTask(bed, sleepingTask).
}).
#pos(e2308@10, {}, {goesIn(bed, shelf)}, {
  obj(bed). hasRole(bed, furnitureRole). affordsTask(bed, sleepingTask).
}).
#pos(e2309@10, {}, {goesIn(bed_sheet, music_room)}, {
  obj(bed_sheet). hasRole(bed_sheet, beddingRole). affordsTask(bed_sheet, sleepingTask).
}).
#pos(e2310@10, {}, {goesIn(bed_sheet, storage_room)}, {
  obj(bed_sheet). hasRole(bed_sheet, beddingRole). affordsTask(bed_sheet, sleepingTask).
}).
#pos(e2311@10, {}, {goesIn(bedroom, laundry_room)}, {
  obj(bedroom). hasRole(bedroom, furnitureRole). affordsTask(bedroom, sleepingTask).
}).
#pos(e2312@10, {}, {goesIn(bedroom, shelf)}, {
  obj(bedroom). hasRole(bedroom, furnitureRole). affordsTask(bedroom, sleepingTask).
}).
#pos(e2313@10, {}, {goesIn(beds, garage)}, {
  obj(beds). hasRole(beds, furnitureRole). affordsTask(beds, sleepingTask).
}).
#pos(e2314@10, {}, {goesIn(beds, kitchen)}, {
  obj(beds). hasRole(beds, furnitureRole). affordsTask(beds, sleepingTask).
}).
#pos(e2315@10, {}, {goesIn(beer, drawer)}, {
  obj(beer). hasRole(beer, consumableRole). affordsTask(beer, eatingDrinkingTask).
}).
#pos(e2316@10, {}, {goesIn(beer, table)}, {
  obj(beer). hasRole(beer, consumableRole). affordsTask(beer, eatingDrinkingTask).
}).
#pos(e2317@10, {}, {goesIn(beer_mug, bed)}, {
  obj(beer_mug). hasRole(beer_mug, utensilRole). affordsTask(beer_mug, eatingDrinkingTask).
}).
#pos(e2318@10, {}, {goesIn(beer_mug, bedroom)}, {
  obj(beer_mug). hasRole(beer_mug, utensilRole). affordsTask(beer_mug, eatingDrinkingTask).
}).
#pos(e2319@10, {}, {goesIn(beets, cabinet)}, {
  obj(beets). hasRole(beets, consumableRole). affordsTask(beets, eatingDrinkingTask).
}).
#pos(e2320@10, {}, {goesIn(beets, closet)}, {
  obj(beets). hasRole(beets, consumableRole). affordsTask(beets, eatingDrinkingTask).
}).
#pos(e2321@10, {}, {goesIn(bell, dining_room)}, {
  obj(bell). hasRole(bell, toolRole). affordsTask(bell, maintenanceTask).
}).
#pos(e2322@10, {}, {goesIn(bell, storage_room)}, {
  obj(bell). hasRole(bell, toolRole). affordsTask(bell, maintenanceTask).
}).
#pos(e2323@10, {}, {goesIn(belt, living_room)}, {
  obj(belt). hasRole(belt, clothingRole). affordsTask(belt, dressingTask).
}).
#pos(e2324@10, {}, {goesIn(belt, trash)}, {
  obj(belt). hasRole(belt, clothingRole). affordsTask(belt, dressingTask).
}).
#pos(e2325@10, {}, {goesIn(bench, bedroom)}, {
  obj(bench). hasRole(bench, furnitureRole). affordsTask(bench, leisureTask). affordsTask(bench, storageTask).
}).
#pos(e2326@10, {}, {goesIn(bench, sink)}, {
  obj(bench). hasRole(bench, furnitureRole). affordsTask(bench, leisureTask). affordsTask(bench, storageTask).
}).
#pos(e2327@10, {}, {goesIn(beverage, laundry_room)}, {
  obj(beverage). hasRole(beverage, consumableRole). affordsTask(beverage, eatingDrinkingTask).
}).
#pos(e2328@10, {}, {goesIn(beverage, sink)}, {
  obj(beverage). hasRole(beverage, consumableRole). affordsTask(beverage, eatingDrinkingTask).
}).
#pos(e2329@10, {}, {goesIn(bicycle, living_room)}, {
  obj(bicycle). hasRole(bicycle, furnitureRole). affordsTask(bicycle, leisureTask). affordsTask(bicycle, workStudyTask).
}).
#pos(e2330@10, {}, {goesIn(bicycle, pantry)}, {
  obj(bicycle). hasRole(bicycle, furnitureRole). affordsTask(bicycle, leisureTask). affordsTask(bicycle, workStudyTask).
}).
#pos(e2331@10, {}, {goesIn(bicycle_storage_area, garden)}, {
  obj(bicycle_storage_area). hasRole(bicycle_storage_area, storageContainerRole). affordsTask(bicycle_storage_area, storageTask).
}).
#pos(e2332@10, {}, {goesIn(bicycle_storage_area, playroom)}, {
  obj(bicycle_storage_area). hasRole(bicycle_storage_area, storageContainerRole). affordsTask(bicycle_storage_area, storageTask).
}).
#pos(e2333@10, {}, {goesIn(bicycles, bathroom)}, {
  obj(bicycles).
}).
#pos(e2334@10, {}, {goesIn(bicycles, table)}, {
  obj(bicycles).
}).
#pos(e2335@10, {}, {goesIn(bike, cabinet)}, {
  obj(bike). hasRole(bike, furnitureRole). affordsTask(bike, leisureTask). affordsTask(bike, workStudyTask).
}).
#pos(e2336@10, {}, {goesIn(bike, table)}, {
  obj(bike). hasRole(bike, furnitureRole). affordsTask(bike, leisureTask). affordsTask(bike, workStudyTask).
}).
#pos(e2337@10, {}, {goesIn(bill, garage)}, {
  obj(bill). hasRole(bill, documentRole). affordsTask(bill, leisureTask).
}).
#pos(e2338@10, {}, {goesIn(bill, pantry)}, {
  obj(bill). hasRole(bill, documentRole). affordsTask(bill, leisureTask).
}).
#pos(e2339@10, {}, {goesIn(bill_file, hallway)}, {
  obj(bill_file). hasRole(bill_file, storageContainerRole). affordsTask(bill_file, storageTask).
}).
#pos(e2340@10, {}, {goesIn(bill_file, storage_room)}, {
  obj(bill_file). hasRole(bill_file, storageContainerRole). affordsTask(bill_file, storageTask).
}).
#pos(e2341@10, {}, {goesIn(binder, cabinet)}, {
  obj(binder). hasRole(binder, storageContainerRole). affordsTask(binder, storageTask).
}).
#pos(e2342@10, {}, {goesIn(binder, garden)}, {
  obj(binder). hasRole(binder, storageContainerRole). affordsTask(binder, storageTask).
}).
#pos(e2343@10, {}, {goesIn(bird, dining_room)}, {
  obj(bird). hasRole(bird, entertainmentRole). affordsTask(bird, gardeningTask). affordsTask(bird, leisureTask).
}).
#pos(e2344@10, {}, {goesIn(bird, living_room)}, {
  obj(bird). hasRole(bird, entertainmentRole). affordsTask(bird, gardeningTask). affordsTask(bird, leisureTask).
}).
#pos(e2345@10, {}, {goesIn(birds, bathroom)}, {
  obj(birds). hasRole(birds, consumableRole). affordsTask(birds, eatingDrinkingTask).
}).
#pos(e2346@10, {}, {goesIn(birds, music_room)}, {
  obj(birds). hasRole(birds, consumableRole). affordsTask(birds, eatingDrinkingTask).
}).
#pos(e2347@10, {}, {goesIn(birth_control_pill, garden)}, {
  obj(birth_control_pill). hasRole(birth_control_pill, consumableRole). affordsTask(birth_control_pill, eatingDrinkingTask).
}).
#pos(e2348@10, {}, {goesIn(birth_control_pill, pantry)}, {
  obj(birth_control_pill). hasRole(birth_control_pill, consumableRole). affordsTask(birth_control_pill, eatingDrinkingTask).
}).
#pos(e2349@10, {}, {goesIn(blanket, fridge)}, {
  obj(blanket). hasRole(blanket, beddingRole). affordsTask(blanket, sleepingTask).
}).
#pos(e2350@10, {}, {goesIn(blanket, shelf)}, {
  obj(blanket). hasRole(blanket, beddingRole). affordsTask(blanket, sleepingTask).
}).
#pos(e2351@10, {}, {goesIn(blanketing, closet)}, {
  obj(blanketing). hasRole(blanketing, beddingRole). affordsTask(blanketing, sleepingTask).
}).
#pos(e2352@10, {}, {goesIn(blanketing, table)}, {
  obj(blanketing). hasRole(blanketing, beddingRole). affordsTask(blanketing, sleepingTask).
}).
#pos(e2353@10, {}, {goesIn(blankets, kitchen)}, {
  obj(blankets). hasRole(blankets, beddingRole). affordsTask(blankets, sleepingTask).
}).
#pos(e2354@10, {}, {goesIn(blankets, shelf)}, {
  obj(blankets). hasRole(blankets, beddingRole). affordsTask(blankets, sleepingTask).
}).
#pos(e2355@10, {}, {goesIn(blowdryer, garage)}, {
  obj(blowdryer). hasRole(blowdryer, applianceRole). affordsTask(blowdryer, leisureTask).
}).
#pos(e2356@10, {}, {goesIn(blowdryer, table)}, {
  obj(blowdryer). hasRole(blowdryer, applianceRole). affordsTask(blowdryer, leisureTask).
}).
#pos(e2357@10, {}, {goesIn(board_game, drawer)}, {
  obj(board_game). hasRole(board_game, entertainmentRole). affordsTask(board_game, leisureTask).
}).
#pos(e2358@10, {}, {goesIn(board_game, laundry_room)}, {
  obj(board_game). hasRole(board_game, entertainmentRole). affordsTask(board_game, leisureTask).
}).
#pos(e2359@10, {}, {goesIn(book, dining_room)}, {
  obj(book). hasRole(book, documentRole). affordsTask(book, leisureTask). affordsTask(book, workStudyTask).
}).
#pos(e2360@10, {}, {goesIn(book, storage_room)}, {
  obj(book). hasRole(book, documentRole). affordsTask(book, leisureTask). affordsTask(book, workStudyTask).
}).
#pos(e2361@10, {}, {goesIn(book_end, sink)}, {
  obj(book_end). hasRole(book_end, furnitureRole). affordsTask(book_end, storageTask).
}).
#pos(e2362@10, {}, {goesIn(book_end, storage_room)}, {
  obj(book_end). hasRole(book_end, furnitureRole). affordsTask(book_end, storageTask).
}).
#pos(e2363@10, {}, {goesIn(bookcase, bathroom)}, {
  obj(bookcase). hasRole(bookcase, storageContainerRole). affordsTask(bookcase, storageTask).
}).
#pos(e2364@10, {}, {goesIn(bookcase, table)}, {
  obj(bookcase). hasRole(bookcase, storageContainerRole). affordsTask(bookcase, storageTask).
}).
#pos(e2365@10, {}, {goesIn(bookend, hallway)}, {
  obj(bookend). hasRole(bookend, furnitureRole). affordsTask(bookend, storageTask).
}).
#pos(e2366@10, {}, {goesIn(bookend, music_room)}, {
  obj(bookend). hasRole(bookend, furnitureRole). affordsTask(bookend, storageTask).
}).
#pos(e2367@10, {}, {goesIn(books, bathroom)}, {
  obj(books). hasRole(books, documentRole). affordsTask(books, leisureTask). affordsTask(books, workStudyTask).
}).
#pos(e2368@10, {}, {goesIn(books, closet)}, {
  obj(books). hasRole(books, documentRole). affordsTask(books, leisureTask). affordsTask(books, workStudyTask).
}).
#pos(e2369@10, {}, {goesIn(bookshelf, hallway)}, {
  obj(bookshelf). hasRole(bookshelf, storageContainerRole). affordsTask(bookshelf, storageTask).
}).
#pos(e2370@10, {}, {goesIn(bookshelf, kitchen)}, {
  obj(bookshelf). hasRole(bookshelf, storageContainerRole). affordsTask(bookshelf, storageTask).
}).
#pos(e2371@10, {}, {goesIn(boots, bed)}, {
  obj(boots). hasRole(boots, clothingRole). affordsTask(boots, dressingTask).
}).
#pos(e2372@10, {}, {goesIn(boots, garden)}, {
  obj(boots). hasRole(boots, clothingRole). affordsTask(boots, dressingTask).
}).
#pos(e2373@10, {}, {goesIn(bottle, garden)}, {
  obj(bottle). hasRole(bottle, storageContainerRole). affordsTask(bottle, eatingDrinkingTask).
}).
#pos(e2374@10, {}, {goesIn(bottle, sink)}, {
  obj(bottle). hasRole(bottle, storageContainerRole). affordsTask(bottle, eatingDrinkingTask).
}).
#pos(e2375@10, {}, {goesIn(bottle_of_vodka, bedroom)}, {
  obj(bottle_of_vodka). hasRole(bottle_of_vodka, consumableRole). affordsTask(bottle_of_vodka, eatingDrinkingTask).
}).
#pos(e2376@10, {}, {goesIn(bottle_of_vodka, music_room)}, {
  obj(bottle_of_vodka). hasRole(bottle_of_vodka, consumableRole). affordsTask(bottle_of_vodka, eatingDrinkingTask).
}).
#pos(e2377@10, {}, {goesIn(bottled_water, bedroom)}, {
  obj(bottled_water). hasRole(bottled_water, consumableRole). affordsTask(bottled_water, eatingDrinkingTask).
}).
#pos(e2378@10, {}, {goesIn(bottled_water, playroom)}, {
  obj(bottled_water). hasRole(bottled_water, consumableRole). affordsTask(bottled_water, eatingDrinkingTask).
}).
#pos(e2379@10, {}, {goesIn(bowl, dining_room)}, {
  obj(bowl). hasRole(bowl, utensilRole). affordsTask(bowl, eatingDrinkingTask).
}).
#pos(e2380@10, {}, {goesIn(bowl, trash)}, {
  obj(bowl). hasRole(bowl, utensilRole). affordsTask(bowl, eatingDrinkingTask).
}).
#pos(e2381@10, {}, {goesIn(box, playroom)}, {
  obj(box). hasRole(box, storageContainerRole). affordsTask(box, storageTask).
}).
#pos(e2382@10, {}, {goesIn(box, sink)}, {
  obj(box). hasRole(box, storageContainerRole). affordsTask(box, storageTask).
}).
#pos(e2383@10, {}, {goesIn(boxes, fridge)}, {
  obj(boxes). hasRole(boxes, storageContainerRole). affordsTask(boxes, storageTask).
}).
#pos(e2384@10, {}, {goesIn(boxes, home_office)}, {
  obj(boxes). hasRole(boxes, storageContainerRole). affordsTask(boxes, storageTask).
}).
#pos(e2385@10, {}, {goesIn(bra, pantry)}, {
  obj(bra). hasRole(bra, clothingRole). affordsTask(bra, dressingTask).
}).
#pos(e2386@10, {}, {goesIn(bra, sink)}, {
  obj(bra). hasRole(bra, clothingRole). affordsTask(bra, dressingTask).
}).
#pos(e2387@10, {}, {goesIn(brass, fridge)}, {
  obj(brass). hasRole(brass, decorationRole).
}).
#pos(e2388@10, {}, {goesIn(brass, library)}, {
  obj(brass). hasRole(brass, decorationRole).
}).
#pos(e2389@10, {}, {goesIn(bread, drawer)}, {
  obj(bread). hasRole(bread, consumableRole). affordsTask(bread, eatingDrinkingTask). affordsTask(bread, foodPreparationTask).
}).
#pos(e2390@10, {}, {goesIn(bread, sink)}, {
  obj(bread). hasRole(bread, consumableRole). affordsTask(bread, eatingDrinkingTask). affordsTask(bread, foodPreparationTask).
}).
#pos(e2391@10, {}, {goesIn(breakfast, garden)}, {
  obj(breakfast). hasRole(breakfast, consumableRole). affordsTask(breakfast, eatingDrinkingTask).
}).
#pos(e2392@10, {}, {goesIn(breakfast, trash)}, {
  obj(breakfast). hasRole(breakfast, consumableRole). affordsTask(breakfast, eatingDrinkingTask).
}).
#pos(e2393@10, {}, {goesIn(bricks, laundry_room)}, {
  obj(bricks). hasRole(bricks, toolRole). affordsTask(bricks, maintenanceTask).
}).
#pos(e2394@10, {}, {goesIn(bricks, table)}, {
  obj(bricks). hasRole(bricks, toolRole). affordsTask(bricks, maintenanceTask).
}).
#pos(e2395@10, {}, {goesIn(briefcase, home_office)}, {
  obj(briefcase). hasRole(briefcase, storageContainerRole). affordsTask(briefcase, storageTask).
}).
#pos(e2396@10, {}, {goesIn(briefcase, sink)}, {
  obj(briefcase). hasRole(briefcase, storageContainerRole). affordsTask(briefcase, storageTask).
}).
#pos(e2397@10, {}, {goesIn(broccoli, living_room)}, {
  obj(broccoli). hasRole(broccoli, consumableRole). affordsTask(broccoli, eatingDrinkingTask).
}).
#pos(e2398@10, {}, {goesIn(broccoli, pantry)}, {
  obj(broccoli). hasRole(broccoli, consumableRole). affordsTask(broccoli, eatingDrinkingTask).
}).
#pos(e2399@10, {}, {goesIn(broom, dining_room)}, {
  obj(broom). hasRole(broom, cleaningToolRole). affordsTask(broom, cleaningTask).
}).
#pos(e2400@10, {}, {goesIn(broom, pantry)}, {
  obj(broom). hasRole(broom, cleaningToolRole). affordsTask(broom, cleaningTask).
}).
#pos(e2401@10, {}, {goesIn(brush, bedroom)}, {
  obj(brush). hasRole(brush, toolRole). affordsTask(brush, cleaningTask).
}).
#pos(e2402@10, {}, {goesIn(brush, fridge)}, {
  obj(brush). hasRole(brush, toolRole). affordsTask(brush, cleaningTask).
}).
#pos(e2403@10, {}, {goesIn(bucket, bathroom)}, {
  obj(bucket). hasRole(bucket, storageContainerRole). affordsTask(bucket, storageTask).
}).
#pos(e2404@10, {}, {goesIn(bucket, home_office)}, {
  obj(bucket). hasRole(bucket, storageContainerRole). affordsTask(bucket, storageTask).
}).
#pos(e2405@10, {}, {goesIn(bulb, playroom)}, {
  obj(bulb). hasRole(bulb, lightingRole). affordsTask(bulb, leisureTask).
}).
#pos(e2406@10, {}, {goesIn(bulb, shelf)}, {
  obj(bulb). hasRole(bulb, lightingRole). affordsTask(bulb, leisureTask).
}).
#pos(e2407@10, {}, {goesIn(bullet, garden)}, {
  obj(bullet). hasRole(bullet, toolRole). affordsTask(bullet, maintenanceTask).
}).
#pos(e2408@10, {}, {goesIn(bullet, table)}, {
  obj(bullet). hasRole(bullet, toolRole). affordsTask(bullet, maintenanceTask).
}).
#pos(e2409@10, {}, {goesIn(bungalow, bathroom)}, {
  obj(bungalow). hasRole(bungalow, furnitureRole). affordsTask(bungalow, leisureTask).
}).
#pos(e2410@10, {}, {goesIn(bungalow, garage)}, {
  obj(bungalow). hasRole(bungalow, furnitureRole). affordsTask(bungalow, leisureTask).
}).
#pos(e2411@10, {}, {goesIn(bureau, cabinet)}, {
  obj(bureau). hasRole(bureau, furnitureRole). affordsTask(bureau, storageTask).
}).
#pos(e2412@10, {}, {goesIn(bureau, table)}, {
  obj(bureau). hasRole(bureau, furnitureRole). affordsTask(bureau, storageTask).
}).
#pos(e2413@10, {}, {goesIn(butter, bed)}, {
  obj(butter). hasRole(butter, consumableRole). affordsTask(butter, eatingDrinkingTask).
}).
#pos(e2414@10, {}, {goesIn(butter, garage)}, {
  obj(butter). hasRole(butter, consumableRole). affordsTask(butter, eatingDrinkingTask).
}).
#pos(e2415@10, {}, {goesIn(buttons, bed)}, {
  obj(buttons). hasRole(buttons, toolRole). affordsTask(buttons, maintenanceTask).
}).
#pos(e2416@10, {}, {goesIn(buttons, bedroom)}, {
  obj(buttons). hasRole(buttons, toolRole). affordsTask(buttons, maintenanceTask).
}).
#pos(e2417@10, {}, {goesIn(cabbage, bedroom)}, {
  obj(cabbage). hasRole(cabbage, consumableRole). affordsTask(cabbage, eatingDrinkingTask).
}).
#pos(e2418@10, {}, {goesIn(cabbage, home_office)}, {
  obj(cabbage). hasRole(cabbage, consumableRole). affordsTask(cabbage, eatingDrinkingTask).
}).
#pos(e2419@10, {}, {goesIn(cabinets, fridge)}, {
  obj(cabinets). hasRole(cabinets, storageContainerRole). affordsTask(cabinets, storageTask).
}).
#pos(e2420@10, {}, {goesIn(cabinets, playroom)}, {
  obj(cabinets). hasRole(cabinets, storageContainerRole). affordsTask(cabinets, storageTask).
}).
#pos(e2421@10, {}, {goesIn(cable, garden)}, {
  obj(cable). hasRole(cable, toolRole). affordsTask(cable, maintenanceTask).
}).
#pos(e2422@10, {}, {goesIn(cable, playroom)}, {
  obj(cable). hasRole(cable, toolRole). affordsTask(cable, maintenanceTask).
}).
#pos(e2423@10, {}, {goesIn(cafe, drawer)}, {
  obj(cafe). hasRole(cafe, consumableRole). affordsTask(cafe, eatingDrinkingTask).
}).
#pos(e2424@10, {}, {goesIn(cafe, playroom)}, {
  obj(cafe). hasRole(cafe, consumableRole). affordsTask(cafe, eatingDrinkingTask).
}).
#pos(e2425@10, {}, {goesIn(cake, closet)}, {
  obj(cake). hasRole(cake, consumableRole). affordsTask(cake, eatingDrinkingTask).
}).
#pos(e2426@10, {}, {goesIn(cake, sink)}, {
  obj(cake). hasRole(cake, consumableRole). affordsTask(cake, eatingDrinkingTask).
}).
#pos(e2427@10, {}, {goesIn(calculator, living_room)}, {
  obj(calculator). hasRole(calculator, toolRole). affordsTask(calculator, workStudyTask).
}).
#pos(e2428@10, {}, {goesIn(calculator, playroom)}, {
  obj(calculator). hasRole(calculator, toolRole). affordsTask(calculator, workStudyTask).
}).
#pos(e2429@10, {}, {goesIn(calendar, garage)}, {
  obj(calendar). hasRole(calendar, documentRole). affordsTask(calendar, workStudyTask).
}).
#pos(e2430@10, {}, {goesIn(calendar, music_room)}, {
  obj(calendar). hasRole(calendar, documentRole). affordsTask(calendar, workStudyTask).
}).
#pos(e2431@10, {}, {goesIn(calendar_pad, drawer)}, {
  obj(calendar_pad). hasRole(calendar_pad, storageContainerRole). affordsTask(calendar_pad, leisureTask).
}).
#pos(e2432@10, {}, {goesIn(calendar_pad, laundry_room)}, {
  obj(calendar_pad). hasRole(calendar_pad, storageContainerRole). affordsTask(calendar_pad, leisureTask).
}).
#pos(e2433@10, {}, {goesIn(camera, cabinet)}, {
  obj(camera). hasRole(camera, toolRole). affordsTask(camera, leisureTask). affordsTask(camera, workStudyTask).
}).
#pos(e2434@10, {}, {goesIn(camera, table)}, {
  obj(camera). hasRole(camera, toolRole). affordsTask(camera, leisureTask). affordsTask(camera, workStudyTask).
}).
#pos(e2435@10, {}, {goesIn(can, laundry_room)}, {
  obj(can). hasRole(can, storageContainerRole). affordsTask(can, storageTask).
}).
#pos(e2436@10, {}, {goesIn(can, living_room)}, {
  obj(can). hasRole(can, storageContainerRole). affordsTask(can, storageTask).
}).
#pos(e2437@10, {}, {goesIn(can_opener, library)}, {
  obj(can_opener). hasRole(can_opener, toolRole). affordsTask(can_opener, foodPreparationTask).
}).
#pos(e2438@10, {}, {goesIn(can_opener, living_room)}, {
  obj(can_opener). hasRole(can_opener, toolRole). affordsTask(can_opener, foodPreparationTask).
}).
#pos(e2439@10, {}, {goesIn(candle, bed)}, {
  obj(candle). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e2440@10, {}, {goesIn(candle, closet)}, {
  obj(candle). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e2441@10, {}, {goesIn(candlestick, bed)}, {
  obj(candlestick). hasRole(candlestick, utensilRole). affordsTask(candlestick, leisureTask).
}).
#pos(e2442@10, {}, {goesIn(candlestick, kitchen)}, {
  obj(candlestick). hasRole(candlestick, utensilRole). affordsTask(candlestick, leisureTask).
}).
#pos(e2443@10, {}, {goesIn(candy, cabinet)}, {
  obj(candy). hasRole(candy, consumableRole). affordsTask(candy, eatingDrinkingTask).
}).
#pos(e2444@10, {}, {goesIn(candy, kitchen)}, {
  obj(candy). hasRole(candy, consumableRole). affordsTask(candy, eatingDrinkingTask).
}).
#pos(e2445@10, {}, {goesIn(cannabis, drawer)}, {
  obj(cannabis). hasRole(cannabis, consumableRole). affordsTask(cannabis, leisureTask).
}).
#pos(e2446@10, {}, {goesIn(cannabis, fridge)}, {
  obj(cannabis). hasRole(cannabis, consumableRole). affordsTask(cannabis, leisureTask).
}).
#pos(e2447@10, {}, {goesIn(cans, drawer)}, {
  obj(cans). hasRole(cans, storageContainerRole). affordsTask(cans, storageTask).
}).
#pos(e2448@10, {}, {goesIn(cans, shelf)}, {
  obj(cans). hasRole(cans, storageContainerRole). affordsTask(cans, storageTask).
}).
#pos(e2449@10, {}, {goesIn(cans_of_paint, dining_room)}, {
  obj(cans_of_paint). hasRole(cans_of_paint, storageContainerRole). affordsTask(cans_of_paint, maintenanceTask).
}).
#pos(e2450@10, {}, {goesIn(cans_of_paint, music_room)}, {
  obj(cans_of_paint). hasRole(cans_of_paint, storageContainerRole). affordsTask(cans_of_paint, maintenanceTask).
}).
#pos(e2451@10, {}, {goesIn(card, dining_room)}, {
  obj(card). hasRole(card, consumableRole). affordsTask(card, eatingDrinkingTask).
}).
#pos(e2452@10, {}, {goesIn(card, library)}, {
  obj(card). hasRole(card, consumableRole). affordsTask(card, eatingDrinkingTask).
}).
#pos(e2453@10, {}, {goesIn(card_case, garden)}, {
  obj(card_case). hasRole(card_case, storageContainerRole). affordsTask(card_case, storageTask).
}).
#pos(e2454@10, {}, {goesIn(card_case, living_room)}, {
  obj(card_case). hasRole(card_case, storageContainerRole). affordsTask(card_case, storageTask).
}).
#pos(e2455@10, {}, {goesIn(card_catalog, bedroom)}, {
  obj(card_catalog). hasRole(card_catalog, storageContainerRole). affordsTask(card_catalog, storageTask).
}).
#pos(e2456@10, {}, {goesIn(card_catalog, fridge)}, {
  obj(card_catalog). hasRole(card_catalog, storageContainerRole). affordsTask(card_catalog, storageTask).
}).
#pos(e2457@10, {}, {goesIn(cardboard, music_room)}, {
  obj(cardboard). hasRole(cardboard, storageContainerRole). affordsTask(cardboard, storageTask).
}).
#pos(e2458@10, {}, {goesIn(cardboard, shelf)}, {
  obj(cardboard). hasRole(cardboard, storageContainerRole). affordsTask(cardboard, storageTask).
}).
#pos(e2459@10, {}, {goesIn(cardboard_box, bed)}, {
  obj(cardboard_box). hasRole(cardboard_box, storageContainerRole). affordsTask(cardboard_box, storageTask).
}).
#pos(e2460@10, {}, {goesIn(cardboard_box, closet)}, {
  obj(cardboard_box). hasRole(cardboard_box, storageContainerRole). affordsTask(cardboard_box, storageTask).
}).
#pos(e2461@10, {}, {goesIn(cards, pantry)}, {
  obj(cards). hasRole(cards, entertainmentRole). affordsTask(cards, leisureTask).
}).
#pos(e2462@10, {}, {goesIn(cards, sink)}, {
  obj(cards). hasRole(cards, entertainmentRole). affordsTask(cards, leisureTask).
}).
#pos(e2463@10, {}, {goesIn(carpet, cabinet)}, {
  obj(carpet). hasRole(carpet, furnitureRole). affordsTask(carpet, leisureTask).
}).
#pos(e2464@10, {}, {goesIn(carpet, drawer)}, {
  obj(carpet). hasRole(carpet, furnitureRole). affordsTask(carpet, leisureTask).
}).
#pos(e2465@10, {}, {goesIn(carpeting, fridge)}, {
  obj(carpeting). hasRole(carpeting, furnitureRole). affordsTask(carpeting, leisureTask).
}).
#pos(e2466@10, {}, {goesIn(carpeting, garden)}, {
  obj(carpeting). hasRole(carpeting, furnitureRole). affordsTask(carpeting, leisureTask).
}).
#pos(e2467@10, {}, {goesIn(carrots, library)}, {
  obj(carrots). hasRole(carrots, consumableRole). affordsTask(carrots, eatingDrinkingTask). affordsTask(carrots, foodPreparationTask).
}).
#pos(e2468@10, {}, {goesIn(carrots, music_room)}, {
  obj(carrots). hasRole(carrots, consumableRole). affordsTask(carrots, eatingDrinkingTask). affordsTask(carrots, foodPreparationTask).
}).
#pos(e2469@10, {}, {goesIn(cash_register, drawer)}, {
  obj(cash_register). hasRole(cash_register, applianceRole). affordsTask(cash_register, workStudyTask).
}).
#pos(e2470@10, {}, {goesIn(cash_register, living_room)}, {
  obj(cash_register). hasRole(cash_register, applianceRole). affordsTask(cash_register, workStudyTask).
}).
#pos(e2471@10, {}, {goesIn(cat, bathroom)}, {
  obj(cat). hasRole(cat, consumableRole). affordsTask(cat, leisureTask).
}).
#pos(e2472@10, {}, {goesIn(cat, laundry_room)}, {
  obj(cat). hasRole(cat, consumableRole). affordsTask(cat, leisureTask).
}).
#pos(e2473@10, {}, {goesIn(cats, dining_room)}, {
  obj(cats). hasRole(cats, consumableRole). affordsTask(cats, eatingDrinkingTask).
}).
#pos(e2474@10, {}, {goesIn(cats, kitchen)}, {
  obj(cats). hasRole(cats, consumableRole). affordsTask(cats, eatingDrinkingTask).
}).
#pos(e2475@10, {}, {goesIn(cd_rom, bathroom)}, {
  obj(cd_rom). hasRole(cd_rom, storageContainerRole). affordsTask(cd_rom, storageTask).
}).
#pos(e2476@10, {}, {goesIn(cd_rom, library)}, {
  obj(cd_rom). hasRole(cd_rom, storageContainerRole). affordsTask(cd_rom, storageTask).
}).
#pos(e2477@10, {}, {goesIn(cds, garden)}, {
  obj(cds). hasRole(cds, storageContainerRole). affordsTask(cds, leisureTask).
}).
#pos(e2478@10, {}, {goesIn(cds, living_room)}, {
  obj(cds). hasRole(cds, storageContainerRole). affordsTask(cds, leisureTask).
}).
#pos(e2479@10, {}, {goesIn(ceiling, hallway)}, {
  obj(ceiling). hasRole(ceiling, furnitureRole). affordsTask(ceiling, storageTask).
}).
#pos(e2480@10, {}, {goesIn(ceiling, library)}, {
  obj(ceiling). hasRole(ceiling, furnitureRole). affordsTask(ceiling, storageTask).
}).
#pos(e2481@10, {}, {goesIn(celery, playroom)}, {
  obj(celery). hasRole(celery, consumableRole). affordsTask(celery, eatingDrinkingTask).
}).
#pos(e2482@10, {}, {goesIn(celery, trash)}, {
  obj(celery). hasRole(celery, consumableRole). affordsTask(celery, eatingDrinkingTask).
}).
#pos(e2483@10, {}, {goesIn(cellar, music_room)}, {
  obj(cellar). hasRole(cellar, storageContainerRole). affordsTask(cellar, storageTask).
}).
#pos(e2484@10, {}, {goesIn(cellar, trash)}, {
  obj(cellar). hasRole(cellar, storageContainerRole). affordsTask(cellar, storageTask).
}).
#pos(e2485@10, {}, {goesIn(cereal, dining_room)}, {
  obj(cereal). hasRole(cereal, consumableRole). affordsTask(cereal, eatingDrinkingTask).
}).
#pos(e2486@10, {}, {goesIn(cereal, drawer)}, {
  obj(cereal). hasRole(cereal, consumableRole). affordsTask(cereal, eatingDrinkingTask).
}).
#pos(e2487@10, {}, {goesIn(cereal_bowl, fridge)}, {
  obj(cereal_bowl). hasRole(cereal_bowl, utensilRole). affordsTask(cereal_bowl, eatingDrinkingTask).
}).
#pos(e2488@10, {}, {goesIn(cereal_bowl, hallway)}, {
  obj(cereal_bowl). hasRole(cereal_bowl, utensilRole). affordsTask(cereal_bowl, eatingDrinkingTask).
}).
#pos(e2489@10, {}, {goesIn(chain, bed)}, {
  obj(chain). hasRole(chain, toolRole). affordsTask(chain, maintenanceTask).
}).
#pos(e2490@10, {}, {goesIn(chain, shelf)}, {
  obj(chain). hasRole(chain, toolRole). affordsTask(chain, maintenanceTask).
}).
#pos(e2491@10, {}, {goesIn(chair, bed)}, {
  obj(chair). hasRole(chair, furnitureRole). affordsTask(chair, leisureTask). affordsTask(chair, storageTask).
}).
#pos(e2492@10, {}, {goesIn(chair, playroom)}, {
  obj(chair). hasRole(chair, furnitureRole). affordsTask(chair, leisureTask). affordsTask(chair, storageTask).
}).
#pos(e2493@10, {}, {goesIn(chairs, bed)}, {
  obj(chairs). hasRole(chairs, furnitureRole). affordsTask(chairs, leisureTask).
}).
#pos(e2494@10, {}, {goesIn(chairs, home_office)}, {
  obj(chairs). hasRole(chairs, furnitureRole). affordsTask(chairs, leisureTask).
}).
#pos(e2495@10, {}, {goesIn(change, bed)}, {
  obj(change). hasRole(change, entertainmentRole). affordsTask(change, leisureTask).
}).
#pos(e2496@10, {}, {goesIn(change, sink)}, {
  obj(change). hasRole(change, entertainmentRole). affordsTask(change, leisureTask).
}).
#pos(e2497@10, {}, {goesIn(channel, pantry)}, {
  obj(channel). hasRole(channel, storageContainerRole). affordsTask(channel, leisureTask).
}).
#pos(e2498@10, {}, {goesIn(channel, playroom)}, {
  obj(channel). hasRole(channel, storageContainerRole). affordsTask(channel, leisureTask).
}).
#pos(e2499@10, {}, {goesIn(checkbook, dining_room)}, {
  obj(checkbook). hasRole(checkbook, documentRole). affordsTask(checkbook, workStudyTask).
}).
#pos(e2500@10, {}, {goesIn(checkbook, pantry)}, {
  obj(checkbook). hasRole(checkbook, documentRole). affordsTask(checkbook, workStudyTask).
}).
#pos(e2501@10, {}, {goesIn(checkbook_holder, bed)}, {
  obj(checkbook_holder). hasRole(checkbook_holder, storageContainerRole). affordsTask(checkbook_holder, storageTask).
}).
#pos(e2502@10, {}, {goesIn(checkbook_holder, pantry)}, {
  obj(checkbook_holder). hasRole(checkbook_holder, storageContainerRole). affordsTask(checkbook_holder, storageTask).
}).
#pos(e2503@10, {}, {goesIn(cheese, bedroom)}, {
  obj(cheese). hasRole(cheese, consumableRole). affordsTask(cheese, eatingDrinkingTask).
}).
#pos(e2504@10, {}, {goesIn(cheese, dining_room)}, {
  obj(cheese). hasRole(cheese, consumableRole). affordsTask(cheese, eatingDrinkingTask).
}).
#pos(e2505@10, {}, {goesIn(cheque_book, cabinet)}, {
  obj(cheque_book). hasRole(cheque_book, documentRole). affordsTask(cheque_book, eatingDrinkingTask).
}).
#pos(e2506@10, {}, {goesIn(cheque_book, sink)}, {
  obj(cheque_book). hasRole(cheque_book, documentRole). affordsTask(cheque_book, eatingDrinkingTask).
}).
#pos(e2507@10, {}, {goesIn(cheque_book_holder, bedroom)}, {
  obj(cheque_book_holder). hasRole(cheque_book_holder, storageContainerRole). affordsTask(cheque_book_holder, storageTask).
}).
#pos(e2508@10, {}, {goesIn(cheque_book_holder, table)}, {
  obj(cheque_book_holder). hasRole(cheque_book_holder, storageContainerRole). affordsTask(cheque_book_holder, storageTask).
}).
#pos(e2509@10, {}, {goesIn(chess_bishop, fridge)}, {
  obj(chess_bishop). hasRole(chess_bishop, toolRole). affordsTask(chess_bishop, leisureTask).
}).
#pos(e2510@10, {}, {goesIn(chess_bishop, kitchen)}, {
  obj(chess_bishop). hasRole(chess_bishop, toolRole). affordsTask(chess_bishop, leisureTask).
}).
#pos(e2511@10, {}, {goesIn(chess_board, closet)}, {
  obj(chess_board). hasRole(chess_board, furnitureRole). affordsTask(chess_board, leisureTask).
}).
#pos(e2512@10, {}, {goesIn(chess_board, sink)}, {
  obj(chess_board). hasRole(chess_board, furnitureRole). affordsTask(chess_board, leisureTask).
}).
#pos(e2513@10, {}, {goesIn(chess_king, fridge)}, {
  obj(chess_king). hasRole(chess_king, entertainmentRole). affordsTask(chess_king, leisureTask).
}).
#pos(e2514@10, {}, {goesIn(chess_king, storage_room)}, {
  obj(chess_king). hasRole(chess_king, entertainmentRole). affordsTask(chess_king, leisureTask).
}).
#pos(e2515@10, {}, {goesIn(chess_knight, bed)}, {
  obj(chess_knight). hasRole(chess_knight, toolRole). affordsTask(chess_knight, leisureTask).
}).
#pos(e2516@10, {}, {goesIn(chess_knight, storage_room)}, {
  obj(chess_knight). hasRole(chess_knight, toolRole). affordsTask(chess_knight, leisureTask).
}).
#pos(e2517@10, {}, {goesIn(chess_pawn, bedroom)}, {
  obj(chess_pawn). hasRole(chess_pawn, entertainmentRole). affordsTask(chess_pawn, leisureTask).
}).
#pos(e2518@10, {}, {goesIn(chess_pawn, storage_room)}, {
  obj(chess_pawn). hasRole(chess_pawn, entertainmentRole). affordsTask(chess_pawn, leisureTask).
}).
#pos(e2519@10, {}, {goesIn(chess_piece, laundry_room)}, {
  obj(chess_piece). hasRole(chess_piece, entertainmentRole). affordsTask(chess_piece, leisureTask).
}).
#pos(e2520@10, {}, {goesIn(chess_piece, storage_room)}, {
  obj(chess_piece). hasRole(chess_piece, entertainmentRole). affordsTask(chess_piece, leisureTask).
}).
#pos(e2521@10, {}, {goesIn(chess_queen, pantry)}, {
  obj(chess_queen). hasRole(chess_queen, entertainmentRole). affordsTask(chess_queen, leisureTask).
}).
#pos(e2522@10, {}, {goesIn(chess_queen, sink)}, {
  obj(chess_queen). hasRole(chess_queen, entertainmentRole). affordsTask(chess_queen, leisureTask).
}).
#pos(e2523@10, {}, {goesIn(chess_rook, garage)}, {
  obj(chess_rook). hasRole(chess_rook, toolRole). affordsTask(chess_rook, leisureTask).
}).
#pos(e2524@10, {}, {goesIn(chess_rook, hallway)}, {
  obj(chess_rook). hasRole(chess_rook, toolRole). affordsTask(chess_rook, leisureTask).
}).
#pos(e2525@10, {}, {goesIn(chess_set, garage)}, {
  obj(chess_set). hasRole(chess_set, entertainmentRole). affordsTask(chess_set, leisureTask).
}).
#pos(e2526@10, {}, {goesIn(chess_set, kitchen)}, {
  obj(chess_set). hasRole(chess_set, entertainmentRole). affordsTask(chess_set, leisureTask).
}).
#pos(e2527@10, {}, {goesIn(chesspiece, fridge)}, {
  obj(chesspiece). hasRole(chesspiece, entertainmentRole). affordsTask(chesspiece, leisureTask).
}).
#pos(e2528@10, {}, {goesIn(chesspiece, garage)}, {
  obj(chesspiece). hasRole(chesspiece, entertainmentRole). affordsTask(chesspiece, leisureTask).
}).
#pos(e2529@10, {}, {goesIn(chest, dining_room)}, {
  obj(chest). hasRole(chest, storageContainerRole). affordsTask(chest, storageTask).
}).
#pos(e2530@10, {}, {goesIn(chest, laundry_room)}, {
  obj(chest). hasRole(chest, storageContainerRole). affordsTask(chest, storageTask).
}).
#pos(e2531@10, {}, {goesIn(chicken, table)}, {
  obj(chicken). hasRole(chicken, consumableRole). affordsTask(chicken, eatingDrinkingTask).
}).
#pos(e2532@10, {}, {goesIn(chicken, trash)}, {
  obj(chicken). hasRole(chicken, consumableRole). affordsTask(chicken, eatingDrinkingTask).
}).
#pos(e2533@10, {}, {goesIn(chimney, hallway)}, {
  obj(chimney). hasRole(chimney, furnitureRole). affordsTask(chimney, maintenanceTask).
}).
#pos(e2534@10, {}, {goesIn(chimney, living_room)}, {
  obj(chimney). hasRole(chimney, furnitureRole). affordsTask(chimney, maintenanceTask).
}).
#pos(e2535@10, {}, {goesIn(chine_cotton, bedroom)}, {
  obj(chine_cotton). hasRole(chine_cotton, clothingRole). affordsTask(chine_cotton, dressingTask).
}).
#pos(e2536@10, {}, {goesIn(chine_cotton, home_office)}, {
  obj(chine_cotton). hasRole(chine_cotton, clothingRole). affordsTask(chine_cotton, dressingTask).
}).
#pos(e2537@10, {}, {goesIn(chinese_food, bathroom)}, {
  obj(chinese_food). hasRole(chinese_food, consumableRole). affordsTask(chinese_food, eatingDrinkingTask).
}).
#pos(e2538@10, {}, {goesIn(chinese_food, living_room)}, {
  obj(chinese_food). hasRole(chinese_food, consumableRole). affordsTask(chinese_food, eatingDrinkingTask).
}).
#pos(e2539@10, {}, {goesIn(chips, sink)}, {
  obj(chips). hasRole(chips, consumableRole). affordsTask(chips, eatingDrinkingTask).
}).
#pos(e2540@10, {}, {goesIn(chips, storage_room)}, {
  obj(chips). hasRole(chips, consumableRole). affordsTask(chips, eatingDrinkingTask).
}).
#pos(e2541@10, {}, {goesIn(chocolate, bedroom)}, {
  obj(chocolate). hasRole(chocolate, consumableRole). affordsTask(chocolate, eatingDrinkingTask).
}).
#pos(e2542@10, {}, {goesIn(chocolate, cabinet)}, {
  obj(chocolate). hasRole(chocolate, consumableRole). affordsTask(chocolate, eatingDrinkingTask).
}).
#pos(e2543@10, {}, {goesIn(cinnamon, drawer)}, {
  obj(cinnamon). hasRole(cinnamon, consumableRole). affordsTask(cinnamon, foodPreparationTask).
}).
#pos(e2544@10, {}, {goesIn(cinnamon, playroom)}, {
  obj(cinnamon). hasRole(cinnamon, consumableRole). affordsTask(cinnamon, foodPreparationTask).
}).
#pos(e2545@10, {}, {goesIn(clam, hallway)}, {
  obj(clam). hasRole(clam, consumableRole). affordsTask(clam, eatingDrinkingTask).
}).
#pos(e2546@10, {}, {goesIn(clam, playroom)}, {
  obj(clam). hasRole(clam, consumableRole). affordsTask(clam, eatingDrinkingTask).
}).
#pos(e2547@10, {}, {goesIn(clavichord, closet)}, {
  obj(clavichord). hasRole(clavichord, musicalInstrumentRole). affordsTask(clavichord, leisureTask).
}).
#pos(e2548@10, {}, {goesIn(clavichord, home_office)}, {
  obj(clavichord). hasRole(clavichord, musicalInstrumentRole). affordsTask(clavichord, leisureTask).
}).
#pos(e2549@10, {}, {goesIn(clip, bedroom)}, {
  obj(clip). hasRole(clip, toolRole). affordsTask(clip, maintenanceTask).
}).
#pos(e2550@10, {}, {goesIn(clip, fridge)}, {
  obj(clip). hasRole(clip, toolRole). affordsTask(clip, maintenanceTask).
}).
#pos(e2551@10, {}, {goesIn(clipboard, garden)}, {
  obj(clipboard). hasRole(clipboard, toolRole). affordsTask(clipboard, workStudyTask).
}).
#pos(e2552@10, {}, {goesIn(clipboard, home_office)}, {
  obj(clipboard). hasRole(clipboard, toolRole). affordsTask(clipboard, workStudyTask).
}).
#pos(e2553@10, {}, {goesIn(clippers, fridge)}, {
  obj(clippers). hasRole(clippers, toolRole). affordsTask(clippers, maintenanceTask).
}).
#pos(e2554@10, {}, {goesIn(clippers, pantry)}, {
  obj(clippers). hasRole(clippers, toolRole). affordsTask(clippers, maintenanceTask).
}).
#pos(e2555@10, {}, {goesIn(clock, hallway)}, {
  obj(clock). hasRole(clock, decorationRole). affordsTask(clock, leisureTask).
}).
#pos(e2556@10, {}, {goesIn(clock, playroom)}, {
  obj(clock). hasRole(clock, decorationRole). affordsTask(clock, leisureTask).
}).
#pos(e2557@10, {}, {goesIn(closet, storage_room)}, {
  obj(closet). hasRole(closet, storageContainerRole). affordsTask(closet, storageTask).
}).
#pos(e2558@10, {}, {goesIn(closet, table)}, {
  obj(closet). hasRole(closet, storageContainerRole). affordsTask(closet, storageTask).
}).
#pos(e2559@10, {}, {goesIn(cloth, bed)}, {
  obj(cloth). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask). affordsTask(cloth, storageTask).
}).
#pos(e2560@10, {}, {goesIn(cloth, trash)}, {
  obj(cloth). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask). affordsTask(cloth, storageTask).
}).
#pos(e2561@10, {}, {goesIn(cloth_linen, kitchen)}, {
  obj(cloth_linen). hasRole(cloth_linen, clothingRole). affordsTask(cloth_linen, dressingTask).
}).
#pos(e2562@10, {}, {goesIn(cloth_linen, sink)}, {
  obj(cloth_linen). hasRole(cloth_linen, clothingRole). affordsTask(cloth_linen, dressingTask).
}).
#pos(e2563@10, {}, {goesIn(clothes, fridge)}, {
  obj(clothes). hasRole(clothes, clothingRole). affordsTask(clothes, dressingTask).
}).
#pos(e2564@10, {}, {goesIn(clothes, garden)}, {
  obj(clothes). hasRole(clothes, clothingRole). affordsTask(clothes, dressingTask).
}).
#pos(e2565@10, {}, {goesIn(clothes_closet, dining_room)}, {
  obj(clothes_closet). hasRole(clothes_closet, storageContainerRole). affordsTask(clothes_closet, storageTask).
}).
#pos(e2566@10, {}, {goesIn(clothes_closet, hallway)}, {
  obj(clothes_closet). hasRole(clothes_closet, storageContainerRole). affordsTask(clothes_closet, storageTask).
}).
#pos(e2567@10, {}, {goesIn(clothes_dryer, cabinet)}, {
  obj(clothes_dryer). hasRole(clothes_dryer, applianceRole). affordsTask(clothes_dryer, maintenanceTask).
}).
#pos(e2568@10, {}, {goesIn(clothes_dryer, playroom)}, {
  obj(clothes_dryer). hasRole(clothes_dryer, applianceRole). affordsTask(clothes_dryer, maintenanceTask).
}).
#pos(e2569@10, {}, {goesIn(clothing, fridge)}, {
  obj(clothing). hasRole(clothing, clothingRole). affordsTask(clothing, dressingTask).
}).
#pos(e2570@10, {}, {goesIn(clothing, kitchen)}, {
  obj(clothing). hasRole(clothing, clothingRole). affordsTask(clothing, dressingTask).
}).
#pos(e2571@10, {}, {goesIn(clothing_closet, hallway)}, {
  obj(clothing_closet). hasRole(clothing_closet, storageContainerRole). affordsTask(clothing_closet, storageTask).
}).
#pos(e2572@10, {}, {goesIn(clothing_closet, sink)}, {
  obj(clothing_closet). hasRole(clothing_closet, storageContainerRole). affordsTask(clothing_closet, storageTask).
}).
#pos(e2573@10, {}, {goesIn(clothing_shelf, garden)}, {
  obj(clothing_shelf). hasRole(clothing_shelf, storageContainerRole). affordsTask(clothing_shelf, storageTask).
}).
#pos(e2574@10, {}, {goesIn(clothing_shelf, laundry_room)}, {
  obj(clothing_shelf). hasRole(clothing_shelf, storageContainerRole). affordsTask(clothing_shelf, storageTask).
}).
#pos(e2575@10, {}, {goesIn(coal, fridge)}, {
  obj(coal). hasRole(coal, consumableRole). affordsTask(coal, leisureTask).
}).
#pos(e2576@10, {}, {goesIn(coal, trash)}, {
  obj(coal). hasRole(coal, consumableRole). affordsTask(coal, leisureTask).
}).
#pos(e2577@10, {}, {goesIn(coast, garage)}, {
  obj(coast). hasRole(coast, toolRole). affordsTask(coast, maintenanceTask).
}).
#pos(e2578@10, {}, {goesIn(coast, storage_room)}, {
  obj(coast). hasRole(coast, toolRole). affordsTask(coast, maintenanceTask).
}).
#pos(e2579@10, {}, {goesIn(coat, pantry)}, {
  obj(coat). hasRole(coat, clothingRole). affordsTask(coat, dressingTask).
}).
#pos(e2580@10, {}, {goesIn(coat, playroom)}, {
  obj(coat). hasRole(coat, clothingRole). affordsTask(coat, dressingTask).
}).
#pos(e2581@10, {}, {goesIn(coat_hangers, bed)}, {
  obj(coat_hangers). hasRole(coat_hangers, storageContainerRole). affordsTask(coat_hangers, storageTask).
}).
#pos(e2582@10, {}, {goesIn(coat_hangers, hallway)}, {
  obj(coat_hangers). hasRole(coat_hangers, storageContainerRole). affordsTask(coat_hangers, storageTask).
}).
#pos(e2583@10, {}, {goesIn(coats, cabinet)}, {
  obj(coats). hasRole(coats, clothingRole). affordsTask(coats, dressingTask).
}).
#pos(e2584@10, {}, {goesIn(coats, table)}, {
  obj(coats). hasRole(coats, clothingRole). affordsTask(coats, dressingTask).
}).
#pos(e2585@10, {}, {goesIn(cocktail_cabinet, garden)}, {
  obj(cocktail_cabinet). hasRole(cocktail_cabinet, storageContainerRole). affordsTask(cocktail_cabinet, storageTask).
}).
#pos(e2586@10, {}, {goesIn(cocktail_cabinet, library)}, {
  obj(cocktail_cabinet). hasRole(cocktail_cabinet, storageContainerRole). affordsTask(cocktail_cabinet, storageTask).
}).
#pos(e2587@10, {}, {goesIn(coffe_table, bathroom)}, {
  obj(coffe_table). hasRole(coffe_table, furnitureRole). affordsTask(coffe_table, leisureTask).
}).
#pos(e2588@10, {}, {goesIn(coffe_table, bed)}, {
  obj(coffe_table). hasRole(coffe_table, furnitureRole). affordsTask(coffe_table, leisureTask).
}).
#pos(e2589@10, {}, {goesIn(coffee, dining_room)}, {
  obj(coffee). hasRole(coffee, consumableRole). affordsTask(coffee, eatingDrinkingTask).
}).
#pos(e2590@10, {}, {goesIn(coffee, laundry_room)}, {
  obj(coffee). hasRole(coffee, consumableRole). affordsTask(coffee, eatingDrinkingTask).
}).
#pos(e2591@10, {}, {goesIn(coffee_cups, garden)}, {
  obj(coffee_cups). hasRole(coffee_cups, utensilRole). affordsTask(coffee_cups, eatingDrinkingTask).
}).
#pos(e2592@10, {}, {goesIn(coffee_cups, storage_room)}, {
  obj(coffee_cups). hasRole(coffee_cups, utensilRole). affordsTask(coffee_cups, eatingDrinkingTask).
}).
#pos(e2593@10, {}, {goesIn(coffee_mug, drawer)}, {
  obj(coffee_mug). hasRole(coffee_mug, utensilRole). affordsTask(coffee_mug, eatingDrinkingTask).
}).
#pos(e2594@10, {}, {goesIn(coffee_mug, music_room)}, {
  obj(coffee_mug). hasRole(coffee_mug, utensilRole). affordsTask(coffee_mug, eatingDrinkingTask).
}).
#pos(e2595@10, {}, {goesIn(coffee_table, library)}, {
  obj(coffee_table). hasRole(coffee_table, furnitureRole). affordsTask(coffee_table, leisureTask). affordsTask(coffee_table, storageTask).
}).
#pos(e2596@10, {}, {goesIn(coffee_table, shelf)}, {
  obj(coffee_table). hasRole(coffee_table, furnitureRole). affordsTask(coffee_table, leisureTask). affordsTask(coffee_table, storageTask).
}).
#pos(e2597@10, {}, {goesIn(coil, bathroom)}, {
  obj(coil). hasRole(coil, toolRole). affordsTask(coil, maintenanceTask).
}).
#pos(e2598@10, {}, {goesIn(coil, sink)}, {
  obj(coil). hasRole(coil, toolRole). affordsTask(coil, maintenanceTask).
}).
#pos(e2599@10, {}, {goesIn(coin, bedroom)}, {
  obj(coin). hasRole(coin, consumableRole). affordsTask(coin, eatingDrinkingTask). affordsTask(coin, leisureTask).
}).
#pos(e2600@10, {}, {goesIn(coin, cabinet)}, {
  obj(coin). hasRole(coin, consumableRole). affordsTask(coin, eatingDrinkingTask). affordsTask(coin, leisureTask).
}).
#pos(e2601@10, {}, {goesIn(coins, garden)}, {
  obj(coins). hasRole(coins, consumableRole). affordsTask(coins, eatingDrinkingTask).
}).
#pos(e2602@10, {}, {goesIn(coins, laundry_room)}, {
  obj(coins). hasRole(coins, consumableRole). affordsTask(coins, eatingDrinkingTask).
}).
#pos(e2603@10, {}, {goesIn(coke, bed)}, {
  obj(coke). hasRole(coke, consumableRole). affordsTask(coke, eatingDrinkingTask).
}).
#pos(e2604@10, {}, {goesIn(coke, home_office)}, {
  obj(coke). hasRole(coke, consumableRole). affordsTask(coke, eatingDrinkingTask).
}).
#pos(e2605@10, {}, {goesIn(cold_faucet, table)}, {
  obj(cold_faucet). hasRole(cold_faucet, toolRole). affordsTask(cold_faucet, eatingDrinkingTask).
}).
#pos(e2606@10, {}, {goesIn(cold_faucet, trash)}, {
  obj(cold_faucet). hasRole(cold_faucet, toolRole). affordsTask(cold_faucet, eatingDrinkingTask).
}).
#pos(e2607@10, {}, {goesIn(cold_storage, closet)}, {
  obj(cold_storage). hasRole(cold_storage, applianceRole). affordsTask(cold_storage, storageTask).
}).
#pos(e2608@10, {}, {goesIn(cold_storage, library)}, {
  obj(cold_storage). hasRole(cold_storage, applianceRole). affordsTask(cold_storage, storageTask).
}).
#pos(e2609@10, {}, {goesIn(cold_tap, bed)}, {
  obj(cold_tap). hasRole(cold_tap, toolRole). affordsTask(cold_tap, eatingDrinkingTask). affordsTask(cold_tap, hygieneTask).
}).
#pos(e2610@10, {}, {goesIn(cold_tap, closet)}, {
  obj(cold_tap). hasRole(cold_tap, toolRole). affordsTask(cold_tap, eatingDrinkingTask). affordsTask(cold_tap, hygieneTask).
}).
#pos(e2611@10, {}, {goesIn(cold_water, hallway)}, {
  obj(cold_water). hasRole(cold_water, consumableRole). affordsTask(cold_water, eatingDrinkingTask).
}).
#pos(e2612@10, {}, {goesIn(cold_water, kitchen)}, {
  obj(cold_water). hasRole(cold_water, consumableRole). affordsTask(cold_water, eatingDrinkingTask).
}).
#pos(e2613@10, {}, {goesIn(column, bed)}, {
  obj(column). hasRole(column, storageContainerRole). affordsTask(column, storageTask).
}).
#pos(e2614@10, {}, {goesIn(column, kitchen)}, {
  obj(column). hasRole(column, storageContainerRole). affordsTask(column, storageTask).
}).
#pos(e2615@10, {}, {goesIn(comforter, fridge)}, {
  obj(comforter). hasRole(comforter, beddingRole). affordsTask(comforter, sleepingTask).
}).
#pos(e2616@10, {}, {goesIn(comforter, garage)}, {
  obj(comforter). hasRole(comforter, beddingRole). affordsTask(comforter, sleepingTask).
}).
#pos(e2617@10, {}, {goesIn(compost, cabinet)}, {
  obj(compost). hasRole(compost, wasteRole). affordsTask(compost, wasteDisposalTask).
}).
#pos(e2618@10, {}, {goesIn(compost, table)}, {
  obj(compost). hasRole(compost, wasteRole). affordsTask(compost, wasteDisposalTask).
}).
#pos(e2619@10, {}, {goesIn(computer, living_room)}, {
  obj(computer). hasRole(computer, applianceRole). affordsTask(computer, leisureTask). affordsTask(computer, workStudyTask).
}).
#pos(e2620@10, {}, {goesIn(computer, pantry)}, {
  obj(computer). hasRole(computer, applianceRole). affordsTask(computer, leisureTask). affordsTask(computer, workStudyTask).
}).
#pos(e2621@10, {}, {goesIn(concrete, fridge)}, {
  obj(concrete). hasRole(concrete, toolRole). affordsTask(concrete, maintenanceTask).
}).
#pos(e2622@10, {}, {goesIn(concrete, table)}, {
  obj(concrete). hasRole(concrete, toolRole). affordsTask(concrete, maintenanceTask).
}).
#pos(e2623@10, {}, {goesIn(container, hallway)}, {
  obj(container). hasRole(container, storageContainerRole). affordsTask(container, storageTask).
}).
#pos(e2624@10, {}, {goesIn(container, laundry_room)}, {
  obj(container). hasRole(container, storageContainerRole). affordsTask(container, storageTask).
}).
#pos(e2625@10, {}, {goesIn(container_can, drawer)}, {
  obj(container_can). hasRole(container_can, storageContainerRole). affordsTask(container_can, storageTask).
}).
#pos(e2626@10, {}, {goesIn(container_can, music_room)}, {
  obj(container_can). hasRole(container_can, storageContainerRole). affordsTask(container_can, storageTask).
}).
#pos(e2627@10, {}, {goesIn(container_cup, bathroom)}, {
  obj(container_cup). hasRole(container_cup, utensilRole). affordsTask(container_cup, eatingDrinkingTask).
}).
#pos(e2628@10, {}, {goesIn(container_cup, dining_room)}, {
  obj(container_cup). hasRole(container_cup, utensilRole). affordsTask(container_cup, eatingDrinkingTask).
}).
#pos(e2629@10, {}, {goesIn(continental_quilt, home_office)}, {
  obj(continental_quilt). hasRole(continental_quilt, beddingRole). affordsTask(continental_quilt, sleepingTask).
}).
#pos(e2630@10, {}, {goesIn(continental_quilt, library)}, {
  obj(continental_quilt). hasRole(continental_quilt, beddingRole). affordsTask(continental_quilt, sleepingTask).
}).
#pos(e2631@10, {}, {goesIn(cook, fridge)}, {
  obj(cook). hasRole(cook, cookwareRole). affordsTask(cook, foodPreparationTask).
}).
#pos(e2632@10, {}, {goesIn(cook, table)}, {
  obj(cook). hasRole(cook, cookwareRole). affordsTask(cook, foodPreparationTask).
}).
#pos(e2633@10, {}, {goesIn(cookie, dining_room)}, {
  obj(cookie). hasRole(cookie, consumableRole). affordsTask(cookie, eatingDrinkingTask).
}).
#pos(e2634@10, {}, {goesIn(cookie, garage)}, {
  obj(cookie). hasRole(cookie, consumableRole). affordsTask(cookie, eatingDrinkingTask).
}).
#pos(e2635@10, {}, {goesIn(cookie_jar, cabinet)}, {
  obj(cookie_jar). hasRole(cookie_jar, storageContainerRole). affordsTask(cookie_jar, storageTask).
}).
#pos(e2636@10, {}, {goesIn(cookie_jar, trash)}, {
  obj(cookie_jar). hasRole(cookie_jar, storageContainerRole). affordsTask(cookie_jar, storageTask).
}).
#pos(e2637@10, {}, {goesIn(cookies, bed)}, {
  obj(cookies). hasRole(cookies, consumableRole). affordsTask(cookies, eatingDrinkingTask).
}).
#pos(e2638@10, {}, {goesIn(cookies, playroom)}, {
  obj(cookies). hasRole(cookies, consumableRole). affordsTask(cookies, eatingDrinkingTask).
}).
#pos(e2639@10, {}, {goesIn(cooling_device, garage)}, {
  obj(cooling_device). hasRole(cooling_device, applianceRole). affordsTask(cooling_device, storageTask).
}).
#pos(e2640@10, {}, {goesIn(cooling_device, pantry)}, {
  obj(cooling_device). hasRole(cooling_device, applianceRole). affordsTask(cooling_device, storageTask).
}).
#pos(e2641@10, {}, {goesIn(corn, fridge)}, {
  obj(corn). hasRole(corn, consumableRole). affordsTask(corn, eatingDrinkingTask).
}).
#pos(e2642@10, {}, {goesIn(corn, playroom)}, {
  obj(corn). hasRole(corn, consumableRole). affordsTask(corn, eatingDrinkingTask).
}).
#pos(e2643@10, {}, {goesIn(corner_cupboard, garden)}, {
  obj(corner_cupboard). hasRole(corner_cupboard, storageContainerRole). affordsTask(corner_cupboard, storageTask).
}).
#pos(e2644@10, {}, {goesIn(corner_cupboard, home_office)}, {
  obj(corner_cupboard). hasRole(corner_cupboard, storageContainerRole). affordsTask(corner_cupboard, storageTask).
}).
#pos(e2645@10, {}, {goesIn(correction_fluid, bathroom)}, {
  obj(correction_fluid). hasRole(correction_fluid, cleaningToolRole). affordsTask(correction_fluid, maintenanceTask).
}).
#pos(e2646@10, {}, {goesIn(correction_fluid, fridge)}, {
  obj(correction_fluid). hasRole(correction_fluid, cleaningToolRole). affordsTask(correction_fluid, maintenanceTask).
}).
#pos(e2647@10, {}, {goesIn(cottage_cheese, drawer)}, {
  obj(cottage_cheese). hasRole(cottage_cheese, consumableRole). affordsTask(cottage_cheese, eatingDrinkingTask).
}).
#pos(e2648@10, {}, {goesIn(cottage_cheese, trash)}, {
  obj(cottage_cheese). hasRole(cottage_cheese, consumableRole). affordsTask(cottage_cheese, eatingDrinkingTask).
}).
#pos(e2649@10, {}, {goesIn(cotton, home_office)}, {
  obj(cotton). hasRole(cotton, consumableRole). affordsTask(cotton, dressingTask). affordsTask(cotton, storageTask).
}).
#pos(e2650@10, {}, {goesIn(cotton, laundry_room)}, {
  obj(cotton). hasRole(cotton, consumableRole). affordsTask(cotton, dressingTask). affordsTask(cotton, storageTask).
}).
#pos(e2651@10, {}, {goesIn(couch, cabinet)}, {
  obj(couch). hasRole(couch, furnitureRole). affordsTask(couch, leisureTask). affordsTask(couch, sleepingTask).
}).
#pos(e2652@10, {}, {goesIn(couch, garden)}, {
  obj(couch). hasRole(couch, furnitureRole). affordsTask(couch, leisureTask). affordsTask(couch, sleepingTask).
}).
#pos(e2653@10, {}, {goesIn(counter, garage)}, {
  obj(counter). hasRole(counter, furnitureRole). affordsTask(counter, workStudyTask).
}).
#pos(e2654@10, {}, {goesIn(counter, home_office)}, {
  obj(counter). hasRole(counter, furnitureRole). affordsTask(counter, workStudyTask).
}).
#pos(e2655@10, {}, {goesIn(coupon, playroom)}, {
  obj(coupon). hasRole(coupon, consumableRole). affordsTask(coupon, leisureTask).
}).
#pos(e2656@10, {}, {goesIn(coupon, table)}, {
  obj(coupon). hasRole(coupon, consumableRole). affordsTask(coupon, leisureTask).
}).
#pos(e2657@10, {}, {goesIn(crab, living_room)}, {
  obj(crab). hasRole(crab, consumableRole). affordsTask(crab, eatingDrinkingTask).
}).
#pos(e2658@10, {}, {goesIn(crab, storage_room)}, {
  obj(crab). hasRole(crab, consumableRole). affordsTask(crab, eatingDrinkingTask).
}).
#pos(e2659@10, {}, {goesIn(crackers, bathroom)}, {
  obj(crackers). hasRole(crackers, consumableRole). affordsTask(crackers, eatingDrinkingTask).
}).
#pos(e2660@10, {}, {goesIn(crackers, home_office)}, {
  obj(crackers). hasRole(crackers, consumableRole). affordsTask(crackers, eatingDrinkingTask).
}).
#pos(e2661@10, {}, {goesIn(crash_cymbal, cabinet)}, {
  obj(crash_cymbal). hasRole(crash_cymbal, musicalInstrumentRole). affordsTask(crash_cymbal, leisureTask).
}).
#pos(e2662@10, {}, {goesIn(crash_cymbal, garage)}, {
  obj(crash_cymbal). hasRole(crash_cymbal, musicalInstrumentRole). affordsTask(crash_cymbal, leisureTask).
}).
#pos(e2663@10, {}, {goesIn(cup, fridge)}, {
  obj(cup). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e2664@10, {}, {goesIn(cup, hallway)}, {
  obj(cup). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e2665@10, {}, {goesIn(cup_of_coffee, bed)}, {
  obj(cup_of_coffee). hasRole(cup_of_coffee, consumableRole). affordsTask(cup_of_coffee, eatingDrinkingTask).
}).
#pos(e2666@10, {}, {goesIn(cup_of_coffee, cabinet)}, {
  obj(cup_of_coffee). hasRole(cup_of_coffee, consumableRole). affordsTask(cup_of_coffee, eatingDrinkingTask).
}).
#pos(e2667@10, {}, {goesIn(cupboard, library)}, {
  obj(cupboard). hasRole(cupboard, storageContainerRole). affordsTask(cupboard, storageTask).
}).
#pos(e2668@10, {}, {goesIn(cupboard, storage_room)}, {
  obj(cupboard). hasRole(cupboard, storageContainerRole). affordsTask(cupboard, storageTask).
}).
#pos(e2669@10, {}, {goesIn(cups, hallway)}, {
  obj(cups). hasRole(cups, utensilRole). affordsTask(cups, eatingDrinkingTask).
}).
#pos(e2670@10, {}, {goesIn(cups, home_office)}, {
  obj(cups). hasRole(cups, utensilRole). affordsTask(cups, eatingDrinkingTask).
}).
#pos(e2671@10, {}, {goesIn(curling_iron, music_room)}, {
  obj(curling_iron). hasRole(curling_iron, toolRole). affordsTask(curling_iron, hygieneTask).
}).
#pos(e2672@10, {}, {goesIn(curling_iron, table)}, {
  obj(curling_iron). hasRole(curling_iron, toolRole). affordsTask(curling_iron, hygieneTask).
}).
#pos(e2673@10, {}, {goesIn(curtain, closet)}, {
  obj(curtain). hasRole(curtain, furnitureRole). affordsTask(curtain, leisureTask).
}).
#pos(e2674@10, {}, {goesIn(curtain, playroom)}, {
  obj(curtain). hasRole(curtain, furnitureRole). affordsTask(curtain, leisureTask).
}).
#pos(e2675@10, {}, {goesIn(dandruff_shampoo, living_room)}, {
  obj(dandruff_shampoo). hasRole(dandruff_shampoo, cleaningToolRole). affordsTask(dandruff_shampoo, hygieneTask).
}).
#pos(e2676@10, {}, {goesIn(dandruff_shampoo, storage_room)}, {
  obj(dandruff_shampoo). hasRole(dandruff_shampoo, cleaningToolRole). affordsTask(dandruff_shampoo, hygieneTask).
}).
#pos(e2677@10, {}, {goesIn(denim, garage)}, {
  obj(denim). hasRole(denim, clothingRole). affordsTask(denim, dressingTask).
}).
#pos(e2678@10, {}, {goesIn(denim, hallway)}, {
  obj(denim). hasRole(denim, clothingRole). affordsTask(denim, dressingTask).
}).
#pos(e2679@10, {}, {goesIn(dental_floss, bedroom)}, {
  obj(dental_floss). hasRole(dental_floss, cleaningToolRole). affordsTask(dental_floss, hygieneTask).
}).
#pos(e2680@10, {}, {goesIn(dental_floss, living_room)}, {
  obj(dental_floss). hasRole(dental_floss, cleaningToolRole). affordsTask(dental_floss, hygieneTask).
}).
#pos(e2681@10, {}, {goesIn(desk, bathroom)}, {
  obj(desk). hasRole(desk, furnitureRole). affordsTask(desk, workStudyTask).
}).
#pos(e2682@10, {}, {goesIn(desk, sink)}, {
  obj(desk). hasRole(desk, furnitureRole). affordsTask(desk, workStudyTask).
}).
#pos(e2683@10, {}, {goesIn(desk_drawer, pantry)}, {
  obj(desk_drawer). hasRole(desk_drawer, storageContainerRole). affordsTask(desk_drawer, storageTask).
}).
#pos(e2684@10, {}, {goesIn(desk_drawer, storage_room)}, {
  obj(desk_drawer). hasRole(desk_drawer, storageContainerRole). affordsTask(desk_drawer, storageTask).
}).
#pos(e2685@10, {}, {goesIn(desk_tray, fridge)}, {
  obj(desk_tray). hasRole(desk_tray, storageContainerRole). affordsTask(desk_tray, storageTask).
}).
#pos(e2686@10, {}, {goesIn(desk_tray, laundry_room)}, {
  obj(desk_tray). hasRole(desk_tray, storageContainerRole). affordsTask(desk_tray, storageTask).
}).
#pos(e2687@10, {}, {goesIn(desserts, bedroom)}, {
  obj(desserts). hasRole(desserts, consumableRole). affordsTask(desserts, eatingDrinkingTask).
}).
#pos(e2688@10, {}, {goesIn(desserts, library)}, {
  obj(desserts). hasRole(desserts, consumableRole). affordsTask(desserts, eatingDrinkingTask).
}).
#pos(e2689@10, {}, {goesIn(detergent, home_office)}, {
  obj(detergent). hasRole(detergent, cleaningToolRole). affordsTask(detergent, cleaningTask).
}).
#pos(e2690@10, {}, {goesIn(detergent, trash)}, {
  obj(detergent). hasRole(detergent, cleaningToolRole). affordsTask(detergent, cleaningTask).
}).
#pos(e2691@10, {}, {goesIn(dice, hallway)}, {
  obj(dice). hasRole(dice, toolRole). affordsTask(dice, leisureTask).
}).
#pos(e2692@10, {}, {goesIn(dice, sink)}, {
  obj(dice). hasRole(dice, toolRole). affordsTask(dice, leisureTask).
}).
#pos(e2693@10, {}, {goesIn(dictionaries, cabinet)}, {
  obj(dictionaries). hasRole(dictionaries, toolRole). affordsTask(dictionaries, workStudyTask).
}).
#pos(e2694@10, {}, {goesIn(dictionaries, table)}, {
  obj(dictionaries). hasRole(dictionaries, toolRole). affordsTask(dictionaries, workStudyTask).
}).
#pos(e2695@10, {}, {goesIn(dictionary, garden)}, {
  obj(dictionary). hasRole(dictionary, toolRole). affordsTask(dictionary, workStudyTask).
}).
#pos(e2696@10, {}, {goesIn(dictionary, pantry)}, {
  obj(dictionary). hasRole(dictionary, toolRole). affordsTask(dictionary, workStudyTask).
}).
#pos(e2697@10, {}, {goesIn(dining_area, hallway)}, {
  obj(dining_area). hasRole(dining_area, furnitureRole). affordsTask(dining_area, eatingDrinkingTask). affordsTask(dining_area, leisureTask).
}).
#pos(e2698@10, {}, {goesIn(dining_area, table)}, {
  obj(dining_area). hasRole(dining_area, furnitureRole). affordsTask(dining_area, eatingDrinkingTask). affordsTask(dining_area, leisureTask).
}).
#pos(e2699@10, {}, {goesIn(dining_room_table, kitchen)}, {
  obj(dining_room_table). hasRole(dining_room_table, furnitureRole). affordsTask(dining_room_table, eatingDrinkingTask). affordsTask(dining_room_table, leisureTask).
}).
#pos(e2700@10, {}, {goesIn(dining_room_table, music_room)}, {
  obj(dining_room_table). hasRole(dining_room_table, furnitureRole). affordsTask(dining_room_table, eatingDrinkingTask). affordsTask(dining_room_table, leisureTask).
}).
#pos(e2701@10, {}, {goesIn(dining_table, laundry_room)}, {
  obj(dining_table). hasRole(dining_table, furnitureRole). affordsTask(dining_table, eatingDrinkingTask). affordsTask(dining_table, leisureTask). affordsTask(dining_table, storageTask).
}).
#pos(e2702@10, {}, {goesIn(dining_table, trash)}, {
  obj(dining_table). hasRole(dining_table, furnitureRole). affordsTask(dining_table, eatingDrinkingTask). affordsTask(dining_table, leisureTask). affordsTask(dining_table, storageTask).
}).
#pos(e2703@10, {}, {goesIn(dinner, garden)}, {
  obj(dinner). hasRole(dinner, consumableRole). affordsTask(dinner, eatingDrinkingTask).
}).
#pos(e2704@10, {}, {goesIn(dinner, pantry)}, {
  obj(dinner). hasRole(dinner, consumableRole). affordsTask(dinner, eatingDrinkingTask).
}).
#pos(e2705@10, {}, {goesIn(dinner_plate, dining_room)}, {
  obj(dinner_plate). hasRole(dinner_plate, utensilRole). affordsTask(dinner_plate, eatingDrinkingTask).
}).
#pos(e2706@10, {}, {goesIn(dinner_plate, fridge)}, {
  obj(dinner_plate). hasRole(dinner_plate, utensilRole). affordsTask(dinner_plate, eatingDrinkingTask).
}).
#pos(e2707@10, {}, {goesIn(dirty_dishes, library)}, {
  obj(dirty_dishes). hasRole(dirty_dishes, utensilRole). affordsTask(dirty_dishes, cleaningTask).
}).
#pos(e2708@10, {}, {goesIn(dirty_dishes, table)}, {
  obj(dirty_dishes). hasRole(dirty_dishes, utensilRole). affordsTask(dirty_dishes, cleaningTask).
}).
#pos(e2709@10, {}, {goesIn(dish, dining_room)}, {
  obj(dish). hasRole(dish, utensilRole). affordsTask(dish, eatingDrinkingTask).
}).
#pos(e2710@10, {}, {goesIn(dish, laundry_room)}, {
  obj(dish). hasRole(dish, utensilRole). affordsTask(dish, eatingDrinkingTask).
}).
#pos(e2711@10, {}, {goesIn(dishes, storage_room)}, {
  obj(dishes). hasRole(dishes, utensilRole). affordsTask(dishes, eatingDrinkingTask). affordsTask(dishes, foodPreparationTask).
}).
#pos(e2712@10, {}, {goesIn(dishes, trash)}, {
  obj(dishes). hasRole(dishes, utensilRole). affordsTask(dishes, eatingDrinkingTask). affordsTask(dishes, foodPreparationTask).
}).
#pos(e2713@10, {}, {goesIn(dishwasher, garden)}, {
  obj(dishwasher). hasRole(dishwasher, applianceRole). affordsTask(dishwasher, cleaningTask).
}).
#pos(e2714@10, {}, {goesIn(dishwasher, laundry_room)}, {
  obj(dishwasher). hasRole(dishwasher, applianceRole). affordsTask(dishwasher, cleaningTask).
}).
#pos(e2715@10, {}, {goesIn(disk, bathroom)}, {
  obj(disk). hasRole(disk, storageContainerRole). affordsTask(disk, storageTask).
}).
#pos(e2716@10, {}, {goesIn(disk, playroom)}, {
  obj(disk). hasRole(disk, storageContainerRole). affordsTask(disk, storageTask).
}).
#pos(e2717@10, {}, {goesIn(display_cabinet, drawer)}, {
  obj(display_cabinet). hasRole(display_cabinet, furnitureRole). hasRole(display_cabinet, storageContainerRole). affordsTask(display_cabinet, leisureTask). affordsTask(display_cabinet, storageTask).
}).
#pos(e2718@10, {}, {goesIn(display_cabinet, garden)}, {
  obj(display_cabinet). hasRole(display_cabinet, furnitureRole). hasRole(display_cabinet, storageContainerRole). affordsTask(display_cabinet, leisureTask). affordsTask(display_cabinet, storageTask).
}).
#pos(e2719@10, {}, {goesIn(disposable_razor, music_room)}, {
  obj(disposable_razor). hasRole(disposable_razor, utensilRole). affordsTask(disposable_razor, foodPreparationTask).
}).
#pos(e2720@10, {}, {goesIn(disposable_razor, storage_room)}, {
  obj(disposable_razor). hasRole(disposable_razor, utensilRole). affordsTask(disposable_razor, foodPreparationTask).
}).
#pos(e2721@10, {}, {goesIn(divider, storage_room)}, {
  obj(divider). hasRole(divider, furnitureRole). affordsTask(divider, storageTask).
}).
#pos(e2722@10, {}, {goesIn(divider, table)}, {
  obj(divider). hasRole(divider, furnitureRole). affordsTask(divider, storageTask).
}).
#pos(e2723@10, {}, {goesIn(dog, laundry_room)}, {
  obj(dog). hasRole(dog, consumableRole). affordsTask(dog, eatingDrinkingTask). affordsTask(dog, leisureTask).
}).
#pos(e2724@10, {}, {goesIn(dog, playroom)}, {
  obj(dog). hasRole(dog, consumableRole). affordsTask(dog, eatingDrinkingTask). affordsTask(dog, leisureTask).
}).
#pos(e2725@10, {}, {goesIn(dogs, living_room)}, {
  obj(dogs). hasRole(dogs, consumableRole). affordsTask(dogs, eatingDrinkingTask).
}).
#pos(e2726@10, {}, {goesIn(dogs, table)}, {
  obj(dogs). hasRole(dogs, consumableRole). affordsTask(dogs, eatingDrinkingTask).
}).
#pos(e2727@10, {}, {goesIn(door, drawer)}, {
  obj(door). hasRole(door, furnitureRole). affordsTask(door, storageTask).
}).
#pos(e2728@10, {}, {goesIn(door, playroom)}, {
  obj(door). hasRole(door, furnitureRole). affordsTask(door, storageTask).
}).
#pos(e2729@10, {}, {goesIn(door_with_lock, fridge)}, {
  obj(door_with_lock). hasRole(door_with_lock, furnitureRole). affordsTask(door_with_lock, maintenanceTask).
}).
#pos(e2730@10, {}, {goesIn(door_with_lock, playroom)}, {
  obj(door_with_lock). hasRole(door_with_lock, furnitureRole). affordsTask(door_with_lock, maintenanceTask).
}).
#pos(e2731@10, {}, {goesIn(doormat, cabinet)}, {
  obj(doormat). hasRole(doormat, furnitureRole). affordsTask(doormat, cleaningTask).
}).
#pos(e2732@10, {}, {goesIn(doormat, kitchen)}, {
  obj(doormat). hasRole(doormat, furnitureRole). affordsTask(doormat, cleaningTask).
}).
#pos(e2733@10, {}, {goesIn(doorway, playroom)}, {
  obj(doorway). hasRole(doorway, furnitureRole). affordsTask(doorway, leisureTask).
}).
#pos(e2734@10, {}, {goesIn(doorway, trash)}, {
  obj(doorway). hasRole(doorway, furnitureRole). affordsTask(doorway, leisureTask).
}).
#pos(e2735@10, {}, {goesIn(double_edged_razor, storage_room)}, {
  obj(double_edged_razor). hasRole(double_edged_razor, utensilRole). affordsTask(double_edged_razor, foodPreparationTask).
}).
#pos(e2736@10, {}, {goesIn(double_edged_razor, table)}, {
  obj(double_edged_razor). hasRole(double_edged_razor, utensilRole). affordsTask(double_edged_razor, foodPreparationTask).
}).
#pos(e2737@10, {}, {goesIn(drawer, cabinet)}, {
  obj(drawer). hasRole(drawer, storageContainerRole). affordsTask(drawer, storageTask).
}).
#pos(e2738@10, {}, {goesIn(drawer, home_office)}, {
  obj(drawer). hasRole(drawer, storageContainerRole). affordsTask(drawer, storageTask).
}).
#pos(e2739@10, {}, {goesIn(drawing_room, garage)}, {
  obj(drawing_room). hasRole(drawing_room, furnitureRole). affordsTask(drawing_room, leisureTask).
}).
#pos(e2740@10, {}, {goesIn(drawing_room, table)}, {
  obj(drawing_room). hasRole(drawing_room, furnitureRole). affordsTask(drawing_room, leisureTask).
}).
#pos(e2741@10, {}, {goesIn(drawstring_bag, garden)}, {
  obj(drawstring_bag). hasRole(drawstring_bag, storageContainerRole). affordsTask(drawstring_bag, storageTask).
}).
#pos(e2742@10, {}, {goesIn(drawstring_bag, home_office)}, {
  obj(drawstring_bag). hasRole(drawstring_bag, storageContainerRole). affordsTask(drawstring_bag, storageTask).
}).
#pos(e2743@10, {}, {goesIn(dress, drawer)}, {
  obj(dress). hasRole(dress, clothingRole). affordsTask(dress, dressingTask).
}).
#pos(e2744@10, {}, {goesIn(dress, garage)}, {
  obj(dress). hasRole(dress, clothingRole). affordsTask(dress, dressingTask).
}).
#pos(e2745@10, {}, {goesIn(dresser, bathroom)}, {
  obj(dresser). hasRole(dresser, furnitureRole). affordsTask(dresser, storageTask).
}).
#pos(e2746@10, {}, {goesIn(dresser, bed)}, {
  obj(dresser). hasRole(dresser, furnitureRole). affordsTask(dresser, storageTask).
}).
#pos(e2747@10, {}, {goesIn(drill, garden)}, {
  obj(drill). hasRole(drill, toolRole). affordsTask(drill, maintenanceTask).
}).
#pos(e2748@10, {}, {goesIn(drill, pantry)}, {
  obj(drill). hasRole(drill, toolRole). affordsTask(drill, maintenanceTask).
}).
#pos(e2749@10, {}, {goesIn(drink, cabinet)}, {
  obj(drink). hasRole(drink, consumableRole). affordsTask(drink, eatingDrinkingTask).
}).
#pos(e2750@10, {}, {goesIn(drink, trash)}, {
  obj(drink). hasRole(drink, consumableRole). affordsTask(drink, eatingDrinkingTask).
}).
#pos(e2751@10, {}, {goesIn(drinking_water, playroom)}, {
  obj(drinking_water). hasRole(drinking_water, consumableRole). affordsTask(drinking_water, eatingDrinkingTask).
}).
#pos(e2752@10, {}, {goesIn(drinking_water, shelf)}, {
  obj(drinking_water). hasRole(drinking_water, consumableRole). affordsTask(drinking_water, eatingDrinkingTask).
}).
#pos(e2753@10, {}, {goesIn(drinks, shelf)}, {
  obj(drinks). hasRole(drinks, consumableRole). affordsTask(drinks, eatingDrinkingTask).
}).
#pos(e2754@10, {}, {goesIn(drinks, storage_room)}, {
  obj(drinks). hasRole(drinks, consumableRole). affordsTask(drinks, eatingDrinkingTask).
}).
#pos(e2755@10, {}, {goesIn(dryer, fridge)}, {
  obj(dryer). hasRole(dryer, applianceRole). affordsTask(dryer, maintenanceTask).
}).
#pos(e2756@10, {}, {goesIn(dryer, laundry_room)}, {
  obj(dryer). hasRole(dryer, applianceRole). affordsTask(dryer, maintenanceTask).
}).
#pos(e2757@10, {}, {goesIn(dust, music_room)}, {
  obj(dust). hasRole(dust, wasteRole). affordsTask(dust, cleaningTask).
}).
#pos(e2758@10, {}, {goesIn(dust, pantry)}, {
  obj(dust). hasRole(dust, wasteRole). affordsTask(dust, cleaningTask).
}).
#pos(e2759@10, {}, {goesIn(dustbin, fridge)}, {
  obj(dustbin). hasRole(dustbin, storageContainerRole). hasRole(dustbin, wasteRole). affordsTask(dustbin, wasteDisposalTask).
}).
#pos(e2760@10, {}, {goesIn(dustbin, hallway)}, {
  obj(dustbin). hasRole(dustbin, storageContainerRole). hasRole(dustbin, wasteRole). affordsTask(dustbin, wasteDisposalTask).
}).
#pos(e2761@10, {}, {goesIn(duvet, bathroom)}, {
  obj(duvet). hasRole(duvet, beddingRole). affordsTask(duvet, sleepingTask).
}).
#pos(e2762@10, {}, {goesIn(duvet, trash)}, {
  obj(duvet). hasRole(duvet, beddingRole). affordsTask(duvet, sleepingTask).
}).
#pos(e2763@10, {}, {goesIn(duvet_cover, dining_room)}, {
  obj(duvet_cover). hasRole(duvet_cover, beddingRole). affordsTask(duvet_cover, sleepingTask).
}).
#pos(e2764@10, {}, {goesIn(duvet_cover, living_room)}, {
  obj(duvet_cover). hasRole(duvet_cover, beddingRole). affordsTask(duvet_cover, sleepingTask).
}).
#pos(e2765@10, {}, {goesIn(egg, dining_room)}, {
  obj(egg). hasRole(egg, consumableRole). affordsTask(egg, eatingDrinkingTask). affordsTask(egg, foodPreparationTask).
}).
#pos(e2766@10, {}, {goesIn(egg, garage)}, {
  obj(egg). hasRole(egg, consumableRole). affordsTask(egg, eatingDrinkingTask). affordsTask(egg, foodPreparationTask).
}).
#pos(e2767@10, {}, {goesIn(egg_shells, music_room)}, {
  obj(egg_shells). hasRole(egg_shells, wasteRole).
}).
#pos(e2768@10, {}, {goesIn(egg_shells, table)}, {
  obj(egg_shells). hasRole(egg_shells, wasteRole).
}).
#pos(e2769@10, {}, {goesIn(eggs, bed)}, {
  obj(eggs). hasRole(eggs, consumableRole). affordsTask(eggs, eatingDrinkingTask).
}).
#pos(e2770@10, {}, {goesIn(eggs, living_room)}, {
  obj(eggs). hasRole(eggs, consumableRole). affordsTask(eggs, eatingDrinkingTask).
}).
#pos(e2771@10, {}, {goesIn(electric_blanket, garden)}, {
  obj(electric_blanket). hasRole(electric_blanket, beddingRole). affordsTask(electric_blanket, sleepingTask).
}).
#pos(e2772@10, {}, {goesIn(electric_blanket, shelf)}, {
  obj(electric_blanket). hasRole(electric_blanket, beddingRole). affordsTask(electric_blanket, sleepingTask).
}).
#pos(e2773@10, {}, {goesIn(electric_fan, dining_room)}, {
  obj(electric_fan). hasRole(electric_fan, applianceRole). affordsTask(electric_fan, leisureTask).
}).
#pos(e2774@10, {}, {goesIn(electric_fan, pantry)}, {
  obj(electric_fan). hasRole(electric_fan, applianceRole). affordsTask(electric_fan, leisureTask).
}).
#pos(e2775@10, {}, {goesIn(electric_pencil_sharpener, closet)}, {
  obj(electric_pencil_sharpener). hasRole(electric_pencil_sharpener, toolRole). affordsTask(electric_pencil_sharpener, maintenanceTask).
}).
#pos(e2776@10, {}, {goesIn(electric_pencil_sharpener, living_room)}, {
  obj(electric_pencil_sharpener). hasRole(electric_pencil_sharpener, toolRole). affordsTask(electric_pencil_sharpener, maintenanceTask).
}).
#pos(e2777@10, {}, {goesIn(electric_razor, playroom)}, {
  obj(electric_razor). hasRole(electric_razor, toolRole). affordsTask(electric_razor, foodPreparationTask).
}).
#pos(e2778@10, {}, {goesIn(electric_razor, trash)}, {
  obj(electric_razor). hasRole(electric_razor, toolRole). affordsTask(electric_razor, foodPreparationTask).
}).
#pos(e2779@10, {}, {goesIn(electric_socket, playroom)}, {
  obj(electric_socket). hasRole(electric_socket, applianceRole). affordsTask(electric_socket, workStudyTask).
}).
#pos(e2780@10, {}, {goesIn(electric_socket, sink)}, {
  obj(electric_socket). hasRole(electric_socket, applianceRole). affordsTask(electric_socket, workStudyTask).
}).
#pos(e2781@10, {}, {goesIn(electricity, kitchen)}, {
  obj(electricity). hasRole(electricity, applianceRole). affordsTask(electricity, leisureTask). affordsTask(electricity, workStudyTask).
}).
#pos(e2782@10, {}, {goesIn(electricity, music_room)}, {
  obj(electricity). hasRole(electricity, applianceRole). affordsTask(electricity, leisureTask). affordsTask(electricity, workStudyTask).
}).
#pos(e2783@10, {}, {goesIn(electronic_appliance, playroom)}, {
  obj(electronic_appliance). hasRole(electronic_appliance, applianceRole). affordsTask(electronic_appliance, leisureTask). affordsTask(electronic_appliance, workStudyTask).
}).
#pos(e2784@10, {}, {goesIn(electronic_appliance, storage_room)}, {
  obj(electronic_appliance). hasRole(electronic_appliance, applianceRole). affordsTask(electronic_appliance, leisureTask). affordsTask(electronic_appliance, workStudyTask).
}).
#pos(e2785@10, {}, {goesIn(encyclopedia, laundry_room)}, {
  obj(encyclopedia). hasRole(encyclopedia, documentRole). affordsTask(encyclopedia, workStudyTask).
}).
#pos(e2786@10, {}, {goesIn(encyclopedia, playroom)}, {
  obj(encyclopedia). hasRole(encyclopedia, documentRole). affordsTask(encyclopedia, workStudyTask).
}).
#pos(e2787@10, {}, {goesIn(entrance, drawer)}, {
  obj(entrance). hasRole(entrance, furnitureRole). affordsTask(entrance, leisureTask).
}).
#pos(e2788@10, {}, {goesIn(entrance, living_room)}, {
  obj(entrance). hasRole(entrance, furnitureRole). affordsTask(entrance, leisureTask).
}).
#pos(e2789@10, {}, {goesIn(entrance_hall, music_room)}, {
  obj(entrance_hall). hasRole(entrance_hall, furnitureRole).
}).
#pos(e2790@10, {}, {goesIn(entrance_hall, pantry)}, {
  obj(entrance_hall). hasRole(entrance_hall, furnitureRole).
}).
#pos(e2791@10, {}, {goesIn(entranceway, garage)}, {
  obj(entranceway). hasRole(entranceway, furnitureRole). affordsTask(entranceway, leisureTask).
}).
#pos(e2792@10, {}, {goesIn(entranceway, garden)}, {
  obj(entranceway). hasRole(entranceway, furnitureRole). affordsTask(entranceway, leisureTask).
}).
#pos(e2793@10, {}, {goesIn(entryway, hallway)}, {
  obj(entryway). hasRole(entryway, furnitureRole). affordsTask(entryway, leisureTask).
}).
#pos(e2794@10, {}, {goesIn(entryway, table)}, {
  obj(entryway). hasRole(entryway, furnitureRole). affordsTask(entryway, leisureTask).
}).
#pos(e2795@10, {}, {goesIn(envelope, music_room)}, {
  obj(envelope). hasRole(envelope, storageContainerRole). affordsTask(envelope, storageTask).
}).
#pos(e2796@10, {}, {goesIn(envelope, pantry)}, {
  obj(envelope). hasRole(envelope, storageContainerRole). affordsTask(envelope, storageTask).
}).
#pos(e2797@10, {}, {goesIn(eraser, fridge)}, {
  obj(eraser). hasRole(eraser, toolRole). affordsTask(eraser, maintenanceTask).
}).
#pos(e2798@10, {}, {goesIn(eraser, sink)}, {
  obj(eraser). hasRole(eraser, toolRole). affordsTask(eraser, maintenanceTask).
}).
#pos(e2799@10, {}, {goesIn(eyeglasses_case, garden)}, {
  obj(eyeglasses_case). hasRole(eyeglasses_case, storageContainerRole). affordsTask(eyeglasses_case, storageTask).
}).
#pos(e2800@10, {}, {goesIn(eyeglasses_case, living_room)}, {
  obj(eyeglasses_case). hasRole(eyeglasses_case, storageContainerRole). affordsTask(eyeglasses_case, storageTask).
}).
#pos(e2801@10, {}, {goesIn(fan, cabinet)}, {
  obj(fan). hasRole(fan, applianceRole). affordsTask(fan, leisureTask).
}).
#pos(e2802@10, {}, {goesIn(fan, home_office)}, {
  obj(fan). hasRole(fan, applianceRole). affordsTask(fan, leisureTask).
}).
#pos(e2803@10, {}, {goesIn(fans, garage)}, {
  obj(fans). hasRole(fans, applianceRole). affordsTask(fans, leisureTask).
}).
#pos(e2804@10, {}, {goesIn(fans, garden)}, {
  obj(fans). hasRole(fans, applianceRole). affordsTask(fans, leisureTask).
}).
#pos(e2805@10, {}, {goesIn(faucet, home_office)}, {
  obj(faucet). hasRole(faucet, toolRole). affordsTask(faucet, eatingDrinkingTask). affordsTask(faucet, hygieneTask).
}).
#pos(e2806@10, {}, {goesIn(faucet, trash)}, {
  obj(faucet). hasRole(faucet, toolRole). affordsTask(faucet, eatingDrinkingTask). affordsTask(faucet, hygieneTask).
}).
#pos(e2807@10, {}, {goesIn(faucet_overflow, cabinet)}, {
  obj(faucet_overflow). hasRole(faucet_overflow, toolRole). affordsTask(faucet_overflow, maintenanceTask).
}).
#pos(e2808@10, {}, {goesIn(faucet_overflow, storage_room)}, {
  obj(faucet_overflow). hasRole(faucet_overflow, toolRole). affordsTask(faucet_overflow, maintenanceTask).
}).
#pos(e2809@10, {}, {goesIn(feather, drawer)}, {
  obj(feather). hasRole(feather, consumableRole). affordsTask(feather, leisureTask).
}).
#pos(e2810@10, {}, {goesIn(feather, trash)}, {
  obj(feather). hasRole(feather, consumableRole). affordsTask(feather, leisureTask).
}).
#pos(e2811@10, {}, {goesIn(feathers, garage)}, {
  obj(feathers). hasRole(feathers, beddingRole). affordsTask(feathers, leisureTask).
}).
#pos(e2812@10, {}, {goesIn(feathers, laundry_room)}, {
  obj(feathers). hasRole(feathers, beddingRole). affordsTask(feathers, leisureTask).
}).
#pos(e2813@10, {}, {goesIn(felt, drawer)}, {
  obj(felt). hasRole(felt, consumableRole). affordsTask(felt, leisureTask).
}).
#pos(e2814@10, {}, {goesIn(felt, garage)}, {
  obj(felt). hasRole(felt, consumableRole). affordsTask(felt, leisureTask).
}).
#pos(e2815@10, {}, {goesIn(ferret, bedroom)}, {
  obj(ferret). hasRole(ferret, entertainmentRole). affordsTask(ferret, leisureTask).
}).
#pos(e2816@10, {}, {goesIn(ferret, music_room)}, {
  obj(ferret). hasRole(ferret, entertainmentRole). affordsTask(ferret, leisureTask).
}).
#pos(e2817@10, {}, {goesIn(fertilizer, home_office)}, {
  obj(fertilizer). hasRole(fertilizer, toolRole). affordsTask(fertilizer, gardeningTask).
}).
#pos(e2818@10, {}, {goesIn(fertilizer, library)}, {
  obj(fertilizer). hasRole(fertilizer, toolRole). affordsTask(fertilizer, gardeningTask).
}).
#pos(e2819@10, {}, {goesIn(fiberglass, living_room)}, {
  obj(fiberglass). hasRole(fiberglass, storageContainerRole). affordsTask(fiberglass, maintenanceTask).
}).
#pos(e2820@10, {}, {goesIn(fiberglass, playroom)}, {
  obj(fiberglass). hasRole(fiberglass, storageContainerRole). affordsTask(fiberglass, maintenanceTask).
}).
#pos(e2821@10, {}, {goesIn(file, bed)}, {
  obj(file). hasRole(file, storageContainerRole). affordsTask(file, storageTask).
}).
#pos(e2822@10, {}, {goesIn(file, music_room)}, {
  obj(file). hasRole(file, storageContainerRole). affordsTask(file, storageTask).
}).
#pos(e2823@10, {}, {goesIn(file_cabinet, drawer)}, {
  obj(file_cabinet). hasRole(file_cabinet, storageContainerRole). affordsTask(file_cabinet, storageTask).
}).
#pos(e2824@10, {}, {goesIn(file_cabinet, laundry_room)}, {
  obj(file_cabinet). hasRole(file_cabinet, storageContainerRole). affordsTask(file_cabinet, storageTask).
}).
#pos(e2825@10, {}, {goesIn(files, laundry_room)}, {
  obj(files). hasRole(files, storageContainerRole). affordsTask(files, storageTask).
}).
#pos(e2826@10, {}, {goesIn(files, sink)}, {
  obj(files). hasRole(files, storageContainerRole). affordsTask(files, storageTask).
}).
#pos(e2827@10, {}, {goesIn(filing_box, bathroom)}, {
  obj(filing_box). hasRole(filing_box, storageContainerRole). affordsTask(filing_box, storageTask).
}).
#pos(e2828@10, {}, {goesIn(filing_box, sink)}, {
  obj(filing_box). hasRole(filing_box, storageContainerRole). affordsTask(filing_box, storageTask).
}).
#pos(e2829@10, {}, {goesIn(film, laundry_room)}, {
  obj(film). hasRole(film, consumableRole). affordsTask(film, leisureTask).
}).
#pos(e2830@10, {}, {goesIn(film, music_room)}, {
  obj(film). hasRole(film, consumableRole). affordsTask(film, leisureTask).
}).
#pos(e2831@10, {}, {goesIn(fire, bathroom)}, {
  obj(fire). hasRole(fire, toolRole). affordsTask(fire, leisureTask). affordsTask(fire, maintenanceTask).
}).
#pos(e2832@10, {}, {goesIn(fire, kitchen)}, {
  obj(fire). hasRole(fire, toolRole). affordsTask(fire, leisureTask). affordsTask(fire, maintenanceTask).
}).
#pos(e2833@10, {}, {goesIn(fire_extinguisher, home_office)}, {
  obj(fire_extinguisher). hasRole(fire_extinguisher, safetyEquipmentRole). affordsTask(fire_extinguisher, maintenanceTask).
}).
#pos(e2834@10, {}, {goesIn(fire_extinguisher, living_room)}, {
  obj(fire_extinguisher). hasRole(fire_extinguisher, safetyEquipmentRole). affordsTask(fire_extinguisher, maintenanceTask).
}).
#pos(e2835@10, {}, {goesIn(fireplace, library)}, {
  obj(fireplace). hasRole(fireplace, cookwareRole). affordsTask(fireplace, foodPreparationTask).
}).
#pos(e2836@10, {}, {goesIn(fireplace, shelf)}, {
  obj(fireplace). hasRole(fireplace, cookwareRole). affordsTask(fireplace, foodPreparationTask).
}).
#pos(e2837@10, {}, {goesIn(fish, home_office)}, {
  obj(fish). hasRole(fish, consumableRole). affordsTask(fish, eatingDrinkingTask).
}).
#pos(e2838@10, {}, {goesIn(fish, storage_room)}, {
  obj(fish). hasRole(fish, consumableRole). affordsTask(fish, eatingDrinkingTask).
}).
#pos(e2839@10, {}, {goesIn(fishes, garden)}, {
  obj(fishes). hasRole(fishes, consumableRole). affordsTask(fishes, eatingDrinkingTask).
}).
#pos(e2840@10, {}, {goesIn(fishes, pantry)}, {
  obj(fishes). hasRole(fishes, consumableRole). affordsTask(fishes, eatingDrinkingTask).
}).
#pos(e2841@10, {}, {goesIn(flask, garden)}, {
  obj(flask). hasRole(flask, storageContainerRole). affordsTask(flask, eatingDrinkingTask). affordsTask(flask, storageTask).
}).
#pos(e2842@10, {}, {goesIn(flask, library)}, {
  obj(flask). hasRole(flask, storageContainerRole). affordsTask(flask, eatingDrinkingTask). affordsTask(flask, storageTask).
}).
#pos(e2843@10, {}, {goesIn(flight_bag, bathroom)}, {
  obj(flight_bag). hasRole(flight_bag, storageContainerRole).
}).
#pos(e2844@10, {}, {goesIn(flight_bag, pantry)}, {
  obj(flight_bag). hasRole(flight_bag, storageContainerRole).
}).
#pos(e2845@10, {}, {goesIn(floor, music_room)}, {
  obj(floor). hasRole(floor, furnitureRole). affordsTask(floor, leisureTask). affordsTask(floor, storageTask).
}).
#pos(e2846@10, {}, {goesIn(floor, playroom)}, {
  obj(floor). hasRole(floor, furnitureRole). affordsTask(floor, leisureTask). affordsTask(floor, storageTask).
}).
#pos(e2847@10, {}, {goesIn(flooring, garage)}, {
  obj(flooring). hasRole(flooring, furnitureRole). affordsTask(flooring, leisureTask).
}).
#pos(e2848@10, {}, {goesIn(flooring, music_room)}, {
  obj(flooring). hasRole(flooring, furnitureRole). affordsTask(flooring, leisureTask).
}).
#pos(e2849@10, {}, {goesIn(flour, dining_room)}, {
  obj(flour). hasRole(flour, consumableRole). affordsTask(flour, foodPreparationTask).
}).
#pos(e2850@10, {}, {goesIn(flour, music_room)}, {
  obj(flour). hasRole(flour, consumableRole). affordsTask(flour, foodPreparationTask).
}).
#pos(e2851@10, {}, {goesIn(flower, pantry)}, {
  obj(flower). hasRole(flower, consumableRole). affordsTask(flower, eatingDrinkingTask).
}).
#pos(e2852@10, {}, {goesIn(flower, sink)}, {
  obj(flower). hasRole(flower, consumableRole). affordsTask(flower, eatingDrinkingTask).
}).
#pos(e2853@10, {}, {goesIn(flowers, bathroom)}, {
  obj(flowers). hasRole(flowers, consumableRole). affordsTask(flowers, gardeningTask). affordsTask(flowers, leisureTask).
}).
#pos(e2854@10, {}, {goesIn(flowers, laundry_room)}, {
  obj(flowers). hasRole(flowers, consumableRole). affordsTask(flowers, gardeningTask). affordsTask(flowers, leisureTask).
}).
#pos(e2855@10, {}, {goesIn(fluoride_mouthwash, storage_room)}, {
  obj(fluoride_mouthwash). hasRole(fluoride_mouthwash, cleaningToolRole). affordsTask(fluoride_mouthwash, hygieneTask).
}).
#pos(e2856@10, {}, {goesIn(fluoride_mouthwash, trash)}, {
  obj(fluoride_mouthwash). hasRole(fluoride_mouthwash, cleaningToolRole). affordsTask(fluoride_mouthwash, hygieneTask).
}).
#pos(e2857@10, {}, {goesIn(folder, bathroom)}, {
  obj(folder). hasRole(folder, storageContainerRole). affordsTask(folder, storageTask).
}).
#pos(e2858@10, {}, {goesIn(folder, table)}, {
  obj(folder). hasRole(folder, storageContainerRole). affordsTask(folder, storageTask).
}).
#pos(e2859@10, {}, {goesIn(folding_chair, cabinet)}, {
  obj(folding_chair). hasRole(folding_chair, furnitureRole). affordsTask(folding_chair, leisureTask). affordsTask(folding_chair, storageTask).
}).
#pos(e2860@10, {}, {goesIn(folding_chair, music_room)}, {
  obj(folding_chair). hasRole(folding_chair, furnitureRole). affordsTask(folding_chair, leisureTask). affordsTask(folding_chair, storageTask).
}).
#pos(e2861@10, {}, {goesIn(folding_door, drawer)}, {
  obj(folding_door). hasRole(folding_door, furnitureRole). affordsTask(folding_door, storageTask).
}).
#pos(e2862@10, {}, {goesIn(folding_door, playroom)}, {
  obj(folding_door). hasRole(folding_door, furnitureRole). affordsTask(folding_door, storageTask).
}).
#pos(e2863@10, {}, {goesIn(folding_shower_door, bedroom)}, {
  obj(folding_shower_door). hasRole(folding_shower_door, furnitureRole). affordsTask(folding_shower_door, leisureTask).
}).
#pos(e2864@10, {}, {goesIn(folding_shower_door, drawer)}, {
  obj(folding_shower_door). hasRole(folding_shower_door, furnitureRole). affordsTask(folding_shower_door, leisureTask).
}).
#pos(e2865@10, {}, {goesIn(food, garden)}, {
  obj(food). hasRole(food, consumableRole). affordsTask(food, eatingDrinkingTask).
}).
#pos(e2866@10, {}, {goesIn(food, home_office)}, {
  obj(food). hasRole(food, consumableRole). affordsTask(food, eatingDrinkingTask).
}).
#pos(e2867@10, {}, {goesIn(food_can, fridge)}, {
  obj(food_can). hasRole(food_can, storageContainerRole). affordsTask(food_can, storageTask).
}).
#pos(e2868@10, {}, {goesIn(food_can, home_office)}, {
  obj(food_can). hasRole(food_can, storageContainerRole). affordsTask(food_can, storageTask).
}).
#pos(e2869@10, {}, {goesIn(football, home_office)}, {
  obj(football). hasRole(football, entertainmentRole). affordsTask(football, leisureTask).
}).
#pos(e2870@10, {}, {goesIn(football, living_room)}, {
  obj(football). hasRole(football, entertainmentRole). affordsTask(football, leisureTask).
}).
#pos(e2871@10, {}, {goesIn(footstool, home_office)}, {
  obj(footstool). hasRole(footstool, furnitureRole). affordsTask(footstool, leisureTask). affordsTask(footstool, storageTask).
}).
#pos(e2872@10, {}, {goesIn(footstool, laundry_room)}, {
  obj(footstool). hasRole(footstool, furnitureRole). affordsTask(footstool, leisureTask). affordsTask(footstool, storageTask).
}).
#pos(e2873@10, {}, {goesIn(fork, garden)}, {
  obj(fork). hasRole(fork, utensilRole). affordsTask(fork, eatingDrinkingTask). affordsTask(fork, foodPreparationTask).
}).
#pos(e2874@10, {}, {goesIn(fork, living_room)}, {
  obj(fork). hasRole(fork, utensilRole). affordsTask(fork, eatingDrinkingTask). affordsTask(fork, foodPreparationTask).
}).
#pos(e2875@10, {}, {goesIn(forks, bedroom)}, {
  obj(forks). hasRole(forks, utensilRole). affordsTask(forks, eatingDrinkingTask). affordsTask(forks, foodPreparationTask).
}).
#pos(e2876@10, {}, {goesIn(forks, garage)}, {
  obj(forks). hasRole(forks, utensilRole). affordsTask(forks, eatingDrinkingTask). affordsTask(forks, foodPreparationTask).
}).
#pos(e2877@10, {}, {goesIn(foundation, bathroom)}, {
  obj(foundation). hasRole(foundation, furnitureRole). affordsTask(foundation, maintenanceTask).
}).
#pos(e2878@10, {}, {goesIn(foundation, pantry)}, {
  obj(foundation). hasRole(foundation, furnitureRole). affordsTask(foundation, maintenanceTask).
}).
#pos(e2879@10, {}, {goesIn(fountain, bed)}, {
  obj(fountain). hasRole(fountain, storageContainerRole). affordsTask(fountain, leisureTask).
}).
#pos(e2880@10, {}, {goesIn(fountain, playroom)}, {
  obj(fountain). hasRole(fountain, storageContainerRole). affordsTask(fountain, leisureTask).
}).
#pos(e2881@10, {}, {goesIn(fountain_pen, garage)}, {
  obj(fountain_pen). hasRole(fountain_pen, toolRole).
}).
#pos(e2882@10, {}, {goesIn(fountain_pen, kitchen)}, {
  obj(fountain_pen). hasRole(fountain_pen, toolRole).
}).
#pos(e2883@10, {}, {goesIn(foyer, cabinet)}, {
  obj(foyer). hasRole(foyer, furnitureRole). affordsTask(foyer, leisureTask).
}).
#pos(e2884@10, {}, {goesIn(foyer, storage_room)}, {
  obj(foyer). hasRole(foyer, furnitureRole). affordsTask(foyer, leisureTask).
}).
#pos(e2885@10, {}, {goesIn(frame, bedroom)}, {
  obj(frame). hasRole(frame, furnitureRole). affordsTask(frame, leisureTask).
}).
#pos(e2886@10, {}, {goesIn(frame, storage_room)}, {
  obj(frame). hasRole(frame, furnitureRole). affordsTask(frame, leisureTask).
}).
#pos(e2887@10, {}, {goesIn(freezer, bathroom)}, {
  obj(freezer). hasRole(freezer, applianceRole). affordsTask(freezer, storageTask).
}).
#pos(e2888@10, {}, {goesIn(freezer, fridge)}, {
  obj(freezer). hasRole(freezer, applianceRole). affordsTask(freezer, storageTask).
}).
#pos(e2889@10, {}, {goesIn(fresh_fruit, bathroom)}, {
  obj(fresh_fruit). hasRole(fresh_fruit, consumableRole). affordsTask(fresh_fruit, eatingDrinkingTask).
}).
#pos(e2890@10, {}, {goesIn(fresh_fruit, fridge)}, {
  obj(fresh_fruit). hasRole(fresh_fruit, consumableRole). affordsTask(fresh_fruit, eatingDrinkingTask).
}).
#pos(e2891@10, {}, {goesIn(fresh_vegetables, closet)}, {
  obj(fresh_vegetables). hasRole(fresh_vegetables, consumableRole). affordsTask(fresh_vegetables, eatingDrinkingTask).
}).
#pos(e2892@10, {}, {goesIn(fresh_vegetables, sink)}, {
  obj(fresh_vegetables). hasRole(fresh_vegetables, consumableRole). affordsTask(fresh_vegetables, eatingDrinkingTask).
}).
#pos(e2893@10, {}, {goesIn(fridge, closet)}, {
  obj(fridge). hasRole(fridge, applianceRole). affordsTask(fridge, storageTask).
}).
#pos(e2894@10, {}, {goesIn(fridge, fridge)}, {
  obj(fridge). hasRole(fridge, applianceRole). affordsTask(fridge, storageTask).
}).
#pos(e2895@10, {}, {goesIn(frisbee, music_room)}, {
  obj(frisbee). hasRole(frisbee, entertainmentRole). affordsTask(frisbee, leisureTask).
}).
#pos(e2896@10, {}, {goesIn(frisbee, table)}, {
  obj(frisbee). hasRole(frisbee, entertainmentRole). affordsTask(frisbee, leisureTask).
}).
#pos(e2897@10, {}, {goesIn(front_courtyard, closet)}, {
  obj(front_courtyard). hasRole(front_courtyard, furnitureRole). affordsTask(front_courtyard, gardeningTask). affordsTask(front_courtyard, leisureTask).
}).
#pos(e2898@10, {}, {goesIn(front_courtyard, shelf)}, {
  obj(front_courtyard). hasRole(front_courtyard, furnitureRole). affordsTask(front_courtyard, gardeningTask). affordsTask(front_courtyard, leisureTask).
}).
#pos(e2899@10, {}, {goesIn(front_garden, fridge)}, {
  obj(front_garden). hasRole(front_garden, decorationRole). affordsTask(front_garden, leisureTask).
}).
#pos(e2900@10, {}, {goesIn(front_garden, living_room)}, {
  obj(front_garden). hasRole(front_garden, decorationRole). affordsTask(front_garden, leisureTask).
}).
#pos(e2901@10, {}, {goesIn(front_yard, garage)}, {
  obj(front_yard). hasRole(front_yard, furnitureRole). affordsTask(front_yard, gardeningTask). affordsTask(front_yard, leisureTask).
}).
#pos(e2902@10, {}, {goesIn(front_yard, trash)}, {
  obj(front_yard). hasRole(front_yard, furnitureRole). affordsTask(front_yard, gardeningTask). affordsTask(front_yard, leisureTask).
}).
#pos(e2903@10, {}, {goesIn(fruit, drawer)}, {
  obj(fruit). hasRole(fruit, consumableRole). affordsTask(fruit, eatingDrinkingTask).
}).
#pos(e2904@10, {}, {goesIn(fruit, living_room)}, {
  obj(fruit). hasRole(fruit, consumableRole). affordsTask(fruit, eatingDrinkingTask).
}).
#pos(e2905@10, {}, {goesIn(frying_pan, sink)}, {
  obj(frying_pan). hasRole(frying_pan, cookwareRole). affordsTask(frying_pan, foodPreparationTask).
}).
#pos(e2906@10, {}, {goesIn(frying_pan, trash)}, {
  obj(frying_pan). hasRole(frying_pan, cookwareRole). affordsTask(frying_pan, foodPreparationTask).
}).
#pos(e2907@10, {}, {goesIn(fur, dining_room)}, {
  obj(fur). hasRole(fur, consumableRole). affordsTask(fur, eatingDrinkingTask).
}).
#pos(e2908@10, {}, {goesIn(fur, fridge)}, {
  obj(fur). hasRole(fur, consumableRole). affordsTask(fur, eatingDrinkingTask).
}).
#pos(e2909@10, {}, {goesIn(furnace, dining_room)}, {
  obj(furnace). hasRole(furnace, applianceRole). affordsTask(furnace, maintenanceTask).
}).
#pos(e2910@10, {}, {goesIn(furnace, home_office)}, {
  obj(furnace). hasRole(furnace, applianceRole). affordsTask(furnace, maintenanceTask).
}).
#pos(e2911@10, {}, {goesIn(furniture, bathroom)}, {
  obj(furniture). hasRole(furniture, furnitureRole). affordsTask(furniture, storageTask).
}).
#pos(e2912@10, {}, {goesIn(furniture, table)}, {
  obj(furniture). hasRole(furniture, furnitureRole). affordsTask(furniture, storageTask).
}).
#pos(e2913@10, {}, {goesIn(furniture_dresser, home_office)}, {
  obj(furniture_dresser). hasRole(furniture_dresser, furnitureRole). affordsTask(furniture_dresser, storageTask).
}).
#pos(e2914@10, {}, {goesIn(furniture_dresser, sink)}, {
  obj(furniture_dresser). hasRole(furniture_dresser, furnitureRole). affordsTask(furniture_dresser, storageTask).
}).
#pos(e2915@10, {}, {goesIn(furniture_secretary, laundry_room)}, {
  obj(furniture_secretary). hasRole(furniture_secretary, furnitureRole). affordsTask(furniture_secretary, workStudyTask).
}).
#pos(e2916@10, {}, {goesIn(furniture_secretary, trash)}, {
  obj(furniture_secretary). hasRole(furniture_secretary, furnitureRole). affordsTask(furniture_secretary, workStudyTask).
}).
#pos(e2917@10, {}, {goesIn(game, drawer)}, {
  obj(game). hasRole(game, entertainmentRole). affordsTask(game, leisureTask).
}).
#pos(e2918@10, {}, {goesIn(game, kitchen)}, {
  obj(game). hasRole(game, entertainmentRole). affordsTask(game, leisureTask).
}).
#pos(e2919@10, {}, {goesIn(games, bedroom)}, {
  obj(games). hasRole(games, entertainmentRole). affordsTask(games, leisureTask).
}).
#pos(e2920@10, {}, {goesIn(games, shelf)}, {
  obj(games). hasRole(games, entertainmentRole). affordsTask(games, leisureTask).
}).
#pos(e2921@10, {}, {goesIn(garage, garden)}, {
  obj(garage). hasRole(garage, storageContainerRole). affordsTask(garage, storageTask).
}).
#pos(e2922@10, {}, {goesIn(garage, table)}, {
  obj(garage). hasRole(garage, storageContainerRole). affordsTask(garage, storageTask).
}).
#pos(e2923@10, {}, {goesIn(garbage, dining_room)}, {
  obj(garbage). hasRole(garbage, storageContainerRole). hasRole(garbage, wasteRole). affordsTask(garbage, wasteDisposalTask).
}).
#pos(e2924@10, {}, {goesIn(garbage, playroom)}, {
  obj(garbage). hasRole(garbage, storageContainerRole). hasRole(garbage, wasteRole). affordsTask(garbage, wasteDisposalTask).
}).
#pos(e2925@10, {}, {goesIn(garbage_can, hallway)}, {
  obj(garbage_can). hasRole(garbage_can, storageContainerRole). affordsTask(garbage_can, wasteDisposalTask).
}).
#pos(e2926@10, {}, {goesIn(garbage_can, trash)}, {
  obj(garbage_can). hasRole(garbage_can, storageContainerRole). affordsTask(garbage_can, wasteDisposalTask).
}).
#pos(e2927@10, {}, {goesIn(garbage_waste, cabinet)}, {
  obj(garbage_waste). hasRole(garbage_waste, consumableRole). affordsTask(garbage_waste, wasteDisposalTask).
}).
#pos(e2928@10, {}, {goesIn(garbage_waste, storage_room)}, {
  obj(garbage_waste). hasRole(garbage_waste, consumableRole). affordsTask(garbage_waste, wasteDisposalTask).
}).
#pos(e2929@10, {}, {goesIn(garden, bed)}, {
  obj(garden). hasRole(garden, furnitureRole). affordsTask(garden, gardeningTask).
}).
#pos(e2930@10, {}, {goesIn(garden, shelf)}, {
  obj(garden). hasRole(garden, furnitureRole). affordsTask(garden, gardeningTask).
}).
#pos(e2931@10, {}, {goesIn(garden_hose, kitchen)}, {
  obj(garden_hose). hasRole(garden_hose, toolRole). affordsTask(garden_hose, gardeningTask). affordsTask(garden_hose, hygieneTask).
}).
#pos(e2932@10, {}, {goesIn(garden_hose, playroom)}, {
  obj(garden_hose). hasRole(garden_hose, toolRole). affordsTask(garden_hose, gardeningTask). affordsTask(garden_hose, hygieneTask).
}).
#pos(e2933@10, {}, {goesIn(garlic, library)}, {
  obj(garlic). hasRole(garlic, consumableRole). affordsTask(garlic, foodPreparationTask).
}).
#pos(e2934@10, {}, {goesIn(garlic, table)}, {
  obj(garlic). hasRole(garlic, consumableRole). affordsTask(garlic, foodPreparationTask).
}).
#pos(e2935@10, {}, {goesIn(garment_bag, cabinet)}, {
  obj(garment_bag). hasRole(garment_bag, storageContainerRole). affordsTask(garment_bag, storageTask).
}).
#pos(e2936@10, {}, {goesIn(garment_bag, laundry_room)}, {
  obj(garment_bag). hasRole(garment_bag, storageContainerRole). affordsTask(garment_bag, storageTask).
}).
#pos(e2937@10, {}, {goesIn(gasoline, pantry)}, {
  obj(gasoline). hasRole(gasoline, consumableRole). affordsTask(gasoline, leisureTask). affordsTask(gasoline, workStudyTask).
}).
#pos(e2938@10, {}, {goesIn(gasoline, storage_room)}, {
  obj(gasoline). hasRole(gasoline, consumableRole). affordsTask(gasoline, leisureTask). affordsTask(gasoline, workStudyTask).
}).
#pos(e2939@10, {}, {goesIn(gate, bathroom)}, {
  obj(gate). hasRole(gate, furnitureRole). affordsTask(gate, maintenanceTask).
}).
#pos(e2940@10, {}, {goesIn(gate, home_office)}, {
  obj(gate). hasRole(gate, furnitureRole). affordsTask(gate, maintenanceTask).
}).
#pos(e2941@10, {}, {goesIn(gate_leg_table, library)}, {
  obj(gate_leg_table). hasRole(gate_leg_table, furnitureRole). affordsTask(gate_leg_table, leisureTask). affordsTask(gate_leg_table, workStudyTask).
}).
#pos(e2942@10, {}, {goesIn(gate_leg_table, music_room)}, {
  obj(gate_leg_table). hasRole(gate_leg_table, furnitureRole). affordsTask(gate_leg_table, leisureTask). affordsTask(gate_leg_table, workStudyTask).
}).
#pos(e2943@10, {}, {goesIn(gel, closet)}, {
  obj(gel). hasRole(gel, consumableRole). affordsTask(gel, hygieneTask). affordsTask(gel, leisureTask).
}).
#pos(e2944@10, {}, {goesIn(gel, music_room)}, {
  obj(gel). hasRole(gel, consumableRole). affordsTask(gel, hygieneTask). affordsTask(gel, leisureTask).
}).
#pos(e2945@10, {}, {goesIn(gel_toothpaste, kitchen)}, {
  obj(gel_toothpaste). hasRole(gel_toothpaste, cleaningToolRole). affordsTask(gel_toothpaste, hygieneTask).
}).
#pos(e2946@10, {}, {goesIn(gel_toothpaste, table)}, {
  obj(gel_toothpaste). hasRole(gel_toothpaste, cleaningToolRole). affordsTask(gel_toothpaste, hygieneTask).
}).
#pos(e2947@10, {}, {goesIn(gift, dining_room)}, {
  obj(gift). hasRole(gift, consumableRole). affordsTask(gift, leisureTask).
}).
#pos(e2948@10, {}, {goesIn(gift, music_room)}, {
  obj(gift). hasRole(gift, consumableRole). affordsTask(gift, leisureTask).
}).
#pos(e2949@10, {}, {goesIn(glass, fridge)}, {
  obj(glass). hasRole(glass, utensilRole). affordsTask(glass, eatingDrinkingTask).
}).
#pos(e2950@10, {}, {goesIn(glass, pantry)}, {
  obj(glass). hasRole(glass, utensilRole). affordsTask(glass, eatingDrinkingTask).
}).
#pos(e2951@10, {}, {goesIn(glass_fronted_cupboard, playroom)}, {
  obj(glass_fronted_cupboard). hasRole(glass_fronted_cupboard, storageContainerRole). affordsTask(glass_fronted_cupboard, storageTask).
}).
#pos(e2952@10, {}, {goesIn(glass_fronted_cupboard, table)}, {
  obj(glass_fronted_cupboard). hasRole(glass_fronted_cupboard, storageContainerRole). affordsTask(glass_fronted_cupboard, storageTask).
}).
#pos(e2953@10, {}, {goesIn(glass_fronted_display_cabinet, garage)}, {
  obj(glass_fronted_display_cabinet). hasRole(glass_fronted_display_cabinet, storageContainerRole). affordsTask(glass_fronted_display_cabinet, storageTask).
}).
#pos(e2954@10, {}, {goesIn(glass_fronted_display_cabinet, storage_room)}, {
  obj(glass_fronted_display_cabinet). hasRole(glass_fronted_display_cabinet, storageContainerRole). affordsTask(glass_fronted_display_cabinet, storageTask).
}).
#pos(e2955@10, {}, {goesIn(glass_of_water, living_room)}, {
  obj(glass_of_water). hasRole(glass_of_water, consumableRole). affordsTask(glass_of_water, eatingDrinkingTask).
}).
#pos(e2956@10, {}, {goesIn(glass_of_water, pantry)}, {
  obj(glass_of_water). hasRole(glass_of_water, consumableRole). affordsTask(glass_of_water, eatingDrinkingTask).
}).
#pos(e2957@10, {}, {goesIn(glasses, living_room)}, {
  obj(glasses). hasRole(glasses, utensilRole). affordsTask(glasses, eatingDrinkingTask).
}).
#pos(e2958@10, {}, {goesIn(glasses, music_room)}, {
  obj(glasses). hasRole(glasses, utensilRole). affordsTask(glasses, eatingDrinkingTask).
}).
#pos(e2959@10, {}, {goesIn(glasses_case, garden)}, {
  obj(glasses_case). hasRole(glasses_case, storageContainerRole). affordsTask(glasses_case, storageTask).
}).
#pos(e2960@10, {}, {goesIn(glasses_case, shelf)}, {
  obj(glasses_case). hasRole(glasses_case, storageContainerRole). affordsTask(glasses_case, storageTask).
}).
#pos(e2961@10, {}, {goesIn(glue, garden)}, {
  obj(glue). hasRole(glue, toolRole). affordsTask(glue, maintenanceTask).
}).
#pos(e2962@10, {}, {goesIn(glue, kitchen)}, {
  obj(glue). hasRole(glue, toolRole). affordsTask(glue, maintenanceTask).
}).
#pos(e2963@10, {}, {goesIn(glue_stick, bedroom)}, {
  obj(glue_stick). hasRole(glue_stick, toolRole). affordsTask(glue_stick, maintenanceTask).
}).
#pos(e2964@10, {}, {goesIn(glue_stick, garden)}, {
  obj(glue_stick). hasRole(glue_stick, toolRole). affordsTask(glue_stick, maintenanceTask).
}).
#pos(e2965@10, {}, {goesIn(good_book, fridge)}, {
  obj(good_book). hasRole(good_book, documentRole). affordsTask(good_book, leisureTask).
}).
#pos(e2966@10, {}, {goesIn(good_book, library)}, {
  obj(good_book). hasRole(good_book, documentRole). affordsTask(good_book, leisureTask).
}).
#pos(e2967@10, {}, {goesIn(grape, living_room)}, {
  obj(grape). hasRole(grape, consumableRole). affordsTask(grape, eatingDrinkingTask).
}).
#pos(e2968@10, {}, {goesIn(grape, playroom)}, {
  obj(grape). hasRole(grape, consumableRole). affordsTask(grape, eatingDrinkingTask).
}).
#pos(e2969@10, {}, {goesIn(grape_juice, bathroom)}, {
  obj(grape_juice). hasRole(grape_juice, consumableRole). affordsTask(grape_juice, eatingDrinkingTask).
}).
#pos(e2970@10, {}, {goesIn(grape_juice, home_office)}, {
  obj(grape_juice). hasRole(grape_juice, consumableRole). affordsTask(grape_juice, eatingDrinkingTask).
}).
#pos(e2971@10, {}, {goesIn(grapes, home_office)}, {
  obj(grapes). hasRole(grapes, consumableRole). affordsTask(grapes, eatingDrinkingTask).
}).
#pos(e2972@10, {}, {goesIn(grapes, music_room)}, {
  obj(grapes). hasRole(grapes, consumableRole). affordsTask(grapes, eatingDrinkingTask).
}).
#pos(e2973@10, {}, {goesIn(grease, dining_room)}, {
  obj(grease). hasRole(grease, cleaningToolRole). affordsTask(grease, maintenanceTask).
}).
#pos(e2974@10, {}, {goesIn(grease, music_room)}, {
  obj(grease). hasRole(grease, cleaningToolRole). affordsTask(grease, maintenanceTask).
}).
#pos(e2975@10, {}, {goesIn(grill, drawer)}, {
  obj(grill). hasRole(grill, cookwareRole). affordsTask(grill, foodPreparationTask).
}).
#pos(e2976@10, {}, {goesIn(grill, home_office)}, {
  obj(grill). hasRole(grill, cookwareRole). affordsTask(grill, foodPreparationTask).
}).
#pos(e2977@10, {}, {goesIn(groceries, hallway)}, {
  obj(groceries). hasRole(groceries, consumableRole). affordsTask(groceries, eatingDrinkingTask).
}).
#pos(e2978@10, {}, {goesIn(groceries, laundry_room)}, {
  obj(groceries). hasRole(groceries, consumableRole). affordsTask(groceries, eatingDrinkingTask).
}).
#pos(e2979@10, {}, {goesIn(guitar, garage)}, {
  obj(guitar). hasRole(guitar, musicalInstrumentRole). affordsTask(guitar, leisureTask).
}).
#pos(e2980@10, {}, {goesIn(guitar, sink)}, {
  obj(guitar). hasRole(guitar, musicalInstrumentRole). affordsTask(guitar, leisureTask).
}).
#pos(e2981@10, {}, {goesIn(gum, garage)}, {
  obj(gum). hasRole(gum, consumableRole). affordsTask(gum, eatingDrinkingTask).
}).
#pos(e2982@10, {}, {goesIn(gum, playroom)}, {
  obj(gum). hasRole(gum, consumableRole). affordsTask(gum, eatingDrinkingTask).
}).
#pos(e2983@10, {}, {goesIn(gutter, bathroom)}, {
  obj(gutter). hasRole(gutter, toolRole). affordsTask(gutter, maintenanceTask).
}).
#pos(e2984@10, {}, {goesIn(gutter, pantry)}, {
  obj(gutter). hasRole(gutter, toolRole). affordsTask(gutter, maintenanceTask).
}).
#pos(e2985@10, {}, {goesIn(hair, closet)}, {
  obj(hair). hasRole(hair, toolRole). affordsTask(hair, hygieneTask).
}).
#pos(e2986@10, {}, {goesIn(hair, hallway)}, {
  obj(hair). hasRole(hair, toolRole). affordsTask(hair, hygieneTask).
}).
#pos(e2987@10, {}, {goesIn(hair_accessory, garage)}, {
  obj(hair_accessory). hasRole(hair_accessory, toolRole). affordsTask(hair_accessory, dressingTask).
}).
#pos(e2988@10, {}, {goesIn(hair_accessory, living_room)}, {
  obj(hair_accessory). hasRole(hair_accessory, toolRole). affordsTask(hair_accessory, dressingTask).
}).
#pos(e2989@10, {}, {goesIn(hair_care_article, pantry)}, {
  obj(hair_care_article). hasRole(hair_care_article, cleaningToolRole). affordsTask(hair_care_article, hygieneTask).
}).
#pos(e2990@10, {}, {goesIn(hair_care_article, shelf)}, {
  obj(hair_care_article). hasRole(hair_care_article, cleaningToolRole). affordsTask(hair_care_article, hygieneTask).
}).
#pos(e2991@10, {}, {goesIn(hair_clip, garage)}, {
  obj(hair_clip). hasRole(hair_clip, utensilRole). affordsTask(hair_clip, dressingTask).
}).
#pos(e2992@10, {}, {goesIn(hair_clip, trash)}, {
  obj(hair_clip). hasRole(hair_clip, utensilRole). affordsTask(hair_clip, dressingTask).
}).
#pos(e2993@10, {}, {goesIn(hair_conditioner, music_room)}, {
  obj(hair_conditioner). hasRole(hair_conditioner, cleaningToolRole). affordsTask(hair_conditioner, hygieneTask).
}).
#pos(e2994@10, {}, {goesIn(hair_conditioner, storage_room)}, {
  obj(hair_conditioner). hasRole(hair_conditioner, cleaningToolRole). affordsTask(hair_conditioner, hygieneTask).
}).
#pos(e2995@10, {}, {goesIn(hair_dryer, playroom)}, {
  obj(hair_dryer). hasRole(hair_dryer, applianceRole). affordsTask(hair_dryer, hygieneTask). affordsTask(hair_dryer, leisureTask).
}).
#pos(e2996@10, {}, {goesIn(hair_dryer, shelf)}, {
  obj(hair_dryer). hasRole(hair_dryer, applianceRole). affordsTask(hair_dryer, hygieneTask). affordsTask(hair_dryer, leisureTask).
}).
#pos(e2997@10, {}, {goesIn(hair_gel, bed)}, {
  obj(hair_gel). hasRole(hair_gel, toolRole). affordsTask(hair_gel, leisureTask).
}).
#pos(e2998@10, {}, {goesIn(hair_gel, closet)}, {
  obj(hair_gel). hasRole(hair_gel, toolRole). affordsTask(hair_gel, leisureTask).
}).
#pos(e2999@10, {}, {goesIn(hair_shaping_gel, garage)}, {
  obj(hair_shaping_gel). hasRole(hair_shaping_gel, cleaningToolRole). affordsTask(hair_shaping_gel, hygieneTask).
}).
#pos(e3000@10, {}, {goesIn(hair_shaping_gel, hallway)}, {
  obj(hair_shaping_gel). hasRole(hair_shaping_gel, cleaningToolRole). affordsTask(hair_shaping_gel, hygieneTask).
}).
#pos(e3001@10, {}, {goesIn(hairbrush, garden)}, {
  obj(hairbrush). hasRole(hairbrush, toolRole). affordsTask(hairbrush, hygieneTask).
}).
#pos(e3002@10, {}, {goesIn(hairbrush, living_room)}, {
  obj(hairbrush). hasRole(hairbrush, toolRole). affordsTask(hairbrush, hygieneTask).
}).
#pos(e3003@10, {}, {goesIn(haircloth, hallway)}, {
  obj(haircloth). hasRole(haircloth, clothingRole). affordsTask(haircloth, dressingTask).
}).
#pos(e3004@10, {}, {goesIn(haircloth, trash)}, {
  obj(haircloth). hasRole(haircloth, clothingRole). affordsTask(haircloth, dressingTask).
}).
#pos(e3005@10, {}, {goesIn(hairdresser_chair, kitchen)}, {
  obj(hairdresser_chair). hasRole(hairdresser_chair, furnitureRole). affordsTask(hairdresser_chair, leisureTask).
}).
#pos(e3006@10, {}, {goesIn(hairdresser_chair, shelf)}, {
  obj(hairdresser_chair). hasRole(hairdresser_chair, furnitureRole). affordsTask(hairdresser_chair, leisureTask).
}).
#pos(e3007@10, {}, {goesIn(hairpin, pantry)}, {
  obj(hairpin). hasRole(hairpin, utensilRole). affordsTask(hairpin, dressingTask).
}).
#pos(e3008@10, {}, {goesIn(hairpin, shelf)}, {
  obj(hairpin). hasRole(hairpin, utensilRole). affordsTask(hairpin, dressingTask).
}).
#pos(e3009@10, {}, {goesIn(hall, home_office)}, {
  obj(hall). hasRole(hall, furnitureRole). affordsTask(hall, leisureTask). affordsTask(hall, workStudyTask).
}).
#pos(e3010@10, {}, {goesIn(hall, pantry)}, {
  obj(hall). hasRole(hall, furnitureRole). affordsTask(hall, leisureTask). affordsTask(hall, workStudyTask).
}).
#pos(e3011@10, {}, {goesIn(hallway, library)}, {
  obj(hallway). hasRole(hallway, furnitureRole). affordsTask(hallway, leisureTask).
}).
#pos(e3012@10, {}, {goesIn(hallway, playroom)}, {
  obj(hallway). hasRole(hallway, furnitureRole). affordsTask(hallway, leisureTask).
}).
#pos(e3013@10, {}, {goesIn(ham, home_office)}, {
  obj(ham). hasRole(ham, consumableRole). affordsTask(ham, eatingDrinkingTask).
}).
#pos(e3014@10, {}, {goesIn(ham, kitchen)}, {
  obj(ham). hasRole(ham, consumableRole). affordsTask(ham, eatingDrinkingTask).
}).
#pos(e3015@10, {}, {goesIn(hammer, living_room)}, {
  obj(hammer). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e3016@10, {}, {goesIn(hammer, trash)}, {
  obj(hammer). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e3017@10, {}, {goesIn(hammers, garage)}, {
  obj(hammers). hasRole(hammers, toolRole). affordsTask(hammers, maintenanceTask).
}).
#pos(e3018@10, {}, {goesIn(hammers, garden)}, {
  obj(hammers). hasRole(hammers, toolRole). affordsTask(hammers, maintenanceTask).
}).
#pos(e3019@10, {}, {goesIn(handbag, garden)}, {
  obj(handbag). hasRole(handbag, storageContainerRole). affordsTask(handbag, storageTask).
}).
#pos(e3020@10, {}, {goesIn(handbag, hallway)}, {
  obj(handbag). hasRole(handbag, storageContainerRole). affordsTask(handbag, storageTask).
}).
#pos(e3021@10, {}, {goesIn(handle, closet)}, {
  obj(handle). hasRole(handle, toolRole). affordsTask(handle, maintenanceTask).
}).
#pos(e3022@10, {}, {goesIn(handle, garden)}, {
  obj(handle). hasRole(handle, toolRole). affordsTask(handle, maintenanceTask).
}).
#pos(e3023@10, {}, {goesIn(hanger, dining_room)}, {
  obj(hanger). hasRole(hanger, storageContainerRole). affordsTask(hanger, dressingTask).
}).
#pos(e3024@10, {}, {goesIn(hanger, kitchen)}, {
  obj(hanger). hasRole(hanger, storageContainerRole). affordsTask(hanger, dressingTask).
}).
#pos(e3025@10, {}, {goesIn(hanging_rail, playroom)}, {
  obj(hanging_rail). hasRole(hanging_rail, furnitureRole). affordsTask(hanging_rail, storageTask).
}).
#pos(e3026@10, {}, {goesIn(hanging_rail, trash)}, {
  obj(hanging_rail). hasRole(hanging_rail, furnitureRole). affordsTask(hanging_rail, storageTask).
}).
#pos(e3027@10, {}, {goesIn(hard_drive, dining_room)}, {
  obj(hard_drive). hasRole(hard_drive, applianceRole). affordsTask(hard_drive, workStudyTask).
}).
#pos(e3028@10, {}, {goesIn(hard_drive, drawer)}, {
  obj(hard_drive). hasRole(hard_drive, applianceRole). affordsTask(hard_drive, workStudyTask).
}).
#pos(e3029@10, {}, {goesIn(hat, garden)}, {
  obj(hat). hasRole(hat, clothingRole). affordsTask(hat, dressingTask).
}).
#pos(e3030@10, {}, {goesIn(hat, playroom)}, {
  obj(hat). hasRole(hat, clothingRole). affordsTask(hat, dressingTask).
}).
#pos(e3031@10, {}, {goesIn(hats, garage)}, {
  obj(hats). hasRole(hats, clothingRole). affordsTask(hats, leisureTask).
}).
#pos(e3032@10, {}, {goesIn(hats, playroom)}, {
  obj(hats). hasRole(hats, clothingRole). affordsTask(hats, leisureTask).
}).
#pos(e3033@10, {}, {goesIn(hearing_aid, pantry)}, {
  obj(hearing_aid). hasRole(hearing_aid, toolRole). affordsTask(hearing_aid, workStudyTask).
}).
#pos(e3034@10, {}, {goesIn(hearing_aid, sink)}, {
  obj(hearing_aid). hasRole(hearing_aid, toolRole). affordsTask(hearing_aid, workStudyTask).
}).
#pos(e3035@10, {}, {goesIn(heat_source, closet)}, {
  obj(heat_source). hasRole(heat_source, cookwareRole). affordsTask(heat_source, foodPreparationTask).
}).
#pos(e3036@10, {}, {goesIn(heat_source, hallway)}, {
  obj(heat_source). hasRole(heat_source, cookwareRole). affordsTask(heat_source, foodPreparationTask).
}).
#pos(e3037@10, {}, {goesIn(heated_towel_rack, fridge)}, {
  obj(heated_towel_rack). hasRole(heated_towel_rack, storageContainerRole). affordsTask(heated_towel_rack, eatingDrinkingTask).
}).
#pos(e3038@10, {}, {goesIn(heated_towel_rack, hallway)}, {
  obj(heated_towel_rack). hasRole(heated_towel_rack, storageContainerRole). affordsTask(heated_towel_rack, eatingDrinkingTask).
}).
#pos(e3039@10, {}, {goesIn(heater, garden)}, {
  obj(heater). hasRole(heater, applianceRole). affordsTask(heater, maintenanceTask).
}).
#pos(e3040@10, {}, {goesIn(heater, laundry_room)}, {
  obj(heater). hasRole(heater, applianceRole). affordsTask(heater, maintenanceTask).
}).
#pos(e3041@10, {}, {goesIn(heating_room, drawer)}, {
  obj(heating_room). hasRole(heating_room, applianceRole). affordsTask(heating_room, leisureTask).
}).
#pos(e3042@10, {}, {goesIn(heating_room, hallway)}, {
  obj(heating_room). hasRole(heating_room, applianceRole). affordsTask(heating_room, leisureTask).
}).
#pos(e3043@10, {}, {goesIn(hide_bed, bathroom)}, {
  obj(hide_bed). hasRole(hide_bed, furnitureRole). affordsTask(hide_bed, sleepingTask).
}).
#pos(e3044@10, {}, {goesIn(hide_bed, sink)}, {
  obj(hide_bed). hasRole(hide_bed, furnitureRole). affordsTask(hide_bed, sleepingTask).
}).
#pos(e3045@10, {}, {goesIn(hide_bed_sofa, dining_room)}, {
  obj(hide_bed_sofa). hasRole(hide_bed_sofa, furnitureRole). affordsTask(hide_bed_sofa, leisureTask). affordsTask(hide_bed_sofa, sleepingTask).
}).
#pos(e3046@10, {}, {goesIn(hide_bed_sofa, garden)}, {
  obj(hide_bed_sofa). hasRole(hide_bed_sofa, furnitureRole). affordsTask(hide_bed_sofa, leisureTask). affordsTask(hide_bed_sofa, sleepingTask).
}).
#pos(e3047@10, {}, {goesIn(highlighter, bed)}, {
  obj(highlighter). hasRole(highlighter, toolRole). affordsTask(highlighter, leisureTask). affordsTask(highlighter, workStudyTask).
}).
#pos(e3048@10, {}, {goesIn(highlighter, pantry)}, {
  obj(highlighter). hasRole(highlighter, toolRole). affordsTask(highlighter, leisureTask). affordsTask(highlighter, workStudyTask).
}).
#pos(e3049@10, {}, {goesIn(highlighter_pen, garden)}, {
  obj(highlighter_pen). hasRole(highlighter_pen, utensilRole). affordsTask(highlighter_pen, foodPreparationTask).
}).
#pos(e3050@10, {}, {goesIn(highlighter_pen, trash)}, {
  obj(highlighter_pen). hasRole(highlighter_pen, utensilRole). affordsTask(highlighter_pen, foodPreparationTask).
}).
#pos(e3051@10, {}, {goesIn(hinged_door, dining_room)}, {
  obj(hinged_door). hasRole(hinged_door, furnitureRole). affordsTask(hinged_door, maintenanceTask). affordsTask(hinged_door, storageTask).
}).
#pos(e3052@10, {}, {goesIn(hinged_door, shelf)}, {
  obj(hinged_door). hasRole(hinged_door, furnitureRole). affordsTask(hinged_door, maintenanceTask). affordsTask(hinged_door, storageTask).
}).
#pos(e3053@10, {}, {goesIn(hoist, bathroom)}, {
  obj(hoist). hasRole(hoist, toolRole). affordsTask(hoist, maintenanceTask).
}).
#pos(e3054@10, {}, {goesIn(hoist, cabinet)}, {
  obj(hoist). hasRole(hoist, toolRole). affordsTask(hoist, maintenanceTask).
}).
#pos(e3055@10, {}, {goesIn(holdall, home_office)}, {
  obj(holdall). hasRole(holdall, storageContainerRole). affordsTask(holdall, storageTask).
}).
#pos(e3056@10, {}, {goesIn(holdall, sink)}, {
  obj(holdall). hasRole(holdall, storageContainerRole). affordsTask(holdall, storageTask).
}).
#pos(e3057@10, {}, {goesIn(hole_punch, library)}, {
  obj(hole_punch). hasRole(hole_punch, toolRole). affordsTask(hole_punch, maintenanceTask).
}).
#pos(e3058@10, {}, {goesIn(hole_punch, living_room)}, {
  obj(hole_punch). hasRole(hole_punch, toolRole). affordsTask(hole_punch, maintenanceTask).
}).
#pos(e3059@10, {}, {goesIn(home_office, drawer)}, {
  obj(home_office). hasRole(home_office, furnitureRole). affordsTask(home_office, workStudyTask).
}).
#pos(e3060@10, {}, {goesIn(home_office, home_office)}, {
  obj(home_office). hasRole(home_office, furnitureRole). affordsTask(home_office, workStudyTask).
}).
#pos(e3061@10, {}, {goesIn(honey, bed)}, {
  obj(honey). hasRole(honey, consumableRole). affordsTask(honey, eatingDrinkingTask).
}).
#pos(e3062@10, {}, {goesIn(honey, garage)}, {
  obj(honey). hasRole(honey, consumableRole). affordsTask(honey, eatingDrinkingTask).
}).
#pos(e3063@10, {}, {goesIn(hook, closet)}, {
  obj(hook). hasRole(hook, toolRole).
}).
#pos(e3064@10, {}, {goesIn(hook, music_room)}, {
  obj(hook). hasRole(hook, toolRole).
}).
#pos(e3065@10, {}, {goesIn(horn, bedroom)}, {
  obj(horn). hasRole(horn, musicalInstrumentRole). affordsTask(horn, leisureTask).
}).
#pos(e3066@10, {}, {goesIn(horn, laundry_room)}, {
  obj(horn). hasRole(horn, musicalInstrumentRole). affordsTask(horn, leisureTask).
}).
#pos(e3067@10, {}, {goesIn(hose, bedroom)}, {
  obj(hose). hasRole(hose, toolRole). affordsTask(hose, cleaningTask). affordsTask(hose, gardeningTask).
}).
#pos(e3068@10, {}, {goesIn(hose, pantry)}, {
  obj(hose). hasRole(hose, toolRole). affordsTask(hose, cleaningTask). affordsTask(hose, gardeningTask).
}).
#pos(e3069@10, {}, {goesIn(hot_faucet, bedroom)}, {
  obj(hot_faucet). hasRole(hot_faucet, toolRole). affordsTask(hot_faucet, hygieneTask).
}).
#pos(e3070@10, {}, {goesIn(hot_faucet, table)}, {
  obj(hot_faucet). hasRole(hot_faucet, toolRole). affordsTask(hot_faucet, hygieneTask).
}).
#pos(e3071@10, {}, {goesIn(hot_sauce, closet)}, {
  obj(hot_sauce). hasRole(hot_sauce, consumableRole). affordsTask(hot_sauce, eatingDrinkingTask).
}).
#pos(e3072@10, {}, {goesIn(hot_sauce, sink)}, {
  obj(hot_sauce). hasRole(hot_sauce, consumableRole). affordsTask(hot_sauce, eatingDrinkingTask).
}).
#pos(e3073@10, {}, {goesIn(hot_table, bedroom)}, {
  obj(hot_table). hasRole(hot_table, cookwareRole). affordsTask(hot_table, foodPreparationTask).
}).
#pos(e3074@10, {}, {goesIn(hot_table, garden)}, {
  obj(hot_table). hasRole(hot_table, cookwareRole). affordsTask(hot_table, foodPreparationTask).
}).
#pos(e3075@10, {}, {goesIn(hot_tap, closet)}, {
  obj(hot_tap). hasRole(hot_tap, applianceRole). affordsTask(hot_tap, eatingDrinkingTask). affordsTask(hot_tap, hygieneTask).
}).
#pos(e3076@10, {}, {goesIn(hot_tap, garage)}, {
  obj(hot_tap). hasRole(hot_tap, applianceRole). affordsTask(hot_tap, eatingDrinkingTask). affordsTask(hot_tap, hygieneTask).
}).
#pos(e3077@10, {}, {goesIn(house, music_room)}, {
  obj(house). hasRole(house, furnitureRole). affordsTask(house, leisureTask). affordsTask(house, storageTask).
}).
#pos(e3078@10, {}, {goesIn(house, sink)}, {
  obj(house). hasRole(house, furnitureRole). affordsTask(house, leisureTask). affordsTask(house, storageTask).
}).
#pos(e3079@10, {}, {goesIn(ice, table)}, {
  obj(ice). hasRole(ice, consumableRole). affordsTask(ice, eatingDrinkingTask).
}).
#pos(e3080@10, {}, {goesIn(ice, trash)}, {
  obj(ice). hasRole(ice, consumableRole). affordsTask(ice, eatingDrinkingTask).
}).
#pos(e3081@10, {}, {goesIn(ice_cream, garage)}, {
  obj(ice_cream). hasRole(ice_cream, consumableRole). affordsTask(ice_cream, eatingDrinkingTask).
}).
#pos(e3082@10, {}, {goesIn(ice_cream, sink)}, {
  obj(ice_cream). hasRole(ice_cream, consumableRole). affordsTask(ice_cream, eatingDrinkingTask).
}).
#pos(e3083@10, {}, {goesIn(ice_cubes, living_room)}, {
  obj(ice_cubes). hasRole(ice_cubes, consumableRole). affordsTask(ice_cubes, eatingDrinkingTask).
}).
#pos(e3084@10, {}, {goesIn(ice_cubes, shelf)}, {
  obj(ice_cubes). hasRole(ice_cubes, consumableRole). affordsTask(ice_cubes, eatingDrinkingTask).
}).
#pos(e3085@10, {}, {goesIn(icebox, hallway)}, {
  obj(icebox). hasRole(icebox, applianceRole). affordsTask(icebox, storageTask).
}).
#pos(e3086@10, {}, {goesIn(icebox, music_room)}, {
  obj(icebox). hasRole(icebox, applianceRole). affordsTask(icebox, storageTask).
}).
#pos(e3087@10, {}, {goesIn(icecream, library)}, {
  obj(icecream). hasRole(icecream, consumableRole). affordsTask(icecream, eatingDrinkingTask).
}).
#pos(e3088@10, {}, {goesIn(icecream, shelf)}, {
  obj(icecream). hasRole(icecream, consumableRole). affordsTask(icecream, eatingDrinkingTask).
}).
#pos(e3089@10, {}, {goesIn(index_card, garden)}, {
  obj(index_card). hasRole(index_card, documentRole). affordsTask(index_card, workStudyTask).
}).
#pos(e3090@10, {}, {goesIn(index_card, shelf)}, {
  obj(index_card). hasRole(index_card, documentRole). affordsTask(index_card, workStudyTask).
}).
#pos(e3091@10, {}, {goesIn(index_card_cabinet, bed)}, {
  obj(index_card_cabinet). hasRole(index_card_cabinet, storageContainerRole). affordsTask(index_card_cabinet, storageTask).
}).
#pos(e3092@10, {}, {goesIn(index_card_cabinet, sink)}, {
  obj(index_card_cabinet). hasRole(index_card_cabinet, storageContainerRole). affordsTask(index_card_cabinet, storageTask).
}).
#pos(e3093@10, {}, {goesIn(ingredients, cabinet)}, {
  obj(ingredients). hasRole(ingredients, consumableRole). affordsTask(ingredients, foodPreparationTask).
}).
#pos(e3094@10, {}, {goesIn(ingredients, sink)}, {
  obj(ingredients). hasRole(ingredients, consumableRole). affordsTask(ingredients, foodPreparationTask).
}).
#pos(e3095@10, {}, {goesIn(ink, drawer)}, {
  obj(ink).
}).
#pos(e3096@10, {}, {goesIn(ink, trash)}, {
  obj(ink).
}).
#pos(e3097@10, {}, {goesIn(instrument_triangle, garage)}, {
  obj(instrument_triangle). hasRole(instrument_triangle, musicalInstrumentRole). affordsTask(instrument_triangle, leisureTask). affordsTask(instrument_triangle, workStudyTask).
}).
#pos(e3098@10, {}, {goesIn(instrument_triangle, storage_room)}, {
  obj(instrument_triangle). hasRole(instrument_triangle, musicalInstrumentRole). affordsTask(instrument_triangle, leisureTask). affordsTask(instrument_triangle, workStudyTask).
}).
#pos(e3099@10, {}, {goesIn(interior_area, cabinet)}, {
  obj(interior_area). hasRole(interior_area, furnitureRole). affordsTask(interior_area, leisureTask). affordsTask(interior_area, workStudyTask).
}).
#pos(e3100@10, {}, {goesIn(interior_area, drawer)}, {
  obj(interior_area). hasRole(interior_area, furnitureRole). affordsTask(interior_area, leisureTask). affordsTask(interior_area, workStudyTask).
}).
#pos(e3101@10, {}, {goesIn(iron, drawer)}, {
  obj(iron). hasRole(iron, toolRole). affordsTask(iron, foodPreparationTask).
}).
#pos(e3102@10, {}, {goesIn(iron, garage)}, {
  obj(iron). hasRole(iron, toolRole). affordsTask(iron, foodPreparationTask).
}).
#pos(e3103@10, {}, {goesIn(jack, cabinet)}, {
  obj(jack). hasRole(jack, toolRole). affordsTask(jack, maintenanceTask).
}).
#pos(e3104@10, {}, {goesIn(jack, sink)}, {
  obj(jack). hasRole(jack, toolRole). affordsTask(jack, maintenanceTask).
}).
#pos(e3105@10, {}, {goesIn(jacket, bathroom)}, {
  obj(jacket). hasRole(jacket, clothingRole). affordsTask(jacket, dressingTask).
}).
#pos(e3106@10, {}, {goesIn(jacket, fridge)}, {
  obj(jacket). hasRole(jacket, clothingRole). affordsTask(jacket, dressingTask).
}).
#pos(e3107@10, {}, {goesIn(jar, playroom)}, {
  obj(jar). hasRole(jar, storageContainerRole). affordsTask(jar, storageTask).
}).
#pos(e3108@10, {}, {goesIn(jar, sink)}, {
  obj(jar). hasRole(jar, storageContainerRole). affordsTask(jar, storageTask).
}).
#pos(e3109@10, {}, {goesIn(jars, music_room)}, {
  obj(jars). hasRole(jars, storageContainerRole). affordsTask(jars, storageTask).
}).
#pos(e3110@10, {}, {goesIn(jars, sink)}, {
  obj(jars). hasRole(jars, storageContainerRole). affordsTask(jars, storageTask).
}).
#pos(e3111@10, {}, {goesIn(jeans, bed)}, {
  obj(jeans). hasRole(jeans, clothingRole). affordsTask(jeans, dressingTask).
}).
#pos(e3112@10, {}, {goesIn(jeans, kitchen)}, {
  obj(jeans). hasRole(jeans, clothingRole). affordsTask(jeans, dressingTask).
}).
#pos(e3113@10, {}, {goesIn(jello, garage)}, {
  obj(jello). hasRole(jello, consumableRole). affordsTask(jello, eatingDrinkingTask).
}).
#pos(e3114@10, {}, {goesIn(jello, hallway)}, {
  obj(jello). hasRole(jello, consumableRole). affordsTask(jello, eatingDrinkingTask).
}).
#pos(e3115@10, {}, {goesIn(jelly, hallway)}, {
  obj(jelly). hasRole(jelly, consumableRole). affordsTask(jelly, eatingDrinkingTask).
}).
#pos(e3116@10, {}, {goesIn(jelly, living_room)}, {
  obj(jelly). hasRole(jelly, consumableRole). affordsTask(jelly, eatingDrinkingTask).
}).
#pos(e3117@10, {}, {goesIn(jewelry, bedroom)}, {
  obj(jewelry). hasRole(jewelry, decorationRole). affordsTask(jewelry, leisureTask).
}).
#pos(e3118@10, {}, {goesIn(jewelry, garden)}, {
  obj(jewelry). hasRole(jewelry, decorationRole). affordsTask(jewelry, leisureTask).
}).
#pos(e3119@10, {}, {goesIn(juice, garden)}, {
  obj(juice). hasRole(juice, consumableRole). affordsTask(juice, eatingDrinkingTask).
}).
#pos(e3120@10, {}, {goesIn(juice, storage_room)}, {
  obj(juice). hasRole(juice, consumableRole). affordsTask(juice, eatingDrinkingTask).
}).
#pos(e3121@10, {}, {goesIn(ketchup, shelf)}, {
  obj(ketchup). hasRole(ketchup, consumableRole). affordsTask(ketchup, eatingDrinkingTask).
}).
#pos(e3122@10, {}, {goesIn(ketchup, table)}, {
  obj(ketchup). hasRole(ketchup, consumableRole). affordsTask(ketchup, eatingDrinkingTask).
}).
#pos(e3123@10, {}, {goesIn(kettle, drawer)}, {
  obj(kettle). hasRole(kettle, cookwareRole). affordsTask(kettle, foodPreparationTask).
}).
#pos(e3124@10, {}, {goesIn(kettle, library)}, {
  obj(kettle). hasRole(kettle, cookwareRole). affordsTask(kettle, foodPreparationTask).
}).
#pos(e3125@10, {}, {goesIn(key, cabinet)}, {
  obj(key). hasRole(key, toolRole). affordsTask(key, maintenanceTask).
}).
#pos(e3126@10, {}, {goesIn(key, playroom)}, {
  obj(key). hasRole(key, toolRole). affordsTask(key, maintenanceTask).
}).
#pos(e3127@10, {}, {goesIn(keyboard, fridge)}, {
  obj(keyboard). hasRole(keyboard, toolRole). affordsTask(keyboard, workStudyTask).
}).
#pos(e3128@10, {}, {goesIn(keyboard, storage_room)}, {
  obj(keyboard). hasRole(keyboard, toolRole). affordsTask(keyboard, workStudyTask).
}).
#pos(e3129@10, {}, {goesIn(keys, closet)}, {
  obj(keys). hasRole(keys, toolRole). affordsTask(keys, maintenanceTask).
}).
#pos(e3130@10, {}, {goesIn(keys, garage)}, {
  obj(keys). hasRole(keys, toolRole). affordsTask(keys, maintenanceTask).
}).
#pos(e3131@10, {}, {goesIn(kitchen_table, bedroom)}, {
  obj(kitchen_table). hasRole(kitchen_table, furnitureRole). affordsTask(kitchen_table, eatingDrinkingTask). affordsTask(kitchen_table, foodPreparationTask). affordsTask(kitchen_table, leisureTask). affordsTask(kitchen_table, storageTask).
}).
#pos(e3132@10, {}, {goesIn(kitchen_table, dining_room)}, {
  obj(kitchen_table). hasRole(kitchen_table, furnitureRole). affordsTask(kitchen_table, eatingDrinkingTask). affordsTask(kitchen_table, foodPreparationTask). affordsTask(kitchen_table, leisureTask). affordsTask(kitchen_table, storageTask).
}).
#pos(e3133@10, {}, {goesIn(kitchen_utensil, bed)}, {
  obj(kitchen_utensil). hasRole(kitchen_utensil, utensilRole). affordsTask(kitchen_utensil, foodPreparationTask).
}).
#pos(e3134@10, {}, {goesIn(kitchen_utensil, dining_room)}, {
  obj(kitchen_utensil). hasRole(kitchen_utensil, utensilRole). affordsTask(kitchen_utensil, foodPreparationTask).
}).
#pos(e3135@10, {}, {goesIn(kitchenette, hallway)}, {
  obj(kitchenette). hasRole(kitchenette, cookwareRole). hasRole(kitchenette, storageContainerRole). affordsTask(kitchenette, eatingDrinkingTask). affordsTask(kitchenette, foodPreparationTask). affordsTask(kitchenette, storageTask).
}).
#pos(e3136@10, {}, {goesIn(kitchenette, sink)}, {
  obj(kitchenette). hasRole(kitchenette, cookwareRole). hasRole(kitchenette, storageContainerRole). affordsTask(kitchenette, eatingDrinkingTask). affordsTask(kitchenette, foodPreparationTask). affordsTask(kitchenette, storageTask).
}).
#pos(e3137@10, {}, {goesIn(kitten, pantry)}, {
  obj(kitten). hasRole(kitten, entertainmentRole). affordsTask(kitten, leisureTask).
}).
#pos(e3138@10, {}, {goesIn(kitten, shelf)}, {
  obj(kitten). hasRole(kitten, entertainmentRole). affordsTask(kitten, leisureTask).
}).
#pos(e3139@10, {}, {goesIn(kitty, hallway)}, {
  obj(kitty). affordsTask(kitty, leisureTask).
}).
#pos(e3140@10, {}, {goesIn(kitty, living_room)}, {
  obj(kitty). affordsTask(kitty, leisureTask).
}).
#pos(e3141@10, {}, {goesIn(kleenex, cabinet)}, {
  obj(kleenex). hasRole(kleenex, consumableRole). affordsTask(kleenex, hygieneTask).
}).
#pos(e3142@10, {}, {goesIn(kleenex, music_room)}, {
  obj(kleenex). hasRole(kleenex, consumableRole). affordsTask(kleenex, hygieneTask).
}).
#pos(e3143@10, {}, {goesIn(knife, hallway)}, {
  obj(knife). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e3144@10, {}, {goesIn(knife, library)}, {
  obj(knife). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e3145@10, {}, {goesIn(knives, garden)}, {
  obj(knives). hasRole(knives, utensilRole). affordsTask(knives, foodPreparationTask).
}).
#pos(e3146@10, {}, {goesIn(knives, playroom)}, {
  obj(knives). hasRole(knives, utensilRole). affordsTask(knives, foodPreparationTask).
}).
#pos(e3147@10, {}, {goesIn(knob, playroom)}, {
  obj(knob). hasRole(knob, toolRole). affordsTask(knob, maintenanceTask).
}).
#pos(e3148@10, {}, {goesIn(knob, sink)}, {
  obj(knob). hasRole(knob, toolRole). affordsTask(knob, maintenanceTask).
}).
#pos(e3149@10, {}, {goesIn(label_maker, bedroom)}, {
  obj(label_maker). hasRole(label_maker, toolRole). affordsTask(label_maker, workStudyTask).
}).
#pos(e3150@10, {}, {goesIn(label_maker, living_room)}, {
  obj(label_maker). hasRole(label_maker, toolRole). affordsTask(label_maker, workStudyTask).
}).
#pos(e3151@10, {}, {goesIn(labeler, bed)}, {
  obj(labeler). hasRole(labeler, toolRole). affordsTask(labeler, storageTask).
}).
#pos(e3152@10, {}, {goesIn(labeler, sink)}, {
  obj(labeler). hasRole(labeler, toolRole). affordsTask(labeler, storageTask).
}).
#pos(e3153@10, {}, {goesIn(ladder, home_office)}, {
  obj(ladder). hasRole(ladder, toolRole). affordsTask(ladder, maintenanceTask).
}).
#pos(e3154@10, {}, {goesIn(ladder, library)}, {
  obj(ladder). hasRole(ladder, toolRole). affordsTask(ladder, maintenanceTask).
}).
#pos(e3155@10, {}, {goesIn(lamp, garden)}, {
  obj(lamp). hasRole(lamp, lightingRole). affordsTask(lamp, leisureTask).
}).
#pos(e3156@10, {}, {goesIn(lamp, storage_room)}, {
  obj(lamp). hasRole(lamp, lightingRole). affordsTask(lamp, leisureTask).
}).
#pos(e3157@10, {}, {goesIn(lantern, bathroom)}, {
  obj(lantern). hasRole(lantern, decorationRole). affordsTask(lantern, leisureTask).
}).
#pos(e3158@10, {}, {goesIn(lantern, cabinet)}, {
  obj(lantern). hasRole(lantern, decorationRole). affordsTask(lantern, leisureTask).
}).
#pos(e3159@10, {}, {goesIn(large_container, fridge)}, {
  obj(large_container). hasRole(large_container, storageContainerRole). affordsTask(large_container, storageTask).
}).
#pos(e3160@10, {}, {goesIn(large_container, storage_room)}, {
  obj(large_container). hasRole(large_container, storageContainerRole). affordsTask(large_container, storageTask).
}).
#pos(e3161@10, {}, {goesIn(laundry_room, bathroom)}, {
  obj(laundry_room). hasRole(laundry_room, storageContainerRole). affordsTask(laundry_room, cleaningTask).
}).
#pos(e3162@10, {}, {goesIn(laundry_room, sink)}, {
  obj(laundry_room). hasRole(laundry_room, storageContainerRole). affordsTask(laundry_room, cleaningTask).
}).
#pos(e3163@10, {}, {goesIn(lawn_mower, garden)}, {
  obj(lawn_mower). hasRole(lawn_mower, toolRole). affordsTask(lawn_mower, maintenanceTask).
}).
#pos(e3164@10, {}, {goesIn(lawn_mower, table)}, {
  obj(lawn_mower). hasRole(lawn_mower, toolRole). affordsTask(lawn_mower, maintenanceTask).
}).
#pos(e3165@10, {}, {goesIn(lawnmower, bed)}, {
  obj(lawnmower). hasRole(lawnmower, toolRole). affordsTask(lawnmower, maintenanceTask).
}).
#pos(e3166@10, {}, {goesIn(lawnmower, shelf)}, {
  obj(lawnmower). hasRole(lawnmower, toolRole). affordsTask(lawnmower, maintenanceTask).
}).
#pos(e3167@10, {}, {goesIn(lawnmowers, dining_room)}, {
  obj(lawnmowers). hasRole(lawnmowers, toolRole). affordsTask(lawnmowers, maintenanceTask).
}).
#pos(e3168@10, {}, {goesIn(lawnmowers, music_room)}, {
  obj(lawnmowers). hasRole(lawnmowers, toolRole). affordsTask(lawnmowers, maintenanceTask).
}).
#pos(e3169@10, {}, {goesIn(lead_pencil, music_room)}, {
  obj(lead_pencil). hasRole(lead_pencil, toolRole).
}).
#pos(e3170@10, {}, {goesIn(lead_pencil, sink)}, {
  obj(lead_pencil). hasRole(lead_pencil, toolRole).
}).
#pos(e3171@10, {}, {goesIn(leaves, garden)}, {
  obj(leaves). hasRole(leaves, wasteRole). affordsTask(leaves, wasteDisposalTask).
}).
#pos(e3172@10, {}, {goesIn(leaves, living_room)}, {
  obj(leaves). hasRole(leaves, wasteRole). affordsTask(leaves, wasteDisposalTask).
}).
#pos(e3173@10, {}, {goesIn(led, drawer)}, {
  obj(led). hasRole(led, lightingRole). affordsTask(led, leisureTask). affordsTask(led, workStudyTask).
}).
#pos(e3174@10, {}, {goesIn(led, shelf)}, {
  obj(led). hasRole(led, lightingRole). affordsTask(led, leisureTask). affordsTask(led, workStudyTask).
}).
#pos(e3175@10, {}, {goesIn(ledger, laundry_room)}, {
  obj(ledger). hasRole(ledger, documentRole). affordsTask(ledger, workStudyTask).
}).
#pos(e3176@10, {}, {goesIn(ledger, sink)}, {
  obj(ledger). hasRole(ledger, documentRole). affordsTask(ledger, workStudyTask).
}).
#pos(e3177@10, {}, {goesIn(leg, cabinet)}, {
  obj(leg). hasRole(leg, furnitureRole). affordsTask(leg, leisureTask).
}).
#pos(e3178@10, {}, {goesIn(leg, sink)}, {
  obj(leg). hasRole(leg, furnitureRole). affordsTask(leg, leisureTask).
}).
#pos(e3179@10, {}, {goesIn(legs, home_office)}, {
  obj(legs). hasRole(legs, furnitureRole). affordsTask(legs, leisureTask).
}).
#pos(e3180@10, {}, {goesIn(legs, living_room)}, {
  obj(legs). hasRole(legs, furnitureRole). affordsTask(legs, leisureTask).
}).
#pos(e3181@10, {}, {goesIn(lemon, home_office)}, {
  obj(lemon). hasRole(lemon, consumableRole). affordsTask(lemon, eatingDrinkingTask).
}).
#pos(e3182@10, {}, {goesIn(lemon, library)}, {
  obj(lemon). hasRole(lemon, consumableRole). affordsTask(lemon, eatingDrinkingTask).
}).
#pos(e3183@10, {}, {goesIn(lemon_curd, hallway)}, {
  obj(lemon_curd). hasRole(lemon_curd, consumableRole). affordsTask(lemon_curd, eatingDrinkingTask).
}).
#pos(e3184@10, {}, {goesIn(lemon_curd, table)}, {
  obj(lemon_curd). hasRole(lemon_curd, consumableRole). affordsTask(lemon_curd, eatingDrinkingTask).
}).
#pos(e3185@10, {}, {goesIn(lemon_juice, cabinet)}, {
  obj(lemon_juice). hasRole(lemon_juice, consumableRole). affordsTask(lemon_juice, eatingDrinkingTask).
}).
#pos(e3186@10, {}, {goesIn(lemon_juice, dining_room)}, {
  obj(lemon_juice). hasRole(lemon_juice, consumableRole). affordsTask(lemon_juice, eatingDrinkingTask).
}).
#pos(e3187@10, {}, {goesIn(letter_slot, kitchen)}, {
  obj(letter_slot). hasRole(letter_slot, storageContainerRole). affordsTask(letter_slot, storageTask).
}).
#pos(e3188@10, {}, {goesIn(letter_slot, living_room)}, {
  obj(letter_slot). hasRole(letter_slot, storageContainerRole). affordsTask(letter_slot, storageTask).
}).
#pos(e3189@10, {}, {goesIn(letters, home_office)}, {
  obj(letters). hasRole(letters, documentRole). affordsTask(letters, workStudyTask).
}).
#pos(e3190@10, {}, {goesIn(letters, playroom)}, {
  obj(letters). hasRole(letters, documentRole). affordsTask(letters, workStudyTask).
}).
#pos(e3191@10, {}, {goesIn(lettuce, laundry_room)}, {
  obj(lettuce). hasRole(lettuce, consumableRole). affordsTask(lettuce, eatingDrinkingTask).
}).
#pos(e3192@10, {}, {goesIn(lettuce, table)}, {
  obj(lettuce). hasRole(lettuce, consumableRole). affordsTask(lettuce, eatingDrinkingTask).
}).
#pos(e3193@10, {}, {goesIn(level, bed)}, {
  obj(level). hasRole(level, toolRole). affordsTask(level, maintenanceTask).
}).
#pos(e3194@10, {}, {goesIn(level, playroom)}, {
  obj(level). hasRole(level, toolRole). affordsTask(level, maintenanceTask).
}).
#pos(e3195@10, {}, {goesIn(library, cabinet)}, {
  obj(library). hasRole(library, storageContainerRole). affordsTask(library, leisureTask). affordsTask(library, workStudyTask).
}).
#pos(e3196@10, {}, {goesIn(library, music_room)}, {
  obj(library). hasRole(library, storageContainerRole). affordsTask(library, leisureTask). affordsTask(library, workStudyTask).
}).
#pos(e3197@10, {}, {goesIn(light, kitchen)}, {
  obj(light). hasRole(light, consumableRole). affordsTask(light, leisureTask).
}).
#pos(e3198@10, {}, {goesIn(light, library)}, {
  obj(light). hasRole(light, consumableRole). affordsTask(light, leisureTask).
}).
#pos(e3199@10, {}, {goesIn(light_bulb, dining_room)}, {
  obj(light_bulb). hasRole(light_bulb, lightingRole). affordsTask(light_bulb, leisureTask).
}).
#pos(e3200@10, {}, {goesIn(light_bulb, kitchen)}, {
  obj(light_bulb). hasRole(light_bulb, lightingRole). affordsTask(light_bulb, leisureTask).
}).
#pos(e3201@10, {}, {goesIn(light_source, living_room)}, {
  obj(light_source). hasRole(light_source, lightingRole). affordsTask(light_source, leisureTask). affordsTask(light_source, workStudyTask).
}).
#pos(e3202@10, {}, {goesIn(light_source, shelf)}, {
  obj(light_source). hasRole(light_source, lightingRole). affordsTask(light_source, leisureTask). affordsTask(light_source, workStudyTask).
}).
#pos(e3203@10, {}, {goesIn(lightbulb, bathroom)}, {
  obj(lightbulb). hasRole(lightbulb, lightingRole). affordsTask(lightbulb, leisureTask).
}).
#pos(e3204@10, {}, {goesIn(lightbulb, table)}, {
  obj(lightbulb). hasRole(lightbulb, lightingRole). affordsTask(lightbulb, leisureTask).
}).
#pos(e3205@10, {}, {goesIn(limes, living_room)}, {
  obj(limes). hasRole(limes, consumableRole). affordsTask(limes, eatingDrinkingTask).
}).
#pos(e3206@10, {}, {goesIn(limes, playroom)}, {
  obj(limes). hasRole(limes, consumableRole). affordsTask(limes, eatingDrinkingTask).
}).
#pos(e3207@10, {}, {goesIn(linen, bed)}, {
  obj(linen). hasRole(linen, beddingRole). hasRole(linen, clothingRole). affordsTask(linen, dressingTask). affordsTask(linen, sleepingTask).
}).
#pos(e3208@10, {}, {goesIn(linen, music_room)}, {
  obj(linen). hasRole(linen, beddingRole). hasRole(linen, clothingRole). affordsTask(linen, dressingTask). affordsTask(linen, sleepingTask).
}).
#pos(e3209@10, {}, {goesIn(linen_chest, garage)}, {
  obj(linen_chest). hasRole(linen_chest, storageContainerRole). affordsTask(linen_chest, storageTask).
}).
#pos(e3210@10, {}, {goesIn(linen_chest, sink)}, {
  obj(linen_chest). hasRole(linen_chest, storageContainerRole). affordsTask(linen_chest, storageTask).
}).
#pos(e3211@10, {}, {goesIn(linen_closet, laundry_room)}, {
  obj(linen_closet). hasRole(linen_closet, storageContainerRole). affordsTask(linen_closet, storageTask).
}).
#pos(e3212@10, {}, {goesIn(linen_closet, storage_room)}, {
  obj(linen_closet). hasRole(linen_closet, storageContainerRole). affordsTask(linen_closet, storageTask).
}).
#pos(e3213@10, {}, {goesIn(linoleum, playroom)}, {
  obj(linoleum). hasRole(linoleum, furnitureRole). affordsTask(linoleum, cleaningTask).
}).
#pos(e3214@10, {}, {goesIn(linoleum, shelf)}, {
  obj(linoleum). hasRole(linoleum, furnitureRole). affordsTask(linoleum, cleaningTask).
}).
#pos(e3215@10, {}, {goesIn(lip, bedroom)}, {
  obj(lip). hasRole(lip, utensilRole). affordsTask(lip, eatingDrinkingTask).
}).
#pos(e3216@10, {}, {goesIn(lip, fridge)}, {
  obj(lip). hasRole(lip, utensilRole). affordsTask(lip, eatingDrinkingTask).
}).
#pos(e3217@10, {}, {goesIn(liquid, hallway)}, {
  obj(liquid). hasRole(liquid, consumableRole). affordsTask(liquid, eatingDrinkingTask).
}).
#pos(e3218@10, {}, {goesIn(liquid, storage_room)}, {
  obj(liquid). hasRole(liquid, consumableRole). affordsTask(liquid, eatingDrinkingTask).
}).
#pos(e3219@10, {}, {goesIn(liquids, dining_room)}, {
  obj(liquids). hasRole(liquids, consumableRole). affordsTask(liquids, eatingDrinkingTask).
}).
#pos(e3220@10, {}, {goesIn(liquids, home_office)}, {
  obj(liquids). hasRole(liquids, consumableRole). affordsTask(liquids, eatingDrinkingTask).
}).
#pos(e3221@10, {}, {goesIn(liquor_glass, music_room)}, {
  obj(liquor_glass). hasRole(liquor_glass, utensilRole). affordsTask(liquor_glass, eatingDrinkingTask).
}).
#pos(e3222@10, {}, {goesIn(liquor_glass, pantry)}, {
  obj(liquor_glass). hasRole(liquor_glass, utensilRole). affordsTask(liquor_glass, eatingDrinkingTask).
}).
#pos(e3223@10, {}, {goesIn(lock, bathroom)}, {
  obj(lock). hasRole(lock, toolRole). affordsTask(lock, maintenanceTask).
}).
#pos(e3224@10, {}, {goesIn(lock, cabinet)}, {
  obj(lock). hasRole(lock, toolRole). affordsTask(lock, maintenanceTask).
}).
#pos(e3225@10, {}, {goesIn(love_seat, sink)}, {
  obj(love_seat). hasRole(love_seat, furnitureRole). affordsTask(love_seat, leisureTask). affordsTask(love_seat, storageTask).
}).
#pos(e3226@10, {}, {goesIn(love_seat, storage_room)}, {
  obj(love_seat). hasRole(love_seat, furnitureRole). affordsTask(love_seat, leisureTask). affordsTask(love_seat, storageTask).
}).
#pos(e3227@10, {}, {goesIn(luggage, fridge)}, {
  obj(luggage). hasRole(luggage, storageContainerRole). affordsTask(luggage, storageTask).
}).
#pos(e3228@10, {}, {goesIn(luggage, hallway)}, {
  obj(luggage). hasRole(luggage, storageContainerRole). affordsTask(luggage, storageTask).
}).
#pos(e3229@10, {}, {goesIn(lunch, garden)}, {
  obj(lunch). hasRole(lunch, consumableRole). affordsTask(lunch, eatingDrinkingTask).
}).
#pos(e3230@10, {}, {goesIn(lunch, pantry)}, {
  obj(lunch). hasRole(lunch, consumableRole). affordsTask(lunch, eatingDrinkingTask).
}).
#pos(e3231@10, {}, {goesIn(magazine, bathroom)}, {
  obj(magazine). hasRole(magazine, documentRole). affordsTask(magazine, leisureTask).
}).
#pos(e3232@10, {}, {goesIn(magazine, sink)}, {
  obj(magazine). hasRole(magazine, documentRole). affordsTask(magazine, leisureTask).
}).
#pos(e3233@10, {}, {goesIn(magazines, cabinet)}, {
  obj(magazines). hasRole(magazines, documentRole). affordsTask(magazines, leisureTask).
}).
#pos(e3234@10, {}, {goesIn(magazines, living_room)}, {
  obj(magazines). hasRole(magazines, documentRole). affordsTask(magazines, leisureTask).
}).
#pos(e3235@10, {}, {goesIn(magnet, cabinet)}, {
  obj(magnet). hasRole(magnet, toolRole). affordsTask(magnet, maintenanceTask).
}).
#pos(e3236@10, {}, {goesIn(magnet, garage)}, {
  obj(magnet). hasRole(magnet, toolRole). affordsTask(magnet, maintenanceTask).
}).
#pos(e3237@10, {}, {goesIn(magnets, cabinet)}, {
  obj(magnets). hasRole(magnets, toolRole). affordsTask(magnets, storageTask).
}).
#pos(e3238@10, {}, {goesIn(magnets, living_room)}, {
  obj(magnets). hasRole(magnets, toolRole). affordsTask(magnets, storageTask).
}).
#pos(e3239@10, {}, {goesIn(mail, dining_room)}, {
  obj(mail). hasRole(mail, documentRole). affordsTask(mail, workStudyTask).
}).
#pos(e3240@10, {}, {goesIn(mail, trash)}, {
  obj(mail). hasRole(mail, documentRole). affordsTask(mail, workStudyTask).
}).
#pos(e3241@10, {}, {goesIn(mailbox, music_room)}, {
  obj(mailbox). hasRole(mailbox, storageContainerRole). affordsTask(mailbox, storageTask).
}).
#pos(e3242@10, {}, {goesIn(mailbox, trash)}, {
  obj(mailbox). hasRole(mailbox, storageContainerRole). affordsTask(mailbox, storageTask).
}).
#pos(e3243@10, {}, {goesIn(main_entrance, hallway)}, {
  obj(main_entrance). hasRole(main_entrance, furnitureRole). affordsTask(main_entrance, leisureTask).
}).
#pos(e3244@10, {}, {goesIn(main_entrance, pantry)}, {
  obj(main_entrance). hasRole(main_entrance, furnitureRole). affordsTask(main_entrance, leisureTask).
}).
#pos(e3245@10, {}, {goesIn(map, garage)}, {
  obj(map). hasRole(map, storageContainerRole).
}).
#pos(e3246@10, {}, {goesIn(map, laundry_room)}, {
  obj(map). hasRole(map, storageContainerRole).
}).
#pos(e3247@10, {}, {goesIn(maps, fridge)}, {
  obj(maps). hasRole(maps, toolRole). affordsTask(maps, leisureTask).
}).
#pos(e3248@10, {}, {goesIn(maps, music_room)}, {
  obj(maps). hasRole(maps, toolRole). affordsTask(maps, leisureTask).
}).
#pos(e3249@10, {}, {goesIn(marble, library)}, {
  obj(marble). hasRole(marble, decorationRole). affordsTask(marble, leisureTask).
}).
#pos(e3250@10, {}, {goesIn(marble, shelf)}, {
  obj(marble). hasRole(marble, decorationRole). affordsTask(marble, leisureTask).
}).
#pos(e3251@10, {}, {goesIn(marker, fridge)}, {
  obj(marker). hasRole(marker, toolRole).
}).
#pos(e3252@10, {}, {goesIn(marker, music_room)}, {
  obj(marker). hasRole(marker, toolRole).
}).
#pos(e3253@10, {}, {goesIn(mat, garage)}, {
  obj(mat). hasRole(mat, storageContainerRole). affordsTask(mat, storageTask).
}).
#pos(e3254@10, {}, {goesIn(mat, sink)}, {
  obj(mat). hasRole(mat, storageContainerRole). affordsTask(mat, storageTask).
}).
#pos(e3255@10, {}, {goesIn(matches, bedroom)}, {
  obj(matches). hasRole(matches, toolRole). affordsTask(matches, leisureTask).
}).
#pos(e3256@10, {}, {goesIn(matches, dining_room)}, {
  obj(matches). hasRole(matches, toolRole). affordsTask(matches, leisureTask).
}).
#pos(e3257@10, {}, {goesIn(material, garden)}, {
  obj(material). affordsTask(material, maintenanceTask).
}).
#pos(e3258@10, {}, {goesIn(material, library)}, {
  obj(material). affordsTask(material, maintenanceTask).
}).
#pos(e3259@10, {}, {goesIn(mayonnaise, home_office)}, {
  obj(mayonnaise). hasRole(mayonnaise, consumableRole). affordsTask(mayonnaise, eatingDrinkingTask).
}).
#pos(e3260@10, {}, {goesIn(mayonnaise, playroom)}, {
  obj(mayonnaise). hasRole(mayonnaise, consumableRole). affordsTask(mayonnaise, eatingDrinkingTask).
}).
#pos(e3261@10, {}, {goesIn(meal, bathroom)}, {
  obj(meal). hasRole(meal, consumableRole). affordsTask(meal, eatingDrinkingTask).
}).
#pos(e3262@10, {}, {goesIn(meal, garage)}, {
  obj(meal). hasRole(meal, consumableRole). affordsTask(meal, eatingDrinkingTask).
}).
#pos(e3263@10, {}, {goesIn(meat, hallway)}, {
  obj(meat). hasRole(meat, consumableRole). affordsTask(meat, eatingDrinkingTask). affordsTask(meat, foodPreparationTask).
}).
#pos(e3264@10, {}, {goesIn(meat, trash)}, {
  obj(meat). hasRole(meat, consumableRole). affordsTask(meat, eatingDrinkingTask). affordsTask(meat, foodPreparationTask).
}).
#pos(e3265@10, {}, {goesIn(mechanical_pencil, shelf)}, {
  obj(mechanical_pencil). hasRole(mechanical_pencil, toolRole).
}).
#pos(e3266@10, {}, {goesIn(mechanical_pencil, table)}, {
  obj(mechanical_pencil). hasRole(mechanical_pencil, toolRole).
}).
#pos(e3267@10, {}, {goesIn(medicine, dining_room)}, {
  obj(medicine). hasRole(medicine, consumableRole). affordsTask(medicine, eatingDrinkingTask).
}).
#pos(e3268@10, {}, {goesIn(medicine, playroom)}, {
  obj(medicine). hasRole(medicine, consumableRole). affordsTask(medicine, eatingDrinkingTask).
}).
#pos(e3269@10, {}, {goesIn(metronome, library)}, {
  obj(metronome). hasRole(metronome, musicalInstrumentRole). affordsTask(metronome, leisureTask).
}).
#pos(e3270@10, {}, {goesIn(metronome, playroom)}, {
  obj(metronome). hasRole(metronome, musicalInstrumentRole). affordsTask(metronome, leisureTask).
}).
#pos(e3271@10, {}, {goesIn(microwave, home_office)}, {
  obj(microwave). hasRole(microwave, applianceRole). affordsTask(microwave, foodPreparationTask).
}).
#pos(e3272@10, {}, {goesIn(microwave, music_room)}, {
  obj(microwave). hasRole(microwave, applianceRole). affordsTask(microwave, foodPreparationTask).
}).
#pos(e3273@10, {}, {goesIn(microwave_oven, home_office)}, {
  obj(microwave_oven). hasRole(microwave_oven, applianceRole). affordsTask(microwave_oven, foodPreparationTask).
}).
#pos(e3274@10, {}, {goesIn(microwave_oven, shelf)}, {
  obj(microwave_oven). hasRole(microwave_oven, applianceRole). affordsTask(microwave_oven, foodPreparationTask).
}).
#pos(e3275@10, {}, {goesIn(milk, playroom)}, {
  obj(milk). hasRole(milk, consumableRole). affordsTask(milk, eatingDrinkingTask).
}).
#pos(e3276@10, {}, {goesIn(milk, trash)}, {
  obj(milk). hasRole(milk, consumableRole). affordsTask(milk, eatingDrinkingTask).
}).
#pos(e3277@10, {}, {goesIn(mini_bar, home_office)}, {
  obj(mini_bar). hasRole(mini_bar, applianceRole). hasRole(mini_bar, storageContainerRole). affordsTask(mini_bar, eatingDrinkingTask). affordsTask(mini_bar, foodPreparationTask). affordsTask(mini_bar, storageTask).
}).
#pos(e3278@10, {}, {goesIn(mini_bar, living_room)}, {
  obj(mini_bar). hasRole(mini_bar, applianceRole). hasRole(mini_bar, storageContainerRole). affordsTask(mini_bar, eatingDrinkingTask). affordsTask(mini_bar, foodPreparationTask). affordsTask(mini_bar, storageTask).
}).
#pos(e3279@10, {}, {goesIn(minibar, fridge)}, {
  obj(minibar). hasRole(minibar, storageContainerRole). affordsTask(minibar, eatingDrinkingTask). affordsTask(minibar, storageTask).
}).
#pos(e3280@10, {}, {goesIn(minibar, garage)}, {
  obj(minibar). hasRole(minibar, storageContainerRole). affordsTask(minibar, eatingDrinkingTask). affordsTask(minibar, storageTask).
}).
#pos(e3281@10, {}, {goesIn(mint, laundry_room)}, {
  obj(mint). hasRole(mint, consumableRole). affordsTask(mint, eatingDrinkingTask).
}).
#pos(e3282@10, {}, {goesIn(mint, shelf)}, {
  obj(mint). hasRole(mint, consumableRole). affordsTask(mint, eatingDrinkingTask).
}).
#pos(e3283@10, {}, {goesIn(mirror, garden)}, {
  obj(mirror). hasRole(mirror, decorationRole). affordsTask(mirror, leisureTask).
}).
#pos(e3284@10, {}, {goesIn(mirror, living_room)}, {
  obj(mirror). hasRole(mirror, decorationRole). affordsTask(mirror, leisureTask).
}).
#pos(e3285@10, {}, {goesIn(moistener, bedroom)}, {
  obj(moistener). hasRole(moistener, cleaningToolRole). affordsTask(moistener, hygieneTask).
}).
#pos(e3286@10, {}, {goesIn(moistener, home_office)}, {
  obj(moistener). hasRole(moistener, cleaningToolRole). affordsTask(moistener, hygieneTask).
}).
#pos(e3287@10, {}, {goesIn(mold, music_room)}, {
  obj(mold). hasRole(mold, toolRole). affordsTask(mold, maintenanceTask).
}).
#pos(e3288@10, {}, {goesIn(mold, shelf)}, {
  obj(mold). hasRole(mold, toolRole). affordsTask(mold, maintenanceTask).
}).
#pos(e3289@10, {}, {goesIn(money, garage)}, {
  obj(money). hasRole(money, consumableRole). affordsTask(money, eatingDrinkingTask).
}).
#pos(e3290@10, {}, {goesIn(money, pantry)}, {
  obj(money). hasRole(money, consumableRole). affordsTask(money, eatingDrinkingTask).
}).
#pos(e3291@10, {}, {goesIn(monitor, bed)}, {
  obj(monitor). hasRole(monitor, applianceRole). affordsTask(monitor, leisureTask).
}).
#pos(e3292@10, {}, {goesIn(monitor, pantry)}, {
  obj(monitor). hasRole(monitor, applianceRole). affordsTask(monitor, leisureTask).
}).
#pos(e3293@10, {}, {goesIn(monkey, drawer)}, {
  obj(monkey). hasRole(monkey, entertainmentRole). affordsTask(monkey, leisureTask).
}).
#pos(e3294@10, {}, {goesIn(monkey, sink)}, {
  obj(monkey). hasRole(monkey, entertainmentRole). affordsTask(monkey, leisureTask).
}).
#pos(e3295@10, {}, {goesIn(mouse, hallway)}, {
  obj(mouse). hasRole(mouse, toolRole). affordsTask(mouse, workStudyTask).
}).
#pos(e3296@10, {}, {goesIn(mouse, playroom)}, {
  obj(mouse). hasRole(mouse, toolRole). affordsTask(mouse, workStudyTask).
}).
#pos(e3297@10, {}, {goesIn(mouthwash, dining_room)}, {
  obj(mouthwash). hasRole(mouthwash, cleaningToolRole). affordsTask(mouthwash, hygieneTask).
}).
#pos(e3298@10, {}, {goesIn(mouthwash, pantry)}, {
  obj(mouthwash). hasRole(mouthwash, cleaningToolRole). affordsTask(mouthwash, hygieneTask).
}).
#pos(e3299@10, {}, {goesIn(mug, closet)}, {
  obj(mug). hasRole(mug, utensilRole). affordsTask(mug, eatingDrinkingTask).
}).
#pos(e3300@10, {}, {goesIn(mug, pantry)}, {
  obj(mug). hasRole(mug, utensilRole). affordsTask(mug, eatingDrinkingTask).
}).
#pos(e3301@10, {}, {goesIn(mushrooms, bathroom)}, {
  obj(mushrooms). hasRole(mushrooms, consumableRole). affordsTask(mushrooms, eatingDrinkingTask).
}).
#pos(e3302@10, {}, {goesIn(mushrooms, music_room)}, {
  obj(mushrooms). hasRole(mushrooms, consumableRole). affordsTask(mushrooms, eatingDrinkingTask).
}).
#pos(e3303@10, {}, {goesIn(music_stand, closet)}, {
  obj(music_stand). hasRole(music_stand, furnitureRole). affordsTask(music_stand, leisureTask).
}).
#pos(e3304@10, {}, {goesIn(music_stand, laundry_room)}, {
  obj(music_stand). hasRole(music_stand, furnitureRole). affordsTask(music_stand, leisureTask).
}).
#pos(e3305@10, {}, {goesIn(musical_instrument, closet)}, {
  obj(musical_instrument). hasRole(musical_instrument, musicalInstrumentRole). affordsTask(musical_instrument, leisureTask).
}).
#pos(e3306@10, {}, {goesIn(musical_instrument, storage_room)}, {
  obj(musical_instrument). hasRole(musical_instrument, musicalInstrumentRole). affordsTask(musical_instrument, leisureTask).
}).
#pos(e3307@10, {}, {goesIn(mustard, bedroom)}, {
  obj(mustard). hasRole(mustard, consumableRole). affordsTask(mustard, eatingDrinkingTask).
}).
#pos(e3308@10, {}, {goesIn(mustard, music_room)}, {
  obj(mustard). hasRole(mustard, consumableRole). affordsTask(mustard, eatingDrinkingTask).
}).
#pos(e3309@10, {}, {goesIn(nail_clippers, garden)}, {
  obj(nail_clippers). hasRole(nail_clippers, toolRole). affordsTask(nail_clippers, maintenanceTask).
}).
#pos(e3310@10, {}, {goesIn(nail_clippers, home_office)}, {
  obj(nail_clippers). hasRole(nail_clippers, toolRole). affordsTask(nail_clippers, maintenanceTask).
}).
#pos(e3311@10, {}, {goesIn(nails, living_room)}, {
  obj(nails). hasRole(nails, toolRole). affordsTask(nails, maintenanceTask).
}).
#pos(e3312@10, {}, {goesIn(nails, trash)}, {
  obj(nails). hasRole(nails, toolRole). affordsTask(nails, maintenanceTask).
}).
#pos(e3313@10, {}, {goesIn(neckwear, cabinet)}, {
  obj(neckwear). hasRole(neckwear, clothingRole). affordsTask(neckwear, dressingTask).
}).
#pos(e3314@10, {}, {goesIn(neckwear, trash)}, {
  obj(neckwear). hasRole(neckwear, clothingRole). affordsTask(neckwear, dressingTask).
}).
#pos(e3315@10, {}, {goesIn(needle, home_office)}, {
  obj(needle). hasRole(needle, utensilRole). affordsTask(needle, foodPreparationTask).
}).
#pos(e3316@10, {}, {goesIn(needle, table)}, {
  obj(needle). hasRole(needle, utensilRole). affordsTask(needle, foodPreparationTask).
}).
#pos(e3317@10, {}, {goesIn(nest_of_tables, kitchen)}, {
  obj(nest_of_tables). hasRole(nest_of_tables, furnitureRole). affordsTask(nest_of_tables, storageTask).
}).
#pos(e3318@10, {}, {goesIn(nest_of_tables, pantry)}, {
  obj(nest_of_tables). hasRole(nest_of_tables, furnitureRole). affordsTask(nest_of_tables, storageTask).
}).
#pos(e3319@10, {}, {goesIn(net, home_office)}, {
  obj(net). hasRole(net, toolRole). affordsTask(net, maintenanceTask).
}).
#pos(e3320@10, {}, {goesIn(net, storage_room)}, {
  obj(net). hasRole(net, toolRole). affordsTask(net, maintenanceTask).
}).
#pos(e3321@10, {}, {goesIn(newspaper, bed)}, {
  obj(newspaper). hasRole(newspaper, documentRole).
}).
#pos(e3322@10, {}, {goesIn(newspaper, sink)}, {
  obj(newspaper). hasRole(newspaper, documentRole).
}).
#pos(e3323@10, {}, {goesIn(newspapers, bedroom)}, {
  obj(newspapers). hasRole(newspapers, documentRole).
}).
#pos(e3324@10, {}, {goesIn(newspapers, sink)}, {
  obj(newspapers). hasRole(newspapers, documentRole).
}).
#pos(e3325@10, {}, {goesIn(night_table, fridge)}, {
  obj(night_table). hasRole(night_table, storageContainerRole). affordsTask(night_table, storageTask).
}).
#pos(e3326@10, {}, {goesIn(night_table, storage_room)}, {
  obj(night_table). hasRole(night_table, storageContainerRole). affordsTask(night_table, storageTask).
}).
#pos(e3327@10, {}, {goesIn(note, hallway)}, {
  obj(note). hasRole(note, documentRole). affordsTask(note, workStudyTask).
}).
#pos(e3328@10, {}, {goesIn(note, kitchen)}, {
  obj(note). hasRole(note, documentRole). affordsTask(note, workStudyTask).
}).
#pos(e3329@10, {}, {goesIn(notebook, bedroom)}, {
  obj(notebook). hasRole(notebook, documentRole). affordsTask(notebook, workStudyTask).
}).
#pos(e3330@10, {}, {goesIn(notebook, laundry_room)}, {
  obj(notebook). hasRole(notebook, documentRole). affordsTask(notebook, workStudyTask).
}).
#pos(e3331@10, {}, {goesIn(notepad, cabinet)}, {
  obj(notepad). hasRole(notepad, documentRole). affordsTask(notepad, workStudyTask).
}).
#pos(e3332@10, {}, {goesIn(notepad, storage_room)}, {
  obj(notepad). hasRole(notepad, documentRole). affordsTask(notepad, workStudyTask).
}).
#pos(e3333@10, {}, {goesIn(nuts, cabinet)}, {
  obj(nuts). hasRole(nuts, consumableRole). affordsTask(nuts, eatingDrinkingTask).
}).
#pos(e3334@10, {}, {goesIn(nuts, playroom)}, {
  obj(nuts). hasRole(nuts, consumableRole). affordsTask(nuts, eatingDrinkingTask).
}).
#pos(e3335@10, {}, {goesIn(nylon, fridge)}, {
  obj(nylon). hasRole(nylon, clothingRole). affordsTask(nylon, dressingTask).
}).
#pos(e3336@10, {}, {goesIn(nylon, home_office)}, {
  obj(nylon). hasRole(nylon, clothingRole). affordsTask(nylon, dressingTask).
}).
#pos(e3337@10, {}, {goesIn(oil, bathroom)}, {
  obj(oil). hasRole(oil, consumableRole). affordsTask(oil, foodPreparationTask).
}).
#pos(e3338@10, {}, {goesIn(oil, bed)}, {
  obj(oil). hasRole(oil, consumableRole). affordsTask(oil, foodPreparationTask).
}).
#pos(e3339@10, {}, {goesIn(oilcloth, bed)}, {
  obj(oilcloth). hasRole(oilcloth, cleaningToolRole). affordsTask(oilcloth, cleaningTask).
}).
#pos(e3340@10, {}, {goesIn(oilcloth, home_office)}, {
  obj(oilcloth). hasRole(oilcloth, cleaningToolRole). affordsTask(oilcloth, cleaningTask).
}).
#pos(e3341@10, {}, {goesIn(old_books, garden)}, {
  obj(old_books). hasRole(old_books, documentRole). affordsTask(old_books, leisureTask).
}).
#pos(e3342@10, {}, {goesIn(old_books, home_office)}, {
  obj(old_books). hasRole(old_books, documentRole). affordsTask(old_books, leisureTask).
}).
#pos(e3343@10, {}, {goesIn(old_dress, laundry_room)}, {
  obj(old_dress). hasRole(old_dress, clothingRole). affordsTask(old_dress, dressingTask).
}).
#pos(e3344@10, {}, {goesIn(old_dress, living_room)}, {
  obj(old_dress). hasRole(old_dress, clothingRole). affordsTask(old_dress, dressingTask).
}).
#pos(e3345@10, {}, {goesIn(old_newspapers, closet)}, {
  obj(old_newspapers). hasRole(old_newspapers, wasteRole). affordsTask(old_newspapers, wasteDisposalTask).
}).
#pos(e3346@10, {}, {goesIn(old_newspapers, fridge)}, {
  obj(old_newspapers). hasRole(old_newspapers, wasteRole). affordsTask(old_newspapers, wasteDisposalTask).
}).
#pos(e3347@10, {}, {goesIn(old_things, laundry_room)}, {
  obj(old_things). hasRole(old_things, furnitureRole). affordsTask(old_things, storageTask).
}).
#pos(e3348@10, {}, {goesIn(old_things, music_room)}, {
  obj(old_things). hasRole(old_things, furnitureRole). affordsTask(old_things, storageTask).
}).
#pos(e3349@10, {}, {goesIn(olives, sink)}, {
  obj(olives). hasRole(olives, consumableRole). affordsTask(olives, eatingDrinkingTask).
}).
#pos(e3350@10, {}, {goesIn(olives, trash)}, {
  obj(olives). hasRole(olives, consumableRole). affordsTask(olives, eatingDrinkingTask).
}).
#pos(e3351@10, {}, {goesIn(on_off_switch, cabinet)}, {
  obj(on_off_switch). hasRole(on_off_switch, toolRole). affordsTask(on_off_switch, maintenanceTask).
}).
#pos(e3352@10, {}, {goesIn(on_off_switch, drawer)}, {
  obj(on_off_switch). hasRole(on_off_switch, toolRole). affordsTask(on_off_switch, maintenanceTask).
}).
#pos(e3353@10, {}, {goesIn(one_person_chair, laundry_room)}, {
  obj(one_person_chair). hasRole(one_person_chair, furnitureRole). affordsTask(one_person_chair, leisureTask). affordsTask(one_person_chair, workStudyTask).
}).
#pos(e3354@10, {}, {goesIn(one_person_chair, sink)}, {
  obj(one_person_chair). hasRole(one_person_chair, furnitureRole). affordsTask(one_person_chair, leisureTask). affordsTask(one_person_chair, workStudyTask).
}).
#pos(e3355@10, {}, {goesIn(onions, garage)}, {
  obj(onions). hasRole(onions, consumableRole). affordsTask(onions, foodPreparationTask).
}).
#pos(e3356@10, {}, {goesIn(onions, trash)}, {
  obj(onions). hasRole(onions, consumableRole). affordsTask(onions, foodPreparationTask).
}).
#pos(e3357@10, {}, {goesIn(orange_juice, music_room)}, {
  obj(orange_juice). hasRole(orange_juice, consumableRole). affordsTask(orange_juice, eatingDrinkingTask).
}).
#pos(e3358@10, {}, {goesIn(orange_juice, shelf)}, {
  obj(orange_juice). hasRole(orange_juice, consumableRole). affordsTask(orange_juice, eatingDrinkingTask).
}).
#pos(e3359@10, {}, {goesIn(ottoman, dining_room)}, {
  obj(ottoman). hasRole(ottoman, furnitureRole). affordsTask(ottoman, leisureTask).
}).
#pos(e3360@10, {}, {goesIn(ottoman, garage)}, {
  obj(ottoman). hasRole(ottoman, furnitureRole). affordsTask(ottoman, leisureTask).
}).
#pos(e3361@10, {}, {goesIn(outfit, music_room)}, {
  obj(outfit). hasRole(outfit, clothingRole). affordsTask(outfit, dressingTask).
}).
#pos(e3362@10, {}, {goesIn(outfit, table)}, {
  obj(outfit). hasRole(outfit, clothingRole). affordsTask(outfit, dressingTask).
}).
#pos(e3363@10, {}, {goesIn(oven, garage)}, {
  obj(oven). hasRole(oven, cookwareRole). affordsTask(oven, foodPreparationTask).
}).
#pos(e3364@10, {}, {goesIn(oven, library)}, {
  obj(oven). hasRole(oven, cookwareRole). affordsTask(oven, foodPreparationTask).
}).
#pos(e3365@10, {}, {goesIn(oven_mitts, garage)}, {
  obj(oven_mitts). hasRole(oven_mitts, utensilRole). affordsTask(oven_mitts, foodPreparationTask).
}).
#pos(e3366@10, {}, {goesIn(oven_mitts, table)}, {
  obj(oven_mitts). hasRole(oven_mitts, utensilRole). affordsTask(oven_mitts, foodPreparationTask).
}).
#pos(e3367@10, {}, {goesIn(pad, bed)}, {
  obj(pad). hasRole(pad, beddingRole). affordsTask(pad, sleepingTask).
}).
#pos(e3368@10, {}, {goesIn(pad, playroom)}, {
  obj(pad). hasRole(pad, beddingRole). affordsTask(pad, sleepingTask).
}).
#pos(e3369@10, {}, {goesIn(page, hallway)}, {
  obj(page). hasRole(page, documentRole).
}).
#pos(e3370@10, {}, {goesIn(page, trash)}, {
  obj(page). hasRole(page, documentRole).
}).
#pos(e3371@10, {}, {goesIn(pail, dining_room)}, {
  obj(pail). hasRole(pail, storageContainerRole). affordsTask(pail, storageTask).
}).
#pos(e3372@10, {}, {goesIn(pail, sink)}, {
  obj(pail). hasRole(pail, storageContainerRole). affordsTask(pail, storageTask).
}).
#pos(e3373@10, {}, {goesIn(paint, bedroom)}, {
  obj(paint). hasRole(paint, toolRole). affordsTask(paint, maintenanceTask).
}).
#pos(e3374@10, {}, {goesIn(paint, playroom)}, {
  obj(paint). hasRole(paint, toolRole). affordsTask(paint, maintenanceTask).
}).
#pos(e3375@10, {}, {goesIn(painting, home_office)}, {
  obj(painting). hasRole(painting, decorationRole). affordsTask(painting, leisureTask).
}).
#pos(e3376@10, {}, {goesIn(painting, playroom)}, {
  obj(painting). hasRole(painting, decorationRole). affordsTask(painting, leisureTask).
}).
#pos(e3377@10, {}, {goesIn(pair_of_pants, hallway)}, {
  obj(pair_of_pants). hasRole(pair_of_pants, clothingRole). affordsTask(pair_of_pants, dressingTask).
}).
#pos(e3378@10, {}, {goesIn(pair_of_pants, table)}, {
  obj(pair_of_pants). hasRole(pair_of_pants, clothingRole). affordsTask(pair_of_pants, dressingTask).
}).
#pos(e3379@10, {}, {goesIn(pair_of_scissors, library)}, {
  obj(pair_of_scissors). hasRole(pair_of_scissors, toolRole). affordsTask(pair_of_scissors, maintenanceTask).
}).
#pos(e3380@10, {}, {goesIn(pair_of_scissors, trash)}, {
  obj(pair_of_scissors). hasRole(pair_of_scissors, toolRole). affordsTask(pair_of_scissors, maintenanceTask).
}).
#pos(e3381@10, {}, {goesIn(pair_of_shoes, home_office)}, {
  obj(pair_of_shoes). hasRole(pair_of_shoes, clothingRole). affordsTask(pair_of_shoes, dressingTask).
}).
#pos(e3382@10, {}, {goesIn(pair_of_shoes, pantry)}, {
  obj(pair_of_shoes). hasRole(pair_of_shoes, clothingRole). affordsTask(pair_of_shoes, dressingTask).
}).
#pos(e3383@10, {}, {goesIn(pan, drawer)}, {
  obj(pan). hasRole(pan, cookwareRole). affordsTask(pan, foodPreparationTask).
}).
#pos(e3384@10, {}, {goesIn(pan, garden)}, {
  obj(pan). hasRole(pan, cookwareRole). affordsTask(pan, foodPreparationTask).
}).
#pos(e3385@10, {}, {goesIn(pans, library)}, {
  obj(pans). hasRole(pans, cookwareRole). affordsTask(pans, foodPreparationTask).
}).
#pos(e3386@10, {}, {goesIn(pans, pantry)}, {
  obj(pans). hasRole(pans, cookwareRole). affordsTask(pans, foodPreparationTask).
}).
#pos(e3387@10, {}, {goesIn(pantry, cabinet)}, {
  obj(pantry). hasRole(pantry, storageContainerRole). affordsTask(pantry, storageTask).
}).
#pos(e3388@10, {}, {goesIn(pantry, fridge)}, {
  obj(pantry). hasRole(pantry, storageContainerRole). affordsTask(pantry, storageTask).
}).
#pos(e3389@10, {}, {goesIn(pants, library)}, {
  obj(pants). hasRole(pants, clothingRole). affordsTask(pants, dressingTask).
}).
#pos(e3390@10, {}, {goesIn(pants, sink)}, {
  obj(pants). hasRole(pants, clothingRole). affordsTask(pants, dressingTask).
}).
#pos(e3391@10, {}, {goesIn(paper, kitchen)}, {
  obj(paper). hasRole(paper, consumableRole). affordsTask(paper, eatingDrinkingTask). affordsTask(paper, foodPreparationTask). affordsTask(paper, leisureTask). affordsTask(paper, workStudyTask).
}).
#pos(e3392@10, {}, {goesIn(paper, living_room)}, {
  obj(paper). hasRole(paper, consumableRole). affordsTask(paper, eatingDrinkingTask). affordsTask(paper, foodPreparationTask). affordsTask(paper, leisureTask). affordsTask(paper, workStudyTask).
}).
#pos(e3393@10, {}, {goesIn(paper_and_pencil, garden)}, {
  obj(paper_and_pencil). hasRole(paper_and_pencil, toolRole). affordsTask(paper_and_pencil, workStudyTask).
}).
#pos(e3394@10, {}, {goesIn(paper_and_pencil, trash)}, {
  obj(paper_and_pencil). hasRole(paper_and_pencil, toolRole). affordsTask(paper_and_pencil, workStudyTask).
}).
#pos(e3395@10, {}, {goesIn(paper_clip, bathroom)}, {
  obj(paper_clip). hasRole(paper_clip, toolRole). affordsTask(paper_clip, maintenanceTask).
}).
#pos(e3396@10, {}, {goesIn(paper_clip, trash)}, {
  obj(paper_clip). hasRole(paper_clip, toolRole). affordsTask(paper_clip, maintenanceTask).
}).
#pos(e3397@10, {}, {goesIn(paper_clips, garden)}, {
  obj(paper_clips). hasRole(paper_clips, toolRole). affordsTask(paper_clips, workStudyTask).
}).
#pos(e3398@10, {}, {goesIn(paper_clips, laundry_room)}, {
  obj(paper_clips). hasRole(paper_clips, toolRole). affordsTask(paper_clips, workStudyTask).
}).
#pos(e3399@10, {}, {goesIn(paper_fastener, bathroom)}, {
  obj(paper_fastener). hasRole(paper_fastener, toolRole). affordsTask(paper_fastener, maintenanceTask).
}).
#pos(e3400@10, {}, {goesIn(paper_fastener, shelf)}, {
  obj(paper_fastener). hasRole(paper_fastener, toolRole). affordsTask(paper_fastener, maintenanceTask).
}).
#pos(e3401@10, {}, {goesIn(paper_page, bed)}, {
  obj(paper_page). hasRole(paper_page, documentRole). affordsTask(paper_page, leisureTask). affordsTask(paper_page, workStudyTask).
}).
#pos(e3402@10, {}, {goesIn(paper_page, shelf)}, {
  obj(paper_page). hasRole(paper_page, documentRole). affordsTask(paper_page, leisureTask). affordsTask(paper_page, workStudyTask).
}).
#pos(e3403@10, {}, {goesIn(paper_punch, garage)}, {
  obj(paper_punch). hasRole(paper_punch, toolRole). affordsTask(paper_punch, maintenanceTask).
}).
#pos(e3404@10, {}, {goesIn(paper_punch, hallway)}, {
  obj(paper_punch). hasRole(paper_punch, toolRole). affordsTask(paper_punch, maintenanceTask).
}).
#pos(e3405@10, {}, {goesIn(paper_sign, kitchen)}, {
  obj(paper_sign). hasRole(paper_sign, decorationRole). affordsTask(paper_sign, leisureTask). affordsTask(paper_sign, workStudyTask).
}).
#pos(e3406@10, {}, {goesIn(paper_sign, sink)}, {
  obj(paper_sign). hasRole(paper_sign, decorationRole). affordsTask(paper_sign, leisureTask). affordsTask(paper_sign, workStudyTask).
}).
#pos(e3407@10, {}, {goesIn(paper_towels, fridge)}, {
  obj(paper_towels). hasRole(paper_towels, cleaningToolRole). affordsTask(paper_towels, cleaningTask).
}).
#pos(e3408@10, {}, {goesIn(paper_towels, table)}, {
  obj(paper_towels). hasRole(paper_towels, cleaningToolRole). affordsTask(paper_towels, cleaningTask).
}).
#pos(e3409@10, {}, {goesIn(paperclip, drawer)}, {
  obj(paperclip). hasRole(paperclip, toolRole). affordsTask(paperclip, workStudyTask).
}).
#pos(e3410@10, {}, {goesIn(paperclip, shelf)}, {
  obj(paperclip). hasRole(paperclip, toolRole). affordsTask(paperclip, workStudyTask).
}).
#pos(e3411@10, {}, {goesIn(papers, closet)}, {
  obj(papers). hasRole(papers, documentRole). affordsTask(papers, cleaningTask).
}).
#pos(e3412@10, {}, {goesIn(papers, hallway)}, {
  obj(papers). hasRole(papers, documentRole). affordsTask(papers, cleaningTask).
}).
#pos(e3413@10, {}, {goesIn(paperweight, cabinet)}, {
  obj(paperweight). hasRole(paperweight, toolRole).
}).
#pos(e3414@10, {}, {goesIn(paperweight, sink)}, {
  obj(paperweight). hasRole(paperweight, toolRole).
}).
#pos(e3415@10, {}, {goesIn(parlor, bed)}, {
  obj(parlor). hasRole(parlor, furnitureRole). affordsTask(parlor, leisureTask).
}).
#pos(e3416@10, {}, {goesIn(parlor, storage_room)}, {
  obj(parlor). hasRole(parlor, furnitureRole). affordsTask(parlor, leisureTask).
}).
#pos(e3417@10, {}, {goesIn(pasta, home_office)}, {
  obj(pasta). hasRole(pasta, consumableRole). affordsTask(pasta, eatingDrinkingTask). affordsTask(pasta, foodPreparationTask).
}).
#pos(e3418@10, {}, {goesIn(pasta, playroom)}, {
  obj(pasta). hasRole(pasta, consumableRole). affordsTask(pasta, eatingDrinkingTask). affordsTask(pasta, foodPreparationTask).
}).
#pos(e3419@10, {}, {goesIn(patio, bed)}, {
  obj(patio). hasRole(patio, furnitureRole). affordsTask(patio, leisureTask).
}).
#pos(e3420@10, {}, {goesIn(patio, sink)}, {
  obj(patio). hasRole(patio, furnitureRole). affordsTask(patio, leisureTask).
}).
#pos(e3421@10, {}, {goesIn(patio_door, closet)}, {
  obj(patio_door). hasRole(patio_door, furnitureRole). affordsTask(patio_door, leisureTask).
}).
#pos(e3422@10, {}, {goesIn(patio_door, kitchen)}, {
  obj(patio_door). hasRole(patio_door, furnitureRole). affordsTask(patio_door, leisureTask).
}).
#pos(e3423@10, {}, {goesIn(peanut_butter, bedroom)}, {
  obj(peanut_butter). hasRole(peanut_butter, consumableRole). affordsTask(peanut_butter, eatingDrinkingTask).
}).
#pos(e3424@10, {}, {goesIn(peanut_butter, laundry_room)}, {
  obj(peanut_butter). hasRole(peanut_butter, consumableRole). affordsTask(peanut_butter, eatingDrinkingTask).
}).
#pos(e3425@10, {}, {goesIn(peanuts, laundry_room)}, {
  obj(peanuts). hasRole(peanuts, consumableRole). affordsTask(peanuts, eatingDrinkingTask).
}).
#pos(e3426@10, {}, {goesIn(peanuts, music_room)}, {
  obj(peanuts). hasRole(peanuts, consumableRole). affordsTask(peanuts, eatingDrinkingTask).
}).
#pos(e3427@10, {}, {goesIn(pears, dining_room)}, {
  obj(pears). hasRole(pears, consumableRole). affordsTask(pears, eatingDrinkingTask).
}).
#pos(e3428@10, {}, {goesIn(pears, drawer)}, {
  obj(pears). hasRole(pears, consumableRole). affordsTask(pears, eatingDrinkingTask).
}).
#pos(e3429@10, {}, {goesIn(peas, closet)}, {
  obj(peas). hasRole(peas, consumableRole). affordsTask(peas, eatingDrinkingTask).
}).
#pos(e3430@10, {}, {goesIn(peas, sink)}, {
  obj(peas). hasRole(peas, consumableRole). affordsTask(peas, eatingDrinkingTask).
}).
#pos(e3431@10, {}, {goesIn(pebble, kitchen)}, {
  obj(pebble). hasRole(pebble, toolRole). affordsTask(pebble, maintenanceTask).
}).
#pos(e3432@10, {}, {goesIn(pebble, pantry)}, {
  obj(pebble). hasRole(pebble, toolRole). affordsTask(pebble, maintenanceTask).
}).
#pos(e3433@10, {}, {goesIn(pedestal, garage)}, {
  obj(pedestal). hasRole(pedestal, furnitureRole). affordsTask(pedestal, storageTask).
}).
#pos(e3434@10, {}, {goesIn(pedestal, shelf)}, {
  obj(pedestal). hasRole(pedestal, furnitureRole). affordsTask(pedestal, storageTask).
}).
#pos(e3435@10, {}, {goesIn(pen, fridge)}, {
  obj(pen). hasRole(pen, toolRole).
}).
#pos(e3436@10, {}, {goesIn(pen, home_office)}, {
  obj(pen). hasRole(pen, toolRole).
}).
#pos(e3437@10, {}, {goesIn(pencil, home_office)}, {
  obj(pencil). hasRole(pencil, toolRole).
}).
#pos(e3438@10, {}, {goesIn(pencil, playroom)}, {
  obj(pencil). hasRole(pencil, toolRole).
}).
#pos(e3439@10, {}, {goesIn(pencil_sharpener, cabinet)}, {
  obj(pencil_sharpener). hasRole(pencil_sharpener, toolRole). affordsTask(pencil_sharpener, foodPreparationTask).
}).
#pos(e3440@10, {}, {goesIn(pencil_sharpener, hallway)}, {
  obj(pencil_sharpener). hasRole(pencil_sharpener, toolRole). affordsTask(pencil_sharpener, foodPreparationTask).
}).
#pos(e3441@10, {}, {goesIn(pennies, cabinet)}, {
  obj(pennies). hasRole(pennies, consumableRole). affordsTask(pennies, eatingDrinkingTask).
}).
#pos(e3442@10, {}, {goesIn(pennies, shelf)}, {
  obj(pennies). hasRole(pennies, consumableRole). affordsTask(pennies, eatingDrinkingTask).
}).
#pos(e3443@10, {}, {goesIn(penny, dining_room)}, {
  obj(penny). hasRole(penny, consumableRole). affordsTask(penny, eatingDrinkingTask).
}).
#pos(e3444@10, {}, {goesIn(penny, garage)}, {
  obj(penny). hasRole(penny, consumableRole). affordsTask(penny, eatingDrinkingTask).
}).
#pos(e3445@10, {}, {goesIn(pens_and_pencils, kitchen)}, {
  obj(pens_and_pencils). hasRole(pens_and_pencils, toolRole). affordsTask(pens_and_pencils, workStudyTask).
}).
#pos(e3446@10, {}, {goesIn(pens_and_pencils, storage_room)}, {
  obj(pens_and_pencils). hasRole(pens_and_pencils, toolRole). affordsTask(pens_and_pencils, workStudyTask).
}).
#pos(e3447@10, {}, {goesIn(pepper, home_office)}, {
  obj(pepper). hasRole(pepper, consumableRole). affordsTask(pepper, foodPreparationTask).
}).
#pos(e3448@10, {}, {goesIn(pepper, pantry)}, {
  obj(pepper). hasRole(pepper, consumableRole). affordsTask(pepper, foodPreparationTask).
}).
#pos(e3449@10, {}, {goesIn(pepper_and_salt, bedroom)}, {
  obj(pepper_and_salt). hasRole(pepper_and_salt, consumableRole). affordsTask(pepper_and_salt, foodPreparationTask).
}).
#pos(e3450@10, {}, {goesIn(pepper_and_salt, laundry_room)}, {
  obj(pepper_and_salt). hasRole(pepper_and_salt, consumableRole). affordsTask(pepper_and_salt, foodPreparationTask).
}).
#pos(e3451@10, {}, {goesIn(pepsi, bathroom)}, {
  obj(pepsi). hasRole(pepsi, consumableRole). affordsTask(pepsi, eatingDrinkingTask).
}).
#pos(e3452@10, {}, {goesIn(pepsi, garden)}, {
  obj(pepsi). hasRole(pepsi, consumableRole). affordsTask(pepsi, eatingDrinkingTask).
}).
#pos(e3453@10, {}, {goesIn(pet, closet)}, {
  obj(pet). hasRole(pet, entertainmentRole). affordsTask(pet, leisureTask).
}).
#pos(e3454@10, {}, {goesIn(pet, playroom)}, {
  obj(pet). hasRole(pet, entertainmentRole). affordsTask(pet, leisureTask).
}).
#pos(e3455@10, {}, {goesIn(pets, kitchen)}, {
  obj(pets). hasRole(pets, entertainmentRole). affordsTask(pets, leisureTask).
}).
#pos(e3456@10, {}, {goesIn(pets, living_room)}, {
  obj(pets). hasRole(pets, entertainmentRole). affordsTask(pets, leisureTask).
}).
#pos(e3457@10, {}, {goesIn(phillips_head_screwdriver, garden)}, {
  obj(phillips_head_screwdriver). hasRole(phillips_head_screwdriver, toolRole). affordsTask(phillips_head_screwdriver, maintenanceTask).
}).
#pos(e3458@10, {}, {goesIn(phillips_head_screwdriver, table)}, {
  obj(phillips_head_screwdriver). hasRole(phillips_head_screwdriver, toolRole). affordsTask(phillips_head_screwdriver, maintenanceTask).
}).
#pos(e3459@10, {}, {goesIn(phillips_screwdriver, laundry_room)}, {
  obj(phillips_screwdriver). hasRole(phillips_screwdriver, toolRole). affordsTask(phillips_screwdriver, maintenanceTask).
}).
#pos(e3460@10, {}, {goesIn(phillips_screwdriver, shelf)}, {
  obj(phillips_screwdriver). hasRole(phillips_screwdriver, toolRole). affordsTask(phillips_screwdriver, maintenanceTask).
}).
#pos(e3461@10, {}, {goesIn(phone, kitchen)}, {
  obj(phone). hasRole(phone, toolRole). affordsTask(phone, workStudyTask).
}).
#pos(e3462@10, {}, {goesIn(phone, storage_room)}, {
  obj(phone). hasRole(phone, toolRole). affordsTask(phone, workStudyTask).
}).
#pos(e3463@10, {}, {goesIn(phone_book, cabinet)}, {
  obj(phone_book). hasRole(phone_book, documentRole). affordsTask(phone_book, workStudyTask).
}).
#pos(e3464@10, {}, {goesIn(phone_book, table)}, {
  obj(phone_book). hasRole(phone_book, documentRole). affordsTask(phone_book, workStudyTask).
}).
#pos(e3465@10, {}, {goesIn(photograph, fridge)}, {
  obj(photograph). hasRole(photograph, documentRole). affordsTask(photograph, leisureTask).
}).
#pos(e3466@10, {}, {goesIn(photograph, living_room)}, {
  obj(photograph). hasRole(photograph, documentRole). affordsTask(photograph, leisureTask).
}).
#pos(e3467@10, {}, {goesIn(piano, bathroom)}, {
  obj(piano). hasRole(piano, musicalInstrumentRole). affordsTask(piano, leisureTask). affordsTask(piano, workStudyTask).
}).
#pos(e3468@10, {}, {goesIn(piano, sink)}, {
  obj(piano). hasRole(piano, musicalInstrumentRole). affordsTask(piano, leisureTask). affordsTask(piano, workStudyTask).
}).
#pos(e3469@10, {}, {goesIn(pickle, hallway)}, {
  obj(pickle). hasRole(pickle, consumableRole). affordsTask(pickle, eatingDrinkingTask).
}).
#pos(e3470@10, {}, {goesIn(pickle, playroom)}, {
  obj(pickle). hasRole(pickle, consumableRole). affordsTask(pickle, eatingDrinkingTask).
}).
#pos(e3471@10, {}, {goesIn(picnic_basket, fridge)}, {
  obj(picnic_basket). hasRole(picnic_basket, storageContainerRole). affordsTask(picnic_basket, eatingDrinkingTask). affordsTask(picnic_basket, storageTask).
}).
#pos(e3472@10, {}, {goesIn(picnic_basket, sink)}, {
  obj(picnic_basket). hasRole(picnic_basket, storageContainerRole). affordsTask(picnic_basket, eatingDrinkingTask). affordsTask(picnic_basket, storageTask).
}).
#pos(e3473@10, {}, {goesIn(picture, bedroom)}, {
  obj(picture). hasRole(picture, decorationRole).
}).
#pos(e3474@10, {}, {goesIn(picture, music_room)}, {
  obj(picture). hasRole(picture, decorationRole).
}).
#pos(e3475@10, {}, {goesIn(picture_frame, garden)}, {
  obj(picture_frame). hasRole(picture_frame, decorationRole).
}).
#pos(e3476@10, {}, {goesIn(picture_frame, trash)}, {
  obj(picture_frame). hasRole(picture_frame, decorationRole).
}).
#pos(e3477@10, {}, {goesIn(pictures, closet)}, {
  obj(pictures). hasRole(pictures, decorationRole). affordsTask(pictures, leisureTask).
}).
#pos(e3478@10, {}, {goesIn(pictures, shelf)}, {
  obj(pictures). hasRole(pictures, decorationRole). affordsTask(pictures, leisureTask).
}).
#pos(e3479@10, {}, {goesIn(piece, bed)}, {
  obj(piece). hasRole(piece, toolRole). affordsTask(piece, maintenanceTask).
}).
#pos(e3480@10, {}, {goesIn(piece, closet)}, {
  obj(piece). hasRole(piece, toolRole). affordsTask(piece, maintenanceTask).
}).
#pos(e3481@10, {}, {goesIn(pig, bed)}, {
  obj(pig). hasRole(pig, consumableRole). affordsTask(pig, foodPreparationTask).
}).
#pos(e3482@10, {}, {goesIn(pig, hallway)}, {
  obj(pig). hasRole(pig, consumableRole). affordsTask(pig, foodPreparationTask).
}).
#pos(e3483@10, {}, {goesIn(pigeons, cabinet)}, {
  obj(pigeons). hasRole(pigeons, consumableRole). affordsTask(pigeons, eatingDrinkingTask).
}).
#pos(e3484@10, {}, {goesIn(pigeons, music_room)}, {
  obj(pigeons). hasRole(pigeons, consumableRole). affordsTask(pigeons, eatingDrinkingTask).
}).
#pos(e3485@10, {}, {goesIn(pill, closet)}, {
  obj(pill). hasRole(pill, consumableRole). affordsTask(pill, eatingDrinkingTask).
}).
#pos(e3486@10, {}, {goesIn(pill, garage)}, {
  obj(pill). hasRole(pill, consumableRole). affordsTask(pill, eatingDrinkingTask).
}).
#pos(e3487@10, {}, {goesIn(pillow, dining_room)}, {
  obj(pillow). hasRole(pillow, beddingRole). affordsTask(pillow, sleepingTask).
}).
#pos(e3488@10, {}, {goesIn(pillow, playroom)}, {
  obj(pillow). hasRole(pillow, beddingRole). affordsTask(pillow, sleepingTask).
}).
#pos(e3489@10, {}, {goesIn(pillow_case, pantry)}, {
  obj(pillow_case). hasRole(pillow_case, beddingRole). affordsTask(pillow_case, sleepingTask).
}).
#pos(e3490@10, {}, {goesIn(pillow_case, shelf)}, {
  obj(pillow_case). hasRole(pillow_case, beddingRole). affordsTask(pillow_case, sleepingTask).
}).
#pos(e3491@10, {}, {goesIn(pillowcase, library)}, {
  obj(pillowcase). hasRole(pillowcase, beddingRole). affordsTask(pillowcase, sleepingTask).
}).
#pos(e3492@10, {}, {goesIn(pillowcase, sink)}, {
  obj(pillowcase). hasRole(pillowcase, beddingRole). affordsTask(pillowcase, sleepingTask).
}).
#pos(e3493@10, {}, {goesIn(pineapple, laundry_room)}, {
  obj(pineapple). hasRole(pineapple, consumableRole). affordsTask(pineapple, eatingDrinkingTask).
}).
#pos(e3494@10, {}, {goesIn(pineapple, shelf)}, {
  obj(pineapple). hasRole(pineapple, consumableRole). affordsTask(pineapple, eatingDrinkingTask).
}).
#pos(e3495@10, {}, {goesIn(pipe, closet)}, {
  obj(pipe). hasRole(pipe, toolRole). affordsTask(pipe, maintenanceTask).
}).
#pos(e3496@10, {}, {goesIn(pipe, laundry_room)}, {
  obj(pipe). hasRole(pipe, toolRole). affordsTask(pipe, maintenanceTask).
}).
#pos(e3497@10, {}, {goesIn(pizza, cabinet)}, {
  obj(pizza). hasRole(pizza, consumableRole). affordsTask(pizza, eatingDrinkingTask).
}).
#pos(e3498@10, {}, {goesIn(pizza, storage_room)}, {
  obj(pizza). hasRole(pizza, consumableRole). affordsTask(pizza, eatingDrinkingTask).
}).
#pos(e3499@10, {}, {goesIn(place_setting, living_room)}, {
  obj(place_setting). hasRole(place_setting, utensilRole). affordsTask(place_setting, eatingDrinkingTask).
}).
#pos(e3500@10, {}, {goesIn(place_setting, shelf)}, {
  obj(place_setting). hasRole(place_setting, utensilRole). affordsTask(place_setting, eatingDrinkingTask).
}).
#pos(e3501@10, {}, {goesIn(placemat, garage)}, {
  obj(placemat). hasRole(placemat, utensilRole). affordsTask(placemat, eatingDrinkingTask).
}).
#pos(e3502@10, {}, {goesIn(placemat, laundry_room)}, {
  obj(placemat). hasRole(placemat, utensilRole). affordsTask(placemat, eatingDrinkingTask).
}).
#pos(e3503@10, {}, {goesIn(plant, bed)}, {
  obj(plant). hasRole(plant, consumableRole). affordsTask(plant, maintenanceTask).
}).
#pos(e3504@10, {}, {goesIn(plant, living_room)}, {
  obj(plant). hasRole(plant, consumableRole). affordsTask(plant, maintenanceTask).
}).
#pos(e3505@10, {}, {goesIn(plants, garage)}, {
  obj(plants). hasRole(plants, consumableRole). affordsTask(plants, eatingDrinkingTask).
}).
#pos(e3506@10, {}, {goesIn(plants, pantry)}, {
  obj(plants). hasRole(plants, consumableRole). affordsTask(plants, eatingDrinkingTask).
}).
#pos(e3507@10, {}, {goesIn(plastic, garage)}, {
  obj(plastic). hasRole(plastic, toolRole).
}).
#pos(e3508@10, {}, {goesIn(plastic, music_room)}, {
  obj(plastic). hasRole(plastic, toolRole).
}).
#pos(e3509@10, {}, {goesIn(plate, closet)}, {
  obj(plate). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e3510@10, {}, {goesIn(plate, laundry_room)}, {
  obj(plate). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e3511@10, {}, {goesIn(plates, laundry_room)}, {
  obj(plates). hasRole(plates, utensilRole). affordsTask(plates, eatingDrinkingTask).
}).
#pos(e3512@10, {}, {goesIn(plates, sink)}, {
  obj(plates). hasRole(plates, utensilRole). affordsTask(plates, eatingDrinkingTask).
}).
#pos(e3513@10, {}, {goesIn(plumbing, cabinet)}, {
  obj(plumbing). hasRole(plumbing, toolRole). affordsTask(plumbing, maintenanceTask).
}).
#pos(e3514@10, {}, {goesIn(plumbing, living_room)}, {
  obj(plumbing). hasRole(plumbing, toolRole). affordsTask(plumbing, maintenanceTask).
}).
#pos(e3515@10, {}, {goesIn(pocket, garden)}, {
  obj(pocket). hasRole(pocket, storageContainerRole). affordsTask(pocket, storageTask).
}).
#pos(e3516@10, {}, {goesIn(pocket, laundry_room)}, {
  obj(pocket). hasRole(pocket, storageContainerRole). affordsTask(pocket, storageTask).
}).
#pos(e3517@10, {}, {goesIn(poker_chips, cabinet)}, {
  obj(poker_chips). hasRole(poker_chips, entertainmentRole). affordsTask(poker_chips, leisureTask).
}).
#pos(e3518@10, {}, {goesIn(poker_chips, drawer)}, {
  obj(poker_chips). hasRole(poker_chips, entertainmentRole). affordsTask(poker_chips, leisureTask).
}).
#pos(e3519@10, {}, {goesIn(polish, bedroom)}, {
  obj(polish). hasRole(polish, cleaningToolRole). affordsTask(polish, cleaningTask).
}).
#pos(e3520@10, {}, {goesIn(polish, music_room)}, {
  obj(polish). hasRole(polish, cleaningToolRole). affordsTask(polish, cleaningTask).
}).
#pos(e3521@10, {}, {goesIn(popcorn, drawer)}, {
  obj(popcorn). hasRole(popcorn, consumableRole). affordsTask(popcorn, eatingDrinkingTask).
}).
#pos(e3522@10, {}, {goesIn(popcorn, table)}, {
  obj(popcorn). hasRole(popcorn, consumableRole). affordsTask(popcorn, eatingDrinkingTask).
}).
#pos(e3523@10, {}, {goesIn(pork, sink)}, {
  obj(pork). hasRole(pork, consumableRole). affordsTask(pork, eatingDrinkingTask).
}).
#pos(e3524@10, {}, {goesIn(pork, storage_room)}, {
  obj(pork). hasRole(pork, consumableRole). affordsTask(pork, eatingDrinkingTask).
}).
#pos(e3525@10, {}, {goesIn(portable_shower_head, bathroom)}, {
  obj(portable_shower_head). hasRole(portable_shower_head, cleaningToolRole). affordsTask(portable_shower_head, hygieneTask).
}).
#pos(e3526@10, {}, {goesIn(portable_shower_head, bed)}, {
  obj(portable_shower_head). hasRole(portable_shower_head, cleaningToolRole). affordsTask(portable_shower_head, hygieneTask).
}).
#pos(e3527@10, {}, {goesIn(post_note, fridge)}, {
  obj(post_note). hasRole(post_note, documentRole). affordsTask(post_note, workStudyTask).
}).
#pos(e3528@10, {}, {goesIn(post_note, hallway)}, {
  obj(post_note). hasRole(post_note, documentRole). affordsTask(post_note, workStudyTask).
}).
#pos(e3529@10, {}, {goesIn(post_notes, closet)}, {
  obj(post_notes). hasRole(post_notes, consumableRole). affordsTask(post_notes, leisureTask).
}).
#pos(e3530@10, {}, {goesIn(post_notes, playroom)}, {
  obj(post_notes). hasRole(post_notes, consumableRole). affordsTask(post_notes, leisureTask).
}).
#pos(e3531@10, {}, {goesIn(poster, cabinet)}, {
  obj(poster). hasRole(poster, decorationRole). affordsTask(poster, leisureTask).
}).
#pos(e3532@10, {}, {goesIn(poster, fridge)}, {
  obj(poster). hasRole(poster, decorationRole). affordsTask(poster, leisureTask).
}).
#pos(e3533@10, {}, {goesIn(pot, garage)}, {
  obj(pot). hasRole(pot, cookwareRole). affordsTask(pot, foodPreparationTask).
}).
#pos(e3534@10, {}, {goesIn(pot, storage_room)}, {
  obj(pot). hasRole(pot, cookwareRole). affordsTask(pot, foodPreparationTask).
}).
#pos(e3535@10, {}, {goesIn(potato, fridge)}, {
  obj(potato). hasRole(potato, consumableRole). affordsTask(potato, eatingDrinkingTask).
}).
#pos(e3536@10, {}, {goesIn(potato, garage)}, {
  obj(potato). hasRole(potato, consumableRole). affordsTask(potato, eatingDrinkingTask).
}).
#pos(e3537@10, {}, {goesIn(potatoes, closet)}, {
  obj(potatoes). hasRole(potatoes, consumableRole). affordsTask(potatoes, foodPreparationTask).
}).
#pos(e3538@10, {}, {goesIn(potatoes, hallway)}, {
  obj(potatoes). hasRole(potatoes, consumableRole). affordsTask(potatoes, foodPreparationTask).
}).
#pos(e3539@10, {}, {goesIn(pots, bathroom)}, {
  obj(pots). hasRole(pots, cookwareRole). affordsTask(pots, foodPreparationTask).
}).
#pos(e3540@10, {}, {goesIn(pots, storage_room)}, {
  obj(pots). hasRole(pots, cookwareRole). affordsTask(pots, foodPreparationTask).
}).
#pos(e3541@10, {}, {goesIn(pouch, dining_room)}, {
  obj(pouch). hasRole(pouch, storageContainerRole). affordsTask(pouch, storageTask).
}).
#pos(e3542@10, {}, {goesIn(pouch, garden)}, {
  obj(pouch). hasRole(pouch, storageContainerRole). affordsTask(pouch, storageTask).
}).
#pos(e3543@10, {}, {goesIn(power_screwdriver, closet)}, {
  obj(power_screwdriver). hasRole(power_screwdriver, toolRole). affordsTask(power_screwdriver, maintenanceTask).
}).
#pos(e3544@10, {}, {goesIn(power_screwdriver, playroom)}, {
  obj(power_screwdriver). hasRole(power_screwdriver, toolRole). affordsTask(power_screwdriver, maintenanceTask).
}).
#pos(e3545@10, {}, {goesIn(present, drawer)}, {
  obj(present). hasRole(present, consumableRole). affordsTask(present, eatingDrinkingTask).
}).
#pos(e3546@10, {}, {goesIn(present, hallway)}, {
  obj(present). hasRole(present, consumableRole). affordsTask(present, eatingDrinkingTask).
}).
#pos(e3547@10, {}, {goesIn(printer, bathroom)}, {
  obj(printer). hasRole(printer, applianceRole). affordsTask(printer, workStudyTask).
}).
#pos(e3548@10, {}, {goesIn(printer, cabinet)}, {
  obj(printer). hasRole(printer, applianceRole). affordsTask(printer, workStudyTask).
}).
#pos(e3549@10, {}, {goesIn(pump, bathroom)}, {
  obj(pump). hasRole(pump, toolRole). affordsTask(pump, maintenanceTask).
}).
#pos(e3550@10, {}, {goesIn(pump, closet)}, {
  obj(pump). hasRole(pump, toolRole). affordsTask(pump, maintenanceTask).
}).
#pos(e3551@10, {}, {goesIn(puppy, fridge)}, {
  obj(puppy). affordsTask(puppy, leisureTask).
}).
#pos(e3552@10, {}, {goesIn(puppy, home_office)}, {
  obj(puppy). affordsTask(puppy, leisureTask).
}).
#pos(e3553@10, {}, {goesIn(purse, home_office)}, {
  obj(purse). hasRole(purse, storageContainerRole). affordsTask(purse, storageTask).
}).
#pos(e3554@10, {}, {goesIn(purse, shelf)}, {
  obj(purse). hasRole(purse, storageContainerRole). affordsTask(purse, storageTask).
}).
#pos(e3555@10, {}, {goesIn(puzzle, bathroom)}, {
  obj(puzzle). hasRole(puzzle, entertainmentRole). affordsTask(puzzle, leisureTask).
}).
#pos(e3556@10, {}, {goesIn(puzzle, dining_room)}, {
  obj(puzzle). hasRole(puzzle, entertainmentRole). affordsTask(puzzle, leisureTask).
}).
#pos(e3557@10, {}, {goesIn(quill_brush, bed)}, {
  obj(quill_brush). hasRole(quill_brush, toolRole).
}).
#pos(e3558@10, {}, {goesIn(quill_brush, garden)}, {
  obj(quill_brush). hasRole(quill_brush, toolRole).
}).
#pos(e3559@10, {}, {goesIn(radiator, closet)}, {
  obj(radiator). hasRole(radiator, applianceRole). affordsTask(radiator, maintenanceTask).
}).
#pos(e3560@10, {}, {goesIn(radiator, library)}, {
  obj(radiator). hasRole(radiator, applianceRole). affordsTask(radiator, maintenanceTask).
}).
#pos(e3561@10, {}, {goesIn(radio, closet)}, {
  obj(radio). hasRole(radio, applianceRole). affordsTask(radio, leisureTask).
}).
#pos(e3562@10, {}, {goesIn(radio, playroom)}, {
  obj(radio). hasRole(radio, applianceRole). affordsTask(radio, leisureTask).
}).
#pos(e3563@10, {}, {goesIn(rafter, bedroom)}, {
  obj(rafter). hasRole(rafter, furnitureRole). affordsTask(rafter, maintenanceTask).
}).
#pos(e3564@10, {}, {goesIn(rafter, living_room)}, {
  obj(rafter). hasRole(rafter, furnitureRole). affordsTask(rafter, maintenanceTask).
}).
#pos(e3565@10, {}, {goesIn(railing, laundry_room)}, {
  obj(railing). hasRole(railing, furnitureRole).
}).
#pos(e3566@10, {}, {goesIn(railing, music_room)}, {
  obj(railing). hasRole(railing, furnitureRole).
}).
#pos(e3567@10, {}, {goesIn(ratchet_screwdriver, playroom)}, {
  obj(ratchet_screwdriver). hasRole(ratchet_screwdriver, toolRole). affordsTask(ratchet_screwdriver, maintenanceTask).
}).
#pos(e3568@10, {}, {goesIn(ratchet_screwdriver, sink)}, {
  obj(ratchet_screwdriver). hasRole(ratchet_screwdriver, toolRole). affordsTask(ratchet_screwdriver, maintenanceTask).
}).
#pos(e3569@10, {}, {goesIn(reading_glasses, cabinet)}, {
  obj(reading_glasses). hasRole(reading_glasses, toolRole). affordsTask(reading_glasses, workStudyTask).
}).
#pos(e3570@10, {}, {goesIn(reading_glasses, living_room)}, {
  obj(reading_glasses). hasRole(reading_glasses, toolRole). affordsTask(reading_glasses, workStudyTask).
}).
#pos(e3571@10, {}, {goesIn(recipes, garage)}, {
  obj(recipes). hasRole(recipes, consumableRole). affordsTask(recipes, foodPreparationTask).
}).
#pos(e3572@10, {}, {goesIn(recipes, pantry)}, {
  obj(recipes). hasRole(recipes, consumableRole). affordsTask(recipes, foodPreparationTask).
}).
#pos(e3573@10, {}, {goesIn(recycling_bin, bed)}, {
  obj(recycling_bin). hasRole(recycling_bin, storageContainerRole). affordsTask(recycling_bin, wasteDisposalTask).
}).
#pos(e3574@10, {}, {goesIn(recycling_bin, shelf)}, {
  obj(recycling_bin). hasRole(recycling_bin, storageContainerRole). affordsTask(recycling_bin, wasteDisposalTask).
}).
#pos(e3575@10, {}, {goesIn(refill, playroom)}, {
  obj(refill). hasRole(refill, consumableRole). affordsTask(refill, eatingDrinkingTask).
}).
#pos(e3576@10, {}, {goesIn(refill, trash)}, {
  obj(refill). hasRole(refill, consumableRole). affordsTask(refill, eatingDrinkingTask).
}).
#pos(e3577@10, {}, {goesIn(refrigerator, home_office)}, {
  obj(refrigerator). hasRole(refrigerator, applianceRole). affordsTask(refrigerator, storageTask).
}).
#pos(e3578@10, {}, {goesIn(refrigerator, playroom)}, {
  obj(refrigerator). hasRole(refrigerator, applianceRole). affordsTask(refrigerator, storageTask).
}).
#pos(e3579@10, {}, {goesIn(refrigerator_freezer, bathroom)}, {
  obj(refrigerator_freezer). hasRole(refrigerator_freezer, applianceRole). affordsTask(refrigerator_freezer, foodPreparationTask). affordsTask(refrigerator_freezer, storageTask).
}).
#pos(e3580@10, {}, {goesIn(refrigerator_freezer, bed)}, {
  obj(refrigerator_freezer). hasRole(refrigerator_freezer, applianceRole). affordsTask(refrigerator_freezer, foodPreparationTask). affordsTask(refrigerator_freezer, storageTask).
}).
#pos(e3581@10, {}, {goesIn(refuse, library)}, {
  obj(refuse). hasRole(refuse, wasteRole). affordsTask(refuse, wasteDisposalTask).
}).
#pos(e3582@10, {}, {goesIn(refuse, pantry)}, {
  obj(refuse). hasRole(refuse, wasteRole). affordsTask(refuse, wasteDisposalTask).
}).
#pos(e3583@10, {}, {goesIn(remote_control, library)}, {
  obj(remote_control). hasRole(remote_control, toolRole). affordsTask(remote_control, leisureTask).
}).
#pos(e3584@10, {}, {goesIn(remote_control, trash)}, {
  obj(remote_control). hasRole(remote_control, toolRole). affordsTask(remote_control, leisureTask).
}).
#pos(e3585@10, {}, {goesIn(revolving_door, cabinet)}, {
  obj(revolving_door). hasRole(revolving_door, furnitureRole). affordsTask(revolving_door, leisureTask).
}).
#pos(e3586@10, {}, {goesIn(revolving_door, music_room)}, {
  obj(revolving_door). hasRole(revolving_door, furnitureRole). affordsTask(revolving_door, leisureTask).
}).
#pos(e3587@10, {}, {goesIn(ribbon, bedroom)}, {
  obj(ribbon). hasRole(ribbon, clothingRole). affordsTask(ribbon, dressingTask).
}).
#pos(e3588@10, {}, {goesIn(ribbon, music_room)}, {
  obj(ribbon). hasRole(ribbon, clothingRole). affordsTask(ribbon, dressingTask).
}).
#pos(e3589@10, {}, {goesIn(rice, bedroom)}, {
  obj(rice). hasRole(rice, consumableRole). affordsTask(rice, eatingDrinkingTask). affordsTask(rice, foodPreparationTask).
}).
#pos(e3590@10, {}, {goesIn(rice, home_office)}, {
  obj(rice). hasRole(rice, consumableRole). affordsTask(rice, eatingDrinkingTask). affordsTask(rice, foodPreparationTask).
}).
#pos(e3591@10, {}, {goesIn(ring, dining_room)}, {
  obj(ring). hasRole(ring, utensilRole). affordsTask(ring, eatingDrinkingTask).
}).
#pos(e3592@10, {}, {goesIn(ring, table)}, {
  obj(ring). hasRole(ring, utensilRole). affordsTask(ring, eatingDrinkingTask).
}).
#pos(e3593@10, {}, {goesIn(roadway, bedroom)}, {
  obj(roadway).
}).
#pos(e3594@10, {}, {goesIn(roadway, closet)}, {
  obj(roadway).
}).
#pos(e3595@10, {}, {goesIn(robot, garden)}, {
  obj(robot). hasRole(robot, applianceRole). affordsTask(robot, maintenanceTask). affordsTask(robot, workStudyTask).
}).
#pos(e3596@10, {}, {goesIn(robot, sink)}, {
  obj(robot). hasRole(robot, applianceRole). affordsTask(robot, maintenanceTask). affordsTask(robot, workStudyTask).
}).
#pos(e3597@10, {}, {goesIn(rock, pantry)}, {
  obj(rock). hasRole(rock, toolRole). affordsTask(rock, maintenanceTask).
}).
#pos(e3598@10, {}, {goesIn(rock, shelf)}, {
  obj(rock). hasRole(rock, toolRole). affordsTask(rock, maintenanceTask).
}).
#pos(e3599@10, {}, {goesIn(rocks, pantry)}, {
  obj(rocks). hasRole(rocks, toolRole). affordsTask(rocks, maintenanceTask).
}).
#pos(e3600@10, {}, {goesIn(rocks, sink)}, {
  obj(rocks). hasRole(rocks, toolRole). affordsTask(rocks, maintenanceTask).
}).
#pos(e3601@10, {}, {goesIn(rolodex, garden)}, {
  obj(rolodex). hasRole(rolodex, storageContainerRole). affordsTask(rolodex, workStudyTask).
}).
#pos(e3602@10, {}, {goesIn(rolodex, library)}, {
  obj(rolodex). hasRole(rolodex, storageContainerRole). affordsTask(rolodex, workStudyTask).
}).
#pos(e3603@10, {}, {goesIn(roof, pantry)}, {
  obj(roof). hasRole(roof, furnitureRole). affordsTask(roof, leisureTask).
}).
#pos(e3604@10, {}, {goesIn(roof, sink)}, {
  obj(roof). hasRole(roof, furnitureRole). affordsTask(roof, leisureTask).
}).
#pos(e3605@10, {}, {goesIn(rook, cabinet)}, {
  obj(rook). hasRole(rook, toolRole). affordsTask(rook, leisureTask).
}).
#pos(e3606@10, {}, {goesIn(rook, laundry_room)}, {
  obj(rook). hasRole(rook, toolRole). affordsTask(rook, leisureTask).
}).
#pos(e3607@10, {}, {goesIn(room_study, closet)}, {
  obj(room_study). hasRole(room_study, furnitureRole). affordsTask(room_study, workStudyTask).
}).
#pos(e3608@10, {}, {goesIn(room_study, shelf)}, {
  obj(room_study). hasRole(room_study, furnitureRole). affordsTask(room_study, workStudyTask).
}).
#pos(e3609@10, {}, {goesIn(roots, garage)}, {
  obj(roots). hasRole(roots, consumableRole). affordsTask(roots, eatingDrinkingTask).
}).
#pos(e3610@10, {}, {goesIn(roots, living_room)}, {
  obj(roots). hasRole(roots, consumableRole). affordsTask(roots, eatingDrinkingTask).
}).
#pos(e3611@10, {}, {goesIn(rope, fridge)}, {
  obj(rope). hasRole(rope, toolRole). affordsTask(rope, leisureTask). affordsTask(rope, maintenanceTask).
}).
#pos(e3612@10, {}, {goesIn(rope, living_room)}, {
  obj(rope). hasRole(rope, toolRole). affordsTask(rope, leisureTask). affordsTask(rope, maintenanceTask).
}).
#pos(e3613@10, {}, {goesIn(rose, home_office)}, {
  obj(rose). hasRole(rose, consumableRole). affordsTask(rose, eatingDrinkingTask).
}).
#pos(e3614@10, {}, {goesIn(rose, library)}, {
  obj(rose). hasRole(rose, consumableRole). affordsTask(rose, eatingDrinkingTask).
}).
#pos(e3615@10, {}, {goesIn(rotten_food, kitchen)}, {
  obj(rotten_food). hasRole(rotten_food, consumableRole). affordsTask(rotten_food, eatingDrinkingTask).
}).
#pos(e3616@10, {}, {goesIn(rotten_food, library)}, {
  obj(rotten_food). hasRole(rotten_food, consumableRole). affordsTask(rotten_food, eatingDrinkingTask).
}).
#pos(e3617@10, {}, {goesIn(round_brush, closet)}, {
  obj(round_brush). hasRole(round_brush, cleaningToolRole). affordsTask(round_brush, cleaningTask).
}).
#pos(e3618@10, {}, {goesIn(round_brush, living_room)}, {
  obj(round_brush). hasRole(round_brush, cleaningToolRole). affordsTask(round_brush, cleaningTask).
}).
#pos(e3619@10, {}, {goesIn(route, hallway)}, {
  obj(route). hasRole(route, toolRole). affordsTask(route, leisureTask).
}).
#pos(e3620@10, {}, {goesIn(route, laundry_room)}, {
  obj(route). hasRole(route, toolRole). affordsTask(route, leisureTask).
}).
#pos(e3621@10, {}, {goesIn(row, home_office)}, {
  obj(row). hasRole(row, storageContainerRole). affordsTask(row, storageTask).
}).
#pos(e3622@10, {}, {goesIn(row, trash)}, {
  obj(row). hasRole(row, storageContainerRole). affordsTask(row, storageTask).
}).
#pos(e3623@10, {}, {goesIn(rubber, garden)}, {
  obj(rubber). hasRole(rubber, toolRole). affordsTask(rubber, maintenanceTask).
}).
#pos(e3624@10, {}, {goesIn(rubber, kitchen)}, {
  obj(rubber). hasRole(rubber, toolRole). affordsTask(rubber, maintenanceTask).
}).
#pos(e3625@10, {}, {goesIn(rubber_stamp, closet)}, {
  obj(rubber_stamp). hasRole(rubber_stamp, toolRole).
}).
#pos(e3626@10, {}, {goesIn(rubber_stamp, storage_room)}, {
  obj(rubber_stamp). hasRole(rubber_stamp, toolRole).
}).
#pos(e3627@10, {}, {goesIn(rug, closet)}, {
  obj(rug). hasRole(rug, furnitureRole). affordsTask(rug, leisureTask).
}).
#pos(e3628@10, {}, {goesIn(rug, playroom)}, {
  obj(rug). hasRole(rug, furnitureRole). affordsTask(rug, leisureTask).
}).
#pos(e3629@10, {}, {goesIn(ruler, bedroom)}, {
  obj(ruler). hasRole(ruler, toolRole). affordsTask(ruler, maintenanceTask).
}).
#pos(e3630@10, {}, {goesIn(ruler, library)}, {
  obj(ruler). hasRole(ruler, toolRole). affordsTask(ruler, maintenanceTask).
}).
#pos(e3631@10, {}, {goesIn(safe, dining_room)}, {
  obj(safe). hasRole(safe, safetyEquipmentRole). affordsTask(safe, maintenanceTask).
}).
#pos(e3632@10, {}, {goesIn(safe, laundry_room)}, {
  obj(safe). hasRole(safe, safetyEquipmentRole). affordsTask(safe, maintenanceTask).
}).
#pos(e3633@10, {}, {goesIn(safety_pins, closet)}, {
  obj(safety_pins). hasRole(safety_pins, toolRole). affordsTask(safety_pins, maintenanceTask).
}).
#pos(e3634@10, {}, {goesIn(safety_pins, pantry)}, {
  obj(safety_pins). hasRole(safety_pins, toolRole). affordsTask(safety_pins, maintenanceTask).
}).
#pos(e3635@10, {}, {goesIn(salad, bed)}, {
  obj(salad). hasRole(salad, consumableRole). affordsTask(salad, eatingDrinkingTask).
}).
#pos(e3636@10, {}, {goesIn(salad, shelf)}, {
  obj(salad). hasRole(salad, consumableRole). affordsTask(salad, eatingDrinkingTask).
}).
#pos(e3637@10, {}, {goesIn(salad_bowl, sink)}, {
  obj(salad_bowl). hasRole(salad_bowl, utensilRole). affordsTask(salad_bowl, eatingDrinkingTask). affordsTask(salad_bowl, foodPreparationTask).
}).
#pos(e3638@10, {}, {goesIn(salad_bowl, trash)}, {
  obj(salad_bowl). hasRole(salad_bowl, utensilRole). affordsTask(salad_bowl, eatingDrinkingTask). affordsTask(salad_bowl, foodPreparationTask).
}).
#pos(e3639@10, {}, {goesIn(salad_spinner, home_office)}, {
  obj(salad_spinner). hasRole(salad_spinner, utensilRole). affordsTask(salad_spinner, foodPreparationTask).
}).
#pos(e3640@10, {}, {goesIn(salad_spinner, table)}, {
  obj(salad_spinner). hasRole(salad_spinner, utensilRole). affordsTask(salad_spinner, foodPreparationTask).
}).
#pos(e3641@10, {}, {goesIn(salt, drawer)}, {
  obj(salt). hasRole(salt, consumableRole). affordsTask(salt, foodPreparationTask).
}).
#pos(e3642@10, {}, {goesIn(salt, playroom)}, {
  obj(salt). hasRole(salt, consumableRole). affordsTask(salt, foodPreparationTask).
}).
#pos(e3643@10, {}, {goesIn(salt_and_pepper, home_office)}, {
  obj(salt_and_pepper). hasRole(salt_and_pepper, utensilRole). affordsTask(salt_and_pepper, foodPreparationTask).
}).
#pos(e3644@10, {}, {goesIn(salt_and_pepper, storage_room)}, {
  obj(salt_and_pepper). hasRole(salt_and_pepper, utensilRole). affordsTask(salt_and_pepper, foodPreparationTask).
}).
#pos(e3645@10, {}, {goesIn(saltshaker, bed)}, {
  obj(saltshaker). hasRole(saltshaker, utensilRole). affordsTask(saltshaker, foodPreparationTask).
}).
#pos(e3646@10, {}, {goesIn(saltshaker, library)}, {
  obj(saltshaker). hasRole(saltshaker, utensilRole). affordsTask(saltshaker, foodPreparationTask).
}).
#pos(e3647@10, {}, {goesIn(sauce, garden)}, {
  obj(sauce). hasRole(sauce, consumableRole). affordsTask(sauce, foodPreparationTask).
}).
#pos(e3648@10, {}, {goesIn(sauce, sink)}, {
  obj(sauce). hasRole(sauce, consumableRole). affordsTask(sauce, foodPreparationTask).
}).
#pos(e3649@10, {}, {goesIn(saucepan, hallway)}, {
  obj(saucepan). hasRole(saucepan, cookwareRole). affordsTask(saucepan, foodPreparationTask).
}).
#pos(e3650@10, {}, {goesIn(saucepan, laundry_room)}, {
  obj(saucepan). hasRole(saucepan, cookwareRole). affordsTask(saucepan, foodPreparationTask).
}).
#pos(e3651@10, {}, {goesIn(saucer, cabinet)}, {
  obj(saucer). hasRole(saucer, utensilRole). affordsTask(saucer, eatingDrinkingTask).
}).
#pos(e3652@10, {}, {goesIn(saucer, shelf)}, {
  obj(saucer). hasRole(saucer, utensilRole). affordsTask(saucer, eatingDrinkingTask).
}).
#pos(e3653@10, {}, {goesIn(saw, fridge)}, {
  obj(saw). hasRole(saw, toolRole). affordsTask(saw, maintenanceTask).
}).
#pos(e3654@10, {}, {goesIn(saw, playroom)}, {
  obj(saw). hasRole(saw, toolRole). affordsTask(saw, maintenanceTask).
}).
#pos(e3655@10, {}, {goesIn(scale, dining_room)}, {
  obj(scale). hasRole(scale, toolRole).
}).
#pos(e3656@10, {}, {goesIn(scale, trash)}, {
  obj(scale). hasRole(scale, toolRole).
}).
#pos(e3657@10, {}, {goesIn(school_book, fridge)}, {
  obj(school_book). hasRole(school_book, documentRole). affordsTask(school_book, workStudyTask).
}).
#pos(e3658@10, {}, {goesIn(school_book, music_room)}, {
  obj(school_book). hasRole(school_book, documentRole). affordsTask(school_book, workStudyTask).
}).
#pos(e3659@10, {}, {goesIn(science_fiction_books, cabinet)}, {
  obj(science_fiction_books). hasRole(science_fiction_books, documentRole). affordsTask(science_fiction_books, leisureTask).
}).
#pos(e3660@10, {}, {goesIn(science_fiction_books, home_office)}, {
  obj(science_fiction_books). hasRole(science_fiction_books, documentRole). affordsTask(science_fiction_books, leisureTask).
}).
#pos(e3661@10, {}, {goesIn(scissors, laundry_room)}, {
  obj(scissors). hasRole(scissors, toolRole). affordsTask(scissors, foodPreparationTask).
}).
#pos(e3662@10, {}, {goesIn(scissors, shelf)}, {
  obj(scissors). hasRole(scissors, toolRole). affordsTask(scissors, foodPreparationTask).
}).
#pos(e3663@10, {}, {goesIn(scotch_tape, cabinet)}, {
  obj(scotch_tape). hasRole(scotch_tape, toolRole). affordsTask(scotch_tape, maintenanceTask).
}).
#pos(e3664@10, {}, {goesIn(scotch_tape, garage)}, {
  obj(scotch_tape). hasRole(scotch_tape, toolRole). affordsTask(scotch_tape, maintenanceTask).
}).
#pos(e3665@10, {}, {goesIn(screw, fridge)}, {
  obj(screw). hasRole(screw, toolRole). affordsTask(screw, maintenanceTask).
}).
#pos(e3666@10, {}, {goesIn(screw, sink)}, {
  obj(screw). hasRole(screw, toolRole). affordsTask(screw, maintenanceTask).
}).
#pos(e3667@10, {}, {goesIn(screwdriver, living_room)}, {
  obj(screwdriver). hasRole(screwdriver, toolRole). affordsTask(screwdriver, maintenanceTask).
}).
#pos(e3668@10, {}, {goesIn(screwdriver, shelf)}, {
  obj(screwdriver). hasRole(screwdriver, toolRole). affordsTask(screwdriver, maintenanceTask).
}).
#pos(e3669@10, {}, {goesIn(screws, storage_room)}, {
  obj(screws). hasRole(screws, toolRole). affordsTask(screws, maintenanceTask).
}).
#pos(e3670@10, {}, {goesIn(screws, trash)}, {
  obj(screws). hasRole(screws, toolRole). affordsTask(screws, maintenanceTask).
}).
#pos(e3671@10, {}, {goesIn(sculpting_gel, bed)}, {
  obj(sculpting_gel). hasRole(sculpting_gel, cleaningToolRole). affordsTask(sculpting_gel, hygieneTask).
}).
#pos(e3672@10, {}, {goesIn(sculpting_gel, storage_room)}, {
  obj(sculpting_gel). hasRole(sculpting_gel, cleaningToolRole). affordsTask(sculpting_gel, hygieneTask).
}).
#pos(e3673@10, {}, {goesIn(seat, hallway)}, {
  obj(seat). hasRole(seat, furnitureRole). affordsTask(seat, leisureTask). affordsTask(seat, sleepingTask).
}).
#pos(e3674@10, {}, {goesIn(seat, trash)}, {
  obj(seat). hasRole(seat, furnitureRole). affordsTask(seat, leisureTask). affordsTask(seat, sleepingTask).
}).
#pos(e3675@10, {}, {goesIn(second_floor, bathroom)}, {
  obj(second_floor). hasRole(second_floor, furnitureRole).
}).
#pos(e3676@10, {}, {goesIn(second_floor, drawer)}, {
  obj(second_floor). hasRole(second_floor, furnitureRole).
}).
#pos(e3677@10, {}, {goesIn(seeds, garage)}, {
  obj(seeds). hasRole(seeds, consumableRole). affordsTask(seeds, gardeningTask).
}).
#pos(e3678@10, {}, {goesIn(seeds, trash)}, {
  obj(seeds). hasRole(seeds, consumableRole). affordsTask(seeds, gardeningTask).
}).
#pos(e3679@10, {}, {goesIn(self_adhesive_label, garden)}, {
  obj(self_adhesive_label). hasRole(self_adhesive_label, utensilRole). affordsTask(self_adhesive_label, maintenanceTask).
}).
#pos(e3680@10, {}, {goesIn(self_adhesive_label, hallway)}, {
  obj(self_adhesive_label). hasRole(self_adhesive_label, utensilRole). affordsTask(self_adhesive_label, maintenanceTask).
}).
#pos(e3681@10, {}, {goesIn(separate_shower, bed)}, {
  obj(separate_shower). hasRole(separate_shower, furnitureRole). affordsTask(separate_shower, hygieneTask).
}).
#pos(e3682@10, {}, {goesIn(separate_shower, kitchen)}, {
  obj(separate_shower). hasRole(separate_shower, furnitureRole). affordsTask(separate_shower, hygieneTask).
}).
#pos(e3683@10, {}, {goesIn(serving_trolley, closet)}, {
  obj(serving_trolley). hasRole(serving_trolley, furnitureRole). hasRole(serving_trolley, storageContainerRole). affordsTask(serving_trolley, eatingDrinkingTask). affordsTask(serving_trolley, foodPreparationTask). affordsTask(serving_trolley, storageTask).
}).
#pos(e3684@10, {}, {goesIn(serving_trolley, drawer)}, {
  obj(serving_trolley). hasRole(serving_trolley, furnitureRole). hasRole(serving_trolley, storageContainerRole). affordsTask(serving_trolley, eatingDrinkingTask). affordsTask(serving_trolley, foodPreparationTask). affordsTask(serving_trolley, storageTask).
}).
#pos(e3685@10, {}, {goesIn(shades, library)}, {
  obj(shades). hasRole(shades, furnitureRole). affordsTask(shades, leisureTask).
}).
#pos(e3686@10, {}, {goesIn(shades, sink)}, {
  obj(shades). hasRole(shades, furnitureRole). affordsTask(shades, leisureTask).
}).
#pos(e3687@10, {}, {goesIn(shampoo, cabinet)}, {
  obj(shampoo). hasRole(shampoo, cleaningToolRole). affordsTask(shampoo, hygieneTask).
}).
#pos(e3688@10, {}, {goesIn(shampoo, dining_room)}, {
  obj(shampoo). hasRole(shampoo, cleaningToolRole). affordsTask(shampoo, hygieneTask).
}).
#pos(e3689@10, {}, {goesIn(shampoo_and_conditioner, bed)}, {
  obj(shampoo_and_conditioner). hasRole(shampoo_and_conditioner, cleaningToolRole). affordsTask(shampoo_and_conditioner, hygieneTask).
}).
#pos(e3690@10, {}, {goesIn(shampoo_and_conditioner, table)}, {
  obj(shampoo_and_conditioner). hasRole(shampoo_and_conditioner, cleaningToolRole). affordsTask(shampoo_and_conditioner, hygieneTask).
}).
#pos(e3691@10, {}, {goesIn(sheet, cabinet)}, {
  obj(sheet). hasRole(sheet, beddingRole). affordsTask(sheet, sleepingTask).
}).
#pos(e3692@10, {}, {goesIn(sheet, playroom)}, {
  obj(sheet). hasRole(sheet, beddingRole). affordsTask(sheet, sleepingTask).
}).
#pos(e3693@10, {}, {goesIn(sheet_of_paper, fridge)}, {
  obj(sheet_of_paper). hasRole(sheet_of_paper, documentRole).
}).
#pos(e3694@10, {}, {goesIn(sheet_of_paper, living_room)}, {
  obj(sheet_of_paper). hasRole(sheet_of_paper, documentRole).
}).
#pos(e3695@10, {}, {goesIn(sheets, living_room)}, {
  obj(sheets). hasRole(sheets, beddingRole). affordsTask(sheets, sleepingTask).
}).
#pos(e3696@10, {}, {goesIn(sheets, music_room)}, {
  obj(sheets). hasRole(sheets, beddingRole). affordsTask(sheets, sleepingTask).
}).
#pos(e3697@10, {}, {goesIn(shelf, home_office)}, {
  obj(shelf). hasRole(shelf, storageContainerRole). affordsTask(shelf, storageTask).
}).
#pos(e3698@10, {}, {goesIn(shelf, pantry)}, {
  obj(shelf). hasRole(shelf, storageContainerRole). affordsTask(shelf, storageTask).
}).
#pos(e3699@10, {}, {goesIn(shellac, garden)}, {
  obj(shellac). hasRole(shellac, toolRole). affordsTask(shellac, maintenanceTask).
}).
#pos(e3700@10, {}, {goesIn(shellac, home_office)}, {
  obj(shellac). hasRole(shellac, toolRole). affordsTask(shellac, maintenanceTask).
}).
#pos(e3701@10, {}, {goesIn(shelter, home_office)}, {
  obj(shelter). hasRole(shelter, furnitureRole). affordsTask(shelter, storageTask).
}).
#pos(e3702@10, {}, {goesIn(shelter, shelf)}, {
  obj(shelter). hasRole(shelter, furnitureRole). affordsTask(shelter, storageTask).
}).
#pos(e3703@10, {}, {goesIn(shirt, cabinet)}, {
  obj(shirt). hasRole(shirt, clothingRole). affordsTask(shirt, dressingTask).
}).
#pos(e3704@10, {}, {goesIn(shirt, table)}, {
  obj(shirt). hasRole(shirt, clothingRole). affordsTask(shirt, dressingTask).
}).
#pos(e3705@10, {}, {goesIn(shirts, bed)}, {
  obj(shirts). hasRole(shirts, clothingRole). affordsTask(shirts, dressingTask).
}).
#pos(e3706@10, {}, {goesIn(shirts, drawer)}, {
  obj(shirts). hasRole(shirts, clothingRole). affordsTask(shirts, dressingTask).
}).
#pos(e3707@10, {}, {goesIn(shoe, fridge)}, {
  obj(shoe). hasRole(shoe, clothingRole). affordsTask(shoe, dressingTask).
}).
#pos(e3708@10, {}, {goesIn(shoe, storage_room)}, {
  obj(shoe). hasRole(shoe, clothingRole). affordsTask(shoe, dressingTask).
}).
#pos(e3709@10, {}, {goesIn(shoes, cabinet)}, {
  obj(shoes). hasRole(shoes, clothingRole). affordsTask(shoes, dressingTask).
}).
#pos(e3710@10, {}, {goesIn(shoes, music_room)}, {
  obj(shoes). hasRole(shoes, clothingRole). affordsTask(shoes, dressingTask).
}).
#pos(e3711@10, {}, {goesIn(shopping_bag, cabinet)}, {
  obj(shopping_bag). hasRole(shopping_bag, storageContainerRole). affordsTask(shopping_bag, storageTask).
}).
#pos(e3712@10, {}, {goesIn(shopping_bag, hallway)}, {
  obj(shopping_bag). hasRole(shopping_bag, storageContainerRole). affordsTask(shopping_bag, storageTask).
}).
#pos(e3713@10, {}, {goesIn(shopping_basket, library)}, {
  obj(shopping_basket). hasRole(shopping_basket, storageContainerRole).
}).
#pos(e3714@10, {}, {goesIn(shopping_basket, table)}, {
  obj(shopping_basket). hasRole(shopping_basket, storageContainerRole).
}).
#pos(e3715@10, {}, {goesIn(shopping_list, library)}, {
  obj(shopping_list). hasRole(shopping_list, storageContainerRole).
}).
#pos(e3716@10, {}, {goesIn(shopping_list, music_room)}, {
  obj(shopping_list). hasRole(shopping_list, storageContainerRole).
}).
#pos(e3717@10, {}, {goesIn(shower, living_room)}, {
  obj(shower). hasRole(shower, applianceRole). affordsTask(shower, cleaningTask). affordsTask(shower, hygieneTask).
}).
#pos(e3718@10, {}, {goesIn(shower, sink)}, {
  obj(shower). hasRole(shower, applianceRole). affordsTask(shower, cleaningTask). affordsTask(shower, hygieneTask).
}).
#pos(e3719@10, {}, {goesIn(shower_door, garden)}, {
  obj(shower_door). hasRole(shower_door, furnitureRole). affordsTask(shower_door, leisureTask).
}).
#pos(e3720@10, {}, {goesIn(shower_door, living_room)}, {
  obj(shower_door). hasRole(shower_door, furnitureRole). affordsTask(shower_door, leisureTask).
}).
#pos(e3721@10, {}, {goesIn(shower_switch, fridge)}, {
  obj(shower_switch). hasRole(shower_switch, toolRole). affordsTask(shower_switch, maintenanceTask).
}).
#pos(e3722@10, {}, {goesIn(shower_switch, playroom)}, {
  obj(shower_switch). hasRole(shower_switch, toolRole). affordsTask(shower_switch, maintenanceTask).
}).
#pos(e3723@10, {}, {goesIn(shrimp, cabinet)}, {
  obj(shrimp). hasRole(shrimp, consumableRole). affordsTask(shrimp, eatingDrinkingTask).
}).
#pos(e3724@10, {}, {goesIn(shrimp, home_office)}, {
  obj(shrimp). hasRole(shrimp, consumableRole). affordsTask(shrimp, eatingDrinkingTask).
}).
#pos(e3725@10, {}, {goesIn(side_chair, closet)}, {
  obj(side_chair). hasRole(side_chair, furnitureRole). affordsTask(side_chair, leisureTask).
}).
#pos(e3726@10, {}, {goesIn(side_chair, living_room)}, {
  obj(side_chair). hasRole(side_chair, furnitureRole). affordsTask(side_chair, leisureTask).
}).
#pos(e3727@10, {}, {goesIn(sideboard, hallway)}, {
  obj(sideboard). hasRole(sideboard, furnitureRole). affordsTask(sideboard, storageTask).
}).
#pos(e3728@10, {}, {goesIn(sideboard, trash)}, {
  obj(sideboard). hasRole(sideboard, furnitureRole). affordsTask(sideboard, storageTask).
}).
#pos(e3729@10, {}, {goesIn(silk, shelf)}, {
  obj(silk). hasRole(silk, clothingRole). affordsTask(silk, dressingTask).
}).
#pos(e3730@10, {}, {goesIn(silk, table)}, {
  obj(silk). hasRole(silk, clothingRole). affordsTask(silk, dressingTask).
}).
#pos(e3731@10, {}, {goesIn(silver, music_room)}, {
  obj(silver). hasRole(silver, toolRole).
}).
#pos(e3732@10, {}, {goesIn(silver, pantry)}, {
  obj(silver). hasRole(silver, toolRole).
}).
#pos(e3733@10, {}, {goesIn(silverware, bed)}, {
  obj(silverware). hasRole(silverware, utensilRole). affordsTask(silverware, eatingDrinkingTask).
}).
#pos(e3734@10, {}, {goesIn(silverware, hallway)}, {
  obj(silverware). hasRole(silverware, utensilRole). affordsTask(silverware, eatingDrinkingTask).
}).
#pos(e3735@10, {}, {goesIn(sink, garage)}, {
  obj(sink). hasRole(sink, utensilRole). affordsTask(sink, cleaningTask). affordsTask(sink, eatingDrinkingTask). affordsTask(sink, hygieneTask).
}).
#pos(e3736@10, {}, {goesIn(sink, living_room)}, {
  obj(sink). hasRole(sink, utensilRole). affordsTask(sink, cleaningTask). affordsTask(sink, eatingDrinkingTask). affordsTask(sink, hygieneTask).
}).
#pos(e3737@10, {}, {goesIn(skin_care_article, bedroom)}, {
  obj(skin_care_article). hasRole(skin_care_article, documentRole). affordsTask(skin_care_article, leisureTask).
}).
#pos(e3738@10, {}, {goesIn(skin_care_article, storage_room)}, {
  obj(skin_care_article). hasRole(skin_care_article, documentRole). affordsTask(skin_care_article, leisureTask).
}).
#pos(e3739@10, {}, {goesIn(skirt, bathroom)}, {
  obj(skirt). hasRole(skirt, clothingRole). affordsTask(skirt, dressingTask).
}).
#pos(e3740@10, {}, {goesIn(skirt, garage)}, {
  obj(skirt). hasRole(skirt, clothingRole). affordsTask(skirt, dressingTask).
}).
#pos(e3741@10, {}, {goesIn(skirts, drawer)}, {
  obj(skirts). hasRole(skirts, clothingRole). affordsTask(skirts, dressingTask).
}).
#pos(e3742@10, {}, {goesIn(skirts, garden)}, {
  obj(skirts). hasRole(skirts, clothingRole). affordsTask(skirts, dressingTask).
}).
#pos(e3743@10, {}, {goesIn(skylight, dining_room)}, {
  obj(skylight). hasRole(skylight, furnitureRole). affordsTask(skylight, leisureTask).
}).
#pos(e3744@10, {}, {goesIn(skylight, hallway)}, {
  obj(skylight). hasRole(skylight, furnitureRole). affordsTask(skylight, leisureTask).
}).
#pos(e3745@10, {}, {goesIn(slipper, hallway)}, {
  obj(slipper). hasRole(slipper, clothingRole). affordsTask(slipper, dressingTask).
}).
#pos(e3746@10, {}, {goesIn(slipper, home_office)}, {
  obj(slipper). hasRole(slipper, clothingRole). affordsTask(slipper, dressingTask).
}).
#pos(e3747@10, {}, {goesIn(slippers, bathroom)}, {
  obj(slippers). hasRole(slippers, clothingRole). affordsTask(slippers, dressingTask).
}).
#pos(e3748@10, {}, {goesIn(slippers, dining_room)}, {
  obj(slippers). hasRole(slippers, clothingRole). affordsTask(slippers, dressingTask).
}).
#pos(e3749@10, {}, {goesIn(smoothie, library)}, {
  obj(smoothie). hasRole(smoothie, consumableRole). affordsTask(smoothie, eatingDrinkingTask).
}).
#pos(e3750@10, {}, {goesIn(smoothie, music_room)}, {
  obj(smoothie). hasRole(smoothie, consumableRole). affordsTask(smoothie, eatingDrinkingTask).
}).
#pos(e3751@10, {}, {goesIn(soap, closet)}, {
  obj(soap). hasRole(soap, cleaningToolRole). affordsTask(soap, hygieneTask).
}).
#pos(e3752@10, {}, {goesIn(soap, dining_room)}, {
  obj(soap). hasRole(soap, cleaningToolRole). affordsTask(soap, hygieneTask).
}).
#pos(e3753@10, {}, {goesIn(soap_dish, kitchen)}, {
  obj(soap_dish). hasRole(soap_dish, storageContainerRole). affordsTask(soap_dish, hygieneTask).
}).
#pos(e3754@10, {}, {goesIn(soap_dish, pantry)}, {
  obj(soap_dish). hasRole(soap_dish, storageContainerRole). affordsTask(soap_dish, hygieneTask).
}).
#pos(e3755@10, {}, {goesIn(sock, garden)}, {
  obj(sock). hasRole(sock, clothingRole). affordsTask(sock, dressingTask).
}).
#pos(e3756@10, {}, {goesIn(sock, playroom)}, {
  obj(sock). hasRole(sock, clothingRole). affordsTask(sock, dressingTask).
}).
#pos(e3757@10, {}, {goesIn(socks, music_room)}, {
  obj(socks). hasRole(socks, clothingRole). affordsTask(socks, dressingTask).
}).
#pos(e3758@10, {}, {goesIn(socks, table)}, {
  obj(socks). hasRole(socks, clothingRole). affordsTask(socks, dressingTask).
}).
#pos(e3759@10, {}, {goesIn(soda, bedroom)}, {
  obj(soda). hasRole(soda, consumableRole). affordsTask(soda, eatingDrinkingTask).
}).
#pos(e3760@10, {}, {goesIn(soda, laundry_room)}, {
  obj(soda). hasRole(soda, consumableRole). affordsTask(soda, eatingDrinkingTask).
}).
#pos(e3761@10, {}, {goesIn(soda_pop, bed)}, {
  obj(soda_pop). hasRole(soda_pop, consumableRole). affordsTask(soda_pop, eatingDrinkingTask).
}).
#pos(e3762@10, {}, {goesIn(soda_pop, library)}, {
  obj(soda_pop). hasRole(soda_pop, consumableRole). affordsTask(soda_pop, eatingDrinkingTask).
}).
#pos(e3763@10, {}, {goesIn(sofa, bathroom)}, {
  obj(sofa). hasRole(sofa, furnitureRole). affordsTask(sofa, leisureTask). affordsTask(sofa, sleepingTask).
}).
#pos(e3764@10, {}, {goesIn(sofa, music_room)}, {
  obj(sofa). hasRole(sofa, furnitureRole). affordsTask(sofa, leisureTask). affordsTask(sofa, sleepingTask).
}).
#pos(e3765@10, {}, {goesIn(sofa_bed, bedroom)}, {
  obj(sofa_bed). hasRole(sofa_bed, furnitureRole). affordsTask(sofa_bed, sleepingTask).
}).
#pos(e3766@10, {}, {goesIn(sofa_bed, home_office)}, {
  obj(sofa_bed). hasRole(sofa_bed, furnitureRole). affordsTask(sofa_bed, sleepingTask).
}).
#pos(e3767@10, {}, {goesIn(sofa_hide_bed, laundry_room)}, {
  obj(sofa_hide_bed). hasRole(sofa_hide_bed, furnitureRole). affordsTask(sofa_hide_bed, sleepingTask).
}).
#pos(e3768@10, {}, {goesIn(sofa_hide_bed, shelf)}, {
  obj(sofa_hide_bed). hasRole(sofa_hide_bed, furnitureRole). affordsTask(sofa_hide_bed, sleepingTask).
}).
#pos(e3769@10, {}, {goesIn(sofabed, laundry_room)}, {
  obj(sofabed). hasRole(sofabed, furnitureRole). affordsTask(sofabed, sleepingTask).
}).
#pos(e3770@10, {}, {goesIn(sofabed, sink)}, {
  obj(sofabed). hasRole(sofabed, furnitureRole). affordsTask(sofabed, sleepingTask).
}).
#pos(e3771@10, {}, {goesIn(spaghetti_sauce, library)}, {
  obj(spaghetti_sauce). hasRole(spaghetti_sauce, consumableRole). affordsTask(spaghetti_sauce, foodPreparationTask).
}).
#pos(e3772@10, {}, {goesIn(spaghetti_sauce, table)}, {
  obj(spaghetti_sauce). hasRole(spaghetti_sauce, consumableRole). affordsTask(spaghetti_sauce, foodPreparationTask).
}).
#pos(e3773@10, {}, {goesIn(spare_tire, closet)}, {
  obj(spare_tire). hasRole(spare_tire, toolRole). affordsTask(spare_tire, maintenanceTask).
}).
#pos(e3774@10, {}, {goesIn(spare_tire, home_office)}, {
  obj(spare_tire). hasRole(spare_tire, toolRole). affordsTask(spare_tire, maintenanceTask).
}).
#pos(e3775@10, {}, {goesIn(spatula, bathroom)}, {
  obj(spatula). hasRole(spatula, utensilRole). affordsTask(spatula, foodPreparationTask).
}).
#pos(e3776@10, {}, {goesIn(spatula, library)}, {
  obj(spatula). hasRole(spatula, utensilRole). affordsTask(spatula, foodPreparationTask).
}).
#pos(e3777@10, {}, {goesIn(speaker, dining_room)}, {
  obj(speaker). hasRole(speaker, applianceRole). affordsTask(speaker, leisureTask).
}).
#pos(e3778@10, {}, {goesIn(speaker, hallway)}, {
  obj(speaker). hasRole(speaker, applianceRole). affordsTask(speaker, leisureTask).
}).
#pos(e3779@10, {}, {goesIn(spices, music_room)}, {
  obj(spices). hasRole(spices, consumableRole). affordsTask(spices, foodPreparationTask).
}).
#pos(e3780@10, {}, {goesIn(spices, trash)}, {
  obj(spices). hasRole(spices, consumableRole). affordsTask(spices, foodPreparationTask).
}).
#pos(e3781@10, {}, {goesIn(spiral_binding, cabinet)}, {
  obj(spiral_binding). hasRole(spiral_binding, toolRole). affordsTask(spiral_binding, maintenanceTask).
}).
#pos(e3782@10, {}, {goesIn(spiral_binding, laundry_room)}, {
  obj(spiral_binding). hasRole(spiral_binding, toolRole). affordsTask(spiral_binding, maintenanceTask).
}).
#pos(e3783@10, {}, {goesIn(spoon, closet)}, {
  obj(spoon). hasRole(spoon, utensilRole). affordsTask(spoon, eatingDrinkingTask). affordsTask(spoon, foodPreparationTask).
}).
#pos(e3784@10, {}, {goesIn(spoon, living_room)}, {
  obj(spoon). hasRole(spoon, utensilRole). affordsTask(spoon, eatingDrinkingTask). affordsTask(spoon, foodPreparationTask).
}).
#pos(e3785@10, {}, {goesIn(spray_hose, fridge)}, {
  obj(spray_hose). hasRole(spray_hose, toolRole). affordsTask(spray_hose, cleaningTask). affordsTask(spray_hose, gardeningTask).
}).
#pos(e3786@10, {}, {goesIn(spray_hose, living_room)}, {
  obj(spray_hose). hasRole(spray_hose, toolRole). affordsTask(spray_hose, cleaningTask). affordsTask(spray_hose, gardeningTask).
}).
#pos(e3787@10, {}, {goesIn(stacking_chairs, library)}, {
  obj(stacking_chairs). hasRole(stacking_chairs, furnitureRole). affordsTask(stacking_chairs, storageTask).
}).
#pos(e3788@10, {}, {goesIn(stacking_chairs, sink)}, {
  obj(stacking_chairs). hasRole(stacking_chairs, furnitureRole). affordsTask(stacking_chairs, storageTask).
}).
#pos(e3789@10, {}, {goesIn(staircase, cabinet)}, {
  obj(staircase). hasRole(staircase, furnitureRole). affordsTask(staircase, leisureTask). affordsTask(staircase, maintenanceTask).
}).
#pos(e3790@10, {}, {goesIn(staircase, pantry)}, {
  obj(staircase). hasRole(staircase, furnitureRole). affordsTask(staircase, leisureTask). affordsTask(staircase, maintenanceTask).
}).
#pos(e3791@10, {}, {goesIn(stairs, home_office)}, {
  obj(stairs). hasRole(stairs, furnitureRole).
}).
#pos(e3792@10, {}, {goesIn(stairs, library)}, {
  obj(stairs). hasRole(stairs, furnitureRole).
}).
#pos(e3793@10, {}, {goesIn(stairs_down, garden)}, {
  obj(stairs_down). hasRole(stairs_down, furnitureRole).
}).
#pos(e3794@10, {}, {goesIn(stairs_down, kitchen)}, {
  obj(stairs_down). hasRole(stairs_down, furnitureRole).
}).
#pos(e3795@10, {}, {goesIn(stairs_railing, drawer)}, {
  obj(stairs_railing). hasRole(stairs_railing, furnitureRole). affordsTask(stairs_railing, maintenanceTask).
}).
#pos(e3796@10, {}, {goesIn(stairs_railing, home_office)}, {
  obj(stairs_railing). hasRole(stairs_railing, furnitureRole). affordsTask(stairs_railing, maintenanceTask).
}).
#pos(e3797@10, {}, {goesIn(stairway, cabinet)}, {
  obj(stairway). hasRole(stairway, furnitureRole).
}).
#pos(e3798@10, {}, {goesIn(stairway, pantry)}, {
  obj(stairway). hasRole(stairway, furnitureRole).
}).
#pos(e3799@10, {}, {goesIn(stairwell, closet)}, {
  obj(stairwell). hasRole(stairwell, furnitureRole). affordsTask(stairwell, leisureTask). affordsTask(stairwell, maintenanceTask).
}).
#pos(e3800@10, {}, {goesIn(stairwell, table)}, {
  obj(stairwell). hasRole(stairwell, furnitureRole). affordsTask(stairwell, leisureTask). affordsTask(stairwell, maintenanceTask).
}).
#pos(e3801@10, {}, {goesIn(stamp_pad, drawer)}, {
  obj(stamp_pad). hasRole(stamp_pad, toolRole). affordsTask(stamp_pad, foodPreparationTask).
}).
#pos(e3802@10, {}, {goesIn(stamp_pad, music_room)}, {
  obj(stamp_pad). hasRole(stamp_pad, toolRole). affordsTask(stamp_pad, foodPreparationTask).
}).
#pos(e3803@10, {}, {goesIn(stamps, kitchen)}, {
  obj(stamps). hasRole(stamps, consumableRole). affordsTask(stamps, eatingDrinkingTask).
}).
#pos(e3804@10, {}, {goesIn(stamps, storage_room)}, {
  obj(stamps). hasRole(stamps, consumableRole). affordsTask(stamps, eatingDrinkingTask).
}).
#pos(e3805@10, {}, {goesIn(staple_remover, closet)}, {
  obj(staple_remover). hasRole(staple_remover, toolRole). affordsTask(staple_remover, maintenanceTask).
}).
#pos(e3806@10, {}, {goesIn(staple_remover, fridge)}, {
  obj(staple_remover). hasRole(staple_remover, toolRole). affordsTask(staple_remover, maintenanceTask).
}).
#pos(e3807@10, {}, {goesIn(stapler, cabinet)}, {
  obj(stapler). hasRole(stapler, toolRole). affordsTask(stapler, maintenanceTask).
}).
#pos(e3808@10, {}, {goesIn(stapler, closet)}, {
  obj(stapler). hasRole(stapler, toolRole). affordsTask(stapler, maintenanceTask).
}).
#pos(e3809@10, {}, {goesIn(staples, fridge)}, {
  obj(staples). hasRole(staples, toolRole). affordsTask(staples, foodPreparationTask).
}).
#pos(e3810@10, {}, {goesIn(staples, hallway)}, {
  obj(staples). hasRole(staples, toolRole). affordsTask(staples, foodPreparationTask).
}).
#pos(e3811@10, {}, {goesIn(statue, dining_room)}, {
  obj(statue). hasRole(statue, decorationRole).
}).
#pos(e3812@10, {}, {goesIn(statue, sink)}, {
  obj(statue). hasRole(statue, decorationRole).
}).
#pos(e3813@10, {}, {goesIn(steak, closet)}, {
  obj(steak). hasRole(steak, consumableRole). hasRole(steak, utensilRole). affordsTask(steak, eatingDrinkingTask). affordsTask(steak, foodPreparationTask).
}).
#pos(e3814@10, {}, {goesIn(steak, table)}, {
  obj(steak). hasRole(steak, consumableRole). hasRole(steak, utensilRole). affordsTask(steak, eatingDrinkingTask). affordsTask(steak, foodPreparationTask).
}).
#pos(e3815@10, {}, {goesIn(steaks, bedroom)}, {
  obj(steaks). hasRole(steaks, consumableRole). affordsTask(steaks, eatingDrinkingTask). affordsTask(steaks, foodPreparationTask).
}).
#pos(e3816@10, {}, {goesIn(steaks, dining_room)}, {
  obj(steaks). hasRole(steaks, consumableRole). affordsTask(steaks, eatingDrinkingTask). affordsTask(steaks, foodPreparationTask).
}).
#pos(e3817@10, {}, {goesIn(steel, music_room)}, {
  obj(steel). hasRole(steel, toolRole). affordsTask(steel, maintenanceTask).
}).
#pos(e3818@10, {}, {goesIn(steel, storage_room)}, {
  obj(steel). hasRole(steel, toolRole). affordsTask(steel, maintenanceTask).
}).
#pos(e3819@10, {}, {goesIn(steel_pen, library)}, {
  obj(steel_pen). hasRole(steel_pen, toolRole).
}).
#pos(e3820@10, {}, {goesIn(steel_pen, playroom)}, {
  obj(steel_pen). hasRole(steel_pen, toolRole).
}).
#pos(e3821@10, {}, {goesIn(step_chair, music_room)}, {
  obj(step_chair). hasRole(step_chair, furnitureRole). affordsTask(step_chair, eatingDrinkingTask). affordsTask(step_chair, storageTask).
}).
#pos(e3822@10, {}, {goesIn(step_chair, sink)}, {
  obj(step_chair). hasRole(step_chair, furnitureRole). affordsTask(step_chair, eatingDrinkingTask). affordsTask(step_chair, storageTask).
}).
#pos(e3823@10, {}, {goesIn(stick_of_butter, home_office)}, {
  obj(stick_of_butter). hasRole(stick_of_butter, consumableRole). affordsTask(stick_of_butter, foodPreparationTask).
}).
#pos(e3824@10, {}, {goesIn(stick_of_butter, storage_room)}, {
  obj(stick_of_butter). hasRole(stick_of_butter, consumableRole). affordsTask(stick_of_butter, foodPreparationTask).
}).
#pos(e3825@10, {}, {goesIn(sticking_plaster, dining_room)}, {
  obj(sticking_plaster). hasRole(sticking_plaster, safetyEquipmentRole). affordsTask(sticking_plaster, hygieneTask).
}).
#pos(e3826@10, {}, {goesIn(sticking_plaster, music_room)}, {
  obj(sticking_plaster). hasRole(sticking_plaster, safetyEquipmentRole). affordsTask(sticking_plaster, hygieneTask).
}).
#pos(e3827@10, {}, {goesIn(storage, bedroom)}, {
  obj(storage). hasRole(storage, storageContainerRole). affordsTask(storage, storageTask).
}).
#pos(e3828@10, {}, {goesIn(storage, living_room)}, {
  obj(storage). hasRole(storage, storageContainerRole). affordsTask(storage, storageTask).
}).
#pos(e3829@10, {}, {goesIn(storage_furniture, living_room)}, {
  obj(storage_furniture). hasRole(storage_furniture, furnitureRole). affordsTask(storage_furniture, storageTask).
}).
#pos(e3830@10, {}, {goesIn(storage_furniture, table)}, {
  obj(storage_furniture). hasRole(storage_furniture, furnitureRole). affordsTask(storage_furniture, storageTask).
}).
#pos(e3831@10, {}, {goesIn(storage_pan, hallway)}, {
  obj(storage_pan). hasRole(storage_pan, cookwareRole). affordsTask(storage_pan, foodPreparationTask).
}).
#pos(e3832@10, {}, {goesIn(storage_pan, home_office)}, {
  obj(storage_pan). hasRole(storage_pan, cookwareRole). affordsTask(storage_pan, foodPreparationTask).
}).
#pos(e3833@10, {}, {goesIn(store_shelf, bed)}, {
  obj(store_shelf). hasRole(store_shelf, storageContainerRole). affordsTask(store_shelf, storageTask).
}).
#pos(e3834@10, {}, {goesIn(store_shelf, shelf)}, {
  obj(store_shelf). hasRole(store_shelf, storageContainerRole). affordsTask(store_shelf, storageTask).
}).
#pos(e3835@10, {}, {goesIn(stove, kitchen)}, {
  obj(stove). hasRole(stove, cookwareRole). affordsTask(stove, foodPreparationTask).
}).
#pos(e3836@10, {}, {goesIn(stove, playroom)}, {
  obj(stove). hasRole(stove, cookwareRole). affordsTask(stove, foodPreparationTask).
}).
#pos(e3837@10, {}, {goesIn(strawberries, bedroom)}, {
  obj(strawberries). hasRole(strawberries, consumableRole). affordsTask(strawberries, eatingDrinkingTask).
}).
#pos(e3838@10, {}, {goesIn(strawberries, hallway)}, {
  obj(strawberries). hasRole(strawberries, consumableRole). affordsTask(strawberries, eatingDrinkingTask).
}).
#pos(e3839@10, {}, {goesIn(string, bed)}, {
  obj(string). hasRole(string, toolRole). affordsTask(string, foodPreparationTask). affordsTask(string, leisureTask).
}).
#pos(e3840@10, {}, {goesIn(string, library)}, {
  obj(string). hasRole(string, toolRole). affordsTask(string, foodPreparationTask). affordsTask(string, leisureTask).
}).
#pos(e3841@10, {}, {goesIn(strings, bed)}, {
  obj(strings). hasRole(strings, toolRole). affordsTask(strings, leisureTask).
}).
#pos(e3842@10, {}, {goesIn(strings, home_office)}, {
  obj(strings). hasRole(strings, toolRole). affordsTask(strings, leisureTask).
}).
#pos(e3843@10, {}, {goesIn(studio_pedestal, bedroom)}, {
  obj(studio_pedestal). hasRole(studio_pedestal, furnitureRole). affordsTask(studio_pedestal, storageTask).
}).
#pos(e3844@10, {}, {goesIn(studio_pedestal, garden)}, {
  obj(studio_pedestal). hasRole(studio_pedestal, furnitureRole). affordsTask(studio_pedestal, storageTask).
}).
#pos(e3845@10, {}, {goesIn(study, bedroom)}, {
  obj(study). hasRole(study, furnitureRole). affordsTask(study, workStudyTask).
}).
#pos(e3846@10, {}, {goesIn(study, storage_room)}, {
  obj(study). hasRole(study, furnitureRole). affordsTask(study, workStudyTask).
}).
#pos(e3847@10, {}, {goesIn(stuffed_animal, pantry)}, {
  obj(stuffed_animal). hasRole(stuffed_animal, entertainmentRole). affordsTask(stuffed_animal, leisureTask).
}).
#pos(e3848@10, {}, {goesIn(stuffed_animal, sink)}, {
  obj(stuffed_animal). hasRole(stuffed_animal, entertainmentRole). affordsTask(stuffed_animal, leisureTask).
}).
#pos(e3849@10, {}, {goesIn(stylus, laundry_room)}, {
  obj(stylus). hasRole(stylus, toolRole).
}).
#pos(e3850@10, {}, {goesIn(stylus, living_room)}, {
  obj(stylus). hasRole(stylus, toolRole).
}).
#pos(e3851@10, {}, {goesIn(sugar, table)}, {
  obj(sugar). hasRole(sugar, consumableRole). affordsTask(sugar, foodPreparationTask).
}).
#pos(e3852@10, {}, {goesIn(sugar, trash)}, {
  obj(sugar). hasRole(sugar, consumableRole). affordsTask(sugar, foodPreparationTask).
}).
#pos(e3853@10, {}, {goesIn(suit, bed)}, {
  obj(suit). hasRole(suit, clothingRole). affordsTask(suit, dressingTask).
}).
#pos(e3854@10, {}, {goesIn(suit, music_room)}, {
  obj(suit). hasRole(suit, clothingRole). affordsTask(suit, dressingTask).
}).
#pos(e3855@10, {}, {goesIn(suntan_lotion, playroom)}, {
  obj(suntan_lotion). hasRole(suntan_lotion, cleaningToolRole). affordsTask(suntan_lotion, hygieneTask).
}).
#pos(e3856@10, {}, {goesIn(suntan_lotion, sink)}, {
  obj(suntan_lotion). hasRole(suntan_lotion, cleaningToolRole). affordsTask(suntan_lotion, hygieneTask).
}).
#pos(e3857@10, {}, {goesIn(sushi, drawer)}, {
  obj(sushi). hasRole(sushi, consumableRole). affordsTask(sushi, eatingDrinkingTask).
}).
#pos(e3858@10, {}, {goesIn(sushi, hallway)}, {
  obj(sushi). hasRole(sushi, consumableRole). affordsTask(sushi, eatingDrinkingTask).
}).
#pos(e3859@10, {}, {goesIn(sweat, music_room)}, {
  obj(sweat). affordsTask(sweat, hygieneTask).
}).
#pos(e3860@10, {}, {goesIn(sweat, sink)}, {
  obj(sweat). affordsTask(sweat, hygieneTask).
}).
#pos(e3861@10, {}, {goesIn(sweater, closet)}, {
  obj(sweater). hasRole(sweater, clothingRole). affordsTask(sweater, dressingTask).
}).
#pos(e3862@10, {}, {goesIn(sweater, pantry)}, {
  obj(sweater). hasRole(sweater, clothingRole). affordsTask(sweater, dressingTask).
}).
#pos(e3863@10, {}, {goesIn(swiss_cheese, bed)}, {
  obj(swiss_cheese). hasRole(swiss_cheese, consumableRole). affordsTask(swiss_cheese, eatingDrinkingTask).
}).
#pos(e3864@10, {}, {goesIn(swiss_cheese, library)}, {
  obj(swiss_cheese). hasRole(swiss_cheese, consumableRole). affordsTask(swiss_cheese, eatingDrinkingTask).
}).
#pos(e3865@10, {}, {goesIn(switches, closet)}, {
  obj(switches). hasRole(switches, toolRole). affordsTask(switches, workStudyTask).
}).
#pos(e3866@10, {}, {goesIn(switches, home_office)}, {
  obj(switches). hasRole(switches, toolRole). affordsTask(switches, workStudyTask).
}).
#pos(e3867@10, {}, {goesIn(t_shirt, cabinet)}, {
  obj(t_shirt). hasRole(t_shirt, clothingRole). affordsTask(t_shirt, dressingTask).
}).
#pos(e3868@10, {}, {goesIn(t_shirt, playroom)}, {
  obj(t_shirt). hasRole(t_shirt, clothingRole). affordsTask(t_shirt, dressingTask).
}).
#pos(e3869@10, {}, {goesIn(tabby_cat, dining_room)}, {
  obj(tabby_cat). affordsTask(tabby_cat, leisureTask).
}).
#pos(e3870@10, {}, {goesIn(tabby_cat, sink)}, {
  obj(tabby_cat). affordsTask(tabby_cat, leisureTask).
}).
#pos(e3871@10, {}, {goesIn(table, bed)}, {
  obj(table). hasRole(table, furnitureRole). affordsTask(table, eatingDrinkingTask). affordsTask(table, foodPreparationTask). affordsTask(table, leisureTask). affordsTask(table, workStudyTask).
}).
#pos(e3872@10, {}, {goesIn(table, hallway)}, {
  obj(table). hasRole(table, furnitureRole). affordsTask(table, eatingDrinkingTask). affordsTask(table, foodPreparationTask). affordsTask(table, leisureTask). affordsTask(table, workStudyTask).
}).
#pos(e3873@10, {}, {goesIn(table_cloth, living_room)}, {
  obj(table_cloth). hasRole(table_cloth, beddingRole). affordsTask(table_cloth, leisureTask).
}).
#pos(e3874@10, {}, {goesIn(table_cloth, pantry)}, {
  obj(table_cloth). hasRole(table_cloth, beddingRole). affordsTask(table_cloth, leisureTask).
}).
#pos(e3875@10, {}, {goesIn(tablecloth, playroom)}, {
  obj(tablecloth). hasRole(tablecloth, decorationRole). affordsTask(tablecloth, leisureTask).
}).
#pos(e3876@10, {}, {goesIn(tablecloth, storage_room)}, {
  obj(tablecloth). hasRole(tablecloth, decorationRole). affordsTask(tablecloth, leisureTask).
}).
#pos(e3877@10, {}, {goesIn(tables, drawer)}, {
  obj(tables). hasRole(tables, furnitureRole). affordsTask(tables, storageTask).
}).
#pos(e3878@10, {}, {goesIn(tables, kitchen)}, {
  obj(tables). hasRole(tables, furnitureRole). affordsTask(tables, storageTask).
}).
#pos(e3879@10, {}, {goesIn(tablespoon, hallway)}, {
  obj(tablespoon). hasRole(tablespoon, utensilRole). affordsTask(tablespoon, eatingDrinkingTask). affordsTask(tablespoon, foodPreparationTask).
}).
#pos(e3880@10, {}, {goesIn(tablespoon, laundry_room)}, {
  obj(tablespoon). hasRole(tablespoon, utensilRole). affordsTask(tablespoon, eatingDrinkingTask). affordsTask(tablespoon, foodPreparationTask).
}).
#pos(e3881@10, {}, {goesIn(tack, living_room)}, {
  obj(tack). hasRole(tack, utensilRole). affordsTask(tack, foodPreparationTask).
}).
#pos(e3882@10, {}, {goesIn(tack, music_room)}, {
  obj(tack). hasRole(tack, utensilRole). affordsTask(tack, foodPreparationTask).
}).
#pos(e3883@10, {}, {goesIn(tanning_lotion, kitchen)}, {
  obj(tanning_lotion). hasRole(tanning_lotion, consumableRole). affordsTask(tanning_lotion, hygieneTask).
}).
#pos(e3884@10, {}, {goesIn(tanning_lotion, table)}, {
  obj(tanning_lotion). hasRole(tanning_lotion, consumableRole). affordsTask(tanning_lotion, hygieneTask).
}).
#pos(e3885@10, {}, {goesIn(tap, bedroom)}, {
  obj(tap). hasRole(tap, toolRole). affordsTask(tap, hygieneTask). affordsTask(tap, leisureTask).
}).
#pos(e3886@10, {}, {goesIn(tap, home_office)}, {
  obj(tap). hasRole(tap, toolRole). affordsTask(tap, hygieneTask). affordsTask(tap, leisureTask).
}).
#pos(e3887@10, {}, {goesIn(tape, bedroom)}, {
  obj(tape). hasRole(tape, toolRole). affordsTask(tape, maintenanceTask).
}).
#pos(e3888@10, {}, {goesIn(tape, home_office)}, {
  obj(tape). hasRole(tape, toolRole). affordsTask(tape, maintenanceTask).
}).
#pos(e3889@10, {}, {goesIn(tape_dispenser, cabinet)}, {
  obj(tape_dispenser). hasRole(tape_dispenser, toolRole). affordsTask(tape_dispenser, maintenanceTask).
}).
#pos(e3890@10, {}, {goesIn(tape_dispenser, playroom)}, {
  obj(tape_dispenser). hasRole(tape_dispenser, toolRole). affordsTask(tape_dispenser, maintenanceTask).
}).
#pos(e3891@10, {}, {goesIn(tape_measure, kitchen)}, {
  obj(tape_measure). hasRole(tape_measure, toolRole). affordsTask(tape_measure, maintenanceTask).
}).
#pos(e3892@10, {}, {goesIn(tape_measure, table)}, {
  obj(tape_measure). hasRole(tape_measure, toolRole). affordsTask(tape_measure, maintenanceTask).
}).
#pos(e3893@10, {}, {goesIn(tapestry, garden)}, {
  obj(tapestry). hasRole(tapestry, decorationRole). affordsTask(tapestry, leisureTask).
}).
#pos(e3894@10, {}, {goesIn(tapestry, hallway)}, {
  obj(tapestry). hasRole(tapestry, decorationRole). affordsTask(tapestry, leisureTask).
}).
#pos(e3895@10, {}, {goesIn(tar, sink)}, {
  obj(tar). hasRole(tar, consumableRole). affordsTask(tar, wasteDisposalTask).
}).
#pos(e3896@10, {}, {goesIn(tar, table)}, {
  obj(tar). hasRole(tar, consumableRole). affordsTask(tar, wasteDisposalTask).
}).
#pos(e3897@10, {}, {goesIn(tea, drawer)}, {
  obj(tea). hasRole(tea, consumableRole). affordsTask(tea, eatingDrinkingTask).
}).
#pos(e3898@10, {}, {goesIn(tea, library)}, {
  obj(tea). hasRole(tea, consumableRole). affordsTask(tea, eatingDrinkingTask).
}).
#pos(e3899@10, {}, {goesIn(teakettle, dining_room)}, {
  obj(teakettle). hasRole(teakettle, cookwareRole). affordsTask(teakettle, foodPreparationTask).
}).
#pos(e3900@10, {}, {goesIn(teakettle, storage_room)}, {
  obj(teakettle). hasRole(teakettle, cookwareRole). affordsTask(teakettle, foodPreparationTask).
}).
#pos(e3901@10, {}, {goesIn(teaspoon, closet)}, {
  obj(teaspoon). hasRole(teaspoon, utensilRole). affordsTask(teaspoon, foodPreparationTask).
}).
#pos(e3902@10, {}, {goesIn(teaspoon, table)}, {
  obj(teaspoon). hasRole(teaspoon, utensilRole). affordsTask(teaspoon, foodPreparationTask).
}).
#pos(e3903@10, {}, {goesIn(teddy_bear, hallway)}, {
  obj(teddy_bear). hasRole(teddy_bear, entertainmentRole). affordsTask(teddy_bear, leisureTask).
}).
#pos(e3904@10, {}, {goesIn(teddy_bear, kitchen)}, {
  obj(teddy_bear). hasRole(teddy_bear, entertainmentRole). affordsTask(teddy_bear, leisureTask).
}).
#pos(e3905@10, {}, {goesIn(telephone, sink)}, {
  obj(telephone). hasRole(telephone, toolRole).
}).
#pos(e3906@10, {}, {goesIn(telephone, trash)}, {
  obj(telephone). hasRole(telephone, toolRole).
}).
#pos(e3907@10, {}, {goesIn(telephone_book, fridge)}, {
  obj(telephone_book). hasRole(telephone_book, documentRole). affordsTask(telephone_book, workStudyTask).
}).
#pos(e3908@10, {}, {goesIn(telephone_book, music_room)}, {
  obj(telephone_book). hasRole(telephone_book, documentRole). affordsTask(telephone_book, workStudyTask).
}).
#pos(e3909@10, {}, {goesIn(telephone_directory, cabinet)}, {
  obj(telephone_directory). hasRole(telephone_directory, documentRole). affordsTask(telephone_directory, workStudyTask).
}).
#pos(e3910@10, {}, {goesIn(telephone_directory, trash)}, {
  obj(telephone_directory). hasRole(telephone_directory, documentRole). affordsTask(telephone_directory, workStudyTask).
}).
#pos(e3911@10, {}, {goesIn(telephone_index, home_office)}, {
  obj(telephone_index). hasRole(telephone_index, toolRole). affordsTask(telephone_index, workStudyTask).
}).
#pos(e3912@10, {}, {goesIn(telephone_index, sink)}, {
  obj(telephone_index). hasRole(telephone_index, toolRole). affordsTask(telephone_index, workStudyTask).
}).
#pos(e3913@10, {}, {goesIn(television, laundry_room)}, {
  obj(television). hasRole(television, applianceRole). affordsTask(television, leisureTask).
}).
#pos(e3914@10, {}, {goesIn(television, table)}, {
  obj(television). hasRole(television, applianceRole). affordsTask(television, leisureTask).
}).
#pos(e3915@10, {}, {goesIn(terrace, dining_room)}, {
  obj(terrace). hasRole(terrace, furnitureRole). affordsTask(terrace, leisureTask). affordsTask(terrace, storageTask).
}).
#pos(e3916@10, {}, {goesIn(terrace, kitchen)}, {
  obj(terrace). hasRole(terrace, furnitureRole). affordsTask(terrace, leisureTask). affordsTask(terrace, storageTask).
}).
#pos(e3917@10, {}, {goesIn(terrace_railing, table)}, {
  obj(terrace_railing). hasRole(terrace_railing, furnitureRole). affordsTask(terrace_railing, leisureTask).
}).
#pos(e3918@10, {}, {goesIn(terrace_railing, trash)}, {
  obj(terrace_railing). hasRole(terrace_railing, furnitureRole). affordsTask(terrace_railing, leisureTask).
}).
#pos(e3919@10, {}, {goesIn(textile, pantry)}, {
  obj(textile). hasRole(textile, clothingRole). affordsTask(textile, dressingTask).
}).
#pos(e3920@10, {}, {goesIn(textile, table)}, {
  obj(textile). hasRole(textile, clothingRole). affordsTask(textile, dressingTask).
}).
#pos(e3921@10, {}, {goesIn(thermostat, bedroom)}, {
  obj(thermostat). hasRole(thermostat, applianceRole). affordsTask(thermostat, maintenanceTask).
}).
#pos(e3922@10, {}, {goesIn(thermostat, storage_room)}, {
  obj(thermostat). hasRole(thermostat, applianceRole). affordsTask(thermostat, maintenanceTask).
}).
#pos(e3923@10, {}, {goesIn(thumb_tack, library)}, {
  obj(thumb_tack). hasRole(thumb_tack, toolRole). affordsTask(thumb_tack, maintenanceTask).
}).
#pos(e3924@10, {}, {goesIn(thumb_tack, table)}, {
  obj(thumb_tack). hasRole(thumb_tack, toolRole). affordsTask(thumb_tack, maintenanceTask).
}).
#pos(e3925@10, {}, {goesIn(thumbtacks, home_office)}, {
  obj(thumbtacks). hasRole(thumbtacks, toolRole). affordsTask(thumbtacks, maintenanceTask).
}).
#pos(e3926@10, {}, {goesIn(thumbtacks, music_room)}, {
  obj(thumbtacks). hasRole(thumbtacks, toolRole). affordsTask(thumbtacks, maintenanceTask).
}).
#pos(e3927@10, {}, {goesIn(ties, bathroom)}, {
  obj(ties). hasRole(ties, clothingRole). affordsTask(ties, dressingTask).
}).
#pos(e3928@10, {}, {goesIn(ties, laundry_room)}, {
  obj(ties). hasRole(ties, clothingRole). affordsTask(ties, dressingTask).
}).
#pos(e3929@10, {}, {goesIn(tile, drawer)}, {
  obj(tile). hasRole(tile, furnitureRole). affordsTask(tile, maintenanceTask).
}).
#pos(e3930@10, {}, {goesIn(tile, home_office)}, {
  obj(tile). hasRole(tile, furnitureRole). affordsTask(tile, maintenanceTask).
}).
#pos(e3931@10, {}, {goesIn(tiles, fridge)}, {
  obj(tiles). hasRole(tiles, furnitureRole). affordsTask(tiles, maintenanceTask).
}).
#pos(e3932@10, {}, {goesIn(tiles, kitchen)}, {
  obj(tiles). hasRole(tiles, furnitureRole). affordsTask(tiles, maintenanceTask).
}).
#pos(e3933@10, {}, {goesIn(tin, garage)}, {
  obj(tin). hasRole(tin, storageContainerRole). affordsTask(tin, storageTask).
}).
#pos(e3934@10, {}, {goesIn(tin, pantry)}, {
  obj(tin). hasRole(tin, storageContainerRole). affordsTask(tin, storageTask).
}).
#pos(e3935@10, {}, {goesIn(tin_cans, closet)}, {
  obj(tin_cans). hasRole(tin_cans, storageContainerRole). affordsTask(tin_cans, storageTask).
}).
#pos(e3936@10, {}, {goesIn(tin_cans, fridge)}, {
  obj(tin_cans). hasRole(tin_cans, storageContainerRole). affordsTask(tin_cans, storageTask).
}).
#pos(e3937@10, {}, {goesIn(tire_iron, cabinet)}, {
  obj(tire_iron). hasRole(tire_iron, toolRole). affordsTask(tire_iron, maintenanceTask).
}).
#pos(e3938@10, {}, {goesIn(tire_iron, dining_room)}, {
  obj(tire_iron). hasRole(tire_iron, toolRole). affordsTask(tire_iron, maintenanceTask).
}).
#pos(e3939@10, {}, {goesIn(tissue_holder, closet)}, {
  obj(tissue_holder). hasRole(tissue_holder, storageContainerRole). affordsTask(tissue_holder, storageTask).
}).
#pos(e3940@10, {}, {goesIn(tissue_holder, hallway)}, {
  obj(tissue_holder). hasRole(tissue_holder, storageContainerRole). affordsTask(tissue_holder, storageTask).
}).
#pos(e3941@10, {}, {goesIn(tofu, pantry)}, {
  obj(tofu). hasRole(tofu, consumableRole). affordsTask(tofu, eatingDrinkingTask).
}).
#pos(e3942@10, {}, {goesIn(tofu, playroom)}, {
  obj(tofu). hasRole(tofu, consumableRole). affordsTask(tofu, eatingDrinkingTask).
}).
#pos(e3943@10, {}, {goesIn(toilet, cabinet)}, {
  obj(toilet). hasRole(toilet, furnitureRole). affordsTask(toilet, wasteDisposalTask).
}).
#pos(e3944@10, {}, {goesIn(toilet, shelf)}, {
  obj(toilet). hasRole(toilet, furnitureRole). affordsTask(toilet, wasteDisposalTask).
}).
#pos(e3945@10, {}, {goesIn(toilet_brush, home_office)}, {
  obj(toilet_brush). hasRole(toilet_brush, cleaningToolRole). affordsTask(toilet_brush, cleaningTask).
}).
#pos(e3946@10, {}, {goesIn(toilet_brush, trash)}, {
  obj(toilet_brush). hasRole(toilet_brush, cleaningToolRole). affordsTask(toilet_brush, cleaningTask).
}).
#pos(e3947@10, {}, {goesIn(toilet_paper, dining_room)}, {
  obj(toilet_paper). hasRole(toilet_paper, consumableRole). affordsTask(toilet_paper, hygieneTask).
}).
#pos(e3948@10, {}, {goesIn(toilet_paper, storage_room)}, {
  obj(toilet_paper). hasRole(toilet_paper, consumableRole). affordsTask(toilet_paper, hygieneTask).
}).
#pos(e3949@10, {}, {goesIn(toilet_seat, laundry_room)}, {
  obj(toilet_seat). hasRole(toilet_seat, furnitureRole). affordsTask(toilet_seat, wasteDisposalTask).
}).
#pos(e3950@10, {}, {goesIn(toilet_seat, sink)}, {
  obj(toilet_seat). hasRole(toilet_seat, furnitureRole). affordsTask(toilet_seat, wasteDisposalTask).
}).
#pos(e3951@10, {}, {goesIn(toilet_tank, dining_room)}, {
  obj(toilet_tank). hasRole(toilet_tank, storageContainerRole). affordsTask(toilet_tank, wasteDisposalTask).
}).
#pos(e3952@10, {}, {goesIn(toilet_tank, drawer)}, {
  obj(toilet_tank). hasRole(toilet_tank, storageContainerRole). affordsTask(toilet_tank, wasteDisposalTask).
}).
#pos(e3953@10, {}, {goesIn(toilets, drawer)}, {
  obj(toilets). hasRole(toilets, furnitureRole). affordsTask(toilets, wasteDisposalTask).
}).
#pos(e3954@10, {}, {goesIn(toilets, storage_room)}, {
  obj(toilets). hasRole(toilets, furnitureRole). affordsTask(toilets, wasteDisposalTask).
}).
#pos(e3955@10, {}, {goesIn(tomato, dining_room)}, {
  obj(tomato). hasRole(tomato, consumableRole). affordsTask(tomato, eatingDrinkingTask).
}).
#pos(e3956@10, {}, {goesIn(tomato, living_room)}, {
  obj(tomato). hasRole(tomato, consumableRole). affordsTask(tomato, eatingDrinkingTask).
}).
#pos(e3957@10, {}, {goesIn(tomato_plants, bed)}, {
  obj(tomato_plants). hasRole(tomato_plants, consumableRole). affordsTask(tomato_plants, foodPreparationTask). affordsTask(tomato_plants, gardeningTask).
}).
#pos(e3958@10, {}, {goesIn(tomato_plants, library)}, {
  obj(tomato_plants). hasRole(tomato_plants, consumableRole). affordsTask(tomato_plants, foodPreparationTask). affordsTask(tomato_plants, gardeningTask).
}).
#pos(e3959@10, {}, {goesIn(tomatoes, kitchen)}, {
  obj(tomatoes). hasRole(tomatoes, consumableRole). affordsTask(tomatoes, eatingDrinkingTask).
}).
#pos(e3960@10, {}, {goesIn(tomatoes, table)}, {
  obj(tomatoes). hasRole(tomatoes, consumableRole). affordsTask(tomatoes, eatingDrinkingTask).
}).
#pos(e3961@10, {}, {goesIn(tool, garden)}, {
  obj(tool). hasRole(tool, toolRole). affordsTask(tool, maintenanceTask).
}).
#pos(e3962@10, {}, {goesIn(tool, music_room)}, {
  obj(tool). hasRole(tool, toolRole). affordsTask(tool, maintenanceTask).
}).
#pos(e3963@10, {}, {goesIn(toolbox, hallway)}, {
  obj(toolbox). hasRole(toolbox, toolRole). affordsTask(toolbox, maintenanceTask).
}).
#pos(e3964@10, {}, {goesIn(toolbox, sink)}, {
  obj(toolbox). hasRole(toolbox, toolRole). affordsTask(toolbox, maintenanceTask).
}).
#pos(e3965@10, {}, {goesIn(tools, garden)}, {
  obj(tools). hasRole(tools, toolRole). affordsTask(tools, maintenanceTask).
}).
#pos(e3966@10, {}, {goesIn(tools, music_room)}, {
  obj(tools). hasRole(tools, toolRole). affordsTask(tools, maintenanceTask).
}).
#pos(e3967@10, {}, {goesIn(toothbrush, garage)}, {
  obj(toothbrush). affordsTask(toothbrush, hygieneTask).
}).
#pos(e3968@10, {}, {goesIn(toothbrush, playroom)}, {
  obj(toothbrush). affordsTask(toothbrush, hygieneTask).
}).
#pos(e3969@10, {}, {goesIn(toothbrush_bristle, home_office)}, {
  obj(toothbrush_bristle). affordsTask(toothbrush_bristle, hygieneTask).
}).
#pos(e3970@10, {}, {goesIn(toothbrush_bristle, playroom)}, {
  obj(toothbrush_bristle). affordsTask(toothbrush_bristle, hygieneTask).
}).
#pos(e3971@10, {}, {goesIn(toothbrush_head, drawer)}, {
  obj(toothbrush_head). affordsTask(toothbrush_head, hygieneTask).
}).
#pos(e3972@10, {}, {goesIn(toothbrush_head, home_office)}, {
  obj(toothbrush_head). affordsTask(toothbrush_head, hygieneTask).
}).
#pos(e3973@10, {}, {goesIn(toothpaste, music_room)}, {
  obj(toothpaste). hasRole(toothpaste, cleaningToolRole). affordsTask(toothpaste, hygieneTask).
}).
#pos(e3974@10, {}, {goesIn(toothpaste, storage_room)}, {
  obj(toothpaste). hasRole(toothpaste, cleaningToolRole). affordsTask(toothpaste, hygieneTask).
}).
#pos(e3975@10, {}, {goesIn(toothpick, home_office)}, {
  obj(toothpick). hasRole(toothpick, utensilRole). affordsTask(toothpick, eatingDrinkingTask). affordsTask(toothpick, foodPreparationTask).
}).
#pos(e3976@10, {}, {goesIn(toothpick, music_room)}, {
  obj(toothpick). hasRole(toothpick, utensilRole). affordsTask(toothpick, eatingDrinkingTask). affordsTask(toothpick, foodPreparationTask).
}).
#pos(e3977@10, {}, {goesIn(torch, laundry_room)}, {
  obj(torch). hasRole(torch, lightingRole). affordsTask(torch, leisureTask).
}).
#pos(e3978@10, {}, {goesIn(torch, pantry)}, {
  obj(torch). hasRole(torch, lightingRole). affordsTask(torch, leisureTask).
}).
#pos(e3979@10, {}, {goesIn(tote_bag, living_room)}, {
  obj(tote_bag). hasRole(tote_bag, storageContainerRole). affordsTask(tote_bag, storageTask).
}).
#pos(e3980@10, {}, {goesIn(tote_bag, playroom)}, {
  obj(tote_bag). hasRole(tote_bag, storageContainerRole). affordsTask(tote_bag, storageTask).
}).
#pos(e3981@10, {}, {goesIn(towel, garden)}, {
  obj(towel). hasRole(towel, cleaningToolRole). affordsTask(towel, cleaningTask).
}).
#pos(e3982@10, {}, {goesIn(towel, home_office)}, {
  obj(towel). hasRole(towel, cleaningToolRole). affordsTask(towel, cleaningTask).
}).
#pos(e3983@10, {}, {goesIn(towel_bar, closet)}, {
  obj(towel_bar). hasRole(towel_bar, storageContainerRole). affordsTask(towel_bar, storageTask).
}).
#pos(e3984@10, {}, {goesIn(towel_bar, sink)}, {
  obj(towel_bar). hasRole(towel_bar, storageContainerRole). affordsTask(towel_bar, storageTask).
}).
#pos(e3985@10, {}, {goesIn(towel_rack, bedroom)}, {
  obj(towel_rack). hasRole(towel_rack, storageContainerRole). affordsTask(towel_rack, storageTask).
}).
#pos(e3986@10, {}, {goesIn(towel_rack, garden)}, {
  obj(towel_rack). hasRole(towel_rack, storageContainerRole). affordsTask(towel_rack, storageTask).
}).
#pos(e3987@10, {}, {goesIn(toy, living_room)}, {
  obj(toy). hasRole(toy, entertainmentRole). affordsTask(toy, leisureTask).
}).
#pos(e3988@10, {}, {goesIn(toy, sink)}, {
  obj(toy). hasRole(toy, entertainmentRole). affordsTask(toy, leisureTask).
}).
#pos(e3989@10, {}, {goesIn(toys, laundry_room)}, {
  obj(toys). hasRole(toys, entertainmentRole). affordsTask(toys, leisureTask).
}).
#pos(e3990@10, {}, {goesIn(toys, playroom)}, {
  obj(toys). hasRole(toys, entertainmentRole). affordsTask(toys, leisureTask).
}).
#pos(e3991@10, {}, {goesIn(trash, dining_room)}, {
  obj(trash). hasRole(trash, storageContainerRole). affordsTask(trash, wasteDisposalTask).
}).
#pos(e3992@10, {}, {goesIn(trash, storage_room)}, {
  obj(trash). hasRole(trash, storageContainerRole). affordsTask(trash, wasteDisposalTask).
}).
#pos(e3993@10, {}, {goesIn(trash_can, cabinet)}, {
  obj(trash_can). hasRole(trash_can, storageContainerRole). hasRole(trash_can, wasteRole). affordsTask(trash_can, wasteDisposalTask).
}).
#pos(e3994@10, {}, {goesIn(trash_can, garden)}, {
  obj(trash_can). hasRole(trash_can, storageContainerRole). hasRole(trash_can, wasteRole). affordsTask(trash_can, wasteDisposalTask).
}).
#pos(e3995@10, {}, {goesIn(trash_container, bedroom)}, {
  obj(trash_container). hasRole(trash_container, storageContainerRole). affordsTask(trash_container, wasteDisposalTask).
}).
#pos(e3996@10, {}, {goesIn(trash_container, dining_room)}, {
  obj(trash_container). hasRole(trash_container, storageContainerRole). affordsTask(trash_container, wasteDisposalTask).
}).
#pos(e3997@10, {}, {goesIn(trunk, hallway)}, {
  obj(trunk). hasRole(trunk, storageContainerRole). affordsTask(trunk, storageTask).
}).
#pos(e3998@10, {}, {goesIn(trunk, music_room)}, {
  obj(trunk). hasRole(trunk, storageContainerRole). affordsTask(trunk, storageTask).
}).
#pos(e3999@10, {}, {goesIn(tub, closet)}, {
  obj(tub). hasRole(tub, storageContainerRole). affordsTask(tub, eatingDrinkingTask). affordsTask(tub, hygieneTask). affordsTask(tub, leisureTask).
}).
#pos(e4000@10, {}, {goesIn(tub, pantry)}, {
  obj(tub). hasRole(tub, storageContainerRole). affordsTask(tub, eatingDrinkingTask). affordsTask(tub, hygieneTask). affordsTask(tub, leisureTask).
}).
#pos(e4001@10, {}, {goesIn(tuna, cabinet)}, {
  obj(tuna). hasRole(tuna, consumableRole). affordsTask(tuna, eatingDrinkingTask).
}).
#pos(e4002@10, {}, {goesIn(tuna, music_room)}, {
  obj(tuna). hasRole(tuna, consumableRole). affordsTask(tuna, eatingDrinkingTask).
}).
#pos(e4003@10, {}, {goesIn(tuning_fork, fridge)}, {
  obj(tuning_fork). hasRole(tuning_fork, toolRole). affordsTask(tuning_fork, foodPreparationTask).
}).
#pos(e4004@10, {}, {goesIn(tuning_fork, library)}, {
  obj(tuning_fork). hasRole(tuning_fork, toolRole). affordsTask(tuning_fork, foodPreparationTask).
}).
#pos(e4005@10, {}, {goesIn(turkey, bathroom)}, {
  obj(turkey). hasRole(turkey, consumableRole). affordsTask(turkey, eatingDrinkingTask).
}).
#pos(e4006@10, {}, {goesIn(turkey, kitchen)}, {
  obj(turkey). hasRole(turkey, consumableRole). affordsTask(turkey, eatingDrinkingTask).
}).
#pos(e4007@10, {}, {goesIn(turtle, bedroom)}, {
  obj(turtle). affordsTask(turtle, leisureTask).
}).
#pos(e4008@10, {}, {goesIn(turtle, music_room)}, {
  obj(turtle). affordsTask(turtle, leisureTask).
}).
#pos(e4009@10, {}, {goesIn(tv, laundry_room)}, {
  obj(tv). hasRole(tv, applianceRole). affordsTask(tv, leisureTask).
}).
#pos(e4010@10, {}, {goesIn(tv, playroom)}, {
  obj(tv). hasRole(tv, applianceRole). affordsTask(tv, leisureTask).
}).
#pos(e4011@10, {}, {goesIn(tweed, garden)}, {
  obj(tweed). hasRole(tweed, clothingRole). affordsTask(tweed, dressingTask).
}).
#pos(e4012@10, {}, {goesIn(tweed, laundry_room)}, {
  obj(tweed). hasRole(tweed, clothingRole). affordsTask(tweed, dressingTask).
}).
#pos(e4013@10, {}, {goesIn(typewriter, bedroom)}, {
  obj(typewriter). hasRole(typewriter, toolRole).
}).
#pos(e4014@10, {}, {goesIn(typewriter, kitchen)}, {
  obj(typewriter). hasRole(typewriter, toolRole).
}).
#pos(e4015@10, {}, {goesIn(umbrella, garden)}, {
  obj(umbrella). hasRole(umbrella, toolRole). affordsTask(umbrella, leisureTask).
}).
#pos(e4016@10, {}, {goesIn(umbrella, laundry_room)}, {
  obj(umbrella). hasRole(umbrella, toolRole). affordsTask(umbrella, leisureTask).
}).
#pos(e4017@10, {}, {goesIn(underwear, bathroom)}, {
  obj(underwear). hasRole(underwear, clothingRole). affordsTask(underwear, dressingTask).
}).
#pos(e4018@10, {}, {goesIn(underwear, home_office)}, {
  obj(underwear). hasRole(underwear, clothingRole). affordsTask(underwear, dressingTask).
}).
#pos(e4019@10, {}, {goesIn(upright_piano, closet)}, {
  obj(upright_piano). hasRole(upright_piano, entertainmentRole). affordsTask(upright_piano, leisureTask).
}).
#pos(e4020@10, {}, {goesIn(upright_piano, home_office)}, {
  obj(upright_piano). hasRole(upright_piano, entertainmentRole). affordsTask(upright_piano, leisureTask).
}).
#pos(e4021@10, {}, {goesIn(utensils, bed)}, {
  obj(utensils). hasRole(utensils, utensilRole).
}).
#pos(e4022@10, {}, {goesIn(utensils, dining_room)}, {
  obj(utensils). hasRole(utensils, utensilRole).
}).
#pos(e4023@10, {}, {goesIn(utility_case, hallway)}, {
  obj(utility_case). hasRole(utility_case, storageContainerRole). affordsTask(utility_case, storageTask).
}).
#pos(e4024@10, {}, {goesIn(utility_case, music_room)}, {
  obj(utility_case). hasRole(utility_case, storageContainerRole). affordsTask(utility_case, storageTask).
}).
#pos(e4025@10, {}, {goesIn(vacuum, drawer)}, {
  obj(vacuum). hasRole(vacuum, cleaningToolRole). affordsTask(vacuum, cleaningTask).
}).
#pos(e4026@10, {}, {goesIn(vacuum, sink)}, {
  obj(vacuum). hasRole(vacuum, cleaningToolRole). affordsTask(vacuum, cleaningTask).
}).
#pos(e4027@10, {}, {goesIn(vanity_case, pantry)}, {
  obj(vanity_case). hasRole(vanity_case, storageContainerRole). affordsTask(vanity_case, storageTask).
}).
#pos(e4028@10, {}, {goesIn(vanity_case, table)}, {
  obj(vanity_case). hasRole(vanity_case, storageContainerRole). affordsTask(vanity_case, storageTask).
}).
#pos(e4029@10, {}, {goesIn(varnish, bathroom)}, {
  obj(varnish). hasRole(varnish, toolRole). affordsTask(varnish, maintenanceTask).
}).
#pos(e4030@10, {}, {goesIn(varnish, bedroom)}, {
  obj(varnish). hasRole(varnish, toolRole). affordsTask(varnish, maintenanceTask).
}).
#pos(e4031@10, {}, {goesIn(vase, bathroom)}, {
  obj(vase). hasRole(vase, decorationRole). affordsTask(vase, storageTask).
}).
#pos(e4032@10, {}, {goesIn(vase, garage)}, {
  obj(vase). hasRole(vase, decorationRole). affordsTask(vase, storageTask).
}).
#pos(e4033@10, {}, {goesIn(vcr, dining_room)}, {
  obj(vcr). hasRole(vcr, applianceRole). affordsTask(vcr, leisureTask).
}).
#pos(e4034@10, {}, {goesIn(vcr, fridge)}, {
  obj(vcr). hasRole(vcr, applianceRole). affordsTask(vcr, leisureTask).
}).
#pos(e4035@10, {}, {goesIn(vegemite, playroom)}, {
  obj(vegemite). hasRole(vegemite, consumableRole). affordsTask(vegemite, eatingDrinkingTask).
}).
#pos(e4036@10, {}, {goesIn(vegemite, sink)}, {
  obj(vegemite). hasRole(vegemite, consumableRole). affordsTask(vegemite, eatingDrinkingTask).
}).
#pos(e4037@10, {}, {goesIn(vegetable_garden, library)}, {
  obj(vegetable_garden). hasRole(vegetable_garden, furnitureRole). affordsTask(vegetable_garden, gardeningTask).
}).
#pos(e4038@10, {}, {goesIn(vegetable_garden, pantry)}, {
  obj(vegetable_garden). hasRole(vegetable_garden, furnitureRole). affordsTask(vegetable_garden, gardeningTask).
}).
#pos(e4039@10, {}, {goesIn(vegetables, cabinet)}, {
  obj(vegetables). hasRole(vegetables, consumableRole). affordsTask(vegetables, eatingDrinkingTask).
}).
#pos(e4040@10, {}, {goesIn(vegetables, home_office)}, {
  obj(vegetables). hasRole(vegetables, consumableRole). affordsTask(vegetables, eatingDrinkingTask).
}).
#pos(e4041@10, {}, {goesIn(velvet, garden)}, {
  obj(velvet). hasRole(velvet, clothingRole). affordsTask(velvet, dressingTask).
}).
#pos(e4042@10, {}, {goesIn(velvet, home_office)}, {
  obj(velvet). hasRole(velvet, clothingRole). affordsTask(velvet, dressingTask).
}).
#pos(e4043@10, {}, {goesIn(vent_brush, bed)}, {
  obj(vent_brush). hasRole(vent_brush, cleaningToolRole). affordsTask(vent_brush, cleaningTask).
}).
#pos(e4044@10, {}, {goesIn(vent_brush, cabinet)}, {
  obj(vent_brush). hasRole(vent_brush, cleaningToolRole). affordsTask(vent_brush, cleaningTask).
}).
#pos(e4045@10, {}, {goesIn(ventilation_system, garage)}, {
  obj(ventilation_system). hasRole(ventilation_system, applianceRole). affordsTask(ventilation_system, maintenanceTask).
}).
#pos(e4046@10, {}, {goesIn(ventilation_system, library)}, {
  obj(ventilation_system). hasRole(ventilation_system, applianceRole). affordsTask(ventilation_system, maintenanceTask).
}).
#pos(e4047@10, {}, {goesIn(vice, sink)}, {
  obj(vice). hasRole(vice, toolRole). affordsTask(vice, maintenanceTask).
}).
#pos(e4048@10, {}, {goesIn(vice, table)}, {
  obj(vice). hasRole(vice, toolRole). affordsTask(vice, maintenanceTask).
}).
#pos(e4049@10, {}, {goesIn(vinyl, cabinet)}, {
  obj(vinyl). hasRole(vinyl, consumableRole). affordsTask(vinyl, leisureTask).
}).
#pos(e4050@10, {}, {goesIn(vinyl, music_room)}, {
  obj(vinyl). hasRole(vinyl, consumableRole). affordsTask(vinyl, leisureTask).
}).
#pos(e4051@10, {}, {goesIn(violin, cabinet)}, {
  obj(violin). hasRole(violin, musicalInstrumentRole). affordsTask(violin, leisureTask).
}).
#pos(e4052@10, {}, {goesIn(violin, living_room)}, {
  obj(violin). hasRole(violin, musicalInstrumentRole). affordsTask(violin, leisureTask).
}).
#pos(e4053@10, {}, {goesIn(virus, playroom)}, {
  obj(virus). affordsTask(virus, maintenanceTask).
}).
#pos(e4054@10, {}, {goesIn(virus, sink)}, {
  obj(virus). affordsTask(virus, maintenanceTask).
}).
#pos(e4055@10, {}, {goesIn(waffles, bathroom)}, {
  obj(waffles). hasRole(waffles, consumableRole). affordsTask(waffles, eatingDrinkingTask).
}).
#pos(e4056@10, {}, {goesIn(waffles, storage_room)}, {
  obj(waffles). hasRole(waffles, consumableRole). affordsTask(waffles, eatingDrinkingTask).
}).
#pos(e4057@10, {}, {goesIn(wall, pantry)}, {
  obj(wall). hasRole(wall, furnitureRole).
}).
#pos(e4058@10, {}, {goesIn(wall, shelf)}, {
  obj(wall). hasRole(wall, furnitureRole).
}).
#pos(e4059@10, {}, {goesIn(wallet, garage)}, {
  obj(wallet). hasRole(wallet, storageContainerRole). affordsTask(wallet, storageTask).
}).
#pos(e4060@10, {}, {goesIn(wallet, trash)}, {
  obj(wallet). hasRole(wallet, storageContainerRole). affordsTask(wallet, storageTask).
}).
#pos(e4061@10, {}, {goesIn(walls, dining_room)}, {
  obj(walls). hasRole(walls, furnitureRole). affordsTask(walls, storageTask).
}).
#pos(e4062@10, {}, {goesIn(walls, hallway)}, {
  obj(walls). hasRole(walls, furnitureRole). affordsTask(walls, storageTask).
}).
#pos(e4063@10, {}, {goesIn(wardrobe, bathroom)}, {
  obj(wardrobe). hasRole(wardrobe, furnitureRole). affordsTask(wardrobe, storageTask).
}).
#pos(e4064@10, {}, {goesIn(wardrobe, living_room)}, {
  obj(wardrobe). hasRole(wardrobe, furnitureRole). affordsTask(wardrobe, storageTask).
}).
#pos(e4065@10, {}, {goesIn(wash_cloth, library)}, {
  obj(wash_cloth). hasRole(wash_cloth, cleaningToolRole). affordsTask(wash_cloth, cleaningTask).
}).
#pos(e4066@10, {}, {goesIn(wash_cloth, trash)}, {
  obj(wash_cloth). hasRole(wash_cloth, cleaningToolRole). affordsTask(wash_cloth, cleaningTask).
}).
#pos(e4067@10, {}, {goesIn(washcloth, garage)}, {
  obj(washcloth). hasRole(washcloth, cleaningToolRole). affordsTask(washcloth, cleaningTask). affordsTask(washcloth, hygieneTask).
}).
#pos(e4068@10, {}, {goesIn(washcloth, table)}, {
  obj(washcloth). hasRole(washcloth, cleaningToolRole). affordsTask(washcloth, cleaningTask). affordsTask(washcloth, hygieneTask).
}).
#pos(e4069@10, {}, {goesIn(washing_machine, drawer)}, {
  obj(washing_machine). hasRole(washing_machine, applianceRole). affordsTask(washing_machine, cleaningTask).
}).
#pos(e4070@10, {}, {goesIn(washing_machine, library)}, {
  obj(washing_machine). hasRole(washing_machine, applianceRole). affordsTask(washing_machine, cleaningTask).
}).
#pos(e4071@10, {}, {goesIn(water, shelf)}, {
  obj(water). hasRole(water, consumableRole). affordsTask(water, cleaningTask). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e4072@10, {}, {goesIn(water, trash)}, {
  obj(water). hasRole(water, consumableRole). affordsTask(water, cleaningTask). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e4073@10, {}, {goesIn(water_fountain, bedroom)}, {
  obj(water_fountain). hasRole(water_fountain, utensilRole). affordsTask(water_fountain, eatingDrinkingTask).
}).
#pos(e4074@10, {}, {goesIn(water_fountain, pantry)}, {
  obj(water_fountain). hasRole(water_fountain, utensilRole). affordsTask(water_fountain, eatingDrinkingTask).
}).
#pos(e4075@10, {}, {goesIn(water_spout, bedroom)}, {
  obj(water_spout). hasRole(water_spout, toolRole). affordsTask(water_spout, eatingDrinkingTask). affordsTask(water_spout, hygieneTask). affordsTask(water_spout, maintenanceTask).
}).
#pos(e4076@10, {}, {goesIn(water_spout, laundry_room)}, {
  obj(water_spout). hasRole(water_spout, toolRole). affordsTask(water_spout, eatingDrinkingTask). affordsTask(water_spout, hygieneTask). affordsTask(water_spout, maintenanceTask).
}).
#pos(e4077@10, {}, {goesIn(wave_clip, pantry)}, {
  obj(wave_clip). hasRole(wave_clip, toolRole). affordsTask(wave_clip, leisureTask).
}).
#pos(e4078@10, {}, {goesIn(wave_clip, playroom)}, {
  obj(wave_clip). hasRole(wave_clip, toolRole). affordsTask(wave_clip, leisureTask).
}).
#pos(e4079@10, {}, {goesIn(wax, playroom)}, {
  obj(wax). hasRole(wax, consumableRole). affordsTask(wax, maintenanceTask).
}).
#pos(e4080@10, {}, {goesIn(wax, trash)}, {
  obj(wax). hasRole(wax, consumableRole). affordsTask(wax, maintenanceTask).
}).
#pos(e4081@10, {}, {goesIn(waxed_dental_floss, bed)}, {
  obj(waxed_dental_floss). hasRole(waxed_dental_floss, cleaningToolRole). affordsTask(waxed_dental_floss, hygieneTask).
}).
#pos(e4082@10, {}, {goesIn(waxed_dental_floss, shelf)}, {
  obj(waxed_dental_floss). hasRole(waxed_dental_floss, cleaningToolRole). affordsTask(waxed_dental_floss, hygieneTask).
}).
#pos(e4083@10, {}, {goesIn(weather_vane, laundry_room)}, {
  obj(weather_vane). hasRole(weather_vane, decorationRole).
}).
#pos(e4084@10, {}, {goesIn(weather_vane, music_room)}, {
  obj(weather_vane). hasRole(weather_vane, decorationRole).
}).
#pos(e4085@10, {}, {goesIn(wedding_ring, bed)}, {
  obj(wedding_ring). affordsTask(wedding_ring, leisureTask).
}).
#pos(e4086@10, {}, {goesIn(wedding_ring, library)}, {
  obj(wedding_ring). affordsTask(wedding_ring, leisureTask).
}).
#pos(e4087@10, {}, {goesIn(weights, garden)}, {
  obj(weights). hasRole(weights, toolRole). affordsTask(weights, workStudyTask).
}).
#pos(e4088@10, {}, {goesIn(weights, kitchen)}, {
  obj(weights). hasRole(weights, toolRole). affordsTask(weights, workStudyTask).
}).
#pos(e4089@10, {}, {goesIn(wheat, bathroom)}, {
  obj(wheat). hasRole(wheat, consumableRole). affordsTask(wheat, foodPreparationTask).
}).
#pos(e4090@10, {}, {goesIn(wheat, home_office)}, {
  obj(wheat). hasRole(wheat, consumableRole). affordsTask(wheat, foodPreparationTask).
}).
#pos(e4091@10, {}, {goesIn(wheel, cabinet)}, {
  obj(wheel). hasRole(wheel, toolRole). affordsTask(wheel, maintenanceTask).
}).
#pos(e4092@10, {}, {goesIn(wheel, laundry_room)}, {
  obj(wheel). hasRole(wheel, toolRole). affordsTask(wheel, maintenanceTask).
}).
#pos(e4093@10, {}, {goesIn(whisk, garage)}, {
  obj(whisk). hasRole(whisk, utensilRole). affordsTask(whisk, foodPreparationTask).
}).
#pos(e4094@10, {}, {goesIn(whisk, table)}, {
  obj(whisk). hasRole(whisk, utensilRole). affordsTask(whisk, foodPreparationTask).
}).
#pos(e4095@10, {}, {goesIn(whisky, cabinet)}, {
  obj(whisky). hasRole(whisky, consumableRole). affordsTask(whisky, eatingDrinkingTask).
}).
#pos(e4096@10, {}, {goesIn(whisky, storage_room)}, {
  obj(whisky). hasRole(whisky, consumableRole). affordsTask(whisky, eatingDrinkingTask).
}).
#pos(e4097@10, {}, {goesIn(wind_instrument, hallway)}, {
  obj(wind_instrument). hasRole(wind_instrument, musicalInstrumentRole). affordsTask(wind_instrument, leisureTask).
}).
#pos(e4098@10, {}, {goesIn(wind_instrument, shelf)}, {
  obj(wind_instrument). hasRole(wind_instrument, musicalInstrumentRole). affordsTask(wind_instrument, leisureTask).
}).
#pos(e4099@10, {}, {goesIn(window, bed)}, {
  obj(window). hasRole(window, furnitureRole). affordsTask(window, leisureTask).
}).
#pos(e4100@10, {}, {goesIn(window, dining_room)}, {
  obj(window). hasRole(window, furnitureRole). affordsTask(window, leisureTask).
}).
#pos(e4101@10, {}, {goesIn(window_curtain, laundry_room)}, {
  obj(window_curtain). hasRole(window_curtain, decorationRole). affordsTask(window_curtain, leisureTask).
}).
#pos(e4102@10, {}, {goesIn(window_curtain, sink)}, {
  obj(window_curtain). hasRole(window_curtain, decorationRole). affordsTask(window_curtain, leisureTask).
}).
#pos(e4103@10, {}, {goesIn(window_tab, drawer)}, {
  obj(window_tab). hasRole(window_tab, toolRole). affordsTask(window_tab, maintenanceTask).
}).
#pos(e4104@10, {}, {goesIn(window_tab, kitchen)}, {
  obj(window_tab). hasRole(window_tab, toolRole). affordsTask(window_tab, maintenanceTask).
}).
#pos(e4105@10, {}, {goesIn(windows, living_room)}, {
  obj(windows). hasRole(windows, furnitureRole).
}).
#pos(e4106@10, {}, {goesIn(windows, table)}, {
  obj(windows). hasRole(windows, furnitureRole).
}).
#pos(e4107@10, {}, {goesIn(wine, fridge)}, {
  obj(wine). hasRole(wine, consumableRole). affordsTask(wine, eatingDrinkingTask).
}).
#pos(e4108@10, {}, {goesIn(wine, pantry)}, {
  obj(wine). hasRole(wine, consumableRole). affordsTask(wine, eatingDrinkingTask).
}).
#pos(e4109@10, {}, {goesIn(wine_cellar, cabinet)}, {
  obj(wine_cellar). hasRole(wine_cellar, storageContainerRole). affordsTask(wine_cellar, storageTask).
}).
#pos(e4110@10, {}, {goesIn(wine_cellar, drawer)}, {
  obj(wine_cellar). hasRole(wine_cellar, storageContainerRole). affordsTask(wine_cellar, storageTask).
}).
#pos(e4111@10, {}, {goesIn(wine_glass, living_room)}, {
  obj(wine_glass). hasRole(wine_glass, utensilRole). affordsTask(wine_glass, eatingDrinkingTask).
}).
#pos(e4112@10, {}, {goesIn(wine_glass, trash)}, {
  obj(wine_glass). hasRole(wine_glass, utensilRole). affordsTask(wine_glass, eatingDrinkingTask).
}).
#pos(e4113@10, {}, {goesIn(wood, cabinet)}, {
  obj(wood). hasRole(wood, toolRole). affordsTask(wood, maintenanceTask).
}).
#pos(e4114@10, {}, {goesIn(wood, laundry_room)}, {
  obj(wood). hasRole(wood, toolRole). affordsTask(wood, maintenanceTask).
}).
#pos(e4115@10, {}, {goesIn(wooden_floor, bed)}, {
  obj(wooden_floor). hasRole(wooden_floor, furnitureRole). affordsTask(wooden_floor, leisureTask).
}).
#pos(e4116@10, {}, {goesIn(wooden_floor, garage)}, {
  obj(wooden_floor). hasRole(wooden_floor, furnitureRole). affordsTask(wooden_floor, leisureTask).
}).
#pos(e4117@10, {}, {goesIn(wooden_rod, bed)}, {
  obj(wooden_rod). hasRole(wooden_rod, toolRole). affordsTask(wooden_rod, maintenanceTask).
}).
#pos(e4118@10, {}, {goesIn(wooden_rod, garage)}, {
  obj(wooden_rod). hasRole(wooden_rod, toolRole). affordsTask(wooden_rod, maintenanceTask).
}).
#pos(e4119@10, {}, {goesIn(wool, hallway)}, {
  obj(wool). hasRole(wool, consumableRole). affordsTask(wool, dressingTask).
}).
#pos(e4120@10, {}, {goesIn(wool, home_office)}, {
  obj(wool). hasRole(wool, consumableRole). affordsTask(wool, dressingTask).
}).
#pos(e4121@10, {}, {goesIn(woolen_fabric, library)}, {
  obj(woolen_fabric). hasRole(woolen_fabric, clothingRole). affordsTask(woolen_fabric, dressingTask).
}).
#pos(e4122@10, {}, {goesIn(woolen_fabric, playroom)}, {
  obj(woolen_fabric). hasRole(woolen_fabric, clothingRole). affordsTask(woolen_fabric, dressingTask).
}).
#pos(e4123@10, {}, {goesIn(wrench, music_room)}, {
  obj(wrench). hasRole(wrench, toolRole). affordsTask(wrench, maintenanceTask).
}).
#pos(e4124@10, {}, {goesIn(wrench, playroom)}, {
  obj(wrench). hasRole(wrench, toolRole). affordsTask(wrench, maintenanceTask).
}).
#pos(e4125@10, {}, {goesIn(writing_brush, bed)}, {
  obj(writing_brush). hasRole(writing_brush, toolRole). affordsTask(writing_brush, leisureTask). affordsTask(writing_brush, workStudyTask).
}).
#pos(e4126@10, {}, {goesIn(writing_brush, garage)}, {
  obj(writing_brush). hasRole(writing_brush, toolRole). affordsTask(writing_brush, leisureTask). affordsTask(writing_brush, workStudyTask).
}).
#pos(e4127@10, {}, {goesIn(yard, fridge)}, {
  obj(yard). hasRole(yard, furnitureRole). affordsTask(yard, leisureTask). affordsTask(yard, maintenanceTask).
}).
#pos(e4128@10, {}, {goesIn(yard, storage_room)}, {
  obj(yard). hasRole(yard, furnitureRole). affordsTask(yard, leisureTask). affordsTask(yard, maintenanceTask).
}).
#pos(e4129@10, {}, {goesIn(yogurt, hallway)}, {
  obj(yogurt). hasRole(yogurt, consumableRole). affordsTask(yogurt, eatingDrinkingTask).
}).
#pos(e4130@10, {}, {goesIn(yogurt, kitchen)}, {
  obj(yogurt). hasRole(yogurt, consumableRole). affordsTask(yogurt, eatingDrinkingTask).
}).
