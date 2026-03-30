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

#constant(quality, electronic).
#constant(quality, flammable).
#constant(quality, fragile).
#constant(quality, gas_Aerosol).
#constant(quality, granular).
#constant(quality, hasBlade).
#constant(quality, hasContainer).
#constant(quality, heated).
#constant(quality, heavy).
#constant(quality, isFlexible).
#constant(quality, isRotary).
#constant(quality, lightweight).
#constant(quality, liquid).
#constant(quality, perishable).
#constant(quality, requiresCooling).
#constant(quality, requiresFreezing).
#constant(quality, rigid).
#constant(quality, sharp).
#constant(quality, soft_Deformable).
#constant(quality, toxic_Hazardous).
#constant(quality, washable).

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
#modeb(2, hasPhysicalQuality(var(obj), const(quality))).
#modeb(2, hasRole(var(obj), const(role))).
#modeb(2, affordsTask(var(obj), const(task))).

% --- Positive examples (weight 100) ---
#pos(e1@100, {goesIn(account_book, table)}, {}, {
  obj(account_book). hasPhysicalQuality(account_book, lightweight). hasRole(account_book, documentRole). affordsTask(account_book, workStudyTask).
}).
#pos(e2@100, {goesIn(acne_medication, bathroom)}, {}, {
  obj(acne_medication). hasPhysicalQuality(acne_medication, perishable). hasPhysicalQuality(acne_medication, toxic_Hazardous). hasRole(acne_medication, consumableRole). affordsTask(acne_medication, hygieneTask).
}).
#pos(e3@100, {goesIn(acne_medication, cabinet)}, {}, {
  obj(acne_medication). hasPhysicalQuality(acne_medication, perishable). hasPhysicalQuality(acne_medication, toxic_Hazardous). hasRole(acne_medication, consumableRole). affordsTask(acne_medication, hygieneTask).
}).
#pos(e4@100, {goesIn(acne_medication, library)}, {}, {
  obj(acne_medication). hasPhysicalQuality(acne_medication, perishable). hasPhysicalQuality(acne_medication, toxic_Hazardous). hasRole(acne_medication, consumableRole). affordsTask(acne_medication, hygieneTask).
}).
#pos(e5@100, {goesIn(address_label, drawer)}, {}, {
  obj(address_label). hasPhysicalQuality(address_label, fragile). hasPhysicalQuality(address_label, lightweight). hasRole(address_label, documentRole).
}).
#pos(e6@100, {goesIn(address_label, home_office)}, {}, {
  obj(address_label). hasPhysicalQuality(address_label, fragile). hasPhysicalQuality(address_label, lightweight). hasRole(address_label, documentRole).
}).
#pos(e7@100, {goesIn(address_label, trash)}, {}, {
  obj(address_label). hasPhysicalQuality(address_label, fragile). hasPhysicalQuality(address_label, lightweight). hasRole(address_label, documentRole).
}).
#pos(e8@100, {goesIn(air_conditioner, bedroom)}, {}, {
  obj(air_conditioner). hasPhysicalQuality(air_conditioner, electronic). hasPhysicalQuality(air_conditioner, heavy). hasPhysicalQuality(air_conditioner, requiresCooling). hasRole(air_conditioner, applianceRole).
}).
#pos(e9@100, {goesIn(album, bedroom)}, {}, {
  obj(album). hasPhysicalQuality(album, lightweight). hasRole(album, documentRole). affordsTask(album, leisureTask).
}).
#pos(e10@100, {goesIn(album, closet)}, {}, {
  obj(album). hasPhysicalQuality(album, lightweight). hasRole(album, documentRole). affordsTask(album, leisureTask).
}).
#pos(e11@100, {goesIn(alcohol, fridge)}, {}, {
  obj(alcohol). hasPhysicalQuality(alcohol, flammable). hasRole(alcohol, consumableRole).
}).
#pos(e12@100, {goesIn(alcohol, storage_room)}, {}, {
  obj(alcohol). hasPhysicalQuality(alcohol, flammable). hasRole(alcohol, consumableRole).
}).
#pos(e13@100, {goesIn(aluminum_foil, trash)}, {}, {
  obj(aluminum_foil). hasPhysicalQuality(aluminum_foil, fragile). hasPhysicalQuality(aluminum_foil, lightweight). hasPhysicalQuality(aluminum_foil, rigid). hasRole(aluminum_foil, cookwareRole). affordsTask(aluminum_foil, foodPreparationTask).
}).
#pos(e14@100, {goesIn(apple, bedroom)}, {}, {
  obj(apple). hasPhysicalQuality(apple, fragile). hasPhysicalQuality(apple, perishable). hasRole(apple, consumableRole). affordsTask(apple, eatingDrinkingTask).
}).
#pos(e15@100, {goesIn(apple, fridge)}, {}, {
  obj(apple). hasPhysicalQuality(apple, fragile). hasPhysicalQuality(apple, perishable). hasRole(apple, consumableRole). affordsTask(apple, eatingDrinkingTask).
}).
#pos(e16@100, {goesIn(appointment_book, table)}, {}, {
  obj(appointment_book). hasRole(appointment_book, documentRole).
}).
#pos(e17@100, {goesIn(arch, bedroom)}, {}, {
  obj(arch). hasPhysicalQuality(arch, heavy). hasPhysicalQuality(arch, rigid). hasRole(arch, furnitureRole).
}).
#pos(e18@100, {goesIn(arch, closet)}, {}, {
  obj(arch). hasPhysicalQuality(arch, heavy). hasPhysicalQuality(arch, rigid). hasRole(arch, furnitureRole).
}).
#pos(e19@100, {goesIn(arch, library)}, {}, {
  obj(arch). hasPhysicalQuality(arch, heavy). hasPhysicalQuality(arch, rigid). hasRole(arch, furnitureRole).
}).
#pos(e20@100, {goesIn(armchair, home_office)}, {}, {
  obj(armchair). hasPhysicalQuality(armchair, heavy). hasRole(armchair, furnitureRole). affordsTask(armchair, leisureTask).
}).
#pos(e21@100, {goesIn(armoire, bedroom)}, {}, {
  obj(armoire). hasPhysicalQuality(armoire, heavy). hasPhysicalQuality(armoire, rigid). hasRole(armoire, furnitureRole). affordsTask(armoire, storageTask).
}).
#pos(e22@100, {goesIn(armoire, living_room)}, {}, {
  obj(armoire). hasPhysicalQuality(armoire, heavy). hasPhysicalQuality(armoire, rigid). hasRole(armoire, furnitureRole). affordsTask(armoire, storageTask).
}).
#pos(e23@100, {goesIn(artichoke_hearts, pantry)}, {}, {
  obj(artichoke_hearts). hasPhysicalQuality(artichoke_hearts, perishable). hasRole(artichoke_hearts, consumableRole). affordsTask(artichoke_hearts, eatingDrinkingTask).
}).
#pos(e24@100, {goesIn(artichokes, fridge)}, {}, {
  obj(artichokes). hasPhysicalQuality(artichokes, perishable). hasRole(artichokes, consumableRole). affordsTask(artichokes, eatingDrinkingTask).
}).
#pos(e25@100, {goesIn(aspirin, table)}, {}, {
  obj(aspirin). hasPhysicalQuality(aspirin, perishable). hasPhysicalQuality(aspirin, toxic_Hazardous). hasRole(aspirin, consumableRole). affordsTask(aspirin, eatingDrinkingTask).
}).
#pos(e26@100, {goesIn(attache_case, bedroom)}, {}, {
  obj(attache_case). hasPhysicalQuality(attache_case, lightweight). hasPhysicalQuality(attache_case, soft_Deformable). hasRole(attache_case, storageContainerRole). affordsTask(attache_case, workStudyTask).
}).
#pos(e27@100, {goesIn(attache_case, garden)}, {}, {
  obj(attache_case). hasPhysicalQuality(attache_case, lightweight). hasPhysicalQuality(attache_case, soft_Deformable). hasRole(attache_case, storageContainerRole). affordsTask(attache_case, workStudyTask).
}).
#pos(e28@100, {goesIn(attache_case, hallway)}, {}, {
  obj(attache_case). hasPhysicalQuality(attache_case, lightweight). hasPhysicalQuality(attache_case, soft_Deformable). hasRole(attache_case, storageContainerRole). affordsTask(attache_case, workStudyTask).
}).
#pos(e29@100, {goesIn(attache_case, kitchen)}, {}, {
  obj(attache_case). hasPhysicalQuality(attache_case, lightweight). hasPhysicalQuality(attache_case, soft_Deformable). hasRole(attache_case, storageContainerRole). affordsTask(attache_case, workStudyTask).
}).
#pos(e30@100, {goesIn(attache_case, living_room)}, {}, {
  obj(attache_case). hasPhysicalQuality(attache_case, lightweight). hasPhysicalQuality(attache_case, soft_Deformable). hasRole(attache_case, storageContainerRole). affordsTask(attache_case, workStudyTask).
}).
#pos(e31@100, {goesIn(bag, bed)}, {}, {
  obj(bag). hasPhysicalQuality(bag, hasContainer). hasRole(bag, storageContainerRole). affordsTask(bag, storageTask).
}).
#pos(e32@100, {goesIn(bag, drawer)}, {}, {
  obj(bag). hasPhysicalQuality(bag, hasContainer). hasRole(bag, storageContainerRole). affordsTask(bag, storageTask).
}).
#pos(e33@100, {goesIn(bag, shelf)}, {}, {
  obj(bag). hasPhysicalQuality(bag, hasContainer). hasRole(bag, storageContainerRole). affordsTask(bag, storageTask).
}).
#pos(e34@100, {goesIn(bag, table)}, {}, {
  obj(bag). hasPhysicalQuality(bag, hasContainer). hasRole(bag, storageContainerRole). affordsTask(bag, storageTask).
}).
#pos(e35@100, {goesIn(bag, trash)}, {}, {
  obj(bag). hasPhysicalQuality(bag, hasContainer). hasRole(bag, storageContainerRole). affordsTask(bag, storageTask).
}).
#pos(e36@100, {goesIn(baking_oven, bedroom)}, {}, {
  obj(baking_oven). hasPhysicalQuality(baking_oven, heated). hasRole(baking_oven, cookwareRole). affordsTask(baking_oven, foodPreparationTask).
}).
#pos(e37@100, {goesIn(baking_oven, kitchen)}, {}, {
  obj(baking_oven). hasPhysicalQuality(baking_oven, heated). hasRole(baking_oven, cookwareRole). affordsTask(baking_oven, foodPreparationTask).
}).
#pos(e38@100, {goesIn(baking_oven, living_room)}, {}, {
  obj(baking_oven). hasPhysicalQuality(baking_oven, heated). hasRole(baking_oven, cookwareRole). affordsTask(baking_oven, foodPreparationTask).
}).
#pos(e39@100, {goesIn(ballpoint_pen, drawer)}, {}, {
  obj(ballpoint_pen). hasPhysicalQuality(ballpoint_pen, lightweight). hasPhysicalQuality(ballpoint_pen, rigid). hasRole(ballpoint_pen, toolRole).
}).
#pos(e40@100, {goesIn(ballpoint_pen, table)}, {}, {
  obj(ballpoint_pen). hasPhysicalQuality(ballpoint_pen, lightweight). hasPhysicalQuality(ballpoint_pen, rigid). hasRole(ballpoint_pen, toolRole).
}).
#pos(e41@100, {goesIn(banana, kitchen)}, {}, {
  obj(banana). hasPhysicalQuality(banana, perishable). hasRole(banana, consumableRole). affordsTask(banana, eatingDrinkingTask).
}).
#pos(e42@100, {goesIn(banana, pantry)}, {}, {
  obj(banana). hasPhysicalQuality(banana, perishable). hasRole(banana, consumableRole). affordsTask(banana, eatingDrinkingTask).
}).
#pos(e43@100, {goesIn(bandages, bathroom)}, {}, {
  obj(bandages). hasPhysicalQuality(bandages, lightweight). hasPhysicalQuality(bandages, washable). hasRole(bandages, safetyEquipmentRole). affordsTask(bandages, hygieneTask).
}).
#pos(e44@100, {goesIn(bandages, library)}, {}, {
  obj(bandages). hasPhysicalQuality(bandages, lightweight). hasPhysicalQuality(bandages, washable). hasRole(bandages, safetyEquipmentRole). affordsTask(bandages, hygieneTask).
}).
#pos(e45@100, {goesIn(bar_stool, garden)}, {}, {
  obj(bar_stool). hasPhysicalQuality(bar_stool, heavy). hasPhysicalQuality(bar_stool, rigid). hasRole(bar_stool, furnitureRole). affordsTask(bar_stool, leisureTask).
}).
#pos(e46@100, {goesIn(bar_stool, kitchen)}, {}, {
  obj(bar_stool). hasPhysicalQuality(bar_stool, heavy). hasPhysicalQuality(bar_stool, rigid). hasRole(bar_stool, furnitureRole). affordsTask(bar_stool, leisureTask).
}).
#pos(e47@100, {goesIn(barbecue, garage)}, {}, {
  obj(barbecue). hasPhysicalQuality(barbecue, heated). hasRole(barbecue, cookwareRole). hasRole(barbecue, toolRole). affordsTask(barbecue, foodPreparationTask).
}).
#pos(e48@100, {goesIn(basket, kitchen)}, {}, {
  obj(basket). hasPhysicalQuality(basket, lightweight). hasPhysicalQuality(basket, rigid). hasRole(basket, storageContainerRole). affordsTask(basket, storageTask).
}).
#pos(e49@100, {goesIn(basket_with_handle, kitchen)}, {}, {
  obj(basket_with_handle). hasPhysicalQuality(basket_with_handle, hasContainer). hasPhysicalQuality(basket_with_handle, lightweight). hasRole(basket_with_handle, storageContainerRole). affordsTask(basket_with_handle, storageTask).
}).
#pos(e50@100, {goesIn(bath, bedroom)}, {}, {
  obj(bath). hasPhysicalQuality(bath, soft_Deformable). hasPhysicalQuality(bath, washable). hasRole(bath, cleaningToolRole). affordsTask(bath, hygieneTask).
}).
#pos(e51@100, {goesIn(bath_shower, bathroom)}, {}, {
  obj(bath_shower). hasPhysicalQuality(bath_shower, electronic). hasPhysicalQuality(bath_shower, heavy). hasRole(bath_shower, cleaningToolRole). affordsTask(bath_shower, hygieneTask).
}).
#pos(e52@100, {goesIn(bath_shower, bedroom)}, {}, {
  obj(bath_shower). hasPhysicalQuality(bath_shower, electronic). hasPhysicalQuality(bath_shower, heavy). hasRole(bath_shower, cleaningToolRole). affordsTask(bath_shower, hygieneTask).
}).
#pos(e53@100, {goesIn(bathroom, bedroom)}, {}, {
  obj(bathroom). hasPhysicalQuality(bathroom, heavy). hasRole(bathroom, furnitureRole).
}).
#pos(e54@100, {goesIn(bathroom, library)}, {}, {
  obj(bathroom). hasPhysicalQuality(bathroom, heavy). hasRole(bathroom, furnitureRole).
}).
#pos(e55@100, {goesIn(battery_charger, garage)}, {}, {
  obj(battery_charger). hasPhysicalQuality(battery_charger, electronic). hasPhysicalQuality(battery_charger, heavy). hasRole(battery_charger, toolRole). affordsTask(battery_charger, maintenanceTask).
}).
#pos(e56@100, {goesIn(bay_window, bedroom)}, {}, {
  obj(bay_window). hasPhysicalQuality(bay_window, heavy). hasPhysicalQuality(bay_window, rigid). hasRole(bay_window, furnitureRole).
}).
#pos(e57@100, {goesIn(bay_window, living_room)}, {}, {
  obj(bay_window). hasPhysicalQuality(bay_window, heavy). hasPhysicalQuality(bay_window, rigid). hasRole(bay_window, furnitureRole).
}).
#pos(e58@100, {goesIn(beam, bedroom)}, {}, {
  obj(beam). hasPhysicalQuality(beam, heavy). hasPhysicalQuality(beam, rigid). hasRole(beam, toolRole). affordsTask(beam, maintenanceTask).
}).
#pos(e59@100, {goesIn(beam, garage)}, {}, {
  obj(beam). hasPhysicalQuality(beam, heavy). hasPhysicalQuality(beam, rigid). hasRole(beam, toolRole). affordsTask(beam, maintenanceTask).
}).
#pos(e60@100, {goesIn(bean_bag_chair, bedroom)}, {}, {
  obj(bean_bag_chair). hasPhysicalQuality(bean_bag_chair, lightweight). hasPhysicalQuality(bean_bag_chair, soft_Deformable). hasRole(bean_bag_chair, furnitureRole). affordsTask(bean_bag_chair, leisureTask).
}).
#pos(e61@100, {goesIn(bean_bag_chair, closet)}, {}, {
  obj(bean_bag_chair). hasPhysicalQuality(bean_bag_chair, lightweight). hasPhysicalQuality(bean_bag_chair, soft_Deformable). hasRole(bean_bag_chair, furnitureRole). affordsTask(bean_bag_chair, leisureTask).
}).
#pos(e62@100, {goesIn(bean_bag_chair, library)}, {}, {
  obj(bean_bag_chair). hasPhysicalQuality(bean_bag_chair, lightweight). hasPhysicalQuality(bean_bag_chair, soft_Deformable). hasRole(bean_bag_chair, furnitureRole). affordsTask(bean_bag_chair, leisureTask).
}).
#pos(e63@100, {goesIn(bean_bag_chair, living_room)}, {}, {
  obj(bean_bag_chair). hasPhysicalQuality(bean_bag_chair, lightweight). hasPhysicalQuality(bean_bag_chair, soft_Deformable). hasRole(bean_bag_chair, furnitureRole). affordsTask(bean_bag_chair, leisureTask).
}).
#pos(e64@100, {goesIn(beanbag, bedroom)}, {}, {
  obj(beanbag). hasPhysicalQuality(beanbag, lightweight). hasPhysicalQuality(beanbag, soft_Deformable). hasRole(beanbag, furnitureRole). affordsTask(beanbag, leisureTask).
}).
#pos(e65@100, {goesIn(bed, bedroom)}, {}, {
  obj(bed). hasPhysicalQuality(bed, heavy). hasPhysicalQuality(bed, soft_Deformable). hasRole(bed, furnitureRole). affordsTask(bed, sleepingTask).
}).
#pos(e66@100, {goesIn(bed, closet)}, {}, {
  obj(bed). hasPhysicalQuality(bed, heavy). hasPhysicalQuality(bed, soft_Deformable). hasRole(bed, furnitureRole). affordsTask(bed, sleepingTask).
}).
#pos(e67@100, {goesIn(bed, storage_room)}, {}, {
  obj(bed). hasPhysicalQuality(bed, heavy). hasPhysicalQuality(bed, soft_Deformable). hasRole(bed, furnitureRole). affordsTask(bed, sleepingTask).
}).
#pos(e68@100, {goesIn(bed_sheet, bed)}, {}, {
  obj(bed_sheet). hasPhysicalQuality(bed_sheet, soft_Deformable). hasPhysicalQuality(bed_sheet, washable). hasRole(bed_sheet, beddingRole). affordsTask(bed_sheet, sleepingTask).
}).
#pos(e69@100, {goesIn(bed_sheet, bedroom)}, {}, {
  obj(bed_sheet). hasPhysicalQuality(bed_sheet, soft_Deformable). hasPhysicalQuality(bed_sheet, washable). hasRole(bed_sheet, beddingRole). affordsTask(bed_sheet, sleepingTask).
}).
#pos(e70@100, {goesIn(bed_sheet, closet)}, {}, {
  obj(bed_sheet). hasPhysicalQuality(bed_sheet, soft_Deformable). hasPhysicalQuality(bed_sheet, washable). hasRole(bed_sheet, beddingRole). affordsTask(bed_sheet, sleepingTask).
}).
#pos(e71@100, {goesIn(bedroom, bedroom)}, {}, {
  obj(bedroom). hasRole(bedroom, furnitureRole). affordsTask(bedroom, sleepingTask).
}).
#pos(e72@100, {goesIn(beer_mug, fridge)}, {}, {
  obj(beer_mug). hasPhysicalQuality(beer_mug, heavy). hasPhysicalQuality(beer_mug, liquid). hasRole(beer_mug, utensilRole). affordsTask(beer_mug, eatingDrinkingTask).
}).
#pos(e73@100, {goesIn(beets, kitchen)}, {}, {
  obj(beets). hasPhysicalQuality(beets, perishable). hasRole(beets, consumableRole). affordsTask(beets, eatingDrinkingTask).
}).
#pos(e74@100, {goesIn(beets, pantry)}, {}, {
  obj(beets). hasPhysicalQuality(beets, perishable). hasRole(beets, consumableRole). affordsTask(beets, eatingDrinkingTask).
}).
#pos(e75@100, {goesIn(bell, garage)}, {}, {
  obj(bell). hasPhysicalQuality(bell, lightweight). hasPhysicalQuality(bell, rigid). hasRole(bell, toolRole). affordsTask(bell, maintenanceTask).
}).
#pos(e76@100, {goesIn(belt, bedroom)}, {}, {
  obj(belt). hasPhysicalQuality(belt, lightweight). hasPhysicalQuality(belt, soft_Deformable). hasRole(belt, clothingRole). affordsTask(belt, dressingTask).
}).
#pos(e77@100, {goesIn(belt, closet)}, {}, {
  obj(belt). hasPhysicalQuality(belt, lightweight). hasPhysicalQuality(belt, soft_Deformable). hasRole(belt, clothingRole). affordsTask(belt, dressingTask).
}).
#pos(e78@100, {goesIn(bench, garden)}, {}, {
  obj(bench). hasPhysicalQuality(bench, heavy). hasPhysicalQuality(bench, rigid). hasRole(bench, furnitureRole). affordsTask(bench, storageTask).
}).
#pos(e79@100, {goesIn(beverage, bedroom)}, {}, {
  obj(beverage). hasPhysicalQuality(beverage, liquid). hasRole(beverage, consumableRole). affordsTask(beverage, eatingDrinkingTask).
}).
#pos(e80@100, {goesIn(bicycle_storage_area, garage)}, {}, {
  obj(bicycle_storage_area). hasRole(bicycle_storage_area, storageContainerRole). affordsTask(bicycle_storage_area, storageTask).
}).
#pos(e81@100, {goesIn(bicycles, garage)}, {}, {
  obj(bicycles). hasPhysicalQuality(bicycles, heavy). hasPhysicalQuality(bicycles, rigid).
}).
#pos(e82@100, {goesIn(bike, garage)}, {}, {
  obj(bike). hasPhysicalQuality(bike, heavy). hasPhysicalQuality(bike, rigid). hasRole(bike, furnitureRole). affordsTask(bike, leisureTask).
}).
#pos(e83@100, {goesIn(bill_file, home_office)}, {}, {
  obj(bill_file). hasPhysicalQuality(bill_file, lightweight). hasPhysicalQuality(bill_file, washable). hasRole(bill_file, storageContainerRole). affordsTask(bill_file, storageTask).
}).
#pos(e84@100, {goesIn(binder, home_office)}, {}, {
  obj(binder). hasPhysicalQuality(binder, lightweight). hasPhysicalQuality(binder, rigid). hasRole(binder, storageContainerRole). affordsTask(binder, storageTask).
}).
#pos(e85@100, {goesIn(binder, library)}, {}, {
  obj(binder). hasPhysicalQuality(binder, lightweight). hasPhysicalQuality(binder, rigid). hasRole(binder, storageContainerRole). affordsTask(binder, storageTask).
}).
#pos(e86@100, {goesIn(binder, living_room)}, {}, {
  obj(binder). hasPhysicalQuality(binder, lightweight). hasPhysicalQuality(binder, rigid). hasRole(binder, storageContainerRole). affordsTask(binder, storageTask).
}).
#pos(e87@100, {goesIn(bird, garage)}, {}, {
  obj(bird). hasPhysicalQuality(bird, fragile). hasPhysicalQuality(bird, lightweight). hasRole(bird, entertainmentRole). affordsTask(bird, leisureTask).
}).
#pos(e88@100, {goesIn(bird, garden)}, {}, {
  obj(bird). hasPhysicalQuality(bird, fragile). hasPhysicalQuality(bird, lightweight). hasRole(bird, entertainmentRole). affordsTask(bird, leisureTask).
}).
#pos(e89@100, {goesIn(birds, garage)}, {}, {
  obj(birds). hasPhysicalQuality(birds, lightweight). hasPhysicalQuality(birds, soft_Deformable). hasRole(birds, entertainmentRole). affordsTask(birds, leisureTask).
}).
#pos(e90@100, {goesIn(birds, library)}, {}, {
  obj(birds). hasPhysicalQuality(birds, lightweight). hasPhysicalQuality(birds, soft_Deformable). hasRole(birds, entertainmentRole). affordsTask(birds, leisureTask).
}).
#pos(e91@100, {goesIn(birth_control_pill, bedroom)}, {}, {
  obj(birth_control_pill). hasPhysicalQuality(birth_control_pill, liquid). hasPhysicalQuality(birth_control_pill, perishable). hasRole(birth_control_pill, consumableRole). affordsTask(birth_control_pill, eatingDrinkingTask).
}).
#pos(e92@100, {goesIn(blanket, bedroom)}, {}, {
  obj(blanket). hasPhysicalQuality(blanket, soft_Deformable). hasPhysicalQuality(blanket, washable). hasRole(blanket, beddingRole). affordsTask(blanket, sleepingTask).
}).
#pos(e93@100, {goesIn(blanket, closet)}, {}, {
  obj(blanket). hasPhysicalQuality(blanket, soft_Deformable). hasPhysicalQuality(blanket, washable). hasRole(blanket, beddingRole). affordsTask(blanket, sleepingTask).
}).
#pos(e94@100, {goesIn(blanket, hallway)}, {}, {
  obj(blanket). hasPhysicalQuality(blanket, soft_Deformable). hasPhysicalQuality(blanket, washable). hasRole(blanket, beddingRole). affordsTask(blanket, sleepingTask).
}).
#pos(e95@100, {goesIn(blowdryer, bathroom)}, {}, {
  obj(blowdryer). hasPhysicalQuality(blowdryer, electronic). hasPhysicalQuality(blowdryer, heavy). hasRole(blowdryer, applianceRole). affordsTask(blowdryer, leisureTask).
}).
#pos(e96@100, {goesIn(blowdryer, closet)}, {}, {
  obj(blowdryer). hasPhysicalQuality(blowdryer, electronic). hasPhysicalQuality(blowdryer, heavy). hasRole(blowdryer, applianceRole). affordsTask(blowdryer, leisureTask).
}).
#pos(e97@100, {goesIn(blowdryer, library)}, {}, {
  obj(blowdryer). hasPhysicalQuality(blowdryer, electronic). hasPhysicalQuality(blowdryer, heavy). hasRole(blowdryer, applianceRole). affordsTask(blowdryer, leisureTask).
}).
#pos(e98@100, {goesIn(board_game, bedroom)}, {}, {
  obj(board_game). hasRole(board_game, entertainmentRole). affordsTask(board_game, leisureTask).
}).
#pos(e99@100, {goesIn(board_game, cabinet)}, {}, {
  obj(board_game). hasRole(board_game, entertainmentRole). affordsTask(board_game, leisureTask).
}).
#pos(e100@100, {goesIn(board_game, living_room)}, {}, {
  obj(board_game). hasRole(board_game, entertainmentRole). affordsTask(board_game, leisureTask).
}).
#pos(e101@100, {goesIn(board_game, shelf)}, {}, {
  obj(board_game). hasRole(board_game, entertainmentRole). affordsTask(board_game, leisureTask).
}).
#pos(e102@100, {goesIn(bone, bathroom)}, {}, {
  obj(bone). hasPhysicalQuality(bone, fragile). hasPhysicalQuality(bone, heavy). hasRole(bone, consumableRole). affordsTask(bone, foodPreparationTask).
}).
#pos(e103@100, {goesIn(bone, closet)}, {}, {
  obj(bone). hasPhysicalQuality(bone, fragile). hasPhysicalQuality(bone, heavy). hasRole(bone, consumableRole). affordsTask(bone, foodPreparationTask).
}).
#pos(e104@100, {goesIn(bone, kitchen)}, {}, {
  obj(bone). hasPhysicalQuality(bone, fragile). hasPhysicalQuality(bone, heavy). hasRole(bone, consumableRole). affordsTask(bone, foodPreparationTask).
}).
#pos(e105@100, {goesIn(bone, library)}, {}, {
  obj(bone). hasPhysicalQuality(bone, fragile). hasPhysicalQuality(bone, heavy). hasRole(bone, consumableRole). affordsTask(bone, foodPreparationTask).
}).
#pos(e106@100, {goesIn(bone, living_room)}, {}, {
  obj(bone). hasPhysicalQuality(bone, fragile). hasPhysicalQuality(bone, heavy). hasRole(bone, consumableRole). affordsTask(bone, foodPreparationTask).
}).
#pos(e107@100, {goesIn(bone, pantry)}, {}, {
  obj(bone). hasPhysicalQuality(bone, fragile). hasPhysicalQuality(bone, heavy). hasRole(bone, consumableRole). affordsTask(bone, foodPreparationTask).
}).
#pos(e108@100, {goesIn(bone, storage_room)}, {}, {
  obj(bone). hasPhysicalQuality(bone, fragile). hasPhysicalQuality(bone, heavy). hasRole(bone, consumableRole). affordsTask(bone, foodPreparationTask).
}).
#pos(e109@100, {goesIn(bones, garage)}, {}, {
  obj(bones). hasPhysicalQuality(bones, fragile). hasPhysicalQuality(bones, rigid). hasRole(bones, toolRole).
}).
#pos(e110@100, {goesIn(book, bed)}, {}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask).
}).
#pos(e111@100, {goesIn(book, bedroom)}, {}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask).
}).
#pos(e112@100, {goesIn(book, closet)}, {}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask).
}).
#pos(e113@100, {goesIn(book, drawer)}, {}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask).
}).
#pos(e114@100, {goesIn(book, garden)}, {}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask).
}).
#pos(e115@100, {goesIn(book, home_office)}, {}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask).
}).
#pos(e116@100, {goesIn(book, library)}, {}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask).
}).
#pos(e117@100, {goesIn(book, living_room)}, {}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask).
}).
#pos(e118@100, {goesIn(book, shelf)}, {}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask).
}).
#pos(e119@100, {goesIn(book, table)}, {}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask).
}).
#pos(e120@100, {goesIn(book_end, bedroom)}, {}, {
  obj(book_end). hasPhysicalQuality(book_end, heavy). hasPhysicalQuality(book_end, rigid). hasRole(book_end, furnitureRole). affordsTask(book_end, storageTask).
}).
#pos(e121@100, {goesIn(book_end, closet)}, {}, {
  obj(book_end). hasPhysicalQuality(book_end, heavy). hasPhysicalQuality(book_end, rigid). hasRole(book_end, furnitureRole). affordsTask(book_end, storageTask).
}).
#pos(e122@100, {goesIn(book_end, library)}, {}, {
  obj(book_end). hasPhysicalQuality(book_end, heavy). hasPhysicalQuality(book_end, rigid). hasRole(book_end, furnitureRole). affordsTask(book_end, storageTask).
}).
#pos(e123@100, {goesIn(book_end, shelf)}, {}, {
  obj(book_end). hasPhysicalQuality(book_end, heavy). hasPhysicalQuality(book_end, rigid). hasRole(book_end, furnitureRole). affordsTask(book_end, storageTask).
}).
#pos(e124@100, {goesIn(bookcase, bedroom)}, {}, {
  obj(bookcase). hasPhysicalQuality(bookcase, heavy). hasPhysicalQuality(bookcase, rigid). hasRole(bookcase, storageContainerRole). affordsTask(bookcase, storageTask).
}).
#pos(e125@100, {goesIn(bookcase, home_office)}, {}, {
  obj(bookcase). hasPhysicalQuality(bookcase, heavy). hasPhysicalQuality(bookcase, rigid). hasRole(bookcase, storageContainerRole). affordsTask(bookcase, storageTask).
}).
#pos(e126@100, {goesIn(bookcase, living_room)}, {}, {
  obj(bookcase). hasPhysicalQuality(bookcase, heavy). hasPhysicalQuality(bookcase, rigid). hasRole(bookcase, storageContainerRole). affordsTask(bookcase, storageTask).
}).
#pos(e127@100, {goesIn(bookend, library)}, {}, {
  obj(bookend). hasPhysicalQuality(bookend, heavy). hasPhysicalQuality(bookend, rigid). hasRole(bookend, furnitureRole). affordsTask(bookend, storageTask).
}).
#pos(e128@100, {goesIn(bookend, shelf)}, {}, {
  obj(bookend). hasPhysicalQuality(bookend, heavy). hasPhysicalQuality(bookend, rigid). hasRole(bookend, furnitureRole). affordsTask(bookend, storageTask).
}).
#pos(e129@100, {goesIn(books, bed)}, {}, {
  obj(books). hasPhysicalQuality(books, lightweight). hasPhysicalQuality(books, washable). hasRole(books, documentRole). affordsTask(books, workStudyTask).
}).
#pos(e130@100, {goesIn(books, shelf)}, {}, {
  obj(books). hasPhysicalQuality(books, lightweight). hasPhysicalQuality(books, washable). hasRole(books, documentRole). affordsTask(books, workStudyTask).
}).
#pos(e131@100, {goesIn(books, storage_room)}, {}, {
  obj(books). hasPhysicalQuality(books, lightweight). hasPhysicalQuality(books, washable). hasRole(books, documentRole). affordsTask(books, workStudyTask).
}).
#pos(e132@100, {goesIn(books, table)}, {}, {
  obj(books). hasPhysicalQuality(books, lightweight). hasPhysicalQuality(books, washable). hasRole(books, documentRole). affordsTask(books, workStudyTask).
}).
#pos(e133@100, {goesIn(bookshelf, bedroom)}, {}, {
  obj(bookshelf). hasPhysicalQuality(bookshelf, heavy). hasPhysicalQuality(bookshelf, rigid). hasRole(bookshelf, storageContainerRole). affordsTask(bookshelf, storageTask).
}).
#pos(e134@100, {goesIn(bookshelf, library)}, {}, {
  obj(bookshelf). hasPhysicalQuality(bookshelf, heavy). hasPhysicalQuality(bookshelf, rigid). hasRole(bookshelf, storageContainerRole). affordsTask(bookshelf, storageTask).
}).
#pos(e135@100, {goesIn(boots, bedroom)}, {}, {
  obj(boots). hasPhysicalQuality(boots, heavy). hasPhysicalQuality(boots, soft_Deformable). hasRole(boots, clothingRole). affordsTask(boots, dressingTask).
}).
#pos(e136@100, {goesIn(boots, closet)}, {}, {
  obj(boots). hasPhysicalQuality(boots, heavy). hasPhysicalQuality(boots, soft_Deformable). hasRole(boots, clothingRole). affordsTask(boots, dressingTask).
}).
#pos(e137@100, {goesIn(bottle, bedroom)}, {}, {
  obj(bottle). hasPhysicalQuality(bottle, hasContainer). hasRole(bottle, storageContainerRole). affordsTask(bottle, eatingDrinkingTask).
}).
#pos(e138@100, {goesIn(bottle, fridge)}, {}, {
  obj(bottle). hasPhysicalQuality(bottle, hasContainer). hasRole(bottle, storageContainerRole). affordsTask(bottle, eatingDrinkingTask).
}).
#pos(e139@100, {goesIn(bottled_water, fridge)}, {}, {
  obj(bottled_water). hasPhysicalQuality(bottled_water, liquid). hasRole(bottled_water, consumableRole). affordsTask(bottled_water, eatingDrinkingTask).
}).
#pos(e140@100, {goesIn(bowl, cabinet)}, {}, {
  obj(bowl). hasPhysicalQuality(bowl, hasContainer). hasRole(bowl, storageContainerRole). affordsTask(bowl, eatingDrinkingTask). affordsTask(bowl, foodPreparationTask).
}).
#pos(e141@100, {goesIn(bowl, fridge)}, {}, {
  obj(bowl). hasPhysicalQuality(bowl, hasContainer). hasRole(bowl, storageContainerRole). affordsTask(bowl, eatingDrinkingTask). affordsTask(bowl, foodPreparationTask).
}).
#pos(e142@100, {goesIn(bowl, kitchen)}, {}, {
  obj(bowl). hasPhysicalQuality(bowl, hasContainer). hasRole(bowl, storageContainerRole). affordsTask(bowl, eatingDrinkingTask). affordsTask(bowl, foodPreparationTask).
}).
#pos(e143@100, {goesIn(bowl, sink)}, {}, {
  obj(bowl). hasPhysicalQuality(bowl, hasContainer). hasRole(bowl, storageContainerRole). affordsTask(bowl, eatingDrinkingTask). affordsTask(bowl, foodPreparationTask).
}).
#pos(e144@100, {goesIn(bowl, table)}, {}, {
  obj(bowl). hasPhysicalQuality(bowl, hasContainer). hasRole(bowl, storageContainerRole). affordsTask(bowl, eatingDrinkingTask). affordsTask(bowl, foodPreparationTask).
}).
#pos(e145@100, {goesIn(box, bedroom)}, {}, {
  obj(box). hasPhysicalQuality(box, heavy). hasPhysicalQuality(box, rigid). hasRole(box, storageContainerRole). affordsTask(box, storageTask).
}).
#pos(e146@100, {goesIn(box, closet)}, {}, {
  obj(box). hasPhysicalQuality(box, heavy). hasPhysicalQuality(box, rigid). hasRole(box, storageContainerRole). affordsTask(box, storageTask).
}).
#pos(e147@100, {goesIn(box, garage)}, {}, {
  obj(box). hasPhysicalQuality(box, heavy). hasPhysicalQuality(box, rigid). hasRole(box, storageContainerRole). affordsTask(box, storageTask).
}).
#pos(e148@100, {goesIn(box, storage_room)}, {}, {
  obj(box). hasPhysicalQuality(box, heavy). hasPhysicalQuality(box, rigid). hasRole(box, storageContainerRole). affordsTask(box, storageTask).
}).
#pos(e149@100, {goesIn(boxes, bedroom)}, {}, {
  obj(boxes). hasPhysicalQuality(boxes, heavy). hasPhysicalQuality(boxes, rigid). hasRole(boxes, storageContainerRole). affordsTask(boxes, storageTask).
}).
#pos(e150@100, {goesIn(boxes, closet)}, {}, {
  obj(boxes). hasPhysicalQuality(boxes, heavy). hasPhysicalQuality(boxes, rigid). hasRole(boxes, storageContainerRole). affordsTask(boxes, storageTask).
}).
#pos(e151@100, {goesIn(boxes, garage)}, {}, {
  obj(boxes). hasPhysicalQuality(boxes, heavy). hasPhysicalQuality(boxes, rigid). hasRole(boxes, storageContainerRole). affordsTask(boxes, storageTask).
}).
#pos(e152@100, {goesIn(boxes, storage_room)}, {}, {
  obj(boxes). hasPhysicalQuality(boxes, heavy). hasPhysicalQuality(boxes, rigid). hasRole(boxes, storageContainerRole). affordsTask(boxes, storageTask).
}).
#pos(e153@100, {goesIn(bra, drawer)}, {}, {
  obj(bra). hasPhysicalQuality(bra, lightweight). hasPhysicalQuality(bra, soft_Deformable). hasRole(bra, clothingRole). affordsTask(bra, dressingTask).
}).
#pos(e154@100, {goesIn(bread, fridge)}, {}, {
  obj(bread). hasPhysicalQuality(bread, granular). hasPhysicalQuality(bread, perishable). hasRole(bread, consumableRole). affordsTask(bread, eatingDrinkingTask). affordsTask(bread, foodPreparationTask).
}).
#pos(e155@100, {goesIn(bread, kitchen)}, {}, {
  obj(bread). hasPhysicalQuality(bread, granular). hasPhysicalQuality(bread, perishable). hasRole(bread, consumableRole). affordsTask(bread, eatingDrinkingTask). affordsTask(bread, foodPreparationTask).
}).
#pos(e156@100, {goesIn(bread, pantry)}, {}, {
  obj(bread). hasPhysicalQuality(bread, granular). hasPhysicalQuality(bread, perishable). hasRole(bread, consumableRole). affordsTask(bread, eatingDrinkingTask). affordsTask(bread, foodPreparationTask).
}).
#pos(e157@100, {goesIn(broccoli, kitchen)}, {}, {
  obj(broccoli). hasPhysicalQuality(broccoli, granular). hasPhysicalQuality(broccoli, perishable). hasRole(broccoli, consumableRole). affordsTask(broccoli, eatingDrinkingTask).
}).
#pos(e158@100, {goesIn(broken_glass, trash)}, {}, {
  obj(broken_glass). hasPhysicalQuality(broken_glass, fragile). hasPhysicalQuality(broken_glass, sharp). hasRole(broken_glass, wasteRole).
}).
#pos(e159@100, {goesIn(broom, bedroom)}, {}, {
  obj(broom). hasPhysicalQuality(broom, fragile). hasPhysicalQuality(broom, lightweight). hasRole(broom, cleaningToolRole). affordsTask(broom, cleaningTask).
}).
#pos(e160@100, {goesIn(broom, closet)}, {}, {
  obj(broom). hasPhysicalQuality(broom, fragile). hasPhysicalQuality(broom, lightweight). hasRole(broom, cleaningToolRole). affordsTask(broom, cleaningTask).
}).
#pos(e161@100, {goesIn(broom, garage)}, {}, {
  obj(broom). hasPhysicalQuality(broom, fragile). hasPhysicalQuality(broom, lightweight). hasRole(broom, cleaningToolRole). affordsTask(broom, cleaningTask).
}).
#pos(e162@100, {goesIn(bucket, garage)}, {}, {
  obj(bucket). hasPhysicalQuality(bucket, hasContainer). hasRole(bucket, storageContainerRole). affordsTask(bucket, storageTask).
}).
#pos(e163@100, {goesIn(bucket, kitchen)}, {}, {
  obj(bucket). hasPhysicalQuality(bucket, hasContainer). hasRole(bucket, storageContainerRole). affordsTask(bucket, storageTask).
}).
#pos(e164@100, {goesIn(bucket, pantry)}, {}, {
  obj(bucket). hasPhysicalQuality(bucket, hasContainer). hasRole(bucket, storageContainerRole). affordsTask(bucket, storageTask).
}).
#pos(e165@100, {goesIn(bucket, storage_room)}, {}, {
  obj(bucket). hasPhysicalQuality(bucket, hasContainer). hasRole(bucket, storageContainerRole). affordsTask(bucket, storageTask).
}).
#pos(e166@100, {goesIn(bulb, bedroom)}, {}, {
  obj(bulb). hasPhysicalQuality(bulb, electronic). hasRole(bulb, applianceRole). affordsTask(bulb, leisureTask).
}).
#pos(e167@100, {goesIn(bullet, closet)}, {}, {
  obj(bullet). hasPhysicalQuality(bullet, sharp). hasRole(bullet, toolRole). affordsTask(bullet, maintenanceTask).
}).
#pos(e168@100, {goesIn(bullet, garage)}, {}, {
  obj(bullet). hasPhysicalQuality(bullet, sharp). hasRole(bullet, toolRole). affordsTask(bullet, maintenanceTask).
}).
#pos(e169@100, {goesIn(bullet, library)}, {}, {
  obj(bullet). hasPhysicalQuality(bullet, sharp). hasRole(bullet, toolRole). affordsTask(bullet, maintenanceTask).
}).
#pos(e170@100, {goesIn(bullet, storage_room)}, {}, {
  obj(bullet). hasPhysicalQuality(bullet, sharp). hasRole(bullet, toolRole). affordsTask(bullet, maintenanceTask).
}).
#pos(e171@100, {goesIn(bungalow, bed)}, {}, {
  obj(bungalow). hasRole(bungalow, furnitureRole).
}).
#pos(e172@100, {goesIn(bureau, bedroom)}, {}, {
  obj(bureau). hasPhysicalQuality(bureau, heavy). hasPhysicalQuality(bureau, rigid). hasRole(bureau, furnitureRole). affordsTask(bureau, storageTask).
}).
#pos(e173@100, {goesIn(bureau, home_office)}, {}, {
  obj(bureau). hasPhysicalQuality(bureau, heavy). hasPhysicalQuality(bureau, rigid). hasRole(bureau, furnitureRole). affordsTask(bureau, storageTask).
}).
#pos(e174@100, {goesIn(bus_seat, garage)}, {}, {
  obj(bus_seat). hasPhysicalQuality(bus_seat, lightweight). hasPhysicalQuality(bus_seat, soft_Deformable). hasRole(bus_seat, furnitureRole). affordsTask(bus_seat, leisureTask).
}).
#pos(e175@100, {goesIn(butter, fridge)}, {}, {
  obj(butter). hasPhysicalQuality(butter, granular). hasPhysicalQuality(butter, perishable). hasRole(butter, consumableRole). affordsTask(butter, eatingDrinkingTask).
}).
#pos(e176@100, {goesIn(buttons, garage)}, {}, {
  obj(buttons). hasPhysicalQuality(buttons, lightweight). hasPhysicalQuality(buttons, rigid). hasRole(buttons, utensilRole).
}).
#pos(e177@100, {goesIn(buttons, garden)}, {}, {
  obj(buttons). hasPhysicalQuality(buttons, lightweight). hasPhysicalQuality(buttons, rigid). hasRole(buttons, utensilRole).
}).
#pos(e178@100, {goesIn(buttons, kitchen)}, {}, {
  obj(buttons). hasPhysicalQuality(buttons, lightweight). hasPhysicalQuality(buttons, rigid). hasRole(buttons, utensilRole).
}).
#pos(e179@100, {goesIn(buttons, living_room)}, {}, {
  obj(buttons). hasPhysicalQuality(buttons, lightweight). hasPhysicalQuality(buttons, rigid). hasRole(buttons, utensilRole).
}).
#pos(e180@100, {goesIn(buttons, pantry)}, {}, {
  obj(buttons). hasPhysicalQuality(buttons, lightweight). hasPhysicalQuality(buttons, rigid). hasRole(buttons, utensilRole).
}).
#pos(e181@100, {goesIn(buttons, storage_room)}, {}, {
  obj(buttons). hasPhysicalQuality(buttons, lightweight). hasPhysicalQuality(buttons, rigid). hasRole(buttons, utensilRole).
}).
#pos(e182@100, {goesIn(cabbage, fridge)}, {}, {
  obj(cabbage). hasPhysicalQuality(cabbage, granular). hasPhysicalQuality(cabbage, perishable). hasRole(cabbage, consumableRole). affordsTask(cabbage, eatingDrinkingTask).
}).
#pos(e183@100, {goesIn(cabbage, kitchen)}, {}, {
  obj(cabbage). hasPhysicalQuality(cabbage, granular). hasPhysicalQuality(cabbage, perishable). hasRole(cabbage, consumableRole). affordsTask(cabbage, eatingDrinkingTask).
}).
#pos(e184@100, {goesIn(cabinets, kitchen)}, {}, {
  obj(cabinets). hasPhysicalQuality(cabinets, heavy). hasPhysicalQuality(cabinets, rigid). hasRole(cabinets, storageContainerRole). affordsTask(cabinets, storageTask).
}).
#pos(e185@100, {goesIn(cabinets, pantry)}, {}, {
  obj(cabinets). hasPhysicalQuality(cabinets, heavy). hasPhysicalQuality(cabinets, rigid). hasRole(cabinets, storageContainerRole). affordsTask(cabinets, storageTask).
}).
#pos(e186@100, {goesIn(cable, bedroom)}, {}, {
  obj(cable). hasPhysicalQuality(cable, electronic). hasRole(cable, toolRole). affordsTask(cable, maintenanceTask).
}).
#pos(e187@100, {goesIn(cable, library)}, {}, {
  obj(cable). hasPhysicalQuality(cable, electronic). hasRole(cable, toolRole). affordsTask(cable, maintenanceTask).
}).
#pos(e188@100, {goesIn(cable, living_room)}, {}, {
  obj(cable). hasPhysicalQuality(cable, electronic). hasRole(cable, toolRole). affordsTask(cable, maintenanceTask).
}).
#pos(e189@100, {goesIn(cable, table)}, {}, {
  obj(cable). hasPhysicalQuality(cable, electronic). hasRole(cable, toolRole). affordsTask(cable, maintenanceTask).
}).
#pos(e190@100, {goesIn(caffeine, kitchen)}, {}, {
  obj(caffeine). hasPhysicalQuality(caffeine, perishable). hasRole(caffeine, consumableRole). affordsTask(caffeine, eatingDrinkingTask).
}).
#pos(e191@100, {goesIn(cake, fridge)}, {}, {
  obj(cake). hasPhysicalQuality(cake, granular). hasPhysicalQuality(cake, perishable). hasRole(cake, consumableRole). affordsTask(cake, eatingDrinkingTask).
}).
#pos(e192@100, {goesIn(cake, kitchen)}, {}, {
  obj(cake). hasPhysicalQuality(cake, granular). hasPhysicalQuality(cake, perishable). hasRole(cake, consumableRole). affordsTask(cake, eatingDrinkingTask).
}).
#pos(e193@100, {goesIn(calculator, table)}, {}, {
  obj(calculator). hasPhysicalQuality(calculator, electronic). hasPhysicalQuality(calculator, lightweight). hasRole(calculator, toolRole). affordsTask(calculator, workStudyTask).
}).
#pos(e194@100, {goesIn(calendar, fridge)}, {}, {
  obj(calendar). hasRole(calendar, documentRole). affordsTask(calendar, workStudyTask).
}).
#pos(e195@100, {goesIn(calendar, table)}, {}, {
  obj(calendar). hasRole(calendar, documentRole). affordsTask(calendar, workStudyTask).
}).
#pos(e196@100, {goesIn(calendar_pad, table)}, {}, {
  obj(calendar_pad). hasPhysicalQuality(calendar_pad, lightweight). hasRole(calendar_pad, documentRole). affordsTask(calendar_pad, workStudyTask).
}).
#pos(e197@100, {goesIn(camera, drawer)}, {}, {
  obj(camera). hasPhysicalQuality(camera, electronic). hasPhysicalQuality(camera, lightweight). hasRole(camera, toolRole). affordsTask(camera, workStudyTask).
}).
#pos(e198@100, {goesIn(can_opener, kitchen)}, {}, {
  obj(can_opener). hasPhysicalQuality(can_opener, electronic). hasPhysicalQuality(can_opener, heavy). hasRole(can_opener, toolRole). affordsTask(can_opener, foodPreparationTask).
}).
#pos(e199@100, {goesIn(candle, bedroom)}, {}, {
  obj(candle). hasPhysicalQuality(candle, flammable). hasPhysicalQuality(candle, heated). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e200@100, {goesIn(candle, drawer)}, {}, {
  obj(candle). hasPhysicalQuality(candle, flammable). hasPhysicalQuality(candle, heated). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e201@100, {goesIn(candle, kitchen)}, {}, {
  obj(candle). hasPhysicalQuality(candle, flammable). hasPhysicalQuality(candle, heated). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e202@100, {goesIn(candle, shelf)}, {}, {
  obj(candle). hasPhysicalQuality(candle, flammable). hasPhysicalQuality(candle, heated). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e203@100, {goesIn(candle, storage_room)}, {}, {
  obj(candle). hasPhysicalQuality(candle, flammable). hasPhysicalQuality(candle, heated). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e204@100, {goesIn(candle, table)}, {}, {
  obj(candle). hasPhysicalQuality(candle, flammable). hasPhysicalQuality(candle, heated). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e205@100, {goesIn(candy, closet)}, {}, {
  obj(candy). hasPhysicalQuality(candy, perishable). hasRole(candy, consumableRole). affordsTask(candy, eatingDrinkingTask).
}).
#pos(e206@100, {goesIn(candy, garage)}, {}, {
  obj(candy). hasPhysicalQuality(candy, perishable). hasRole(candy, consumableRole). affordsTask(candy, eatingDrinkingTask).
}).
#pos(e207@100, {goesIn(candy, pantry)}, {}, {
  obj(candy). hasPhysicalQuality(candy, perishable). hasRole(candy, consumableRole). affordsTask(candy, eatingDrinkingTask).
}).
#pos(e208@100, {goesIn(candy, storage_room)}, {}, {
  obj(candy). hasPhysicalQuality(candy, perishable). hasRole(candy, consumableRole). affordsTask(candy, eatingDrinkingTask).
}).
#pos(e209@100, {goesIn(cans, kitchen)}, {}, {
  obj(cans). hasPhysicalQuality(cans, lightweight). hasPhysicalQuality(cans, rigid). hasRole(cans, storageContainerRole). affordsTask(cans, storageTask).
}).
#pos(e210@100, {goesIn(cans, pantry)}, {}, {
  obj(cans). hasPhysicalQuality(cans, lightweight). hasPhysicalQuality(cans, rigid). hasRole(cans, storageContainerRole). affordsTask(cans, storageTask).
}).
#pos(e211@100, {goesIn(cans_of_paint, closet)}, {}, {
  obj(cans_of_paint). hasPhysicalQuality(cans_of_paint, fragile). hasPhysicalQuality(cans_of_paint, liquid). hasRole(cans_of_paint, consumableRole). affordsTask(cans_of_paint, maintenanceTask).
}).
#pos(e212@100, {goesIn(cans_of_paint, garage)}, {}, {
  obj(cans_of_paint). hasPhysicalQuality(cans_of_paint, fragile). hasPhysicalQuality(cans_of_paint, liquid). hasRole(cans_of_paint, consumableRole). affordsTask(cans_of_paint, maintenanceTask).
}).
#pos(e213@100, {goesIn(cans_of_paint, storage_room)}, {}, {
  obj(cans_of_paint). hasPhysicalQuality(cans_of_paint, fragile). hasPhysicalQuality(cans_of_paint, liquid). hasRole(cans_of_paint, consumableRole). affordsTask(cans_of_paint, maintenanceTask).
}).
#pos(e214@100, {goesIn(card, garden)}, {}, {
  obj(card). hasPhysicalQuality(card, lightweight). hasRole(card, consumableRole). hasRole(card, utensilRole). affordsTask(card, eatingDrinkingTask).
}).
#pos(e215@100, {goesIn(card_case, drawer)}, {}, {
  obj(card_case). hasPhysicalQuality(card_case, hasContainer). hasPhysicalQuality(card_case, lightweight). hasRole(card_case, storageContainerRole). affordsTask(card_case, storageTask).
}).
#pos(e216@100, {goesIn(card_case, table)}, {}, {
  obj(card_case). hasPhysicalQuality(card_case, hasContainer). hasPhysicalQuality(card_case, lightweight). hasRole(card_case, storageContainerRole). affordsTask(card_case, storageTask).
}).
#pos(e217@100, {goesIn(card_catalog, kitchen)}, {}, {
  obj(card_catalog). hasRole(card_catalog, documentRole).
}).
#pos(e218@100, {goesIn(card_catalog, library)}, {}, {
  obj(card_catalog). hasRole(card_catalog, documentRole).
}).
#pos(e219@100, {goesIn(cardboard, closet)}, {}, {
  obj(cardboard). hasPhysicalQuality(cardboard, granular). hasRole(cardboard, furnitureRole). hasRole(cardboard, storageContainerRole). affordsTask(cardboard, maintenanceTask).
}).
#pos(e220@100, {goesIn(cardboard, garage)}, {}, {
  obj(cardboard). hasPhysicalQuality(cardboard, granular). hasRole(cardboard, furnitureRole). hasRole(cardboard, storageContainerRole). affordsTask(cardboard, maintenanceTask).
}).
#pos(e221@100, {goesIn(cardboard, storage_room)}, {}, {
  obj(cardboard). hasPhysicalQuality(cardboard, granular). hasRole(cardboard, furnitureRole). hasRole(cardboard, storageContainerRole). affordsTask(cardboard, maintenanceTask).
}).
#pos(e222@100, {goesIn(cardboard_box, bedroom)}, {}, {
  obj(cardboard_box). hasPhysicalQuality(cardboard_box, lightweight). hasPhysicalQuality(cardboard_box, rigid). hasRole(cardboard_box, storageContainerRole). affordsTask(cardboard_box, storageTask).
}).
#pos(e223@100, {goesIn(cardboard_box, garage)}, {}, {
  obj(cardboard_box). hasPhysicalQuality(cardboard_box, lightweight). hasPhysicalQuality(cardboard_box, rigid). hasRole(cardboard_box, storageContainerRole). affordsTask(cardboard_box, storageTask).
}).
#pos(e224@100, {goesIn(cardboard_box, trash)}, {}, {
  obj(cardboard_box). hasPhysicalQuality(cardboard_box, lightweight). hasPhysicalQuality(cardboard_box, rigid). hasRole(cardboard_box, storageContainerRole). affordsTask(cardboard_box, storageTask).
}).
#pos(e225@100, {goesIn(cards, table)}, {}, {
  obj(cards). hasRole(cards, entertainmentRole). affordsTask(cards, leisureTask).
}).
#pos(e226@100, {goesIn(carpet, bathroom)}, {}, {
  obj(carpet). hasPhysicalQuality(carpet, soft_Deformable). hasPhysicalQuality(carpet, washable). hasRole(carpet, furnitureRole). affordsTask(carpet, leisureTask).
}).
#pos(e227@100, {goesIn(carpet, bed)}, {}, {
  obj(carpet). hasPhysicalQuality(carpet, soft_Deformable). hasPhysicalQuality(carpet, washable). hasRole(carpet, furnitureRole). affordsTask(carpet, leisureTask).
}).
#pos(e228@100, {goesIn(carpet, bedroom)}, {}, {
  obj(carpet). hasPhysicalQuality(carpet, soft_Deformable). hasPhysicalQuality(carpet, washable). hasRole(carpet, furnitureRole). affordsTask(carpet, leisureTask).
}).
#pos(e229@100, {goesIn(carpet, closet)}, {}, {
  obj(carpet). hasPhysicalQuality(carpet, soft_Deformable). hasPhysicalQuality(carpet, washable). hasRole(carpet, furnitureRole). affordsTask(carpet, leisureTask).
}).
#pos(e230@100, {goesIn(carpet, library)}, {}, {
  obj(carpet). hasPhysicalQuality(carpet, soft_Deformable). hasPhysicalQuality(carpet, washable). hasRole(carpet, furnitureRole). affordsTask(carpet, leisureTask).
}).
#pos(e231@100, {goesIn(carpet, table)}, {}, {
  obj(carpet). hasPhysicalQuality(carpet, soft_Deformable). hasPhysicalQuality(carpet, washable). hasRole(carpet, furnitureRole). affordsTask(carpet, leisureTask).
}).
#pos(e232@100, {goesIn(carpeting, bed)}, {}, {
  obj(carpeting). hasPhysicalQuality(carpeting, soft_Deformable). hasPhysicalQuality(carpeting, washable). hasRole(carpeting, furnitureRole). affordsTask(carpeting, leisureTask).
}).
#pos(e233@100, {goesIn(carpeting, bedroom)}, {}, {
  obj(carpeting). hasPhysicalQuality(carpeting, soft_Deformable). hasPhysicalQuality(carpeting, washable). hasRole(carpeting, furnitureRole). affordsTask(carpeting, leisureTask).
}).
#pos(e234@100, {goesIn(carrots, fridge)}, {}, {
  obj(carrots). hasPhysicalQuality(carrots, perishable). hasRole(carrots, consumableRole). affordsTask(carrots, foodPreparationTask).
}).
#pos(e235@100, {goesIn(carrots, storage_room)}, {}, {
  obj(carrots). hasPhysicalQuality(carrots, perishable). hasRole(carrots, consumableRole). affordsTask(carrots, foodPreparationTask).
}).
#pos(e236@100, {goesIn(cash_register, storage_room)}, {}, {
  obj(cash_register). hasPhysicalQuality(cash_register, electronic). hasPhysicalQuality(cash_register, heavy). hasRole(cash_register, applianceRole). affordsTask(cash_register, maintenanceTask).
}).
#pos(e237@100, {goesIn(cat, bed)}, {}, {
  obj(cat). hasPhysicalQuality(cat, lightweight). hasPhysicalQuality(cat, soft_Deformable). hasRole(cat, furnitureRole). affordsTask(cat, leisureTask).
}).
#pos(e238@100, {goesIn(cat, bedroom)}, {}, {
  obj(cat). hasPhysicalQuality(cat, lightweight). hasPhysicalQuality(cat, soft_Deformable). hasRole(cat, furnitureRole). affordsTask(cat, leisureTask).
}).
#pos(e239@100, {goesIn(cat, closet)}, {}, {
  obj(cat). hasPhysicalQuality(cat, lightweight). hasPhysicalQuality(cat, soft_Deformable). hasRole(cat, furnitureRole). affordsTask(cat, leisureTask).
}).
#pos(e240@100, {goesIn(cat, garage)}, {}, {
  obj(cat). hasPhysicalQuality(cat, lightweight). hasPhysicalQuality(cat, soft_Deformable). hasRole(cat, furnitureRole). affordsTask(cat, leisureTask).
}).
#pos(e241@100, {goesIn(cat, garden)}, {}, {
  obj(cat). hasPhysicalQuality(cat, lightweight). hasPhysicalQuality(cat, soft_Deformable). hasRole(cat, furnitureRole). affordsTask(cat, leisureTask).
}).
#pos(e242@100, {goesIn(cat, hallway)}, {}, {
  obj(cat). hasPhysicalQuality(cat, lightweight). hasPhysicalQuality(cat, soft_Deformable). hasRole(cat, furnitureRole). affordsTask(cat, leisureTask).
}).
#pos(e243@100, {goesIn(cat, kitchen)}, {}, {
  obj(cat). hasPhysicalQuality(cat, lightweight). hasPhysicalQuality(cat, soft_Deformable). hasRole(cat, furnitureRole). affordsTask(cat, leisureTask).
}).
#pos(e244@100, {goesIn(cat, library)}, {}, {
  obj(cat). hasPhysicalQuality(cat, lightweight). hasPhysicalQuality(cat, soft_Deformable). hasRole(cat, furnitureRole). affordsTask(cat, leisureTask).
}).
#pos(e245@100, {goesIn(cat, living_room)}, {}, {
  obj(cat). hasPhysicalQuality(cat, lightweight). hasPhysicalQuality(cat, soft_Deformable). hasRole(cat, furnitureRole). affordsTask(cat, leisureTask).
}).
#pos(e246@100, {goesIn(cat, shelf)}, {}, {
  obj(cat). hasPhysicalQuality(cat, lightweight). hasPhysicalQuality(cat, soft_Deformable). hasRole(cat, furnitureRole). affordsTask(cat, leisureTask).
}).
#pos(e247@100, {goesIn(cat, storage_room)}, {}, {
  obj(cat). hasPhysicalQuality(cat, lightweight). hasPhysicalQuality(cat, soft_Deformable). hasRole(cat, furnitureRole). affordsTask(cat, leisureTask).
}).
#pos(e248@100, {goesIn(cat, table)}, {}, {
  obj(cat). hasPhysicalQuality(cat, lightweight). hasPhysicalQuality(cat, soft_Deformable). hasRole(cat, furnitureRole). affordsTask(cat, leisureTask).
}).
#pos(e249@100, {goesIn(cd_rom, closet)}, {}, {
  obj(cd_rom). hasPhysicalQuality(cd_rom, electronic). hasPhysicalQuality(cd_rom, lightweight). hasRole(cd_rom, storageContainerRole). affordsTask(cd_rom, workStudyTask).
}).
#pos(e250@100, {goesIn(cd_rom, garage)}, {}, {
  obj(cd_rom). hasPhysicalQuality(cd_rom, electronic). hasPhysicalQuality(cd_rom, lightweight). hasRole(cd_rom, storageContainerRole). affordsTask(cd_rom, workStudyTask).
}).
#pos(e251@100, {goesIn(cd_rom, storage_room)}, {}, {
  obj(cd_rom). hasPhysicalQuality(cd_rom, electronic). hasPhysicalQuality(cd_rom, lightweight). hasRole(cd_rom, storageContainerRole). affordsTask(cd_rom, workStudyTask).
}).
#pos(e252@100, {goesIn(cd_rom, table)}, {}, {
  obj(cd_rom). hasPhysicalQuality(cd_rom, electronic). hasPhysicalQuality(cd_rom, lightweight). hasRole(cd_rom, storageContainerRole). affordsTask(cd_rom, workStudyTask).
}).
#pos(e253@100, {goesIn(cds, drawer)}, {}, {
  obj(cds). hasPhysicalQuality(cds, lightweight). hasPhysicalQuality(cds, rigid). hasRole(cds, storageContainerRole). affordsTask(cds, leisureTask).
}).
#pos(e254@100, {goesIn(ceiling, bedroom)}, {}, {
  obj(ceiling). hasPhysicalQuality(ceiling, rigid). hasRole(ceiling, furnitureRole).
}).
#pos(e255@100, {goesIn(celery, fridge)}, {}, {
  obj(celery). hasPhysicalQuality(celery, granular). hasPhysicalQuality(celery, perishable). hasRole(celery, consumableRole). affordsTask(celery, eatingDrinkingTask).
}).
#pos(e256@100, {goesIn(cellar, closet)}, {}, {
  obj(cellar). hasPhysicalQuality(cellar, heavy). hasPhysicalQuality(cellar, rigid). hasRole(cellar, storageContainerRole). affordsTask(cellar, storageTask).
}).
#pos(e257@100, {goesIn(cellar, storage_room)}, {}, {
  obj(cellar). hasPhysicalQuality(cellar, heavy). hasPhysicalQuality(cellar, rigid). hasRole(cellar, storageContainerRole). affordsTask(cellar, storageTask).
}).
#pos(e258@100, {goesIn(cereal, cabinet)}, {}, {
  obj(cereal). hasPhysicalQuality(cereal, granular). hasPhysicalQuality(cereal, perishable). hasRole(cereal, consumableRole). affordsTask(cereal, eatingDrinkingTask).
}).
#pos(e259@100, {goesIn(cereal, closet)}, {}, {
  obj(cereal). hasPhysicalQuality(cereal, granular). hasPhysicalQuality(cereal, perishable). hasRole(cereal, consumableRole). affordsTask(cereal, eatingDrinkingTask).
}).
#pos(e260@100, {goesIn(cereal, fridge)}, {}, {
  obj(cereal). hasPhysicalQuality(cereal, granular). hasPhysicalQuality(cereal, perishable). hasRole(cereal, consumableRole). affordsTask(cereal, eatingDrinkingTask).
}).
#pos(e261@100, {goesIn(cereal, garage)}, {}, {
  obj(cereal). hasPhysicalQuality(cereal, granular). hasPhysicalQuality(cereal, perishable). hasRole(cereal, consumableRole). affordsTask(cereal, eatingDrinkingTask).
}).
#pos(e262@100, {goesIn(cereal, kitchen)}, {}, {
  obj(cereal). hasPhysicalQuality(cereal, granular). hasPhysicalQuality(cereal, perishable). hasRole(cereal, consumableRole). affordsTask(cereal, eatingDrinkingTask).
}).
#pos(e263@100, {goesIn(cereal, pantry)}, {}, {
  obj(cereal). hasPhysicalQuality(cereal, granular). hasPhysicalQuality(cereal, perishable). hasRole(cereal, consumableRole). affordsTask(cereal, eatingDrinkingTask).
}).
#pos(e264@100, {goesIn(cereal, shelf)}, {}, {
  obj(cereal). hasPhysicalQuality(cereal, granular). hasPhysicalQuality(cereal, perishable). hasRole(cereal, consumableRole). affordsTask(cereal, eatingDrinkingTask).
}).
#pos(e265@100, {goesIn(cereal, storage_room)}, {}, {
  obj(cereal). hasPhysicalQuality(cereal, granular). hasPhysicalQuality(cereal, perishable). hasRole(cereal, consumableRole). affordsTask(cereal, eatingDrinkingTask).
}).
#pos(e266@100, {goesIn(chain, garage)}, {}, {
  obj(chain). hasPhysicalQuality(chain, heavy). hasPhysicalQuality(chain, rigid). hasRole(chain, toolRole). affordsTask(chain, maintenanceTask).
}).
#pos(e267@100, {goesIn(chain, storage_room)}, {}, {
  obj(chain). hasPhysicalQuality(chain, heavy). hasPhysicalQuality(chain, rigid). hasRole(chain, toolRole). affordsTask(chain, maintenanceTask).
}).
#pos(e268@100, {goesIn(chair, bedroom)}, {}, {
  obj(chair). hasPhysicalQuality(chair, heavy). hasPhysicalQuality(chair, rigid). hasRole(chair, furnitureRole). affordsTask(chair, storageTask).
}).
#pos(e269@100, {goesIn(chair, closet)}, {}, {
  obj(chair). hasPhysicalQuality(chair, heavy). hasPhysicalQuality(chair, rigid). hasRole(chair, furnitureRole). affordsTask(chair, storageTask).
}).
#pos(e270@100, {goesIn(chair, garden)}, {}, {
  obj(chair). hasPhysicalQuality(chair, heavy). hasPhysicalQuality(chair, rigid). hasRole(chair, furnitureRole). affordsTask(chair, storageTask).
}).
#pos(e271@100, {goesIn(chair, hallway)}, {}, {
  obj(chair). hasPhysicalQuality(chair, heavy). hasPhysicalQuality(chair, rigid). hasRole(chair, furnitureRole). affordsTask(chair, storageTask).
}).
#pos(e272@100, {goesIn(chair, kitchen)}, {}, {
  obj(chair). hasPhysicalQuality(chair, heavy). hasPhysicalQuality(chair, rigid). hasRole(chair, furnitureRole). affordsTask(chair, storageTask).
}).
#pos(e273@100, {goesIn(chair, library)}, {}, {
  obj(chair). hasPhysicalQuality(chair, heavy). hasPhysicalQuality(chair, rigid). hasRole(chair, furnitureRole). affordsTask(chair, storageTask).
}).
#pos(e274@100, {goesIn(chair, living_room)}, {}, {
  obj(chair). hasPhysicalQuality(chair, heavy). hasPhysicalQuality(chair, rigid). hasRole(chair, furnitureRole). affordsTask(chair, storageTask).
}).
#pos(e275@100, {goesIn(chair, table)}, {}, {
  obj(chair). hasPhysicalQuality(chair, heavy). hasPhysicalQuality(chair, rigid). hasRole(chair, furnitureRole). affordsTask(chair, storageTask).
}).
#pos(e276@100, {goesIn(check, closet)}, {}, {
  obj(check). hasPhysicalQuality(check, electronic). hasRole(check, toolRole). affordsTask(check, maintenanceTask).
}).
#pos(e277@100, {goesIn(check, garage)}, {}, {
  obj(check). hasPhysicalQuality(check, electronic). hasRole(check, toolRole). affordsTask(check, maintenanceTask).
}).
#pos(e278@100, {goesIn(check, storage_room)}, {}, {
  obj(check). hasPhysicalQuality(check, electronic). hasRole(check, toolRole). affordsTask(check, maintenanceTask).
}).
#pos(e279@100, {goesIn(checkbook, drawer)}, {}, {
  obj(checkbook). hasRole(checkbook, documentRole).
}).
#pos(e280@100, {goesIn(checkbook, table)}, {}, {
  obj(checkbook). hasRole(checkbook, documentRole).
}).
#pos(e281@100, {goesIn(checkbook_holder, drawer)}, {}, {
  obj(checkbook_holder). hasPhysicalQuality(checkbook_holder, hasContainer). hasRole(checkbook_holder, storageContainerRole). affordsTask(checkbook_holder, storageTask).
}).
#pos(e282@100, {goesIn(checkbook_holder, table)}, {}, {
  obj(checkbook_holder). hasPhysicalQuality(checkbook_holder, hasContainer). hasRole(checkbook_holder, storageContainerRole). affordsTask(checkbook_holder, storageTask).
}).
#pos(e283@100, {goesIn(cheese, fridge)}, {}, {
  obj(cheese). hasPhysicalQuality(cheese, perishable). hasRole(cheese, consumableRole). affordsTask(cheese, eatingDrinkingTask).
}).
#pos(e284@100, {goesIn(cheese, kitchen)}, {}, {
  obj(cheese). hasPhysicalQuality(cheese, perishable). hasRole(cheese, consumableRole). affordsTask(cheese, eatingDrinkingTask).
}).
#pos(e285@100, {goesIn(chess_bishop, playroom)}, {}, {
  obj(chess_bishop). hasPhysicalQuality(chess_bishop, rigid). hasRole(chess_bishop, toolRole). affordsTask(chess_bishop, leisureTask).
}).
#pos(e286@100, {goesIn(chess_board, bedroom)}, {}, {
  obj(chess_board). hasPhysicalQuality(chess_board, heavy). hasPhysicalQuality(chess_board, rigid). hasRole(chess_board, furnitureRole). affordsTask(chess_board, leisureTask).
}).
#pos(e287@100, {goesIn(chess_board, library)}, {}, {
  obj(chess_board). hasPhysicalQuality(chess_board, heavy). hasPhysicalQuality(chess_board, rigid). hasRole(chess_board, furnitureRole). affordsTask(chess_board, leisureTask).
}).
#pos(e288@100, {goesIn(chess_king, library)}, {}, {
  obj(chess_king). hasPhysicalQuality(chess_king, lightweight). hasRole(chess_king, entertainmentRole). affordsTask(chess_king, leisureTask).
}).
#pos(e289@100, {goesIn(chess_king, living_room)}, {}, {
  obj(chess_king). hasPhysicalQuality(chess_king, lightweight). hasRole(chess_king, entertainmentRole). affordsTask(chess_king, leisureTask).
}).
#pos(e290@100, {goesIn(chess_king, playroom)}, {}, {
  obj(chess_king). hasPhysicalQuality(chess_king, lightweight). hasRole(chess_king, entertainmentRole). affordsTask(chess_king, leisureTask).
}).
#pos(e291@100, {goesIn(chess_knight, library)}, {}, {
  obj(chess_knight). hasPhysicalQuality(chess_knight, rigid). hasRole(chess_knight, entertainmentRole). affordsTask(chess_knight, leisureTask).
}).
#pos(e292@100, {goesIn(chess_knight, playroom)}, {}, {
  obj(chess_knight). hasPhysicalQuality(chess_knight, rigid). hasRole(chess_knight, entertainmentRole). affordsTask(chess_knight, leisureTask).
}).
#pos(e293@100, {goesIn(chess_pawn, living_room)}, {}, {
  obj(chess_pawn). hasPhysicalQuality(chess_pawn, lightweight). hasRole(chess_pawn, entertainmentRole). affordsTask(chess_pawn, leisureTask).
}).
#pos(e294@100, {goesIn(chess_pawn, playroom)}, {}, {
  obj(chess_pawn). hasPhysicalQuality(chess_pawn, lightweight). hasRole(chess_pawn, entertainmentRole). affordsTask(chess_pawn, leisureTask).
}).
#pos(e295@100, {goesIn(chess_piece, library)}, {}, {
  obj(chess_piece). hasPhysicalQuality(chess_piece, lightweight). hasRole(chess_piece, entertainmentRole). affordsTask(chess_piece, leisureTask).
}).
#pos(e296@100, {goesIn(chess_piece, living_room)}, {}, {
  obj(chess_piece). hasPhysicalQuality(chess_piece, lightweight). hasRole(chess_piece, entertainmentRole). affordsTask(chess_piece, leisureTask).
}).
#pos(e297@100, {goesIn(chess_piece, playroom)}, {}, {
  obj(chess_piece). hasPhysicalQuality(chess_piece, lightweight). hasRole(chess_piece, entertainmentRole). affordsTask(chess_piece, leisureTask).
}).
#pos(e298@100, {goesIn(chess_queen, living_room)}, {}, {
  obj(chess_queen). hasRole(chess_queen, toolRole).
}).
#pos(e299@100, {goesIn(chess_queen, playroom)}, {}, {
  obj(chess_queen). hasRole(chess_queen, toolRole).
}).
#pos(e300@100, {goesIn(chess_rook, library)}, {}, {
  obj(chess_rook). hasPhysicalQuality(chess_rook, heavy). hasPhysicalQuality(chess_rook, rigid). hasRole(chess_rook, toolRole). affordsTask(chess_rook, leisureTask).
}).
#pos(e301@100, {goesIn(chess_rook, living_room)}, {}, {
  obj(chess_rook). hasPhysicalQuality(chess_rook, heavy). hasPhysicalQuality(chess_rook, rigid). hasRole(chess_rook, toolRole). affordsTask(chess_rook, leisureTask).
}).
#pos(e302@100, {goesIn(chess_rook, playroom)}, {}, {
  obj(chess_rook). hasPhysicalQuality(chess_rook, heavy). hasPhysicalQuality(chess_rook, rigid). hasRole(chess_rook, toolRole). affordsTask(chess_rook, leisureTask).
}).
#pos(e303@100, {goesIn(chess_set, cabinet)}, {}, {
  obj(chess_set). hasPhysicalQuality(chess_set, lightweight). hasPhysicalQuality(chess_set, rigid). hasRole(chess_set, entertainmentRole). affordsTask(chess_set, leisureTask).
}).
#pos(e304@100, {goesIn(chess_set, drawer)}, {}, {
  obj(chess_set). hasPhysicalQuality(chess_set, lightweight). hasPhysicalQuality(chess_set, rigid). hasRole(chess_set, entertainmentRole). affordsTask(chess_set, leisureTask).
}).
#pos(e305@100, {goesIn(chess_set, living_room)}, {}, {
  obj(chess_set). hasPhysicalQuality(chess_set, lightweight). hasPhysicalQuality(chess_set, rigid). hasRole(chess_set, entertainmentRole). affordsTask(chess_set, leisureTask).
}).
#pos(e306@100, {goesIn(chess_set, playroom)}, {}, {
  obj(chess_set). hasPhysicalQuality(chess_set, lightweight). hasPhysicalQuality(chess_set, rigid). hasRole(chess_set, entertainmentRole). affordsTask(chess_set, leisureTask).
}).
#pos(e307@100, {goesIn(chest, bedroom)}, {}, {
  obj(chest). hasPhysicalQuality(chest, heavy). hasPhysicalQuality(chest, rigid). hasRole(chest, storageContainerRole). affordsTask(chest, storageTask).
}).
#pos(e308@100, {goesIn(chimney, garage)}, {}, {
  obj(chimney). hasPhysicalQuality(chimney, heavy). hasRole(chimney, applianceRole).
}).
#pos(e309@100, {goesIn(chine_cotton, closet)}, {}, {
  obj(chine_cotton). hasPhysicalQuality(chine_cotton, lightweight). hasPhysicalQuality(chine_cotton, soft_Deformable). hasRole(chine_cotton, clothingRole). affordsTask(chine_cotton, dressingTask).
}).
#pos(e310@100, {goesIn(chips, kitchen)}, {}, {
  obj(chips). hasPhysicalQuality(chips, granular). hasPhysicalQuality(chips, perishable). hasRole(chips, consumableRole). affordsTask(chips, eatingDrinkingTask).
}).
#pos(e311@100, {goesIn(chips, pantry)}, {}, {
  obj(chips). hasPhysicalQuality(chips, granular). hasPhysicalQuality(chips, perishable). hasRole(chips, consumableRole). affordsTask(chips, eatingDrinkingTask).
}).
#pos(e312@100, {goesIn(chocolate, closet)}, {}, {
  obj(chocolate). hasPhysicalQuality(chocolate, perishable). hasRole(chocolate, consumableRole). affordsTask(chocolate, eatingDrinkingTask).
}).
#pos(e313@100, {goesIn(chocolate, garage)}, {}, {
  obj(chocolate). hasPhysicalQuality(chocolate, perishable). hasRole(chocolate, consumableRole). affordsTask(chocolate, eatingDrinkingTask).
}).
#pos(e314@100, {goesIn(chocolate, storage_room)}, {}, {
  obj(chocolate). hasPhysicalQuality(chocolate, perishable). hasRole(chocolate, consumableRole). affordsTask(chocolate, eatingDrinkingTask).
}).
#pos(e315@100, {goesIn(cinnamon, kitchen)}, {}, {
  obj(cinnamon). hasPhysicalQuality(cinnamon, perishable). hasRole(cinnamon, consumableRole). affordsTask(cinnamon, foodPreparationTask).
}).
#pos(e316@100, {goesIn(clip, table)}, {}, {
  obj(clip). hasPhysicalQuality(clip, lightweight). hasRole(clip, toolRole). affordsTask(clip, maintenanceTask).
}).
#pos(e317@100, {goesIn(clipboard, table)}, {}, {
  obj(clipboard). hasPhysicalQuality(clipboard, lightweight). hasPhysicalQuality(clipboard, rigid). hasRole(clipboard, utensilRole). affordsTask(clipboard, foodPreparationTask).
}).
#pos(e318@100, {goesIn(clock, bedroom)}, {}, {
  obj(clock). hasPhysicalQuality(clock, rigid). hasRole(clock, decorationRole).
}).
#pos(e319@100, {goesIn(clock, shelf)}, {}, {
  obj(clock). hasPhysicalQuality(clock, rigid). hasRole(clock, decorationRole).
}).
#pos(e320@100, {goesIn(clock, table)}, {}, {
  obj(clock). hasPhysicalQuality(clock, rigid). hasRole(clock, decorationRole).
}).
#pos(e321@100, {goesIn(closet, bedroom)}, {}, {
  obj(closet). hasPhysicalQuality(closet, heavy). hasPhysicalQuality(closet, rigid). hasRole(closet, storageContainerRole). affordsTask(closet, storageTask).
}).
#pos(e322@100, {goesIn(closet, closet)}, {}, {
  obj(closet). hasPhysicalQuality(closet, heavy). hasPhysicalQuality(closet, rigid). hasRole(closet, storageContainerRole). affordsTask(closet, storageTask).
}).
#pos(e323@100, {goesIn(cloth, bathroom)}, {}, {
  obj(cloth). hasPhysicalQuality(cloth, soft_Deformable). hasPhysicalQuality(cloth, washable). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask).
}).
#pos(e324@100, {goesIn(cloth, bedroom)}, {}, {
  obj(cloth). hasPhysicalQuality(cloth, soft_Deformable). hasPhysicalQuality(cloth, washable). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask).
}).
#pos(e325@100, {goesIn(cloth, closet)}, {}, {
  obj(cloth). hasPhysicalQuality(cloth, soft_Deformable). hasPhysicalQuality(cloth, washable). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask).
}).
#pos(e326@100, {goesIn(cloth, hallway)}, {}, {
  obj(cloth). hasPhysicalQuality(cloth, soft_Deformable). hasPhysicalQuality(cloth, washable). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask).
}).
#pos(e327@100, {goesIn(cloth, kitchen)}, {}, {
  obj(cloth). hasPhysicalQuality(cloth, soft_Deformable). hasPhysicalQuality(cloth, washable). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask).
}).
#pos(e328@100, {goesIn(cloth, library)}, {}, {
  obj(cloth). hasPhysicalQuality(cloth, soft_Deformable). hasPhysicalQuality(cloth, washable). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask).
}).
#pos(e329@100, {goesIn(cloth, table)}, {}, {
  obj(cloth). hasPhysicalQuality(cloth, soft_Deformable). hasPhysicalQuality(cloth, washable). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask).
}).
#pos(e330@100, {goesIn(clothes, bed)}, {}, {
  obj(clothes). hasPhysicalQuality(clothes, soft_Deformable). hasPhysicalQuality(clothes, washable). hasRole(clothes, clothingRole). affordsTask(clothes, dressingTask).
}).
#pos(e331@100, {goesIn(clothes, bedroom)}, {}, {
  obj(clothes). hasPhysicalQuality(clothes, soft_Deformable). hasPhysicalQuality(clothes, washable). hasRole(clothes, clothingRole). affordsTask(clothes, dressingTask).
}).
#pos(e332@100, {goesIn(clothes, closet)}, {}, {
  obj(clothes). hasPhysicalQuality(clothes, soft_Deformable). hasPhysicalQuality(clothes, washable). hasRole(clothes, clothingRole). affordsTask(clothes, dressingTask).
}).
#pos(e333@100, {goesIn(clothes, drawer)}, {}, {
  obj(clothes). hasPhysicalQuality(clothes, soft_Deformable). hasPhysicalQuality(clothes, washable). hasRole(clothes, clothingRole). affordsTask(clothes, dressingTask).
}).
#pos(e334@100, {goesIn(clothes, garage)}, {}, {
  obj(clothes). hasPhysicalQuality(clothes, soft_Deformable). hasPhysicalQuality(clothes, washable). hasRole(clothes, clothingRole). affordsTask(clothes, dressingTask).
}).
#pos(e335@100, {goesIn(clothes, storage_room)}, {}, {
  obj(clothes). hasPhysicalQuality(clothes, soft_Deformable). hasPhysicalQuality(clothes, washable). hasRole(clothes, clothingRole). affordsTask(clothes, dressingTask).
}).
#pos(e336@100, {goesIn(clothing, bedroom)}, {}, {
  obj(clothing). hasPhysicalQuality(clothing, lightweight). hasPhysicalQuality(clothing, soft_Deformable). hasRole(clothing, clothingRole). affordsTask(clothing, dressingTask).
}).
#pos(e337@100, {goesIn(clothing, closet)}, {}, {
  obj(clothing). hasPhysicalQuality(clothing, lightweight). hasPhysicalQuality(clothing, soft_Deformable). hasRole(clothing, clothingRole). affordsTask(clothing, dressingTask).
}).
#pos(e338@100, {goesIn(clothing, drawer)}, {}, {
  obj(clothing). hasPhysicalQuality(clothing, lightweight). hasPhysicalQuality(clothing, soft_Deformable). hasRole(clothing, clothingRole). affordsTask(clothing, dressingTask).
}).
#pos(e339@100, {goesIn(clothing, garage)}, {}, {
  obj(clothing). hasPhysicalQuality(clothing, lightweight). hasPhysicalQuality(clothing, soft_Deformable). hasRole(clothing, clothingRole). affordsTask(clothing, dressingTask).
}).
#pos(e340@100, {goesIn(clothing, library)}, {}, {
  obj(clothing). hasPhysicalQuality(clothing, lightweight). hasPhysicalQuality(clothing, soft_Deformable). hasRole(clothing, clothingRole). affordsTask(clothing, dressingTask).
}).
#pos(e341@100, {goesIn(clothing, storage_room)}, {}, {
  obj(clothing). hasPhysicalQuality(clothing, lightweight). hasPhysicalQuality(clothing, soft_Deformable). hasRole(clothing, clothingRole). affordsTask(clothing, dressingTask).
}).
#pos(e342@100, {goesIn(clothing_shelf, bedroom)}, {}, {
  obj(clothing_shelf). hasPhysicalQuality(clothing_shelf, heavy). hasPhysicalQuality(clothing_shelf, rigid). hasRole(clothing_shelf, storageContainerRole). affordsTask(clothing_shelf, storageTask).
}).
#pos(e343@100, {goesIn(clothing_shelf, cabinet)}, {}, {
  obj(clothing_shelf). hasPhysicalQuality(clothing_shelf, heavy). hasPhysicalQuality(clothing_shelf, rigid). hasRole(clothing_shelf, storageContainerRole). affordsTask(clothing_shelf, storageTask).
}).
#pos(e344@100, {goesIn(clothing_shelf, closet)}, {}, {
  obj(clothing_shelf). hasPhysicalQuality(clothing_shelf, heavy). hasPhysicalQuality(clothing_shelf, rigid). hasRole(clothing_shelf, storageContainerRole). affordsTask(clothing_shelf, storageTask).
}).
#pos(e345@100, {goesIn(coal, bed)}, {}, {
  obj(coal). hasPhysicalQuality(coal, flammable). hasPhysicalQuality(coal, heavy). hasRole(coal, consumableRole). affordsTask(coal, maintenanceTask).
}).
#pos(e346@100, {goesIn(coal, storage_room)}, {}, {
  obj(coal). hasPhysicalQuality(coal, flammable). hasPhysicalQuality(coal, heavy). hasRole(coal, consumableRole). affordsTask(coal, maintenanceTask).
}).
#pos(e347@100, {goesIn(coat_hangers, bedroom)}, {}, {
  obj(coat_hangers). hasPhysicalQuality(coat_hangers, lightweight). hasPhysicalQuality(coat_hangers, rigid). hasRole(coat_hangers, storageContainerRole). affordsTask(coat_hangers, storageTask).
}).
#pos(e348@100, {goesIn(coat_hangers, closet)}, {}, {
  obj(coat_hangers). hasPhysicalQuality(coat_hangers, lightweight). hasPhysicalQuality(coat_hangers, rigid). hasRole(coat_hangers, storageContainerRole). affordsTask(coat_hangers, storageTask).
}).
#pos(e349@100, {goesIn(coats, bedroom)}, {}, {
  obj(coats). hasRole(coats, clothingRole). affordsTask(coats, dressingTask).
}).
#pos(e350@100, {goesIn(coats, closet)}, {}, {
  obj(coats). hasRole(coats, clothingRole). affordsTask(coats, dressingTask).
}).
#pos(e351@100, {goesIn(coffee, closet)}, {}, {
  obj(coffee). hasPhysicalQuality(coffee, liquid). hasPhysicalQuality(coffee, perishable). hasRole(coffee, consumableRole). affordsTask(coffee, eatingDrinkingTask).
}).
#pos(e352@100, {goesIn(coffee, garage)}, {}, {
  obj(coffee). hasPhysicalQuality(coffee, liquid). hasPhysicalQuality(coffee, perishable). hasRole(coffee, consumableRole). affordsTask(coffee, eatingDrinkingTask).
}).
#pos(e353@100, {goesIn(coffee, kitchen)}, {}, {
  obj(coffee). hasPhysicalQuality(coffee, liquid). hasPhysicalQuality(coffee, perishable). hasRole(coffee, consumableRole). affordsTask(coffee, eatingDrinkingTask).
}).
#pos(e354@100, {goesIn(coffee, pantry)}, {}, {
  obj(coffee). hasPhysicalQuality(coffee, liquid). hasPhysicalQuality(coffee, perishable). hasRole(coffee, consumableRole). affordsTask(coffee, eatingDrinkingTask).
}).
#pos(e355@100, {goesIn(coffee, shelf)}, {}, {
  obj(coffee). hasPhysicalQuality(coffee, liquid). hasPhysicalQuality(coffee, perishable). hasRole(coffee, consumableRole). affordsTask(coffee, eatingDrinkingTask).
}).
#pos(e356@100, {goesIn(coffee_cups, cabinet)}, {}, {
  obj(coffee_cups). hasPhysicalQuality(coffee_cups, hasContainer). hasPhysicalQuality(coffee_cups, lightweight). hasRole(coffee_cups, utensilRole). affordsTask(coffee_cups, eatingDrinkingTask).
}).
#pos(e357@100, {goesIn(coffee_mug, cabinet)}, {}, {
  obj(coffee_mug). hasPhysicalQuality(coffee_mug, hasContainer). hasPhysicalQuality(coffee_mug, liquid). hasRole(coffee_mug, utensilRole). affordsTask(coffee_mug, eatingDrinkingTask).
}).
#pos(e358@100, {goesIn(coffee_mug, kitchen)}, {}, {
  obj(coffee_mug). hasPhysicalQuality(coffee_mug, hasContainer). hasPhysicalQuality(coffee_mug, liquid). hasRole(coffee_mug, utensilRole). affordsTask(coffee_mug, eatingDrinkingTask).
}).
#pos(e359@100, {goesIn(coffee_mug, shelf)}, {}, {
  obj(coffee_mug). hasPhysicalQuality(coffee_mug, hasContainer). hasPhysicalQuality(coffee_mug, liquid). hasRole(coffee_mug, utensilRole). affordsTask(coffee_mug, eatingDrinkingTask).
}).
#pos(e360@100, {goesIn(coin, garden)}, {}, {
  obj(coin). hasPhysicalQuality(coin, lightweight). hasRole(coin, consumableRole).
}).
#pos(e361@100, {goesIn(coins, bathroom)}, {}, {
  obj(coins). hasPhysicalQuality(coins, lightweight). hasRole(coins, consumableRole). affordsTask(coins, eatingDrinkingTask).
}).
#pos(e362@100, {goesIn(coins, bedroom)}, {}, {
  obj(coins). hasPhysicalQuality(coins, lightweight). hasRole(coins, consumableRole). affordsTask(coins, eatingDrinkingTask).
}).
#pos(e363@100, {goesIn(coins, closet)}, {}, {
  obj(coins). hasPhysicalQuality(coins, lightweight). hasRole(coins, consumableRole). affordsTask(coins, eatingDrinkingTask).
}).
#pos(e364@100, {goesIn(coins, drawer)}, {}, {
  obj(coins). hasPhysicalQuality(coins, lightweight). hasRole(coins, consumableRole). affordsTask(coins, eatingDrinkingTask).
}).
#pos(e365@100, {goesIn(coins, garage)}, {}, {
  obj(coins). hasPhysicalQuality(coins, lightweight). hasRole(coins, consumableRole). affordsTask(coins, eatingDrinkingTask).
}).
#pos(e366@100, {goesIn(coins, library)}, {}, {
  obj(coins). hasPhysicalQuality(coins, lightweight). hasRole(coins, consumableRole). affordsTask(coins, eatingDrinkingTask).
}).
#pos(e367@100, {goesIn(coins, pantry)}, {}, {
  obj(coins). hasPhysicalQuality(coins, lightweight). hasRole(coins, consumableRole). affordsTask(coins, eatingDrinkingTask).
}).
#pos(e368@100, {goesIn(coins, table)}, {}, {
  obj(coins). hasPhysicalQuality(coins, lightweight). hasRole(coins, consumableRole). affordsTask(coins, eatingDrinkingTask).
}).
#pos(e369@100, {goesIn(coke, kitchen)}, {}, {
  obj(coke). hasPhysicalQuality(coke, liquid). hasRole(coke, consumableRole). affordsTask(coke, eatingDrinkingTask).
}).
#pos(e370@100, {goesIn(coke, pantry)}, {}, {
  obj(coke). hasPhysicalQuality(coke, liquid). hasRole(coke, consumableRole). affordsTask(coke, eatingDrinkingTask).
}).
#pos(e371@100, {goesIn(cold_faucet, bathroom)}, {}, {
  obj(cold_faucet). hasPhysicalQuality(cold_faucet, heavy). hasPhysicalQuality(cold_faucet, liquid). hasRole(cold_faucet, utensilRole). affordsTask(cold_faucet, eatingDrinkingTask).
}).
#pos(e372@100, {goesIn(cold_faucet, closet)}, {}, {
  obj(cold_faucet). hasPhysicalQuality(cold_faucet, heavy). hasPhysicalQuality(cold_faucet, liquid). hasRole(cold_faucet, utensilRole). affordsTask(cold_faucet, eatingDrinkingTask).
}).
#pos(e373@100, {goesIn(cold_faucet, kitchen)}, {}, {
  obj(cold_faucet). hasPhysicalQuality(cold_faucet, heavy). hasPhysicalQuality(cold_faucet, liquid). hasRole(cold_faucet, utensilRole). affordsTask(cold_faucet, eatingDrinkingTask).
}).
#pos(e374@100, {goesIn(cold_faucet, library)}, {}, {
  obj(cold_faucet). hasPhysicalQuality(cold_faucet, heavy). hasPhysicalQuality(cold_faucet, liquid). hasRole(cold_faucet, utensilRole). affordsTask(cold_faucet, eatingDrinkingTask).
}).
#pos(e375@100, {goesIn(cold_faucet, storage_room)}, {}, {
  obj(cold_faucet). hasPhysicalQuality(cold_faucet, heavy). hasPhysicalQuality(cold_faucet, liquid). hasRole(cold_faucet, utensilRole). affordsTask(cold_faucet, eatingDrinkingTask).
}).
#pos(e376@100, {goesIn(cold_storage, fridge)}, {}, {
  obj(cold_storage). hasPhysicalQuality(cold_storage, requiresCooling). hasRole(cold_storage, applianceRole). affordsTask(cold_storage, storageTask).
}).
#pos(e377@100, {goesIn(cold_tap, kitchen)}, {}, {
  obj(cold_tap). hasPhysicalQuality(cold_tap, electronic). hasPhysicalQuality(cold_tap, liquid). hasRole(cold_tap, toolRole). affordsTask(cold_tap, hygieneTask).
}).
#pos(e378@100, {goesIn(cold_tap, sink)}, {}, {
  obj(cold_tap). hasPhysicalQuality(cold_tap, electronic). hasPhysicalQuality(cold_tap, liquid). hasRole(cold_tap, toolRole). affordsTask(cold_tap, hygieneTask).
}).
#pos(e379@100, {goesIn(cold_water, fridge)}, {}, {
  obj(cold_water). hasPhysicalQuality(cold_water, liquid). hasPhysicalQuality(cold_water, perishable). hasRole(cold_water, consumableRole). affordsTask(cold_water, eatingDrinkingTask).
}).
#pos(e380@100, {goesIn(cold_water, library)}, {}, {
  obj(cold_water). hasPhysicalQuality(cold_water, liquid). hasPhysicalQuality(cold_water, perishable). hasRole(cold_water, consumableRole). affordsTask(cold_water, eatingDrinkingTask).
}).
#pos(e381@100, {goesIn(column, bedroom)}, {}, {
  obj(column). hasPhysicalQuality(column, heavy). hasPhysicalQuality(column, rigid). hasRole(column, furnitureRole).
}).
#pos(e382@100, {goesIn(column, library)}, {}, {
  obj(column). hasPhysicalQuality(column, heavy). hasPhysicalQuality(column, rigid). hasRole(column, furnitureRole).
}).
#pos(e383@100, {goesIn(column, table)}, {}, {
  obj(column). hasPhysicalQuality(column, heavy). hasPhysicalQuality(column, rigid). hasRole(column, furnitureRole).
}).
#pos(e384@100, {goesIn(comforter, bedroom)}, {}, {
  obj(comforter). hasPhysicalQuality(comforter, soft_Deformable). hasPhysicalQuality(comforter, washable). hasRole(comforter, beddingRole). affordsTask(comforter, sleepingTask).
}).
#pos(e385@100, {goesIn(comforter, hallway)}, {}, {
  obj(comforter). hasPhysicalQuality(comforter, soft_Deformable). hasPhysicalQuality(comforter, washable). hasRole(comforter, beddingRole). affordsTask(comforter, sleepingTask).
}).
#pos(e386@100, {goesIn(comforter, storage_room)}, {}, {
  obj(comforter). hasPhysicalQuality(comforter, soft_Deformable). hasPhysicalQuality(comforter, washable). hasRole(comforter, beddingRole). affordsTask(comforter, sleepingTask).
}).
#pos(e387@100, {goesIn(compost, garden)}, {}, {
  obj(compost). hasPhysicalQuality(compost, perishable). hasRole(compost, consumableRole). hasRole(compost, wasteRole). affordsTask(compost, maintenanceTask).
}).
#pos(e388@100, {goesIn(computer, bedroom)}, {}, {
  obj(computer). hasPhysicalQuality(computer, electronic). hasPhysicalQuality(computer, heavy). hasRole(computer, applianceRole). affordsTask(computer, workStudyTask).
}).
#pos(e389@100, {goesIn(computer, closet)}, {}, {
  obj(computer). hasPhysicalQuality(computer, electronic). hasPhysicalQuality(computer, heavy). hasRole(computer, applianceRole). affordsTask(computer, workStudyTask).
}).
#pos(e390@100, {goesIn(computer, garage)}, {}, {
  obj(computer). hasPhysicalQuality(computer, electronic). hasPhysicalQuality(computer, heavy). hasRole(computer, applianceRole). affordsTask(computer, workStudyTask).
}).
#pos(e391@100, {goesIn(computer, library)}, {}, {
  obj(computer). hasPhysicalQuality(computer, electronic). hasPhysicalQuality(computer, heavy). hasRole(computer, applianceRole). affordsTask(computer, workStudyTask).
}).
#pos(e392@100, {goesIn(computer, storage_room)}, {}, {
  obj(computer). hasPhysicalQuality(computer, electronic). hasPhysicalQuality(computer, heavy). hasRole(computer, applianceRole). affordsTask(computer, workStudyTask).
}).
#pos(e393@100, {goesIn(computer, table)}, {}, {
  obj(computer). hasPhysicalQuality(computer, electronic). hasPhysicalQuality(computer, heavy). hasRole(computer, applianceRole). affordsTask(computer, workStudyTask).
}).
#pos(e394@100, {goesIn(concrete, bathroom)}, {}, {
  obj(concrete). hasPhysicalQuality(concrete, granular). hasPhysicalQuality(concrete, rigid). hasRole(concrete, consumableRole).
}).
#pos(e395@100, {goesIn(concrete, bedroom)}, {}, {
  obj(concrete). hasPhysicalQuality(concrete, granular). hasPhysicalQuality(concrete, rigid). hasRole(concrete, consumableRole).
}).
#pos(e396@100, {goesIn(concrete, closet)}, {}, {
  obj(concrete). hasPhysicalQuality(concrete, granular). hasPhysicalQuality(concrete, rigid). hasRole(concrete, consumableRole).
}).
#pos(e397@100, {goesIn(container, bedroom)}, {}, {
  obj(container). hasPhysicalQuality(container, hasContainer). hasRole(container, storageContainerRole). affordsTask(container, storageTask).
}).
#pos(e398@100, {goesIn(container, cabinet)}, {}, {
  obj(container). hasPhysicalQuality(container, hasContainer). hasRole(container, storageContainerRole). affordsTask(container, storageTask).
}).
#pos(e399@100, {goesIn(container, closet)}, {}, {
  obj(container). hasPhysicalQuality(container, hasContainer). hasRole(container, storageContainerRole). affordsTask(container, storageTask).
}).
#pos(e400@100, {goesIn(container, fridge)}, {}, {
  obj(container). hasPhysicalQuality(container, hasContainer). hasRole(container, storageContainerRole). affordsTask(container, storageTask).
}).
#pos(e401@100, {goesIn(container, garage)}, {}, {
  obj(container). hasPhysicalQuality(container, hasContainer). hasRole(container, storageContainerRole). affordsTask(container, storageTask).
}).
#pos(e402@100, {goesIn(container, kitchen)}, {}, {
  obj(container). hasPhysicalQuality(container, hasContainer). hasRole(container, storageContainerRole). affordsTask(container, storageTask).
}).
#pos(e403@100, {goesIn(container, pantry)}, {}, {
  obj(container). hasPhysicalQuality(container, hasContainer). hasRole(container, storageContainerRole). affordsTask(container, storageTask).
}).
#pos(e404@100, {goesIn(container_can, cabinet)}, {}, {
  obj(container_can). hasPhysicalQuality(container_can, hasContainer). hasRole(container_can, storageContainerRole). affordsTask(container_can, storageTask).
}).
#pos(e405@100, {goesIn(container_can, garage)}, {}, {
  obj(container_can). hasPhysicalQuality(container_can, hasContainer). hasRole(container_can, storageContainerRole). affordsTask(container_can, storageTask).
}).
#pos(e406@100, {goesIn(container_can, kitchen)}, {}, {
  obj(container_can). hasPhysicalQuality(container_can, hasContainer). hasRole(container_can, storageContainerRole). affordsTask(container_can, storageTask).
}).
#pos(e407@100, {goesIn(container_can, pantry)}, {}, {
  obj(container_can). hasPhysicalQuality(container_can, hasContainer). hasRole(container_can, storageContainerRole). affordsTask(container_can, storageTask).
}).
#pos(e408@100, {goesIn(container_cup, kitchen)}, {}, {
  obj(container_cup). hasPhysicalQuality(container_cup, hasContainer). hasRole(container_cup, storageContainerRole). hasRole(container_cup, utensilRole). affordsTask(container_cup, eatingDrinkingTask). affordsTask(container_cup, storageTask).
}).
#pos(e409@100, {goesIn(cook, kitchen)}, {}, {
  obj(cook). hasPhysicalQuality(cook, heavy). hasPhysicalQuality(cook, rigid). hasRole(cook, cookwareRole). affordsTask(cook, foodPreparationTask).
}).
#pos(e410@100, {goesIn(cookie, pantry)}, {}, {
  obj(cookie). hasPhysicalQuality(cookie, granular). hasRole(cookie, consumableRole). affordsTask(cookie, eatingDrinkingTask).
}).
#pos(e411@100, {goesIn(cookie_jar, shelf)}, {}, {
  obj(cookie_jar). hasPhysicalQuality(cookie_jar, hasContainer). hasPhysicalQuality(cookie_jar, heavy). hasRole(cookie_jar, storageContainerRole). affordsTask(cookie_jar, storageTask).
}).
#pos(e412@100, {goesIn(cookies, bedroom)}, {}, {
  obj(cookies). hasPhysicalQuality(cookies, granular). hasRole(cookies, consumableRole). affordsTask(cookies, eatingDrinkingTask).
}).
#pos(e413@100, {goesIn(cookies, closet)}, {}, {
  obj(cookies). hasPhysicalQuality(cookies, granular). hasRole(cookies, consumableRole). affordsTask(cookies, eatingDrinkingTask).
}).
#pos(e414@100, {goesIn(cookies, fridge)}, {}, {
  obj(cookies). hasPhysicalQuality(cookies, granular). hasRole(cookies, consumableRole). affordsTask(cookies, eatingDrinkingTask).
}).
#pos(e415@100, {goesIn(cookies, garage)}, {}, {
  obj(cookies). hasPhysicalQuality(cookies, granular). hasRole(cookies, consumableRole). affordsTask(cookies, eatingDrinkingTask).
}).
#pos(e416@100, {goesIn(cookies, kitchen)}, {}, {
  obj(cookies). hasPhysicalQuality(cookies, granular). hasRole(cookies, consumableRole). affordsTask(cookies, eatingDrinkingTask).
}).
#pos(e417@100, {goesIn(cookies, pantry)}, {}, {
  obj(cookies). hasPhysicalQuality(cookies, granular). hasRole(cookies, consumableRole). affordsTask(cookies, eatingDrinkingTask).
}).
#pos(e418@100, {goesIn(cookies, storage_room)}, {}, {
  obj(cookies). hasPhysicalQuality(cookies, granular). hasRole(cookies, consumableRole). affordsTask(cookies, eatingDrinkingTask).
}).
#pos(e419@100, {goesIn(cooling_device, bedroom)}, {}, {
  obj(cooling_device). hasPhysicalQuality(cooling_device, requiresCooling). hasRole(cooling_device, applianceRole). affordsTask(cooling_device, storageTask).
}).
#pos(e420@100, {goesIn(cooling_device, library)}, {}, {
  obj(cooling_device). hasPhysicalQuality(cooling_device, requiresCooling). hasRole(cooling_device, applianceRole). affordsTask(cooling_device, storageTask).
}).
#pos(e421@100, {goesIn(corner_cupboard, kitchen)}, {}, {
  obj(corner_cupboard). hasPhysicalQuality(corner_cupboard, heavy). hasPhysicalQuality(corner_cupboard, rigid). hasRole(corner_cupboard, storageContainerRole). affordsTask(corner_cupboard, storageTask).
}).
#pos(e422@100, {goesIn(cotton, closet)}, {}, {
  obj(cotton). hasPhysicalQuality(cotton, lightweight). hasPhysicalQuality(cotton, soft_Deformable). hasRole(cotton, clothingRole). hasRole(cotton, consumableRole).
}).
#pos(e423@100, {goesIn(couch, bedroom)}, {}, {
  obj(couch). hasPhysicalQuality(couch, heavy). hasPhysicalQuality(couch, rigid). hasRole(couch, furnitureRole). affordsTask(couch, leisureTask).
}).
#pos(e424@100, {goesIn(couch, living_room)}, {}, {
  obj(couch). hasPhysicalQuality(couch, heavy). hasPhysicalQuality(couch, rigid). hasRole(couch, furnitureRole). affordsTask(couch, leisureTask).
}).
#pos(e425@100, {goesIn(counter, kitchen)}, {}, {
  obj(counter). hasPhysicalQuality(counter, heavy). hasPhysicalQuality(counter, rigid). hasRole(counter, furnitureRole). affordsTask(counter, workStudyTask).
}).
#pos(e426@100, {goesIn(coupon, garden)}, {}, {
  obj(coupon). hasRole(coupon, consumableRole).
}).
#pos(e427@100, {goesIn(coupon, library)}, {}, {
  obj(coupon). hasRole(coupon, consumableRole).
}).
#pos(e428@100, {goesIn(cover, bedroom)}, {}, {
  obj(cover). hasPhysicalQuality(cover, lightweight). hasPhysicalQuality(cover, soft_Deformable). hasRole(cover, beddingRole). hasRole(cover, furnitureRole). affordsTask(cover, sleepingTask).
}).
#pos(e429@100, {goesIn(cover, closet)}, {}, {
  obj(cover). hasPhysicalQuality(cover, lightweight). hasPhysicalQuality(cover, soft_Deformable). hasRole(cover, beddingRole). hasRole(cover, furnitureRole). affordsTask(cover, sleepingTask).
}).
#pos(e430@100, {goesIn(cover, garage)}, {}, {
  obj(cover). hasPhysicalQuality(cover, lightweight). hasPhysicalQuality(cover, soft_Deformable). hasRole(cover, beddingRole). hasRole(cover, furnitureRole). affordsTask(cover, sleepingTask).
}).
#pos(e431@100, {goesIn(cover, kitchen)}, {}, {
  obj(cover). hasPhysicalQuality(cover, lightweight). hasPhysicalQuality(cover, soft_Deformable). hasRole(cover, beddingRole). hasRole(cover, furnitureRole). affordsTask(cover, sleepingTask).
}).
#pos(e432@100, {goesIn(cover, library)}, {}, {
  obj(cover). hasPhysicalQuality(cover, lightweight). hasPhysicalQuality(cover, soft_Deformable). hasRole(cover, beddingRole). hasRole(cover, furnitureRole). affordsTask(cover, sleepingTask).
}).
#pos(e433@100, {goesIn(credit_card_wallet, closet)}, {}, {
  obj(credit_card_wallet). hasPhysicalQuality(credit_card_wallet, hasContainer). hasPhysicalQuality(credit_card_wallet, lightweight). hasRole(credit_card_wallet, storageContainerRole). affordsTask(credit_card_wallet, leisureTask).
}).
#pos(e434@100, {goesIn(credit_card_wallet, table)}, {}, {
  obj(credit_card_wallet). hasPhysicalQuality(credit_card_wallet, hasContainer). hasPhysicalQuality(credit_card_wallet, lightweight). hasRole(credit_card_wallet, storageContainerRole). affordsTask(credit_card_wallet, leisureTask).
}).
#pos(e435@100, {goesIn(credit_cards, drawer)}, {}, {
  obj(credit_cards). hasRole(credit_cards, consumableRole).
}).
#pos(e436@100, {goesIn(crumbs, bedroom)}, {}, {
  obj(crumbs). hasPhysicalQuality(crumbs, granular). hasRole(crumbs, consumableRole). affordsTask(crumbs, eatingDrinkingTask).
}).
#pos(e437@100, {goesIn(crumbs, closet)}, {}, {
  obj(crumbs). hasPhysicalQuality(crumbs, granular). hasRole(crumbs, consumableRole). affordsTask(crumbs, eatingDrinkingTask).
}).
#pos(e438@100, {goesIn(crumbs, library)}, {}, {
  obj(crumbs). hasPhysicalQuality(crumbs, granular). hasRole(crumbs, consumableRole). affordsTask(crumbs, eatingDrinkingTask).
}).
#pos(e439@100, {goesIn(crumbs, living_room)}, {}, {
  obj(crumbs). hasPhysicalQuality(crumbs, granular). hasRole(crumbs, consumableRole). affordsTask(crumbs, eatingDrinkingTask).
}).
#pos(e440@100, {goesIn(crumbs, pantry)}, {}, {
  obj(crumbs). hasPhysicalQuality(crumbs, granular). hasRole(crumbs, consumableRole). affordsTask(crumbs, eatingDrinkingTask).
}).
#pos(e441@100, {goesIn(crumbs, table)}, {}, {
  obj(crumbs). hasPhysicalQuality(crumbs, granular). hasRole(crumbs, consumableRole). affordsTask(crumbs, eatingDrinkingTask).
}).
#pos(e442@100, {goesIn(cup, bedroom)}, {}, {
  obj(cup). hasPhysicalQuality(cup, hasContainer). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e443@100, {goesIn(cup, closet)}, {}, {
  obj(cup). hasPhysicalQuality(cup, hasContainer). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e444@100, {goesIn(cup, kitchen)}, {}, {
  obj(cup). hasPhysicalQuality(cup, hasContainer). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e445@100, {goesIn(cup, library)}, {}, {
  obj(cup). hasPhysicalQuality(cup, hasContainer). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e446@100, {goesIn(cup, shelf)}, {}, {
  obj(cup). hasPhysicalQuality(cup, hasContainer). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e447@100, {goesIn(cup, sink)}, {}, {
  obj(cup). hasPhysicalQuality(cup, hasContainer). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e448@100, {goesIn(cup, table)}, {}, {
  obj(cup). hasPhysicalQuality(cup, hasContainer). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e449@100, {goesIn(curtain, bedroom)}, {}, {
  obj(curtain). hasPhysicalQuality(curtain, lightweight). hasPhysicalQuality(curtain, soft_Deformable). hasRole(curtain, furnitureRole). affordsTask(curtain, leisureTask).
}).
#pos(e450@100, {goesIn(curtain, garage)}, {}, {
  obj(curtain). hasPhysicalQuality(curtain, lightweight). hasPhysicalQuality(curtain, soft_Deformable). hasRole(curtain, furnitureRole). affordsTask(curtain, leisureTask).
}).
#pos(e451@100, {goesIn(curtain, storage_room)}, {}, {
  obj(curtain). hasPhysicalQuality(curtain, lightweight). hasPhysicalQuality(curtain, soft_Deformable). hasRole(curtain, furnitureRole). affordsTask(curtain, leisureTask).
}).
#pos(e452@100, {goesIn(dandruff_shampoo, bathroom)}, {}, {
  obj(dandruff_shampoo). hasPhysicalQuality(dandruff_shampoo, liquid). hasPhysicalQuality(dandruff_shampoo, toxic_Hazardous). hasRole(dandruff_shampoo, cleaningToolRole). affordsTask(dandruff_shampoo, hygieneTask).
}).
#pos(e453@100, {goesIn(dandruff_shampoo, bedroom)}, {}, {
  obj(dandruff_shampoo). hasPhysicalQuality(dandruff_shampoo, liquid). hasPhysicalQuality(dandruff_shampoo, toxic_Hazardous). hasRole(dandruff_shampoo, cleaningToolRole). affordsTask(dandruff_shampoo, hygieneTask).
}).
#pos(e454@100, {goesIn(dandruff_shampoo, library)}, {}, {
  obj(dandruff_shampoo). hasPhysicalQuality(dandruff_shampoo, liquid). hasPhysicalQuality(dandruff_shampoo, toxic_Hazardous). hasRole(dandruff_shampoo, cleaningToolRole). affordsTask(dandruff_shampoo, hygieneTask).
}).
#pos(e455@100, {goesIn(denim, bedroom)}, {}, {
  obj(denim). hasPhysicalQuality(denim, soft_Deformable). hasPhysicalQuality(denim, washable). hasRole(denim, clothingRole). affordsTask(denim, dressingTask).
}).
#pos(e456@100, {goesIn(denim, closet)}, {}, {
  obj(denim). hasPhysicalQuality(denim, soft_Deformable). hasPhysicalQuality(denim, washable). hasRole(denim, clothingRole). affordsTask(denim, dressingTask).
}).
#pos(e457@100, {goesIn(dental_floss, bathroom)}, {}, {
  obj(dental_floss). hasPhysicalQuality(dental_floss, fragile). hasPhysicalQuality(dental_floss, lightweight). hasRole(dental_floss, cleaningToolRole). affordsTask(dental_floss, hygieneTask).
}).
#pos(e458@100, {goesIn(dental_floss, library)}, {}, {
  obj(dental_floss). hasPhysicalQuality(dental_floss, fragile). hasPhysicalQuality(dental_floss, lightweight). hasRole(dental_floss, cleaningToolRole). affordsTask(dental_floss, hygieneTask).
}).
#pos(e459@100, {goesIn(desk, bedroom)}, {}, {
  obj(desk). hasPhysicalQuality(desk, heavy). hasPhysicalQuality(desk, rigid). hasRole(desk, furnitureRole). affordsTask(desk, workStudyTask).
}).
#pos(e460@100, {goesIn(desk, home_office)}, {}, {
  obj(desk). hasPhysicalQuality(desk, heavy). hasPhysicalQuality(desk, rigid). hasRole(desk, furnitureRole). affordsTask(desk, workStudyTask).
}).
#pos(e461@100, {goesIn(desk, library)}, {}, {
  obj(desk). hasPhysicalQuality(desk, heavy). hasPhysicalQuality(desk, rigid). hasRole(desk, furnitureRole). affordsTask(desk, workStudyTask).
}).
#pos(e462@100, {goesIn(desk, living_room)}, {}, {
  obj(desk). hasPhysicalQuality(desk, heavy). hasPhysicalQuality(desk, rigid). hasRole(desk, furnitureRole). affordsTask(desk, workStudyTask).
}).
#pos(e463@100, {goesIn(desk_drawer, table)}, {}, {
  obj(desk_drawer). hasPhysicalQuality(desk_drawer, lightweight). hasPhysicalQuality(desk_drawer, rigid). hasRole(desk_drawer, storageContainerRole). affordsTask(desk_drawer, workStudyTask).
}).
#pos(e464@100, {goesIn(desk_tray, bedroom)}, {}, {
  obj(desk_tray). hasPhysicalQuality(desk_tray, hasContainer). hasPhysicalQuality(desk_tray, lightweight). hasRole(desk_tray, storageContainerRole). affordsTask(desk_tray, storageTask).
}).
#pos(e465@100, {goesIn(desk_tray, home_office)}, {}, {
  obj(desk_tray). hasPhysicalQuality(desk_tray, hasContainer). hasPhysicalQuality(desk_tray, lightweight). hasRole(desk_tray, storageContainerRole). affordsTask(desk_tray, storageTask).
}).
#pos(e466@100, {goesIn(desk_tray, table)}, {}, {
  obj(desk_tray). hasPhysicalQuality(desk_tray, hasContainer). hasPhysicalQuality(desk_tray, lightweight). hasRole(desk_tray, storageContainerRole). affordsTask(desk_tray, storageTask).
}).
#pos(e467@100, {goesIn(desserts, fridge)}, {}, {
  obj(desserts). hasPhysicalQuality(desserts, perishable). hasRole(desserts, consumableRole). affordsTask(desserts, eatingDrinkingTask).
}).
#pos(e468@100, {goesIn(detergent, closet)}, {}, {
  obj(detergent). hasPhysicalQuality(detergent, liquid). hasPhysicalQuality(detergent, toxic_Hazardous). hasRole(detergent, cleaningToolRole). affordsTask(detergent, cleaningTask).
}).
#pos(e469@100, {goesIn(detergent, storage_room)}, {}, {
  obj(detergent). hasPhysicalQuality(detergent, liquid). hasPhysicalQuality(detergent, toxic_Hazardous). hasRole(detergent, cleaningToolRole). affordsTask(detergent, cleaningTask).
}).
#pos(e470@100, {goesIn(dice, living_room)}, {}, {
  obj(dice). hasPhysicalQuality(dice, lightweight). hasPhysicalQuality(dice, rigid). hasRole(dice, entertainmentRole). affordsTask(dice, leisureTask).
}).
#pos(e471@100, {goesIn(dictionaries, library)}, {}, {
  obj(dictionaries). hasPhysicalQuality(dictionaries, electronic). hasPhysicalQuality(dictionaries, lightweight). hasRole(dictionaries, toolRole). affordsTask(dictionaries, workStudyTask).
}).
#pos(e472@100, {goesIn(dictionary, library)}, {}, {
  obj(dictionary). hasPhysicalQuality(dictionary, electronic). hasPhysicalQuality(dictionary, lightweight). hasRole(dictionary, toolRole). affordsTask(dictionary, workStudyTask).
}).
#pos(e473@100, {goesIn(dictionary, shelf)}, {}, {
  obj(dictionary). hasPhysicalQuality(dictionary, electronic). hasPhysicalQuality(dictionary, lightweight). hasRole(dictionary, toolRole). affordsTask(dictionary, workStudyTask).
}).
#pos(e474@100, {goesIn(dictionary, table)}, {}, {
  obj(dictionary). hasPhysicalQuality(dictionary, electronic). hasPhysicalQuality(dictionary, lightweight). hasRole(dictionary, toolRole). affordsTask(dictionary, workStudyTask).
}).
#pos(e475@100, {goesIn(dinner_plate, cabinet)}, {}, {
  obj(dinner_plate). hasPhysicalQuality(dinner_plate, hasContainer). hasPhysicalQuality(dinner_plate, rigid). hasRole(dinner_plate, utensilRole). affordsTask(dinner_plate, eatingDrinkingTask).
}).
#pos(e476@100, {goesIn(dinner_plate, table)}, {}, {
  obj(dinner_plate). hasPhysicalQuality(dinner_plate, hasContainer). hasPhysicalQuality(dinner_plate, rigid). hasRole(dinner_plate, utensilRole). affordsTask(dinner_plate, eatingDrinkingTask).
}).
#pos(e477@100, {goesIn(dishwasher, kitchen)}, {}, {
  obj(dishwasher). hasPhysicalQuality(dishwasher, electronic). hasPhysicalQuality(dishwasher, heavy). hasRole(dishwasher, applianceRole). affordsTask(dishwasher, cleaningTask).
}).
#pos(e478@100, {goesIn(disk, library)}, {}, {
  obj(disk). hasRole(disk, storageContainerRole). affordsTask(disk, storageTask).
}).
#pos(e479@100, {goesIn(display_cabinet, living_room)}, {}, {
  obj(display_cabinet). hasPhysicalQuality(display_cabinet, heavy). hasPhysicalQuality(display_cabinet, rigid). hasRole(display_cabinet, furnitureRole). affordsTask(display_cabinet, storageTask).
}).
#pos(e480@100, {goesIn(display_cabinet, storage_room)}, {}, {
  obj(display_cabinet). hasPhysicalQuality(display_cabinet, heavy). hasPhysicalQuality(display_cabinet, rigid). hasRole(display_cabinet, furnitureRole). affordsTask(display_cabinet, storageTask).
}).
#pos(e481@100, {goesIn(disposable_razor, bathroom)}, {}, {
  obj(disposable_razor). hasPhysicalQuality(disposable_razor, fragile). hasPhysicalQuality(disposable_razor, sharp). hasRole(disposable_razor, utensilRole). affordsTask(disposable_razor, foodPreparationTask).
}).
#pos(e482@100, {goesIn(disposable_razor, kitchen)}, {}, {
  obj(disposable_razor). hasPhysicalQuality(disposable_razor, fragile). hasPhysicalQuality(disposable_razor, sharp). hasRole(disposable_razor, utensilRole). affordsTask(disposable_razor, foodPreparationTask).
}).
#pos(e483@100, {goesIn(disposable_razor, library)}, {}, {
  obj(disposable_razor). hasPhysicalQuality(disposable_razor, fragile). hasPhysicalQuality(disposable_razor, sharp). hasRole(disposable_razor, utensilRole). affordsTask(disposable_razor, foodPreparationTask).
}).
#pos(e484@100, {goesIn(disposable_razor, trash)}, {}, {
  obj(disposable_razor). hasPhysicalQuality(disposable_razor, fragile). hasPhysicalQuality(disposable_razor, sharp). hasRole(disposable_razor, utensilRole). affordsTask(disposable_razor, foodPreparationTask).
}).
#pos(e485@100, {goesIn(divider, library)}, {}, {
  obj(divider). hasPhysicalQuality(divider, lightweight). hasPhysicalQuality(divider, rigid). hasRole(divider, furnitureRole). affordsTask(divider, storageTask).
}).
#pos(e486@100, {goesIn(divider, living_room)}, {}, {
  obj(divider). hasPhysicalQuality(divider, lightweight). hasPhysicalQuality(divider, rigid). hasRole(divider, furnitureRole). affordsTask(divider, storageTask).
}).
#pos(e487@100, {goesIn(dog, bed)}, {}, {
  obj(dog). hasPhysicalQuality(dog, fragile). hasPhysicalQuality(dog, soft_Deformable). affordsTask(dog, leisureTask).
}).
#pos(e488@100, {goesIn(dog, bedroom)}, {}, {
  obj(dog). hasPhysicalQuality(dog, fragile). hasPhysicalQuality(dog, soft_Deformable). affordsTask(dog, leisureTask).
}).
#pos(e489@100, {goesIn(dog, garden)}, {}, {
  obj(dog). hasPhysicalQuality(dog, fragile). hasPhysicalQuality(dog, soft_Deformable). affordsTask(dog, leisureTask).
}).
#pos(e490@100, {goesIn(dog, living_room)}, {}, {
  obj(dog). hasPhysicalQuality(dog, fragile). hasPhysicalQuality(dog, soft_Deformable). affordsTask(dog, leisureTask).
}).
#pos(e491@100, {goesIn(dog, table)}, {}, {
  obj(dog). hasPhysicalQuality(dog, fragile). hasPhysicalQuality(dog, soft_Deformable). affordsTask(dog, leisureTask).
}).
#pos(e492@100, {goesIn(door, garage)}, {}, {
  obj(door). hasPhysicalQuality(door, rigid). hasRole(door, furnitureRole). affordsTask(door, maintenanceTask).
}).
#pos(e493@100, {goesIn(door, library)}, {}, {
  obj(door). hasPhysicalQuality(door, rigid). hasRole(door, furnitureRole). affordsTask(door, maintenanceTask).
}).
#pos(e494@100, {goesIn(doormat, bedroom)}, {}, {
  obj(doormat). hasPhysicalQuality(doormat, lightweight). hasPhysicalQuality(doormat, soft_Deformable). hasRole(doormat, furnitureRole). affordsTask(doormat, cleaningTask).
}).
#pos(e495@100, {goesIn(doormat, garden)}, {}, {
  obj(doormat). hasPhysicalQuality(doormat, lightweight). hasPhysicalQuality(doormat, soft_Deformable). hasRole(doormat, furnitureRole). affordsTask(doormat, cleaningTask).
}).
#pos(e496@100, {goesIn(doormat, hallway)}, {}, {
  obj(doormat). hasPhysicalQuality(doormat, lightweight). hasPhysicalQuality(doormat, soft_Deformable). hasRole(doormat, furnitureRole). affordsTask(doormat, cleaningTask).
}).
#pos(e497@100, {goesIn(doormat, library)}, {}, {
  obj(doormat). hasPhysicalQuality(doormat, lightweight). hasPhysicalQuality(doormat, soft_Deformable). hasRole(doormat, furnitureRole). affordsTask(doormat, cleaningTask).
}).
#pos(e498@100, {goesIn(doorway, bedroom)}, {}, {
  obj(doorway). hasPhysicalQuality(doorway, rigid). hasRole(doorway, furnitureRole).
}).
#pos(e499@100, {goesIn(doorway, library)}, {}, {
  obj(doorway). hasPhysicalQuality(doorway, rigid). hasRole(doorway, furnitureRole).
}).
#pos(e500@100, {goesIn(drawer, bedroom)}, {}, {
  obj(drawer). hasPhysicalQuality(drawer, hasContainer). hasRole(drawer, furnitureRole). hasRole(drawer, storageContainerRole). affordsTask(drawer, storageTask).
}).
#pos(e501@100, {goesIn(drawer, kitchen)}, {}, {
  obj(drawer). hasPhysicalQuality(drawer, hasContainer). hasRole(drawer, furnitureRole). hasRole(drawer, storageContainerRole). affordsTask(drawer, storageTask).
}).
#pos(e502@100, {goesIn(drawer, living_room)}, {}, {
  obj(drawer). hasPhysicalQuality(drawer, hasContainer). hasRole(drawer, furnitureRole). hasRole(drawer, storageContainerRole). affordsTask(drawer, storageTask).
}).
#pos(e503@100, {goesIn(drawstring_bag, closet)}, {}, {
  obj(drawstring_bag). hasPhysicalQuality(drawstring_bag, lightweight). hasPhysicalQuality(drawstring_bag, soft_Deformable). hasRole(drawstring_bag, storageContainerRole). affordsTask(drawstring_bag, storageTask).
}).
#pos(e504@100, {goesIn(drawstring_bag, garage)}, {}, {
  obj(drawstring_bag). hasPhysicalQuality(drawstring_bag, lightweight). hasPhysicalQuality(drawstring_bag, soft_Deformable). hasRole(drawstring_bag, storageContainerRole). affordsTask(drawstring_bag, storageTask).
}).
#pos(e505@100, {goesIn(drawstring_bag, kitchen)}, {}, {
  obj(drawstring_bag). hasPhysicalQuality(drawstring_bag, lightweight). hasPhysicalQuality(drawstring_bag, soft_Deformable). hasRole(drawstring_bag, storageContainerRole). affordsTask(drawstring_bag, storageTask).
}).
#pos(e506@100, {goesIn(drawstring_bag, laundry_room)}, {}, {
  obj(drawstring_bag). hasPhysicalQuality(drawstring_bag, lightweight). hasPhysicalQuality(drawstring_bag, soft_Deformable). hasRole(drawstring_bag, storageContainerRole). affordsTask(drawstring_bag, storageTask).
}).
#pos(e507@100, {goesIn(drawstring_bag, storage_room)}, {}, {
  obj(drawstring_bag). hasPhysicalQuality(drawstring_bag, lightweight). hasPhysicalQuality(drawstring_bag, soft_Deformable). hasRole(drawstring_bag, storageContainerRole). affordsTask(drawstring_bag, storageTask).
}).
#pos(e508@100, {goesIn(dresser, bedroom)}, {}, {
  obj(dresser). hasPhysicalQuality(dresser, heavy). hasPhysicalQuality(dresser, rigid). hasRole(dresser, furnitureRole). affordsTask(dresser, storageTask).
}).
#pos(e509@100, {goesIn(dresser, drawer)}, {}, {
  obj(dresser). hasPhysicalQuality(dresser, heavy). hasPhysicalQuality(dresser, rigid). hasRole(dresser, furnitureRole). affordsTask(dresser, storageTask).
}).
#pos(e510@100, {goesIn(drill, closet)}, {}, {
  obj(drill). hasPhysicalQuality(drill, heavy). hasPhysicalQuality(drill, isRotary). hasPhysicalQuality(drill, rigid). hasRole(drill, toolRole). affordsTask(drill, maintenanceTask).
}).
#pos(e511@100, {goesIn(drill, garage)}, {}, {
  obj(drill). hasPhysicalQuality(drill, heavy). hasPhysicalQuality(drill, isRotary). hasPhysicalQuality(drill, rigid). hasRole(drill, toolRole). affordsTask(drill, maintenanceTask).
}).
#pos(e512@100, {goesIn(drill, storage_room)}, {}, {
  obj(drill). hasPhysicalQuality(drill, heavy). hasPhysicalQuality(drill, isRotary). hasPhysicalQuality(drill, rigid). hasRole(drill, toolRole). affordsTask(drill, maintenanceTask).
}).
#pos(e513@100, {goesIn(dry_storage, kitchen)}, {}, {
  obj(dry_storage). hasPhysicalQuality(dry_storage, hasContainer). hasRole(dry_storage, storageContainerRole). affordsTask(dry_storage, storageTask).
}).
#pos(e514@100, {goesIn(dry_storage, pantry)}, {}, {
  obj(dry_storage). hasPhysicalQuality(dry_storage, hasContainer). hasRole(dry_storage, storageContainerRole). affordsTask(dry_storage, storageTask).
}).
#pos(e515@100, {goesIn(dryer, closet)}, {}, {
  obj(dryer). hasPhysicalQuality(dryer, electronic). hasPhysicalQuality(dryer, heavy). hasRole(dryer, applianceRole). affordsTask(dryer, maintenanceTask).
}).
#pos(e516@100, {goesIn(dryer, storage_room)}, {}, {
  obj(dryer). hasPhysicalQuality(dryer, electronic). hasPhysicalQuality(dryer, heavy). hasRole(dryer, applianceRole). affordsTask(dryer, maintenanceTask).
}).
#pos(e517@100, {goesIn(dust, bathroom)}, {}, {
  obj(dust). hasPhysicalQuality(dust, fragile). hasRole(dust, wasteRole).
}).
#pos(e518@100, {goesIn(dust, bed)}, {}, {
  obj(dust). hasPhysicalQuality(dust, fragile). hasRole(dust, wasteRole).
}).
#pos(e519@100, {goesIn(dust, bedroom)}, {}, {
  obj(dust). hasPhysicalQuality(dust, fragile). hasRole(dust, wasteRole).
}).
#pos(e520@100, {goesIn(dust, closet)}, {}, {
  obj(dust). hasPhysicalQuality(dust, fragile). hasRole(dust, wasteRole).
}).
#pos(e521@100, {goesIn(dust, drawer)}, {}, {
  obj(dust). hasPhysicalQuality(dust, fragile). hasRole(dust, wasteRole).
}).
#pos(e522@100, {goesIn(dust, fridge)}, {}, {
  obj(dust). hasPhysicalQuality(dust, fragile). hasRole(dust, wasteRole).
}).
#pos(e523@100, {goesIn(dust, garage)}, {}, {
  obj(dust). hasPhysicalQuality(dust, fragile). hasRole(dust, wasteRole).
}).
#pos(e524@100, {goesIn(dust, kitchen)}, {}, {
  obj(dust). hasPhysicalQuality(dust, fragile). hasRole(dust, wasteRole).
}).
#pos(e525@100, {goesIn(dust, library)}, {}, {
  obj(dust). hasPhysicalQuality(dust, fragile). hasRole(dust, wasteRole).
}).
#pos(e526@100, {goesIn(dust, living_room)}, {}, {
  obj(dust). hasPhysicalQuality(dust, fragile). hasRole(dust, wasteRole).
}).
#pos(e527@100, {goesIn(dust, shelf)}, {}, {
  obj(dust). hasPhysicalQuality(dust, fragile). hasRole(dust, wasteRole).
}).
#pos(e528@100, {goesIn(dust, storage_room)}, {}, {
  obj(dust). hasPhysicalQuality(dust, fragile). hasRole(dust, wasteRole).
}).
#pos(e529@100, {goesIn(dust, table)}, {}, {
  obj(dust). hasPhysicalQuality(dust, fragile). hasRole(dust, wasteRole).
}).
#pos(e530@100, {goesIn(dustbin, bedroom)}, {}, {
  obj(dustbin). hasPhysicalQuality(dustbin, heavy). hasPhysicalQuality(dustbin, rigid). hasRole(dustbin, storageContainerRole). hasRole(dustbin, wasteRole). affordsTask(dustbin, wasteDisposalTask).
}).
#pos(e531@100, {goesIn(dustbin, cabinet)}, {}, {
  obj(dustbin). hasPhysicalQuality(dustbin, heavy). hasPhysicalQuality(dustbin, rigid). hasRole(dustbin, storageContainerRole). hasRole(dustbin, wasteRole). affordsTask(dustbin, wasteDisposalTask).
}).
#pos(e532@100, {goesIn(dustbin, closet)}, {}, {
  obj(dustbin). hasPhysicalQuality(dustbin, heavy). hasPhysicalQuality(dustbin, rigid). hasRole(dustbin, storageContainerRole). hasRole(dustbin, wasteRole). affordsTask(dustbin, wasteDisposalTask).
}).
#pos(e533@100, {goesIn(dustbin, kitchen)}, {}, {
  obj(dustbin). hasPhysicalQuality(dustbin, heavy). hasPhysicalQuality(dustbin, rigid). hasRole(dustbin, storageContainerRole). hasRole(dustbin, wasteRole). affordsTask(dustbin, wasteDisposalTask).
}).
#pos(e534@100, {goesIn(duvet, bed)}, {}, {
  obj(duvet). hasPhysicalQuality(duvet, soft_Deformable). hasPhysicalQuality(duvet, washable). hasRole(duvet, beddingRole). affordsTask(duvet, sleepingTask).
}).
#pos(e535@100, {goesIn(duvet, bedroom)}, {}, {
  obj(duvet). hasPhysicalQuality(duvet, soft_Deformable). hasPhysicalQuality(duvet, washable). hasRole(duvet, beddingRole). affordsTask(duvet, sleepingTask).
}).
#pos(e536@100, {goesIn(duvet, living_room)}, {}, {
  obj(duvet). hasPhysicalQuality(duvet, soft_Deformable). hasPhysicalQuality(duvet, washable). hasRole(duvet, beddingRole). affordsTask(duvet, sleepingTask).
}).
#pos(e537@100, {goesIn(duvet_cover, bed)}, {}, {
  obj(duvet_cover). hasPhysicalQuality(duvet_cover, soft_Deformable). hasPhysicalQuality(duvet_cover, washable). hasRole(duvet_cover, beddingRole). affordsTask(duvet_cover, sleepingTask).
}).
#pos(e538@100, {goesIn(duvet_cover, bedroom)}, {}, {
  obj(duvet_cover). hasPhysicalQuality(duvet_cover, soft_Deformable). hasPhysicalQuality(duvet_cover, washable). hasRole(duvet_cover, beddingRole). affordsTask(duvet_cover, sleepingTask).
}).
#pos(e539@100, {goesIn(egg, fridge)}, {}, {
  obj(egg). hasPhysicalQuality(egg, fragile). hasPhysicalQuality(egg, perishable). hasRole(egg, consumableRole). affordsTask(egg, foodPreparationTask).
}).
#pos(e540@100, {goesIn(egg, kitchen)}, {}, {
  obj(egg). hasPhysicalQuality(egg, fragile). hasPhysicalQuality(egg, perishable). hasRole(egg, consumableRole). affordsTask(egg, foodPreparationTask).
}).
#pos(e541@100, {goesIn(eggs, fridge)}, {}, {
  obj(eggs). hasPhysicalQuality(eggs, fragile). hasPhysicalQuality(eggs, perishable). hasRole(eggs, consumableRole). affordsTask(eggs, eatingDrinkingTask).
}).
#pos(e542@100, {goesIn(electric_blanket, bedroom)}, {}, {
  obj(electric_blanket). hasPhysicalQuality(electric_blanket, electronic). hasPhysicalQuality(electric_blanket, soft_Deformable). hasPhysicalQuality(electric_blanket, washable). hasRole(electric_blanket, beddingRole). affordsTask(electric_blanket, sleepingTask).
}).
#pos(e543@100, {goesIn(electric_blanket, closet)}, {}, {
  obj(electric_blanket). hasPhysicalQuality(electric_blanket, electronic). hasPhysicalQuality(electric_blanket, soft_Deformable). hasPhysicalQuality(electric_blanket, washable). hasRole(electric_blanket, beddingRole). affordsTask(electric_blanket, sleepingTask).
}).
#pos(e544@100, {goesIn(electric_fan, bedroom)}, {}, {
  obj(electric_fan). hasPhysicalQuality(electric_fan, electronic). hasPhysicalQuality(electric_fan, lightweight). hasRole(electric_fan, applianceRole). affordsTask(electric_fan, leisureTask).
}).
#pos(e545@100, {goesIn(electric_fan, closet)}, {}, {
  obj(electric_fan). hasPhysicalQuality(electric_fan, electronic). hasPhysicalQuality(electric_fan, lightweight). hasRole(electric_fan, applianceRole). affordsTask(electric_fan, leisureTask).
}).
#pos(e546@100, {goesIn(electric_fan, library)}, {}, {
  obj(electric_fan). hasPhysicalQuality(electric_fan, electronic). hasPhysicalQuality(electric_fan, lightweight). hasRole(electric_fan, applianceRole). affordsTask(electric_fan, leisureTask).
}).
#pos(e547@100, {goesIn(electric_pencil_sharpener, garage)}, {}, {
  obj(electric_pencil_sharpener). hasPhysicalQuality(electric_pencil_sharpener, electronic). hasPhysicalQuality(electric_pencil_sharpener, heavy). hasRole(electric_pencil_sharpener, toolRole). affordsTask(electric_pencil_sharpener, maintenanceTask).
}).
#pos(e548@100, {goesIn(electric_pencil_sharpener, storage_room)}, {}, {
  obj(electric_pencil_sharpener). hasPhysicalQuality(electric_pencil_sharpener, electronic). hasPhysicalQuality(electric_pencil_sharpener, heavy). hasRole(electric_pencil_sharpener, toolRole). affordsTask(electric_pencil_sharpener, maintenanceTask).
}).
#pos(e549@100, {goesIn(electric_pencil_sharpener, table)}, {}, {
  obj(electric_pencil_sharpener). hasPhysicalQuality(electric_pencil_sharpener, electronic). hasPhysicalQuality(electric_pencil_sharpener, heavy). hasRole(electric_pencil_sharpener, toolRole). affordsTask(electric_pencil_sharpener, maintenanceTask).
}).
#pos(e550@100, {goesIn(electric_razor, bathroom)}, {}, {
  obj(electric_razor). hasPhysicalQuality(electric_razor, electronic). hasPhysicalQuality(electric_razor, lightweight). hasRole(electric_razor, toolRole). affordsTask(electric_razor, hygieneTask).
}).
#pos(e551@100, {goesIn(electric_razor, library)}, {}, {
  obj(electric_razor). hasPhysicalQuality(electric_razor, electronic). hasPhysicalQuality(electric_razor, lightweight). hasRole(electric_razor, toolRole). affordsTask(electric_razor, hygieneTask).
}).
#pos(e552@100, {goesIn(electric_socket, bedroom)}, {}, {
  obj(electric_socket). hasPhysicalQuality(electric_socket, electronic). hasPhysicalQuality(electric_socket, heavy). hasRole(electric_socket, applianceRole).
}).
#pos(e553@100, {goesIn(eraser, table)}, {}, {
  obj(eraser). hasPhysicalQuality(eraser, lightweight). hasPhysicalQuality(eraser, soft_Deformable). hasRole(eraser, toolRole). affordsTask(eraser, maintenanceTask).
}).
#pos(e554@100, {goesIn(eyeglasses_case, drawer)}, {}, {
  obj(eyeglasses_case). hasPhysicalQuality(eyeglasses_case, hasContainer). hasPhysicalQuality(eyeglasses_case, lightweight). hasRole(eyeglasses_case, storageContainerRole). affordsTask(eyeglasses_case, storageTask).
}).
#pos(e555@100, {goesIn(faucet, bathroom)}, {}, {
  obj(faucet). hasPhysicalQuality(faucet, electronic). hasPhysicalQuality(faucet, liquid). hasRole(faucet, toolRole). affordsTask(faucet, hygieneTask).
}).
#pos(e556@100, {goesIn(faucet, library)}, {}, {
  obj(faucet). hasPhysicalQuality(faucet, electronic). hasPhysicalQuality(faucet, liquid). hasRole(faucet, toolRole). affordsTask(faucet, hygieneTask).
}).
#pos(e557@100, {goesIn(faucet, sink)}, {}, {
  obj(faucet). hasPhysicalQuality(faucet, electronic). hasPhysicalQuality(faucet, liquid). hasRole(faucet, toolRole). affordsTask(faucet, hygieneTask).
}).
#pos(e558@100, {goesIn(faucet_overflow, bathroom)}, {}, {
  obj(faucet_overflow). hasPhysicalQuality(faucet_overflow, liquid). hasRole(faucet_overflow, toolRole). affordsTask(faucet_overflow, maintenanceTask).
}).
#pos(e559@100, {goesIn(faucet_overflow, kitchen)}, {}, {
  obj(faucet_overflow). hasPhysicalQuality(faucet_overflow, liquid). hasRole(faucet_overflow, toolRole). affordsTask(faucet_overflow, maintenanceTask).
}).
#pos(e560@100, {goesIn(faucet_overflow, library)}, {}, {
  obj(faucet_overflow). hasPhysicalQuality(faucet_overflow, liquid). hasRole(faucet_overflow, toolRole). affordsTask(faucet_overflow, maintenanceTask).
}).
#pos(e561@100, {goesIn(faucet_overflow, sink)}, {}, {
  obj(faucet_overflow). hasPhysicalQuality(faucet_overflow, liquid). hasRole(faucet_overflow, toolRole). affordsTask(faucet_overflow, maintenanceTask).
}).
#pos(e562@100, {goesIn(feather, bedroom)}, {}, {
  obj(feather). hasPhysicalQuality(feather, lightweight). hasPhysicalQuality(feather, soft_Deformable). hasRole(feather, consumableRole). affordsTask(feather, leisureTask).
}).
#pos(e563@100, {goesIn(feather, closet)}, {}, {
  obj(feather). hasPhysicalQuality(feather, lightweight). hasPhysicalQuality(feather, soft_Deformable). hasRole(feather, consumableRole). affordsTask(feather, leisureTask).
}).
#pos(e564@100, {goesIn(feather, garden)}, {}, {
  obj(feather). hasPhysicalQuality(feather, lightweight). hasPhysicalQuality(feather, soft_Deformable). hasRole(feather, consumableRole). affordsTask(feather, leisureTask).
}).
#pos(e565@100, {goesIn(feathers, bedroom)}, {}, {
  obj(feathers). hasPhysicalQuality(feathers, lightweight). hasPhysicalQuality(feathers, soft_Deformable). hasRole(feathers, consumableRole).
}).
#pos(e566@100, {goesIn(felt, bedroom)}, {}, {
  obj(felt). hasPhysicalQuality(felt, soft_Deformable). hasRole(felt, consumableRole). hasRole(felt, toolRole).
}).
#pos(e567@100, {goesIn(felt, closet)}, {}, {
  obj(felt). hasPhysicalQuality(felt, soft_Deformable). hasRole(felt, consumableRole). hasRole(felt, toolRole).
}).
#pos(e568@100, {goesIn(felt, table)}, {}, {
  obj(felt). hasPhysicalQuality(felt, soft_Deformable). hasRole(felt, consumableRole). hasRole(felt, toolRole).
}).
#pos(e569@100, {goesIn(file, drawer)}, {}, {
  obj(file). hasPhysicalQuality(file, lightweight). hasRole(file, documentRole). affordsTask(file, storageTask).
}).
#pos(e570@100, {goesIn(file, garage)}, {}, {
  obj(file). hasPhysicalQuality(file, lightweight). hasRole(file, documentRole). affordsTask(file, storageTask).
}).
#pos(e571@100, {goesIn(file, library)}, {}, {
  obj(file). hasPhysicalQuality(file, lightweight). hasRole(file, documentRole). affordsTask(file, storageTask).
}).
#pos(e572@100, {goesIn(file_cabinet, table)}, {}, {
  obj(file_cabinet). hasRole(file_cabinet, storageContainerRole).
}).
#pos(e573@100, {goesIn(files, drawer)}, {}, {
  obj(files). hasRole(files, documentRole).
}).
#pos(e574@100, {goesIn(files, library)}, {}, {
  obj(files). hasRole(files, documentRole).
}).
#pos(e575@100, {goesIn(files, table)}, {}, {
  obj(files). hasRole(files, documentRole).
}).
#pos(e576@100, {goesIn(filing_box, bedroom)}, {}, {
  obj(filing_box). hasPhysicalQuality(filing_box, hasContainer). hasPhysicalQuality(filing_box, heavy). hasRole(filing_box, storageContainerRole). affordsTask(filing_box, storageTask).
}).
#pos(e577@100, {goesIn(filing_box, closet)}, {}, {
  obj(filing_box). hasPhysicalQuality(filing_box, hasContainer). hasPhysicalQuality(filing_box, heavy). hasRole(filing_box, storageContainerRole). affordsTask(filing_box, storageTask).
}).
#pos(e578@100, {goesIn(film, drawer)}, {}, {
  obj(film). hasPhysicalQuality(film, fragile). hasRole(film, entertainmentRole). affordsTask(film, leisureTask).
}).
#pos(e579@100, {goesIn(fire_extinguisher, bedroom)}, {}, {
  obj(fire_extinguisher). hasPhysicalQuality(fire_extinguisher, heavy). hasPhysicalQuality(fire_extinguisher, rigid). hasRole(fire_extinguisher, safetyEquipmentRole). affordsTask(fire_extinguisher, maintenanceTask).
}).
#pos(e580@100, {goesIn(fire_extinguisher, garage)}, {}, {
  obj(fire_extinguisher). hasPhysicalQuality(fire_extinguisher, heavy). hasPhysicalQuality(fire_extinguisher, rigid). hasRole(fire_extinguisher, safetyEquipmentRole). affordsTask(fire_extinguisher, maintenanceTask).
}).
#pos(e581@100, {goesIn(fire_extinguisher, kitchen)}, {}, {
  obj(fire_extinguisher). hasPhysicalQuality(fire_extinguisher, heavy). hasPhysicalQuality(fire_extinguisher, rigid). hasRole(fire_extinguisher, safetyEquipmentRole). affordsTask(fire_extinguisher, maintenanceTask).
}).
#pos(e582@100, {goesIn(fireplace, bedroom)}, {}, {
  obj(fireplace). hasPhysicalQuality(fireplace, heated). hasRole(fireplace, applianceRole). affordsTask(fireplace, maintenanceTask).
}).
#pos(e583@100, {goesIn(fireplace, living_room)}, {}, {
  obj(fireplace). hasPhysicalQuality(fireplace, heated). hasRole(fireplace, applianceRole). affordsTask(fireplace, maintenanceTask).
}).
#pos(e584@100, {goesIn(fish, bathroom)}, {}, {
  obj(fish). hasPhysicalQuality(fish, liquid). hasPhysicalQuality(fish, perishable). hasRole(fish, consumableRole). affordsTask(fish, eatingDrinkingTask).
}).
#pos(e585@100, {goesIn(fish, closet)}, {}, {
  obj(fish). hasPhysicalQuality(fish, liquid). hasPhysicalQuality(fish, perishable). hasRole(fish, consumableRole). affordsTask(fish, eatingDrinkingTask).
}).
#pos(e586@100, {goesIn(fish, fridge)}, {}, {
  obj(fish). hasPhysicalQuality(fish, liquid). hasPhysicalQuality(fish, perishable). hasRole(fish, consumableRole). affordsTask(fish, eatingDrinkingTask).
}).
#pos(e587@100, {goesIn(fish, garage)}, {}, {
  obj(fish). hasPhysicalQuality(fish, liquid). hasPhysicalQuality(fish, perishable). hasRole(fish, consumableRole). affordsTask(fish, eatingDrinkingTask).
}).
#pos(e588@100, {goesIn(flask, cabinet)}, {}, {
  obj(flask). hasPhysicalQuality(flask, hasContainer). hasPhysicalQuality(flask, liquid). hasRole(flask, utensilRole). affordsTask(flask, eatingDrinkingTask).
}).
#pos(e589@100, {goesIn(flask, storage_room)}, {}, {
  obj(flask). hasPhysicalQuality(flask, hasContainer). hasPhysicalQuality(flask, liquid). hasRole(flask, utensilRole). affordsTask(flask, eatingDrinkingTask).
}).
#pos(e590@100, {goesIn(floor, bathroom)}, {}, {
  obj(floor). hasPhysicalQuality(floor, heavy). hasPhysicalQuality(floor, rigid). hasRole(floor, furnitureRole). affordsTask(floor, storageTask).
}).
#pos(e591@100, {goesIn(floor, bed)}, {}, {
  obj(floor). hasPhysicalQuality(floor, heavy). hasPhysicalQuality(floor, rigid). hasRole(floor, furnitureRole). affordsTask(floor, storageTask).
}).
#pos(e592@100, {goesIn(floor, bedroom)}, {}, {
  obj(floor). hasPhysicalQuality(floor, heavy). hasPhysicalQuality(floor, rigid). hasRole(floor, furnitureRole). affordsTask(floor, storageTask).
}).
#pos(e593@100, {goesIn(floor, closet)}, {}, {
  obj(floor). hasPhysicalQuality(floor, heavy). hasPhysicalQuality(floor, rigid). hasRole(floor, furnitureRole). affordsTask(floor, storageTask).
}).
#pos(e594@100, {goesIn(floor, garage)}, {}, {
  obj(floor). hasPhysicalQuality(floor, heavy). hasPhysicalQuality(floor, rigid). hasRole(floor, furnitureRole). affordsTask(floor, storageTask).
}).
#pos(e595@100, {goesIn(floor, library)}, {}, {
  obj(floor). hasPhysicalQuality(floor, heavy). hasPhysicalQuality(floor, rigid). hasRole(floor, furnitureRole). affordsTask(floor, storageTask).
}).
#pos(e596@100, {goesIn(floor, table)}, {}, {
  obj(floor). hasPhysicalQuality(floor, heavy). hasPhysicalQuality(floor, rigid). hasRole(floor, furnitureRole). affordsTask(floor, storageTask).
}).
#pos(e597@100, {goesIn(flooring, bathroom)}, {}, {
  obj(flooring). hasPhysicalQuality(flooring, rigid). hasRole(flooring, furnitureRole).
}).
#pos(e598@100, {goesIn(flooring, bedroom)}, {}, {
  obj(flooring). hasPhysicalQuality(flooring, rigid). hasRole(flooring, furnitureRole).
}).
#pos(e599@100, {goesIn(flooring, closet)}, {}, {
  obj(flooring). hasPhysicalQuality(flooring, rigid). hasRole(flooring, furnitureRole).
}).
#pos(e600@100, {goesIn(flooring, kitchen)}, {}, {
  obj(flooring). hasPhysicalQuality(flooring, rigid). hasRole(flooring, furnitureRole).
}).
#pos(e601@100, {goesIn(flour, cabinet)}, {}, {
  obj(flour). hasPhysicalQuality(flour, granular). hasRole(flour, consumableRole). affordsTask(flour, foodPreparationTask).
}).
#pos(e602@100, {goesIn(flour, kitchen)}, {}, {
  obj(flour). hasPhysicalQuality(flour, granular). hasRole(flour, consumableRole). affordsTask(flour, foodPreparationTask).
}).
#pos(e603@100, {goesIn(flour, pantry)}, {}, {
  obj(flour). hasPhysicalQuality(flour, granular). hasRole(flour, consumableRole). affordsTask(flour, foodPreparationTask).
}).
#pos(e604@100, {goesIn(flower, shelf)}, {}, {
  obj(flower). hasPhysicalQuality(flower, perishable). hasRole(flower, consumableRole).
}).
#pos(e605@100, {goesIn(folder, shelf)}, {}, {
  obj(folder). hasRole(folder, storageContainerRole). affordsTask(folder, storageTask).
}).
#pos(e606@100, {goesIn(folding_chair, bedroom)}, {}, {
  obj(folding_chair). hasPhysicalQuality(folding_chair, lightweight). hasPhysicalQuality(folding_chair, rigid). hasRole(folding_chair, furnitureRole). affordsTask(folding_chair, storageTask).
}).
#pos(e607@100, {goesIn(folding_chair, closet)}, {}, {
  obj(folding_chair). hasPhysicalQuality(folding_chair, lightweight). hasPhysicalQuality(folding_chair, rigid). hasRole(folding_chair, furnitureRole). affordsTask(folding_chair, storageTask).
}).
#pos(e608@100, {goesIn(folding_chair, garage)}, {}, {
  obj(folding_chair). hasPhysicalQuality(folding_chair, lightweight). hasPhysicalQuality(folding_chair, rigid). hasRole(folding_chair, furnitureRole). affordsTask(folding_chair, storageTask).
}).
#pos(e609@100, {goesIn(folding_door, bedroom)}, {}, {
  obj(folding_door). hasPhysicalQuality(folding_door, lightweight). hasRole(folding_door, furnitureRole). affordsTask(folding_door, storageTask).
}).
#pos(e610@100, {goesIn(folding_door, closet)}, {}, {
  obj(folding_door). hasPhysicalQuality(folding_door, lightweight). hasRole(folding_door, furnitureRole). affordsTask(folding_door, storageTask).
}).
#pos(e611@100, {goesIn(folding_door, hallway)}, {}, {
  obj(folding_door). hasPhysicalQuality(folding_door, lightweight). hasRole(folding_door, furnitureRole). affordsTask(folding_door, storageTask).
}).
#pos(e612@100, {goesIn(folding_door, library)}, {}, {
  obj(folding_door). hasPhysicalQuality(folding_door, lightweight). hasRole(folding_door, furnitureRole). affordsTask(folding_door, storageTask).
}).
#pos(e613@100, {goesIn(folding_shower_door, bathroom)}, {}, {
  obj(folding_shower_door). hasPhysicalQuality(folding_shower_door, lightweight). hasPhysicalQuality(folding_shower_door, rigid). hasRole(folding_shower_door, furnitureRole). affordsTask(folding_shower_door, leisureTask).
}).
#pos(e614@100, {goesIn(folding_shower_door, library)}, {}, {
  obj(folding_shower_door). hasPhysicalQuality(folding_shower_door, lightweight). hasPhysicalQuality(folding_shower_door, rigid). hasRole(folding_shower_door, furnitureRole). affordsTask(folding_shower_door, leisureTask).
}).
#pos(e615@100, {goesIn(footstool, garage)}, {}, {
  obj(footstool). hasPhysicalQuality(footstool, heavy). hasPhysicalQuality(footstool, rigid). hasRole(footstool, furnitureRole). affordsTask(footstool, leisureTask).
}).
#pos(e616@100, {goesIn(footstool, living_room)}, {}, {
  obj(footstool). hasPhysicalQuality(footstool, heavy). hasPhysicalQuality(footstool, rigid). hasRole(footstool, furnitureRole). affordsTask(footstool, leisureTask).
}).
#pos(e617@100, {goesIn(footstool, storage_room)}, {}, {
  obj(footstool). hasPhysicalQuality(footstool, heavy). hasPhysicalQuality(footstool, rigid). hasRole(footstool, furnitureRole). affordsTask(footstool, leisureTask).
}).
#pos(e618@100, {goesIn(footstool, table)}, {}, {
  obj(footstool). hasPhysicalQuality(footstool, heavy). hasPhysicalQuality(footstool, rigid). hasRole(footstool, furnitureRole). affordsTask(footstool, leisureTask).
}).
#pos(e619@100, {goesIn(fork, drawer)}, {}, {
  obj(fork). hasPhysicalQuality(fork, rigid). hasPhysicalQuality(fork, sharp). hasRole(fork, utensilRole). affordsTask(fork, foodPreparationTask).
}).
#pos(e620@100, {goesIn(fork, kitchen)}, {}, {
  obj(fork). hasPhysicalQuality(fork, rigid). hasPhysicalQuality(fork, sharp). hasRole(fork, utensilRole). affordsTask(fork, foodPreparationTask).
}).
#pos(e621@100, {goesIn(fork, table)}, {}, {
  obj(fork). hasPhysicalQuality(fork, rigid). hasPhysicalQuality(fork, sharp). hasRole(fork, utensilRole). affordsTask(fork, foodPreparationTask).
}).
#pos(e622@100, {goesIn(forks, table)}, {}, {
  obj(forks). hasPhysicalQuality(forks, rigid). hasPhysicalQuality(forks, sharp). hasRole(forks, utensilRole). affordsTask(forks, foodPreparationTask).
}).
#pos(e623@100, {goesIn(foundation, bedroom)}, {}, {
  obj(foundation). hasPhysicalQuality(foundation, heavy). hasRole(foundation, furnitureRole).
}).
#pos(e624@100, {goesIn(foundation, closet)}, {}, {
  obj(foundation). hasPhysicalQuality(foundation, heavy). hasRole(foundation, furnitureRole).
}).
#pos(e625@100, {goesIn(freezer, garage)}, {}, {
  obj(freezer). hasPhysicalQuality(freezer, requiresFreezing). hasRole(freezer, applianceRole). affordsTask(freezer, storageTask).
}).
#pos(e626@100, {goesIn(freezer, kitchen)}, {}, {
  obj(freezer). hasPhysicalQuality(freezer, requiresFreezing). hasRole(freezer, applianceRole). affordsTask(freezer, storageTask).
}).
#pos(e627@100, {goesIn(freezer, pantry)}, {}, {
  obj(freezer). hasPhysicalQuality(freezer, requiresFreezing). hasRole(freezer, applianceRole). affordsTask(freezer, storageTask).
}).
#pos(e628@100, {goesIn(fridge, kitchen)}, {}, {
  obj(fridge). hasPhysicalQuality(fridge, electronic). hasPhysicalQuality(fridge, heavy). hasRole(fridge, applianceRole). affordsTask(fridge, storageTask).
}).
#pos(e629@100, {goesIn(frisbee, garage)}, {}, {
  obj(frisbee). hasPhysicalQuality(frisbee, lightweight). hasPhysicalQuality(frisbee, rigid). hasRole(frisbee, entertainmentRole). hasRole(frisbee, toolRole). affordsTask(frisbee, leisureTask). affordsTask(frisbee, maintenanceTask).
}).
#pos(e630@100, {goesIn(frying_pan, kitchen)}, {}, {
  obj(frying_pan). hasPhysicalQuality(frying_pan, heated). hasPhysicalQuality(frying_pan, rigid). hasRole(frying_pan, cookwareRole). affordsTask(frying_pan, foodPreparationTask).
}).
#pos(e631@100, {goesIn(garage, bedroom)}, {}, {
  obj(garage). hasPhysicalQuality(garage, heavy). hasPhysicalQuality(garage, rigid). hasRole(garage, furnitureRole). hasRole(garage, storageContainerRole). affordsTask(garage, storageTask).
}).
#pos(e632@100, {goesIn(garage, garage)}, {}, {
  obj(garage). hasPhysicalQuality(garage, heavy). hasPhysicalQuality(garage, rigid). hasRole(garage, furnitureRole). hasRole(garage, storageContainerRole). affordsTask(garage, storageTask).
}).
#pos(e633@100, {goesIn(garbage, bedroom)}, {}, {
  obj(garbage). hasRole(garbage, consumableRole). hasRole(garbage, storageContainerRole). affordsTask(garbage, wasteDisposalTask).
}).
#pos(e634@100, {goesIn(garbage, closet)}, {}, {
  obj(garbage). hasRole(garbage, consumableRole). hasRole(garbage, storageContainerRole). affordsTask(garbage, wasteDisposalTask).
}).
#pos(e635@100, {goesIn(garbage, garage)}, {}, {
  obj(garbage). hasRole(garbage, consumableRole). hasRole(garbage, storageContainerRole). affordsTask(garbage, wasteDisposalTask).
}).
#pos(e636@100, {goesIn(garbage, kitchen)}, {}, {
  obj(garbage). hasRole(garbage, consumableRole). hasRole(garbage, storageContainerRole). affordsTask(garbage, wasteDisposalTask).
}).
#pos(e637@100, {goesIn(garbage, library)}, {}, {
  obj(garbage). hasRole(garbage, consumableRole). hasRole(garbage, storageContainerRole). affordsTask(garbage, wasteDisposalTask).
}).
#pos(e638@100, {goesIn(garbage, living_room)}, {}, {
  obj(garbage). hasRole(garbage, consumableRole). hasRole(garbage, storageContainerRole). affordsTask(garbage, wasteDisposalTask).
}).
#pos(e639@100, {goesIn(garbage, pantry)}, {}, {
  obj(garbage). hasRole(garbage, consumableRole). hasRole(garbage, storageContainerRole). affordsTask(garbage, wasteDisposalTask).
}).
#pos(e640@100, {goesIn(garbage, trash)}, {}, {
  obj(garbage). hasRole(garbage, consumableRole). hasRole(garbage, storageContainerRole). affordsTask(garbage, wasteDisposalTask).
}).
#pos(e641@100, {goesIn(garbage_can, garage)}, {}, {
  obj(garbage_can). hasPhysicalQuality(garbage_can, hasContainer). hasPhysicalQuality(garbage_can, heavy). hasRole(garbage_can, storageContainerRole). affordsTask(garbage_can, wasteDisposalTask).
}).
#pos(e642@100, {goesIn(garbage_can, kitchen)}, {}, {
  obj(garbage_can). hasPhysicalQuality(garbage_can, hasContainer). hasPhysicalQuality(garbage_can, heavy). hasRole(garbage_can, storageContainerRole). affordsTask(garbage_can, wasteDisposalTask).
}).
#pos(e643@100, {goesIn(garbage_waste, garage)}, {}, {
  obj(garbage_waste). hasRole(garbage_waste, consumableRole). hasRole(garbage_waste, wasteRole). affordsTask(garbage_waste, wasteDisposalTask).
}).
#pos(e644@100, {goesIn(garbage_waste, kitchen)}, {}, {
  obj(garbage_waste). hasRole(garbage_waste, consumableRole). hasRole(garbage_waste, wasteRole). affordsTask(garbage_waste, wasteDisposalTask).
}).
#pos(e645@100, {goesIn(garden, garden)}, {}, {
  obj(garden). hasPhysicalQuality(garden, lightweight). hasPhysicalQuality(garden, soft_Deformable). hasRole(garden, furnitureRole). affordsTask(garden, leisureTask).
}).
#pos(e646@100, {goesIn(garden_hose, garage)}, {}, {
  obj(garden_hose). hasPhysicalQuality(garden_hose, liquid). hasRole(garden_hose, toolRole). affordsTask(garden_hose, gardeningTask). affordsTask(garden_hose, hygieneTask).
}).
#pos(e647@100, {goesIn(garlic, kitchen)}, {}, {
  obj(garlic). hasPhysicalQuality(garlic, perishable). hasRole(garlic, consumableRole). affordsTask(garlic, foodPreparationTask).
}).
#pos(e648@100, {goesIn(garment_bag, bedroom)}, {}, {
  obj(garment_bag). hasPhysicalQuality(garment_bag, lightweight). hasPhysicalQuality(garment_bag, soft_Deformable). hasRole(garment_bag, storageContainerRole). affordsTask(garment_bag, storageTask).
}).
#pos(e649@100, {goesIn(garment_bag, closet)}, {}, {
  obj(garment_bag). hasPhysicalQuality(garment_bag, lightweight). hasPhysicalQuality(garment_bag, soft_Deformable). hasRole(garment_bag, storageContainerRole). affordsTask(garment_bag, storageTask).
}).
#pos(e650@100, {goesIn(gate, garden)}, {}, {
  obj(gate). hasPhysicalQuality(gate, heavy). hasPhysicalQuality(gate, rigid). hasRole(gate, furnitureRole). affordsTask(gate, maintenanceTask).
}).
#pos(e651@100, {goesIn(gate_leg_table, dining_room)}, {}, {
  obj(gate_leg_table). hasPhysicalQuality(gate_leg_table, heavy). hasPhysicalQuality(gate_leg_table, rigid). hasRole(gate_leg_table, furnitureRole). affordsTask(gate_leg_table, storageTask).
}).
#pos(e652@100, {goesIn(gel_toothpaste, bathroom)}, {}, {
  obj(gel_toothpaste). hasPhysicalQuality(gel_toothpaste, liquid). hasPhysicalQuality(gel_toothpaste, toxic_Hazardous). hasRole(gel_toothpaste, cleaningToolRole). affordsTask(gel_toothpaste, hygieneTask).
}).
#pos(e653@100, {goesIn(gel_toothpaste, library)}, {}, {
  obj(gel_toothpaste). hasPhysicalQuality(gel_toothpaste, liquid). hasPhysicalQuality(gel_toothpaste, toxic_Hazardous). hasRole(gel_toothpaste, cleaningToolRole). affordsTask(gel_toothpaste, hygieneTask).
}).
#pos(e654@100, {goesIn(glass, bedroom)}, {}, {
  obj(glass). hasPhysicalQuality(glass, fragile). hasPhysicalQuality(glass, rigid). hasRole(glass, utensilRole). affordsTask(glass, eatingDrinkingTask).
}).
#pos(e655@100, {goesIn(glass, dining_room)}, {}, {
  obj(glass). hasPhysicalQuality(glass, fragile). hasPhysicalQuality(glass, rigid). hasRole(glass, utensilRole). affordsTask(glass, eatingDrinkingTask).
}).
#pos(e656@100, {goesIn(glass, garage)}, {}, {
  obj(glass). hasPhysicalQuality(glass, fragile). hasPhysicalQuality(glass, rigid). hasRole(glass, utensilRole). affordsTask(glass, eatingDrinkingTask).
}).
#pos(e657@100, {goesIn(glass, kitchen)}, {}, {
  obj(glass). hasPhysicalQuality(glass, fragile). hasPhysicalQuality(glass, rigid). hasRole(glass, utensilRole). affordsTask(glass, eatingDrinkingTask).
}).
#pos(e658@100, {goesIn(glass, sink)}, {}, {
  obj(glass). hasPhysicalQuality(glass, fragile). hasPhysicalQuality(glass, rigid). hasRole(glass, utensilRole). affordsTask(glass, eatingDrinkingTask).
}).
#pos(e659@100, {goesIn(glass, storage_room)}, {}, {
  obj(glass). hasPhysicalQuality(glass, fragile). hasPhysicalQuality(glass, rigid). hasRole(glass, utensilRole). affordsTask(glass, eatingDrinkingTask).
}).
#pos(e660@100, {goesIn(glass, table)}, {}, {
  obj(glass). hasPhysicalQuality(glass, fragile). hasPhysicalQuality(glass, rigid). hasRole(glass, utensilRole). affordsTask(glass, eatingDrinkingTask).
}).
#pos(e661@100, {goesIn(glass_fronted_cupboard, dining_room)}, {}, {
  obj(glass_fronted_cupboard). hasPhysicalQuality(glass_fronted_cupboard, heavy). hasPhysicalQuality(glass_fronted_cupboard, rigid). hasRole(glass_fronted_cupboard, storageContainerRole). affordsTask(glass_fronted_cupboard, storageTask).
}).
#pos(e662@100, {goesIn(glass_fronted_cupboard, kitchen)}, {}, {
  obj(glass_fronted_cupboard). hasPhysicalQuality(glass_fronted_cupboard, heavy). hasPhysicalQuality(glass_fronted_cupboard, rigid). hasRole(glass_fronted_cupboard, storageContainerRole). affordsTask(glass_fronted_cupboard, storageTask).
}).
#pos(e663@100, {goesIn(glass_fronted_display_cabinet, kitchen)}, {}, {
  obj(glass_fronted_display_cabinet). hasPhysicalQuality(glass_fronted_display_cabinet, heavy). hasPhysicalQuality(glass_fronted_display_cabinet, rigid). hasRole(glass_fronted_display_cabinet, furnitureRole). hasRole(glass_fronted_display_cabinet, storageContainerRole). affordsTask(glass_fronted_display_cabinet, storageTask).
}).
#pos(e664@100, {goesIn(glass_fronted_display_cabinet, living_room)}, {}, {
  obj(glass_fronted_display_cabinet). hasPhysicalQuality(glass_fronted_display_cabinet, heavy). hasPhysicalQuality(glass_fronted_display_cabinet, rigid). hasRole(glass_fronted_display_cabinet, furnitureRole). hasRole(glass_fronted_display_cabinet, storageContainerRole). affordsTask(glass_fronted_display_cabinet, storageTask).
}).
#pos(e665@100, {goesIn(glass_of_water, table)}, {}, {
  obj(glass_of_water). hasPhysicalQuality(glass_of_water, liquid). hasRole(glass_of_water, consumableRole). hasRole(glass_of_water, utensilRole). affordsTask(glass_of_water, eatingDrinkingTask).
}).
#pos(e666@100, {goesIn(glasses, cabinet)}, {}, {
  obj(glasses). hasPhysicalQuality(glasses, lightweight). hasRole(glasses, utensilRole). affordsTask(glasses, eatingDrinkingTask).
}).
#pos(e667@100, {goesIn(glasses, drawer)}, {}, {
  obj(glasses). hasPhysicalQuality(glasses, lightweight). hasRole(glasses, utensilRole). affordsTask(glasses, eatingDrinkingTask).
}).
#pos(e668@100, {goesIn(glasses_case, drawer)}, {}, {
  obj(glasses_case). hasPhysicalQuality(glasses_case, lightweight). hasPhysicalQuality(glasses_case, soft_Deformable). hasRole(glasses_case, storageContainerRole). affordsTask(glasses_case, storageTask).
}).
#pos(e669@100, {goesIn(glue, bedroom)}, {}, {
  obj(glue). hasPhysicalQuality(glue, fragile). hasPhysicalQuality(glue, liquid). hasRole(glue, toolRole). affordsTask(glue, maintenanceTask).
}).
#pos(e670@100, {goesIn(glue, garage)}, {}, {
  obj(glue). hasPhysicalQuality(glue, fragile). hasPhysicalQuality(glue, liquid). hasRole(glue, toolRole). affordsTask(glue, maintenanceTask).
}).
#pos(e671@100, {goesIn(glue, table)}, {}, {
  obj(glue). hasPhysicalQuality(glue, fragile). hasPhysicalQuality(glue, liquid). hasRole(glue, toolRole). affordsTask(glue, maintenanceTask).
}).
#pos(e672@100, {goesIn(glue_stick, drawer)}, {}, {
  obj(glue_stick). hasPhysicalQuality(glue_stick, fragile). hasPhysicalQuality(glue_stick, liquid). hasRole(glue_stick, toolRole). affordsTask(glue_stick, maintenanceTask).
}).
#pos(e673@100, {goesIn(glue_stick, table)}, {}, {
  obj(glue_stick). hasPhysicalQuality(glue_stick, fragile). hasPhysicalQuality(glue_stick, liquid). hasRole(glue_stick, toolRole). affordsTask(glue_stick, maintenanceTask).
}).
#pos(e674@100, {goesIn(good_book, shelf)}, {}, {
  obj(good_book). hasRole(good_book, documentRole). affordsTask(good_book, leisureTask).
}).
#pos(e675@100, {goesIn(grape, fridge)}, {}, {
  obj(grape). hasPhysicalQuality(grape, fragile). hasPhysicalQuality(grape, perishable). hasRole(grape, consumableRole). affordsTask(grape, eatingDrinkingTask).
}).
#pos(e676@100, {goesIn(grape, garden)}, {}, {
  obj(grape). hasPhysicalQuality(grape, fragile). hasPhysicalQuality(grape, perishable). hasRole(grape, consumableRole). affordsTask(grape, eatingDrinkingTask).
}).
#pos(e677@100, {goesIn(grape, kitchen)}, {}, {
  obj(grape). hasPhysicalQuality(grape, fragile). hasPhysicalQuality(grape, perishable). hasRole(grape, consumableRole). affordsTask(grape, eatingDrinkingTask).
}).
#pos(e678@100, {goesIn(grape, pantry)}, {}, {
  obj(grape). hasPhysicalQuality(grape, fragile). hasPhysicalQuality(grape, perishable). hasRole(grape, consumableRole). affordsTask(grape, eatingDrinkingTask).
}).
#pos(e679@100, {goesIn(grape, storage_room)}, {}, {
  obj(grape). hasPhysicalQuality(grape, fragile). hasPhysicalQuality(grape, perishable). hasRole(grape, consumableRole). affordsTask(grape, eatingDrinkingTask).
}).
#pos(e680@100, {goesIn(grape_juice, fridge)}, {}, {
  obj(grape_juice). hasPhysicalQuality(grape_juice, liquid). hasRole(grape_juice, consumableRole). affordsTask(grape_juice, eatingDrinkingTask).
}).
#pos(e681@100, {goesIn(grapes, fridge)}, {}, {
  obj(grapes). hasPhysicalQuality(grapes, perishable). hasRole(grapes, consumableRole). affordsTask(grapes, eatingDrinkingTask).
}).
#pos(e682@100, {goesIn(grease, garage)}, {}, {
  obj(grease). hasPhysicalQuality(grease, fragile). hasPhysicalQuality(grease, liquid). hasRole(grease, cleaningToolRole). affordsTask(grease, maintenanceTask).
}).
#pos(e683@100, {goesIn(grill, kitchen)}, {}, {
  obj(grill). hasPhysicalQuality(grill, heated). hasPhysicalQuality(grill, heavy). hasRole(grill, cookwareRole). affordsTask(grill, foodPreparationTask).
}).
#pos(e684@100, {goesIn(groceries, bedroom)}, {}, {
  obj(groceries). hasPhysicalQuality(groceries, perishable). hasRole(groceries, consumableRole). affordsTask(groceries, eatingDrinkingTask).
}).
#pos(e685@100, {goesIn(groceries, garage)}, {}, {
  obj(groceries). hasPhysicalQuality(groceries, perishable). hasRole(groceries, consumableRole). affordsTask(groceries, eatingDrinkingTask).
}).
#pos(e686@100, {goesIn(groceries, kitchen)}, {}, {
  obj(groceries). hasPhysicalQuality(groceries, perishable). hasRole(groceries, consumableRole). affordsTask(groceries, eatingDrinkingTask).
}).
#pos(e687@100, {goesIn(groceries, pantry)}, {}, {
  obj(groceries). hasPhysicalQuality(groceries, perishable). hasRole(groceries, consumableRole). affordsTask(groceries, eatingDrinkingTask).
}).
#pos(e688@100, {goesIn(groceries, shelf)}, {}, {
  obj(groceries). hasPhysicalQuality(groceries, perishable). hasRole(groceries, consumableRole). affordsTask(groceries, eatingDrinkingTask).
}).
#pos(e689@100, {goesIn(groceries, storage_room)}, {}, {
  obj(groceries). hasPhysicalQuality(groceries, perishable). hasRole(groceries, consumableRole). affordsTask(groceries, eatingDrinkingTask).
}).
#pos(e690@100, {goesIn(gum, library)}, {}, {
  obj(gum). hasPhysicalQuality(gum, liquid). hasPhysicalQuality(gum, perishable). hasRole(gum, consumableRole). affordsTask(gum, eatingDrinkingTask).
}).
#pos(e691@100, {goesIn(gum, shelf)}, {}, {
  obj(gum). hasPhysicalQuality(gum, liquid). hasPhysicalQuality(gum, perishable). hasRole(gum, consumableRole). affordsTask(gum, eatingDrinkingTask).
}).
#pos(e692@100, {goesIn(gum, table)}, {}, {
  obj(gum). hasPhysicalQuality(gum, liquid). hasPhysicalQuality(gum, perishable). hasRole(gum, consumableRole). affordsTask(gum, eatingDrinkingTask).
}).
#pos(e693@100, {goesIn(gum, trash)}, {}, {
  obj(gum). hasPhysicalQuality(gum, liquid). hasPhysicalQuality(gum, perishable). hasRole(gum, consumableRole). affordsTask(gum, eatingDrinkingTask).
}).
#pos(e694@100, {goesIn(gutter, garage)}, {}, {
  obj(gutter). hasPhysicalQuality(gutter, heavy). hasPhysicalQuality(gutter, rigid). hasRole(gutter, toolRole). affordsTask(gutter, maintenanceTask).
}).
#pos(e695@100, {goesIn(hair_dryer, bathroom)}, {}, {
  obj(hair_dryer). hasPhysicalQuality(hair_dryer, electronic). hasPhysicalQuality(hair_dryer, heavy). hasRole(hair_dryer, applianceRole). affordsTask(hair_dryer, leisureTask).
}).
#pos(e696@100, {goesIn(hair_dryer, closet)}, {}, {
  obj(hair_dryer). hasPhysicalQuality(hair_dryer, electronic). hasPhysicalQuality(hair_dryer, heavy). hasRole(hair_dryer, applianceRole). affordsTask(hair_dryer, leisureTask).
}).
#pos(e697@100, {goesIn(hair_dryer, garage)}, {}, {
  obj(hair_dryer). hasPhysicalQuality(hair_dryer, electronic). hasPhysicalQuality(hair_dryer, heavy). hasRole(hair_dryer, applianceRole). affordsTask(hair_dryer, leisureTask).
}).
#pos(e698@100, {goesIn(hair_dryer, library)}, {}, {
  obj(hair_dryer). hasPhysicalQuality(hair_dryer, electronic). hasPhysicalQuality(hair_dryer, heavy). hasRole(hair_dryer, applianceRole). affordsTask(hair_dryer, leisureTask).
}).
#pos(e699@100, {goesIn(hair_dryer, storage_room)}, {}, {
  obj(hair_dryer). hasPhysicalQuality(hair_dryer, electronic). hasPhysicalQuality(hair_dryer, heavy). hasRole(hair_dryer, applianceRole). affordsTask(hair_dryer, leisureTask).
}).
#pos(e700@100, {goesIn(hairbrush, bathroom)}, {}, {
  obj(hairbrush). hasPhysicalQuality(hairbrush, lightweight). hasPhysicalQuality(hairbrush, rigid). hasRole(hairbrush, toolRole). affordsTask(hairbrush, hygieneTask).
}).
#pos(e701@100, {goesIn(hairbrush, bedroom)}, {}, {
  obj(hairbrush). hasPhysicalQuality(hairbrush, lightweight). hasPhysicalQuality(hairbrush, rigid). hasRole(hairbrush, toolRole). affordsTask(hairbrush, hygieneTask).
}).
#pos(e702@100, {goesIn(hairbrush, library)}, {}, {
  obj(hairbrush). hasPhysicalQuality(hairbrush, lightweight). hasPhysicalQuality(hairbrush, rigid). hasRole(hairbrush, toolRole). affordsTask(hairbrush, hygieneTask).
}).
#pos(e703@100, {goesIn(hammer, garage)}, {}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e704@100, {goesIn(handbag, bedroom)}, {}, {
  obj(handbag). hasPhysicalQuality(handbag, lightweight). hasPhysicalQuality(handbag, soft_Deformable). hasRole(handbag, storageContainerRole). affordsTask(handbag, storageTask).
}).
#pos(e705@100, {goesIn(handbag, closet)}, {}, {
  obj(handbag). hasPhysicalQuality(handbag, lightweight). hasPhysicalQuality(handbag, soft_Deformable). hasRole(handbag, storageContainerRole). affordsTask(handbag, storageTask).
}).
#pos(e706@100, {goesIn(handbag, storage_room)}, {}, {
  obj(handbag). hasPhysicalQuality(handbag, lightweight). hasPhysicalQuality(handbag, soft_Deformable). hasRole(handbag, storageContainerRole). affordsTask(handbag, storageTask).
}).
#pos(e707@100, {goesIn(hanger, bedroom)}, {}, {
  obj(hanger). hasPhysicalQuality(hanger, lightweight). hasPhysicalQuality(hanger, rigid). hasPhysicalQuality(hanger, soft_Deformable). hasRole(hanger, clothingRole). affordsTask(hanger, dressingTask).
}).
#pos(e708@100, {goesIn(hanger, closet)}, {}, {
  obj(hanger). hasPhysicalQuality(hanger, lightweight). hasPhysicalQuality(hanger, rigid). hasPhysicalQuality(hanger, soft_Deformable). hasRole(hanger, clothingRole). affordsTask(hanger, dressingTask).
}).
#pos(e709@100, {goesIn(hard_drive, library)}, {}, {
  obj(hard_drive). hasPhysicalQuality(hard_drive, electronic). hasPhysicalQuality(hard_drive, heavy). hasRole(hard_drive, applianceRole). affordsTask(hard_drive, storageTask).
}).
#pos(e710@100, {goesIn(hat, bedroom)}, {}, {
  obj(hat). hasPhysicalQuality(hat, lightweight). hasPhysicalQuality(hat, soft_Deformable). hasRole(hat, clothingRole). affordsTask(hat, dressingTask).
}).
#pos(e711@100, {goesIn(hat, closet)}, {}, {
  obj(hat). hasPhysicalQuality(hat, lightweight). hasPhysicalQuality(hat, soft_Deformable). hasRole(hat, clothingRole). affordsTask(hat, dressingTask).
}).
#pos(e712@100, {goesIn(hat, garage)}, {}, {
  obj(hat). hasPhysicalQuality(hat, lightweight). hasPhysicalQuality(hat, soft_Deformable). hasRole(hat, clothingRole). affordsTask(hat, dressingTask).
}).
#pos(e713@100, {goesIn(hat, shelf)}, {}, {
  obj(hat). hasPhysicalQuality(hat, lightweight). hasPhysicalQuality(hat, soft_Deformable). hasRole(hat, clothingRole). affordsTask(hat, dressingTask).
}).
#pos(e714@100, {goesIn(hat, storage_room)}, {}, {
  obj(hat). hasPhysicalQuality(hat, lightweight). hasPhysicalQuality(hat, soft_Deformable). hasRole(hat, clothingRole). affordsTask(hat, dressingTask).
}).
#pos(e715@100, {goesIn(heated_towel_rack, bathroom)}, {}, {
  obj(heated_towel_rack). hasPhysicalQuality(heated_towel_rack, heated). hasRole(heated_towel_rack, applianceRole). affordsTask(heated_towel_rack, hygieneTask).
}).
#pos(e716@100, {goesIn(heated_towel_rack, library)}, {}, {
  obj(heated_towel_rack). hasPhysicalQuality(heated_towel_rack, heated). hasRole(heated_towel_rack, applianceRole). affordsTask(heated_towel_rack, hygieneTask).
}).
#pos(e717@100, {goesIn(heater, bedroom)}, {}, {
  obj(heater). hasPhysicalQuality(heater, heated). hasRole(heater, applianceRole). affordsTask(heater, maintenanceTask).
}).
#pos(e718@100, {goesIn(heater, garage)}, {}, {
  obj(heater). hasPhysicalQuality(heater, heated). hasRole(heater, applianceRole). affordsTask(heater, maintenanceTask).
}).
#pos(e719@100, {goesIn(hide_bed, bedroom)}, {}, {
  obj(hide_bed). hasPhysicalQuality(hide_bed, lightweight). hasPhysicalQuality(hide_bed, soft_Deformable). hasRole(hide_bed, furnitureRole). affordsTask(hide_bed, sleepingTask).
}).
#pos(e720@100, {goesIn(hide_bed, closet)}, {}, {
  obj(hide_bed). hasPhysicalQuality(hide_bed, lightweight). hasPhysicalQuality(hide_bed, soft_Deformable). hasRole(hide_bed, furnitureRole). affordsTask(hide_bed, sleepingTask).
}).
#pos(e721@100, {goesIn(hide_bed, living_room)}, {}, {
  obj(hide_bed). hasPhysicalQuality(hide_bed, lightweight). hasPhysicalQuality(hide_bed, soft_Deformable). hasRole(hide_bed, furnitureRole). affordsTask(hide_bed, sleepingTask).
}).
#pos(e722@100, {goesIn(hide_bed_sofa, bedroom)}, {}, {
  obj(hide_bed_sofa). hasPhysicalQuality(hide_bed_sofa, fragile). hasPhysicalQuality(hide_bed_sofa, soft_Deformable). hasRole(hide_bed_sofa, furnitureRole). affordsTask(hide_bed_sofa, sleepingTask).
}).
#pos(e723@100, {goesIn(highlighter, table)}, {}, {
  obj(highlighter). hasPhysicalQuality(highlighter, lightweight). hasPhysicalQuality(highlighter, rigid). hasRole(highlighter, utensilRole). affordsTask(highlighter, foodPreparationTask).
}).
#pos(e724@100, {goesIn(highlighter_pen, table)}, {}, {
  obj(highlighter_pen). hasPhysicalQuality(highlighter_pen, lightweight). hasPhysicalQuality(highlighter_pen, rigid). hasRole(highlighter_pen, utensilRole). affordsTask(highlighter_pen, foodPreparationTask).
}).
#pos(e725@100, {goesIn(hinged_door, bedroom)}, {}, {
  obj(hinged_door). hasPhysicalQuality(hinged_door, heavy). hasPhysicalQuality(hinged_door, rigid). hasRole(hinged_door, furnitureRole). affordsTask(hinged_door, storageTask).
}).
#pos(e726@100, {goesIn(hinged_door, kitchen)}, {}, {
  obj(hinged_door). hasPhysicalQuality(hinged_door, heavy). hasPhysicalQuality(hinged_door, rigid). hasRole(hinged_door, furnitureRole). affordsTask(hinged_door, storageTask).
}).
#pos(e727@100, {goesIn(hinged_door, library)}, {}, {
  obj(hinged_door). hasPhysicalQuality(hinged_door, heavy). hasPhysicalQuality(hinged_door, rigid). hasRole(hinged_door, furnitureRole). affordsTask(hinged_door, storageTask).
}).
#pos(e728@100, {goesIn(hinged_door, pantry)}, {}, {
  obj(hinged_door). hasPhysicalQuality(hinged_door, heavy). hasPhysicalQuality(hinged_door, rigid). hasRole(hinged_door, furnitureRole). affordsTask(hinged_door, storageTask).
}).
#pos(e729@100, {goesIn(holdall, bedroom)}, {}, {
  obj(holdall). hasPhysicalQuality(holdall, lightweight). hasPhysicalQuality(holdall, soft_Deformable). hasRole(holdall, storageContainerRole). affordsTask(holdall, storageTask).
}).
#pos(e730@100, {goesIn(holdall, closet)}, {}, {
  obj(holdall). hasPhysicalQuality(holdall, lightweight). hasPhysicalQuality(holdall, soft_Deformable). hasRole(holdall, storageContainerRole). affordsTask(holdall, storageTask).
}).
#pos(e731@100, {goesIn(hole_punch, table)}, {}, {
  obj(hole_punch). hasPhysicalQuality(hole_punch, hasBlade). hasPhysicalQuality(hole_punch, heavy). hasPhysicalQuality(hole_punch, rigid). hasPhysicalQuality(hole_punch, sharp). hasRole(hole_punch, toolRole). affordsTask(hole_punch, maintenanceTask).
}).
#pos(e732@100, {goesIn(honey, pantry)}, {}, {
  obj(honey). hasPhysicalQuality(honey, perishable). hasRole(honey, consumableRole). affordsTask(honey, eatingDrinkingTask).
}).
#pos(e733@100, {goesIn(hook, cabinet)}, {}, {
  obj(hook). hasRole(hook, toolRole).
}).
#pos(e734@100, {goesIn(horn, garage)}, {}, {
  obj(horn). hasPhysicalQuality(horn, lightweight). hasPhysicalQuality(horn, rigid). hasRole(horn, musicalInstrumentRole). affordsTask(horn, leisureTask).
}).
#pos(e735@100, {goesIn(hose, garage)}, {}, {
  obj(hose). hasPhysicalQuality(hose, isFlexible). hasPhysicalQuality(hose, liquid). hasRole(hose, toolRole). affordsTask(hose, cleaningTask).
}).
#pos(e736@100, {goesIn(hose, garden)}, {}, {
  obj(hose). hasPhysicalQuality(hose, isFlexible). hasPhysicalQuality(hose, liquid). hasRole(hose, toolRole). affordsTask(hose, cleaningTask).
}).
#pos(e737@100, {goesIn(hose, storage_room)}, {}, {
  obj(hose). hasPhysicalQuality(hose, isFlexible). hasPhysicalQuality(hose, liquid). hasRole(hose, toolRole). affordsTask(hose, cleaningTask).
}).
#pos(e738@100, {goesIn(hot_sauce, fridge)}, {}, {
  obj(hot_sauce). hasPhysicalQuality(hot_sauce, liquid). hasPhysicalQuality(hot_sauce, perishable). hasRole(hot_sauce, consumableRole). affordsTask(hot_sauce, eatingDrinkingTask).
}).
#pos(e739@100, {goesIn(hot_sauce, pantry)}, {}, {
  obj(hot_sauce). hasPhysicalQuality(hot_sauce, liquid). hasPhysicalQuality(hot_sauce, perishable). hasRole(hot_sauce, consumableRole). affordsTask(hot_sauce, eatingDrinkingTask).
}).
#pos(e740@100, {goesIn(hot_table, kitchen)}, {}, {
  obj(hot_table). hasPhysicalQuality(hot_table, heated). hasRole(hot_table, cookwareRole). hasRole(hot_table, furnitureRole). affordsTask(hot_table, foodPreparationTask).
}).
#pos(e741@100, {goesIn(house, bedroom)}, {}, {
  obj(house). hasPhysicalQuality(house, heavy). hasRole(house, furnitureRole). hasRole(house, storageContainerRole). affordsTask(house, leisureTask). affordsTask(house, workStudyTask).
}).
#pos(e742@100, {goesIn(house, garden)}, {}, {
  obj(house). hasPhysicalQuality(house, heavy). hasRole(house, furnitureRole). hasRole(house, storageContainerRole). affordsTask(house, leisureTask). affordsTask(house, workStudyTask).
}).
#pos(e743@100, {goesIn(house, library)}, {}, {
  obj(house). hasPhysicalQuality(house, heavy). hasRole(house, furnitureRole). hasRole(house, storageContainerRole). affordsTask(house, leisureTask). affordsTask(house, workStudyTask).
}).
#pos(e744@100, {goesIn(ice_cream, fridge)}, {}, {
  obj(ice_cream). hasPhysicalQuality(ice_cream, perishable). hasPhysicalQuality(ice_cream, requiresFreezing). hasRole(ice_cream, consumableRole). affordsTask(ice_cream, eatingDrinkingTask).
}).
#pos(e745@100, {goesIn(ice_cubes, dining_room)}, {}, {
  obj(ice_cubes). hasPhysicalQuality(ice_cubes, perishable). hasPhysicalQuality(ice_cubes, requiresFreezing). hasRole(ice_cubes, consumableRole). affordsTask(ice_cubes, eatingDrinkingTask).
}).
#pos(e746@100, {goesIn(ice_cubes, fridge)}, {}, {
  obj(ice_cubes). hasPhysicalQuality(ice_cubes, perishable). hasPhysicalQuality(ice_cubes, requiresFreezing). hasRole(ice_cubes, consumableRole). affordsTask(ice_cubes, eatingDrinkingTask).
}).
#pos(e747@100, {goesIn(ice_cubes, kitchen)}, {}, {
  obj(ice_cubes). hasPhysicalQuality(ice_cubes, perishable). hasPhysicalQuality(ice_cubes, requiresFreezing). hasRole(ice_cubes, consumableRole). affordsTask(ice_cubes, eatingDrinkingTask).
}).
#pos(e748@100, {goesIn(icebox, bedroom)}, {}, {
  obj(icebox). hasPhysicalQuality(icebox, requiresFreezing). hasRole(icebox, applianceRole). affordsTask(icebox, storageTask).
}).
#pos(e749@100, {goesIn(icebox, kitchen)}, {}, {
  obj(icebox). hasPhysicalQuality(icebox, requiresFreezing). hasRole(icebox, applianceRole). affordsTask(icebox, storageTask).
}).
#pos(e750@100, {goesIn(index_card, library)}, {}, {
  obj(index_card). hasPhysicalQuality(index_card, lightweight). hasPhysicalQuality(index_card, rigid). hasRole(index_card, documentRole). affordsTask(index_card, workStudyTask).
}).
#pos(e751@100, {goesIn(index_card_cabinet, library)}, {}, {
  obj(index_card_cabinet). hasPhysicalQuality(index_card_cabinet, hasContainer). hasPhysicalQuality(index_card_cabinet, heavy). hasRole(index_card_cabinet, storageContainerRole). affordsTask(index_card_cabinet, storageTask).
}).
#pos(e752@100, {goesIn(ink, garden)}, {}, {
  obj(ink). hasPhysicalQuality(ink, liquid). hasPhysicalQuality(ink, toxic_Hazardous).
}).
#pos(e753@100, {goesIn(ink, home_office)}, {}, {
  obj(ink). hasPhysicalQuality(ink, liquid). hasPhysicalQuality(ink, toxic_Hazardous).
}).
#pos(e754@100, {goesIn(ink, library)}, {}, {
  obj(ink). hasPhysicalQuality(ink, liquid). hasPhysicalQuality(ink, toxic_Hazardous).
}).
#pos(e755@100, {goesIn(instrument_triangle, table)}, {}, {
  obj(instrument_triangle). hasPhysicalQuality(instrument_triangle, lightweight). hasPhysicalQuality(instrument_triangle, rigid). hasRole(instrument_triangle, musicalInstrumentRole). affordsTask(instrument_triangle, leisureTask).
}).
#pos(e756@100, {goesIn(iron, bedroom)}, {}, {
  obj(iron). hasPhysicalQuality(iron, heated). hasPhysicalQuality(iron, heavy). hasRole(iron, toolRole). affordsTask(iron, maintenanceTask).
}).
#pos(e757@100, {goesIn(iron, hallway)}, {}, {
  obj(iron). hasPhysicalQuality(iron, heated). hasPhysicalQuality(iron, heavy). hasRole(iron, toolRole). affordsTask(iron, maintenanceTask).
}).
#pos(e758@100, {goesIn(iron, kitchen)}, {}, {
  obj(iron). hasPhysicalQuality(iron, heated). hasPhysicalQuality(iron, heavy). hasRole(iron, toolRole). affordsTask(iron, maintenanceTask).
}).
#pos(e759@100, {goesIn(iron, laundry_room)}, {}, {
  obj(iron). hasPhysicalQuality(iron, heated). hasPhysicalQuality(iron, heavy). hasRole(iron, toolRole). affordsTask(iron, maintenanceTask).
}).
#pos(e760@100, {goesIn(iron, storage_room)}, {}, {
  obj(iron). hasPhysicalQuality(iron, heated). hasPhysicalQuality(iron, heavy). hasRole(iron, toolRole). affordsTask(iron, maintenanceTask).
}).
#pos(e761@100, {goesIn(jacket, bedroom)}, {}, {
  obj(jacket). hasPhysicalQuality(jacket, soft_Deformable). hasPhysicalQuality(jacket, washable). hasRole(jacket, clothingRole). affordsTask(jacket, dressingTask).
}).
#pos(e762@100, {goesIn(jacket, closet)}, {}, {
  obj(jacket). hasPhysicalQuality(jacket, soft_Deformable). hasPhysicalQuality(jacket, washable). hasRole(jacket, clothingRole). affordsTask(jacket, dressingTask).
}).
#pos(e763@100, {goesIn(jacket, garage)}, {}, {
  obj(jacket). hasPhysicalQuality(jacket, soft_Deformable). hasPhysicalQuality(jacket, washable). hasRole(jacket, clothingRole). affordsTask(jacket, dressingTask).
}).
#pos(e764@100, {goesIn(jar, bedroom)}, {}, {
  obj(jar). hasPhysicalQuality(jar, hasContainer). hasRole(jar, storageContainerRole). affordsTask(jar, storageTask).
}).
#pos(e765@100, {goesIn(jar, cabinet)}, {}, {
  obj(jar). hasPhysicalQuality(jar, hasContainer). hasRole(jar, storageContainerRole). affordsTask(jar, storageTask).
}).
#pos(e766@100, {goesIn(jar, fridge)}, {}, {
  obj(jar). hasPhysicalQuality(jar, hasContainer). hasRole(jar, storageContainerRole). affordsTask(jar, storageTask).
}).
#pos(e767@100, {goesIn(jar, kitchen)}, {}, {
  obj(jar). hasPhysicalQuality(jar, hasContainer). hasRole(jar, storageContainerRole). affordsTask(jar, storageTask).
}).
#pos(e768@100, {goesIn(jar, pantry)}, {}, {
  obj(jar). hasPhysicalQuality(jar, hasContainer). hasRole(jar, storageContainerRole). affordsTask(jar, storageTask).
}).
#pos(e769@100, {goesIn(jar, shelf)}, {}, {
  obj(jar). hasPhysicalQuality(jar, hasContainer). hasRole(jar, storageContainerRole). affordsTask(jar, storageTask).
}).
#pos(e770@100, {goesIn(jars, cabinet)}, {}, {
  obj(jars). hasPhysicalQuality(jars, hasContainer). hasRole(jars, storageContainerRole). affordsTask(jars, storageTask).
}).
#pos(e771@100, {goesIn(jars, storage_room)}, {}, {
  obj(jars). hasPhysicalQuality(jars, hasContainer). hasRole(jars, storageContainerRole). affordsTask(jars, storageTask).
}).
#pos(e772@100, {goesIn(jeans, bedroom)}, {}, {
  obj(jeans). hasPhysicalQuality(jeans, soft_Deformable). hasPhysicalQuality(jeans, washable). hasRole(jeans, clothingRole). affordsTask(jeans, dressingTask).
}).
#pos(e773@100, {goesIn(jeans, closet)}, {}, {
  obj(jeans). hasPhysicalQuality(jeans, soft_Deformable). hasPhysicalQuality(jeans, washable). hasRole(jeans, clothingRole). affordsTask(jeans, dressingTask).
}).
#pos(e774@100, {goesIn(jeans, drawer)}, {}, {
  obj(jeans). hasPhysicalQuality(jeans, soft_Deformable). hasPhysicalQuality(jeans, washable). hasRole(jeans, clothingRole). affordsTask(jeans, dressingTask).
}).
#pos(e775@100, {goesIn(jeans, storage_room)}, {}, {
  obj(jeans). hasPhysicalQuality(jeans, soft_Deformable). hasPhysicalQuality(jeans, washable). hasRole(jeans, clothingRole). affordsTask(jeans, dressingTask).
}).
#pos(e776@100, {goesIn(jello, fridge)}, {}, {
  obj(jello). hasPhysicalQuality(jello, perishable). hasPhysicalQuality(jello, soft_Deformable). hasRole(jello, consumableRole). affordsTask(jello, eatingDrinkingTask).
}).
#pos(e777@100, {goesIn(jelly, fridge)}, {}, {
  obj(jelly). hasPhysicalQuality(jelly, liquid). hasPhysicalQuality(jelly, soft_Deformable). hasRole(jelly, consumableRole). affordsTask(jelly, eatingDrinkingTask).
}).
#pos(e778@100, {goesIn(jelly, pantry)}, {}, {
  obj(jelly). hasPhysicalQuality(jelly, liquid). hasPhysicalQuality(jelly, soft_Deformable). hasRole(jelly, consumableRole). affordsTask(jelly, eatingDrinkingTask).
}).
#pos(e779@100, {goesIn(juice, fridge)}, {}, {
  obj(juice). hasPhysicalQuality(juice, liquid). hasPhysicalQuality(juice, perishable). hasRole(juice, consumableRole). affordsTask(juice, eatingDrinkingTask).
}).
#pos(e780@100, {goesIn(ketchup, fridge)}, {}, {
  obj(ketchup). hasPhysicalQuality(ketchup, liquid). hasPhysicalQuality(ketchup, perishable). hasRole(ketchup, consumableRole). affordsTask(ketchup, eatingDrinkingTask).
}).
#pos(e781@100, {goesIn(kettle, kitchen)}, {}, {
  obj(kettle). hasPhysicalQuality(kettle, heated). hasPhysicalQuality(kettle, heavy). hasRole(kettle, cookwareRole). affordsTask(kettle, foodPreparationTask).
}).
#pos(e782@100, {goesIn(key, library)}, {}, {
  obj(key). hasPhysicalQuality(key, sharp). hasRole(key, toolRole). affordsTask(key, maintenanceTask).
}).
#pos(e783@100, {goesIn(keyboard, music_room)}, {}, {
  obj(keyboard). hasPhysicalQuality(keyboard, electronic). hasPhysicalQuality(keyboard, lightweight). hasRole(keyboard, toolRole). affordsTask(keyboard, workStudyTask).
}).
#pos(e784@100, {goesIn(keyboard, table)}, {}, {
  obj(keyboard). hasPhysicalQuality(keyboard, electronic). hasPhysicalQuality(keyboard, lightweight). hasRole(keyboard, toolRole). affordsTask(keyboard, workStudyTask).
}).
#pos(e785@100, {goesIn(keys, music_room)}, {}, {
  obj(keys). hasPhysicalQuality(keys, lightweight). hasPhysicalQuality(keys, rigid). hasRole(keys, toolRole). affordsTask(keys, maintenanceTask).
}).
#pos(e786@100, {goesIn(keys, shelf)}, {}, {
  obj(keys). hasPhysicalQuality(keys, lightweight). hasPhysicalQuality(keys, rigid). hasRole(keys, toolRole). affordsTask(keys, maintenanceTask).
}).
#pos(e787@100, {goesIn(keys, table)}, {}, {
  obj(keys). hasPhysicalQuality(keys, lightweight). hasPhysicalQuality(keys, rigid). hasRole(keys, toolRole). affordsTask(keys, maintenanceTask).
}).
#pos(e788@100, {goesIn(kitchen_table, closet)}, {}, {
  obj(kitchen_table). hasPhysicalQuality(kitchen_table, heavy). hasPhysicalQuality(kitchen_table, rigid). hasRole(kitchen_table, furnitureRole). affordsTask(kitchen_table, eatingDrinkingTask). affordsTask(kitchen_table, foodPreparationTask).
}).
#pos(e789@100, {goesIn(kitchen_table, storage_room)}, {}, {
  obj(kitchen_table). hasPhysicalQuality(kitchen_table, heavy). hasPhysicalQuality(kitchen_table, rigid). hasRole(kitchen_table, furnitureRole). affordsTask(kitchen_table, eatingDrinkingTask). affordsTask(kitchen_table, foodPreparationTask).
}).
#pos(e790@100, {goesIn(kitchen_utensil, drawer)}, {}, {
  obj(kitchen_utensil). hasPhysicalQuality(kitchen_utensil, rigid). hasPhysicalQuality(kitchen_utensil, sharp). hasRole(kitchen_utensil, utensilRole). affordsTask(kitchen_utensil, foodPreparationTask).
}).
#pos(e791@100, {goesIn(kitchen_utensil, kitchen)}, {}, {
  obj(kitchen_utensil). hasPhysicalQuality(kitchen_utensil, rigid). hasPhysicalQuality(kitchen_utensil, sharp). hasRole(kitchen_utensil, utensilRole). affordsTask(kitchen_utensil, foodPreparationTask).
}).
#pos(e792@100, {goesIn(kitchen_utensil, sink)}, {}, {
  obj(kitchen_utensil). hasPhysicalQuality(kitchen_utensil, rigid). hasPhysicalQuality(kitchen_utensil, sharp). hasRole(kitchen_utensil, utensilRole). affordsTask(kitchen_utensil, foodPreparationTask).
}).
#pos(e793@100, {goesIn(kitchenette, bedroom)}, {}, {
  obj(kitchenette). hasPhysicalQuality(kitchenette, heavy). hasPhysicalQuality(kitchenette, rigid). hasRole(kitchenette, cookwareRole). hasRole(kitchenette, storageContainerRole). affordsTask(kitchenette, eatingDrinkingTask). affordsTask(kitchenette, foodPreparationTask).
}).
#pos(e794@100, {goesIn(kleenex, closet)}, {}, {
  obj(kleenex). hasPhysicalQuality(kleenex, lightweight). hasPhysicalQuality(kleenex, soft_Deformable). hasRole(kleenex, consumableRole). affordsTask(kleenex, hygieneTask).
}).
#pos(e795@100, {goesIn(kleenex, garage)}, {}, {
  obj(kleenex). hasPhysicalQuality(kleenex, lightweight). hasPhysicalQuality(kleenex, soft_Deformable). hasRole(kleenex, consumableRole). affordsTask(kleenex, hygieneTask).
}).
#pos(e796@100, {goesIn(kleenex, storage_room)}, {}, {
  obj(kleenex). hasPhysicalQuality(kleenex, lightweight). hasPhysicalQuality(kleenex, soft_Deformable). hasRole(kleenex, consumableRole). affordsTask(kleenex, hygieneTask).
}).
#pos(e797@100, {goesIn(knife, drawer)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e798@100, {goesIn(knife, kitchen)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e799@100, {goesIn(knife, table)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e800@100, {goesIn(knives, drawer)}, {}, {
  obj(knives). hasPhysicalQuality(knives, rigid). hasPhysicalQuality(knives, sharp). hasRole(knives, utensilRole). affordsTask(knives, foodPreparationTask).
}).
#pos(e801@100, {goesIn(knives, kitchen)}, {}, {
  obj(knives). hasPhysicalQuality(knives, rigid). hasPhysicalQuality(knives, sharp). hasRole(knives, utensilRole). affordsTask(knives, foodPreparationTask).
}).
#pos(e802@100, {goesIn(knob, bedroom)}, {}, {
  obj(knob). hasPhysicalQuality(knob, lightweight). hasPhysicalQuality(knob, rigid). hasRole(knob, toolRole). affordsTask(knob, maintenanceTask).
}).
#pos(e803@100, {goesIn(knob, library)}, {}, {
  obj(knob). hasPhysicalQuality(knob, lightweight). hasPhysicalQuality(knob, rigid). hasRole(knob, toolRole). affordsTask(knob, maintenanceTask).
}).
#pos(e804@100, {goesIn(knob, living_room)}, {}, {
  obj(knob). hasPhysicalQuality(knob, lightweight). hasPhysicalQuality(knob, rigid). hasRole(knob, toolRole). affordsTask(knob, maintenanceTask).
}).
#pos(e805@100, {goesIn(label_maker, drawer)}, {}, {
  obj(label_maker). hasPhysicalQuality(label_maker, electronic). hasPhysicalQuality(label_maker, lightweight). hasRole(label_maker, toolRole). affordsTask(label_maker, workStudyTask).
}).
#pos(e806@100, {goesIn(label_maker, storage_room)}, {}, {
  obj(label_maker). hasPhysicalQuality(label_maker, electronic). hasPhysicalQuality(label_maker, lightweight). hasRole(label_maker, toolRole). affordsTask(label_maker, workStudyTask).
}).
#pos(e807@100, {goesIn(ladder, garage)}, {}, {
  obj(ladder). hasPhysicalQuality(ladder, heavy). hasPhysicalQuality(ladder, rigid). hasRole(ladder, toolRole). affordsTask(ladder, maintenanceTask).
}).
#pos(e808@100, {goesIn(lamp, bedroom)}, {}, {
  obj(lamp). hasPhysicalQuality(lamp, electronic). hasPhysicalQuality(lamp, lightweight). hasRole(lamp, lightingRole). affordsTask(lamp, leisureTask).
}).
#pos(e809@100, {goesIn(lamp, shelf)}, {}, {
  obj(lamp). hasPhysicalQuality(lamp, electronic). hasPhysicalQuality(lamp, lightweight). hasRole(lamp, lightingRole). affordsTask(lamp, leisureTask).
}).
#pos(e810@100, {goesIn(lamp, table)}, {}, {
  obj(lamp). hasPhysicalQuality(lamp, electronic). hasPhysicalQuality(lamp, lightweight). hasRole(lamp, lightingRole). affordsTask(lamp, leisureTask).
}).
#pos(e811@100, {goesIn(led, bedroom)}, {}, {
  obj(led). hasPhysicalQuality(led, electronic). hasPhysicalQuality(led, lightweight). hasRole(led, toolRole). affordsTask(led, maintenanceTask).
}).
#pos(e812@100, {goesIn(ledger, table)}, {}, {
  obj(ledger). hasPhysicalQuality(ledger, lightweight). hasRole(ledger, documentRole). affordsTask(ledger, workStudyTask).
}).
#pos(e813@100, {goesIn(leg, bedroom)}, {}, {
  obj(leg). hasPhysicalQuality(leg, heavy). hasPhysicalQuality(leg, rigid). hasRole(leg, furnitureRole).
}).
#pos(e814@100, {goesIn(leg, garden)}, {}, {
  obj(leg). hasPhysicalQuality(leg, heavy). hasPhysicalQuality(leg, rigid). hasRole(leg, furnitureRole).
}).
#pos(e815@100, {goesIn(leg, hallway)}, {}, {
  obj(leg). hasPhysicalQuality(leg, heavy). hasPhysicalQuality(leg, rigid). hasRole(leg, furnitureRole).
}).
#pos(e816@100, {goesIn(leg, kitchen)}, {}, {
  obj(leg). hasPhysicalQuality(leg, heavy). hasPhysicalQuality(leg, rigid). hasRole(leg, furnitureRole).
}).
#pos(e817@100, {goesIn(leg, living_room)}, {}, {
  obj(leg). hasPhysicalQuality(leg, heavy). hasPhysicalQuality(leg, rigid). hasRole(leg, furnitureRole).
}).
#pos(e818@100, {goesIn(leg, table)}, {}, {
  obj(leg). hasPhysicalQuality(leg, heavy). hasPhysicalQuality(leg, rigid). hasRole(leg, furnitureRole).
}).
#pos(e819@100, {goesIn(legs, table)}, {}, {
  obj(legs). hasRole(legs, furnitureRole).
}).
#pos(e820@100, {goesIn(lemon, fridge)}, {}, {
  obj(lemon). hasPhysicalQuality(lemon, fragile). hasPhysicalQuality(lemon, perishable). hasRole(lemon, consumableRole). affordsTask(lemon, eatingDrinkingTask).
}).
#pos(e821@100, {goesIn(lemon_curd, pantry)}, {}, {
  obj(lemon_curd). hasPhysicalQuality(lemon_curd, perishable). hasRole(lemon_curd, consumableRole). affordsTask(lemon_curd, eatingDrinkingTask).
}).
#pos(e822@100, {goesIn(lemon_juice, fridge)}, {}, {
  obj(lemon_juice). hasPhysicalQuality(lemon_juice, liquid). hasPhysicalQuality(lemon_juice, perishable). hasRole(lemon_juice, consumableRole). affordsTask(lemon_juice, eatingDrinkingTask).
}).
#pos(e823@100, {goesIn(lemon_juice, pantry)}, {}, {
  obj(lemon_juice). hasPhysicalQuality(lemon_juice, liquid). hasPhysicalQuality(lemon_juice, perishable). hasRole(lemon_juice, consumableRole). affordsTask(lemon_juice, eatingDrinkingTask).
}).
#pos(e824@100, {goesIn(letter_slot, bedroom)}, {}, {
  obj(letter_slot). hasPhysicalQuality(letter_slot, lightweight). hasRole(letter_slot, storageContainerRole). affordsTask(letter_slot, wasteDisposalTask).
}).
#pos(e825@100, {goesIn(letter_slot, garden)}, {}, {
  obj(letter_slot). hasPhysicalQuality(letter_slot, lightweight). hasRole(letter_slot, storageContainerRole). affordsTask(letter_slot, wasteDisposalTask).
}).
#pos(e826@100, {goesIn(letters, drawer)}, {}, {
  obj(letters). hasPhysicalQuality(letters, lightweight). hasRole(letters, documentRole).
}).
#pos(e827@100, {goesIn(letters, garden)}, {}, {
  obj(letters). hasPhysicalQuality(letters, lightweight). hasRole(letters, documentRole).
}).
#pos(e828@100, {goesIn(letters, library)}, {}, {
  obj(letters). hasPhysicalQuality(letters, lightweight). hasRole(letters, documentRole).
}).
#pos(e829@100, {goesIn(lettuce, fridge)}, {}, {
  obj(lettuce). hasPhysicalQuality(lettuce, perishable). hasRole(lettuce, consumableRole). affordsTask(lettuce, foodPreparationTask).
}).
#pos(e830@100, {goesIn(level, garage)}, {}, {
  obj(level). hasPhysicalQuality(level, rigid). hasRole(level, toolRole). affordsTask(level, maintenanceTask).
}).
#pos(e831@100, {goesIn(light, bedroom)}, {}, {
  obj(light). hasPhysicalQuality(light, electronic). hasPhysicalQuality(light, lightweight). hasRole(light, lightingRole). affordsTask(light, leisureTask).
}).
#pos(e832@100, {goesIn(light, closet)}, {}, {
  obj(light). hasPhysicalQuality(light, electronic). hasPhysicalQuality(light, lightweight). hasRole(light, lightingRole). affordsTask(light, leisureTask).
}).
#pos(e833@100, {goesIn(light, fridge)}, {}, {
  obj(light). hasPhysicalQuality(light, electronic). hasPhysicalQuality(light, lightweight). hasRole(light, lightingRole). affordsTask(light, leisureTask).
}).
#pos(e834@100, {goesIn(light, garden)}, {}, {
  obj(light). hasPhysicalQuality(light, electronic). hasPhysicalQuality(light, lightweight). hasRole(light, lightingRole). affordsTask(light, leisureTask).
}).
#pos(e835@100, {goesIn(light, storage_room)}, {}, {
  obj(light). hasPhysicalQuality(light, electronic). hasPhysicalQuality(light, lightweight). hasRole(light, lightingRole). affordsTask(light, leisureTask).
}).
#pos(e836@100, {goesIn(light, table)}, {}, {
  obj(light). hasPhysicalQuality(light, electronic). hasPhysicalQuality(light, lightweight). hasRole(light, lightingRole). affordsTask(light, leisureTask).
}).
#pos(e837@100, {goesIn(light_bulb, bedroom)}, {}, {
  obj(light_bulb). hasPhysicalQuality(light_bulb, electronic). hasPhysicalQuality(light_bulb, lightweight). hasRole(light_bulb, lightingRole). affordsTask(light_bulb, leisureTask).
}).
#pos(e838@100, {goesIn(light_bulb, closet)}, {}, {
  obj(light_bulb). hasPhysicalQuality(light_bulb, electronic). hasPhysicalQuality(light_bulb, lightweight). hasRole(light_bulb, lightingRole). affordsTask(light_bulb, leisureTask).
}).
#pos(e839@100, {goesIn(light_bulb, storage_room)}, {}, {
  obj(light_bulb). hasPhysicalQuality(light_bulb, electronic). hasPhysicalQuality(light_bulb, lightweight). hasRole(light_bulb, lightingRole). affordsTask(light_bulb, leisureTask).
}).
#pos(e840@100, {goesIn(light_source, bedroom)}, {}, {
  obj(light_source). hasPhysicalQuality(light_source, electronic). hasPhysicalQuality(light_source, heated). hasRole(light_source, lightingRole). affordsTask(light_source, leisureTask).
}).
#pos(e841@100, {goesIn(light_source, hallway)}, {}, {
  obj(light_source). hasPhysicalQuality(light_source, electronic). hasPhysicalQuality(light_source, heated). hasRole(light_source, lightingRole). affordsTask(light_source, leisureTask).
}).
#pos(e842@100, {goesIn(light_source, kitchen)}, {}, {
  obj(light_source). hasPhysicalQuality(light_source, electronic). hasPhysicalQuality(light_source, heated). hasRole(light_source, lightingRole). affordsTask(light_source, leisureTask).
}).
#pos(e843@100, {goesIn(light_source, storage_room)}, {}, {
  obj(light_source). hasPhysicalQuality(light_source, electronic). hasPhysicalQuality(light_source, heated). hasRole(light_source, lightingRole). affordsTask(light_source, leisureTask).
}).
#pos(e844@100, {goesIn(lightbulb, fridge)}, {}, {
  obj(lightbulb). hasPhysicalQuality(lightbulb, electronic). hasPhysicalQuality(lightbulb, lightweight). hasRole(lightbulb, lightingRole). affordsTask(lightbulb, leisureTask).
}).
#pos(e845@100, {goesIn(limes, fridge)}, {}, {
  obj(limes). hasPhysicalQuality(limes, perishable). hasRole(limes, consumableRole). affordsTask(limes, eatingDrinkingTask).
}).
#pos(e846@100, {goesIn(line, bedroom)}, {}, {
  obj(line). hasPhysicalQuality(line, lightweight). hasPhysicalQuality(line, rigid). hasRole(line, toolRole). affordsTask(line, maintenanceTask).
}).
#pos(e847@100, {goesIn(line, closet)}, {}, {
  obj(line). hasPhysicalQuality(line, lightweight). hasPhysicalQuality(line, rigid). hasRole(line, toolRole). affordsTask(line, maintenanceTask).
}).
#pos(e848@100, {goesIn(line, library)}, {}, {
  obj(line). hasPhysicalQuality(line, lightweight). hasPhysicalQuality(line, rigid). hasRole(line, toolRole). affordsTask(line, maintenanceTask).
}).
#pos(e849@100, {goesIn(linen, bedroom)}, {}, {
  obj(linen). hasPhysicalQuality(linen, soft_Deformable). hasPhysicalQuality(linen, washable). hasRole(linen, clothingRole). affordsTask(linen, dressingTask).
}).
#pos(e850@100, {goesIn(linen, closet)}, {}, {
  obj(linen). hasPhysicalQuality(linen, soft_Deformable). hasPhysicalQuality(linen, washable). hasRole(linen, clothingRole). affordsTask(linen, dressingTask).
}).
#pos(e851@100, {goesIn(linen, hallway)}, {}, {
  obj(linen). hasPhysicalQuality(linen, soft_Deformable). hasPhysicalQuality(linen, washable). hasRole(linen, clothingRole). affordsTask(linen, dressingTask).
}).
#pos(e852@100, {goesIn(linen_chest, bedroom)}, {}, {
  obj(linen_chest). hasPhysicalQuality(linen_chest, heavy). hasPhysicalQuality(linen_chest, rigid). hasRole(linen_chest, storageContainerRole). affordsTask(linen_chest, storageTask).
}).
#pos(e853@100, {goesIn(linen_chest, closet)}, {}, {
  obj(linen_chest). hasPhysicalQuality(linen_chest, heavy). hasPhysicalQuality(linen_chest, rigid). hasRole(linen_chest, storageContainerRole). affordsTask(linen_chest, storageTask).
}).
#pos(e854@100, {goesIn(linen_chest, hallway)}, {}, {
  obj(linen_chest). hasPhysicalQuality(linen_chest, heavy). hasPhysicalQuality(linen_chest, rigid). hasRole(linen_chest, storageContainerRole). affordsTask(linen_chest, storageTask).
}).
#pos(e855@100, {goesIn(linen_chest, library)}, {}, {
  obj(linen_chest). hasPhysicalQuality(linen_chest, heavy). hasPhysicalQuality(linen_chest, rigid). hasRole(linen_chest, storageContainerRole). affordsTask(linen_chest, storageTask).
}).
#pos(e856@100, {goesIn(linoleum, bedroom)}, {}, {
  obj(linoleum). hasPhysicalQuality(linoleum, fragile). hasRole(linoleum, furnitureRole).
}).
#pos(e857@100, {goesIn(linoleum, closet)}, {}, {
  obj(linoleum). hasPhysicalQuality(linoleum, fragile). hasRole(linoleum, furnitureRole).
}).
#pos(e858@100, {goesIn(linoleum, kitchen)}, {}, {
  obj(linoleum). hasPhysicalQuality(linoleum, fragile). hasRole(linoleum, furnitureRole).
}).
#pos(e859@100, {goesIn(linoleum, library)}, {}, {
  obj(linoleum). hasPhysicalQuality(linoleum, fragile). hasRole(linoleum, furnitureRole).
}).
#pos(e860@100, {goesIn(liquids, closet)}, {}, {
  obj(liquids). hasPhysicalQuality(liquids, liquid). hasRole(liquids, consumableRole). affordsTask(liquids, eatingDrinkingTask).
}).
#pos(e861@100, {goesIn(liquids, garage)}, {}, {
  obj(liquids). hasPhysicalQuality(liquids, liquid). hasRole(liquids, consumableRole). affordsTask(liquids, eatingDrinkingTask).
}).
#pos(e862@100, {goesIn(liquids, kitchen)}, {}, {
  obj(liquids). hasPhysicalQuality(liquids, liquid). hasRole(liquids, consumableRole). affordsTask(liquids, eatingDrinkingTask).
}).
#pos(e863@100, {goesIn(liquids, pantry)}, {}, {
  obj(liquids). hasPhysicalQuality(liquids, liquid). hasRole(liquids, consumableRole). affordsTask(liquids, eatingDrinkingTask).
}).
#pos(e864@100, {goesIn(liquor_glass, cabinet)}, {}, {
  obj(liquor_glass). hasPhysicalQuality(liquor_glass, lightweight). hasPhysicalQuality(liquor_glass, rigid). hasRole(liquor_glass, utensilRole). affordsTask(liquor_glass, eatingDrinkingTask).
}).
#pos(e865@100, {goesIn(liquor_glass, kitchen)}, {}, {
  obj(liquor_glass). hasPhysicalQuality(liquor_glass, lightweight). hasPhysicalQuality(liquor_glass, rigid). hasRole(liquor_glass, utensilRole). affordsTask(liquor_glass, eatingDrinkingTask).
}).
#pos(e866@100, {goesIn(lock, garden)}, {}, {
  obj(lock). hasPhysicalQuality(lock, heavy). hasRole(lock, toolRole). affordsTask(lock, maintenanceTask).
}).
#pos(e867@100, {goesIn(lock, library)}, {}, {
  obj(lock). hasPhysicalQuality(lock, heavy). hasRole(lock, toolRole). affordsTask(lock, maintenanceTask).
}).
#pos(e868@100, {goesIn(love_seat, bedroom)}, {}, {
  obj(love_seat). hasPhysicalQuality(love_seat, heavy). hasPhysicalQuality(love_seat, soft_Deformable). hasRole(love_seat, furnitureRole). affordsTask(love_seat, storageTask).
}).
#pos(e869@100, {goesIn(luggage, bedroom)}, {}, {
  obj(luggage). hasPhysicalQuality(luggage, hasContainer). hasPhysicalQuality(luggage, lightweight). hasRole(luggage, storageContainerRole).
}).
#pos(e870@100, {goesIn(luggage, closet)}, {}, {
  obj(luggage). hasPhysicalQuality(luggage, hasContainer). hasPhysicalQuality(luggage, lightweight). hasRole(luggage, storageContainerRole).
}).
#pos(e871@100, {goesIn(luggage, garage)}, {}, {
  obj(luggage). hasPhysicalQuality(luggage, hasContainer). hasPhysicalQuality(luggage, lightweight). hasRole(luggage, storageContainerRole).
}).
#pos(e872@100, {goesIn(luggage, storage_room)}, {}, {
  obj(luggage). hasPhysicalQuality(luggage, hasContainer). hasPhysicalQuality(luggage, lightweight). hasRole(luggage, storageContainerRole).
}).
#pos(e873@100, {goesIn(machine, bedroom)}, {}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e874@100, {goesIn(magazines, bed)}, {}, {
  obj(magazines). hasPhysicalQuality(magazines, lightweight). hasRole(magazines, documentRole). affordsTask(magazines, leisureTask).
}).
#pos(e875@100, {goesIn(magazines, library)}, {}, {
  obj(magazines). hasPhysicalQuality(magazines, lightweight). hasRole(magazines, documentRole). affordsTask(magazines, leisureTask).
}).
#pos(e876@100, {goesIn(magazines, table)}, {}, {
  obj(magazines). hasPhysicalQuality(magazines, lightweight). hasRole(magazines, documentRole). affordsTask(magazines, leisureTask).
}).
#pos(e877@100, {goesIn(magnet, fridge)}, {}, {
  obj(magnet). hasPhysicalQuality(magnet, rigid). hasRole(magnet, toolRole). affordsTask(magnet, maintenanceTask).
}).
#pos(e878@100, {goesIn(mail, bedroom)}, {}, {
  obj(mail). hasRole(mail, consumableRole).
}).
#pos(e879@100, {goesIn(mail, fridge)}, {}, {
  obj(mail). hasRole(mail, consumableRole).
}).
#pos(e880@100, {goesIn(mail, table)}, {}, {
  obj(mail). hasRole(mail, consumableRole).
}).
#pos(e881@100, {goesIn(mailbox, garden)}, {}, {
  obj(mailbox). hasPhysicalQuality(mailbox, heavy). hasRole(mailbox, storageContainerRole). affordsTask(mailbox, storageTask).
}).
#pos(e882@100, {goesIn(map, library)}, {}, {
  obj(map). hasPhysicalQuality(map, lightweight). hasRole(map, toolRole). affordsTask(map, leisureTask).
}).
#pos(e883@100, {goesIn(map, table)}, {}, {
  obj(map). hasPhysicalQuality(map, lightweight). hasRole(map, toolRole). affordsTask(map, leisureTask).
}).
#pos(e884@100, {goesIn(maps, library)}, {}, {
  obj(maps). hasRole(maps, toolRole). affordsTask(maps, leisureTask).
}).
#pos(e885@100, {goesIn(marble, living_room)}, {}, {
  obj(marble). hasPhysicalQuality(marble, granular). hasPhysicalQuality(marble, rigid). hasRole(marble, decorationRole).
}).
#pos(e886@100, {goesIn(marble, pantry)}, {}, {
  obj(marble). hasPhysicalQuality(marble, granular). hasPhysicalQuality(marble, rigid). hasRole(marble, decorationRole).
}).
#pos(e887@100, {goesIn(marker, bedroom)}, {}, {
  obj(marker). hasPhysicalQuality(marker, lightweight). hasRole(marker, toolRole). affordsTask(marker, foodPreparationTask).
}).
#pos(e888@100, {goesIn(marker, closet)}, {}, {
  obj(marker). hasPhysicalQuality(marker, lightweight). hasRole(marker, toolRole). affordsTask(marker, foodPreparationTask).
}).
#pos(e889@100, {goesIn(marker, drawer)}, {}, {
  obj(marker). hasPhysicalQuality(marker, lightweight). hasRole(marker, toolRole). affordsTask(marker, foodPreparationTask).
}).
#pos(e890@100, {goesIn(marker, library)}, {}, {
  obj(marker). hasPhysicalQuality(marker, lightweight). hasRole(marker, toolRole). affordsTask(marker, foodPreparationTask).
}).
#pos(e891@100, {goesIn(marker, table)}, {}, {
  obj(marker). hasPhysicalQuality(marker, lightweight). hasRole(marker, toolRole). affordsTask(marker, foodPreparationTask).
}).
#pos(e892@100, {goesIn(mat, bathroom)}, {}, {
  obj(mat). hasPhysicalQuality(mat, lightweight). hasPhysicalQuality(mat, soft_Deformable). hasRole(mat, furnitureRole). affordsTask(mat, storageTask).
}).
#pos(e893@100, {goesIn(mat, bedroom)}, {}, {
  obj(mat). hasPhysicalQuality(mat, lightweight). hasPhysicalQuality(mat, soft_Deformable). hasRole(mat, furnitureRole). affordsTask(mat, storageTask).
}).
#pos(e894@100, {goesIn(mat, library)}, {}, {
  obj(mat). hasPhysicalQuality(mat, lightweight). hasPhysicalQuality(mat, soft_Deformable). hasRole(mat, furnitureRole). affordsTask(mat, storageTask).
}).
#pos(e895@100, {goesIn(mat, living_room)}, {}, {
  obj(mat). hasPhysicalQuality(mat, lightweight). hasPhysicalQuality(mat, soft_Deformable). hasRole(mat, furnitureRole). affordsTask(mat, storageTask).
}).
#pos(e896@100, {goesIn(matches, closet)}, {}, {
  obj(matches). hasPhysicalQuality(matches, fragile). hasPhysicalQuality(matches, lightweight). hasRole(matches, toolRole). affordsTask(matches, maintenanceTask).
}).
#pos(e897@100, {goesIn(matches, garage)}, {}, {
  obj(matches). hasPhysicalQuality(matches, fragile). hasPhysicalQuality(matches, lightweight). hasRole(matches, toolRole). affordsTask(matches, maintenanceTask).
}).
#pos(e898@100, {goesIn(matches, storage_room)}, {}, {
  obj(matches). hasPhysicalQuality(matches, fragile). hasPhysicalQuality(matches, lightweight). hasRole(matches, toolRole). affordsTask(matches, maintenanceTask).
}).
#pos(e899@100, {goesIn(material, bedroom)}, {}, {
  obj(material). hasPhysicalQuality(material, granular). hasRole(material, consumableRole).
}).
#pos(e900@100, {goesIn(mayonnaise, fridge)}, {}, {
  obj(mayonnaise). hasPhysicalQuality(mayonnaise, liquid). hasPhysicalQuality(mayonnaise, perishable). hasRole(mayonnaise, consumableRole). affordsTask(mayonnaise, eatingDrinkingTask).
}).
#pos(e901@100, {goesIn(mayonnaise, pantry)}, {}, {
  obj(mayonnaise). hasPhysicalQuality(mayonnaise, liquid). hasPhysicalQuality(mayonnaise, perishable). hasRole(mayonnaise, consumableRole). affordsTask(mayonnaise, eatingDrinkingTask).
}).
#pos(e902@100, {goesIn(meat, fridge)}, {}, {
  obj(meat). hasPhysicalQuality(meat, perishable). hasRole(meat, consumableRole). affordsTask(meat, eatingDrinkingTask). affordsTask(meat, foodPreparationTask).
}).
#pos(e903@100, {goesIn(meat, kitchen)}, {}, {
  obj(meat). hasPhysicalQuality(meat, perishable). hasRole(meat, consumableRole). affordsTask(meat, eatingDrinkingTask). affordsTask(meat, foodPreparationTask).
}).
#pos(e904@100, {goesIn(meat, pantry)}, {}, {
  obj(meat). hasPhysicalQuality(meat, perishable). hasRole(meat, consumableRole). affordsTask(meat, eatingDrinkingTask). affordsTask(meat, foodPreparationTask).
}).
#pos(e905@100, {goesIn(mechanical_pencil, drawer)}, {}, {
  obj(mechanical_pencil). hasPhysicalQuality(mechanical_pencil, lightweight). hasPhysicalQuality(mechanical_pencil, rigid). hasRole(mechanical_pencil, toolRole). affordsTask(mechanical_pencil, workStudyTask).
}).
#pos(e906@100, {goesIn(medicine, bathroom)}, {}, {
  obj(medicine). hasPhysicalQuality(medicine, perishable). hasRole(medicine, consumableRole). affordsTask(medicine, eatingDrinkingTask).
}).
#pos(e907@100, {goesIn(medicine, library)}, {}, {
  obj(medicine). hasPhysicalQuality(medicine, perishable). hasRole(medicine, consumableRole). affordsTask(medicine, eatingDrinkingTask).
}).
#pos(e908@100, {goesIn(medicine, pantry)}, {}, {
  obj(medicine). hasPhysicalQuality(medicine, perishable). hasRole(medicine, consumableRole). affordsTask(medicine, eatingDrinkingTask).
}).
#pos(e909@100, {goesIn(microwave, kitchen)}, {}, {
  obj(microwave). hasPhysicalQuality(microwave, electronic). hasPhysicalQuality(microwave, heated). hasRole(microwave, applianceRole). affordsTask(microwave, foodPreparationTask).
}).
#pos(e910@100, {goesIn(microwave_oven, bedroom)}, {}, {
  obj(microwave_oven). hasPhysicalQuality(microwave_oven, electronic). hasPhysicalQuality(microwave_oven, heated). hasRole(microwave_oven, applianceRole). affordsTask(microwave_oven, foodPreparationTask).
}).
#pos(e911@100, {goesIn(microwave_oven, kitchen)}, {}, {
  obj(microwave_oven). hasPhysicalQuality(microwave_oven, electronic). hasPhysicalQuality(microwave_oven, heated). hasRole(microwave_oven, applianceRole). affordsTask(microwave_oven, foodPreparationTask).
}).
#pos(e912@100, {goesIn(milk, bedroom)}, {}, {
  obj(milk). hasPhysicalQuality(milk, perishable). hasRole(milk, consumableRole). affordsTask(milk, eatingDrinkingTask).
}).
#pos(e913@100, {goesIn(milk, closet)}, {}, {
  obj(milk). hasPhysicalQuality(milk, perishable). hasRole(milk, consumableRole). affordsTask(milk, eatingDrinkingTask).
}).
#pos(e914@100, {goesIn(milk, fridge)}, {}, {
  obj(milk). hasPhysicalQuality(milk, perishable). hasRole(milk, consumableRole). affordsTask(milk, eatingDrinkingTask).
}).
#pos(e915@100, {goesIn(milk, garage)}, {}, {
  obj(milk). hasPhysicalQuality(milk, perishable). hasRole(milk, consumableRole). affordsTask(milk, eatingDrinkingTask).
}).
#pos(e916@100, {goesIn(milk, kitchen)}, {}, {
  obj(milk). hasPhysicalQuality(milk, perishable). hasRole(milk, consumableRole). affordsTask(milk, eatingDrinkingTask).
}).
#pos(e917@100, {goesIn(milk, pantry)}, {}, {
  obj(milk). hasPhysicalQuality(milk, perishable). hasRole(milk, consumableRole). affordsTask(milk, eatingDrinkingTask).
}).
#pos(e918@100, {goesIn(mirror, bedroom)}, {}, {
  obj(mirror). hasPhysicalQuality(mirror, electronic). hasPhysicalQuality(mirror, rigid). hasRole(mirror, decorationRole).
}).
#pos(e919@100, {goesIn(mirror, closet)}, {}, {
  obj(mirror). hasPhysicalQuality(mirror, electronic). hasPhysicalQuality(mirror, rigid). hasRole(mirror, decorationRole).
}).
#pos(e920@100, {goesIn(monitor, closet)}, {}, {
  obj(monitor). hasRole(monitor, entertainmentRole). affordsTask(monitor, leisureTask).
}).
#pos(e921@100, {goesIn(monitor, garage)}, {}, {
  obj(monitor). hasRole(monitor, entertainmentRole). affordsTask(monitor, leisureTask).
}).
#pos(e922@100, {goesIn(monitor, storage_room)}, {}, {
  obj(monitor). hasRole(monitor, entertainmentRole). affordsTask(monitor, leisureTask).
}).
#pos(e923@100, {goesIn(monitor, table)}, {}, {
  obj(monitor). hasRole(monitor, entertainmentRole). affordsTask(monitor, leisureTask).
}).
#pos(e924@100, {goesIn(motherboard, library)}, {}, {
  obj(motherboard). hasPhysicalQuality(motherboard, electronic). hasPhysicalQuality(motherboard, rigid). hasRole(motherboard, toolRole).
}).
#pos(e925@100, {goesIn(mouse, bedroom)}, {}, {
  obj(mouse). hasPhysicalQuality(mouse, lightweight). hasRole(mouse, consumableRole).
}).
#pos(e926@100, {goesIn(mouse, cabinet)}, {}, {
  obj(mouse). hasPhysicalQuality(mouse, lightweight). hasRole(mouse, consumableRole).
}).
#pos(e927@100, {goesIn(mouse, closet)}, {}, {
  obj(mouse). hasPhysicalQuality(mouse, lightweight). hasRole(mouse, consumableRole).
}).
#pos(e928@100, {goesIn(mouse, garage)}, {}, {
  obj(mouse). hasPhysicalQuality(mouse, lightweight). hasRole(mouse, consumableRole).
}).
#pos(e929@100, {goesIn(mouse, garden)}, {}, {
  obj(mouse). hasPhysicalQuality(mouse, lightweight). hasRole(mouse, consumableRole).
}).
#pos(e930@100, {goesIn(mouse, kitchen)}, {}, {
  obj(mouse). hasPhysicalQuality(mouse, lightweight). hasRole(mouse, consumableRole).
}).
#pos(e931@100, {goesIn(mouse, library)}, {}, {
  obj(mouse). hasPhysicalQuality(mouse, lightweight). hasRole(mouse, consumableRole).
}).
#pos(e932@100, {goesIn(mouse, living_room)}, {}, {
  obj(mouse). hasPhysicalQuality(mouse, lightweight). hasRole(mouse, consumableRole).
}).
#pos(e933@100, {goesIn(mouse, pantry)}, {}, {
  obj(mouse). hasPhysicalQuality(mouse, lightweight). hasRole(mouse, consumableRole).
}).
#pos(e934@100, {goesIn(mouse, shelf)}, {}, {
  obj(mouse). hasPhysicalQuality(mouse, lightweight). hasRole(mouse, consumableRole).
}).
#pos(e935@100, {goesIn(mouse, storage_room)}, {}, {
  obj(mouse). hasPhysicalQuality(mouse, lightweight). hasRole(mouse, consumableRole).
}).
#pos(e936@100, {goesIn(mouse, table)}, {}, {
  obj(mouse). hasPhysicalQuality(mouse, lightweight). hasRole(mouse, consumableRole).
}).
#pos(e937@100, {goesIn(mouse, trash)}, {}, {
  obj(mouse). hasPhysicalQuality(mouse, lightweight). hasRole(mouse, consumableRole).
}).
#pos(e938@100, {goesIn(mouthwash, bathroom)}, {}, {
  obj(mouthwash). hasPhysicalQuality(mouthwash, liquid). hasPhysicalQuality(mouthwash, toxic_Hazardous). hasRole(mouthwash, cleaningToolRole). affordsTask(mouthwash, hygieneTask).
}).
#pos(e939@100, {goesIn(mouthwash, bedroom)}, {}, {
  obj(mouthwash). hasPhysicalQuality(mouthwash, liquid). hasPhysicalQuality(mouthwash, toxic_Hazardous). hasRole(mouthwash, cleaningToolRole). affordsTask(mouthwash, hygieneTask).
}).
#pos(e940@100, {goesIn(mouthwash, library)}, {}, {
  obj(mouthwash). hasPhysicalQuality(mouthwash, liquid). hasPhysicalQuality(mouthwash, toxic_Hazardous). hasRole(mouthwash, cleaningToolRole). affordsTask(mouthwash, hygieneTask).
}).
#pos(e941@100, {goesIn(mug, cabinet)}, {}, {
  obj(mug). hasPhysicalQuality(mug, hasContainer). hasPhysicalQuality(mug, liquid). hasRole(mug, utensilRole). affordsTask(mug, eatingDrinkingTask).
}).
#pos(e942@100, {goesIn(music_stand, music_room)}, {}, {
  obj(music_stand). hasPhysicalQuality(music_stand, lightweight). hasPhysicalQuality(music_stand, rigid). hasRole(music_stand, furnitureRole). affordsTask(music_stand, workStudyTask).
}).
#pos(e943@100, {goesIn(musical_instrument, music_room)}, {}, {
  obj(musical_instrument). hasRole(musical_instrument, musicalInstrumentRole).
}).
#pos(e944@100, {goesIn(mustard, fridge)}, {}, {
  obj(mustard). hasPhysicalQuality(mustard, liquid). hasRole(mustard, consumableRole). affordsTask(mustard, eatingDrinkingTask).
}).
#pos(e945@100, {goesIn(mustard, pantry)}, {}, {
  obj(mustard). hasPhysicalQuality(mustard, liquid). hasRole(mustard, consumableRole). affordsTask(mustard, eatingDrinkingTask).
}).
#pos(e946@100, {goesIn(nail_clippers, drawer)}, {}, {
  obj(nail_clippers). hasPhysicalQuality(nail_clippers, rigid). hasPhysicalQuality(nail_clippers, sharp). hasRole(nail_clippers, toolRole). affordsTask(nail_clippers, hygieneTask).
}).
#pos(e947@100, {goesIn(nails, closet)}, {}, {
  obj(nails). hasPhysicalQuality(nails, rigid). hasPhysicalQuality(nails, sharp). hasRole(nails, toolRole). affordsTask(nails, maintenanceTask).
}).
#pos(e948@100, {goesIn(nails, garage)}, {}, {
  obj(nails). hasPhysicalQuality(nails, rigid). hasPhysicalQuality(nails, sharp). hasRole(nails, toolRole). affordsTask(nails, maintenanceTask).
}).
#pos(e949@100, {goesIn(nails, kitchen)}, {}, {
  obj(nails). hasPhysicalQuality(nails, rigid). hasPhysicalQuality(nails, sharp). hasRole(nails, toolRole). affordsTask(nails, maintenanceTask).
}).
#pos(e950@100, {goesIn(nails, pantry)}, {}, {
  obj(nails). hasPhysicalQuality(nails, rigid). hasPhysicalQuality(nails, sharp). hasRole(nails, toolRole). affordsTask(nails, maintenanceTask).
}).
#pos(e951@100, {goesIn(nest_of_tables, storage_room)}, {}, {
  obj(nest_of_tables). hasRole(nest_of_tables, furnitureRole).
}).
#pos(e952@100, {goesIn(net, garage)}, {}, {
  obj(net). hasRole(net, toolRole).
}).
#pos(e953@100, {goesIn(night_table, hallway)}, {}, {
  obj(night_table). hasPhysicalQuality(night_table, heavy). hasPhysicalQuality(night_table, rigid). hasRole(night_table, furnitureRole). affordsTask(night_table, storageTask).
}).
#pos(e954@100, {goesIn(notebook, table)}, {}, {
  obj(notebook). hasPhysicalQuality(notebook, lightweight). hasPhysicalQuality(notebook, rigid). hasRole(notebook, documentRole). affordsTask(notebook, workStudyTask).
}).
#pos(e955@100, {goesIn(notepad, drawer)}, {}, {
  obj(notepad). hasPhysicalQuality(notepad, lightweight). hasPhysicalQuality(notepad, rigid). hasRole(notepad, documentRole). affordsTask(notepad, workStudyTask).
}).
#pos(e956@100, {goesIn(notepad, table)}, {}, {
  obj(notepad). hasPhysicalQuality(notepad, lightweight). hasPhysicalQuality(notepad, rigid). hasRole(notepad, documentRole). affordsTask(notepad, workStudyTask).
}).
#pos(e957@100, {goesIn(nuts, closet)}, {}, {
  obj(nuts). hasPhysicalQuality(nuts, granular). hasPhysicalQuality(nuts, perishable). hasRole(nuts, consumableRole). affordsTask(nuts, eatingDrinkingTask).
}).
#pos(e958@100, {goesIn(nuts, garage)}, {}, {
  obj(nuts). hasPhysicalQuality(nuts, granular). hasPhysicalQuality(nuts, perishable). hasRole(nuts, consumableRole). affordsTask(nuts, eatingDrinkingTask).
}).
#pos(e959@100, {goesIn(nuts, kitchen)}, {}, {
  obj(nuts). hasPhysicalQuality(nuts, granular). hasPhysicalQuality(nuts, perishable). hasRole(nuts, consumableRole). affordsTask(nuts, eatingDrinkingTask).
}).
#pos(e960@100, {goesIn(nuts, pantry)}, {}, {
  obj(nuts). hasPhysicalQuality(nuts, granular). hasPhysicalQuality(nuts, perishable). hasRole(nuts, consumableRole). affordsTask(nuts, eatingDrinkingTask).
}).
#pos(e961@100, {goesIn(nylon, closet)}, {}, {
  obj(nylon). hasPhysicalQuality(nylon, lightweight). hasPhysicalQuality(nylon, soft_Deformable).
}).
#pos(e962@100, {goesIn(nylon, drawer)}, {}, {
  obj(nylon). hasPhysicalQuality(nylon, lightweight). hasPhysicalQuality(nylon, soft_Deformable).
}).
#pos(e963@100, {goesIn(oilcloth, garage)}, {}, {
  obj(oilcloth). hasPhysicalQuality(oilcloth, soft_Deformable). hasPhysicalQuality(oilcloth, washable). hasRole(oilcloth, clothingRole). affordsTask(oilcloth, leisureTask).
}).
#pos(e964@100, {goesIn(old_books, storage_room)}, {}, {
  obj(old_books). hasPhysicalQuality(old_books, fragile). hasPhysicalQuality(old_books, lightweight). hasRole(old_books, documentRole). affordsTask(old_books, leisureTask).
}).
#pos(e965@100, {goesIn(old_dress, bedroom)}, {}, {
  obj(old_dress). hasPhysicalQuality(old_dress, lightweight). hasPhysicalQuality(old_dress, soft_Deformable). hasRole(old_dress, clothingRole). affordsTask(old_dress, dressingTask).
}).
#pos(e966@100, {goesIn(old_dress, garage)}, {}, {
  obj(old_dress). hasPhysicalQuality(old_dress, lightweight). hasPhysicalQuality(old_dress, soft_Deformable). hasRole(old_dress, clothingRole). affordsTask(old_dress, dressingTask).
}).
#pos(e967@100, {goesIn(old_dress, storage_room)}, {}, {
  obj(old_dress). hasPhysicalQuality(old_dress, lightweight). hasPhysicalQuality(old_dress, soft_Deformable). hasRole(old_dress, clothingRole). affordsTask(old_dress, dressingTask).
}).
#pos(e968@100, {goesIn(olives, fridge)}, {}, {
  obj(olives). hasPhysicalQuality(olives, perishable). hasRole(olives, consumableRole). affordsTask(olives, eatingDrinkingTask).
}).
#pos(e969@100, {goesIn(olives, pantry)}, {}, {
  obj(olives). hasPhysicalQuality(olives, perishable). hasRole(olives, consumableRole). affordsTask(olives, eatingDrinkingTask).
}).
#pos(e970@100, {goesIn(one_person_chair, dining_room)}, {}, {
  obj(one_person_chair). hasPhysicalQuality(one_person_chair, rigid). hasRole(one_person_chair, furnitureRole). affordsTask(one_person_chair, leisureTask).
}).
#pos(e971@100, {goesIn(onions, fridge)}, {}, {
  obj(onions). hasPhysicalQuality(onions, perishable). hasRole(onions, consumableRole). affordsTask(onions, foodPreparationTask).
}).
#pos(e972@100, {goesIn(onions, kitchen)}, {}, {
  obj(onions). hasPhysicalQuality(onions, perishable). hasRole(onions, consumableRole). affordsTask(onions, foodPreparationTask).
}).
#pos(e973@100, {goesIn(onions, pantry)}, {}, {
  obj(onions). hasPhysicalQuality(onions, perishable). hasRole(onions, consumableRole). affordsTask(onions, foodPreparationTask).
}).
#pos(e974@100, {goesIn(onions, table)}, {}, {
  obj(onions). hasPhysicalQuality(onions, perishable). hasRole(onions, consumableRole). affordsTask(onions, foodPreparationTask).
}).
#pos(e975@100, {goesIn(orange_juice, fridge)}, {}, {
  obj(orange_juice). hasPhysicalQuality(orange_juice, perishable). hasRole(orange_juice, consumableRole). affordsTask(orange_juice, eatingDrinkingTask).
}).
#pos(e976@100, {goesIn(ottoman, closet)}, {}, {
  obj(ottoman). hasPhysicalQuality(ottoman, heavy). hasPhysicalQuality(ottoman, soft_Deformable). hasRole(ottoman, furnitureRole). affordsTask(ottoman, leisureTask).
}).
#pos(e977@100, {goesIn(ottoman, living_room)}, {}, {
  obj(ottoman). hasPhysicalQuality(ottoman, heavy). hasPhysicalQuality(ottoman, soft_Deformable). hasRole(ottoman, furnitureRole). affordsTask(ottoman, leisureTask).
}).
#pos(e978@100, {goesIn(ottoman, storage_room)}, {}, {
  obj(ottoman). hasPhysicalQuality(ottoman, heavy). hasPhysicalQuality(ottoman, soft_Deformable). hasRole(ottoman, furnitureRole). affordsTask(ottoman, leisureTask).
}).
#pos(e979@100, {goesIn(oven, living_room)}, {}, {
  obj(oven). hasPhysicalQuality(oven, heated). hasRole(oven, cookwareRole). affordsTask(oven, foodPreparationTask).
}).
#pos(e980@100, {goesIn(oven_mitts, kitchen)}, {}, {
  obj(oven_mitts). hasPhysicalQuality(oven_mitts, lightweight). hasPhysicalQuality(oven_mitts, soft_Deformable). hasRole(oven_mitts, utensilRole). affordsTask(oven_mitts, foodPreparationTask).
}).
#pos(e981@100, {goesIn(page, garden)}, {}, {
  obj(page). hasRole(page, documentRole).
}).
#pos(e982@100, {goesIn(page, library)}, {}, {
  obj(page). hasRole(page, documentRole).
}).
#pos(e983@100, {goesIn(pail, garage)}, {}, {
  obj(pail). hasPhysicalQuality(pail, hasContainer). hasRole(pail, storageContainerRole). affordsTask(pail, storageTask).
}).
#pos(e984@100, {goesIn(pail, garden)}, {}, {
  obj(pail). hasPhysicalQuality(pail, hasContainer). hasRole(pail, storageContainerRole). affordsTask(pail, storageTask).
}).
#pos(e985@100, {goesIn(pail, laundry_room)}, {}, {
  obj(pail). hasPhysicalQuality(pail, hasContainer). hasRole(pail, storageContainerRole). affordsTask(pail, storageTask).
}).
#pos(e986@100, {goesIn(paint, garage)}, {}, {
  obj(paint). hasPhysicalQuality(paint, liquid). hasPhysicalQuality(paint, toxic_Hazardous). affordsTask(paint, maintenanceTask).
}).
#pos(e987@100, {goesIn(paint, garden)}, {}, {
  obj(paint). hasPhysicalQuality(paint, liquid). hasPhysicalQuality(paint, toxic_Hazardous). affordsTask(paint, maintenanceTask).
}).
#pos(e988@100, {goesIn(paint, kitchen)}, {}, {
  obj(paint). hasPhysicalQuality(paint, liquid). hasPhysicalQuality(paint, toxic_Hazardous). affordsTask(paint, maintenanceTask).
}).
#pos(e989@100, {goesIn(paint, pantry)}, {}, {
  obj(paint). hasPhysicalQuality(paint, liquid). hasPhysicalQuality(paint, toxic_Hazardous). affordsTask(paint, maintenanceTask).
}).
#pos(e990@100, {goesIn(paint, shelf)}, {}, {
  obj(paint). hasPhysicalQuality(paint, liquid). hasPhysicalQuality(paint, toxic_Hazardous). affordsTask(paint, maintenanceTask).
}).
#pos(e991@100, {goesIn(paint, storage_room)}, {}, {
  obj(paint). hasPhysicalQuality(paint, liquid). hasPhysicalQuality(paint, toxic_Hazardous). affordsTask(paint, maintenanceTask).
}).
#pos(e992@100, {goesIn(pair_of_pants, bedroom)}, {}, {
  obj(pair_of_pants). hasPhysicalQuality(pair_of_pants, lightweight). hasPhysicalQuality(pair_of_pants, soft_Deformable). hasRole(pair_of_pants, clothingRole). affordsTask(pair_of_pants, dressingTask).
}).
#pos(e993@100, {goesIn(pair_of_pants, storage_room)}, {}, {
  obj(pair_of_pants). hasPhysicalQuality(pair_of_pants, lightweight). hasPhysicalQuality(pair_of_pants, soft_Deformable). hasRole(pair_of_pants, clothingRole). affordsTask(pair_of_pants, dressingTask).
}).
#pos(e994@100, {goesIn(pair_of_scissors, drawer)}, {}, {
  obj(pair_of_scissors). hasPhysicalQuality(pair_of_scissors, rigid). hasPhysicalQuality(pair_of_scissors, sharp). hasRole(pair_of_scissors, toolRole). affordsTask(pair_of_scissors, maintenanceTask).
}).
#pos(e995@100, {goesIn(pan, kitchen)}, {}, {
  obj(pan). hasPhysicalQuality(pan, heated). hasPhysicalQuality(pan, rigid). hasRole(pan, cookwareRole). affordsTask(pan, foodPreparationTask).
}).
#pos(e996@100, {goesIn(pan, pantry)}, {}, {
  obj(pan). hasPhysicalQuality(pan, heated). hasPhysicalQuality(pan, rigid). hasRole(pan, cookwareRole). affordsTask(pan, foodPreparationTask).
}).
#pos(e997@100, {goesIn(pantry, kitchen)}, {}, {
  obj(pantry). hasPhysicalQuality(pantry, hasContainer). hasRole(pantry, applianceRole). hasRole(pantry, storageContainerRole). affordsTask(pantry, storageTask).
}).
#pos(e998@100, {goesIn(pantry, pantry)}, {}, {
  obj(pantry). hasPhysicalQuality(pantry, hasContainer). hasRole(pantry, applianceRole). hasRole(pantry, storageContainerRole). affordsTask(pantry, storageTask).
}).
#pos(e999@100, {goesIn(paper, closet)}, {}, {
  obj(paper). hasPhysicalQuality(paper, flammable). hasPhysicalQuality(paper, fragile). hasRole(paper, consumableRole). affordsTask(paper, eatingDrinkingTask).
}).
#pos(e1000@100, {goesIn(paper, drawer)}, {}, {
  obj(paper). hasPhysicalQuality(paper, flammable). hasPhysicalQuality(paper, fragile). hasRole(paper, consumableRole). affordsTask(paper, eatingDrinkingTask).
}).
#pos(e1001@100, {goesIn(paper, home_office)}, {}, {
  obj(paper). hasPhysicalQuality(paper, flammable). hasPhysicalQuality(paper, fragile). hasRole(paper, consumableRole). affordsTask(paper, eatingDrinkingTask).
}).
#pos(e1002@100, {goesIn(paper, library)}, {}, {
  obj(paper). hasPhysicalQuality(paper, flammable). hasPhysicalQuality(paper, fragile). hasRole(paper, consumableRole). affordsTask(paper, eatingDrinkingTask).
}).
#pos(e1003@100, {goesIn(paper, trash)}, {}, {
  obj(paper). hasPhysicalQuality(paper, flammable). hasPhysicalQuality(paper, fragile). hasRole(paper, consumableRole). affordsTask(paper, eatingDrinkingTask).
}).
#pos(e1004@100, {goesIn(paper_and_pencil, table)}, {}, {
  obj(paper_and_pencil). hasPhysicalQuality(paper_and_pencil, lightweight). hasPhysicalQuality(paper_and_pencil, rigid). hasRole(paper_and_pencil, toolRole). affordsTask(paper_and_pencil, workStudyTask).
}).
#pos(e1005@100, {goesIn(paper_clip, drawer)}, {}, {
  obj(paper_clip). hasPhysicalQuality(paper_clip, lightweight). hasPhysicalQuality(paper_clip, rigid). hasRole(paper_clip, toolRole). affordsTask(paper_clip, maintenanceTask).
}).
#pos(e1006@100, {goesIn(paper_clip, table)}, {}, {
  obj(paper_clip). hasPhysicalQuality(paper_clip, lightweight). hasPhysicalQuality(paper_clip, rigid). hasRole(paper_clip, toolRole). affordsTask(paper_clip, maintenanceTask).
}).
#pos(e1007@100, {goesIn(paper_clips, drawer)}, {}, {
  obj(paper_clips). hasPhysicalQuality(paper_clips, lightweight). hasPhysicalQuality(paper_clips, rigid). hasRole(paper_clips, toolRole). affordsTask(paper_clips, maintenanceTask).
}).
#pos(e1008@100, {goesIn(paper_clips, table)}, {}, {
  obj(paper_clips). hasPhysicalQuality(paper_clips, lightweight). hasPhysicalQuality(paper_clips, rigid). hasRole(paper_clips, toolRole). affordsTask(paper_clips, maintenanceTask).
}).
#pos(e1009@100, {goesIn(paper_fastener, garage)}, {}, {
  obj(paper_fastener). hasPhysicalQuality(paper_fastener, lightweight). hasPhysicalQuality(paper_fastener, rigid). hasRole(paper_fastener, toolRole). affordsTask(paper_fastener, maintenanceTask).
}).
#pos(e1010@100, {goesIn(paper_towels, kitchen)}, {}, {
  obj(paper_towels). hasPhysicalQuality(paper_towels, lightweight). hasPhysicalQuality(paper_towels, soft_Deformable). hasPhysicalQuality(paper_towels, washable). hasRole(paper_towels, cleaningToolRole). affordsTask(paper_towels, cleaningTask).
}).
#pos(e1011@100, {goesIn(paper_towels, pantry)}, {}, {
  obj(paper_towels). hasPhysicalQuality(paper_towels, lightweight). hasPhysicalQuality(paper_towels, soft_Deformable). hasPhysicalQuality(paper_towels, washable). hasRole(paper_towels, cleaningToolRole). affordsTask(paper_towels, cleaningTask).
}).
#pos(e1012@100, {goesIn(paperweight, table)}, {}, {
  obj(paperweight). hasPhysicalQuality(paperweight, heavy). hasPhysicalQuality(paperweight, rigid). hasRole(paperweight, storageContainerRole).
}).
#pos(e1013@100, {goesIn(parlor, bedroom)}, {}, {
  obj(parlor). hasRole(parlor, furnitureRole).
}).
#pos(e1014@100, {goesIn(patio_door, garden)}, {}, {
  obj(patio_door). hasPhysicalQuality(patio_door, heavy). hasPhysicalQuality(patio_door, rigid). hasRole(patio_door, furnitureRole). affordsTask(patio_door, leisureTask).
}).
#pos(e1015@100, {goesIn(peanut_butter, cabinet)}, {}, {
  obj(peanut_butter). hasPhysicalQuality(peanut_butter, liquid). hasPhysicalQuality(peanut_butter, perishable). hasRole(peanut_butter, consumableRole). affordsTask(peanut_butter, eatingDrinkingTask).
}).
#pos(e1016@100, {goesIn(peanut_butter, closet)}, {}, {
  obj(peanut_butter). hasPhysicalQuality(peanut_butter, liquid). hasPhysicalQuality(peanut_butter, perishable). hasRole(peanut_butter, consumableRole). affordsTask(peanut_butter, eatingDrinkingTask).
}).
#pos(e1017@100, {goesIn(peanut_butter, garage)}, {}, {
  obj(peanut_butter). hasPhysicalQuality(peanut_butter, liquid). hasPhysicalQuality(peanut_butter, perishable). hasRole(peanut_butter, consumableRole). affordsTask(peanut_butter, eatingDrinkingTask).
}).
#pos(e1018@100, {goesIn(peanut_butter, kitchen)}, {}, {
  obj(peanut_butter). hasPhysicalQuality(peanut_butter, liquid). hasPhysicalQuality(peanut_butter, perishable). hasRole(peanut_butter, consumableRole). affordsTask(peanut_butter, eatingDrinkingTask).
}).
#pos(e1019@100, {goesIn(peanut_butter, pantry)}, {}, {
  obj(peanut_butter). hasPhysicalQuality(peanut_butter, liquid). hasPhysicalQuality(peanut_butter, perishable). hasRole(peanut_butter, consumableRole). affordsTask(peanut_butter, eatingDrinkingTask).
}).
#pos(e1020@100, {goesIn(peanuts, closet)}, {}, {
  obj(peanuts). hasPhysicalQuality(peanuts, granular). hasPhysicalQuality(peanuts, perishable). hasRole(peanuts, consumableRole). affordsTask(peanuts, eatingDrinkingTask).
}).
#pos(e1021@100, {goesIn(peanuts, garage)}, {}, {
  obj(peanuts). hasPhysicalQuality(peanuts, granular). hasPhysicalQuality(peanuts, perishable). hasRole(peanuts, consumableRole). affordsTask(peanuts, eatingDrinkingTask).
}).
#pos(e1022@100, {goesIn(peanuts, kitchen)}, {}, {
  obj(peanuts). hasPhysicalQuality(peanuts, granular). hasPhysicalQuality(peanuts, perishable). hasRole(peanuts, consumableRole). affordsTask(peanuts, eatingDrinkingTask).
}).
#pos(e1023@100, {goesIn(peanuts, pantry)}, {}, {
  obj(peanuts). hasPhysicalQuality(peanuts, granular). hasPhysicalQuality(peanuts, perishable). hasRole(peanuts, consumableRole). affordsTask(peanuts, eatingDrinkingTask).
}).
#pos(e1024@100, {goesIn(pears, kitchen)}, {}, {
  obj(pears). hasPhysicalQuality(pears, perishable). hasRole(pears, consumableRole). affordsTask(pears, eatingDrinkingTask).
}).
#pos(e1025@100, {goesIn(pears, pantry)}, {}, {
  obj(pears). hasPhysicalQuality(pears, perishable). hasRole(pears, consumableRole). affordsTask(pears, eatingDrinkingTask).
}).
#pos(e1026@100, {goesIn(peas, fridge)}, {}, {
  obj(peas). hasPhysicalQuality(peas, perishable). hasRole(peas, consumableRole). affordsTask(peas, eatingDrinkingTask).
}).
#pos(e1027@100, {goesIn(peas, kitchen)}, {}, {
  obj(peas). hasPhysicalQuality(peas, perishable). hasRole(peas, consumableRole). affordsTask(peas, eatingDrinkingTask).
}).
#pos(e1028@100, {goesIn(peas, pantry)}, {}, {
  obj(peas). hasPhysicalQuality(peas, perishable). hasRole(peas, consumableRole). affordsTask(peas, eatingDrinkingTask).
}).
#pos(e1029@100, {goesIn(pen, closet)}, {}, {
  obj(pen). hasPhysicalQuality(pen, lightweight). hasPhysicalQuality(pen, rigid). hasRole(pen, toolRole). affordsTask(pen, workStudyTask).
}).
#pos(e1030@100, {goesIn(pen, drawer)}, {}, {
  obj(pen). hasPhysicalQuality(pen, lightweight). hasPhysicalQuality(pen, rigid). hasRole(pen, toolRole). affordsTask(pen, workStudyTask).
}).
#pos(e1031@100, {goesIn(pen, garage)}, {}, {
  obj(pen). hasPhysicalQuality(pen, lightweight). hasPhysicalQuality(pen, rigid). hasRole(pen, toolRole). affordsTask(pen, workStudyTask).
}).
#pos(e1032@100, {goesIn(pen, storage_room)}, {}, {
  obj(pen). hasPhysicalQuality(pen, lightweight). hasPhysicalQuality(pen, rigid). hasRole(pen, toolRole). affordsTask(pen, workStudyTask).
}).
#pos(e1033@100, {goesIn(pen, table)}, {}, {
  obj(pen). hasPhysicalQuality(pen, lightweight). hasPhysicalQuality(pen, rigid). hasRole(pen, toolRole). affordsTask(pen, workStudyTask).
}).
#pos(e1034@100, {goesIn(pencil, closet)}, {}, {
  obj(pencil). hasPhysicalQuality(pencil, lightweight). hasPhysicalQuality(pencil, rigid). hasRole(pencil, toolRole).
}).
#pos(e1035@100, {goesIn(pencil, drawer)}, {}, {
  obj(pencil). hasPhysicalQuality(pencil, lightweight). hasPhysicalQuality(pencil, rigid). hasRole(pencil, toolRole).
}).
#pos(e1036@100, {goesIn(pencil, kitchen)}, {}, {
  obj(pencil). hasPhysicalQuality(pencil, lightweight). hasPhysicalQuality(pencil, rigid). hasRole(pencil, toolRole).
}).
#pos(e1037@100, {goesIn(pencil, shelf)}, {}, {
  obj(pencil). hasPhysicalQuality(pencil, lightweight). hasPhysicalQuality(pencil, rigid). hasRole(pencil, toolRole).
}).
#pos(e1038@100, {goesIn(pencil_sharpener, library)}, {}, {
  obj(pencil_sharpener). hasPhysicalQuality(pencil_sharpener, heavy). hasPhysicalQuality(pencil_sharpener, rigid). hasRole(pencil_sharpener, toolRole). affordsTask(pencil_sharpener, maintenanceTask).
}).
#pos(e1039@100, {goesIn(pencil_sharpener, table)}, {}, {
  obj(pencil_sharpener). hasPhysicalQuality(pencil_sharpener, heavy). hasPhysicalQuality(pencil_sharpener, rigid). hasRole(pencil_sharpener, toolRole). affordsTask(pencil_sharpener, maintenanceTask).
}).
#pos(e1040@100, {goesIn(pens_and_pencils, table)}, {}, {
  obj(pens_and_pencils). hasPhysicalQuality(pens_and_pencils, lightweight). hasRole(pens_and_pencils, utensilRole). affordsTask(pens_and_pencils, workStudyTask).
}).
#pos(e1041@100, {goesIn(phillips_head_screwdriver, garage)}, {}, {
  obj(phillips_head_screwdriver). hasPhysicalQuality(phillips_head_screwdriver, heavy). hasPhysicalQuality(phillips_head_screwdriver, rigid). hasRole(phillips_head_screwdriver, toolRole). affordsTask(phillips_head_screwdriver, maintenanceTask).
}).
#pos(e1042@100, {goesIn(phillips_screwdriver, garage)}, {}, {
  obj(phillips_screwdriver). hasPhysicalQuality(phillips_screwdriver, lightweight). hasPhysicalQuality(phillips_screwdriver, rigid). hasRole(phillips_screwdriver, toolRole). affordsTask(phillips_screwdriver, maintenanceTask).
}).
#pos(e1043@100, {goesIn(phillips_screwdriver, storage_room)}, {}, {
  obj(phillips_screwdriver). hasPhysicalQuality(phillips_screwdriver, lightweight). hasPhysicalQuality(phillips_screwdriver, rigid). hasRole(phillips_screwdriver, toolRole). affordsTask(phillips_screwdriver, maintenanceTask).
}).
#pos(e1044@100, {goesIn(phone, bedroom)}, {}, {
  obj(phone). hasPhysicalQuality(phone, electronic). hasPhysicalQuality(phone, lightweight). hasRole(phone, toolRole). affordsTask(phone, workStudyTask).
}).
#pos(e1045@100, {goesIn(phone, table)}, {}, {
  obj(phone). hasPhysicalQuality(phone, electronic). hasPhysicalQuality(phone, lightweight). hasRole(phone, toolRole). affordsTask(phone, workStudyTask).
}).
#pos(e1046@100, {goesIn(phone_book, drawer)}, {}, {
  obj(phone_book). hasPhysicalQuality(phone_book, heavy). hasRole(phone_book, documentRole).
}).
#pos(e1047@100, {goesIn(photograph, shelf)}, {}, {
  obj(photograph). hasRole(photograph, documentRole). affordsTask(photograph, leisureTask).
}).
#pos(e1048@100, {goesIn(piano, music_room)}, {}, {
  obj(piano). hasPhysicalQuality(piano, electronic). hasPhysicalQuality(piano, rigid). hasRole(piano, musicalInstrumentRole). affordsTask(piano, leisureTask).
}).
#pos(e1049@100, {goesIn(pickle, pantry)}, {}, {
  obj(pickle). hasPhysicalQuality(pickle, perishable). hasRole(pickle, consumableRole). affordsTask(pickle, eatingDrinkingTask).
}).
#pos(e1050@100, {goesIn(picnic_basket, kitchen)}, {}, {
  obj(picnic_basket). hasPhysicalQuality(picnic_basket, hasContainer). hasRole(picnic_basket, furnitureRole). hasRole(picnic_basket, storageContainerRole). affordsTask(picnic_basket, eatingDrinkingTask). affordsTask(picnic_basket, foodPreparationTask).
}).
#pos(e1051@100, {goesIn(picture_frame, shelf)}, {}, {
  obj(picture_frame). hasPhysicalQuality(picture_frame, lightweight). hasPhysicalQuality(picture_frame, rigid). hasRole(picture_frame, decorationRole).
}).
#pos(e1052@100, {goesIn(pictures, bedroom)}, {}, {
  obj(pictures). hasPhysicalQuality(pictures, lightweight). hasRole(pictures, decorationRole).
}).
#pos(e1053@100, {goesIn(pictures, drawer)}, {}, {
  obj(pictures). hasPhysicalQuality(pictures, lightweight). hasRole(pictures, decorationRole).
}).
#pos(e1054@100, {goesIn(pictures, fridge)}, {}, {
  obj(pictures). hasPhysicalQuality(pictures, lightweight). hasRole(pictures, decorationRole).
}).
#pos(e1055@100, {goesIn(pictures, garage)}, {}, {
  obj(pictures). hasPhysicalQuality(pictures, lightweight). hasRole(pictures, decorationRole).
}).
#pos(e1056@100, {goesIn(pictures, garden)}, {}, {
  obj(pictures). hasPhysicalQuality(pictures, lightweight). hasRole(pictures, decorationRole).
}).
#pos(e1057@100, {goesIn(pictures, library)}, {}, {
  obj(pictures). hasPhysicalQuality(pictures, lightweight). hasRole(pictures, decorationRole).
}).
#pos(e1058@100, {goesIn(pictures, storage_room)}, {}, {
  obj(pictures). hasPhysicalQuality(pictures, lightweight). hasRole(pictures, decorationRole).
}).
#pos(e1059@100, {goesIn(pillow, bedroom)}, {}, {
  obj(pillow). hasPhysicalQuality(pillow, lightweight). hasPhysicalQuality(pillow, soft_Deformable). hasRole(pillow, beddingRole). affordsTask(pillow, sleepingTask).
}).
#pos(e1060@100, {goesIn(pillow_case, bed)}, {}, {
  obj(pillow_case). hasPhysicalQuality(pillow_case, soft_Deformable). hasPhysicalQuality(pillow_case, washable). hasRole(pillow_case, beddingRole). affordsTask(pillow_case, sleepingTask).
}).
#pos(e1061@100, {goesIn(pillow_case, bedroom)}, {}, {
  obj(pillow_case). hasPhysicalQuality(pillow_case, soft_Deformable). hasPhysicalQuality(pillow_case, washable). hasRole(pillow_case, beddingRole). affordsTask(pillow_case, sleepingTask).
}).
#pos(e1062@100, {goesIn(pillow_case, closet)}, {}, {
  obj(pillow_case). hasPhysicalQuality(pillow_case, soft_Deformable). hasPhysicalQuality(pillow_case, washable). hasRole(pillow_case, beddingRole). affordsTask(pillow_case, sleepingTask).
}).
#pos(e1063@100, {goesIn(pillow_case, drawer)}, {}, {
  obj(pillow_case). hasPhysicalQuality(pillow_case, soft_Deformable). hasPhysicalQuality(pillow_case, washable). hasRole(pillow_case, beddingRole). affordsTask(pillow_case, sleepingTask).
}).
#pos(e1064@100, {goesIn(pillow_case, hallway)}, {}, {
  obj(pillow_case). hasPhysicalQuality(pillow_case, soft_Deformable). hasPhysicalQuality(pillow_case, washable). hasRole(pillow_case, beddingRole). affordsTask(pillow_case, sleepingTask).
}).
#pos(e1065@100, {goesIn(pineapple, pantry)}, {}, {
  obj(pineapple). hasPhysicalQuality(pineapple, perishable). hasRole(pineapple, consumableRole). affordsTask(pineapple, eatingDrinkingTask).
}).
#pos(e1066@100, {goesIn(pipe, library)}, {}, {
  obj(pipe). hasPhysicalQuality(pipe, heavy). hasRole(pipe, toolRole). affordsTask(pipe, maintenanceTask).
}).
#pos(e1067@100, {goesIn(plastic, cabinet)}, {}, {
  obj(plastic). hasPhysicalQuality(plastic, granular). hasPhysicalQuality(plastic, rigid).
}).
#pos(e1068@100, {goesIn(plastic, kitchen)}, {}, {
  obj(plastic). hasPhysicalQuality(plastic, granular). hasPhysicalQuality(plastic, rigid).
}).
#pos(e1069@100, {goesIn(plastic, trash)}, {}, {
  obj(plastic). hasPhysicalQuality(plastic, granular). hasPhysicalQuality(plastic, rigid).
}).
#pos(e1070@100, {goesIn(plate, cabinet)}, {}, {
  obj(plate). hasPhysicalQuality(plate, hasContainer). hasPhysicalQuality(plate, rigid). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e1071@100, {goesIn(plate, kitchen)}, {}, {
  obj(plate). hasPhysicalQuality(plate, hasContainer). hasPhysicalQuality(plate, rigid). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e1072@100, {goesIn(plate, sink)}, {}, {
  obj(plate). hasPhysicalQuality(plate, hasContainer). hasPhysicalQuality(plate, rigid). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e1073@100, {goesIn(plate, table)}, {}, {
  obj(plate). hasPhysicalQuality(plate, hasContainer). hasPhysicalQuality(plate, rigid). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e1074@100, {goesIn(plates, cabinet)}, {}, {
  obj(plates). hasPhysicalQuality(plates, lightweight). hasPhysicalQuality(plates, rigid). hasRole(plates, utensilRole). affordsTask(plates, eatingDrinkingTask).
}).
#pos(e1075@100, {goesIn(plates, kitchen)}, {}, {
  obj(plates). hasPhysicalQuality(plates, lightweight). hasPhysicalQuality(plates, rigid). hasRole(plates, utensilRole). affordsTask(plates, eatingDrinkingTask).
}).
#pos(e1076@100, {goesIn(plates, shelf)}, {}, {
  obj(plates). hasPhysicalQuality(plates, lightweight). hasPhysicalQuality(plates, rigid). hasRole(plates, utensilRole). affordsTask(plates, eatingDrinkingTask).
}).
#pos(e1077@100, {goesIn(plates, table)}, {}, {
  obj(plates). hasPhysicalQuality(plates, lightweight). hasPhysicalQuality(plates, rigid). hasRole(plates, utensilRole). affordsTask(plates, eatingDrinkingTask).
}).
#pos(e1078@100, {goesIn(plumbing, bathroom)}, {}, {
  obj(plumbing). hasPhysicalQuality(plumbing, heavy). hasPhysicalQuality(plumbing, rigid). hasRole(plumbing, toolRole). affordsTask(plumbing, maintenanceTask).
}).
#pos(e1079@100, {goesIn(plumbing, bedroom)}, {}, {
  obj(plumbing). hasPhysicalQuality(plumbing, heavy). hasPhysicalQuality(plumbing, rigid). hasRole(plumbing, toolRole). affordsTask(plumbing, maintenanceTask).
}).
#pos(e1080@100, {goesIn(plumbing, kitchen)}, {}, {
  obj(plumbing). hasPhysicalQuality(plumbing, heavy). hasPhysicalQuality(plumbing, rigid). hasRole(plumbing, toolRole). affordsTask(plumbing, maintenanceTask).
}).
#pos(e1081@100, {goesIn(plumbing, library)}, {}, {
  obj(plumbing). hasPhysicalQuality(plumbing, heavy). hasPhysicalQuality(plumbing, rigid). hasRole(plumbing, toolRole). affordsTask(plumbing, maintenanceTask).
}).
#pos(e1082@100, {goesIn(pocket, closet)}, {}, {
  obj(pocket). hasPhysicalQuality(pocket, lightweight). hasPhysicalQuality(pocket, soft_Deformable). hasRole(pocket, storageContainerRole). affordsTask(pocket, storageTask).
}).
#pos(e1083@100, {goesIn(poker_chips, table)}, {}, {
  obj(poker_chips). hasPhysicalQuality(poker_chips, fragile). hasPhysicalQuality(poker_chips, lightweight). hasPhysicalQuality(poker_chips, rigid). hasRole(poker_chips, entertainmentRole). affordsTask(poker_chips, leisureTask).
}).
#pos(e1084@100, {goesIn(polish, closet)}, {}, {
  obj(polish). hasPhysicalQuality(polish, liquid). hasRole(polish, cleaningToolRole). affordsTask(polish, cleaningTask).
}).
#pos(e1085@100, {goesIn(polish, garage)}, {}, {
  obj(polish). hasPhysicalQuality(polish, liquid). hasRole(polish, cleaningToolRole). affordsTask(polish, cleaningTask).
}).
#pos(e1086@100, {goesIn(polish, table)}, {}, {
  obj(polish). hasPhysicalQuality(polish, liquid). hasRole(polish, cleaningToolRole). affordsTask(polish, cleaningTask).
}).
#pos(e1087@100, {goesIn(popcorn, pantry)}, {}, {
  obj(popcorn). hasPhysicalQuality(popcorn, perishable). hasRole(popcorn, consumableRole). affordsTask(popcorn, eatingDrinkingTask).
}).
#pos(e1088@100, {goesIn(pork, fridge)}, {}, {
  obj(pork). hasPhysicalQuality(pork, perishable). hasRole(pork, consumableRole). affordsTask(pork, eatingDrinkingTask).
}).
#pos(e1089@100, {goesIn(portable_shower_head, garage)}, {}, {
  obj(portable_shower_head). hasPhysicalQuality(portable_shower_head, lightweight). hasPhysicalQuality(portable_shower_head, liquid). hasRole(portable_shower_head, cleaningToolRole). affordsTask(portable_shower_head, hygieneTask).
}).
#pos(e1090@100, {goesIn(post_note, table)}, {}, {
  obj(post_note). hasRole(post_note, documentRole).
}).
#pos(e1091@100, {goesIn(post_notes, table)}, {}, {
  obj(post_notes). hasRole(post_notes, documentRole).
}).
#pos(e1092@100, {goesIn(poster, bedroom)}, {}, {
  obj(poster). hasRole(poster, decorationRole).
}).
#pos(e1093@100, {goesIn(pot, cabinet)}, {}, {
  obj(pot). hasPhysicalQuality(pot, heavy). hasPhysicalQuality(pot, rigid). hasRole(pot, cookwareRole). affordsTask(pot, foodPreparationTask).
}).
#pos(e1094@100, {goesIn(pot, drawer)}, {}, {
  obj(pot). hasPhysicalQuality(pot, heavy). hasPhysicalQuality(pot, rigid). hasRole(pot, cookwareRole). affordsTask(pot, foodPreparationTask).
}).
#pos(e1095@100, {goesIn(pot, garden)}, {}, {
  obj(pot). hasPhysicalQuality(pot, heavy). hasPhysicalQuality(pot, rigid). hasRole(pot, cookwareRole). affordsTask(pot, foodPreparationTask).
}).
#pos(e1096@100, {goesIn(pot, kitchen)}, {}, {
  obj(pot). hasPhysicalQuality(pot, heavy). hasPhysicalQuality(pot, rigid). hasRole(pot, cookwareRole). affordsTask(pot, foodPreparationTask).
}).
#pos(e1097@100, {goesIn(potatoes, kitchen)}, {}, {
  obj(potatoes). hasPhysicalQuality(potatoes, perishable). hasRole(potatoes, consumableRole). affordsTask(potatoes, foodPreparationTask).
}).
#pos(e1098@100, {goesIn(potatoes, storage_room)}, {}, {
  obj(potatoes). hasPhysicalQuality(potatoes, perishable). hasRole(potatoes, consumableRole). affordsTask(potatoes, foodPreparationTask).
}).
#pos(e1099@100, {goesIn(pouch, closet)}, {}, {
  obj(pouch). hasPhysicalQuality(pouch, lightweight). hasPhysicalQuality(pouch, soft_Deformable). hasRole(pouch, storageContainerRole). affordsTask(pouch, storageTask).
}).
#pos(e1100@100, {goesIn(power_screwdriver, garage)}, {}, {
  obj(power_screwdriver). hasPhysicalQuality(power_screwdriver, electronic). hasPhysicalQuality(power_screwdriver, heavy). hasPhysicalQuality(power_screwdriver, rigid). hasRole(power_screwdriver, toolRole). affordsTask(power_screwdriver, maintenanceTask).
}).
#pos(e1101@100, {goesIn(printer, home_office)}, {}, {
  obj(printer). hasPhysicalQuality(printer, electronic). hasPhysicalQuality(printer, heavy). hasRole(printer, applianceRole). affordsTask(printer, workStudyTask).
}).
#pos(e1102@100, {goesIn(printer, library)}, {}, {
  obj(printer). hasPhysicalQuality(printer, electronic). hasPhysicalQuality(printer, heavy). hasRole(printer, applianceRole). affordsTask(printer, workStudyTask).
}).
#pos(e1103@100, {goesIn(printer, table)}, {}, {
  obj(printer). hasPhysicalQuality(printer, electronic). hasPhysicalQuality(printer, heavy). hasRole(printer, applianceRole). affordsTask(printer, workStudyTask).
}).
#pos(e1104@100, {goesIn(pump, garage)}, {}, {
  obj(pump). hasPhysicalQuality(pump, electronic). hasPhysicalQuality(pump, heavy). hasRole(pump, toolRole). affordsTask(pump, maintenanceTask).
}).
#pos(e1105@100, {goesIn(purse, bedroom)}, {}, {
  obj(purse). hasPhysicalQuality(purse, lightweight). hasPhysicalQuality(purse, soft_Deformable). hasRole(purse, storageContainerRole). affordsTask(purse, storageTask).
}).
#pos(e1106@100, {goesIn(puzzle, drawer)}, {}, {
  obj(puzzle). hasRole(puzzle, entertainmentRole). affordsTask(puzzle, leisureTask).
}).
#pos(e1107@100, {goesIn(puzzle, garden)}, {}, {
  obj(puzzle). hasRole(puzzle, entertainmentRole). affordsTask(puzzle, leisureTask).
}).
#pos(e1108@100, {goesIn(puzzle, library)}, {}, {
  obj(puzzle). hasRole(puzzle, entertainmentRole). affordsTask(puzzle, leisureTask).
}).
#pos(e1109@100, {goesIn(puzzle, table)}, {}, {
  obj(puzzle). hasRole(puzzle, entertainmentRole). affordsTask(puzzle, leisureTask).
}).
#pos(e1110@100, {goesIn(quill_brush, drawer)}, {}, {
  obj(quill_brush). hasPhysicalQuality(quill_brush, lightweight). hasPhysicalQuality(quill_brush, soft_Deformable). hasRole(quill_brush, toolRole).
}).
#pos(e1111@100, {goesIn(quill_brush, table)}, {}, {
  obj(quill_brush). hasPhysicalQuality(quill_brush, lightweight). hasPhysicalQuality(quill_brush, soft_Deformable). hasRole(quill_brush, toolRole).
}).
#pos(e1112@100, {goesIn(radiator, garage)}, {}, {
  obj(radiator). hasPhysicalQuality(radiator, heated). hasRole(radiator, applianceRole). affordsTask(radiator, maintenanceTask).
}).
#pos(e1113@100, {goesIn(radio, bedroom)}, {}, {
  obj(radio). hasPhysicalQuality(radio, electronic). hasPhysicalQuality(radio, lightweight). hasRole(radio, applianceRole). affordsTask(radio, leisureTask).
}).
#pos(e1114@100, {goesIn(radio, garage)}, {}, {
  obj(radio). hasPhysicalQuality(radio, electronic). hasPhysicalQuality(radio, lightweight). hasRole(radio, applianceRole). affordsTask(radio, leisureTask).
}).
#pos(e1115@100, {goesIn(radio, storage_room)}, {}, {
  obj(radio). hasPhysicalQuality(radio, electronic). hasPhysicalQuality(radio, lightweight). hasRole(radio, applianceRole). affordsTask(radio, leisureTask).
}).
#pos(e1116@100, {goesIn(rafter, storage_room)}, {}, {
  obj(rafter). hasPhysicalQuality(rafter, heavy). hasPhysicalQuality(rafter, rigid). hasRole(rafter, furnitureRole).
}).
#pos(e1117@100, {goesIn(railing, bedroom)}, {}, {
  obj(railing). hasPhysicalQuality(railing, rigid). hasRole(railing, furnitureRole).
}).
#pos(e1118@100, {goesIn(railing, garden)}, {}, {
  obj(railing). hasPhysicalQuality(railing, rigid). hasRole(railing, furnitureRole).
}).
#pos(e1119@100, {goesIn(ratchet_screwdriver, closet)}, {}, {
  obj(ratchet_screwdriver). hasPhysicalQuality(ratchet_screwdriver, electronic). hasPhysicalQuality(ratchet_screwdriver, heavy). hasPhysicalQuality(ratchet_screwdriver, isRotary). hasPhysicalQuality(ratchet_screwdriver, rigid). hasRole(ratchet_screwdriver, toolRole). affordsTask(ratchet_screwdriver, maintenanceTask).
}).
#pos(e1120@100, {goesIn(ratchet_screwdriver, garage)}, {}, {
  obj(ratchet_screwdriver). hasPhysicalQuality(ratchet_screwdriver, electronic). hasPhysicalQuality(ratchet_screwdriver, heavy). hasPhysicalQuality(ratchet_screwdriver, isRotary). hasPhysicalQuality(ratchet_screwdriver, rigid). hasRole(ratchet_screwdriver, toolRole). affordsTask(ratchet_screwdriver, maintenanceTask).
}).
#pos(e1121@100, {goesIn(ratchet_screwdriver, storage_room)}, {}, {
  obj(ratchet_screwdriver). hasPhysicalQuality(ratchet_screwdriver, electronic). hasPhysicalQuality(ratchet_screwdriver, heavy). hasPhysicalQuality(ratchet_screwdriver, isRotary). hasPhysicalQuality(ratchet_screwdriver, rigid). hasRole(ratchet_screwdriver, toolRole). affordsTask(ratchet_screwdriver, maintenanceTask).
}).
#pos(e1122@100, {goesIn(recycling_bin, table)}, {}, {
  obj(recycling_bin). hasPhysicalQuality(recycling_bin, hasContainer). hasPhysicalQuality(recycling_bin, heavy). hasRole(recycling_bin, storageContainerRole). affordsTask(recycling_bin, wasteDisposalTask).
}).
#pos(e1123@100, {goesIn(refrigerator, bedroom)}, {}, {
  obj(refrigerator). hasPhysicalQuality(refrigerator, electronic). hasPhysicalQuality(refrigerator, heavy). hasPhysicalQuality(refrigerator, requiresCooling). hasRole(refrigerator, applianceRole). affordsTask(refrigerator, storageTask).
}).
#pos(e1124@100, {goesIn(refrigerator, garage)}, {}, {
  obj(refrigerator). hasPhysicalQuality(refrigerator, electronic). hasPhysicalQuality(refrigerator, heavy). hasPhysicalQuality(refrigerator, requiresCooling). hasRole(refrigerator, applianceRole). affordsTask(refrigerator, storageTask).
}).
#pos(e1125@100, {goesIn(refrigerator, kitchen)}, {}, {
  obj(refrigerator). hasPhysicalQuality(refrigerator, electronic). hasPhysicalQuality(refrigerator, heavy). hasPhysicalQuality(refrigerator, requiresCooling). hasRole(refrigerator, applianceRole). affordsTask(refrigerator, storageTask).
}).
#pos(e1126@100, {goesIn(refrigerator, pantry)}, {}, {
  obj(refrigerator). hasPhysicalQuality(refrigerator, electronic). hasPhysicalQuality(refrigerator, heavy). hasPhysicalQuality(refrigerator, requiresCooling). hasRole(refrigerator, applianceRole). affordsTask(refrigerator, storageTask).
}).
#pos(e1127@100, {goesIn(remote_control, bedroom)}, {}, {
  obj(remote_control). hasPhysicalQuality(remote_control, electronic). hasPhysicalQuality(remote_control, lightweight). hasRole(remote_control, toolRole). affordsTask(remote_control, leisureTask).
}).
#pos(e1128@100, {goesIn(remote_control, living_room)}, {}, {
  obj(remote_control). hasPhysicalQuality(remote_control, electronic). hasPhysicalQuality(remote_control, lightweight). hasRole(remote_control, toolRole). affordsTask(remote_control, leisureTask).
}).
#pos(e1129@100, {goesIn(ribbon, closet)}, {}, {
  obj(ribbon). hasPhysicalQuality(ribbon, lightweight). hasPhysicalQuality(ribbon, soft_Deformable). hasRole(ribbon, clothingRole). affordsTask(ribbon, dressingTask).
}).
#pos(e1130@100, {goesIn(ribbon, garage)}, {}, {
  obj(ribbon). hasPhysicalQuality(ribbon, lightweight). hasPhysicalQuality(ribbon, soft_Deformable). hasRole(ribbon, clothingRole). affordsTask(ribbon, dressingTask).
}).
#pos(e1131@100, {goesIn(ribbon, storage_room)}, {}, {
  obj(ribbon). hasPhysicalQuality(ribbon, lightweight). hasPhysicalQuality(ribbon, soft_Deformable). hasRole(ribbon, clothingRole). affordsTask(ribbon, dressingTask).
}).
#pos(e1132@100, {goesIn(rice, fridge)}, {}, {
  obj(rice). hasPhysicalQuality(rice, granular). hasRole(rice, consumableRole). affordsTask(rice, foodPreparationTask).
}).
#pos(e1133@100, {goesIn(rice, kitchen)}, {}, {
  obj(rice). hasPhysicalQuality(rice, granular). hasRole(rice, consumableRole). affordsTask(rice, foodPreparationTask).
}).
#pos(e1134@100, {goesIn(rice, pantry)}, {}, {
  obj(rice). hasPhysicalQuality(rice, granular). hasRole(rice, consumableRole). affordsTask(rice, foodPreparationTask).
}).
#pos(e1135@100, {goesIn(ring, closet)}, {}, {
  obj(ring). hasPhysicalQuality(ring, lightweight). hasPhysicalQuality(ring, rigid). hasRole(ring, utensilRole).
}).
#pos(e1136@100, {goesIn(ring, garage)}, {}, {
  obj(ring). hasPhysicalQuality(ring, lightweight). hasPhysicalQuality(ring, rigid). hasRole(ring, utensilRole).
}).
#pos(e1137@100, {goesIn(ring, storage_room)}, {}, {
  obj(ring). hasPhysicalQuality(ring, lightweight). hasPhysicalQuality(ring, rigid). hasRole(ring, utensilRole).
}).
#pos(e1138@100, {goesIn(roof, garage)}, {}, {
  obj(roof). hasPhysicalQuality(roof, heavy). hasPhysicalQuality(roof, rigid). hasRole(roof, furnitureRole).
}).
#pos(e1139@100, {goesIn(roots, bathroom)}, {}, {
  obj(roots). hasPhysicalQuality(roots, perishable). hasRole(roots, consumableRole).
}).
#pos(e1140@100, {goesIn(roots, closet)}, {}, {
  obj(roots). hasPhysicalQuality(roots, perishable). hasRole(roots, consumableRole).
}).
#pos(e1141@100, {goesIn(rose, garden)}, {}, {
  obj(rose). hasPhysicalQuality(rose, perishable). hasRole(rose, consumableRole).
}).
#pos(e1142@100, {goesIn(rotten_food, trash)}, {}, {
  obj(rotten_food). hasPhysicalQuality(rotten_food, perishable). hasPhysicalQuality(rotten_food, toxic_Hazardous). hasRole(rotten_food, consumableRole).
}).
#pos(e1143@100, {goesIn(round_brush, bathroom)}, {}, {
  obj(round_brush). hasPhysicalQuality(round_brush, lightweight). hasPhysicalQuality(round_brush, soft_Deformable). hasRole(round_brush, toolRole). affordsTask(round_brush, cleaningTask).
}).
#pos(e1144@100, {goesIn(round_brush, library)}, {}, {
  obj(round_brush). hasPhysicalQuality(round_brush, lightweight). hasPhysicalQuality(round_brush, soft_Deformable). hasRole(round_brush, toolRole). affordsTask(round_brush, cleaningTask).
}).
#pos(e1145@100, {goesIn(rug, bed)}, {}, {
  obj(rug). hasPhysicalQuality(rug, lightweight). hasPhysicalQuality(rug, soft_Deformable). hasRole(rug, furnitureRole). affordsTask(rug, leisureTask).
}).
#pos(e1146@100, {goesIn(rug, bedroom)}, {}, {
  obj(rug). hasPhysicalQuality(rug, lightweight). hasPhysicalQuality(rug, soft_Deformable). hasRole(rug, furnitureRole). affordsTask(rug, leisureTask).
}).
#pos(e1147@100, {goesIn(rug, living_room)}, {}, {
  obj(rug). hasPhysicalQuality(rug, lightweight). hasPhysicalQuality(rug, soft_Deformable). hasRole(rug, furnitureRole). affordsTask(rug, leisureTask).
}).
#pos(e1148@100, {goesIn(rug, table)}, {}, {
  obj(rug). hasPhysicalQuality(rug, lightweight). hasPhysicalQuality(rug, soft_Deformable). hasRole(rug, furnitureRole). affordsTask(rug, leisureTask).
}).
#pos(e1149@100, {goesIn(rule, living_room)}, {}, {
  obj(rule). hasPhysicalQuality(rule, rigid). hasRole(rule, toolRole). affordsTask(rule, maintenanceTask).
}).
#pos(e1150@100, {goesIn(ruler, drawer)}, {}, {
  obj(ruler). hasPhysicalQuality(ruler, rigid). hasRole(ruler, toolRole). affordsTask(ruler, maintenanceTask).
}).
#pos(e1151@100, {goesIn(ruler, table)}, {}, {
  obj(ruler). hasPhysicalQuality(ruler, rigid). hasRole(ruler, toolRole). affordsTask(ruler, maintenanceTask).
}).
#pos(e1152@100, {goesIn(salad, fridge)}, {}, {
  obj(salad). hasPhysicalQuality(salad, perishable). hasRole(salad, consumableRole). affordsTask(salad, eatingDrinkingTask).
}).
#pos(e1153@100, {goesIn(salad_bowl, cabinet)}, {}, {
  obj(salad_bowl). hasPhysicalQuality(salad_bowl, hasContainer). hasRole(salad_bowl, storageContainerRole). hasRole(salad_bowl, utensilRole). affordsTask(salad_bowl, foodPreparationTask).
}).
#pos(e1154@100, {goesIn(salad_bowl, dining_room)}, {}, {
  obj(salad_bowl). hasPhysicalQuality(salad_bowl, hasContainer). hasRole(salad_bowl, storageContainerRole). hasRole(salad_bowl, utensilRole). affordsTask(salad_bowl, foodPreparationTask).
}).
#pos(e1155@100, {goesIn(salad_bowl, kitchen)}, {}, {
  obj(salad_bowl). hasPhysicalQuality(salad_bowl, hasContainer). hasRole(salad_bowl, storageContainerRole). hasRole(salad_bowl, utensilRole). affordsTask(salad_bowl, foodPreparationTask).
}).
#pos(e1156@100, {goesIn(salad_spinner, cabinet)}, {}, {
  obj(salad_spinner). hasPhysicalQuality(salad_spinner, lightweight). hasPhysicalQuality(salad_spinner, rigid). hasRole(salad_spinner, utensilRole). affordsTask(salad_spinner, foodPreparationTask).
}).
#pos(e1157@100, {goesIn(salt, bathroom)}, {}, {
  obj(salt). hasPhysicalQuality(salt, granular). hasRole(salt, consumableRole). affordsTask(salt, foodPreparationTask).
}).
#pos(e1158@100, {goesIn(salt, cabinet)}, {}, {
  obj(salt). hasPhysicalQuality(salt, granular). hasRole(salt, consumableRole). affordsTask(salt, foodPreparationTask).
}).
#pos(e1159@100, {goesIn(salt, closet)}, {}, {
  obj(salt). hasPhysicalQuality(salt, granular). hasRole(salt, consumableRole). affordsTask(salt, foodPreparationTask).
}).
#pos(e1160@100, {goesIn(salt, kitchen)}, {}, {
  obj(salt). hasPhysicalQuality(salt, granular). hasRole(salt, consumableRole). affordsTask(salt, foodPreparationTask).
}).
#pos(e1161@100, {goesIn(salt, pantry)}, {}, {
  obj(salt). hasPhysicalQuality(salt, granular). hasRole(salt, consumableRole). affordsTask(salt, foodPreparationTask).
}).
#pos(e1162@100, {goesIn(salt, shelf)}, {}, {
  obj(salt). hasPhysicalQuality(salt, granular). hasRole(salt, consumableRole). affordsTask(salt, foodPreparationTask).
}).
#pos(e1163@100, {goesIn(salt, table)}, {}, {
  obj(salt). hasPhysicalQuality(salt, granular). hasRole(salt, consumableRole). affordsTask(salt, foodPreparationTask).
}).
#pos(e1164@100, {goesIn(salt_and_pepper, table)}, {}, {
  obj(salt_and_pepper). hasPhysicalQuality(salt_and_pepper, granular). hasRole(salt_and_pepper, consumableRole). affordsTask(salt_and_pepper, foodPreparationTask).
}).
#pos(e1165@100, {goesIn(saltshaker, cabinet)}, {}, {
  obj(saltshaker). hasPhysicalQuality(saltshaker, granular). hasPhysicalQuality(saltshaker, lightweight). hasRole(saltshaker, utensilRole). affordsTask(saltshaker, foodPreparationTask).
}).
#pos(e1166@100, {goesIn(sauce, kitchen)}, {}, {
  obj(sauce). hasPhysicalQuality(sauce, liquid). hasPhysicalQuality(sauce, perishable). hasRole(sauce, consumableRole). affordsTask(sauce, foodPreparationTask).
}).
#pos(e1167@100, {goesIn(saucepan, cabinet)}, {}, {
  obj(saucepan). hasPhysicalQuality(saucepan, heated). hasPhysicalQuality(saucepan, heavy). hasRole(saucepan, cookwareRole). affordsTask(saucepan, foodPreparationTask).
}).
#pos(e1168@100, {goesIn(saucepan, kitchen)}, {}, {
  obj(saucepan). hasPhysicalQuality(saucepan, heated). hasPhysicalQuality(saucepan, heavy). hasRole(saucepan, cookwareRole). affordsTask(saucepan, foodPreparationTask).
}).
#pos(e1169@100, {goesIn(saucer, kitchen)}, {}, {
  obj(saucer). hasPhysicalQuality(saucer, lightweight). hasPhysicalQuality(saucer, rigid). hasRole(saucer, utensilRole). affordsTask(saucer, eatingDrinkingTask).
}).
#pos(e1170@100, {goesIn(scale, bathroom)}, {}, {
  obj(scale). hasPhysicalQuality(scale, electronic). hasPhysicalQuality(scale, heavy). hasRole(scale, toolRole). affordsTask(scale, maintenanceTask).
}).
#pos(e1171@100, {goesIn(scale, library)}, {}, {
  obj(scale). hasPhysicalQuality(scale, electronic). hasPhysicalQuality(scale, heavy). hasRole(scale, toolRole). affordsTask(scale, maintenanceTask).
}).
#pos(e1172@100, {goesIn(scissors, bedroom)}, {}, {
  obj(scissors). hasPhysicalQuality(scissors, rigid). hasPhysicalQuality(scissors, sharp). hasRole(scissors, toolRole). affordsTask(scissors, maintenanceTask).
}).
#pos(e1173@100, {goesIn(scissors, drawer)}, {}, {
  obj(scissors). hasPhysicalQuality(scissors, rigid). hasPhysicalQuality(scissors, sharp). hasRole(scissors, toolRole). affordsTask(scissors, maintenanceTask).
}).
#pos(e1174@100, {goesIn(scissors, table)}, {}, {
  obj(scissors). hasPhysicalQuality(scissors, rigid). hasPhysicalQuality(scissors, sharp). hasRole(scissors, toolRole). affordsTask(scissors, maintenanceTask).
}).
#pos(e1175@100, {goesIn(scotch_tape, table)}, {}, {
  obj(scotch_tape). hasPhysicalQuality(scotch_tape, lightweight). hasPhysicalQuality(scotch_tape, soft_Deformable). hasRole(scotch_tape, toolRole). affordsTask(scotch_tape, leisureTask).
}).
#pos(e1176@100, {goesIn(screwdriver, drawer)}, {}, {
  obj(screwdriver). hasPhysicalQuality(screwdriver, lightweight). hasPhysicalQuality(screwdriver, rigid). hasRole(screwdriver, toolRole). affordsTask(screwdriver, maintenanceTask).
}).
#pos(e1177@100, {goesIn(screwdriver, garage)}, {}, {
  obj(screwdriver). hasPhysicalQuality(screwdriver, lightweight). hasPhysicalQuality(screwdriver, rigid). hasRole(screwdriver, toolRole). affordsTask(screwdriver, maintenanceTask).
}).
#pos(e1178@100, {goesIn(screws, closet)}, {}, {
  obj(screws). hasPhysicalQuality(screws, granular). hasRole(screws, toolRole). affordsTask(screws, maintenanceTask).
}).
#pos(e1179@100, {goesIn(screws, garage)}, {}, {
  obj(screws). hasPhysicalQuality(screws, granular). hasRole(screws, toolRole). affordsTask(screws, maintenanceTask).
}).
#pos(e1180@100, {goesIn(screws, kitchen)}, {}, {
  obj(screws). hasPhysicalQuality(screws, granular). hasRole(screws, toolRole). affordsTask(screws, maintenanceTask).
}).
#pos(e1181@100, {goesIn(screws, pantry)}, {}, {
  obj(screws). hasPhysicalQuality(screws, granular). hasRole(screws, toolRole). affordsTask(screws, maintenanceTask).
}).
#pos(e1182@100, {goesIn(seat, garage)}, {}, {
  obj(seat). hasPhysicalQuality(seat, heavy). hasPhysicalQuality(seat, rigid). hasRole(seat, furnitureRole). affordsTask(seat, leisureTask).
}).
#pos(e1183@100, {goesIn(seat, garden)}, {}, {
  obj(seat). hasPhysicalQuality(seat, heavy). hasPhysicalQuality(seat, rigid). hasRole(seat, furnitureRole). affordsTask(seat, leisureTask).
}).
#pos(e1184@100, {goesIn(second_floor, bedroom)}, {}, {
  obj(second_floor). hasRole(second_floor, furnitureRole).
}).
#pos(e1185@100, {goesIn(second_floor, storage_room)}, {}, {
  obj(second_floor). hasRole(second_floor, furnitureRole).
}).
#pos(e1186@100, {goesIn(seeds, pantry)}, {}, {
  obj(seeds). hasPhysicalQuality(seeds, perishable). hasRole(seeds, consumableRole).
}).
#pos(e1187@100, {goesIn(self_adhesive_label, table)}, {}, {
  obj(self_adhesive_label). hasPhysicalQuality(self_adhesive_label, lightweight). hasPhysicalQuality(self_adhesive_label, soft_Deformable). hasRole(self_adhesive_label, toolRole). affordsTask(self_adhesive_label, maintenanceTask).
}).
#pos(e1188@100, {goesIn(separate_shower, bathroom)}, {}, {
  obj(separate_shower). hasPhysicalQuality(separate_shower, electronic). hasPhysicalQuality(separate_shower, heavy). hasRole(separate_shower, furnitureRole). affordsTask(separate_shower, hygieneTask).
}).
#pos(e1189@100, {goesIn(separate_shower, library)}, {}, {
  obj(separate_shower). hasPhysicalQuality(separate_shower, electronic). hasPhysicalQuality(separate_shower, heavy). hasRole(separate_shower, furnitureRole). affordsTask(separate_shower, hygieneTask).
}).
#pos(e1190@100, {goesIn(serving_trolley, dining_room)}, {}, {
  obj(serving_trolley). hasPhysicalQuality(serving_trolley, heavy). hasPhysicalQuality(serving_trolley, rigid). hasRole(serving_trolley, furnitureRole). affordsTask(serving_trolley, foodPreparationTask).
}).
#pos(e1191@100, {goesIn(serving_trolley, kitchen)}, {}, {
  obj(serving_trolley). hasPhysicalQuality(serving_trolley, heavy). hasPhysicalQuality(serving_trolley, rigid). hasRole(serving_trolley, furnitureRole). affordsTask(serving_trolley, foodPreparationTask).
}).
#pos(e1192@100, {goesIn(shades, bedroom)}, {}, {
  obj(shades). hasPhysicalQuality(shades, lightweight). hasPhysicalQuality(shades, rigid). hasRole(shades, decorationRole). affordsTask(shades, leisureTask).
}).
#pos(e1193@100, {goesIn(shades, garage)}, {}, {
  obj(shades). hasPhysicalQuality(shades, lightweight). hasPhysicalQuality(shades, rigid). hasRole(shades, decorationRole). affordsTask(shades, leisureTask).
}).
#pos(e1194@100, {goesIn(shades, storage_room)}, {}, {
  obj(shades). hasPhysicalQuality(shades, lightweight). hasPhysicalQuality(shades, rigid). hasRole(shades, decorationRole). affordsTask(shades, leisureTask).
}).
#pos(e1195@100, {goesIn(shampoo_and_conditioner, bathroom)}, {}, {
  obj(shampoo_and_conditioner). hasPhysicalQuality(shampoo_and_conditioner, liquid). hasRole(shampoo_and_conditioner, cleaningToolRole). affordsTask(shampoo_and_conditioner, hygieneTask).
}).
#pos(e1196@100, {goesIn(shampoo_and_conditioner, library)}, {}, {
  obj(shampoo_and_conditioner). hasPhysicalQuality(shampoo_and_conditioner, liquid). hasRole(shampoo_and_conditioner, cleaningToolRole). affordsTask(shampoo_and_conditioner, hygieneTask).
}).
#pos(e1197@100, {goesIn(sheet, bedroom)}, {}, {
  obj(sheet). hasPhysicalQuality(sheet, soft_Deformable). hasPhysicalQuality(sheet, washable). hasRole(sheet, beddingRole). affordsTask(sheet, sleepingTask).
}).
#pos(e1198@100, {goesIn(sheet, hallway)}, {}, {
  obj(sheet). hasPhysicalQuality(sheet, soft_Deformable). hasPhysicalQuality(sheet, washable). hasRole(sheet, beddingRole). affordsTask(sheet, sleepingTask).
}).
#pos(e1199@100, {goesIn(shelf, bathroom)}, {}, {
  obj(shelf). hasPhysicalQuality(shelf, heavy). hasPhysicalQuality(shelf, rigid). hasRole(shelf, storageContainerRole). affordsTask(shelf, storageTask).
}).
#pos(e1200@100, {goesIn(shelf, bedroom)}, {}, {
  obj(shelf). hasPhysicalQuality(shelf, heavy). hasPhysicalQuality(shelf, rigid). hasRole(shelf, storageContainerRole). affordsTask(shelf, storageTask).
}).
#pos(e1201@100, {goesIn(shelf, cabinet)}, {}, {
  obj(shelf). hasPhysicalQuality(shelf, heavy). hasPhysicalQuality(shelf, rigid). hasRole(shelf, storageContainerRole). affordsTask(shelf, storageTask).
}).
#pos(e1202@100, {goesIn(shelf, closet)}, {}, {
  obj(shelf). hasPhysicalQuality(shelf, heavy). hasPhysicalQuality(shelf, rigid). hasRole(shelf, storageContainerRole). affordsTask(shelf, storageTask).
}).
#pos(e1203@100, {goesIn(shelf, fridge)}, {}, {
  obj(shelf). hasPhysicalQuality(shelf, heavy). hasPhysicalQuality(shelf, rigid). hasRole(shelf, storageContainerRole). affordsTask(shelf, storageTask).
}).
#pos(e1204@100, {goesIn(shelf, garage)}, {}, {
  obj(shelf). hasPhysicalQuality(shelf, heavy). hasPhysicalQuality(shelf, rigid). hasRole(shelf, storageContainerRole). affordsTask(shelf, storageTask).
}).
#pos(e1205@100, {goesIn(shelf, library)}, {}, {
  obj(shelf). hasPhysicalQuality(shelf, heavy). hasPhysicalQuality(shelf, rigid). hasRole(shelf, storageContainerRole). affordsTask(shelf, storageTask).
}).
#pos(e1206@100, {goesIn(shellac, kitchen)}, {}, {
  obj(shellac). hasPhysicalQuality(shellac, liquid). hasRole(shellac, cleaningToolRole). affordsTask(shellac, maintenanceTask).
}).
#pos(e1207@100, {goesIn(shellac, pantry)}, {}, {
  obj(shellac). hasPhysicalQuality(shellac, liquid). hasRole(shellac, cleaningToolRole). affordsTask(shellac, maintenanceTask).
}).
#pos(e1208@100, {goesIn(shirt, bedroom)}, {}, {
  obj(shirt). hasPhysicalQuality(shirt, lightweight). hasPhysicalQuality(shirt, soft_Deformable). hasRole(shirt, clothingRole). affordsTask(shirt, dressingTask).
}).
#pos(e1209@100, {goesIn(shirt, closet)}, {}, {
  obj(shirt). hasPhysicalQuality(shirt, lightweight). hasPhysicalQuality(shirt, soft_Deformable). hasRole(shirt, clothingRole). affordsTask(shirt, dressingTask).
}).
#pos(e1210@100, {goesIn(shirt, drawer)}, {}, {
  obj(shirt). hasPhysicalQuality(shirt, lightweight). hasPhysicalQuality(shirt, soft_Deformable). hasRole(shirt, clothingRole). affordsTask(shirt, dressingTask).
}).
#pos(e1211@100, {goesIn(shoes, bed)}, {}, {
  obj(shoes). hasPhysicalQuality(shoes, fragile). hasPhysicalQuality(shoes, lightweight). hasRole(shoes, clothingRole). affordsTask(shoes, dressingTask).
}).
#pos(e1212@100, {goesIn(shoes, bedroom)}, {}, {
  obj(shoes). hasPhysicalQuality(shoes, fragile). hasPhysicalQuality(shoes, lightweight). hasRole(shoes, clothingRole). affordsTask(shoes, dressingTask).
}).
#pos(e1213@100, {goesIn(shoes, closet)}, {}, {
  obj(shoes). hasPhysicalQuality(shoes, fragile). hasPhysicalQuality(shoes, lightweight). hasRole(shoes, clothingRole). affordsTask(shoes, dressingTask).
}).
#pos(e1214@100, {goesIn(shoes, garage)}, {}, {
  obj(shoes). hasPhysicalQuality(shoes, fragile). hasPhysicalQuality(shoes, lightweight). hasRole(shoes, clothingRole). affordsTask(shoes, dressingTask).
}).
#pos(e1215@100, {goesIn(shoes, library)}, {}, {
  obj(shoes). hasPhysicalQuality(shoes, fragile). hasPhysicalQuality(shoes, lightweight). hasRole(shoes, clothingRole). affordsTask(shoes, dressingTask).
}).
#pos(e1216@100, {goesIn(shoes, living_room)}, {}, {
  obj(shoes). hasPhysicalQuality(shoes, fragile). hasPhysicalQuality(shoes, lightweight). hasRole(shoes, clothingRole). affordsTask(shoes, dressingTask).
}).
#pos(e1217@100, {goesIn(shoes, storage_room)}, {}, {
  obj(shoes). hasPhysicalQuality(shoes, fragile). hasPhysicalQuality(shoes, lightweight). hasRole(shoes, clothingRole). affordsTask(shoes, dressingTask).
}).
#pos(e1218@100, {goesIn(shoes, table)}, {}, {
  obj(shoes). hasPhysicalQuality(shoes, fragile). hasPhysicalQuality(shoes, lightweight). hasRole(shoes, clothingRole). affordsTask(shoes, dressingTask).
}).
#pos(e1219@100, {goesIn(shopping_bag, bedroom)}, {}, {
  obj(shopping_bag). hasPhysicalQuality(shopping_bag, hasContainer). hasPhysicalQuality(shopping_bag, lightweight). hasRole(shopping_bag, storageContainerRole). affordsTask(shopping_bag, storageTask).
}).
#pos(e1220@100, {goesIn(shopping_bag, closet)}, {}, {
  obj(shopping_bag). hasPhysicalQuality(shopping_bag, hasContainer). hasPhysicalQuality(shopping_bag, lightweight). hasRole(shopping_bag, storageContainerRole). affordsTask(shopping_bag, storageTask).
}).
#pos(e1221@100, {goesIn(shopping_bag, storage_room)}, {}, {
  obj(shopping_bag). hasPhysicalQuality(shopping_bag, hasContainer). hasPhysicalQuality(shopping_bag, lightweight). hasRole(shopping_bag, storageContainerRole). affordsTask(shopping_bag, storageTask).
}).
#pos(e1222@100, {goesIn(shopping_basket, storage_room)}, {}, {
  obj(shopping_basket). hasPhysicalQuality(shopping_basket, lightweight). hasPhysicalQuality(shopping_basket, rigid). hasRole(shopping_basket, storageContainerRole).
}).
#pos(e1223@100, {goesIn(shower_door, bathroom)}, {}, {
  obj(shower_door). hasPhysicalQuality(shower_door, fragile). hasPhysicalQuality(shower_door, rigid). hasRole(shower_door, furnitureRole). affordsTask(shower_door, hygieneTask).
}).
#pos(e1224@100, {goesIn(shower_door, library)}, {}, {
  obj(shower_door). hasPhysicalQuality(shower_door, fragile). hasPhysicalQuality(shower_door, rigid). hasRole(shower_door, furnitureRole). affordsTask(shower_door, hygieneTask).
}).
#pos(e1225@100, {goesIn(shower_switch, bathroom)}, {}, {
  obj(shower_switch). hasPhysicalQuality(shower_switch, electronic). hasPhysicalQuality(shower_switch, lightweight). hasRole(shower_switch, toolRole). affordsTask(shower_switch, maintenanceTask).
}).
#pos(e1226@100, {goesIn(shower_switch, library)}, {}, {
  obj(shower_switch). hasPhysicalQuality(shower_switch, electronic). hasPhysicalQuality(shower_switch, lightweight). hasRole(shower_switch, toolRole). affordsTask(shower_switch, maintenanceTask).
}).
#pos(e1227@100, {goesIn(shrimp, kitchen)}, {}, {
  obj(shrimp). hasPhysicalQuality(shrimp, fragile). hasPhysicalQuality(shrimp, perishable). hasRole(shrimp, consumableRole). affordsTask(shrimp, eatingDrinkingTask).
}).
#pos(e1228@100, {goesIn(side_chair, bedroom)}, {}, {
  obj(side_chair). hasPhysicalQuality(side_chair, heavy). hasPhysicalQuality(side_chair, rigid). hasRole(side_chair, furnitureRole).
}).
#pos(e1229@100, {goesIn(side_chair, library)}, {}, {
  obj(side_chair). hasPhysicalQuality(side_chair, heavy). hasPhysicalQuality(side_chair, rigid). hasRole(side_chair, furnitureRole).
}).
#pos(e1230@100, {goesIn(side_chair, table)}, {}, {
  obj(side_chair). hasPhysicalQuality(side_chair, heavy). hasPhysicalQuality(side_chair, rigid). hasRole(side_chair, furnitureRole).
}).
#pos(e1231@100, {goesIn(sideboard, dining_room)}, {}, {
  obj(sideboard). hasPhysicalQuality(sideboard, heavy). hasPhysicalQuality(sideboard, rigid). hasRole(sideboard, furnitureRole). affordsTask(sideboard, storageTask).
}).
#pos(e1232@100, {goesIn(sideboard, kitchen)}, {}, {
  obj(sideboard). hasPhysicalQuality(sideboard, heavy). hasPhysicalQuality(sideboard, rigid). hasRole(sideboard, furnitureRole). affordsTask(sideboard, storageTask).
}).
#pos(e1233@100, {goesIn(signs, garage)}, {}, {
  obj(signs). hasRole(signs, decorationRole).
}).
#pos(e1234@100, {goesIn(silk, closet)}, {}, {
  obj(silk). hasPhysicalQuality(silk, lightweight). hasPhysicalQuality(silk, soft_Deformable). hasRole(silk, clothingRole).
}).
#pos(e1235@100, {goesIn(silverware, cabinet)}, {}, {
  obj(silverware). hasPhysicalQuality(silverware, rigid). hasPhysicalQuality(silverware, sharp). hasRole(silverware, utensilRole). affordsTask(silverware, foodPreparationTask).
}).
#pos(e1236@100, {goesIn(silverware, kitchen)}, {}, {
  obj(silverware). hasPhysicalQuality(silverware, rigid). hasPhysicalQuality(silverware, sharp). hasRole(silverware, utensilRole). affordsTask(silverware, foodPreparationTask).
}).
#pos(e1237@100, {goesIn(silverware, table)}, {}, {
  obj(silverware). hasPhysicalQuality(silverware, rigid). hasPhysicalQuality(silverware, sharp). hasRole(silverware, utensilRole). affordsTask(silverware, foodPreparationTask).
}).
#pos(e1238@100, {goesIn(sink, bedroom)}, {}, {
  obj(sink). hasPhysicalQuality(sink, hasContainer). hasPhysicalQuality(sink, heavy). hasRole(sink, cleaningToolRole). affordsTask(sink, cleaningTask). affordsTask(sink, hygieneTask).
}).
#pos(e1239@100, {goesIn(sink, kitchen)}, {}, {
  obj(sink). hasPhysicalQuality(sink, hasContainer). hasPhysicalQuality(sink, heavy). hasRole(sink, cleaningToolRole). affordsTask(sink, cleaningTask). affordsTask(sink, hygieneTask).
}).
#pos(e1240@100, {goesIn(sink, laundry_room)}, {}, {
  obj(sink). hasPhysicalQuality(sink, hasContainer). hasPhysicalQuality(sink, heavy). hasRole(sink, cleaningToolRole). affordsTask(sink, cleaningTask). affordsTask(sink, hygieneTask).
}).
#pos(e1241@100, {goesIn(sink, storage_room)}, {}, {
  obj(sink). hasPhysicalQuality(sink, hasContainer). hasPhysicalQuality(sink, heavy). hasRole(sink, cleaningToolRole). affordsTask(sink, cleaningTask). affordsTask(sink, hygieneTask).
}).
#pos(e1242@100, {goesIn(skirt, bedroom)}, {}, {
  obj(skirt). hasPhysicalQuality(skirt, lightweight). hasPhysicalQuality(skirt, soft_Deformable). hasRole(skirt, clothingRole). affordsTask(skirt, dressingTask).
}).
#pos(e1243@100, {goesIn(skirt, closet)}, {}, {
  obj(skirt). hasPhysicalQuality(skirt, lightweight). hasPhysicalQuality(skirt, soft_Deformable). hasRole(skirt, clothingRole). affordsTask(skirt, dressingTask).
}).
#pos(e1244@100, {goesIn(skirts, storage_room)}, {}, {
  obj(skirts). hasRole(skirts, clothingRole). affordsTask(skirts, dressingTask).
}).
#pos(e1245@100, {goesIn(skylight, bedroom)}, {}, {
  obj(skylight). hasRole(skylight, lightingRole). affordsTask(skylight, leisureTask).
}).
#pos(e1246@100, {goesIn(skylight, garage)}, {}, {
  obj(skylight). hasRole(skylight, lightingRole). affordsTask(skylight, leisureTask).
}).
#pos(e1247@100, {goesIn(slipper, bed)}, {}, {
  obj(slipper). hasPhysicalQuality(slipper, lightweight). hasPhysicalQuality(slipper, soft_Deformable). hasRole(slipper, clothingRole). affordsTask(slipper, dressingTask).
}).
#pos(e1248@100, {goesIn(slippers, bed)}, {}, {
  obj(slippers). hasPhysicalQuality(slippers, lightweight). hasPhysicalQuality(slippers, soft_Deformable). hasRole(slippers, clothingRole). affordsTask(slippers, dressingTask).
}).
#pos(e1249@100, {goesIn(slippers, bedroom)}, {}, {
  obj(slippers). hasPhysicalQuality(slippers, lightweight). hasPhysicalQuality(slippers, soft_Deformable). hasRole(slippers, clothingRole). affordsTask(slippers, dressingTask).
}).
#pos(e1250@100, {goesIn(smoothie, fridge)}, {}, {
  obj(smoothie). hasPhysicalQuality(smoothie, liquid). hasPhysicalQuality(smoothie, perishable). hasRole(smoothie, consumableRole). affordsTask(smoothie, eatingDrinkingTask).
}).
#pos(e1251@100, {goesIn(soap, sink)}, {}, {
  obj(soap). hasPhysicalQuality(soap, fragile). hasPhysicalQuality(soap, liquid). hasRole(soap, cleaningToolRole). affordsTask(soap, hygieneTask).
}).
#pos(e1252@100, {goesIn(soap_dish, sink)}, {}, {
  obj(soap_dish). hasPhysicalQuality(soap_dish, lightweight). hasPhysicalQuality(soap_dish, rigid). hasRole(soap_dish, storageContainerRole). affordsTask(soap_dish, hygieneTask).
}).
#pos(e1253@100, {goesIn(sock, bedroom)}, {}, {
  obj(sock). hasPhysicalQuality(sock, lightweight). hasPhysicalQuality(sock, soft_Deformable). hasRole(sock, clothingRole). affordsTask(sock, dressingTask).
}).
#pos(e1254@100, {goesIn(sock, drawer)}, {}, {
  obj(sock). hasPhysicalQuality(sock, lightweight). hasPhysicalQuality(sock, soft_Deformable). hasRole(sock, clothingRole). affordsTask(sock, dressingTask).
}).
#pos(e1255@100, {goesIn(sofa, bedroom)}, {}, {
  obj(sofa). hasPhysicalQuality(sofa, heavy). hasPhysicalQuality(sofa, soft_Deformable). hasRole(sofa, furnitureRole). affordsTask(sofa, leisureTask).
}).
#pos(e1256@100, {goesIn(sofa, living_room)}, {}, {
  obj(sofa). hasPhysicalQuality(sofa, heavy). hasPhysicalQuality(sofa, soft_Deformable). hasRole(sofa, furnitureRole). affordsTask(sofa, leisureTask).
}).
#pos(e1257@100, {goesIn(sofabed, bedroom)}, {}, {
  obj(sofabed). hasPhysicalQuality(sofabed, fragile). hasPhysicalQuality(sofabed, soft_Deformable). hasRole(sofabed, furnitureRole). affordsTask(sofabed, sleepingTask).
}).
#pos(e1258@100, {goesIn(sofabed, living_room)}, {}, {
  obj(sofabed). hasPhysicalQuality(sofabed, fragile). hasPhysicalQuality(sofabed, soft_Deformable). hasRole(sofabed, furnitureRole). affordsTask(sofabed, sleepingTask).
}).
#pos(e1259@100, {goesIn(spatula, drawer)}, {}, {
  obj(spatula). hasPhysicalQuality(spatula, hasBlade). hasPhysicalQuality(spatula, rigid). hasPhysicalQuality(spatula, sharp). hasRole(spatula, utensilRole). affordsTask(spatula, foodPreparationTask).
}).
#pos(e1260@100, {goesIn(spatula, kitchen)}, {}, {
  obj(spatula). hasPhysicalQuality(spatula, hasBlade). hasPhysicalQuality(spatula, rigid). hasPhysicalQuality(spatula, sharp). hasRole(spatula, utensilRole). affordsTask(spatula, foodPreparationTask).
}).
#pos(e1261@100, {goesIn(speaker, shelf)}, {}, {
  obj(speaker). hasPhysicalQuality(speaker, electronic). hasRole(speaker, toolRole). affordsTask(speaker, leisureTask).
}).
#pos(e1262@100, {goesIn(speaker, table)}, {}, {
  obj(speaker). hasPhysicalQuality(speaker, electronic). hasRole(speaker, toolRole). affordsTask(speaker, leisureTask).
}).
#pos(e1263@100, {goesIn(spices, cabinet)}, {}, {
  obj(spices). hasPhysicalQuality(spices, granular). hasRole(spices, consumableRole). affordsTask(spices, foodPreparationTask).
}).
#pos(e1264@100, {goesIn(spices, kitchen)}, {}, {
  obj(spices). hasPhysicalQuality(spices, granular). hasRole(spices, consumableRole). affordsTask(spices, foodPreparationTask).
}).
#pos(e1265@100, {goesIn(spices, pantry)}, {}, {
  obj(spices). hasPhysicalQuality(spices, granular). hasRole(spices, consumableRole). affordsTask(spices, foodPreparationTask).
}).
#pos(e1266@100, {goesIn(spices, shelf)}, {}, {
  obj(spices). hasPhysicalQuality(spices, granular). hasRole(spices, consumableRole). affordsTask(spices, foodPreparationTask).
}).
#pos(e1267@100, {goesIn(spoon, bed)}, {}, {
  obj(spoon). hasPhysicalQuality(spoon, lightweight). hasPhysicalQuality(spoon, rigid). hasPhysicalQuality(spoon, sharp). hasRole(spoon, utensilRole). affordsTask(spoon, foodPreparationTask).
}).
#pos(e1268@100, {goesIn(spoon, kitchen)}, {}, {
  obj(spoon). hasPhysicalQuality(spoon, lightweight). hasPhysicalQuality(spoon, rigid). hasPhysicalQuality(spoon, sharp). hasRole(spoon, utensilRole). affordsTask(spoon, foodPreparationTask).
}).
#pos(e1269@100, {goesIn(spoon, table)}, {}, {
  obj(spoon). hasPhysicalQuality(spoon, lightweight). hasPhysicalQuality(spoon, rigid). hasPhysicalQuality(spoon, sharp). hasRole(spoon, utensilRole). affordsTask(spoon, foodPreparationTask).
}).
#pos(e1270@100, {goesIn(spray_hose, garage)}, {}, {
  obj(spray_hose). hasPhysicalQuality(spray_hose, gas_Aerosol). hasPhysicalQuality(spray_hose, liquid). hasRole(spray_hose, toolRole). affordsTask(spray_hose, maintenanceTask).
}).
#pos(e1271@100, {goesIn(spray_hose, garden)}, {}, {
  obj(spray_hose). hasPhysicalQuality(spray_hose, gas_Aerosol). hasPhysicalQuality(spray_hose, liquid). hasRole(spray_hose, toolRole). affordsTask(spray_hose, maintenanceTask).
}).
#pos(e1272@100, {goesIn(stacking_chairs, bedroom)}, {}, {
  obj(stacking_chairs). hasPhysicalQuality(stacking_chairs, lightweight). hasRole(stacking_chairs, storageContainerRole). affordsTask(stacking_chairs, storageTask).
}).
#pos(e1273@100, {goesIn(stacking_chairs, closet)}, {}, {
  obj(stacking_chairs). hasPhysicalQuality(stacking_chairs, lightweight). hasRole(stacking_chairs, storageContainerRole). affordsTask(stacking_chairs, storageTask).
}).
#pos(e1274@100, {goesIn(stain, bathroom)}, {}, {
  obj(stain). hasRole(stain, cleaningToolRole). affordsTask(stain, cleaningTask).
}).
#pos(e1275@100, {goesIn(stain, bedroom)}, {}, {
  obj(stain). hasRole(stain, cleaningToolRole). affordsTask(stain, cleaningTask).
}).
#pos(e1276@100, {goesIn(stain, closet)}, {}, {
  obj(stain). hasRole(stain, cleaningToolRole). affordsTask(stain, cleaningTask).
}).
#pos(e1277@100, {goesIn(stain, living_room)}, {}, {
  obj(stain). hasRole(stain, cleaningToolRole). affordsTask(stain, cleaningTask).
}).
#pos(e1278@100, {goesIn(staircase, bedroom)}, {}, {
  obj(staircase). hasPhysicalQuality(staircase, heavy). hasPhysicalQuality(staircase, rigid). hasRole(staircase, furnitureRole). affordsTask(staircase, maintenanceTask).
}).
#pos(e1279@100, {goesIn(staircase, storage_room)}, {}, {
  obj(staircase). hasPhysicalQuality(staircase, heavy). hasPhysicalQuality(staircase, rigid). hasRole(staircase, furnitureRole). affordsTask(staircase, maintenanceTask).
}).
#pos(e1280@100, {goesIn(stairs, bedroom)}, {}, {
  obj(stairs). hasPhysicalQuality(stairs, heavy). hasPhysicalQuality(stairs, rigid). hasRole(stairs, furnitureRole). affordsTask(stairs, maintenanceTask).
}).
#pos(e1281@100, {goesIn(stairs, garage)}, {}, {
  obj(stairs). hasPhysicalQuality(stairs, heavy). hasPhysicalQuality(stairs, rigid). hasRole(stairs, furnitureRole). affordsTask(stairs, maintenanceTask).
}).
#pos(e1282@100, {goesIn(stairs, storage_room)}, {}, {
  obj(stairs). hasPhysicalQuality(stairs, heavy). hasPhysicalQuality(stairs, rigid). hasRole(stairs, furnitureRole). affordsTask(stairs, maintenanceTask).
}).
#pos(e1283@100, {goesIn(stamp_pad, table)}, {}, {
  obj(stamp_pad). hasPhysicalQuality(stamp_pad, lightweight). hasRole(stamp_pad, toolRole). affordsTask(stamp_pad, maintenanceTask).
}).
#pos(e1284@100, {goesIn(stapler, table)}, {}, {
  obj(stapler). hasPhysicalQuality(stapler, heavy). hasPhysicalQuality(stapler, rigid). hasRole(stapler, toolRole). affordsTask(stapler, maintenanceTask).
}).
#pos(e1285@100, {goesIn(staples, closet)}, {}, {
  obj(staples). hasPhysicalQuality(staples, sharp). hasRole(staples, toolRole). affordsTask(staples, maintenanceTask).
}).
#pos(e1286@100, {goesIn(staples, garage)}, {}, {
  obj(staples). hasPhysicalQuality(staples, sharp). hasRole(staples, toolRole). affordsTask(staples, maintenanceTask).
}).
#pos(e1287@100, {goesIn(staples, kitchen)}, {}, {
  obj(staples). hasPhysicalQuality(staples, sharp). hasRole(staples, toolRole). affordsTask(staples, maintenanceTask).
}).
#pos(e1288@100, {goesIn(staples, pantry)}, {}, {
  obj(staples). hasPhysicalQuality(staples, sharp). hasRole(staples, toolRole). affordsTask(staples, maintenanceTask).
}).
#pos(e1289@100, {goesIn(staples, storage_room)}, {}, {
  obj(staples). hasPhysicalQuality(staples, sharp). hasRole(staples, toolRole). affordsTask(staples, maintenanceTask).
}).
#pos(e1290@100, {goesIn(staples, table)}, {}, {
  obj(staples). hasPhysicalQuality(staples, sharp). hasRole(staples, toolRole). affordsTask(staples, maintenanceTask).
}).
#pos(e1291@100, {goesIn(steak, fridge)}, {}, {
  obj(steak). hasPhysicalQuality(steak, fragile). hasPhysicalQuality(steak, perishable). hasRole(steak, consumableRole). affordsTask(steak, eatingDrinkingTask). affordsTask(steak, foodPreparationTask).
}).
#pos(e1292@100, {goesIn(steak, kitchen)}, {}, {
  obj(steak). hasPhysicalQuality(steak, fragile). hasPhysicalQuality(steak, perishable). hasRole(steak, consumableRole). affordsTask(steak, eatingDrinkingTask). affordsTask(steak, foodPreparationTask).
}).
#pos(e1293@100, {goesIn(steel, garage)}, {}, {
  obj(steel). hasPhysicalQuality(steel, heavy). hasPhysicalQuality(steel, rigid). hasRole(steel, toolRole).
}).
#pos(e1294@100, {goesIn(stick_of_butter, fridge)}, {}, {
  obj(stick_of_butter). hasPhysicalQuality(stick_of_butter, granular). hasPhysicalQuality(stick_of_butter, perishable). hasRole(stick_of_butter, consumableRole). affordsTask(stick_of_butter, foodPreparationTask).
}).
#pos(e1295@100, {goesIn(storage, storage_room)}, {}, {
  obj(storage). hasPhysicalQuality(storage, hasContainer). hasRole(storage, storageContainerRole). affordsTask(storage, storageTask).
}).
#pos(e1296@100, {goesIn(storage_furniture, bedroom)}, {}, {
  obj(storage_furniture). hasPhysicalQuality(storage_furniture, heavy). hasPhysicalQuality(storage_furniture, rigid). hasRole(storage_furniture, furnitureRole). affordsTask(storage_furniture, storageTask).
}).
#pos(e1297@100, {goesIn(storage_furniture, storage_room)}, {}, {
  obj(storage_furniture). hasPhysicalQuality(storage_furniture, heavy). hasPhysicalQuality(storage_furniture, rigid). hasRole(storage_furniture, furnitureRole). affordsTask(storage_furniture, storageTask).
}).
#pos(e1298@100, {goesIn(stove, bedroom)}, {}, {
  obj(stove). hasPhysicalQuality(stove, heated). hasRole(stove, cookwareRole). affordsTask(stove, foodPreparationTask).
}).
#pos(e1299@100, {goesIn(stove, living_room)}, {}, {
  obj(stove). hasPhysicalQuality(stove, heated). hasRole(stove, cookwareRole). affordsTask(stove, foodPreparationTask).
}).
#pos(e1300@100, {goesIn(strawberries, fridge)}, {}, {
  obj(strawberries). hasPhysicalQuality(strawberries, perishable). hasRole(strawberries, consumableRole). affordsTask(strawberries, eatingDrinkingTask).
}).
#pos(e1301@100, {goesIn(studio_pedestal, music_room)}, {}, {
  obj(studio_pedestal). hasPhysicalQuality(studio_pedestal, heavy). hasPhysicalQuality(studio_pedestal, rigid). hasRole(studio_pedestal, furnitureRole). affordsTask(studio_pedestal, storageTask).
}).
#pos(e1302@100, {goesIn(sugar, cabinet)}, {}, {
  obj(sugar). hasPhysicalQuality(sugar, granular). hasRole(sugar, consumableRole). affordsTask(sugar, eatingDrinkingTask).
}).
#pos(e1303@100, {goesIn(sugar, closet)}, {}, {
  obj(sugar). hasPhysicalQuality(sugar, granular). hasRole(sugar, consumableRole). affordsTask(sugar, eatingDrinkingTask).
}).
#pos(e1304@100, {goesIn(sugar, garage)}, {}, {
  obj(sugar). hasPhysicalQuality(sugar, granular). hasRole(sugar, consumableRole). affordsTask(sugar, eatingDrinkingTask).
}).
#pos(e1305@100, {goesIn(sugar, kitchen)}, {}, {
  obj(sugar). hasPhysicalQuality(sugar, granular). hasRole(sugar, consumableRole). affordsTask(sugar, eatingDrinkingTask).
}).
#pos(e1306@100, {goesIn(sugar, pantry)}, {}, {
  obj(sugar). hasPhysicalQuality(sugar, granular). hasRole(sugar, consumableRole). affordsTask(sugar, eatingDrinkingTask).
}).
#pos(e1307@100, {goesIn(suit, bedroom)}, {}, {
  obj(suit). hasPhysicalQuality(suit, fragile). hasPhysicalQuality(suit, rigid). hasRole(suit, clothingRole). affordsTask(suit, dressingTask).
}).
#pos(e1308@100, {goesIn(suit, closet)}, {}, {
  obj(suit). hasPhysicalQuality(suit, fragile). hasPhysicalQuality(suit, rigid). hasRole(suit, clothingRole). affordsTask(suit, dressingTask).
}).
#pos(e1309@100, {goesIn(suntan_lotion, storage_room)}, {}, {
  obj(suntan_lotion). hasPhysicalQuality(suntan_lotion, liquid). hasPhysicalQuality(suntan_lotion, washable). hasRole(suntan_lotion, consumableRole). affordsTask(suntan_lotion, hygieneTask).
}).
#pos(e1310@100, {goesIn(swiss_cheese, storage_room)}, {}, {
  obj(swiss_cheese). hasPhysicalQuality(swiss_cheese, perishable). hasRole(swiss_cheese, consumableRole). affordsTask(swiss_cheese, eatingDrinkingTask).
}).
#pos(e1311@100, {goesIn(tabby_cat, storage_room)}, {}, {
  obj(tabby_cat). hasPhysicalQuality(tabby_cat, fragile). hasPhysicalQuality(tabby_cat, soft_Deformable). hasRole(tabby_cat, entertainmentRole). affordsTask(tabby_cat, leisureTask).
}).
#pos(e1312@100, {goesIn(table_cloth, cabinet)}, {}, {
  obj(table_cloth). hasPhysicalQuality(table_cloth, lightweight). hasPhysicalQuality(table_cloth, soft_Deformable). hasRole(table_cloth, beddingRole).
}).
#pos(e1313@100, {goesIn(table_cloth, table)}, {}, {
  obj(table_cloth). hasPhysicalQuality(table_cloth, lightweight). hasPhysicalQuality(table_cloth, soft_Deformable). hasRole(table_cloth, beddingRole).
}).
#pos(e1314@100, {goesIn(tablecloth, bedroom)}, {}, {
  obj(tablecloth). hasPhysicalQuality(tablecloth, soft_Deformable). hasPhysicalQuality(tablecloth, washable). hasRole(tablecloth, decorationRole). affordsTask(tablecloth, leisureTask).
}).
#pos(e1315@100, {goesIn(tablecloth, hallway)}, {}, {
  obj(tablecloth). hasPhysicalQuality(tablecloth, soft_Deformable). hasPhysicalQuality(tablecloth, washable). hasRole(tablecloth, decorationRole). affordsTask(tablecloth, leisureTask).
}).
#pos(e1316@100, {goesIn(tablecloth, table)}, {}, {
  obj(tablecloth). hasPhysicalQuality(tablecloth, soft_Deformable). hasPhysicalQuality(tablecloth, washable). hasRole(tablecloth, decorationRole). affordsTask(tablecloth, leisureTask).
}).
#pos(e1317@100, {goesIn(tables, bedroom)}, {}, {
  obj(tables). hasPhysicalQuality(tables, heavy). hasPhysicalQuality(tables, rigid). hasRole(tables, furnitureRole). affordsTask(tables, storageTask).
}).
#pos(e1318@100, {goesIn(tables, library)}, {}, {
  obj(tables). hasPhysicalQuality(tables, heavy). hasPhysicalQuality(tables, rigid). hasRole(tables, furnitureRole). affordsTask(tables, storageTask).
}).
#pos(e1319@100, {goesIn(tablespoon, drawer)}, {}, {
  obj(tablespoon). hasPhysicalQuality(tablespoon, hasContainer). hasPhysicalQuality(tablespoon, lightweight). hasRole(tablespoon, utensilRole). affordsTask(tablespoon, foodPreparationTask).
}).
#pos(e1320@100, {goesIn(tablespoon, kitchen)}, {}, {
  obj(tablespoon). hasPhysicalQuality(tablespoon, hasContainer). hasPhysicalQuality(tablespoon, lightweight). hasRole(tablespoon, utensilRole). affordsTask(tablespoon, foodPreparationTask).
}).
#pos(e1321@100, {goesIn(tack, bathroom)}, {}, {
  obj(tack). hasPhysicalQuality(tack, rigid). hasPhysicalQuality(tack, sharp). hasRole(tack, utensilRole). affordsTask(tack, foodPreparationTask).
}).
#pos(e1322@100, {goesIn(tack, bedroom)}, {}, {
  obj(tack). hasPhysicalQuality(tack, rigid). hasPhysicalQuality(tack, sharp). hasRole(tack, utensilRole). affordsTask(tack, foodPreparationTask).
}).
#pos(e1323@100, {goesIn(tack, closet)}, {}, {
  obj(tack). hasPhysicalQuality(tack, rigid). hasPhysicalQuality(tack, sharp). hasRole(tack, utensilRole). affordsTask(tack, foodPreparationTask).
}).
#pos(e1324@100, {goesIn(tap, bathroom)}, {}, {
  obj(tap). hasPhysicalQuality(tap, lightweight). hasPhysicalQuality(tap, rigid). hasRole(tap, toolRole). affordsTask(tap, maintenanceTask).
}).
#pos(e1325@100, {goesIn(tap, library)}, {}, {
  obj(tap). hasPhysicalQuality(tap, lightweight). hasPhysicalQuality(tap, rigid). hasRole(tap, toolRole). affordsTask(tap, maintenanceTask).
}).
#pos(e1326@100, {goesIn(tap, sink)}, {}, {
  obj(tap). hasPhysicalQuality(tap, lightweight). hasPhysicalQuality(tap, rigid). hasRole(tap, toolRole). affordsTask(tap, maintenanceTask).
}).
#pos(e1327@100, {goesIn(tape, drawer)}, {}, {
  obj(tape). hasPhysicalQuality(tape, isFlexible). hasPhysicalQuality(tape, lightweight). hasRole(tape, toolRole). affordsTask(tape, maintenanceTask).
}).
#pos(e1328@100, {goesIn(tape_dispenser, drawer)}, {}, {
  obj(tape_dispenser). hasPhysicalQuality(tape_dispenser, lightweight). hasPhysicalQuality(tape_dispenser, rigid). hasRole(tape_dispenser, toolRole). affordsTask(tape_dispenser, maintenanceTask).
}).
#pos(e1329@100, {goesIn(tape_dispenser, table)}, {}, {
  obj(tape_dispenser). hasPhysicalQuality(tape_dispenser, lightweight). hasPhysicalQuality(tape_dispenser, rigid). hasRole(tape_dispenser, toolRole). affordsTask(tape_dispenser, maintenanceTask).
}).
#pos(e1330@100, {goesIn(tape_measure, storage_room)}, {}, {
  obj(tape_measure). hasPhysicalQuality(tape_measure, lightweight). hasPhysicalQuality(tape_measure, rigid). hasRole(tape_measure, toolRole). affordsTask(tape_measure, maintenanceTask).
}).
#pos(e1331@100, {goesIn(tar, garage)}, {}, {
  obj(tar). hasPhysicalQuality(tar, fragile). hasPhysicalQuality(tar, granular). hasRole(tar, consumableRole).
}).
#pos(e1332@100, {goesIn(tea, cabinet)}, {}, {
  obj(tea). hasPhysicalQuality(tea, liquid). hasPhysicalQuality(tea, perishable). hasRole(tea, consumableRole). affordsTask(tea, eatingDrinkingTask).
}).
#pos(e1333@100, {goesIn(tea, closet)}, {}, {
  obj(tea). hasPhysicalQuality(tea, liquid). hasPhysicalQuality(tea, perishable). hasRole(tea, consumableRole). affordsTask(tea, eatingDrinkingTask).
}).
#pos(e1334@100, {goesIn(tea, fridge)}, {}, {
  obj(tea). hasPhysicalQuality(tea, liquid). hasPhysicalQuality(tea, perishable). hasRole(tea, consumableRole). affordsTask(tea, eatingDrinkingTask).
}).
#pos(e1335@100, {goesIn(tea, kitchen)}, {}, {
  obj(tea). hasPhysicalQuality(tea, liquid). hasPhysicalQuality(tea, perishable). hasRole(tea, consumableRole). affordsTask(tea, eatingDrinkingTask).
}).
#pos(e1336@100, {goesIn(teakettle, bathroom)}, {}, {
  obj(teakettle). hasPhysicalQuality(teakettle, heated). hasRole(teakettle, cookwareRole). affordsTask(teakettle, foodPreparationTask).
}).
#pos(e1337@100, {goesIn(teakettle, cabinet)}, {}, {
  obj(teakettle). hasPhysicalQuality(teakettle, heated). hasRole(teakettle, cookwareRole). affordsTask(teakettle, foodPreparationTask).
}).
#pos(e1338@100, {goesIn(teakettle, closet)}, {}, {
  obj(teakettle). hasPhysicalQuality(teakettle, heated). hasRole(teakettle, cookwareRole). affordsTask(teakettle, foodPreparationTask).
}).
#pos(e1339@100, {goesIn(teaspoon, kitchen)}, {}, {
  obj(teaspoon). hasPhysicalQuality(teaspoon, lightweight). hasPhysicalQuality(teaspoon, rigid). hasRole(teaspoon, utensilRole). affordsTask(teaspoon, foodPreparationTask).
}).
#pos(e1340@100, {goesIn(teddy_bear, bed)}, {}, {
  obj(teddy_bear). hasRole(teddy_bear, entertainmentRole). affordsTask(teddy_bear, leisureTask).
}).
#pos(e1341@100, {goesIn(teddy_bear, shelf)}, {}, {
  obj(teddy_bear). hasRole(teddy_bear, entertainmentRole). affordsTask(teddy_bear, leisureTask).
}).
#pos(e1342@100, {goesIn(telephone, table)}, {}, {
  obj(telephone). hasPhysicalQuality(telephone, electronic). hasPhysicalQuality(telephone, lightweight). hasRole(telephone, toolRole). affordsTask(telephone, workStudyTask).
}).
#pos(e1343@100, {goesIn(telephone_book, bedroom)}, {}, {
  obj(telephone_book). hasPhysicalQuality(telephone_book, fragile). hasPhysicalQuality(telephone_book, lightweight). hasRole(telephone_book, documentRole). affordsTask(telephone_book, workStudyTask).
}).
#pos(e1344@100, {goesIn(telephone_book, closet)}, {}, {
  obj(telephone_book). hasPhysicalQuality(telephone_book, fragile). hasPhysicalQuality(telephone_book, lightweight). hasRole(telephone_book, documentRole). affordsTask(telephone_book, workStudyTask).
}).
#pos(e1345@100, {goesIn(telephone_book, drawer)}, {}, {
  obj(telephone_book). hasPhysicalQuality(telephone_book, fragile). hasPhysicalQuality(telephone_book, lightweight). hasRole(telephone_book, documentRole). affordsTask(telephone_book, workStudyTask).
}).
#pos(e1346@100, {goesIn(telephone_book, library)}, {}, {
  obj(telephone_book). hasPhysicalQuality(telephone_book, fragile). hasPhysicalQuality(telephone_book, lightweight). hasRole(telephone_book, documentRole). affordsTask(telephone_book, workStudyTask).
}).
#pos(e1347@100, {goesIn(telephone_book, table)}, {}, {
  obj(telephone_book). hasPhysicalQuality(telephone_book, fragile). hasPhysicalQuality(telephone_book, lightweight). hasRole(telephone_book, documentRole). affordsTask(telephone_book, workStudyTask).
}).
#pos(e1348@100, {goesIn(telephone_directory, bedroom)}, {}, {
  obj(telephone_directory). hasRole(telephone_directory, documentRole).
}).
#pos(e1349@100, {goesIn(telephone_directory, kitchen)}, {}, {
  obj(telephone_directory). hasRole(telephone_directory, documentRole).
}).
#pos(e1350@100, {goesIn(telephone_directory, library)}, {}, {
  obj(telephone_directory). hasRole(telephone_directory, documentRole).
}).
#pos(e1351@100, {goesIn(telephone_directory, shelf)}, {}, {
  obj(telephone_directory). hasRole(telephone_directory, documentRole).
}).
#pos(e1352@100, {goesIn(telephone_index, bedroom)}, {}, {
  obj(telephone_index). hasPhysicalQuality(telephone_index, electronic). hasPhysicalQuality(telephone_index, lightweight). hasRole(telephone_index, toolRole). affordsTask(telephone_index, workStudyTask).
}).
#pos(e1353@100, {goesIn(telephone_index, closet)}, {}, {
  obj(telephone_index). hasPhysicalQuality(telephone_index, electronic). hasPhysicalQuality(telephone_index, lightweight). hasRole(telephone_index, toolRole). affordsTask(telephone_index, workStudyTask).
}).
#pos(e1354@100, {goesIn(telephone_index, library)}, {}, {
  obj(telephone_index). hasPhysicalQuality(telephone_index, electronic). hasPhysicalQuality(telephone_index, lightweight). hasRole(telephone_index, toolRole). affordsTask(telephone_index, workStudyTask).
}).
#pos(e1355@100, {goesIn(television, bedroom)}, {}, {
  obj(television). hasPhysicalQuality(television, electronic). hasPhysicalQuality(television, heavy). hasRole(television, applianceRole). affordsTask(television, leisureTask).
}).
#pos(e1356@100, {goesIn(television, living_room)}, {}, {
  obj(television). hasPhysicalQuality(television, electronic). hasPhysicalQuality(television, heavy). hasRole(television, applianceRole). affordsTask(television, leisureTask).
}).
#pos(e1357@100, {goesIn(terrace_railing, garden)}, {}, {
  obj(terrace_railing). hasPhysicalQuality(terrace_railing, heavy). hasPhysicalQuality(terrace_railing, rigid). hasRole(terrace_railing, furnitureRole).
}).
#pos(e1358@100, {goesIn(textile, kitchen)}, {}, {
  obj(textile). hasPhysicalQuality(textile, lightweight). hasPhysicalQuality(textile, soft_Deformable). hasRole(textile, clothingRole).
}).
#pos(e1359@100, {goesIn(thermostat, fridge)}, {}, {
  obj(thermostat). hasPhysicalQuality(thermostat, electronic). hasPhysicalQuality(thermostat, heavy). hasRole(thermostat, applianceRole).
}).
#pos(e1360@100, {goesIn(thumb_tack, drawer)}, {}, {
  obj(thumb_tack). hasPhysicalQuality(thumb_tack, lightweight). hasPhysicalQuality(thumb_tack, sharp). hasRole(thumb_tack, toolRole). affordsTask(thumb_tack, maintenanceTask).
}).
#pos(e1361@100, {goesIn(tiles, closet)}, {}, {
  obj(tiles). hasPhysicalQuality(tiles, granular). hasPhysicalQuality(tiles, rigid). hasRole(tiles, furnitureRole).
}).
#pos(e1362@100, {goesIn(tiles, garage)}, {}, {
  obj(tiles). hasPhysicalQuality(tiles, granular). hasPhysicalQuality(tiles, rigid). hasRole(tiles, furnitureRole).
}).
#pos(e1363@100, {goesIn(tiles, library)}, {}, {
  obj(tiles). hasPhysicalQuality(tiles, granular). hasPhysicalQuality(tiles, rigid). hasRole(tiles, furnitureRole).
}).
#pos(e1364@100, {goesIn(tin_cans, trash)}, {}, {
  obj(tin_cans). hasPhysicalQuality(tin_cans, heavy). hasPhysicalQuality(tin_cans, rigid). hasRole(tin_cans, storageContainerRole). affordsTask(tin_cans, storageTask).
}).
#pos(e1365@100, {goesIn(tissue_holder, bathroom)}, {}, {
  obj(tissue_holder). hasPhysicalQuality(tissue_holder, lightweight). hasPhysicalQuality(tissue_holder, rigid). hasRole(tissue_holder, storageContainerRole). affordsTask(tissue_holder, storageTask).
}).
#pos(e1366@100, {goesIn(tissue_holder, library)}, {}, {
  obj(tissue_holder). hasPhysicalQuality(tissue_holder, lightweight). hasPhysicalQuality(tissue_holder, rigid). hasRole(tissue_holder, storageContainerRole). affordsTask(tissue_holder, storageTask).
}).
#pos(e1367@100, {goesIn(tofu, fridge)}, {}, {
  obj(tofu). hasPhysicalQuality(tofu, lightweight). hasPhysicalQuality(tofu, perishable). hasRole(tofu, consumableRole). affordsTask(tofu, eatingDrinkingTask).
}).
#pos(e1368@100, {goesIn(toilet_brush, bathroom)}, {}, {
  obj(toilet_brush). hasPhysicalQuality(toilet_brush, fragile). hasPhysicalQuality(toilet_brush, lightweight). hasRole(toilet_brush, cleaningToolRole). affordsTask(toilet_brush, cleaningTask).
}).
#pos(e1369@100, {goesIn(toilet_brush, library)}, {}, {
  obj(toilet_brush). hasPhysicalQuality(toilet_brush, fragile). hasPhysicalQuality(toilet_brush, lightweight). hasRole(toilet_brush, cleaningToolRole). affordsTask(toilet_brush, cleaningTask).
}).
#pos(e1370@100, {goesIn(toilet_paper, bathroom)}, {}, {
  obj(toilet_paper). hasPhysicalQuality(toilet_paper, soft_Deformable). hasPhysicalQuality(toilet_paper, washable). hasRole(toilet_paper, consumableRole). affordsTask(toilet_paper, hygieneTask).
}).
#pos(e1371@100, {goesIn(toilet_paper, library)}, {}, {
  obj(toilet_paper). hasPhysicalQuality(toilet_paper, soft_Deformable). hasPhysicalQuality(toilet_paper, washable). hasRole(toilet_paper, consumableRole). affordsTask(toilet_paper, hygieneTask).
}).
#pos(e1372@100, {goesIn(toilet_seat, bathroom)}, {}, {
  obj(toilet_seat). hasPhysicalQuality(toilet_seat, fragile). hasRole(toilet_seat, utensilRole). affordsTask(toilet_seat, eatingDrinkingTask).
}).
#pos(e1373@100, {goesIn(toilet_tank, bathroom)}, {}, {
  obj(toilet_tank). hasPhysicalQuality(toilet_tank, heavy). hasRole(toilet_tank, applianceRole). affordsTask(toilet_tank, wasteDisposalTask).
}).
#pos(e1374@100, {goesIn(tomato, fridge)}, {}, {
  obj(tomato). hasPhysicalQuality(tomato, fragile). hasPhysicalQuality(tomato, perishable). hasRole(tomato, consumableRole). affordsTask(tomato, eatingDrinkingTask).
}).
#pos(e1375@100, {goesIn(tomato_plants, bedroom)}, {}, {
  obj(tomato_plants). hasPhysicalQuality(tomato_plants, perishable).
}).
#pos(e1376@100, {goesIn(tomatoes, fridge)}, {}, {
  obj(tomatoes). hasPhysicalQuality(tomatoes, perishable). hasRole(tomatoes, consumableRole). affordsTask(tomatoes, eatingDrinkingTask).
}).
#pos(e1377@100, {goesIn(toolbox, garage)}, {}, {
  obj(toolbox). hasPhysicalQuality(toolbox, heavy). hasPhysicalQuality(toolbox, rigid). hasRole(toolbox, toolRole). affordsTask(toolbox, maintenanceTask).
}).
#pos(e1378@100, {goesIn(toothbrush, bedroom)}, {}, {
  obj(toothbrush). hasPhysicalQuality(toothbrush, fragile). hasPhysicalQuality(toothbrush, lightweight). affordsTask(toothbrush, hygieneTask).
}).
#pos(e1379@100, {goesIn(toothbrush_bristle, bathroom)}, {}, {
  obj(toothbrush_bristle). hasPhysicalQuality(toothbrush_bristle, lightweight). hasPhysicalQuality(toothbrush_bristle, soft_Deformable). affordsTask(toothbrush_bristle, hygieneTask).
}).
#pos(e1380@100, {goesIn(toothbrush_bristle, bedroom)}, {}, {
  obj(toothbrush_bristle). hasPhysicalQuality(toothbrush_bristle, lightweight). hasPhysicalQuality(toothbrush_bristle, soft_Deformable). affordsTask(toothbrush_bristle, hygieneTask).
}).
#pos(e1381@100, {goesIn(toothbrush_bristle, library)}, {}, {
  obj(toothbrush_bristle). hasPhysicalQuality(toothbrush_bristle, lightweight). hasPhysicalQuality(toothbrush_bristle, soft_Deformable). affordsTask(toothbrush_bristle, hygieneTask).
}).
#pos(e1382@100, {goesIn(toothbrush_bristle, sink)}, {}, {
  obj(toothbrush_bristle). hasPhysicalQuality(toothbrush_bristle, lightweight). hasPhysicalQuality(toothbrush_bristle, soft_Deformable). affordsTask(toothbrush_bristle, hygieneTask).
}).
#pos(e1383@100, {goesIn(toothbrush_head, trash)}, {}, {
  obj(toothbrush_head). hasPhysicalQuality(toothbrush_head, fragile). hasPhysicalQuality(toothbrush_head, lightweight). affordsTask(toothbrush_head, eatingDrinkingTask).
}).
#pos(e1384@100, {goesIn(toothpaste, bathroom)}, {}, {
  obj(toothpaste). hasPhysicalQuality(toothpaste, liquid). hasPhysicalQuality(toothpaste, toxic_Hazardous). hasRole(toothpaste, cleaningToolRole). affordsTask(toothpaste, hygieneTask).
}).
#pos(e1385@100, {goesIn(toothpaste, library)}, {}, {
  obj(toothpaste). hasPhysicalQuality(toothpaste, liquid). hasPhysicalQuality(toothpaste, toxic_Hazardous). hasRole(toothpaste, cleaningToolRole). affordsTask(toothpaste, hygieneTask).
}).
#pos(e1386@100, {goesIn(toothpaste, sink)}, {}, {
  obj(toothpaste). hasPhysicalQuality(toothpaste, liquid). hasPhysicalQuality(toothpaste, toxic_Hazardous). hasRole(toothpaste, cleaningToolRole). affordsTask(toothpaste, hygieneTask).
}).
#pos(e1387@100, {goesIn(torch, garage)}, {}, {
  obj(torch). hasPhysicalQuality(torch, electronic). hasPhysicalQuality(torch, heated). hasRole(torch, lightingRole). affordsTask(torch, leisureTask).
}).
#pos(e1388@100, {goesIn(tote_bag, bedroom)}, {}, {
  obj(tote_bag). hasPhysicalQuality(tote_bag, lightweight). hasPhysicalQuality(tote_bag, soft_Deformable). hasRole(tote_bag, clothingRole). affordsTask(tote_bag, storageTask).
}).
#pos(e1389@100, {goesIn(tote_bag, closet)}, {}, {
  obj(tote_bag). hasPhysicalQuality(tote_bag, lightweight). hasPhysicalQuality(tote_bag, soft_Deformable). hasRole(tote_bag, clothingRole). affordsTask(tote_bag, storageTask).
}).
#pos(e1390@100, {goesIn(towel, bedroom)}, {}, {
  obj(towel). hasPhysicalQuality(towel, soft_Deformable). hasPhysicalQuality(towel, washable). hasRole(towel, cleaningToolRole). affordsTask(towel, hygieneTask).
}).
#pos(e1391@100, {goesIn(towel, cabinet)}, {}, {
  obj(towel). hasPhysicalQuality(towel, soft_Deformable). hasPhysicalQuality(towel, washable). hasRole(towel, cleaningToolRole). affordsTask(towel, hygieneTask).
}).
#pos(e1392@100, {goesIn(towel, closet)}, {}, {
  obj(towel). hasPhysicalQuality(towel, soft_Deformable). hasPhysicalQuality(towel, washable). hasRole(towel, cleaningToolRole). affordsTask(towel, hygieneTask).
}).
#pos(e1393@100, {goesIn(towel, garage)}, {}, {
  obj(towel). hasPhysicalQuality(towel, soft_Deformable). hasPhysicalQuality(towel, washable). hasRole(towel, cleaningToolRole). affordsTask(towel, hygieneTask).
}).
#pos(e1394@100, {goesIn(towel, hallway)}, {}, {
  obj(towel). hasPhysicalQuality(towel, soft_Deformable). hasPhysicalQuality(towel, washable). hasRole(towel, cleaningToolRole). affordsTask(towel, hygieneTask).
}).
#pos(e1395@100, {goesIn(towel, storage_room)}, {}, {
  obj(towel). hasPhysicalQuality(towel, soft_Deformable). hasPhysicalQuality(towel, washable). hasRole(towel, cleaningToolRole). affordsTask(towel, hygieneTask).
}).
#pos(e1396@100, {goesIn(towel_bar, library)}, {}, {
  obj(towel_bar). hasPhysicalQuality(towel_bar, electronic). hasPhysicalQuality(towel_bar, rigid). hasRole(towel_bar, storageContainerRole). affordsTask(towel_bar, hygieneTask).
}).
#pos(e1397@100, {goesIn(towel_rack, bathroom)}, {}, {
  obj(towel_rack). hasPhysicalQuality(towel_rack, heavy). hasPhysicalQuality(towel_rack, rigid). hasRole(towel_rack, storageContainerRole). affordsTask(towel_rack, storageTask).
}).
#pos(e1398@100, {goesIn(towel_rack, library)}, {}, {
  obj(towel_rack). hasPhysicalQuality(towel_rack, heavy). hasPhysicalQuality(towel_rack, rigid). hasRole(towel_rack, storageContainerRole). affordsTask(towel_rack, storageTask).
}).
#pos(e1399@100, {goesIn(toy, table)}, {}, {
  obj(toy). hasRole(toy, entertainmentRole). affordsTask(toy, leisureTask).
}).
#pos(e1400@100, {goesIn(toys, bed)}, {}, {
  obj(toys). hasPhysicalQuality(toys, lightweight). hasRole(toys, entertainmentRole). affordsTask(toys, leisureTask).
}).
#pos(e1401@100, {goesIn(toys, bedroom)}, {}, {
  obj(toys). hasPhysicalQuality(toys, lightweight). hasRole(toys, entertainmentRole). affordsTask(toys, leisureTask).
}).
#pos(e1402@100, {goesIn(toys, closet)}, {}, {
  obj(toys). hasPhysicalQuality(toys, lightweight). hasRole(toys, entertainmentRole). affordsTask(toys, leisureTask).
}).
#pos(e1403@100, {goesIn(toys, drawer)}, {}, {
  obj(toys). hasPhysicalQuality(toys, lightweight). hasRole(toys, entertainmentRole). affordsTask(toys, leisureTask).
}).
#pos(e1404@100, {goesIn(toys, garage)}, {}, {
  obj(toys). hasPhysicalQuality(toys, lightweight). hasRole(toys, entertainmentRole). affordsTask(toys, leisureTask).
}).
#pos(e1405@100, {goesIn(toys, library)}, {}, {
  obj(toys). hasPhysicalQuality(toys, lightweight). hasRole(toys, entertainmentRole). affordsTask(toys, leisureTask).
}).
#pos(e1406@100, {goesIn(toys, living_room)}, {}, {
  obj(toys). hasPhysicalQuality(toys, lightweight). hasRole(toys, entertainmentRole). affordsTask(toys, leisureTask).
}).
#pos(e1407@100, {goesIn(toys, storage_room)}, {}, {
  obj(toys). hasPhysicalQuality(toys, lightweight). hasRole(toys, entertainmentRole). affordsTask(toys, leisureTask).
}).
#pos(e1408@100, {goesIn(trash, bed)}, {}, {
  obj(trash). hasRole(trash, storageContainerRole). affordsTask(trash, wasteDisposalTask).
}).
#pos(e1409@100, {goesIn(trash, closet)}, {}, {
  obj(trash). hasRole(trash, storageContainerRole). affordsTask(trash, wasteDisposalTask).
}).
#pos(e1410@100, {goesIn(trash, garage)}, {}, {
  obj(trash). hasRole(trash, storageContainerRole). affordsTask(trash, wasteDisposalTask).
}).
#pos(e1411@100, {goesIn(trash, kitchen)}, {}, {
  obj(trash). hasRole(trash, storageContainerRole). affordsTask(trash, wasteDisposalTask).
}).
#pos(e1412@100, {goesIn(trash, pantry)}, {}, {
  obj(trash). hasRole(trash, storageContainerRole). affordsTask(trash, wasteDisposalTask).
}).
#pos(e1413@100, {goesIn(trash, trash)}, {}, {
  obj(trash). hasRole(trash, storageContainerRole). affordsTask(trash, wasteDisposalTask).
}).
#pos(e1414@100, {goesIn(trash_can, kitchen)}, {}, {
  obj(trash_can). hasPhysicalQuality(trash_can, heavy). hasRole(trash_can, storageContainerRole). hasRole(trash_can, wasteRole). affordsTask(trash_can, wasteDisposalTask).
}).
#pos(e1415@100, {goesIn(trash_can, table)}, {}, {
  obj(trash_can). hasPhysicalQuality(trash_can, heavy). hasRole(trash_can, storageContainerRole). hasRole(trash_can, wasteRole). affordsTask(trash_can, wasteDisposalTask).
}).
#pos(e1416@100, {goesIn(trash_container, kitchen)}, {}, {
  obj(trash_container). hasPhysicalQuality(trash_container, hasContainer). hasPhysicalQuality(trash_container, heavy). hasRole(trash_container, storageContainerRole). affordsTask(trash_container, wasteDisposalTask).
}).
#pos(e1417@100, {goesIn(tub, kitchen)}, {}, {
  obj(tub). hasPhysicalQuality(tub, hasContainer). hasPhysicalQuality(tub, heavy). hasRole(tub, storageContainerRole). affordsTask(tub, eatingDrinkingTask).
}).
#pos(e1418@100, {goesIn(tuna, bathroom)}, {}, {
  obj(tuna). hasPhysicalQuality(tuna, perishable). hasRole(tuna, consumableRole). affordsTask(tuna, eatingDrinkingTask).
}).
#pos(e1419@100, {goesIn(tuna, closet)}, {}, {
  obj(tuna). hasPhysicalQuality(tuna, perishable). hasRole(tuna, consumableRole). affordsTask(tuna, eatingDrinkingTask).
}).
#pos(e1420@100, {goesIn(tuna, kitchen)}, {}, {
  obj(tuna). hasPhysicalQuality(tuna, perishable). hasRole(tuna, consumableRole). affordsTask(tuna, eatingDrinkingTask).
}).
#pos(e1421@100, {goesIn(tuna, pantry)}, {}, {
  obj(tuna). hasPhysicalQuality(tuna, perishable). hasRole(tuna, consumableRole). affordsTask(tuna, eatingDrinkingTask).
}).
#pos(e1422@100, {goesIn(tuning_fork, music_room)}, {}, {
  obj(tuning_fork). hasPhysicalQuality(tuning_fork, electronic). hasPhysicalQuality(tuning_fork, rigid). hasRole(tuning_fork, toolRole). affordsTask(tuning_fork, maintenanceTask).
}).
#pos(e1423@100, {goesIn(turkey, fridge)}, {}, {
  obj(turkey). hasPhysicalQuality(turkey, perishable). hasRole(turkey, consumableRole). affordsTask(turkey, eatingDrinkingTask).
}).
#pos(e1424@100, {goesIn(tv, bedroom)}, {}, {
  obj(tv). hasPhysicalQuality(tv, electronic). hasPhysicalQuality(tv, heavy). hasRole(tv, applianceRole). affordsTask(tv, leisureTask).
}).
#pos(e1425@100, {goesIn(tv, living_room)}, {}, {
  obj(tv). hasPhysicalQuality(tv, electronic). hasPhysicalQuality(tv, heavy). hasRole(tv, applianceRole). affordsTask(tv, leisureTask).
}).
#pos(e1426@100, {goesIn(typewriter, table)}, {}, {
  obj(typewriter). hasPhysicalQuality(typewriter, heavy). hasPhysicalQuality(typewriter, rigid). hasRole(typewriter, toolRole). affordsTask(typewriter, workStudyTask).
}).
#pos(e1427@100, {goesIn(umbrella, bedroom)}, {}, {
  obj(umbrella). hasPhysicalQuality(umbrella, isFlexible). hasPhysicalQuality(umbrella, lightweight). hasRole(umbrella, toolRole).
}).
#pos(e1428@100, {goesIn(umbrella, closet)}, {}, {
  obj(umbrella). hasPhysicalQuality(umbrella, isFlexible). hasPhysicalQuality(umbrella, lightweight). hasRole(umbrella, toolRole).
}).
#pos(e1429@100, {goesIn(underwear, drawer)}, {}, {
  obj(underwear). hasPhysicalQuality(underwear, lightweight). hasPhysicalQuality(underwear, soft_Deformable). hasRole(underwear, clothingRole). affordsTask(underwear, dressingTask).
}).
#pos(e1430@100, {goesIn(upright_piano, bedroom)}, {}, {
  obj(upright_piano). hasPhysicalQuality(upright_piano, heavy). hasPhysicalQuality(upright_piano, rigid). hasRole(upright_piano, entertainmentRole). hasRole(upright_piano, musicalInstrumentRole). affordsTask(upright_piano, leisureTask). affordsTask(upright_piano, workStudyTask).
}).
#pos(e1431@100, {goesIn(upright_piano, living_room)}, {}, {
  obj(upright_piano). hasPhysicalQuality(upright_piano, heavy). hasPhysicalQuality(upright_piano, rigid). hasRole(upright_piano, entertainmentRole). hasRole(upright_piano, musicalInstrumentRole). affordsTask(upright_piano, leisureTask). affordsTask(upright_piano, workStudyTask).
}).
#pos(e1432@100, {goesIn(upright_piano, music_room)}, {}, {
  obj(upright_piano). hasPhysicalQuality(upright_piano, heavy). hasPhysicalQuality(upright_piano, rigid). hasRole(upright_piano, entertainmentRole). hasRole(upright_piano, musicalInstrumentRole). affordsTask(upright_piano, leisureTask). affordsTask(upright_piano, workStudyTask).
}).
#pos(e1433@100, {goesIn(utensils, cabinet)}, {}, {
  obj(utensils). hasRole(utensils, utensilRole).
}).
#pos(e1434@100, {goesIn(utensils, drawer)}, {}, {
  obj(utensils). hasRole(utensils, utensilRole).
}).
#pos(e1435@100, {goesIn(utility_case, garage)}, {}, {
  obj(utility_case). hasPhysicalQuality(utility_case, hasContainer). hasRole(utility_case, storageContainerRole). affordsTask(utility_case, storageTask).
}).
#pos(e1436@100, {goesIn(vacuum, bedroom)}, {}, {
  obj(vacuum). hasPhysicalQuality(vacuum, electronic). hasPhysicalQuality(vacuum, heavy). hasRole(vacuum, cleaningToolRole). affordsTask(vacuum, cleaningTask).
}).
#pos(e1437@100, {goesIn(vacuum, closet)}, {}, {
  obj(vacuum). hasPhysicalQuality(vacuum, electronic). hasPhysicalQuality(vacuum, heavy). hasRole(vacuum, cleaningToolRole). affordsTask(vacuum, cleaningTask).
}).
#pos(e1438@100, {goesIn(vacuum, garage)}, {}, {
  obj(vacuum). hasPhysicalQuality(vacuum, electronic). hasPhysicalQuality(vacuum, heavy). hasRole(vacuum, cleaningToolRole). affordsTask(vacuum, cleaningTask).
}).
#pos(e1439@100, {goesIn(vacuum, kitchen)}, {}, {
  obj(vacuum). hasPhysicalQuality(vacuum, electronic). hasPhysicalQuality(vacuum, heavy). hasRole(vacuum, cleaningToolRole). affordsTask(vacuum, cleaningTask).
}).
#pos(e1440@100, {goesIn(vacuum, pantry)}, {}, {
  obj(vacuum). hasPhysicalQuality(vacuum, electronic). hasPhysicalQuality(vacuum, heavy). hasRole(vacuum, cleaningToolRole). affordsTask(vacuum, cleaningTask).
}).
#pos(e1441@100, {goesIn(vanity_case, bedroom)}, {}, {
  obj(vanity_case). hasPhysicalQuality(vanity_case, hasContainer). hasPhysicalQuality(vanity_case, lightweight). hasRole(vanity_case, storageContainerRole). affordsTask(vanity_case, leisureTask).
}).
#pos(e1442@100, {goesIn(vanity_case, closet)}, {}, {
  obj(vanity_case). hasPhysicalQuality(vanity_case, hasContainer). hasPhysicalQuality(vanity_case, lightweight). hasRole(vanity_case, storageContainerRole). affordsTask(vanity_case, leisureTask).
}).
#pos(e1443@100, {goesIn(vanity_case, kitchen)}, {}, {
  obj(vanity_case). hasPhysicalQuality(vanity_case, hasContainer). hasPhysicalQuality(vanity_case, lightweight). hasRole(vanity_case, storageContainerRole). affordsTask(vanity_case, leisureTask).
}).
#pos(e1444@100, {goesIn(varnish, table)}, {}, {
  obj(varnish). hasPhysicalQuality(varnish, liquid). hasPhysicalQuality(varnish, toxic_Hazardous). hasRole(varnish, toolRole). affordsTask(varnish, maintenanceTask).
}).
#pos(e1445@100, {goesIn(vase, shelf)}, {}, {
  obj(vase). hasPhysicalQuality(vase, fragile). hasPhysicalQuality(vase, rigid). hasRole(vase, decorationRole).
}).
#pos(e1446@100, {goesIn(vase, table)}, {}, {
  obj(vase). hasPhysicalQuality(vase, fragile). hasPhysicalQuality(vase, rigid). hasRole(vase, decorationRole).
}).
#pos(e1447@100, {goesIn(vcr, bedroom)}, {}, {
  obj(vcr). hasPhysicalQuality(vcr, electronic). hasPhysicalQuality(vcr, heavy). hasRole(vcr, applianceRole). affordsTask(vcr, leisureTask).
}).
#pos(e1448@100, {goesIn(vcr, living_room)}, {}, {
  obj(vcr). hasPhysicalQuality(vcr, electronic). hasPhysicalQuality(vcr, heavy). hasRole(vcr, applianceRole). affordsTask(vcr, leisureTask).
}).
#pos(e1449@100, {goesIn(vegetables, fridge)}, {}, {
  obj(vegetables). hasPhysicalQuality(vegetables, granular). hasPhysicalQuality(vegetables, perishable). hasRole(vegetables, consumableRole). affordsTask(vegetables, eatingDrinkingTask). affordsTask(vegetables, foodPreparationTask).
}).
#pos(e1450@100, {goesIn(vegetables, garden)}, {}, {
  obj(vegetables). hasPhysicalQuality(vegetables, granular). hasPhysicalQuality(vegetables, perishable). hasRole(vegetables, consumableRole). affordsTask(vegetables, eatingDrinkingTask). affordsTask(vegetables, foodPreparationTask).
}).
#pos(e1451@100, {goesIn(vegetables, kitchen)}, {}, {
  obj(vegetables). hasPhysicalQuality(vegetables, granular). hasPhysicalQuality(vegetables, perishable). hasRole(vegetables, consumableRole). affordsTask(vegetables, eatingDrinkingTask). affordsTask(vegetables, foodPreparationTask).
}).
#pos(e1452@100, {goesIn(vegetables, pantry)}, {}, {
  obj(vegetables). hasPhysicalQuality(vegetables, granular). hasPhysicalQuality(vegetables, perishable). hasRole(vegetables, consumableRole). affordsTask(vegetables, eatingDrinkingTask). affordsTask(vegetables, foodPreparationTask).
}).
#pos(e1453@100, {goesIn(velvet, bedroom)}, {}, {
  obj(velvet). hasPhysicalQuality(velvet, soft_Deformable). hasPhysicalQuality(velvet, washable). hasRole(velvet, clothingRole). affordsTask(velvet, dressingTask).
}).
#pos(e1454@100, {goesIn(velvet, closet)}, {}, {
  obj(velvet). hasPhysicalQuality(velvet, soft_Deformable). hasPhysicalQuality(velvet, washable). hasRole(velvet, clothingRole). affordsTask(velvet, dressingTask).
}).
#pos(e1455@100, {goesIn(vent_brush, storage_room)}, {}, {
  obj(vent_brush). hasPhysicalQuality(vent_brush, lightweight). hasPhysicalQuality(vent_brush, soft_Deformable). hasRole(vent_brush, cleaningToolRole). affordsTask(vent_brush, cleaningTask).
}).
#pos(e1456@100, {goesIn(ventilation_system, bedroom)}, {}, {
  obj(ventilation_system). hasPhysicalQuality(ventilation_system, electronic). hasPhysicalQuality(ventilation_system, heavy). hasRole(ventilation_system, applianceRole). affordsTask(ventilation_system, maintenanceTask).
}).
#pos(e1457@100, {goesIn(vice, garage)}, {}, {
  obj(vice). hasPhysicalQuality(vice, heavy). hasPhysicalQuality(vice, rigid). hasRole(vice, toolRole). affordsTask(vice, maintenanceTask).
}).
#pos(e1458@100, {goesIn(vice, storage_room)}, {}, {
  obj(vice). hasPhysicalQuality(vice, heavy). hasPhysicalQuality(vice, rigid). hasRole(vice, toolRole). affordsTask(vice, maintenanceTask).
}).
#pos(e1459@100, {goesIn(vinyl, bedroom)}, {}, {
  obj(vinyl). hasPhysicalQuality(vinyl, granular). hasRole(vinyl, consumableRole).
}).
#pos(e1460@100, {goesIn(vinyl, closet)}, {}, {
  obj(vinyl). hasPhysicalQuality(vinyl, granular). hasRole(vinyl, consumableRole).
}).
#pos(e1461@100, {goesIn(violin, music_room)}, {}, {
  obj(violin). hasPhysicalQuality(violin, electronic). hasPhysicalQuality(violin, rigid). hasRole(violin, musicalInstrumentRole). affordsTask(violin, leisureTask).
}).
#pos(e1462@100, {goesIn(waffles, fridge)}, {}, {
  obj(waffles). hasPhysicalQuality(waffles, granular). hasPhysicalQuality(waffles, perishable). hasRole(waffles, consumableRole). affordsTask(waffles, eatingDrinkingTask).
}).
#pos(e1463@100, {goesIn(wall, bedroom)}, {}, {
  obj(wall). hasPhysicalQuality(wall, rigid). hasRole(wall, furnitureRole).
}).
#pos(e1464@100, {goesIn(wardrobe, bedroom)}, {}, {
  obj(wardrobe). hasPhysicalQuality(wardrobe, heavy). hasPhysicalQuality(wardrobe, rigid). hasRole(wardrobe, furnitureRole). affordsTask(wardrobe, storageTask).
}).
#pos(e1465@100, {goesIn(wardrobe, closet)}, {}, {
  obj(wardrobe). hasPhysicalQuality(wardrobe, heavy). hasPhysicalQuality(wardrobe, rigid). hasRole(wardrobe, furnitureRole). affordsTask(wardrobe, storageTask).
}).
#pos(e1466@100, {goesIn(wash_cloth, bedroom)}, {}, {
  obj(wash_cloth). hasPhysicalQuality(wash_cloth, soft_Deformable). hasPhysicalQuality(wash_cloth, washable). hasRole(wash_cloth, cleaningToolRole). affordsTask(wash_cloth, hygieneTask).
}).
#pos(e1467@100, {goesIn(wash_cloth, hallway)}, {}, {
  obj(wash_cloth). hasPhysicalQuality(wash_cloth, soft_Deformable). hasPhysicalQuality(wash_cloth, washable). hasRole(wash_cloth, cleaningToolRole). affordsTask(wash_cloth, hygieneTask).
}).
#pos(e1468@100, {goesIn(wash_cloth, kitchen)}, {}, {
  obj(wash_cloth). hasPhysicalQuality(wash_cloth, soft_Deformable). hasPhysicalQuality(wash_cloth, washable). hasRole(wash_cloth, cleaningToolRole). affordsTask(wash_cloth, hygieneTask).
}).
#pos(e1469@100, {goesIn(wash_cloth, sink)}, {}, {
  obj(wash_cloth). hasPhysicalQuality(wash_cloth, soft_Deformable). hasPhysicalQuality(wash_cloth, washable). hasRole(wash_cloth, cleaningToolRole). affordsTask(wash_cloth, hygieneTask).
}).
#pos(e1470@100, {goesIn(washcloth, bedroom)}, {}, {
  obj(washcloth). hasPhysicalQuality(washcloth, soft_Deformable). hasPhysicalQuality(washcloth, washable). hasRole(washcloth, cleaningToolRole). affordsTask(washcloth, hygieneTask).
}).
#pos(e1471@100, {goesIn(washcloth, hallway)}, {}, {
  obj(washcloth). hasPhysicalQuality(washcloth, soft_Deformable). hasPhysicalQuality(washcloth, washable). hasRole(washcloth, cleaningToolRole). affordsTask(washcloth, hygieneTask).
}).
#pos(e1472@100, {goesIn(washcloth, sink)}, {}, {
  obj(washcloth). hasPhysicalQuality(washcloth, soft_Deformable). hasPhysicalQuality(washcloth, washable). hasRole(washcloth, cleaningToolRole). affordsTask(washcloth, hygieneTask).
}).
#pos(e1473@100, {goesIn(washcloth, storage_room)}, {}, {
  obj(washcloth). hasPhysicalQuality(washcloth, soft_Deformable). hasPhysicalQuality(washcloth, washable). hasRole(washcloth, cleaningToolRole). affordsTask(washcloth, hygieneTask).
}).
#pos(e1474@100, {goesIn(washing_machine, bedroom)}, {}, {
  obj(washing_machine). hasPhysicalQuality(washing_machine, electronic). hasPhysicalQuality(washing_machine, heavy). hasRole(washing_machine, applianceRole). affordsTask(washing_machine, cleaningTask).
}).
#pos(e1475@100, {goesIn(washing_machine, storage_room)}, {}, {
  obj(washing_machine). hasPhysicalQuality(washing_machine, electronic). hasPhysicalQuality(washing_machine, heavy). hasRole(washing_machine, applianceRole). affordsTask(washing_machine, cleaningTask).
}).
#pos(e1476@100, {goesIn(water, bathroom)}, {}, {
  obj(water). hasPhysicalQuality(water, liquid). hasRole(water, cleaningToolRole). hasRole(water, consumableRole). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e1477@100, {goesIn(water, bedroom)}, {}, {
  obj(water). hasPhysicalQuality(water, liquid). hasRole(water, cleaningToolRole). hasRole(water, consumableRole). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e1478@100, {goesIn(water, closet)}, {}, {
  obj(water). hasPhysicalQuality(water, liquid). hasRole(water, cleaningToolRole). hasRole(water, consumableRole). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e1479@100, {goesIn(water, dining_room)}, {}, {
  obj(water). hasPhysicalQuality(water, liquid). hasRole(water, cleaningToolRole). hasRole(water, consumableRole). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e1480@100, {goesIn(water, garage)}, {}, {
  obj(water). hasPhysicalQuality(water, liquid). hasRole(water, cleaningToolRole). hasRole(water, consumableRole). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e1481@100, {goesIn(water, garden)}, {}, {
  obj(water). hasPhysicalQuality(water, liquid). hasRole(water, cleaningToolRole). hasRole(water, consumableRole). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e1482@100, {goesIn(water, kitchen)}, {}, {
  obj(water). hasPhysicalQuality(water, liquid). hasRole(water, cleaningToolRole). hasRole(water, consumableRole). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e1483@100, {goesIn(water, library)}, {}, {
  obj(water). hasPhysicalQuality(water, liquid). hasRole(water, cleaningToolRole). hasRole(water, consumableRole). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e1484@100, {goesIn(water, pantry)}, {}, {
  obj(water). hasPhysicalQuality(water, liquid). hasRole(water, cleaningToolRole). hasRole(water, consumableRole). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e1485@100, {goesIn(water, sink)}, {}, {
  obj(water). hasPhysicalQuality(water, liquid). hasRole(water, cleaningToolRole). hasRole(water, consumableRole). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e1486@100, {goesIn(water, storage_room)}, {}, {
  obj(water). hasPhysicalQuality(water, liquid). hasRole(water, cleaningToolRole). hasRole(water, consumableRole). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e1487@100, {goesIn(wax, closet)}, {}, {
  obj(wax). hasPhysicalQuality(wax, liquid). hasPhysicalQuality(wax, perishable). hasRole(wax, consumableRole). affordsTask(wax, eatingDrinkingTask).
}).
#pos(e1488@100, {goesIn(wax, library)}, {}, {
  obj(wax). hasPhysicalQuality(wax, liquid). hasPhysicalQuality(wax, perishable). hasRole(wax, consumableRole). affordsTask(wax, eatingDrinkingTask).
}).
#pos(e1489@100, {goesIn(wax, table)}, {}, {
  obj(wax). hasPhysicalQuality(wax, liquid). hasPhysicalQuality(wax, perishable). hasRole(wax, consumableRole). affordsTask(wax, eatingDrinkingTask).
}).
#pos(e1490@100, {goesIn(weather_vane, garage)}, {}, {
  obj(weather_vane). hasRole(weather_vane, toolRole).
}).
#pos(e1491@100, {goesIn(wheel, bedroom)}, {}, {
  obj(wheel). hasPhysicalQuality(wheel, lightweight). hasPhysicalQuality(wheel, rigid). hasRole(wheel, toolRole). affordsTask(wheel, maintenanceTask).
}).
#pos(e1492@100, {goesIn(wheel, garage)}, {}, {
  obj(wheel). hasPhysicalQuality(wheel, lightweight). hasPhysicalQuality(wheel, rigid). hasRole(wheel, toolRole). affordsTask(wheel, maintenanceTask).
}).
#pos(e1493@100, {goesIn(wheel, storage_room)}, {}, {
  obj(wheel). hasPhysicalQuality(wheel, lightweight). hasPhysicalQuality(wheel, rigid). hasRole(wheel, toolRole). affordsTask(wheel, maintenanceTask).
}).
#pos(e1494@100, {goesIn(whisk, drawer)}, {}, {
  obj(whisk). hasPhysicalQuality(whisk, hasBlade). hasPhysicalQuality(whisk, lightweight). hasPhysicalQuality(whisk, rigid). hasPhysicalQuality(whisk, sharp). hasRole(whisk, utensilRole). affordsTask(whisk, foodPreparationTask).
}).
#pos(e1495@100, {goesIn(whisky, pantry)}, {}, {
  obj(whisky). hasPhysicalQuality(whisky, liquid). hasPhysicalQuality(whisky, perishable). hasRole(whisky, consumableRole). affordsTask(whisky, eatingDrinkingTask).
}).
#pos(e1496@100, {goesIn(window, bedroom)}, {}, {
  obj(window). hasPhysicalQuality(window, lightweight). hasPhysicalQuality(window, rigid). hasRole(window, furnitureRole). affordsTask(window, leisureTask).
}).
#pos(e1497@100, {goesIn(window, garage)}, {}, {
  obj(window). hasPhysicalQuality(window, lightweight). hasPhysicalQuality(window, rigid). hasRole(window, furnitureRole). affordsTask(window, leisureTask).
}).
#pos(e1498@100, {goesIn(window, storage_room)}, {}, {
  obj(window). hasPhysicalQuality(window, lightweight). hasPhysicalQuality(window, rigid). hasRole(window, furnitureRole). affordsTask(window, leisureTask).
}).
#pos(e1499@100, {goesIn(window_curtain, bedroom)}, {}, {
  obj(window_curtain). hasPhysicalQuality(window_curtain, lightweight). hasPhysicalQuality(window_curtain, soft_Deformable). hasRole(window_curtain, decorationRole). affordsTask(window_curtain, leisureTask).
}).
#pos(e1500@100, {goesIn(window_curtain, kitchen)}, {}, {
  obj(window_curtain). hasPhysicalQuality(window_curtain, lightweight). hasPhysicalQuality(window_curtain, soft_Deformable). hasRole(window_curtain, decorationRole). affordsTask(window_curtain, leisureTask).
}).
#pos(e1501@100, {goesIn(window_curtain, living_room)}, {}, {
  obj(window_curtain). hasPhysicalQuality(window_curtain, lightweight). hasPhysicalQuality(window_curtain, soft_Deformable). hasRole(window_curtain, decorationRole). affordsTask(window_curtain, leisureTask).
}).
#pos(e1502@100, {goesIn(wine, bedroom)}, {}, {
  obj(wine). hasPhysicalQuality(wine, liquid). hasPhysicalQuality(wine, perishable). hasRole(wine, consumableRole). affordsTask(wine, eatingDrinkingTask).
}).
#pos(e1503@100, {goesIn(wine, closet)}, {}, {
  obj(wine). hasPhysicalQuality(wine, liquid). hasPhysicalQuality(wine, perishable). hasRole(wine, consumableRole). affordsTask(wine, eatingDrinkingTask).
}).
#pos(e1504@100, {goesIn(wine, storage_room)}, {}, {
  obj(wine). hasPhysicalQuality(wine, liquid). hasPhysicalQuality(wine, perishable). hasRole(wine, consumableRole). affordsTask(wine, eatingDrinkingTask).
}).
#pos(e1505@100, {goesIn(wine_glass, cabinet)}, {}, {
  obj(wine_glass). hasPhysicalQuality(wine_glass, fragile). hasPhysicalQuality(wine_glass, lightweight). hasRole(wine_glass, utensilRole). affordsTask(wine_glass, eatingDrinkingTask).
}).
#pos(e1506@100, {goesIn(wooden_floor, bedroom)}, {}, {
  obj(wooden_floor). hasPhysicalQuality(wooden_floor, fragile). hasPhysicalQuality(wooden_floor, rigid).
}).
#pos(e1507@100, {goesIn(wooden_floor, closet)}, {}, {
  obj(wooden_floor). hasPhysicalQuality(wooden_floor, fragile). hasPhysicalQuality(wooden_floor, rigid).
}).
#pos(e1508@100, {goesIn(wooden_floor, garden)}, {}, {
  obj(wooden_floor). hasPhysicalQuality(wooden_floor, fragile). hasPhysicalQuality(wooden_floor, rigid).
}).
#pos(e1509@100, {goesIn(wool, closet)}, {}, {
  obj(wool). hasPhysicalQuality(wool, soft_Deformable). hasPhysicalQuality(wool, washable). hasRole(wool, clothingRole). affordsTask(wool, dressingTask).
}).
#pos(e1510@100, {goesIn(wrench, garage)}, {}, {
  obj(wrench). hasPhysicalQuality(wrench, heavy). hasPhysicalQuality(wrench, rigid). hasRole(wrench, toolRole). affordsTask(wrench, maintenanceTask).
}).

% --- Negative examples (weight 10) ---
#pos(e1511@10, {}, {goesIn(account_book, cabinet)}, {
  obj(account_book). hasPhysicalQuality(account_book, lightweight). hasRole(account_book, documentRole). affordsTask(account_book, workStudyTask).
}).
#pos(e1512@10, {}, {goesIn(account_book, sink)}, {
  obj(account_book). hasPhysicalQuality(account_book, lightweight). hasRole(account_book, documentRole). affordsTask(account_book, workStudyTask).
}).
#pos(e1513@10, {}, {goesIn(acne_medication, bed)}, {
  obj(acne_medication). hasPhysicalQuality(acne_medication, perishable). hasPhysicalQuality(acne_medication, toxic_Hazardous). hasRole(acne_medication, consumableRole). affordsTask(acne_medication, hygieneTask).
}).
#pos(e1514@10, {}, {goesIn(acne_medication, hallway)}, {
  obj(acne_medication). hasPhysicalQuality(acne_medication, perishable). hasPhysicalQuality(acne_medication, toxic_Hazardous). hasRole(acne_medication, consumableRole). affordsTask(acne_medication, hygieneTask).
}).
#pos(e1515@10, {}, {goesIn(address_label, garage)}, {
  obj(address_label). hasPhysicalQuality(address_label, fragile). hasPhysicalQuality(address_label, lightweight). hasRole(address_label, documentRole).
}).
#pos(e1516@10, {}, {goesIn(address_label, table)}, {
  obj(address_label). hasPhysicalQuality(address_label, fragile). hasPhysicalQuality(address_label, lightweight). hasRole(address_label, documentRole).
}).
#pos(e1517@10, {}, {goesIn(air_conditioner, closet)}, {
  obj(air_conditioner). hasPhysicalQuality(air_conditioner, electronic). hasPhysicalQuality(air_conditioner, heavy). hasPhysicalQuality(air_conditioner, requiresCooling). hasRole(air_conditioner, applianceRole).
}).
#pos(e1518@10, {}, {goesIn(air_conditioner, dining_room)}, {
  obj(air_conditioner). hasPhysicalQuality(air_conditioner, electronic). hasPhysicalQuality(air_conditioner, heavy). hasPhysicalQuality(air_conditioner, requiresCooling). hasRole(air_conditioner, applianceRole).
}).
#pos(e1519@10, {}, {goesIn(album, shelf)}, {
  obj(album). hasPhysicalQuality(album, lightweight). hasRole(album, documentRole). affordsTask(album, leisureTask).
}).
#pos(e1520@10, {}, {goesIn(album, trash)}, {
  obj(album). hasPhysicalQuality(album, lightweight). hasRole(album, documentRole). affordsTask(album, leisureTask).
}).
#pos(e1521@10, {}, {goesIn(alcohol, bedroom)}, {
  obj(alcohol). hasPhysicalQuality(alcohol, flammable). hasRole(alcohol, consumableRole).
}).
#pos(e1522@10, {}, {goesIn(alcohol, shelf)}, {
  obj(alcohol). hasPhysicalQuality(alcohol, flammable). hasRole(alcohol, consumableRole).
}).
#pos(e1523@10, {}, {goesIn(aluminum_foil, bed)}, {
  obj(aluminum_foil). hasPhysicalQuality(aluminum_foil, fragile). hasPhysicalQuality(aluminum_foil, lightweight). hasPhysicalQuality(aluminum_foil, rigid). hasRole(aluminum_foil, cookwareRole). affordsTask(aluminum_foil, foodPreparationTask).
}).
#pos(e1524@10, {}, {goesIn(aluminum_foil, laundry_room)}, {
  obj(aluminum_foil). hasPhysicalQuality(aluminum_foil, fragile). hasPhysicalQuality(aluminum_foil, lightweight). hasPhysicalQuality(aluminum_foil, rigid). hasRole(aluminum_foil, cookwareRole). affordsTask(aluminum_foil, foodPreparationTask).
}).
#pos(e1525@10, {}, {goesIn(apple, bathroom)}, {
  obj(apple). hasPhysicalQuality(apple, fragile). hasPhysicalQuality(apple, perishable). hasRole(apple, consumableRole). affordsTask(apple, eatingDrinkingTask).
}).
#pos(e1526@10, {}, {goesIn(apple, cabinet)}, {
  obj(apple). hasPhysicalQuality(apple, fragile). hasPhysicalQuality(apple, perishable). hasRole(apple, consumableRole). affordsTask(apple, eatingDrinkingTask).
}).
#pos(e1527@10, {}, {goesIn(appointment_book, drawer)}, {
  obj(appointment_book). hasRole(appointment_book, documentRole).
}).
#pos(e1528@10, {}, {goesIn(appointment_book, fridge)}, {
  obj(appointment_book). hasRole(appointment_book, documentRole).
}).
#pos(e1529@10, {}, {goesIn(arch, shelf)}, {
  obj(arch). hasPhysicalQuality(arch, heavy). hasPhysicalQuality(arch, rigid). hasRole(arch, furnitureRole).
}).
#pos(e1530@10, {}, {goesIn(arch, table)}, {
  obj(arch). hasPhysicalQuality(arch, heavy). hasPhysicalQuality(arch, rigid). hasRole(arch, furnitureRole).
}).
#pos(e1531@10, {}, {goesIn(armchair, bathroom)}, {
  obj(armchair). hasPhysicalQuality(armchair, heavy). hasRole(armchair, furnitureRole). affordsTask(armchair, leisureTask).
}).
#pos(e1532@10, {}, {goesIn(armchair, playroom)}, {
  obj(armchair). hasPhysicalQuality(armchair, heavy). hasRole(armchair, furnitureRole). affordsTask(armchair, leisureTask).
}).
#pos(e1533@10, {}, {goesIn(armoire, fridge)}, {
  obj(armoire). hasPhysicalQuality(armoire, heavy). hasPhysicalQuality(armoire, rigid). hasRole(armoire, furnitureRole). affordsTask(armoire, storageTask).
}).
#pos(e1534@10, {}, {goesIn(armoire, table)}, {
  obj(armoire). hasPhysicalQuality(armoire, heavy). hasPhysicalQuality(armoire, rigid). hasRole(armoire, furnitureRole). affordsTask(armoire, storageTask).
}).
#pos(e1535@10, {}, {goesIn(artichoke_hearts, playroom)}, {
  obj(artichoke_hearts). hasPhysicalQuality(artichoke_hearts, perishable). hasRole(artichoke_hearts, consumableRole). affordsTask(artichoke_hearts, eatingDrinkingTask).
}).
#pos(e1536@10, {}, {goesIn(artichoke_hearts, trash)}, {
  obj(artichoke_hearts). hasPhysicalQuality(artichoke_hearts, perishable). hasRole(artichoke_hearts, consumableRole). affordsTask(artichoke_hearts, eatingDrinkingTask).
}).
#pos(e1537@10, {}, {goesIn(artichokes, garage)}, {
  obj(artichokes). hasPhysicalQuality(artichokes, perishable). hasRole(artichokes, consumableRole). affordsTask(artichokes, eatingDrinkingTask).
}).
#pos(e1538@10, {}, {goesIn(artichokes, library)}, {
  obj(artichokes). hasPhysicalQuality(artichokes, perishable). hasRole(artichokes, consumableRole). affordsTask(artichokes, eatingDrinkingTask).
}).
#pos(e1539@10, {}, {goesIn(aspirin, library)}, {
  obj(aspirin). hasPhysicalQuality(aspirin, perishable). hasPhysicalQuality(aspirin, toxic_Hazardous). hasRole(aspirin, consumableRole). affordsTask(aspirin, eatingDrinkingTask).
}).
#pos(e1540@10, {}, {goesIn(aspirin, playroom)}, {
  obj(aspirin). hasPhysicalQuality(aspirin, perishable). hasPhysicalQuality(aspirin, toxic_Hazardous). hasRole(aspirin, consumableRole). affordsTask(aspirin, eatingDrinkingTask).
}).
#pos(e1541@10, {}, {goesIn(attache_case, bathroom)}, {
  obj(attache_case). hasPhysicalQuality(attache_case, lightweight). hasPhysicalQuality(attache_case, soft_Deformable). hasRole(attache_case, storageContainerRole). affordsTask(attache_case, workStudyTask).
}).
#pos(e1542@10, {}, {goesIn(attache_case, home_office)}, {
  obj(attache_case). hasPhysicalQuality(attache_case, lightweight). hasPhysicalQuality(attache_case, soft_Deformable). hasRole(attache_case, storageContainerRole). affordsTask(attache_case, workStudyTask).
}).
#pos(e1543@10, {}, {goesIn(bag, fridge)}, {
  obj(bag). hasPhysicalQuality(bag, hasContainer). hasRole(bag, storageContainerRole). affordsTask(bag, storageTask).
}).
#pos(e1544@10, {}, {goesIn(bag, living_room)}, {
  obj(bag). hasPhysicalQuality(bag, hasContainer). hasRole(bag, storageContainerRole). affordsTask(bag, storageTask).
}).
#pos(e1545@10, {}, {goesIn(baking_oven, garden)}, {
  obj(baking_oven). hasPhysicalQuality(baking_oven, heated). hasRole(baking_oven, cookwareRole). affordsTask(baking_oven, foodPreparationTask).
}).
#pos(e1546@10, {}, {goesIn(baking_oven, home_office)}, {
  obj(baking_oven). hasPhysicalQuality(baking_oven, heated). hasRole(baking_oven, cookwareRole). affordsTask(baking_oven, foodPreparationTask).
}).
#pos(e1547@10, {}, {goesIn(ballpoint_pen, closet)}, {
  obj(ballpoint_pen). hasPhysicalQuality(ballpoint_pen, lightweight). hasPhysicalQuality(ballpoint_pen, rigid). hasRole(ballpoint_pen, toolRole).
}).
#pos(e1548@10, {}, {goesIn(ballpoint_pen, fridge)}, {
  obj(ballpoint_pen). hasPhysicalQuality(ballpoint_pen, lightweight). hasPhysicalQuality(ballpoint_pen, rigid). hasRole(ballpoint_pen, toolRole).
}).
#pos(e1549@10, {}, {goesIn(banana, cabinet)}, {
  obj(banana). hasPhysicalQuality(banana, perishable). hasRole(banana, consumableRole). affordsTask(banana, eatingDrinkingTask).
}).
#pos(e1550@10, {}, {goesIn(banana, hallway)}, {
  obj(banana). hasPhysicalQuality(banana, perishable). hasRole(banana, consumableRole). affordsTask(banana, eatingDrinkingTask).
}).
#pos(e1551@10, {}, {goesIn(bandages, cabinet)}, {
  obj(bandages). hasPhysicalQuality(bandages, lightweight). hasPhysicalQuality(bandages, washable). hasRole(bandages, safetyEquipmentRole). affordsTask(bandages, hygieneTask).
}).
#pos(e1552@10, {}, {goesIn(bandages, laundry_room)}, {
  obj(bandages). hasPhysicalQuality(bandages, lightweight). hasPhysicalQuality(bandages, washable). hasRole(bandages, safetyEquipmentRole). affordsTask(bandages, hygieneTask).
}).
#pos(e1553@10, {}, {goesIn(bar_stool, cabinet)}, {
  obj(bar_stool). hasPhysicalQuality(bar_stool, heavy). hasPhysicalQuality(bar_stool, rigid). hasRole(bar_stool, furnitureRole). affordsTask(bar_stool, leisureTask).
}).
#pos(e1554@10, {}, {goesIn(bar_stool, laundry_room)}, {
  obj(bar_stool). hasPhysicalQuality(bar_stool, heavy). hasPhysicalQuality(bar_stool, rigid). hasRole(bar_stool, furnitureRole). affordsTask(bar_stool, leisureTask).
}).
#pos(e1555@10, {}, {goesIn(barbecue, kitchen)}, {
  obj(barbecue). hasPhysicalQuality(barbecue, heated). hasRole(barbecue, cookwareRole). hasRole(barbecue, toolRole). affordsTask(barbecue, foodPreparationTask).
}).
#pos(e1556@10, {}, {goesIn(barbecue, sink)}, {
  obj(barbecue). hasPhysicalQuality(barbecue, heated). hasRole(barbecue, cookwareRole). hasRole(barbecue, toolRole). affordsTask(barbecue, foodPreparationTask).
}).
#pos(e1557@10, {}, {goesIn(basket, bed)}, {
  obj(basket). hasPhysicalQuality(basket, lightweight). hasPhysicalQuality(basket, rigid). hasRole(basket, storageContainerRole). affordsTask(basket, storageTask).
}).
#pos(e1558@10, {}, {goesIn(basket, garage)}, {
  obj(basket). hasPhysicalQuality(basket, lightweight). hasPhysicalQuality(basket, rigid). hasRole(basket, storageContainerRole). affordsTask(basket, storageTask).
}).
#pos(e1559@10, {}, {goesIn(basket_with_handle, living_room)}, {
  obj(basket_with_handle). hasPhysicalQuality(basket_with_handle, hasContainer). hasPhysicalQuality(basket_with_handle, lightweight). hasRole(basket_with_handle, storageContainerRole). affordsTask(basket_with_handle, storageTask).
}).
#pos(e1560@10, {}, {goesIn(basket_with_handle, playroom)}, {
  obj(basket_with_handle). hasPhysicalQuality(basket_with_handle, hasContainer). hasPhysicalQuality(basket_with_handle, lightweight). hasRole(basket_with_handle, storageContainerRole). affordsTask(basket_with_handle, storageTask).
}).
#pos(e1561@10, {}, {goesIn(bath, closet)}, {
  obj(bath). hasPhysicalQuality(bath, soft_Deformable). hasPhysicalQuality(bath, washable). hasRole(bath, cleaningToolRole). affordsTask(bath, hygieneTask).
}).
#pos(e1562@10, {}, {goesIn(bath, laundry_room)}, {
  obj(bath). hasPhysicalQuality(bath, soft_Deformable). hasPhysicalQuality(bath, washable). hasRole(bath, cleaningToolRole). affordsTask(bath, hygieneTask).
}).
#pos(e1563@10, {}, {goesIn(bath_shower, closet)}, {
  obj(bath_shower). hasPhysicalQuality(bath_shower, electronic). hasPhysicalQuality(bath_shower, heavy). hasRole(bath_shower, cleaningToolRole). affordsTask(bath_shower, hygieneTask).
}).
#pos(e1564@10, {}, {goesIn(bath_shower, shelf)}, {
  obj(bath_shower). hasPhysicalQuality(bath_shower, electronic). hasPhysicalQuality(bath_shower, heavy). hasRole(bath_shower, cleaningToolRole). affordsTask(bath_shower, hygieneTask).
}).
#pos(e1565@10, {}, {goesIn(bathroom, hallway)}, {
  obj(bathroom). hasPhysicalQuality(bathroom, heavy). hasRole(bathroom, furnitureRole).
}).
#pos(e1566@10, {}, {goesIn(bathroom, table)}, {
  obj(bathroom). hasPhysicalQuality(bathroom, heavy). hasRole(bathroom, furnitureRole).
}).
#pos(e1567@10, {}, {goesIn(battery_charger, kitchen)}, {
  obj(battery_charger). hasPhysicalQuality(battery_charger, electronic). hasPhysicalQuality(battery_charger, heavy). hasRole(battery_charger, toolRole). affordsTask(battery_charger, maintenanceTask).
}).
#pos(e1568@10, {}, {goesIn(battery_charger, sink)}, {
  obj(battery_charger). hasPhysicalQuality(battery_charger, electronic). hasPhysicalQuality(battery_charger, heavy). hasRole(battery_charger, toolRole). affordsTask(battery_charger, maintenanceTask).
}).
#pos(e1569@10, {}, {goesIn(bay_window, fridge)}, {
  obj(bay_window). hasPhysicalQuality(bay_window, heavy). hasPhysicalQuality(bay_window, rigid). hasRole(bay_window, furnitureRole).
}).
#pos(e1570@10, {}, {goesIn(bay_window, sink)}, {
  obj(bay_window). hasPhysicalQuality(bay_window, heavy). hasPhysicalQuality(bay_window, rigid). hasRole(bay_window, furnitureRole).
}).
#pos(e1571@10, {}, {goesIn(beam, bed)}, {
  obj(beam). hasPhysicalQuality(beam, heavy). hasPhysicalQuality(beam, rigid). hasRole(beam, toolRole). affordsTask(beam, maintenanceTask).
}).
#pos(e1572@10, {}, {goesIn(beam, cabinet)}, {
  obj(beam). hasPhysicalQuality(beam, heavy). hasPhysicalQuality(beam, rigid). hasRole(beam, toolRole). affordsTask(beam, maintenanceTask).
}).
#pos(e1573@10, {}, {goesIn(bean_bag_chair, garden)}, {
  obj(bean_bag_chair). hasPhysicalQuality(bean_bag_chair, lightweight). hasPhysicalQuality(bean_bag_chair, soft_Deformable). hasRole(bean_bag_chair, furnitureRole). affordsTask(bean_bag_chair, leisureTask).
}).
#pos(e1574@10, {}, {goesIn(bean_bag_chair, home_office)}, {
  obj(bean_bag_chair). hasPhysicalQuality(bean_bag_chair, lightweight). hasPhysicalQuality(bean_bag_chair, soft_Deformable). hasRole(bean_bag_chair, furnitureRole). affordsTask(bean_bag_chair, leisureTask).
}).
#pos(e1575@10, {}, {goesIn(beanbag, cabinet)}, {
  obj(beanbag). hasPhysicalQuality(beanbag, lightweight). hasPhysicalQuality(beanbag, soft_Deformable). hasRole(beanbag, furnitureRole). affordsTask(beanbag, leisureTask).
}).
#pos(e1576@10, {}, {goesIn(beanbag, garage)}, {
  obj(beanbag). hasPhysicalQuality(beanbag, lightweight). hasPhysicalQuality(beanbag, soft_Deformable). hasRole(beanbag, furnitureRole). affordsTask(beanbag, leisureTask).
}).
#pos(e1577@10, {}, {goesIn(bed, dining_room)}, {
  obj(bed). hasPhysicalQuality(bed, heavy). hasPhysicalQuality(bed, soft_Deformable). hasRole(bed, furnitureRole). affordsTask(bed, sleepingTask).
}).
#pos(e1578@10, {}, {goesIn(bed, library)}, {
  obj(bed). hasPhysicalQuality(bed, heavy). hasPhysicalQuality(bed, soft_Deformable). hasRole(bed, furnitureRole). affordsTask(bed, sleepingTask).
}).
#pos(e1579@10, {}, {goesIn(bed_sheet, home_office)}, {
  obj(bed_sheet). hasPhysicalQuality(bed_sheet, soft_Deformable). hasPhysicalQuality(bed_sheet, washable). hasRole(bed_sheet, beddingRole). affordsTask(bed_sheet, sleepingTask).
}).
#pos(e1580@10, {}, {goesIn(bed_sheet, pantry)}, {
  obj(bed_sheet). hasPhysicalQuality(bed_sheet, soft_Deformable). hasPhysicalQuality(bed_sheet, washable). hasRole(bed_sheet, beddingRole). affordsTask(bed_sheet, sleepingTask).
}).
#pos(e1581@10, {}, {goesIn(bedroom, kitchen)}, {
  obj(bedroom). hasRole(bedroom, furnitureRole). affordsTask(bedroom, sleepingTask).
}).
#pos(e1582@10, {}, {goesIn(bedroom, storage_room)}, {
  obj(bedroom). hasRole(bedroom, furnitureRole). affordsTask(bedroom, sleepingTask).
}).
#pos(e1583@10, {}, {goesIn(beer_mug, dining_room)}, {
  obj(beer_mug). hasPhysicalQuality(beer_mug, heavy). hasPhysicalQuality(beer_mug, liquid). hasRole(beer_mug, utensilRole). affordsTask(beer_mug, eatingDrinkingTask).
}).
#pos(e1584@10, {}, {goesIn(beer_mug, kitchen)}, {
  obj(beer_mug). hasPhysicalQuality(beer_mug, heavy). hasPhysicalQuality(beer_mug, liquid). hasRole(beer_mug, utensilRole). affordsTask(beer_mug, eatingDrinkingTask).
}).
#pos(e1585@10, {}, {goesIn(beets, drawer)}, {
  obj(beets). hasPhysicalQuality(beets, perishable). hasRole(beets, consumableRole). affordsTask(beets, eatingDrinkingTask).
}).
#pos(e1586@10, {}, {goesIn(beets, home_office)}, {
  obj(beets). hasPhysicalQuality(beets, perishable). hasRole(beets, consumableRole). affordsTask(beets, eatingDrinkingTask).
}).
#pos(e1587@10, {}, {goesIn(bell, garden)}, {
  obj(bell). hasPhysicalQuality(bell, lightweight). hasPhysicalQuality(bell, rigid). hasRole(bell, toolRole). affordsTask(bell, maintenanceTask).
}).
#pos(e1588@10, {}, {goesIn(bell, table)}, {
  obj(bell). hasPhysicalQuality(bell, lightweight). hasPhysicalQuality(bell, rigid). hasRole(bell, toolRole). affordsTask(bell, maintenanceTask).
}).
#pos(e1589@10, {}, {goesIn(belt, table)}, {
  obj(belt). hasPhysicalQuality(belt, lightweight). hasPhysicalQuality(belt, soft_Deformable). hasRole(belt, clothingRole). affordsTask(belt, dressingTask).
}).
#pos(e1590@10, {}, {goesIn(belt, trash)}, {
  obj(belt). hasPhysicalQuality(belt, lightweight). hasPhysicalQuality(belt, soft_Deformable). hasRole(belt, clothingRole). affordsTask(belt, dressingTask).
}).
#pos(e1591@10, {}, {goesIn(bench, bedroom)}, {
  obj(bench). hasPhysicalQuality(bench, heavy). hasPhysicalQuality(bench, rigid). hasRole(bench, furnitureRole). affordsTask(bench, storageTask).
}).
#pos(e1592@10, {}, {goesIn(bench, sink)}, {
  obj(bench). hasPhysicalQuality(bench, heavy). hasPhysicalQuality(bench, rigid). hasRole(bench, furnitureRole). affordsTask(bench, storageTask).
}).
#pos(e1593@10, {}, {goesIn(beverage, drawer)}, {
  obj(beverage). hasPhysicalQuality(beverage, liquid). hasRole(beverage, consumableRole). affordsTask(beverage, eatingDrinkingTask).
}).
#pos(e1594@10, {}, {goesIn(beverage, storage_room)}, {
  obj(beverage). hasPhysicalQuality(beverage, liquid). hasRole(beverage, consumableRole). affordsTask(beverage, eatingDrinkingTask).
}).
#pos(e1595@10, {}, {goesIn(bicycle_storage_area, fridge)}, {
  obj(bicycle_storage_area). hasRole(bicycle_storage_area, storageContainerRole). affordsTask(bicycle_storage_area, storageTask).
}).
#pos(e1596@10, {}, {goesIn(bicycle_storage_area, playroom)}, {
  obj(bicycle_storage_area). hasRole(bicycle_storage_area, storageContainerRole). affordsTask(bicycle_storage_area, storageTask).
}).
#pos(e1597@10, {}, {goesIn(bicycles, dining_room)}, {
  obj(bicycles). hasPhysicalQuality(bicycles, heavy). hasPhysicalQuality(bicycles, rigid).
}).
#pos(e1598@10, {}, {goesIn(bicycles, living_room)}, {
  obj(bicycles). hasPhysicalQuality(bicycles, heavy). hasPhysicalQuality(bicycles, rigid).
}).
#pos(e1599@10, {}, {goesIn(bike, garden)}, {
  obj(bike). hasPhysicalQuality(bike, heavy). hasPhysicalQuality(bike, rigid). hasRole(bike, furnitureRole). affordsTask(bike, leisureTask).
}).
#pos(e1600@10, {}, {goesIn(bike, laundry_room)}, {
  obj(bike). hasPhysicalQuality(bike, heavy). hasPhysicalQuality(bike, rigid). hasRole(bike, furnitureRole). affordsTask(bike, leisureTask).
}).
#pos(e1601@10, {}, {goesIn(bill_file, storage_room)}, {
  obj(bill_file). hasPhysicalQuality(bill_file, lightweight). hasPhysicalQuality(bill_file, washable). hasRole(bill_file, storageContainerRole). affordsTask(bill_file, storageTask).
}).
#pos(e1602@10, {}, {goesIn(bill_file, trash)}, {
  obj(bill_file). hasPhysicalQuality(bill_file, lightweight). hasPhysicalQuality(bill_file, washable). hasRole(bill_file, storageContainerRole). affordsTask(bill_file, storageTask).
}).
#pos(e1603@10, {}, {goesIn(binder, fridge)}, {
  obj(binder). hasPhysicalQuality(binder, lightweight). hasPhysicalQuality(binder, rigid). hasRole(binder, storageContainerRole). affordsTask(binder, storageTask).
}).
#pos(e1604@10, {}, {goesIn(binder, sink)}, {
  obj(binder). hasPhysicalQuality(binder, lightweight). hasPhysicalQuality(binder, rigid). hasRole(binder, storageContainerRole). affordsTask(binder, storageTask).
}).
#pos(e1605@10, {}, {goesIn(bird, kitchen)}, {
  obj(bird). hasPhysicalQuality(bird, fragile). hasPhysicalQuality(bird, lightweight). hasRole(bird, entertainmentRole). affordsTask(bird, leisureTask).
}).
#pos(e1606@10, {}, {goesIn(bird, trash)}, {
  obj(bird). hasPhysicalQuality(bird, fragile). hasPhysicalQuality(bird, lightweight). hasRole(bird, entertainmentRole). affordsTask(bird, leisureTask).
}).
#pos(e1607@10, {}, {goesIn(birds, bed)}, {
  obj(birds). hasPhysicalQuality(birds, lightweight). hasPhysicalQuality(birds, soft_Deformable). hasRole(birds, entertainmentRole). affordsTask(birds, leisureTask).
}).
#pos(e1608@10, {}, {goesIn(birds, fridge)}, {
  obj(birds). hasPhysicalQuality(birds, lightweight). hasPhysicalQuality(birds, soft_Deformable). hasRole(birds, entertainmentRole). affordsTask(birds, leisureTask).
}).
#pos(e1609@10, {}, {goesIn(birth_control_pill, bed)}, {
  obj(birth_control_pill). hasPhysicalQuality(birth_control_pill, liquid). hasPhysicalQuality(birth_control_pill, perishable). hasRole(birth_control_pill, consumableRole). affordsTask(birth_control_pill, eatingDrinkingTask).
}).
#pos(e1610@10, {}, {goesIn(birth_control_pill, home_office)}, {
  obj(birth_control_pill). hasPhysicalQuality(birth_control_pill, liquid). hasPhysicalQuality(birth_control_pill, perishable). hasRole(birth_control_pill, consumableRole). affordsTask(birth_control_pill, eatingDrinkingTask).
}).
#pos(e1611@10, {}, {goesIn(blanket, home_office)}, {
  obj(blanket). hasPhysicalQuality(blanket, soft_Deformable). hasPhysicalQuality(blanket, washable). hasRole(blanket, beddingRole). affordsTask(blanket, sleepingTask).
}).
#pos(e1612@10, {}, {goesIn(blanket, living_room)}, {
  obj(blanket). hasPhysicalQuality(blanket, soft_Deformable). hasPhysicalQuality(blanket, washable). hasRole(blanket, beddingRole). affordsTask(blanket, sleepingTask).
}).
#pos(e1613@10, {}, {goesIn(blowdryer, cabinet)}, {
  obj(blowdryer). hasPhysicalQuality(blowdryer, electronic). hasPhysicalQuality(blowdryer, heavy). hasRole(blowdryer, applianceRole). affordsTask(blowdryer, leisureTask).
}).
#pos(e1614@10, {}, {goesIn(blowdryer, garage)}, {
  obj(blowdryer). hasPhysicalQuality(blowdryer, electronic). hasPhysicalQuality(blowdryer, heavy). hasRole(blowdryer, applianceRole). affordsTask(blowdryer, leisureTask).
}).
#pos(e1615@10, {}, {goesIn(board_game, kitchen)}, {
  obj(board_game). hasRole(board_game, entertainmentRole). affordsTask(board_game, leisureTask).
}).
#pos(e1616@10, {}, {goesIn(board_game, table)}, {
  obj(board_game). hasRole(board_game, entertainmentRole). affordsTask(board_game, leisureTask).
}).
#pos(e1617@10, {}, {goesIn(bone, garage)}, {
  obj(bone). hasPhysicalQuality(bone, fragile). hasPhysicalQuality(bone, heavy). hasRole(bone, consumableRole). affordsTask(bone, foodPreparationTask).
}).
#pos(e1618@10, {}, {goesIn(bone, table)}, {
  obj(bone). hasPhysicalQuality(bone, fragile). hasPhysicalQuality(bone, heavy). hasRole(bone, consumableRole). affordsTask(bone, foodPreparationTask).
}).
#pos(e1619@10, {}, {goesIn(bones, laundry_room)}, {
  obj(bones). hasPhysicalQuality(bones, fragile). hasPhysicalQuality(bones, rigid). hasRole(bones, toolRole).
}).
#pos(e1620@10, {}, {goesIn(bones, storage_room)}, {
  obj(bones). hasPhysicalQuality(bones, fragile). hasPhysicalQuality(bones, rigid). hasRole(bones, toolRole).
}).
#pos(e1621@10, {}, {goesIn(book, dining_room)}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask).
}).
#pos(e1622@10, {}, {goesIn(book, laundry_room)}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask).
}).
#pos(e1623@10, {}, {goesIn(book_end, drawer)}, {
  obj(book_end). hasPhysicalQuality(book_end, heavy). hasPhysicalQuality(book_end, rigid). hasRole(book_end, furnitureRole). affordsTask(book_end, storageTask).
}).
#pos(e1624@10, {}, {goesIn(book_end, hallway)}, {
  obj(book_end). hasPhysicalQuality(book_end, heavy). hasPhysicalQuality(book_end, rigid). hasRole(book_end, furnitureRole). affordsTask(book_end, storageTask).
}).
#pos(e1625@10, {}, {goesIn(bookcase, garage)}, {
  obj(bookcase). hasPhysicalQuality(bookcase, heavy). hasPhysicalQuality(bookcase, rigid). hasRole(bookcase, storageContainerRole). affordsTask(bookcase, storageTask).
}).
#pos(e1626@10, {}, {goesIn(bookcase, sink)}, {
  obj(bookcase). hasPhysicalQuality(bookcase, heavy). hasPhysicalQuality(bookcase, rigid). hasRole(bookcase, storageContainerRole). affordsTask(bookcase, storageTask).
}).
#pos(e1627@10, {}, {goesIn(bookend, garage)}, {
  obj(bookend). hasPhysicalQuality(bookend, heavy). hasPhysicalQuality(bookend, rigid). hasRole(bookend, furnitureRole). affordsTask(bookend, storageTask).
}).
#pos(e1628@10, {}, {goesIn(bookend, playroom)}, {
  obj(bookend). hasPhysicalQuality(bookend, heavy). hasPhysicalQuality(bookend, rigid). hasRole(bookend, furnitureRole). affordsTask(bookend, storageTask).
}).
#pos(e1629@10, {}, {goesIn(books, library)}, {
  obj(books). hasPhysicalQuality(books, lightweight). hasPhysicalQuality(books, washable). hasRole(books, documentRole). affordsTask(books, workStudyTask).
}).
#pos(e1630@10, {}, {goesIn(books, sink)}, {
  obj(books). hasPhysicalQuality(books, lightweight). hasPhysicalQuality(books, washable). hasRole(books, documentRole). affordsTask(books, workStudyTask).
}).
#pos(e1631@10, {}, {goesIn(bookshelf, laundry_room)}, {
  obj(bookshelf). hasPhysicalQuality(bookshelf, heavy). hasPhysicalQuality(bookshelf, rigid). hasRole(bookshelf, storageContainerRole). affordsTask(bookshelf, storageTask).
}).
#pos(e1632@10, {}, {goesIn(bookshelf, sink)}, {
  obj(bookshelf). hasPhysicalQuality(bookshelf, heavy). hasPhysicalQuality(bookshelf, rigid). hasRole(bookshelf, storageContainerRole). affordsTask(bookshelf, storageTask).
}).
#pos(e1633@10, {}, {goesIn(boots, garden)}, {
  obj(boots). hasPhysicalQuality(boots, heavy). hasPhysicalQuality(boots, soft_Deformable). hasRole(boots, clothingRole). affordsTask(boots, dressingTask).
}).
#pos(e1634@10, {}, {goesIn(boots, laundry_room)}, {
  obj(boots). hasPhysicalQuality(boots, heavy). hasPhysicalQuality(boots, soft_Deformable). hasRole(boots, clothingRole). affordsTask(boots, dressingTask).
}).
#pos(e1635@10, {}, {goesIn(bottle, dining_room)}, {
  obj(bottle). hasPhysicalQuality(bottle, hasContainer). hasRole(bottle, storageContainerRole). affordsTask(bottle, eatingDrinkingTask).
}).
#pos(e1636@10, {}, {goesIn(bottle, playroom)}, {
  obj(bottle). hasPhysicalQuality(bottle, hasContainer). hasRole(bottle, storageContainerRole). affordsTask(bottle, eatingDrinkingTask).
}).
#pos(e1637@10, {}, {goesIn(bottled_water, bedroom)}, {
  obj(bottled_water). hasPhysicalQuality(bottled_water, liquid). hasRole(bottled_water, consumableRole). affordsTask(bottled_water, eatingDrinkingTask).
}).
#pos(e1638@10, {}, {goesIn(bottled_water, music_room)}, {
  obj(bottled_water). hasPhysicalQuality(bottled_water, liquid). hasRole(bottled_water, consumableRole). affordsTask(bottled_water, eatingDrinkingTask).
}).
#pos(e1639@10, {}, {goesIn(bowl, bed)}, {
  obj(bowl). hasPhysicalQuality(bowl, hasContainer). hasRole(bowl, storageContainerRole). affordsTask(bowl, eatingDrinkingTask). affordsTask(bowl, foodPreparationTask).
}).
#pos(e1640@10, {}, {goesIn(bowl, closet)}, {
  obj(bowl). hasPhysicalQuality(bowl, hasContainer). hasRole(bowl, storageContainerRole). affordsTask(bowl, eatingDrinkingTask). affordsTask(bowl, foodPreparationTask).
}).
#pos(e1641@10, {}, {goesIn(box, drawer)}, {
  obj(box). hasPhysicalQuality(box, heavy). hasPhysicalQuality(box, rigid). hasRole(box, storageContainerRole). affordsTask(box, storageTask).
}).
#pos(e1642@10, {}, {goesIn(box, fridge)}, {
  obj(box). hasPhysicalQuality(box, heavy). hasPhysicalQuality(box, rigid). hasRole(box, storageContainerRole). affordsTask(box, storageTask).
}).
#pos(e1643@10, {}, {goesIn(boxes, cabinet)}, {
  obj(boxes). hasPhysicalQuality(boxes, heavy). hasPhysicalQuality(boxes, rigid). hasRole(boxes, storageContainerRole). affordsTask(boxes, storageTask).
}).
#pos(e1644@10, {}, {goesIn(boxes, music_room)}, {
  obj(boxes). hasPhysicalQuality(boxes, heavy). hasPhysicalQuality(boxes, rigid). hasRole(boxes, storageContainerRole). affordsTask(boxes, storageTask).
}).
#pos(e1645@10, {}, {goesIn(bra, laundry_room)}, {
  obj(bra). hasPhysicalQuality(bra, lightweight). hasPhysicalQuality(bra, soft_Deformable). hasRole(bra, clothingRole). affordsTask(bra, dressingTask).
}).
#pos(e1646@10, {}, {goesIn(bra, sink)}, {
  obj(bra). hasPhysicalQuality(bra, lightweight). hasPhysicalQuality(bra, soft_Deformable). hasRole(bra, clothingRole). affordsTask(bra, dressingTask).
}).
#pos(e1647@10, {}, {goesIn(bread, music_room)}, {
  obj(bread). hasPhysicalQuality(bread, granular). hasPhysicalQuality(bread, perishable). hasRole(bread, consumableRole). affordsTask(bread, eatingDrinkingTask). affordsTask(bread, foodPreparationTask).
}).
#pos(e1648@10, {}, {goesIn(bread, shelf)}, {
  obj(bread). hasPhysicalQuality(bread, granular). hasPhysicalQuality(bread, perishable). hasRole(bread, consumableRole). affordsTask(bread, eatingDrinkingTask). affordsTask(bread, foodPreparationTask).
}).
#pos(e1649@10, {}, {goesIn(broccoli, garage)}, {
  obj(broccoli). hasPhysicalQuality(broccoli, granular). hasPhysicalQuality(broccoli, perishable). hasRole(broccoli, consumableRole). affordsTask(broccoli, eatingDrinkingTask).
}).
#pos(e1650@10, {}, {goesIn(broccoli, playroom)}, {
  obj(broccoli). hasPhysicalQuality(broccoli, granular). hasPhysicalQuality(broccoli, perishable). hasRole(broccoli, consumableRole). affordsTask(broccoli, eatingDrinkingTask).
}).
#pos(e1651@10, {}, {goesIn(broken_glass, bathroom)}, {
  obj(broken_glass). hasPhysicalQuality(broken_glass, fragile). hasPhysicalQuality(broken_glass, sharp). hasRole(broken_glass, wasteRole).
}).
#pos(e1652@10, {}, {goesIn(broken_glass, storage_room)}, {
  obj(broken_glass). hasPhysicalQuality(broken_glass, fragile). hasPhysicalQuality(broken_glass, sharp). hasRole(broken_glass, wasteRole).
}).
#pos(e1653@10, {}, {goesIn(broom, dining_room)}, {
  obj(broom). hasPhysicalQuality(broom, fragile). hasPhysicalQuality(broom, lightweight). hasRole(broom, cleaningToolRole). affordsTask(broom, cleaningTask).
}).
#pos(e1654@10, {}, {goesIn(broom, sink)}, {
  obj(broom). hasPhysicalQuality(broom, fragile). hasPhysicalQuality(broom, lightweight). hasRole(broom, cleaningToolRole). affordsTask(broom, cleaningTask).
}).
#pos(e1655@10, {}, {goesIn(bucket, garden)}, {
  obj(bucket). hasPhysicalQuality(bucket, hasContainer). hasRole(bucket, storageContainerRole). affordsTask(bucket, storageTask).
}).
#pos(e1656@10, {}, {goesIn(bucket, home_office)}, {
  obj(bucket). hasPhysicalQuality(bucket, hasContainer). hasRole(bucket, storageContainerRole). affordsTask(bucket, storageTask).
}).
#pos(e1657@10, {}, {goesIn(bulb, closet)}, {
  obj(bulb). hasPhysicalQuality(bulb, electronic). hasRole(bulb, applianceRole). affordsTask(bulb, leisureTask).
}).
#pos(e1658@10, {}, {goesIn(bulb, hallway)}, {
  obj(bulb). hasPhysicalQuality(bulb, electronic). hasRole(bulb, applianceRole). affordsTask(bulb, leisureTask).
}).
#pos(e1659@10, {}, {goesIn(bullet, drawer)}, {
  obj(bullet). hasPhysicalQuality(bullet, sharp). hasRole(bullet, toolRole). affordsTask(bullet, maintenanceTask).
}).
#pos(e1660@10, {}, {goesIn(bullet, music_room)}, {
  obj(bullet). hasPhysicalQuality(bullet, sharp). hasRole(bullet, toolRole). affordsTask(bullet, maintenanceTask).
}).
#pos(e1661@10, {}, {goesIn(bungalow, bathroom)}, {
  obj(bungalow). hasRole(bungalow, furnitureRole).
}).
#pos(e1662@10, {}, {goesIn(bungalow, living_room)}, {
  obj(bungalow). hasRole(bungalow, furnitureRole).
}).
#pos(e1663@10, {}, {goesIn(bureau, garden)}, {
  obj(bureau). hasPhysicalQuality(bureau, heavy). hasPhysicalQuality(bureau, rigid). hasRole(bureau, furnitureRole). affordsTask(bureau, storageTask).
}).
#pos(e1664@10, {}, {goesIn(bureau, playroom)}, {
  obj(bureau). hasPhysicalQuality(bureau, heavy). hasPhysicalQuality(bureau, rigid). hasRole(bureau, furnitureRole). affordsTask(bureau, storageTask).
}).
#pos(e1665@10, {}, {goesIn(bus_seat, dining_room)}, {
  obj(bus_seat). hasPhysicalQuality(bus_seat, lightweight). hasPhysicalQuality(bus_seat, soft_Deformable). hasRole(bus_seat, furnitureRole). affordsTask(bus_seat, leisureTask).
}).
#pos(e1666@10, {}, {goesIn(bus_seat, pantry)}, {
  obj(bus_seat). hasPhysicalQuality(bus_seat, lightweight). hasPhysicalQuality(bus_seat, soft_Deformable). hasRole(bus_seat, furnitureRole). affordsTask(bus_seat, leisureTask).
}).
#pos(e1667@10, {}, {goesIn(butter, cabinet)}, {
  obj(butter). hasPhysicalQuality(butter, granular). hasPhysicalQuality(butter, perishable). hasRole(butter, consumableRole). affordsTask(butter, eatingDrinkingTask).
}).
#pos(e1668@10, {}, {goesIn(butter, storage_room)}, {
  obj(butter). hasPhysicalQuality(butter, granular). hasPhysicalQuality(butter, perishable). hasRole(butter, consumableRole). affordsTask(butter, eatingDrinkingTask).
}).
#pos(e1669@10, {}, {goesIn(buttons, home_office)}, {
  obj(buttons). hasPhysicalQuality(buttons, lightweight). hasPhysicalQuality(buttons, rigid). hasRole(buttons, utensilRole).
}).
#pos(e1670@10, {}, {goesIn(buttons, table)}, {
  obj(buttons). hasPhysicalQuality(buttons, lightweight). hasPhysicalQuality(buttons, rigid). hasRole(buttons, utensilRole).
}).
#pos(e1671@10, {}, {goesIn(cabbage, drawer)}, {
  obj(cabbage). hasPhysicalQuality(cabbage, granular). hasPhysicalQuality(cabbage, perishable). hasRole(cabbage, consumableRole). affordsTask(cabbage, eatingDrinkingTask).
}).
#pos(e1672@10, {}, {goesIn(cabbage, storage_room)}, {
  obj(cabbage). hasPhysicalQuality(cabbage, granular). hasPhysicalQuality(cabbage, perishable). hasRole(cabbage, consumableRole). affordsTask(cabbage, eatingDrinkingTask).
}).
#pos(e1673@10, {}, {goesIn(cabinets, closet)}, {
  obj(cabinets). hasPhysicalQuality(cabinets, heavy). hasPhysicalQuality(cabinets, rigid). hasRole(cabinets, storageContainerRole). affordsTask(cabinets, storageTask).
}).
#pos(e1674@10, {}, {goesIn(cabinets, home_office)}, {
  obj(cabinets). hasPhysicalQuality(cabinets, heavy). hasPhysicalQuality(cabinets, rigid). hasRole(cabinets, storageContainerRole). affordsTask(cabinets, storageTask).
}).
#pos(e1675@10, {}, {goesIn(cable, drawer)}, {
  obj(cable). hasPhysicalQuality(cable, electronic). hasRole(cable, toolRole). affordsTask(cable, maintenanceTask).
}).
#pos(e1676@10, {}, {goesIn(cable, sink)}, {
  obj(cable). hasPhysicalQuality(cable, electronic). hasRole(cable, toolRole). affordsTask(cable, maintenanceTask).
}).
#pos(e1677@10, {}, {goesIn(caffeine, bathroom)}, {
  obj(caffeine). hasPhysicalQuality(caffeine, perishable). hasRole(caffeine, consumableRole). affordsTask(caffeine, eatingDrinkingTask).
}).
#pos(e1678@10, {}, {goesIn(caffeine, pantry)}, {
  obj(caffeine). hasPhysicalQuality(caffeine, perishable). hasRole(caffeine, consumableRole). affordsTask(caffeine, eatingDrinkingTask).
}).
#pos(e1679@10, {}, {goesIn(cake, home_office)}, {
  obj(cake). hasPhysicalQuality(cake, granular). hasPhysicalQuality(cake, perishable). hasRole(cake, consumableRole). affordsTask(cake, eatingDrinkingTask).
}).
#pos(e1680@10, {}, {goesIn(cake, storage_room)}, {
  obj(cake). hasPhysicalQuality(cake, granular). hasPhysicalQuality(cake, perishable). hasRole(cake, consumableRole). affordsTask(cake, eatingDrinkingTask).
}).
#pos(e1681@10, {}, {goesIn(calculator, bathroom)}, {
  obj(calculator). hasPhysicalQuality(calculator, electronic). hasPhysicalQuality(calculator, lightweight). hasRole(calculator, toolRole). affordsTask(calculator, workStudyTask).
}).
#pos(e1682@10, {}, {goesIn(calculator, living_room)}, {
  obj(calculator). hasPhysicalQuality(calculator, electronic). hasPhysicalQuality(calculator, lightweight). hasRole(calculator, toolRole). affordsTask(calculator, workStudyTask).
}).
#pos(e1683@10, {}, {goesIn(calendar, cabinet)}, {
  obj(calendar). hasRole(calendar, documentRole). affordsTask(calendar, workStudyTask).
}).
#pos(e1684@10, {}, {goesIn(calendar, kitchen)}, {
  obj(calendar). hasRole(calendar, documentRole). affordsTask(calendar, workStudyTask).
}).
#pos(e1685@10, {}, {goesIn(calendar_pad, fridge)}, {
  obj(calendar_pad). hasPhysicalQuality(calendar_pad, lightweight). hasRole(calendar_pad, documentRole). affordsTask(calendar_pad, workStudyTask).
}).
#pos(e1686@10, {}, {goesIn(calendar_pad, garden)}, {
  obj(calendar_pad). hasPhysicalQuality(calendar_pad, lightweight). hasRole(calendar_pad, documentRole). affordsTask(calendar_pad, workStudyTask).
}).
#pos(e1687@10, {}, {goesIn(camera, bed)}, {
  obj(camera). hasPhysicalQuality(camera, electronic). hasPhysicalQuality(camera, lightweight). hasRole(camera, toolRole). affordsTask(camera, workStudyTask).
}).
#pos(e1688@10, {}, {goesIn(camera, garage)}, {
  obj(camera). hasPhysicalQuality(camera, electronic). hasPhysicalQuality(camera, lightweight). hasRole(camera, toolRole). affordsTask(camera, workStudyTask).
}).
#pos(e1689@10, {}, {goesIn(can_opener, bedroom)}, {
  obj(can_opener). hasPhysicalQuality(can_opener, electronic). hasPhysicalQuality(can_opener, heavy). hasRole(can_opener, toolRole). affordsTask(can_opener, foodPreparationTask).
}).
#pos(e1690@10, {}, {goesIn(can_opener, shelf)}, {
  obj(can_opener). hasPhysicalQuality(can_opener, electronic). hasPhysicalQuality(can_opener, heavy). hasRole(can_opener, toolRole). affordsTask(can_opener, foodPreparationTask).
}).
#pos(e1691@10, {}, {goesIn(candle, cabinet)}, {
  obj(candle). hasPhysicalQuality(candle, flammable). hasPhysicalQuality(candle, heated). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e1692@10, {}, {goesIn(candle, playroom)}, {
  obj(candle). hasPhysicalQuality(candle, flammable). hasPhysicalQuality(candle, heated). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e1693@10, {}, {goesIn(candy, bedroom)}, {
  obj(candy). hasPhysicalQuality(candy, perishable). hasRole(candy, consumableRole). affordsTask(candy, eatingDrinkingTask).
}).
#pos(e1694@10, {}, {goesIn(candy, sink)}, {
  obj(candy). hasPhysicalQuality(candy, perishable). hasRole(candy, consumableRole). affordsTask(candy, eatingDrinkingTask).
}).
#pos(e1695@10, {}, {goesIn(cans, closet)}, {
  obj(cans). hasPhysicalQuality(cans, lightweight). hasPhysicalQuality(cans, rigid). hasRole(cans, storageContainerRole). affordsTask(cans, storageTask).
}).
#pos(e1696@10, {}, {goesIn(cans, trash)}, {
  obj(cans). hasPhysicalQuality(cans, lightweight). hasPhysicalQuality(cans, rigid). hasRole(cans, storageContainerRole). affordsTask(cans, storageTask).
}).
#pos(e1697@10, {}, {goesIn(cans_of_paint, pantry)}, {
  obj(cans_of_paint). hasPhysicalQuality(cans_of_paint, fragile). hasPhysicalQuality(cans_of_paint, liquid). hasRole(cans_of_paint, consumableRole). affordsTask(cans_of_paint, maintenanceTask).
}).
#pos(e1698@10, {}, {goesIn(cans_of_paint, shelf)}, {
  obj(cans_of_paint). hasPhysicalQuality(cans_of_paint, fragile). hasPhysicalQuality(cans_of_paint, liquid). hasRole(cans_of_paint, consumableRole). affordsTask(cans_of_paint, maintenanceTask).
}).
#pos(e1699@10, {}, {goesIn(card, dining_room)}, {
  obj(card). hasPhysicalQuality(card, lightweight). hasRole(card, consumableRole). hasRole(card, utensilRole). affordsTask(card, eatingDrinkingTask).
}).
#pos(e1700@10, {}, {goesIn(card, garage)}, {
  obj(card). hasPhysicalQuality(card, lightweight). hasRole(card, consumableRole). hasRole(card, utensilRole). affordsTask(card, eatingDrinkingTask).
}).
#pos(e1701@10, {}, {goesIn(card_case, pantry)}, {
  obj(card_case). hasPhysicalQuality(card_case, hasContainer). hasPhysicalQuality(card_case, lightweight). hasRole(card_case, storageContainerRole). affordsTask(card_case, storageTask).
}).
#pos(e1702@10, {}, {goesIn(card_case, sink)}, {
  obj(card_case). hasPhysicalQuality(card_case, hasContainer). hasPhysicalQuality(card_case, lightweight). hasRole(card_case, storageContainerRole). affordsTask(card_case, storageTask).
}).
#pos(e1703@10, {}, {goesIn(card_catalog, drawer)}, {
  obj(card_catalog). hasRole(card_catalog, documentRole).
}).
#pos(e1704@10, {}, {goesIn(card_catalog, living_room)}, {
  obj(card_catalog). hasRole(card_catalog, documentRole).
}).
#pos(e1705@10, {}, {goesIn(cardboard, fridge)}, {
  obj(cardboard). hasPhysicalQuality(cardboard, granular). hasRole(cardboard, furnitureRole). hasRole(cardboard, storageContainerRole). affordsTask(cardboard, maintenanceTask).
}).
#pos(e1706@10, {}, {goesIn(cardboard, shelf)}, {
  obj(cardboard). hasPhysicalQuality(cardboard, granular). hasRole(cardboard, furnitureRole). hasRole(cardboard, storageContainerRole). affordsTask(cardboard, maintenanceTask).
}).
#pos(e1707@10, {}, {goesIn(cardboard_box, home_office)}, {
  obj(cardboard_box). hasPhysicalQuality(cardboard_box, lightweight). hasPhysicalQuality(cardboard_box, rigid). hasRole(cardboard_box, storageContainerRole). affordsTask(cardboard_box, storageTask).
}).
#pos(e1708@10, {}, {goesIn(cardboard_box, library)}, {
  obj(cardboard_box). hasPhysicalQuality(cardboard_box, lightweight). hasPhysicalQuality(cardboard_box, rigid). hasRole(cardboard_box, storageContainerRole). affordsTask(cardboard_box, storageTask).
}).
#pos(e1709@10, {}, {goesIn(cards, sink)}, {
  obj(cards). hasRole(cards, entertainmentRole). affordsTask(cards, leisureTask).
}).
#pos(e1710@10, {}, {goesIn(cards, storage_room)}, {
  obj(cards). hasRole(cards, entertainmentRole). affordsTask(cards, leisureTask).
}).
#pos(e1711@10, {}, {goesIn(carpet, music_room)}, {
  obj(carpet). hasPhysicalQuality(carpet, soft_Deformable). hasPhysicalQuality(carpet, washable). hasRole(carpet, furnitureRole). affordsTask(carpet, leisureTask).
}).
#pos(e1712@10, {}, {goesIn(carpet, shelf)}, {
  obj(carpet). hasPhysicalQuality(carpet, soft_Deformable). hasPhysicalQuality(carpet, washable). hasRole(carpet, furnitureRole). affordsTask(carpet, leisureTask).
}).
#pos(e1713@10, {}, {goesIn(carpeting, music_room)}, {
  obj(carpeting). hasPhysicalQuality(carpeting, soft_Deformable). hasPhysicalQuality(carpeting, washable). hasRole(carpeting, furnitureRole). affordsTask(carpeting, leisureTask).
}).
#pos(e1714@10, {}, {goesIn(carpeting, playroom)}, {
  obj(carpeting). hasPhysicalQuality(carpeting, soft_Deformable). hasPhysicalQuality(carpeting, washable). hasRole(carpeting, furnitureRole). affordsTask(carpeting, leisureTask).
}).
#pos(e1715@10, {}, {goesIn(carrots, cabinet)}, {
  obj(carrots). hasPhysicalQuality(carrots, perishable). hasRole(carrots, consumableRole). affordsTask(carrots, foodPreparationTask).
}).
#pos(e1716@10, {}, {goesIn(carrots, garage)}, {
  obj(carrots). hasPhysicalQuality(carrots, perishable). hasRole(carrots, consumableRole). affordsTask(carrots, foodPreparationTask).
}).
#pos(e1717@10, {}, {goesIn(cash_register, bedroom)}, {
  obj(cash_register). hasPhysicalQuality(cash_register, electronic). hasPhysicalQuality(cash_register, heavy). hasRole(cash_register, applianceRole). affordsTask(cash_register, maintenanceTask).
}).
#pos(e1718@10, {}, {goesIn(cash_register, fridge)}, {
  obj(cash_register). hasPhysicalQuality(cash_register, electronic). hasPhysicalQuality(cash_register, heavy). hasRole(cash_register, applianceRole). affordsTask(cash_register, maintenanceTask).
}).
#pos(e1719@10, {}, {goesIn(cat, bathroom)}, {
  obj(cat). hasPhysicalQuality(cat, lightweight). hasPhysicalQuality(cat, soft_Deformable). hasRole(cat, furnitureRole). affordsTask(cat, leisureTask).
}).
#pos(e1720@10, {}, {goesIn(cat, home_office)}, {
  obj(cat). hasPhysicalQuality(cat, lightweight). hasPhysicalQuality(cat, soft_Deformable). hasRole(cat, furnitureRole). affordsTask(cat, leisureTask).
}).
#pos(e1721@10, {}, {goesIn(cd_rom, shelf)}, {
  obj(cd_rom). hasPhysicalQuality(cd_rom, electronic). hasPhysicalQuality(cd_rom, lightweight). hasRole(cd_rom, storageContainerRole). affordsTask(cd_rom, workStudyTask).
}).
#pos(e1722@10, {}, {goesIn(cd_rom, sink)}, {
  obj(cd_rom). hasPhysicalQuality(cd_rom, electronic). hasPhysicalQuality(cd_rom, lightweight). hasRole(cd_rom, storageContainerRole). affordsTask(cd_rom, workStudyTask).
}).
#pos(e1723@10, {}, {goesIn(cds, garage)}, {
  obj(cds). hasPhysicalQuality(cds, lightweight). hasPhysicalQuality(cds, rigid). hasRole(cds, storageContainerRole). affordsTask(cds, leisureTask).
}).
#pos(e1724@10, {}, {goesIn(cds, shelf)}, {
  obj(cds). hasPhysicalQuality(cds, lightweight). hasPhysicalQuality(cds, rigid). hasRole(cds, storageContainerRole). affordsTask(cds, leisureTask).
}).
#pos(e1725@10, {}, {goesIn(ceiling, bathroom)}, {
  obj(ceiling). hasPhysicalQuality(ceiling, rigid). hasRole(ceiling, furnitureRole).
}).
#pos(e1726@10, {}, {goesIn(ceiling, garage)}, {
  obj(ceiling). hasPhysicalQuality(ceiling, rigid). hasRole(ceiling, furnitureRole).
}).
#pos(e1727@10, {}, {goesIn(celery, bedroom)}, {
  obj(celery). hasPhysicalQuality(celery, granular). hasPhysicalQuality(celery, perishable). hasRole(celery, consumableRole). affordsTask(celery, eatingDrinkingTask).
}).
#pos(e1728@10, {}, {goesIn(celery, trash)}, {
  obj(celery). hasPhysicalQuality(celery, granular). hasPhysicalQuality(celery, perishable). hasRole(celery, consumableRole). affordsTask(celery, eatingDrinkingTask).
}).
#pos(e1729@10, {}, {goesIn(cellar, bed)}, {
  obj(cellar). hasPhysicalQuality(cellar, heavy). hasPhysicalQuality(cellar, rigid). hasRole(cellar, storageContainerRole). affordsTask(cellar, storageTask).
}).
#pos(e1730@10, {}, {goesIn(cellar, table)}, {
  obj(cellar). hasPhysicalQuality(cellar, heavy). hasPhysicalQuality(cellar, rigid). hasRole(cellar, storageContainerRole). affordsTask(cellar, storageTask).
}).
#pos(e1731@10, {}, {goesIn(cereal, bed)}, {
  obj(cereal). hasPhysicalQuality(cereal, granular). hasPhysicalQuality(cereal, perishable). hasRole(cereal, consumableRole). affordsTask(cereal, eatingDrinkingTask).
}).
#pos(e1732@10, {}, {goesIn(cereal, home_office)}, {
  obj(cereal). hasPhysicalQuality(cereal, granular). hasPhysicalQuality(cereal, perishable). hasRole(cereal, consumableRole). affordsTask(cereal, eatingDrinkingTask).
}).
#pos(e1733@10, {}, {goesIn(chain, bed)}, {
  obj(chain). hasPhysicalQuality(chain, heavy). hasPhysicalQuality(chain, rigid). hasRole(chain, toolRole). affordsTask(chain, maintenanceTask).
}).
#pos(e1734@10, {}, {goesIn(chain, home_office)}, {
  obj(chain). hasPhysicalQuality(chain, heavy). hasPhysicalQuality(chain, rigid). hasRole(chain, toolRole). affordsTask(chain, maintenanceTask).
}).
#pos(e1735@10, {}, {goesIn(chair, cabinet)}, {
  obj(chair). hasPhysicalQuality(chair, heavy). hasPhysicalQuality(chair, rigid). hasRole(chair, furnitureRole). affordsTask(chair, storageTask).
}).
#pos(e1736@10, {}, {goesIn(chair, laundry_room)}, {
  obj(chair). hasPhysicalQuality(chair, heavy). hasPhysicalQuality(chair, rigid). hasRole(chair, furnitureRole). affordsTask(chair, storageTask).
}).
#pos(e1737@10, {}, {goesIn(check, garden)}, {
  obj(check). hasPhysicalQuality(check, electronic). hasRole(check, toolRole). affordsTask(check, maintenanceTask).
}).
#pos(e1738@10, {}, {goesIn(check, hallway)}, {
  obj(check). hasPhysicalQuality(check, electronic). hasRole(check, toolRole). affordsTask(check, maintenanceTask).
}).
#pos(e1739@10, {}, {goesIn(checkbook, music_room)}, {
  obj(checkbook). hasRole(checkbook, documentRole).
}).
#pos(e1740@10, {}, {goesIn(checkbook, trash)}, {
  obj(checkbook). hasRole(checkbook, documentRole).
}).
#pos(e1741@10, {}, {goesIn(checkbook_holder, fridge)}, {
  obj(checkbook_holder). hasPhysicalQuality(checkbook_holder, hasContainer). hasRole(checkbook_holder, storageContainerRole). affordsTask(checkbook_holder, storageTask).
}).
#pos(e1742@10, {}, {goesIn(checkbook_holder, playroom)}, {
  obj(checkbook_holder). hasPhysicalQuality(checkbook_holder, hasContainer). hasRole(checkbook_holder, storageContainerRole). affordsTask(checkbook_holder, storageTask).
}).
#pos(e1743@10, {}, {goesIn(cheese, closet)}, {
  obj(cheese). hasPhysicalQuality(cheese, perishable). hasRole(cheese, consumableRole). affordsTask(cheese, eatingDrinkingTask).
}).
#pos(e1744@10, {}, {goesIn(cheese, sink)}, {
  obj(cheese). hasPhysicalQuality(cheese, perishable). hasRole(cheese, consumableRole). affordsTask(cheese, eatingDrinkingTask).
}).
#pos(e1745@10, {}, {goesIn(chess_bishop, living_room)}, {
  obj(chess_bishop). hasPhysicalQuality(chess_bishop, rigid). hasRole(chess_bishop, toolRole). affordsTask(chess_bishop, leisureTask).
}).
#pos(e1746@10, {}, {goesIn(chess_bishop, shelf)}, {
  obj(chess_bishop). hasPhysicalQuality(chess_bishop, rigid). hasRole(chess_bishop, toolRole). affordsTask(chess_bishop, leisureTask).
}).
#pos(e1747@10, {}, {goesIn(chess_board, garage)}, {
  obj(chess_board). hasPhysicalQuality(chess_board, heavy). hasPhysicalQuality(chess_board, rigid). hasRole(chess_board, furnitureRole). affordsTask(chess_board, leisureTask).
}).
#pos(e1748@10, {}, {goesIn(chess_board, pantry)}, {
  obj(chess_board). hasPhysicalQuality(chess_board, heavy). hasPhysicalQuality(chess_board, rigid). hasRole(chess_board, furnitureRole). affordsTask(chess_board, leisureTask).
}).
#pos(e1749@10, {}, {goesIn(chess_king, drawer)}, {
  obj(chess_king). hasPhysicalQuality(chess_king, lightweight). hasRole(chess_king, entertainmentRole). affordsTask(chess_king, leisureTask).
}).
#pos(e1750@10, {}, {goesIn(chess_king, laundry_room)}, {
  obj(chess_king). hasPhysicalQuality(chess_king, lightweight). hasRole(chess_king, entertainmentRole). affordsTask(chess_king, leisureTask).
}).
#pos(e1751@10, {}, {goesIn(chess_knight, cabinet)}, {
  obj(chess_knight). hasPhysicalQuality(chess_knight, rigid). hasRole(chess_knight, entertainmentRole). affordsTask(chess_knight, leisureTask).
}).
#pos(e1752@10, {}, {goesIn(chess_knight, trash)}, {
  obj(chess_knight). hasPhysicalQuality(chess_knight, rigid). hasRole(chess_knight, entertainmentRole). affordsTask(chess_knight, leisureTask).
}).
#pos(e1753@10, {}, {goesIn(chess_pawn, home_office)}, {
  obj(chess_pawn). hasPhysicalQuality(chess_pawn, lightweight). hasRole(chess_pawn, entertainmentRole). affordsTask(chess_pawn, leisureTask).
}).
#pos(e1754@10, {}, {goesIn(chess_pawn, laundry_room)}, {
  obj(chess_pawn). hasPhysicalQuality(chess_pawn, lightweight). hasRole(chess_pawn, entertainmentRole). affordsTask(chess_pawn, leisureTask).
}).
#pos(e1755@10, {}, {goesIn(chess_piece, laundry_room)}, {
  obj(chess_piece). hasPhysicalQuality(chess_piece, lightweight). hasRole(chess_piece, entertainmentRole). affordsTask(chess_piece, leisureTask).
}).
#pos(e1756@10, {}, {goesIn(chess_piece, trash)}, {
  obj(chess_piece). hasPhysicalQuality(chess_piece, lightweight). hasRole(chess_piece, entertainmentRole). affordsTask(chess_piece, leisureTask).
}).
#pos(e1757@10, {}, {goesIn(chess_queen, bed)}, {
  obj(chess_queen). hasRole(chess_queen, toolRole).
}).
#pos(e1758@10, {}, {goesIn(chess_queen, library)}, {
  obj(chess_queen). hasRole(chess_queen, toolRole).
}).
#pos(e1759@10, {}, {goesIn(chess_rook, cabinet)}, {
  obj(chess_rook). hasPhysicalQuality(chess_rook, heavy). hasPhysicalQuality(chess_rook, rigid). hasRole(chess_rook, toolRole). affordsTask(chess_rook, leisureTask).
}).
#pos(e1760@10, {}, {goesIn(chess_rook, trash)}, {
  obj(chess_rook). hasPhysicalQuality(chess_rook, heavy). hasPhysicalQuality(chess_rook, rigid). hasRole(chess_rook, toolRole). affordsTask(chess_rook, leisureTask).
}).
#pos(e1761@10, {}, {goesIn(chess_set, bed)}, {
  obj(chess_set). hasPhysicalQuality(chess_set, lightweight). hasPhysicalQuality(chess_set, rigid). hasRole(chess_set, entertainmentRole). affordsTask(chess_set, leisureTask).
}).
#pos(e1762@10, {}, {goesIn(chess_set, library)}, {
  obj(chess_set). hasPhysicalQuality(chess_set, lightweight). hasPhysicalQuality(chess_set, rigid). hasRole(chess_set, entertainmentRole). affordsTask(chess_set, leisureTask).
}).
#pos(e1763@10, {}, {goesIn(chest, closet)}, {
  obj(chest). hasPhysicalQuality(chest, heavy). hasPhysicalQuality(chest, rigid). hasRole(chest, storageContainerRole). affordsTask(chest, storageTask).
}).
#pos(e1764@10, {}, {goesIn(chest, home_office)}, {
  obj(chest). hasPhysicalQuality(chest, heavy). hasPhysicalQuality(chest, rigid). hasRole(chest, storageContainerRole). affordsTask(chest, storageTask).
}).
#pos(e1765@10, {}, {goesIn(chimney, drawer)}, {
  obj(chimney). hasPhysicalQuality(chimney, heavy). hasRole(chimney, applianceRole).
}).
#pos(e1766@10, {}, {goesIn(chimney, fridge)}, {
  obj(chimney). hasPhysicalQuality(chimney, heavy). hasRole(chimney, applianceRole).
}).
#pos(e1767@10, {}, {goesIn(chine_cotton, fridge)}, {
  obj(chine_cotton). hasPhysicalQuality(chine_cotton, lightweight). hasPhysicalQuality(chine_cotton, soft_Deformable). hasRole(chine_cotton, clothingRole). affordsTask(chine_cotton, dressingTask).
}).
#pos(e1768@10, {}, {goesIn(chine_cotton, playroom)}, {
  obj(chine_cotton). hasPhysicalQuality(chine_cotton, lightweight). hasPhysicalQuality(chine_cotton, soft_Deformable). hasRole(chine_cotton, clothingRole). affordsTask(chine_cotton, dressingTask).
}).
#pos(e1769@10, {}, {goesIn(chips, closet)}, {
  obj(chips). hasPhysicalQuality(chips, granular). hasPhysicalQuality(chips, perishable). hasRole(chips, consumableRole). affordsTask(chips, eatingDrinkingTask).
}).
#pos(e1770@10, {}, {goesIn(chips, living_room)}, {
  obj(chips). hasPhysicalQuality(chips, granular). hasPhysicalQuality(chips, perishable). hasRole(chips, consumableRole). affordsTask(chips, eatingDrinkingTask).
}).
#pos(e1771@10, {}, {goesIn(chocolate, drawer)}, {
  obj(chocolate). hasPhysicalQuality(chocolate, perishable). hasRole(chocolate, consumableRole). affordsTask(chocolate, eatingDrinkingTask).
}).
#pos(e1772@10, {}, {goesIn(chocolate, living_room)}, {
  obj(chocolate). hasPhysicalQuality(chocolate, perishable). hasRole(chocolate, consumableRole). affordsTask(chocolate, eatingDrinkingTask).
}).
#pos(e1773@10, {}, {goesIn(cinnamon, garage)}, {
  obj(cinnamon). hasPhysicalQuality(cinnamon, perishable). hasRole(cinnamon, consumableRole). affordsTask(cinnamon, foodPreparationTask).
}).
#pos(e1774@10, {}, {goesIn(cinnamon, living_room)}, {
  obj(cinnamon). hasPhysicalQuality(cinnamon, perishable). hasRole(cinnamon, consumableRole). affordsTask(cinnamon, foodPreparationTask).
}).
#pos(e1775@10, {}, {goesIn(clip, bedroom)}, {
  obj(clip). hasPhysicalQuality(clip, lightweight). hasRole(clip, toolRole). affordsTask(clip, maintenanceTask).
}).
#pos(e1776@10, {}, {goesIn(clip, fridge)}, {
  obj(clip). hasPhysicalQuality(clip, lightweight). hasRole(clip, toolRole). affordsTask(clip, maintenanceTask).
}).
#pos(e1777@10, {}, {goesIn(clipboard, library)}, {
  obj(clipboard). hasPhysicalQuality(clipboard, lightweight). hasPhysicalQuality(clipboard, rigid). hasRole(clipboard, utensilRole). affordsTask(clipboard, foodPreparationTask).
}).
#pos(e1778@10, {}, {goesIn(clipboard, pantry)}, {
  obj(clipboard). hasPhysicalQuality(clipboard, lightweight). hasPhysicalQuality(clipboard, rigid). hasRole(clipboard, utensilRole). affordsTask(clipboard, foodPreparationTask).
}).
#pos(e1779@10, {}, {goesIn(clock, bed)}, {
  obj(clock). hasPhysicalQuality(clock, rigid). hasRole(clock, decorationRole).
}).
#pos(e1780@10, {}, {goesIn(clock, closet)}, {
  obj(clock). hasPhysicalQuality(clock, rigid). hasRole(clock, decorationRole).
}).
#pos(e1781@10, {}, {goesIn(closet, shelf)}, {
  obj(closet). hasPhysicalQuality(closet, heavy). hasPhysicalQuality(closet, rigid). hasRole(closet, storageContainerRole). affordsTask(closet, storageTask).
}).
#pos(e1782@10, {}, {goesIn(closet, table)}, {
  obj(closet). hasPhysicalQuality(closet, heavy). hasPhysicalQuality(closet, rigid). hasRole(closet, storageContainerRole). affordsTask(closet, storageTask).
}).
#pos(e1783@10, {}, {goesIn(cloth, bed)}, {
  obj(cloth). hasPhysicalQuality(cloth, soft_Deformable). hasPhysicalQuality(cloth, washable). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask).
}).
#pos(e1784@10, {}, {goesIn(cloth, dining_room)}, {
  obj(cloth). hasPhysicalQuality(cloth, soft_Deformable). hasPhysicalQuality(cloth, washable). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask).
}).
#pos(e1785@10, {}, {goesIn(clothes, hallway)}, {
  obj(clothes). hasPhysicalQuality(clothes, soft_Deformable). hasPhysicalQuality(clothes, washable). hasRole(clothes, clothingRole). affordsTask(clothes, dressingTask).
}).
#pos(e1786@10, {}, {goesIn(clothes, kitchen)}, {
  obj(clothes). hasPhysicalQuality(clothes, soft_Deformable). hasPhysicalQuality(clothes, washable). hasRole(clothes, clothingRole). affordsTask(clothes, dressingTask).
}).
#pos(e1787@10, {}, {goesIn(clothing, playroom)}, {
  obj(clothing). hasPhysicalQuality(clothing, lightweight). hasPhysicalQuality(clothing, soft_Deformable). hasRole(clothing, clothingRole). affordsTask(clothing, dressingTask).
}).
#pos(e1788@10, {}, {goesIn(clothing, sink)}, {
  obj(clothing). hasPhysicalQuality(clothing, lightweight). hasPhysicalQuality(clothing, soft_Deformable). hasRole(clothing, clothingRole). affordsTask(clothing, dressingTask).
}).
#pos(e1789@10, {}, {goesIn(clothing_shelf, garden)}, {
  obj(clothing_shelf). hasPhysicalQuality(clothing_shelf, heavy). hasPhysicalQuality(clothing_shelf, rigid). hasRole(clothing_shelf, storageContainerRole). affordsTask(clothing_shelf, storageTask).
}).
#pos(e1790@10, {}, {goesIn(clothing_shelf, playroom)}, {
  obj(clothing_shelf). hasPhysicalQuality(clothing_shelf, heavy). hasPhysicalQuality(clothing_shelf, rigid). hasRole(clothing_shelf, storageContainerRole). affordsTask(clothing_shelf, storageTask).
}).
#pos(e1791@10, {}, {goesIn(coal, bedroom)}, {
  obj(coal). hasPhysicalQuality(coal, flammable). hasPhysicalQuality(coal, heavy). hasRole(coal, consumableRole). affordsTask(coal, maintenanceTask).
}).
#pos(e1792@10, {}, {goesIn(coal, laundry_room)}, {
  obj(coal). hasPhysicalQuality(coal, flammable). hasPhysicalQuality(coal, heavy). hasRole(coal, consumableRole). affordsTask(coal, maintenanceTask).
}).
#pos(e1793@10, {}, {goesIn(coat_hangers, fridge)}, {
  obj(coat_hangers). hasPhysicalQuality(coat_hangers, lightweight). hasPhysicalQuality(coat_hangers, rigid). hasRole(coat_hangers, storageContainerRole). affordsTask(coat_hangers, storageTask).
}).
#pos(e1794@10, {}, {goesIn(coat_hangers, library)}, {
  obj(coat_hangers). hasPhysicalQuality(coat_hangers, lightweight). hasPhysicalQuality(coat_hangers, rigid). hasRole(coat_hangers, storageContainerRole). affordsTask(coat_hangers, storageTask).
}).
#pos(e1795@10, {}, {goesIn(coats, bathroom)}, {
  obj(coats). hasRole(coats, clothingRole). affordsTask(coats, dressingTask).
}).
#pos(e1796@10, {}, {goesIn(coats, library)}, {
  obj(coats). hasRole(coats, clothingRole). affordsTask(coats, dressingTask).
}).
#pos(e1797@10, {}, {goesIn(coffee, hallway)}, {
  obj(coffee). hasPhysicalQuality(coffee, liquid). hasPhysicalQuality(coffee, perishable). hasRole(coffee, consumableRole). affordsTask(coffee, eatingDrinkingTask).
}).
#pos(e1798@10, {}, {goesIn(coffee, playroom)}, {
  obj(coffee). hasPhysicalQuality(coffee, liquid). hasPhysicalQuality(coffee, perishable). hasRole(coffee, consumableRole). affordsTask(coffee, eatingDrinkingTask).
}).
#pos(e1799@10, {}, {goesIn(coffee_cups, hallway)}, {
  obj(coffee_cups). hasPhysicalQuality(coffee_cups, hasContainer). hasPhysicalQuality(coffee_cups, lightweight). hasRole(coffee_cups, utensilRole). affordsTask(coffee_cups, eatingDrinkingTask).
}).
#pos(e1800@10, {}, {goesIn(coffee_cups, library)}, {
  obj(coffee_cups). hasPhysicalQuality(coffee_cups, hasContainer). hasPhysicalQuality(coffee_cups, lightweight). hasRole(coffee_cups, utensilRole). affordsTask(coffee_cups, eatingDrinkingTask).
}).
#pos(e1801@10, {}, {goesIn(coffee_mug, pantry)}, {
  obj(coffee_mug). hasPhysicalQuality(coffee_mug, hasContainer). hasPhysicalQuality(coffee_mug, liquid). hasRole(coffee_mug, utensilRole). affordsTask(coffee_mug, eatingDrinkingTask).
}).
#pos(e1802@10, {}, {goesIn(coffee_mug, sink)}, {
  obj(coffee_mug). hasPhysicalQuality(coffee_mug, hasContainer). hasPhysicalQuality(coffee_mug, liquid). hasRole(coffee_mug, utensilRole). affordsTask(coffee_mug, eatingDrinkingTask).
}).
#pos(e1803@10, {}, {goesIn(coin, closet)}, {
  obj(coin). hasPhysicalQuality(coin, lightweight). hasRole(coin, consumableRole).
}).
#pos(e1804@10, {}, {goesIn(coin, drawer)}, {
  obj(coin). hasPhysicalQuality(coin, lightweight). hasRole(coin, consumableRole).
}).
#pos(e1805@10, {}, {goesIn(coins, fridge)}, {
  obj(coins). hasPhysicalQuality(coins, lightweight). hasRole(coins, consumableRole). affordsTask(coins, eatingDrinkingTask).
}).
#pos(e1806@10, {}, {goesIn(coins, living_room)}, {
  obj(coins). hasPhysicalQuality(coins, lightweight). hasRole(coins, consumableRole). affordsTask(coins, eatingDrinkingTask).
}).
#pos(e1807@10, {}, {goesIn(coke, bed)}, {
  obj(coke). hasPhysicalQuality(coke, liquid). hasRole(coke, consumableRole). affordsTask(coke, eatingDrinkingTask).
}).
#pos(e1808@10, {}, {goesIn(coke, sink)}, {
  obj(coke). hasPhysicalQuality(coke, liquid). hasRole(coke, consumableRole). affordsTask(coke, eatingDrinkingTask).
}).
#pos(e1809@10, {}, {goesIn(cold_faucet, bedroom)}, {
  obj(cold_faucet). hasPhysicalQuality(cold_faucet, heavy). hasPhysicalQuality(cold_faucet, liquid). hasRole(cold_faucet, utensilRole). affordsTask(cold_faucet, eatingDrinkingTask).
}).
#pos(e1810@10, {}, {goesIn(cold_faucet, table)}, {
  obj(cold_faucet). hasPhysicalQuality(cold_faucet, heavy). hasPhysicalQuality(cold_faucet, liquid). hasRole(cold_faucet, utensilRole). affordsTask(cold_faucet, eatingDrinkingTask).
}).
#pos(e1811@10, {}, {goesIn(cold_storage, bed)}, {
  obj(cold_storage). hasPhysicalQuality(cold_storage, requiresCooling). hasRole(cold_storage, applianceRole). affordsTask(cold_storage, storageTask).
}).
#pos(e1812@10, {}, {goesIn(cold_storage, home_office)}, {
  obj(cold_storage). hasPhysicalQuality(cold_storage, requiresCooling). hasRole(cold_storage, applianceRole). affordsTask(cold_storage, storageTask).
}).
#pos(e1813@10, {}, {goesIn(cold_tap, bed)}, {
  obj(cold_tap). hasPhysicalQuality(cold_tap, electronic). hasPhysicalQuality(cold_tap, liquid). hasRole(cold_tap, toolRole). affordsTask(cold_tap, hygieneTask).
}).
#pos(e1814@10, {}, {goesIn(cold_tap, shelf)}, {
  obj(cold_tap). hasPhysicalQuality(cold_tap, electronic). hasPhysicalQuality(cold_tap, liquid). hasRole(cold_tap, toolRole). affordsTask(cold_tap, hygieneTask).
}).
#pos(e1815@10, {}, {goesIn(cold_water, pantry)}, {
  obj(cold_water). hasPhysicalQuality(cold_water, liquid). hasPhysicalQuality(cold_water, perishable). hasRole(cold_water, consumableRole). affordsTask(cold_water, eatingDrinkingTask).
}).
#pos(e1816@10, {}, {goesIn(cold_water, playroom)}, {
  obj(cold_water). hasPhysicalQuality(cold_water, liquid). hasPhysicalQuality(cold_water, perishable). hasRole(cold_water, consumableRole). affordsTask(cold_water, eatingDrinkingTask).
}).
#pos(e1817@10, {}, {goesIn(column, drawer)}, {
  obj(column). hasPhysicalQuality(column, heavy). hasPhysicalQuality(column, rigid). hasRole(column, furnitureRole).
}).
#pos(e1818@10, {}, {goesIn(column, playroom)}, {
  obj(column). hasPhysicalQuality(column, heavy). hasPhysicalQuality(column, rigid). hasRole(column, furnitureRole).
}).
#pos(e1819@10, {}, {goesIn(comforter, bed)}, {
  obj(comforter). hasPhysicalQuality(comforter, soft_Deformable). hasPhysicalQuality(comforter, washable). hasRole(comforter, beddingRole). affordsTask(comforter, sleepingTask).
}).
#pos(e1820@10, {}, {goesIn(comforter, playroom)}, {
  obj(comforter). hasPhysicalQuality(comforter, soft_Deformable). hasPhysicalQuality(comforter, washable). hasRole(comforter, beddingRole). affordsTask(comforter, sleepingTask).
}).
#pos(e1821@10, {}, {goesIn(compost, bedroom)}, {
  obj(compost). hasPhysicalQuality(compost, perishable). hasRole(compost, consumableRole). hasRole(compost, wasteRole). affordsTask(compost, maintenanceTask).
}).
#pos(e1822@10, {}, {goesIn(compost, dining_room)}, {
  obj(compost). hasPhysicalQuality(compost, perishable). hasRole(compost, consumableRole). hasRole(compost, wasteRole). affordsTask(compost, maintenanceTask).
}).
#pos(e1823@10, {}, {goesIn(computer, cabinet)}, {
  obj(computer). hasPhysicalQuality(computer, electronic). hasPhysicalQuality(computer, heavy). hasRole(computer, applianceRole). affordsTask(computer, workStudyTask).
}).
#pos(e1824@10, {}, {goesIn(computer, trash)}, {
  obj(computer). hasPhysicalQuality(computer, electronic). hasPhysicalQuality(computer, heavy). hasRole(computer, applianceRole). affordsTask(computer, workStudyTask).
}).
#pos(e1825@10, {}, {goesIn(concrete, hallway)}, {
  obj(concrete). hasPhysicalQuality(concrete, granular). hasPhysicalQuality(concrete, rigid). hasRole(concrete, consumableRole).
}).
#pos(e1826@10, {}, {goesIn(concrete, living_room)}, {
  obj(concrete). hasPhysicalQuality(concrete, granular). hasPhysicalQuality(concrete, rigid). hasRole(concrete, consumableRole).
}).
#pos(e1827@10, {}, {goesIn(container, drawer)}, {
  obj(container). hasPhysicalQuality(container, hasContainer). hasRole(container, storageContainerRole). affordsTask(container, storageTask).
}).
#pos(e1828@10, {}, {goesIn(container, laundry_room)}, {
  obj(container). hasPhysicalQuality(container, hasContainer). hasRole(container, storageContainerRole). affordsTask(container, storageTask).
}).
#pos(e1829@10, {}, {goesIn(container_can, bed)}, {
  obj(container_can). hasPhysicalQuality(container_can, hasContainer). hasRole(container_can, storageContainerRole). affordsTask(container_can, storageTask).
}).
#pos(e1830@10, {}, {goesIn(container_can, table)}, {
  obj(container_can). hasPhysicalQuality(container_can, hasContainer). hasRole(container_can, storageContainerRole). affordsTask(container_can, storageTask).
}).
#pos(e1831@10, {}, {goesIn(container_cup, bedroom)}, {
  obj(container_cup). hasPhysicalQuality(container_cup, hasContainer). hasRole(container_cup, storageContainerRole). hasRole(container_cup, utensilRole). affordsTask(container_cup, eatingDrinkingTask). affordsTask(container_cup, storageTask).
}).
#pos(e1832@10, {}, {goesIn(container_cup, sink)}, {
  obj(container_cup). hasPhysicalQuality(container_cup, hasContainer). hasRole(container_cup, storageContainerRole). hasRole(container_cup, utensilRole). affordsTask(container_cup, eatingDrinkingTask). affordsTask(container_cup, storageTask).
}).
#pos(e1833@10, {}, {goesIn(cook, library)}, {
  obj(cook). hasPhysicalQuality(cook, heavy). hasPhysicalQuality(cook, rigid). hasRole(cook, cookwareRole). affordsTask(cook, foodPreparationTask).
}).
#pos(e1834@10, {}, {goesIn(cook, table)}, {
  obj(cook). hasPhysicalQuality(cook, heavy). hasPhysicalQuality(cook, rigid). hasRole(cook, cookwareRole). affordsTask(cook, foodPreparationTask).
}).
#pos(e1835@10, {}, {goesIn(cookie, music_room)}, {
  obj(cookie). hasPhysicalQuality(cookie, granular). hasRole(cookie, consumableRole). affordsTask(cookie, eatingDrinkingTask).
}).
#pos(e1836@10, {}, {goesIn(cookie, shelf)}, {
  obj(cookie). hasPhysicalQuality(cookie, granular). hasRole(cookie, consumableRole). affordsTask(cookie, eatingDrinkingTask).
}).
#pos(e1837@10, {}, {goesIn(cookie_jar, garage)}, {
  obj(cookie_jar). hasPhysicalQuality(cookie_jar, hasContainer). hasPhysicalQuality(cookie_jar, heavy). hasRole(cookie_jar, storageContainerRole). affordsTask(cookie_jar, storageTask).
}).
#pos(e1838@10, {}, {goesIn(cookie_jar, hallway)}, {
  obj(cookie_jar). hasPhysicalQuality(cookie_jar, hasContainer). hasPhysicalQuality(cookie_jar, heavy). hasRole(cookie_jar, storageContainerRole). affordsTask(cookie_jar, storageTask).
}).
#pos(e1839@10, {}, {goesIn(cookies, hallway)}, {
  obj(cookies). hasPhysicalQuality(cookies, granular). hasRole(cookies, consumableRole). affordsTask(cookies, eatingDrinkingTask).
}).
#pos(e1840@10, {}, {goesIn(cookies, living_room)}, {
  obj(cookies). hasPhysicalQuality(cookies, granular). hasRole(cookies, consumableRole). affordsTask(cookies, eatingDrinkingTask).
}).
#pos(e1841@10, {}, {goesIn(cooling_device, garage)}, {
  obj(cooling_device). hasPhysicalQuality(cooling_device, requiresCooling). hasRole(cooling_device, applianceRole). affordsTask(cooling_device, storageTask).
}).
#pos(e1842@10, {}, {goesIn(cooling_device, garden)}, {
  obj(cooling_device). hasPhysicalQuality(cooling_device, requiresCooling). hasRole(cooling_device, applianceRole). affordsTask(cooling_device, storageTask).
}).
#pos(e1843@10, {}, {goesIn(corner_cupboard, closet)}, {
  obj(corner_cupboard). hasPhysicalQuality(corner_cupboard, heavy). hasPhysicalQuality(corner_cupboard, rigid). hasRole(corner_cupboard, storageContainerRole). affordsTask(corner_cupboard, storageTask).
}).
#pos(e1844@10, {}, {goesIn(corner_cupboard, laundry_room)}, {
  obj(corner_cupboard). hasPhysicalQuality(corner_cupboard, heavy). hasPhysicalQuality(corner_cupboard, rigid). hasRole(corner_cupboard, storageContainerRole). affordsTask(corner_cupboard, storageTask).
}).
#pos(e1845@10, {}, {goesIn(cotton, storage_room)}, {
  obj(cotton). hasPhysicalQuality(cotton, lightweight). hasPhysicalQuality(cotton, soft_Deformable). hasRole(cotton, clothingRole). hasRole(cotton, consumableRole).
}).
#pos(e1846@10, {}, {goesIn(cotton, table)}, {
  obj(cotton). hasPhysicalQuality(cotton, lightweight). hasPhysicalQuality(cotton, soft_Deformable). hasRole(cotton, clothingRole). hasRole(cotton, consumableRole).
}).
#pos(e1847@10, {}, {goesIn(couch, hallway)}, {
  obj(couch). hasPhysicalQuality(couch, heavy). hasPhysicalQuality(couch, rigid). hasRole(couch, furnitureRole). affordsTask(couch, leisureTask).
}).
#pos(e1848@10, {}, {goesIn(couch, music_room)}, {
  obj(couch). hasPhysicalQuality(couch, heavy). hasPhysicalQuality(couch, rigid). hasRole(couch, furnitureRole). affordsTask(couch, leisureTask).
}).
#pos(e1849@10, {}, {goesIn(counter, bedroom)}, {
  obj(counter). hasPhysicalQuality(counter, heavy). hasPhysicalQuality(counter, rigid). hasRole(counter, furnitureRole). affordsTask(counter, workStudyTask).
}).
#pos(e1850@10, {}, {goesIn(counter, hallway)}, {
  obj(counter). hasPhysicalQuality(counter, heavy). hasPhysicalQuality(counter, rigid). hasRole(counter, furnitureRole). affordsTask(counter, workStudyTask).
}).
#pos(e1851@10, {}, {goesIn(coupon, bathroom)}, {
  obj(coupon). hasRole(coupon, consumableRole).
}).
#pos(e1852@10, {}, {goesIn(coupon, music_room)}, {
  obj(coupon). hasRole(coupon, consumableRole).
}).
#pos(e1853@10, {}, {goesIn(cover, dining_room)}, {
  obj(cover). hasPhysicalQuality(cover, lightweight). hasPhysicalQuality(cover, soft_Deformable). hasRole(cover, beddingRole). hasRole(cover, furnitureRole). affordsTask(cover, sleepingTask).
}).
#pos(e1854@10, {}, {goesIn(cover, trash)}, {
  obj(cover). hasPhysicalQuality(cover, lightweight). hasPhysicalQuality(cover, soft_Deformable). hasRole(cover, beddingRole). hasRole(cover, furnitureRole). affordsTask(cover, sleepingTask).
}).
#pos(e1855@10, {}, {goesIn(credit_card_wallet, bedroom)}, {
  obj(credit_card_wallet). hasPhysicalQuality(credit_card_wallet, hasContainer). hasPhysicalQuality(credit_card_wallet, lightweight). hasRole(credit_card_wallet, storageContainerRole). affordsTask(credit_card_wallet, leisureTask).
}).
#pos(e1856@10, {}, {goesIn(credit_card_wallet, playroom)}, {
  obj(credit_card_wallet). hasPhysicalQuality(credit_card_wallet, hasContainer). hasPhysicalQuality(credit_card_wallet, lightweight). hasRole(credit_card_wallet, storageContainerRole). affordsTask(credit_card_wallet, leisureTask).
}).
#pos(e1857@10, {}, {goesIn(credit_cards, fridge)}, {
  obj(credit_cards). hasRole(credit_cards, consumableRole).
}).
#pos(e1858@10, {}, {goesIn(credit_cards, pantry)}, {
  obj(credit_cards). hasRole(credit_cards, consumableRole).
}).
#pos(e1859@10, {}, {goesIn(crumbs, drawer)}, {
  obj(crumbs). hasPhysicalQuality(crumbs, granular). hasRole(crumbs, consumableRole). affordsTask(crumbs, eatingDrinkingTask).
}).
#pos(e1860@10, {}, {goesIn(crumbs, hallway)}, {
  obj(crumbs). hasPhysicalQuality(crumbs, granular). hasRole(crumbs, consumableRole). affordsTask(crumbs, eatingDrinkingTask).
}).
#pos(e1861@10, {}, {goesIn(cup, cabinet)}, {
  obj(cup). hasPhysicalQuality(cup, hasContainer). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e1862@10, {}, {goesIn(cup, living_room)}, {
  obj(cup). hasPhysicalQuality(cup, hasContainer). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e1863@10, {}, {goesIn(curtain, garden)}, {
  obj(curtain). hasPhysicalQuality(curtain, lightweight). hasPhysicalQuality(curtain, soft_Deformable). hasRole(curtain, furnitureRole). affordsTask(curtain, leisureTask).
}).
#pos(e1864@10, {}, {goesIn(curtain, laundry_room)}, {
  obj(curtain). hasPhysicalQuality(curtain, lightweight). hasPhysicalQuality(curtain, soft_Deformable). hasRole(curtain, furnitureRole). affordsTask(curtain, leisureTask).
}).
#pos(e1865@10, {}, {goesIn(dandruff_shampoo, fridge)}, {
  obj(dandruff_shampoo). hasPhysicalQuality(dandruff_shampoo, liquid). hasPhysicalQuality(dandruff_shampoo, toxic_Hazardous). hasRole(dandruff_shampoo, cleaningToolRole). affordsTask(dandruff_shampoo, hygieneTask).
}).
#pos(e1866@10, {}, {goesIn(dandruff_shampoo, home_office)}, {
  obj(dandruff_shampoo). hasPhysicalQuality(dandruff_shampoo, liquid). hasPhysicalQuality(dandruff_shampoo, toxic_Hazardous). hasRole(dandruff_shampoo, cleaningToolRole). affordsTask(dandruff_shampoo, hygieneTask).
}).
#pos(e1867@10, {}, {goesIn(denim, music_room)}, {
  obj(denim). hasPhysicalQuality(denim, soft_Deformable). hasPhysicalQuality(denim, washable). hasRole(denim, clothingRole). affordsTask(denim, dressingTask).
}).
#pos(e1868@10, {}, {goesIn(denim, shelf)}, {
  obj(denim). hasPhysicalQuality(denim, soft_Deformable). hasPhysicalQuality(denim, washable). hasRole(denim, clothingRole). affordsTask(denim, dressingTask).
}).
#pos(e1869@10, {}, {goesIn(dental_floss, hallway)}, {
  obj(dental_floss). hasPhysicalQuality(dental_floss, fragile). hasPhysicalQuality(dental_floss, lightweight). hasRole(dental_floss, cleaningToolRole). affordsTask(dental_floss, hygieneTask).
}).
#pos(e1870@10, {}, {goesIn(dental_floss, storage_room)}, {
  obj(dental_floss). hasPhysicalQuality(dental_floss, fragile). hasPhysicalQuality(dental_floss, lightweight). hasRole(dental_floss, cleaningToolRole). affordsTask(dental_floss, hygieneTask).
}).
#pos(e1871@10, {}, {goesIn(desk, bathroom)}, {
  obj(desk). hasPhysicalQuality(desk, heavy). hasPhysicalQuality(desk, rigid). hasRole(desk, furnitureRole). affordsTask(desk, workStudyTask).
}).
#pos(e1872@10, {}, {goesIn(desk, sink)}, {
  obj(desk). hasPhysicalQuality(desk, heavy). hasPhysicalQuality(desk, rigid). hasRole(desk, furnitureRole). affordsTask(desk, workStudyTask).
}).
#pos(e1873@10, {}, {goesIn(desk_drawer, pantry)}, {
  obj(desk_drawer). hasPhysicalQuality(desk_drawer, lightweight). hasPhysicalQuality(desk_drawer, rigid). hasRole(desk_drawer, storageContainerRole). affordsTask(desk_drawer, workStudyTask).
}).
#pos(e1874@10, {}, {goesIn(desk_drawer, storage_room)}, {
  obj(desk_drawer). hasPhysicalQuality(desk_drawer, lightweight). hasPhysicalQuality(desk_drawer, rigid). hasRole(desk_drawer, storageContainerRole). affordsTask(desk_drawer, workStudyTask).
}).
#pos(e1875@10, {}, {goesIn(desk_tray, closet)}, {
  obj(desk_tray). hasPhysicalQuality(desk_tray, hasContainer). hasPhysicalQuality(desk_tray, lightweight). hasRole(desk_tray, storageContainerRole). affordsTask(desk_tray, storageTask).
}).
#pos(e1876@10, {}, {goesIn(desk_tray, hallway)}, {
  obj(desk_tray). hasPhysicalQuality(desk_tray, hasContainer). hasPhysicalQuality(desk_tray, lightweight). hasRole(desk_tray, storageContainerRole). affordsTask(desk_tray, storageTask).
}).
#pos(e1877@10, {}, {goesIn(desserts, closet)}, {
  obj(desserts). hasPhysicalQuality(desserts, perishable). hasRole(desserts, consumableRole). affordsTask(desserts, eatingDrinkingTask).
}).
#pos(e1878@10, {}, {goesIn(desserts, garden)}, {
  obj(desserts). hasPhysicalQuality(desserts, perishable). hasRole(desserts, consumableRole). affordsTask(desserts, eatingDrinkingTask).
}).
#pos(e1879@10, {}, {goesIn(detergent, cabinet)}, {
  obj(detergent). hasPhysicalQuality(detergent, liquid). hasPhysicalQuality(detergent, toxic_Hazardous). hasRole(detergent, cleaningToolRole). affordsTask(detergent, cleaningTask).
}).
#pos(e1880@10, {}, {goesIn(detergent, playroom)}, {
  obj(detergent). hasPhysicalQuality(detergent, liquid). hasPhysicalQuality(detergent, toxic_Hazardous). hasRole(detergent, cleaningToolRole). affordsTask(detergent, cleaningTask).
}).
#pos(e1881@10, {}, {goesIn(dice, closet)}, {
  obj(dice). hasPhysicalQuality(dice, lightweight). hasPhysicalQuality(dice, rigid). hasRole(dice, entertainmentRole). affordsTask(dice, leisureTask).
}).
#pos(e1882@10, {}, {goesIn(dice, garage)}, {
  obj(dice). hasPhysicalQuality(dice, lightweight). hasPhysicalQuality(dice, rigid). hasRole(dice, entertainmentRole). affordsTask(dice, leisureTask).
}).
#pos(e1883@10, {}, {goesIn(dictionaries, garden)}, {
  obj(dictionaries). hasPhysicalQuality(dictionaries, electronic). hasPhysicalQuality(dictionaries, lightweight). hasRole(dictionaries, toolRole). affordsTask(dictionaries, workStudyTask).
}).
#pos(e1884@10, {}, {goesIn(dictionaries, sink)}, {
  obj(dictionaries). hasPhysicalQuality(dictionaries, electronic). hasPhysicalQuality(dictionaries, lightweight). hasRole(dictionaries, toolRole). affordsTask(dictionaries, workStudyTask).
}).
#pos(e1885@10, {}, {goesIn(dictionary, drawer)}, {
  obj(dictionary). hasPhysicalQuality(dictionary, electronic). hasPhysicalQuality(dictionary, lightweight). hasRole(dictionary, toolRole). affordsTask(dictionary, workStudyTask).
}).
#pos(e1886@10, {}, {goesIn(dictionary, hallway)}, {
  obj(dictionary). hasPhysicalQuality(dictionary, electronic). hasPhysicalQuality(dictionary, lightweight). hasRole(dictionary, toolRole). affordsTask(dictionary, workStudyTask).
}).
#pos(e1887@10, {}, {goesIn(dinner_plate, fridge)}, {
  obj(dinner_plate). hasPhysicalQuality(dinner_plate, hasContainer). hasPhysicalQuality(dinner_plate, rigid). hasRole(dinner_plate, utensilRole). affordsTask(dinner_plate, eatingDrinkingTask).
}).
#pos(e1888@10, {}, {goesIn(dinner_plate, trash)}, {
  obj(dinner_plate). hasPhysicalQuality(dinner_plate, hasContainer). hasPhysicalQuality(dinner_plate, rigid). hasRole(dinner_plate, utensilRole). affordsTask(dinner_plate, eatingDrinkingTask).
}).
#pos(e1889@10, {}, {goesIn(dishwasher, garage)}, {
  obj(dishwasher). hasPhysicalQuality(dishwasher, electronic). hasPhysicalQuality(dishwasher, heavy). hasRole(dishwasher, applianceRole). affordsTask(dishwasher, cleaningTask).
}).
#pos(e1890@10, {}, {goesIn(dishwasher, storage_room)}, {
  obj(dishwasher). hasPhysicalQuality(dishwasher, electronic). hasPhysicalQuality(dishwasher, heavy). hasRole(dishwasher, applianceRole). affordsTask(dishwasher, cleaningTask).
}).
#pos(e1891@10, {}, {goesIn(disk, music_room)}, {
  obj(disk). hasRole(disk, storageContainerRole). affordsTask(disk, storageTask).
}).
#pos(e1892@10, {}, {goesIn(disk, pantry)}, {
  obj(disk). hasRole(disk, storageContainerRole). affordsTask(disk, storageTask).
}).
#pos(e1893@10, {}, {goesIn(display_cabinet, bed)}, {
  obj(display_cabinet). hasPhysicalQuality(display_cabinet, heavy). hasPhysicalQuality(display_cabinet, rigid). hasRole(display_cabinet, furnitureRole). affordsTask(display_cabinet, storageTask).
}).
#pos(e1894@10, {}, {goesIn(display_cabinet, garage)}, {
  obj(display_cabinet). hasPhysicalQuality(display_cabinet, heavy). hasPhysicalQuality(display_cabinet, rigid). hasRole(display_cabinet, furnitureRole). affordsTask(display_cabinet, storageTask).
}).
#pos(e1895@10, {}, {goesIn(disposable_razor, cabinet)}, {
  obj(disposable_razor). hasPhysicalQuality(disposable_razor, fragile). hasPhysicalQuality(disposable_razor, sharp). hasRole(disposable_razor, utensilRole). affordsTask(disposable_razor, foodPreparationTask).
}).
#pos(e1896@10, {}, {goesIn(disposable_razor, music_room)}, {
  obj(disposable_razor). hasPhysicalQuality(disposable_razor, fragile). hasPhysicalQuality(disposable_razor, sharp). hasRole(disposable_razor, utensilRole). affordsTask(disposable_razor, foodPreparationTask).
}).
#pos(e1897@10, {}, {goesIn(divider, bed)}, {
  obj(divider). hasPhysicalQuality(divider, lightweight). hasPhysicalQuality(divider, rigid). hasRole(divider, furnitureRole). affordsTask(divider, storageTask).
}).
#pos(e1898@10, {}, {goesIn(divider, garage)}, {
  obj(divider). hasPhysicalQuality(divider, lightweight). hasPhysicalQuality(divider, rigid). hasRole(divider, furnitureRole). affordsTask(divider, storageTask).
}).
#pos(e1899@10, {}, {goesIn(dog, bathroom)}, {
  obj(dog). hasPhysicalQuality(dog, fragile). hasPhysicalQuality(dog, soft_Deformable). affordsTask(dog, leisureTask).
}).
#pos(e1900@10, {}, {goesIn(dog, laundry_room)}, {
  obj(dog). hasPhysicalQuality(dog, fragile). hasPhysicalQuality(dog, soft_Deformable). affordsTask(dog, leisureTask).
}).
#pos(e1901@10, {}, {goesIn(door, closet)}, {
  obj(door). hasPhysicalQuality(door, rigid). hasRole(door, furnitureRole). affordsTask(door, maintenanceTask).
}).
#pos(e1902@10, {}, {goesIn(door, table)}, {
  obj(door). hasPhysicalQuality(door, rigid). hasRole(door, furnitureRole). affordsTask(door, maintenanceTask).
}).
#pos(e1903@10, {}, {goesIn(doormat, drawer)}, {
  obj(doormat). hasPhysicalQuality(doormat, lightweight). hasPhysicalQuality(doormat, soft_Deformable). hasRole(doormat, furnitureRole). affordsTask(doormat, cleaningTask).
}).
#pos(e1904@10, {}, {goesIn(doormat, home_office)}, {
  obj(doormat). hasPhysicalQuality(doormat, lightweight). hasPhysicalQuality(doormat, soft_Deformable). hasRole(doormat, furnitureRole). affordsTask(doormat, cleaningTask).
}).
#pos(e1905@10, {}, {goesIn(doorway, music_room)}, {
  obj(doorway). hasPhysicalQuality(doorway, rigid). hasRole(doorway, furnitureRole).
}).
#pos(e1906@10, {}, {goesIn(doorway, shelf)}, {
  obj(doorway). hasPhysicalQuality(doorway, rigid). hasRole(doorway, furnitureRole).
}).
#pos(e1907@10, {}, {goesIn(drawer, music_room)}, {
  obj(drawer). hasPhysicalQuality(drawer, hasContainer). hasRole(drawer, furnitureRole). hasRole(drawer, storageContainerRole). affordsTask(drawer, storageTask).
}).
#pos(e1908@10, {}, {goesIn(drawer, sink)}, {
  obj(drawer). hasPhysicalQuality(drawer, hasContainer). hasRole(drawer, furnitureRole). hasRole(drawer, storageContainerRole). affordsTask(drawer, storageTask).
}).
#pos(e1909@10, {}, {goesIn(drawstring_bag, bathroom)}, {
  obj(drawstring_bag). hasPhysicalQuality(drawstring_bag, lightweight). hasPhysicalQuality(drawstring_bag, soft_Deformable). hasRole(drawstring_bag, storageContainerRole). affordsTask(drawstring_bag, storageTask).
}).
#pos(e1910@10, {}, {goesIn(drawstring_bag, cabinet)}, {
  obj(drawstring_bag). hasPhysicalQuality(drawstring_bag, lightweight). hasPhysicalQuality(drawstring_bag, soft_Deformable). hasRole(drawstring_bag, storageContainerRole). affordsTask(drawstring_bag, storageTask).
}).
#pos(e1911@10, {}, {goesIn(dresser, cabinet)}, {
  obj(dresser). hasPhysicalQuality(dresser, heavy). hasPhysicalQuality(dresser, rigid). hasRole(dresser, furnitureRole). affordsTask(dresser, storageTask).
}).
#pos(e1912@10, {}, {goesIn(dresser, dining_room)}, {
  obj(dresser). hasPhysicalQuality(dresser, heavy). hasPhysicalQuality(dresser, rigid). hasRole(dresser, furnitureRole). affordsTask(dresser, storageTask).
}).
#pos(e1913@10, {}, {goesIn(drill, bed)}, {
  obj(drill). hasPhysicalQuality(drill, heavy). hasPhysicalQuality(drill, isRotary). hasPhysicalQuality(drill, rigid). hasRole(drill, toolRole). affordsTask(drill, maintenanceTask).
}).
#pos(e1914@10, {}, {goesIn(drill, shelf)}, {
  obj(drill). hasPhysicalQuality(drill, heavy). hasPhysicalQuality(drill, isRotary). hasPhysicalQuality(drill, rigid). hasRole(drill, toolRole). affordsTask(drill, maintenanceTask).
}).
#pos(e1915@10, {}, {goesIn(dry_storage, home_office)}, {
  obj(dry_storage). hasPhysicalQuality(dry_storage, hasContainer). hasRole(dry_storage, storageContainerRole). affordsTask(dry_storage, storageTask).
}).
#pos(e1916@10, {}, {goesIn(dry_storage, sink)}, {
  obj(dry_storage). hasPhysicalQuality(dry_storage, hasContainer). hasRole(dry_storage, storageContainerRole). affordsTask(dry_storage, storageTask).
}).
#pos(e1917@10, {}, {goesIn(dryer, dining_room)}, {
  obj(dryer). hasPhysicalQuality(dryer, electronic). hasPhysicalQuality(dryer, heavy). hasRole(dryer, applianceRole). affordsTask(dryer, maintenanceTask).
}).
#pos(e1918@10, {}, {goesIn(dryer, playroom)}, {
  obj(dryer). hasPhysicalQuality(dryer, electronic). hasPhysicalQuality(dryer, heavy). hasRole(dryer, applianceRole). affordsTask(dryer, maintenanceTask).
}).
#pos(e1919@10, {}, {goesIn(dust, garden)}, {
  obj(dust). hasPhysicalQuality(dust, fragile). hasRole(dust, wasteRole).
}).
#pos(e1920@10, {}, {goesIn(dust, music_room)}, {
  obj(dust). hasPhysicalQuality(dust, fragile). hasRole(dust, wasteRole).
}).
#pos(e1921@10, {}, {goesIn(dustbin, bed)}, {
  obj(dustbin). hasPhysicalQuality(dustbin, heavy). hasPhysicalQuality(dustbin, rigid). hasRole(dustbin, storageContainerRole). hasRole(dustbin, wasteRole). affordsTask(dustbin, wasteDisposalTask).
}).
#pos(e1922@10, {}, {goesIn(dustbin, laundry_room)}, {
  obj(dustbin). hasPhysicalQuality(dustbin, heavy). hasPhysicalQuality(dustbin, rigid). hasRole(dustbin, storageContainerRole). hasRole(dustbin, wasteRole). affordsTask(dustbin, wasteDisposalTask).
}).
#pos(e1923@10, {}, {goesIn(duvet, cabinet)}, {
  obj(duvet). hasPhysicalQuality(duvet, soft_Deformable). hasPhysicalQuality(duvet, washable). hasRole(duvet, beddingRole). affordsTask(duvet, sleepingTask).
}).
#pos(e1924@10, {}, {goesIn(duvet, laundry_room)}, {
  obj(duvet). hasPhysicalQuality(duvet, soft_Deformable). hasPhysicalQuality(duvet, washable). hasRole(duvet, beddingRole). affordsTask(duvet, sleepingTask).
}).
#pos(e1925@10, {}, {goesIn(duvet_cover, garage)}, {
  obj(duvet_cover). hasPhysicalQuality(duvet_cover, soft_Deformable). hasPhysicalQuality(duvet_cover, washable). hasRole(duvet_cover, beddingRole). affordsTask(duvet_cover, sleepingTask).
}).
#pos(e1926@10, {}, {goesIn(duvet_cover, laundry_room)}, {
  obj(duvet_cover). hasPhysicalQuality(duvet_cover, soft_Deformable). hasPhysicalQuality(duvet_cover, washable). hasRole(duvet_cover, beddingRole). affordsTask(duvet_cover, sleepingTask).
}).
#pos(e1927@10, {}, {goesIn(egg, garage)}, {
  obj(egg). hasPhysicalQuality(egg, fragile). hasPhysicalQuality(egg, perishable). hasRole(egg, consumableRole). affordsTask(egg, foodPreparationTask).
}).
#pos(e1928@10, {}, {goesIn(egg, trash)}, {
  obj(egg). hasPhysicalQuality(egg, fragile). hasPhysicalQuality(egg, perishable). hasRole(egg, consumableRole). affordsTask(egg, foodPreparationTask).
}).
#pos(e1929@10, {}, {goesIn(eggs, cabinet)}, {
  obj(eggs). hasPhysicalQuality(eggs, fragile). hasPhysicalQuality(eggs, perishable). hasRole(eggs, consumableRole). affordsTask(eggs, eatingDrinkingTask).
}).
#pos(e1930@10, {}, {goesIn(eggs, table)}, {
  obj(eggs). hasPhysicalQuality(eggs, fragile). hasPhysicalQuality(eggs, perishable). hasRole(eggs, consumableRole). affordsTask(eggs, eatingDrinkingTask).
}).
#pos(e1931@10, {}, {goesIn(electric_blanket, laundry_room)}, {
  obj(electric_blanket). hasPhysicalQuality(electric_blanket, electronic). hasPhysicalQuality(electric_blanket, soft_Deformable). hasPhysicalQuality(electric_blanket, washable). hasRole(electric_blanket, beddingRole). affordsTask(electric_blanket, sleepingTask).
}).
#pos(e1932@10, {}, {goesIn(electric_blanket, shelf)}, {
  obj(electric_blanket). hasPhysicalQuality(electric_blanket, electronic). hasPhysicalQuality(electric_blanket, soft_Deformable). hasPhysicalQuality(electric_blanket, washable). hasRole(electric_blanket, beddingRole). affordsTask(electric_blanket, sleepingTask).
}).
#pos(e1933@10, {}, {goesIn(electric_fan, music_room)}, {
  obj(electric_fan). hasPhysicalQuality(electric_fan, electronic). hasPhysicalQuality(electric_fan, lightweight). hasRole(electric_fan, applianceRole). affordsTask(electric_fan, leisureTask).
}).
#pos(e1934@10, {}, {goesIn(electric_fan, table)}, {
  obj(electric_fan). hasPhysicalQuality(electric_fan, electronic). hasPhysicalQuality(electric_fan, lightweight). hasRole(electric_fan, applianceRole). affordsTask(electric_fan, leisureTask).
}).
#pos(e1935@10, {}, {goesIn(electric_pencil_sharpener, closet)}, {
  obj(electric_pencil_sharpener). hasPhysicalQuality(electric_pencil_sharpener, electronic). hasPhysicalQuality(electric_pencil_sharpener, heavy). hasRole(electric_pencil_sharpener, toolRole). affordsTask(electric_pencil_sharpener, maintenanceTask).
}).
#pos(e1936@10, {}, {goesIn(electric_pencil_sharpener, fridge)}, {
  obj(electric_pencil_sharpener). hasPhysicalQuality(electric_pencil_sharpener, electronic). hasPhysicalQuality(electric_pencil_sharpener, heavy). hasRole(electric_pencil_sharpener, toolRole). affordsTask(electric_pencil_sharpener, maintenanceTask).
}).
#pos(e1937@10, {}, {goesIn(electric_razor, drawer)}, {
  obj(electric_razor). hasPhysicalQuality(electric_razor, electronic). hasPhysicalQuality(electric_razor, lightweight). hasRole(electric_razor, toolRole). affordsTask(electric_razor, hygieneTask).
}).
#pos(e1938@10, {}, {goesIn(electric_razor, living_room)}, {
  obj(electric_razor). hasPhysicalQuality(electric_razor, electronic). hasPhysicalQuality(electric_razor, lightweight). hasRole(electric_razor, toolRole). affordsTask(electric_razor, hygieneTask).
}).
#pos(e1939@10, {}, {goesIn(electric_socket, bathroom)}, {
  obj(electric_socket). hasPhysicalQuality(electric_socket, electronic). hasPhysicalQuality(electric_socket, heavy). hasRole(electric_socket, applianceRole).
}).
#pos(e1940@10, {}, {goesIn(electric_socket, drawer)}, {
  obj(electric_socket). hasPhysicalQuality(electric_socket, electronic). hasPhysicalQuality(electric_socket, heavy). hasRole(electric_socket, applianceRole).
}).
#pos(e1941@10, {}, {goesIn(eraser, hallway)}, {
  obj(eraser). hasPhysicalQuality(eraser, lightweight). hasPhysicalQuality(eraser, soft_Deformable). hasRole(eraser, toolRole). affordsTask(eraser, maintenanceTask).
}).
#pos(e1942@10, {}, {goesIn(eraser, laundry_room)}, {
  obj(eraser). hasPhysicalQuality(eraser, lightweight). hasPhysicalQuality(eraser, soft_Deformable). hasRole(eraser, toolRole). affordsTask(eraser, maintenanceTask).
}).
#pos(e1943@10, {}, {goesIn(eyeglasses_case, garage)}, {
  obj(eyeglasses_case). hasPhysicalQuality(eyeglasses_case, hasContainer). hasPhysicalQuality(eyeglasses_case, lightweight). hasRole(eyeglasses_case, storageContainerRole). affordsTask(eyeglasses_case, storageTask).
}).
#pos(e1944@10, {}, {goesIn(eyeglasses_case, table)}, {
  obj(eyeglasses_case). hasPhysicalQuality(eyeglasses_case, hasContainer). hasPhysicalQuality(eyeglasses_case, lightweight). hasRole(eyeglasses_case, storageContainerRole). affordsTask(eyeglasses_case, storageTask).
}).
#pos(e1945@10, {}, {goesIn(faucet, drawer)}, {
  obj(faucet). hasPhysicalQuality(faucet, electronic). hasPhysicalQuality(faucet, liquid). hasRole(faucet, toolRole). affordsTask(faucet, hygieneTask).
}).
#pos(e1946@10, {}, {goesIn(faucet, garden)}, {
  obj(faucet). hasPhysicalQuality(faucet, electronic). hasPhysicalQuality(faucet, liquid). hasRole(faucet, toolRole). affordsTask(faucet, hygieneTask).
}).
#pos(e1947@10, {}, {goesIn(faucet_overflow, closet)}, {
  obj(faucet_overflow). hasPhysicalQuality(faucet_overflow, liquid). hasRole(faucet_overflow, toolRole). affordsTask(faucet_overflow, maintenanceTask).
}).
#pos(e1948@10, {}, {goesIn(faucet_overflow, living_room)}, {
  obj(faucet_overflow). hasPhysicalQuality(faucet_overflow, liquid). hasRole(faucet_overflow, toolRole). affordsTask(faucet_overflow, maintenanceTask).
}).
#pos(e1949@10, {}, {goesIn(feather, bed)}, {
  obj(feather). hasPhysicalQuality(feather, lightweight). hasPhysicalQuality(feather, soft_Deformable). hasRole(feather, consumableRole). affordsTask(feather, leisureTask).
}).
#pos(e1950@10, {}, {goesIn(feather, playroom)}, {
  obj(feather). hasPhysicalQuality(feather, lightweight). hasPhysicalQuality(feather, soft_Deformable). hasRole(feather, consumableRole). affordsTask(feather, leisureTask).
}).
#pos(e1951@10, {}, {goesIn(feathers, fridge)}, {
  obj(feathers). hasPhysicalQuality(feathers, lightweight). hasPhysicalQuality(feathers, soft_Deformable). hasRole(feathers, consumableRole).
}).
#pos(e1952@10, {}, {goesIn(feathers, garage)}, {
  obj(feathers). hasPhysicalQuality(feathers, lightweight). hasPhysicalQuality(feathers, soft_Deformable). hasRole(feathers, consumableRole).
}).
#pos(e1953@10, {}, {goesIn(felt, laundry_room)}, {
  obj(felt). hasPhysicalQuality(felt, soft_Deformable). hasRole(felt, consumableRole). hasRole(felt, toolRole).
}).
#pos(e1954@10, {}, {goesIn(felt, music_room)}, {
  obj(felt). hasPhysicalQuality(felt, soft_Deformable). hasRole(felt, consumableRole). hasRole(felt, toolRole).
}).
#pos(e1955@10, {}, {goesIn(file, garden)}, {
  obj(file). hasPhysicalQuality(file, lightweight). hasRole(file, documentRole). affordsTask(file, storageTask).
}).
#pos(e1956@10, {}, {goesIn(file, home_office)}, {
  obj(file). hasPhysicalQuality(file, lightweight). hasRole(file, documentRole). affordsTask(file, storageTask).
}).
#pos(e1957@10, {}, {goesIn(file_cabinet, bathroom)}, {
  obj(file_cabinet). hasRole(file_cabinet, storageContainerRole).
}).
#pos(e1958@10, {}, {goesIn(file_cabinet, fridge)}, {
  obj(file_cabinet). hasRole(file_cabinet, storageContainerRole).
}).
#pos(e1959@10, {}, {goesIn(files, fridge)}, {
  obj(files). hasRole(files, documentRole).
}).
#pos(e1960@10, {}, {goesIn(files, laundry_room)}, {
  obj(files). hasRole(files, documentRole).
}).
#pos(e1961@10, {}, {goesIn(filing_box, hallway)}, {
  obj(filing_box). hasPhysicalQuality(filing_box, hasContainer). hasPhysicalQuality(filing_box, heavy). hasRole(filing_box, storageContainerRole). affordsTask(filing_box, storageTask).
}).
#pos(e1962@10, {}, {goesIn(filing_box, kitchen)}, {
  obj(filing_box). hasPhysicalQuality(filing_box, hasContainer). hasPhysicalQuality(filing_box, heavy). hasRole(filing_box, storageContainerRole). affordsTask(filing_box, storageTask).
}).
#pos(e1963@10, {}, {goesIn(film, bedroom)}, {
  obj(film). hasPhysicalQuality(film, fragile). hasRole(film, entertainmentRole). affordsTask(film, leisureTask).
}).
#pos(e1964@10, {}, {goesIn(film, garden)}, {
  obj(film). hasPhysicalQuality(film, fragile). hasRole(film, entertainmentRole). affordsTask(film, leisureTask).
}).
#pos(e1965@10, {}, {goesIn(fire_extinguisher, library)}, {
  obj(fire_extinguisher). hasPhysicalQuality(fire_extinguisher, heavy). hasPhysicalQuality(fire_extinguisher, rigid). hasRole(fire_extinguisher, safetyEquipmentRole). affordsTask(fire_extinguisher, maintenanceTask).
}).
#pos(e1966@10, {}, {goesIn(fire_extinguisher, shelf)}, {
  obj(fire_extinguisher). hasPhysicalQuality(fire_extinguisher, heavy). hasPhysicalQuality(fire_extinguisher, rigid). hasRole(fire_extinguisher, safetyEquipmentRole). affordsTask(fire_extinguisher, maintenanceTask).
}).
#pos(e1967@10, {}, {goesIn(fireplace, laundry_room)}, {
  obj(fireplace). hasPhysicalQuality(fireplace, heated). hasRole(fireplace, applianceRole). affordsTask(fireplace, maintenanceTask).
}).
#pos(e1968@10, {}, {goesIn(fireplace, trash)}, {
  obj(fireplace). hasPhysicalQuality(fireplace, heated). hasRole(fireplace, applianceRole). affordsTask(fireplace, maintenanceTask).
}).
#pos(e1969@10, {}, {goesIn(fish, library)}, {
  obj(fish). hasPhysicalQuality(fish, liquid). hasPhysicalQuality(fish, perishable). hasRole(fish, consumableRole). affordsTask(fish, eatingDrinkingTask).
}).
#pos(e1970@10, {}, {goesIn(fish, storage_room)}, {
  obj(fish). hasPhysicalQuality(fish, liquid). hasPhysicalQuality(fish, perishable). hasRole(fish, consumableRole). affordsTask(fish, eatingDrinkingTask).
}).
#pos(e1971@10, {}, {goesIn(flask, bathroom)}, {
  obj(flask). hasPhysicalQuality(flask, hasContainer). hasPhysicalQuality(flask, liquid). hasRole(flask, utensilRole). affordsTask(flask, eatingDrinkingTask).
}).
#pos(e1972@10, {}, {goesIn(flask, closet)}, {
  obj(flask). hasPhysicalQuality(flask, hasContainer). hasPhysicalQuality(flask, liquid). hasRole(flask, utensilRole). affordsTask(flask, eatingDrinkingTask).
}).
#pos(e1973@10, {}, {goesIn(floor, hallway)}, {
  obj(floor). hasPhysicalQuality(floor, heavy). hasPhysicalQuality(floor, rigid). hasRole(floor, furnitureRole). affordsTask(floor, storageTask).
}).
#pos(e1974@10, {}, {goesIn(floor, laundry_room)}, {
  obj(floor). hasPhysicalQuality(floor, heavy). hasPhysicalQuality(floor, rigid). hasRole(floor, furnitureRole). affordsTask(floor, storageTask).
}).
#pos(e1975@10, {}, {goesIn(flooring, home_office)}, {
  obj(flooring). hasPhysicalQuality(flooring, rigid). hasRole(flooring, furnitureRole).
}).
#pos(e1976@10, {}, {goesIn(flooring, table)}, {
  obj(flooring). hasPhysicalQuality(flooring, rigid). hasRole(flooring, furnitureRole).
}).
#pos(e1977@10, {}, {goesIn(flour, bed)}, {
  obj(flour). hasPhysicalQuality(flour, granular). hasRole(flour, consumableRole). affordsTask(flour, foodPreparationTask).
}).
#pos(e1978@10, {}, {goesIn(flour, closet)}, {
  obj(flour). hasPhysicalQuality(flour, granular). hasRole(flour, consumableRole). affordsTask(flour, foodPreparationTask).
}).
#pos(e1979@10, {}, {goesIn(flower, laundry_room)}, {
  obj(flower). hasPhysicalQuality(flower, perishable). hasRole(flower, consumableRole).
}).
#pos(e1980@10, {}, {goesIn(flower, sink)}, {
  obj(flower). hasPhysicalQuality(flower, perishable). hasRole(flower, consumableRole).
}).
#pos(e1981@10, {}, {goesIn(folder, hallway)}, {
  obj(folder). hasRole(folder, storageContainerRole). affordsTask(folder, storageTask).
}).
#pos(e1982@10, {}, {goesIn(folder, home_office)}, {
  obj(folder). hasRole(folder, storageContainerRole). affordsTask(folder, storageTask).
}).
#pos(e1983@10, {}, {goesIn(folding_chair, music_room)}, {
  obj(folding_chair). hasPhysicalQuality(folding_chair, lightweight). hasPhysicalQuality(folding_chair, rigid). hasRole(folding_chair, furnitureRole). affordsTask(folding_chair, storageTask).
}).
#pos(e1984@10, {}, {goesIn(folding_chair, table)}, {
  obj(folding_chair). hasPhysicalQuality(folding_chair, lightweight). hasPhysicalQuality(folding_chair, rigid). hasRole(folding_chair, furnitureRole). affordsTask(folding_chair, storageTask).
}).
#pos(e1985@10, {}, {goesIn(folding_door, dining_room)}, {
  obj(folding_door). hasPhysicalQuality(folding_door, lightweight). hasRole(folding_door, furnitureRole). affordsTask(folding_door, storageTask).
}).
#pos(e1986@10, {}, {goesIn(folding_door, sink)}, {
  obj(folding_door). hasPhysicalQuality(folding_door, lightweight). hasRole(folding_door, furnitureRole). affordsTask(folding_door, storageTask).
}).
#pos(e1987@10, {}, {goesIn(folding_shower_door, laundry_room)}, {
  obj(folding_shower_door). hasPhysicalQuality(folding_shower_door, lightweight). hasPhysicalQuality(folding_shower_door, rigid). hasRole(folding_shower_door, furnitureRole). affordsTask(folding_shower_door, leisureTask).
}).
#pos(e1988@10, {}, {goesIn(folding_shower_door, sink)}, {
  obj(folding_shower_door). hasPhysicalQuality(folding_shower_door, lightweight). hasPhysicalQuality(folding_shower_door, rigid). hasRole(folding_shower_door, furnitureRole). affordsTask(folding_shower_door, leisureTask).
}).
#pos(e1989@10, {}, {goesIn(footstool, drawer)}, {
  obj(footstool). hasPhysicalQuality(footstool, heavy). hasPhysicalQuality(footstool, rigid). hasRole(footstool, furnitureRole). affordsTask(footstool, leisureTask).
}).
#pos(e1990@10, {}, {goesIn(footstool, garden)}, {
  obj(footstool). hasPhysicalQuality(footstool, heavy). hasPhysicalQuality(footstool, rigid). hasRole(footstool, furnitureRole). affordsTask(footstool, leisureTask).
}).
#pos(e1991@10, {}, {goesIn(fork, bed)}, {
  obj(fork). hasPhysicalQuality(fork, rigid). hasPhysicalQuality(fork, sharp). hasRole(fork, utensilRole). affordsTask(fork, foodPreparationTask).
}).
#pos(e1992@10, {}, {goesIn(fork, living_room)}, {
  obj(fork). hasPhysicalQuality(fork, rigid). hasPhysicalQuality(fork, sharp). hasRole(fork, utensilRole). affordsTask(fork, foodPreparationTask).
}).
#pos(e1993@10, {}, {goesIn(forks, bathroom)}, {
  obj(forks). hasPhysicalQuality(forks, rigid). hasPhysicalQuality(forks, sharp). hasRole(forks, utensilRole). affordsTask(forks, foodPreparationTask).
}).
#pos(e1994@10, {}, {goesIn(forks, music_room)}, {
  obj(forks). hasPhysicalQuality(forks, rigid). hasPhysicalQuality(forks, sharp). hasRole(forks, utensilRole). affordsTask(forks, foodPreparationTask).
}).
#pos(e1995@10, {}, {goesIn(foundation, shelf)}, {
  obj(foundation). hasPhysicalQuality(foundation, heavy). hasRole(foundation, furnitureRole).
}).
#pos(e1996@10, {}, {goesIn(foundation, trash)}, {
  obj(foundation). hasPhysicalQuality(foundation, heavy). hasRole(foundation, furnitureRole).
}).
#pos(e1997@10, {}, {goesIn(freezer, drawer)}, {
  obj(freezer). hasPhysicalQuality(freezer, requiresFreezing). hasRole(freezer, applianceRole). affordsTask(freezer, storageTask).
}).
#pos(e1998@10, {}, {goesIn(freezer, laundry_room)}, {
  obj(freezer). hasPhysicalQuality(freezer, requiresFreezing). hasRole(freezer, applianceRole). affordsTask(freezer, storageTask).
}).
#pos(e1999@10, {}, {goesIn(fridge, bedroom)}, {
  obj(fridge). hasPhysicalQuality(fridge, electronic). hasPhysicalQuality(fridge, heavy). hasRole(fridge, applianceRole). affordsTask(fridge, storageTask).
}).
#pos(e2000@10, {}, {goesIn(fridge, library)}, {
  obj(fridge). hasPhysicalQuality(fridge, electronic). hasPhysicalQuality(fridge, heavy). hasRole(fridge, applianceRole). affordsTask(fridge, storageTask).
}).
#pos(e2001@10, {}, {goesIn(frisbee, home_office)}, {
  obj(frisbee). hasPhysicalQuality(frisbee, lightweight). hasPhysicalQuality(frisbee, rigid). hasRole(frisbee, entertainmentRole). hasRole(frisbee, toolRole). affordsTask(frisbee, leisureTask). affordsTask(frisbee, maintenanceTask).
}).
#pos(e2002@10, {}, {goesIn(frisbee, table)}, {
  obj(frisbee). hasPhysicalQuality(frisbee, lightweight). hasPhysicalQuality(frisbee, rigid). hasRole(frisbee, entertainmentRole). hasRole(frisbee, toolRole). affordsTask(frisbee, leisureTask). affordsTask(frisbee, maintenanceTask).
}).
#pos(e2003@10, {}, {goesIn(frying_pan, hallway)}, {
  obj(frying_pan). hasPhysicalQuality(frying_pan, heated). hasPhysicalQuality(frying_pan, rigid). hasRole(frying_pan, cookwareRole). affordsTask(frying_pan, foodPreparationTask).
}).
#pos(e2004@10, {}, {goesIn(frying_pan, sink)}, {
  obj(frying_pan). hasPhysicalQuality(frying_pan, heated). hasPhysicalQuality(frying_pan, rigid). hasRole(frying_pan, cookwareRole). affordsTask(frying_pan, foodPreparationTask).
}).
#pos(e2005@10, {}, {goesIn(garage, closet)}, {
  obj(garage). hasPhysicalQuality(garage, heavy). hasPhysicalQuality(garage, rigid). hasRole(garage, furnitureRole). hasRole(garage, storageContainerRole). affordsTask(garage, storageTask).
}).
#pos(e2006@10, {}, {goesIn(garage, trash)}, {
  obj(garage). hasPhysicalQuality(garage, heavy). hasPhysicalQuality(garage, rigid). hasRole(garage, furnitureRole). hasRole(garage, storageContainerRole). affordsTask(garage, storageTask).
}).
#pos(e2007@10, {}, {goesIn(garbage, home_office)}, {
  obj(garbage). hasRole(garbage, consumableRole). hasRole(garbage, storageContainerRole). affordsTask(garbage, wasteDisposalTask).
}).
#pos(e2008@10, {}, {goesIn(garbage, laundry_room)}, {
  obj(garbage). hasRole(garbage, consumableRole). hasRole(garbage, storageContainerRole). affordsTask(garbage, wasteDisposalTask).
}).
#pos(e2009@10, {}, {goesIn(garbage_can, hallway)}, {
  obj(garbage_can). hasPhysicalQuality(garbage_can, hasContainer). hasPhysicalQuality(garbage_can, heavy). hasRole(garbage_can, storageContainerRole). affordsTask(garbage_can, wasteDisposalTask).
}).
#pos(e2010@10, {}, {goesIn(garbage_can, trash)}, {
  obj(garbage_can). hasPhysicalQuality(garbage_can, hasContainer). hasPhysicalQuality(garbage_can, heavy). hasRole(garbage_can, storageContainerRole). affordsTask(garbage_can, wasteDisposalTask).
}).
#pos(e2011@10, {}, {goesIn(garbage_waste, home_office)}, {
  obj(garbage_waste). hasRole(garbage_waste, consumableRole). hasRole(garbage_waste, wasteRole). affordsTask(garbage_waste, wasteDisposalTask).
}).
#pos(e2012@10, {}, {goesIn(garbage_waste, living_room)}, {
  obj(garbage_waste). hasRole(garbage_waste, consumableRole). hasRole(garbage_waste, wasteRole). affordsTask(garbage_waste, wasteDisposalTask).
}).
#pos(e2013@10, {}, {goesIn(garden, laundry_room)}, {
  obj(garden). hasPhysicalQuality(garden, lightweight). hasPhysicalQuality(garden, soft_Deformable). hasRole(garden, furnitureRole). affordsTask(garden, leisureTask).
}).
#pos(e2014@10, {}, {goesIn(garden, trash)}, {
  obj(garden). hasPhysicalQuality(garden, lightweight). hasPhysicalQuality(garden, soft_Deformable). hasRole(garden, furnitureRole). affordsTask(garden, leisureTask).
}).
#pos(e2015@10, {}, {goesIn(garden_hose, hallway)}, {
  obj(garden_hose). hasPhysicalQuality(garden_hose, liquid). hasRole(garden_hose, toolRole). affordsTask(garden_hose, gardeningTask). affordsTask(garden_hose, hygieneTask).
}).
#pos(e2016@10, {}, {goesIn(garden_hose, playroom)}, {
  obj(garden_hose). hasPhysicalQuality(garden_hose, liquid). hasRole(garden_hose, toolRole). affordsTask(garden_hose, gardeningTask). affordsTask(garden_hose, hygieneTask).
}).
#pos(e2017@10, {}, {goesIn(garlic, closet)}, {
  obj(garlic). hasPhysicalQuality(garlic, perishable). hasRole(garlic, consumableRole). affordsTask(garlic, foodPreparationTask).
}).
#pos(e2018@10, {}, {goesIn(garlic, drawer)}, {
  obj(garlic). hasPhysicalQuality(garlic, perishable). hasRole(garlic, consumableRole). affordsTask(garlic, foodPreparationTask).
}).
#pos(e2019@10, {}, {goesIn(garment_bag, living_room)}, {
  obj(garment_bag). hasPhysicalQuality(garment_bag, lightweight). hasPhysicalQuality(garment_bag, soft_Deformable). hasRole(garment_bag, storageContainerRole). affordsTask(garment_bag, storageTask).
}).
#pos(e2020@10, {}, {goesIn(garment_bag, trash)}, {
  obj(garment_bag). hasPhysicalQuality(garment_bag, lightweight). hasPhysicalQuality(garment_bag, soft_Deformable). hasRole(garment_bag, storageContainerRole). affordsTask(garment_bag, storageTask).
}).
#pos(e2021@10, {}, {goesIn(gate, laundry_room)}, {
  obj(gate). hasPhysicalQuality(gate, heavy). hasPhysicalQuality(gate, rigid). hasRole(gate, furnitureRole). affordsTask(gate, maintenanceTask).
}).
#pos(e2022@10, {}, {goesIn(gate, table)}, {
  obj(gate). hasPhysicalQuality(gate, heavy). hasPhysicalQuality(gate, rigid). hasRole(gate, furnitureRole). affordsTask(gate, maintenanceTask).
}).
#pos(e2023@10, {}, {goesIn(gate_leg_table, drawer)}, {
  obj(gate_leg_table). hasPhysicalQuality(gate_leg_table, heavy). hasPhysicalQuality(gate_leg_table, rigid). hasRole(gate_leg_table, furnitureRole). affordsTask(gate_leg_table, storageTask).
}).
#pos(e2024@10, {}, {goesIn(gate_leg_table, sink)}, {
  obj(gate_leg_table). hasPhysicalQuality(gate_leg_table, heavy). hasPhysicalQuality(gate_leg_table, rigid). hasRole(gate_leg_table, furnitureRole). affordsTask(gate_leg_table, storageTask).
}).
#pos(e2025@10, {}, {goesIn(gel_toothpaste, hallway)}, {
  obj(gel_toothpaste). hasPhysicalQuality(gel_toothpaste, liquid). hasPhysicalQuality(gel_toothpaste, toxic_Hazardous). hasRole(gel_toothpaste, cleaningToolRole). affordsTask(gel_toothpaste, hygieneTask).
}).
#pos(e2026@10, {}, {goesIn(gel_toothpaste, sink)}, {
  obj(gel_toothpaste). hasPhysicalQuality(gel_toothpaste, liquid). hasPhysicalQuality(gel_toothpaste, toxic_Hazardous). hasRole(gel_toothpaste, cleaningToolRole). affordsTask(gel_toothpaste, hygieneTask).
}).
#pos(e2027@10, {}, {goesIn(glass, bathroom)}, {
  obj(glass). hasPhysicalQuality(glass, fragile). hasPhysicalQuality(glass, rigid). hasRole(glass, utensilRole). affordsTask(glass, eatingDrinkingTask).
}).
#pos(e2028@10, {}, {goesIn(glass, music_room)}, {
  obj(glass). hasPhysicalQuality(glass, fragile). hasPhysicalQuality(glass, rigid). hasRole(glass, utensilRole). affordsTask(glass, eatingDrinkingTask).
}).
#pos(e2029@10, {}, {goesIn(glass_fronted_cupboard, fridge)}, {
  obj(glass_fronted_cupboard). hasPhysicalQuality(glass_fronted_cupboard, heavy). hasPhysicalQuality(glass_fronted_cupboard, rigid). hasRole(glass_fronted_cupboard, storageContainerRole). affordsTask(glass_fronted_cupboard, storageTask).
}).
#pos(e2030@10, {}, {goesIn(glass_fronted_cupboard, hallway)}, {
  obj(glass_fronted_cupboard). hasPhysicalQuality(glass_fronted_cupboard, heavy). hasPhysicalQuality(glass_fronted_cupboard, rigid). hasRole(glass_fronted_cupboard, storageContainerRole). affordsTask(glass_fronted_cupboard, storageTask).
}).
#pos(e2031@10, {}, {goesIn(glass_fronted_display_cabinet, library)}, {
  obj(glass_fronted_display_cabinet). hasPhysicalQuality(glass_fronted_display_cabinet, heavy). hasPhysicalQuality(glass_fronted_display_cabinet, rigid). hasRole(glass_fronted_display_cabinet, furnitureRole). hasRole(glass_fronted_display_cabinet, storageContainerRole). affordsTask(glass_fronted_display_cabinet, storageTask).
}).
#pos(e2032@10, {}, {goesIn(glass_fronted_display_cabinet, sink)}, {
  obj(glass_fronted_display_cabinet). hasPhysicalQuality(glass_fronted_display_cabinet, heavy). hasPhysicalQuality(glass_fronted_display_cabinet, rigid). hasRole(glass_fronted_display_cabinet, furnitureRole). hasRole(glass_fronted_display_cabinet, storageContainerRole). affordsTask(glass_fronted_display_cabinet, storageTask).
}).
#pos(e2033@10, {}, {goesIn(glass_of_water, shelf)}, {
  obj(glass_of_water). hasPhysicalQuality(glass_of_water, liquid). hasRole(glass_of_water, consumableRole). hasRole(glass_of_water, utensilRole). affordsTask(glass_of_water, eatingDrinkingTask).
}).
#pos(e2034@10, {}, {goesIn(glass_of_water, sink)}, {
  obj(glass_of_water). hasPhysicalQuality(glass_of_water, liquid). hasRole(glass_of_water, consumableRole). hasRole(glass_of_water, utensilRole). affordsTask(glass_of_water, eatingDrinkingTask).
}).
#pos(e2035@10, {}, {goesIn(glasses, kitchen)}, {
  obj(glasses). hasPhysicalQuality(glasses, lightweight). hasRole(glasses, utensilRole). affordsTask(glasses, eatingDrinkingTask).
}).
#pos(e2036@10, {}, {goesIn(glasses, music_room)}, {
  obj(glasses). hasPhysicalQuality(glasses, lightweight). hasRole(glasses, utensilRole). affordsTask(glasses, eatingDrinkingTask).
}).
#pos(e2037@10, {}, {goesIn(glasses_case, living_room)}, {
  obj(glasses_case). hasPhysicalQuality(glasses_case, lightweight). hasPhysicalQuality(glasses_case, soft_Deformable). hasRole(glasses_case, storageContainerRole). affordsTask(glasses_case, storageTask).
}).
#pos(e2038@10, {}, {goesIn(glasses_case, table)}, {
  obj(glasses_case). hasPhysicalQuality(glasses_case, lightweight). hasPhysicalQuality(glasses_case, soft_Deformable). hasRole(glasses_case, storageContainerRole). affordsTask(glasses_case, storageTask).
}).
#pos(e2039@10, {}, {goesIn(glue, fridge)}, {
  obj(glue). hasPhysicalQuality(glue, fragile). hasPhysicalQuality(glue, liquid). hasRole(glue, toolRole). affordsTask(glue, maintenanceTask).
}).
#pos(e2040@10, {}, {goesIn(glue, playroom)}, {
  obj(glue). hasPhysicalQuality(glue, fragile). hasPhysicalQuality(glue, liquid). hasRole(glue, toolRole). affordsTask(glue, maintenanceTask).
}).
#pos(e2041@10, {}, {goesIn(glue_stick, dining_room)}, {
  obj(glue_stick). hasPhysicalQuality(glue_stick, fragile). hasPhysicalQuality(glue_stick, liquid). hasRole(glue_stick, toolRole). affordsTask(glue_stick, maintenanceTask).
}).
#pos(e2042@10, {}, {goesIn(glue_stick, music_room)}, {
  obj(glue_stick). hasPhysicalQuality(glue_stick, fragile). hasPhysicalQuality(glue_stick, liquid). hasRole(glue_stick, toolRole). affordsTask(glue_stick, maintenanceTask).
}).
#pos(e2043@10, {}, {goesIn(good_book, bedroom)}, {
  obj(good_book). hasRole(good_book, documentRole). affordsTask(good_book, leisureTask).
}).
#pos(e2044@10, {}, {goesIn(good_book, table)}, {
  obj(good_book). hasRole(good_book, documentRole). affordsTask(good_book, leisureTask).
}).
#pos(e2045@10, {}, {goesIn(grape, home_office)}, {
  obj(grape). hasPhysicalQuality(grape, fragile). hasPhysicalQuality(grape, perishable). hasRole(grape, consumableRole). affordsTask(grape, eatingDrinkingTask).
}).
#pos(e2046@10, {}, {goesIn(grape, sink)}, {
  obj(grape). hasPhysicalQuality(grape, fragile). hasPhysicalQuality(grape, perishable). hasRole(grape, consumableRole). affordsTask(grape, eatingDrinkingTask).
}).
#pos(e2047@10, {}, {goesIn(grape_juice, storage_room)}, {
  obj(grape_juice). hasPhysicalQuality(grape_juice, liquid). hasRole(grape_juice, consumableRole). affordsTask(grape_juice, eatingDrinkingTask).
}).
#pos(e2048@10, {}, {goesIn(grape_juice, table)}, {
  obj(grape_juice). hasPhysicalQuality(grape_juice, liquid). hasRole(grape_juice, consumableRole). affordsTask(grape_juice, eatingDrinkingTask).
}).
#pos(e2049@10, {}, {goesIn(grapes, home_office)}, {
  obj(grapes). hasPhysicalQuality(grapes, perishable). hasRole(grapes, consumableRole). affordsTask(grapes, eatingDrinkingTask).
}).
#pos(e2050@10, {}, {goesIn(grapes, sink)}, {
  obj(grapes). hasPhysicalQuality(grapes, perishable). hasRole(grapes, consumableRole). affordsTask(grapes, eatingDrinkingTask).
}).
#pos(e2051@10, {}, {goesIn(grease, bedroom)}, {
  obj(grease). hasPhysicalQuality(grease, fragile). hasPhysicalQuality(grease, liquid). hasRole(grease, cleaningToolRole). affordsTask(grease, maintenanceTask).
}).
#pos(e2052@10, {}, {goesIn(grease, fridge)}, {
  obj(grease). hasPhysicalQuality(grease, fragile). hasPhysicalQuality(grease, liquid). hasRole(grease, cleaningToolRole). affordsTask(grease, maintenanceTask).
}).
#pos(e2053@10, {}, {goesIn(grill, garden)}, {
  obj(grill). hasPhysicalQuality(grill, heated). hasPhysicalQuality(grill, heavy). hasRole(grill, cookwareRole). affordsTask(grill, foodPreparationTask).
}).
#pos(e2054@10, {}, {goesIn(grill, table)}, {
  obj(grill). hasPhysicalQuality(grill, heated). hasPhysicalQuality(grill, heavy). hasRole(grill, cookwareRole). affordsTask(grill, foodPreparationTask).
}).
#pos(e2055@10, {}, {goesIn(groceries, fridge)}, {
  obj(groceries). hasPhysicalQuality(groceries, perishable). hasRole(groceries, consumableRole). affordsTask(groceries, eatingDrinkingTask).
}).
#pos(e2056@10, {}, {goesIn(groceries, garden)}, {
  obj(groceries). hasPhysicalQuality(groceries, perishable). hasRole(groceries, consumableRole). affordsTask(groceries, eatingDrinkingTask).
}).
#pos(e2057@10, {}, {goesIn(gum, bathroom)}, {
  obj(gum). hasPhysicalQuality(gum, liquid). hasPhysicalQuality(gum, perishable). hasRole(gum, consumableRole). affordsTask(gum, eatingDrinkingTask).
}).
#pos(e2058@10, {}, {goesIn(gum, closet)}, {
  obj(gum). hasPhysicalQuality(gum, liquid). hasPhysicalQuality(gum, perishable). hasRole(gum, consumableRole). affordsTask(gum, eatingDrinkingTask).
}).
#pos(e2059@10, {}, {goesIn(gutter, bed)}, {
  obj(gutter). hasPhysicalQuality(gutter, heavy). hasPhysicalQuality(gutter, rigid). hasRole(gutter, toolRole). affordsTask(gutter, maintenanceTask).
}).
#pos(e2060@10, {}, {goesIn(gutter, fridge)}, {
  obj(gutter). hasPhysicalQuality(gutter, heavy). hasPhysicalQuality(gutter, rigid). hasRole(gutter, toolRole). affordsTask(gutter, maintenanceTask).
}).
#pos(e2061@10, {}, {goesIn(hair_dryer, cabinet)}, {
  obj(hair_dryer). hasPhysicalQuality(hair_dryer, electronic). hasPhysicalQuality(hair_dryer, heavy). hasRole(hair_dryer, applianceRole). affordsTask(hair_dryer, leisureTask).
}).
#pos(e2062@10, {}, {goesIn(hair_dryer, shelf)}, {
  obj(hair_dryer). hasPhysicalQuality(hair_dryer, electronic). hasPhysicalQuality(hair_dryer, heavy). hasRole(hair_dryer, applianceRole). affordsTask(hair_dryer, leisureTask).
}).
#pos(e2063@10, {}, {goesIn(hairbrush, music_room)}, {
  obj(hairbrush). hasPhysicalQuality(hairbrush, lightweight). hasPhysicalQuality(hairbrush, rigid). hasRole(hairbrush, toolRole). affordsTask(hairbrush, hygieneTask).
}).
#pos(e2064@10, {}, {goesIn(hairbrush, pantry)}, {
  obj(hairbrush). hasPhysicalQuality(hairbrush, lightweight). hasPhysicalQuality(hairbrush, rigid). hasRole(hairbrush, toolRole). affordsTask(hairbrush, hygieneTask).
}).
#pos(e2065@10, {}, {goesIn(hammer, shelf)}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e2066@10, {}, {goesIn(hammer, storage_room)}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e2067@10, {}, {goesIn(handbag, garage)}, {
  obj(handbag). hasPhysicalQuality(handbag, lightweight). hasPhysicalQuality(handbag, soft_Deformable). hasRole(handbag, storageContainerRole). affordsTask(handbag, storageTask).
}).
#pos(e2068@10, {}, {goesIn(handbag, library)}, {
  obj(handbag). hasPhysicalQuality(handbag, lightweight). hasPhysicalQuality(handbag, soft_Deformable). hasRole(handbag, storageContainerRole). affordsTask(handbag, storageTask).
}).
#pos(e2069@10, {}, {goesIn(hanger, library)}, {
  obj(hanger). hasPhysicalQuality(hanger, lightweight). hasPhysicalQuality(hanger, rigid). hasPhysicalQuality(hanger, soft_Deformable). hasRole(hanger, clothingRole). affordsTask(hanger, dressingTask).
}).
#pos(e2070@10, {}, {goesIn(hanger, pantry)}, {
  obj(hanger). hasPhysicalQuality(hanger, lightweight). hasPhysicalQuality(hanger, rigid). hasPhysicalQuality(hanger, soft_Deformable). hasRole(hanger, clothingRole). affordsTask(hanger, dressingTask).
}).
#pos(e2071@10, {}, {goesIn(hard_drive, closet)}, {
  obj(hard_drive). hasPhysicalQuality(hard_drive, electronic). hasPhysicalQuality(hard_drive, heavy). hasRole(hard_drive, applianceRole). affordsTask(hard_drive, storageTask).
}).
#pos(e2072@10, {}, {goesIn(hard_drive, fridge)}, {
  obj(hard_drive). hasPhysicalQuality(hard_drive, electronic). hasPhysicalQuality(hard_drive, heavy). hasRole(hard_drive, applianceRole). affordsTask(hard_drive, storageTask).
}).
#pos(e2073@10, {}, {goesIn(hat, bathroom)}, {
  obj(hat). hasPhysicalQuality(hat, lightweight). hasPhysicalQuality(hat, soft_Deformable). hasRole(hat, clothingRole). affordsTask(hat, dressingTask).
}).
#pos(e2074@10, {}, {goesIn(hat, dining_room)}, {
  obj(hat). hasPhysicalQuality(hat, lightweight). hasPhysicalQuality(hat, soft_Deformable). hasRole(hat, clothingRole). affordsTask(hat, dressingTask).
}).
#pos(e2075@10, {}, {goesIn(heated_towel_rack, garage)}, {
  obj(heated_towel_rack). hasPhysicalQuality(heated_towel_rack, heated). hasRole(heated_towel_rack, applianceRole). affordsTask(heated_towel_rack, hygieneTask).
}).
#pos(e2076@10, {}, {goesIn(heated_towel_rack, living_room)}, {
  obj(heated_towel_rack). hasPhysicalQuality(heated_towel_rack, heated). hasRole(heated_towel_rack, applianceRole). affordsTask(heated_towel_rack, hygieneTask).
}).
#pos(e2077@10, {}, {goesIn(heater, drawer)}, {
  obj(heater). hasPhysicalQuality(heater, heated). hasRole(heater, applianceRole). affordsTask(heater, maintenanceTask).
}).
#pos(e2078@10, {}, {goesIn(heater, playroom)}, {
  obj(heater). hasPhysicalQuality(heater, heated). hasRole(heater, applianceRole). affordsTask(heater, maintenanceTask).
}).
#pos(e2079@10, {}, {goesIn(hide_bed, bed)}, {
  obj(hide_bed). hasPhysicalQuality(hide_bed, lightweight). hasPhysicalQuality(hide_bed, soft_Deformable). hasRole(hide_bed, furnitureRole). affordsTask(hide_bed, sleepingTask).
}).
#pos(e2080@10, {}, {goesIn(hide_bed, pantry)}, {
  obj(hide_bed). hasPhysicalQuality(hide_bed, lightweight). hasPhysicalQuality(hide_bed, soft_Deformable). hasRole(hide_bed, furnitureRole). affordsTask(hide_bed, sleepingTask).
}).
#pos(e2081@10, {}, {goesIn(hide_bed_sofa, garage)}, {
  obj(hide_bed_sofa). hasPhysicalQuality(hide_bed_sofa, fragile). hasPhysicalQuality(hide_bed_sofa, soft_Deformable). hasRole(hide_bed_sofa, furnitureRole). affordsTask(hide_bed_sofa, sleepingTask).
}).
#pos(e2082@10, {}, {goesIn(hide_bed_sofa, playroom)}, {
  obj(hide_bed_sofa). hasPhysicalQuality(hide_bed_sofa, fragile). hasPhysicalQuality(hide_bed_sofa, soft_Deformable). hasRole(hide_bed_sofa, furnitureRole). affordsTask(hide_bed_sofa, sleepingTask).
}).
#pos(e2083@10, {}, {goesIn(highlighter, cabinet)}, {
  obj(highlighter). hasPhysicalQuality(highlighter, lightweight). hasPhysicalQuality(highlighter, rigid). hasRole(highlighter, utensilRole). affordsTask(highlighter, foodPreparationTask).
}).
#pos(e2084@10, {}, {goesIn(highlighter, library)}, {
  obj(highlighter). hasPhysicalQuality(highlighter, lightweight). hasPhysicalQuality(highlighter, rigid). hasRole(highlighter, utensilRole). affordsTask(highlighter, foodPreparationTask).
}).
#pos(e2085@10, {}, {goesIn(highlighter_pen, closet)}, {
  obj(highlighter_pen). hasPhysicalQuality(highlighter_pen, lightweight). hasPhysicalQuality(highlighter_pen, rigid). hasRole(highlighter_pen, utensilRole). affordsTask(highlighter_pen, foodPreparationTask).
}).
#pos(e2086@10, {}, {goesIn(highlighter_pen, library)}, {
  obj(highlighter_pen). hasPhysicalQuality(highlighter_pen, lightweight). hasPhysicalQuality(highlighter_pen, rigid). hasRole(highlighter_pen, utensilRole). affordsTask(highlighter_pen, foodPreparationTask).
}).
#pos(e2087@10, {}, {goesIn(hinged_door, sink)}, {
  obj(hinged_door). hasPhysicalQuality(hinged_door, heavy). hasPhysicalQuality(hinged_door, rigid). hasRole(hinged_door, furnitureRole). affordsTask(hinged_door, storageTask).
}).
#pos(e2088@10, {}, {goesIn(hinged_door, storage_room)}, {
  obj(hinged_door). hasPhysicalQuality(hinged_door, heavy). hasPhysicalQuality(hinged_door, rigid). hasRole(hinged_door, furnitureRole). affordsTask(hinged_door, storageTask).
}).
#pos(e2089@10, {}, {goesIn(holdall, kitchen)}, {
  obj(holdall). hasPhysicalQuality(holdall, lightweight). hasPhysicalQuality(holdall, soft_Deformable). hasRole(holdall, storageContainerRole). affordsTask(holdall, storageTask).
}).
#pos(e2090@10, {}, {goesIn(holdall, storage_room)}, {
  obj(holdall). hasPhysicalQuality(holdall, lightweight). hasPhysicalQuality(holdall, soft_Deformable). hasRole(holdall, storageContainerRole). affordsTask(holdall, storageTask).
}).
#pos(e2091@10, {}, {goesIn(hole_punch, library)}, {
  obj(hole_punch). hasPhysicalQuality(hole_punch, hasBlade). hasPhysicalQuality(hole_punch, heavy). hasPhysicalQuality(hole_punch, rigid). hasPhysicalQuality(hole_punch, sharp). hasRole(hole_punch, toolRole). affordsTask(hole_punch, maintenanceTask).
}).
#pos(e2092@10, {}, {goesIn(hole_punch, shelf)}, {
  obj(hole_punch). hasPhysicalQuality(hole_punch, hasBlade). hasPhysicalQuality(hole_punch, heavy). hasPhysicalQuality(hole_punch, rigid). hasPhysicalQuality(hole_punch, sharp). hasRole(hole_punch, toolRole). affordsTask(hole_punch, maintenanceTask).
}).
#pos(e2093@10, {}, {goesIn(honey, laundry_room)}, {
  obj(honey). hasPhysicalQuality(honey, perishable). hasRole(honey, consumableRole). affordsTask(honey, eatingDrinkingTask).
}).
#pos(e2094@10, {}, {goesIn(honey, music_room)}, {
  obj(honey). hasPhysicalQuality(honey, perishable). hasRole(honey, consumableRole). affordsTask(honey, eatingDrinkingTask).
}).
#pos(e2095@10, {}, {goesIn(hook, living_room)}, {
  obj(hook). hasRole(hook, toolRole).
}).
#pos(e2096@10, {}, {goesIn(hook, playroom)}, {
  obj(hook). hasRole(hook, toolRole).
}).
#pos(e2097@10, {}, {goesIn(horn, dining_room)}, {
  obj(horn). hasPhysicalQuality(horn, lightweight). hasPhysicalQuality(horn, rigid). hasRole(horn, musicalInstrumentRole). affordsTask(horn, leisureTask).
}).
#pos(e2098@10, {}, {goesIn(horn, music_room)}, {
  obj(horn). hasPhysicalQuality(horn, lightweight). hasPhysicalQuality(horn, rigid). hasRole(horn, musicalInstrumentRole). affordsTask(horn, leisureTask).
}).
#pos(e2099@10, {}, {goesIn(hose, hallway)}, {
  obj(hose). hasPhysicalQuality(hose, isFlexible). hasPhysicalQuality(hose, liquid). hasRole(hose, toolRole). affordsTask(hose, cleaningTask).
}).
#pos(e2100@10, {}, {goesIn(hose, music_room)}, {
  obj(hose). hasPhysicalQuality(hose, isFlexible). hasPhysicalQuality(hose, liquid). hasRole(hose, toolRole). affordsTask(hose, cleaningTask).
}).
#pos(e2101@10, {}, {goesIn(hot_sauce, garage)}, {
  obj(hot_sauce). hasPhysicalQuality(hot_sauce, liquid). hasPhysicalQuality(hot_sauce, perishable). hasRole(hot_sauce, consumableRole). affordsTask(hot_sauce, eatingDrinkingTask).
}).
#pos(e2102@10, {}, {goesIn(hot_sauce, table)}, {
  obj(hot_sauce). hasPhysicalQuality(hot_sauce, liquid). hasPhysicalQuality(hot_sauce, perishable). hasRole(hot_sauce, consumableRole). affordsTask(hot_sauce, eatingDrinkingTask).
}).
#pos(e2103@10, {}, {goesIn(hot_table, garage)}, {
  obj(hot_table). hasPhysicalQuality(hot_table, heated). hasRole(hot_table, cookwareRole). hasRole(hot_table, furnitureRole). affordsTask(hot_table, foodPreparationTask).
}).
#pos(e2104@10, {}, {goesIn(hot_table, pantry)}, {
  obj(hot_table). hasPhysicalQuality(hot_table, heated). hasRole(hot_table, cookwareRole). hasRole(hot_table, furnitureRole). affordsTask(hot_table, foodPreparationTask).
}).
#pos(e2105@10, {}, {goesIn(house, garage)}, {
  obj(house). hasPhysicalQuality(house, heavy). hasRole(house, furnitureRole). hasRole(house, storageContainerRole). affordsTask(house, leisureTask). affordsTask(house, workStudyTask).
}).
#pos(e2106@10, {}, {goesIn(house, playroom)}, {
  obj(house). hasPhysicalQuality(house, heavy). hasRole(house, furnitureRole). hasRole(house, storageContainerRole). affordsTask(house, leisureTask). affordsTask(house, workStudyTask).
}).
#pos(e2107@10, {}, {goesIn(ice_cream, garden)}, {
  obj(ice_cream). hasPhysicalQuality(ice_cream, perishable). hasPhysicalQuality(ice_cream, requiresFreezing). hasRole(ice_cream, consumableRole). affordsTask(ice_cream, eatingDrinkingTask).
}).
#pos(e2108@10, {}, {goesIn(ice_cream, living_room)}, {
  obj(ice_cream). hasPhysicalQuality(ice_cream, perishable). hasPhysicalQuality(ice_cream, requiresFreezing). hasRole(ice_cream, consumableRole). affordsTask(ice_cream, eatingDrinkingTask).
}).
#pos(e2109@10, {}, {goesIn(ice_cubes, bedroom)}, {
  obj(ice_cubes). hasPhysicalQuality(ice_cubes, perishable). hasPhysicalQuality(ice_cubes, requiresFreezing). hasRole(ice_cubes, consumableRole). affordsTask(ice_cubes, eatingDrinkingTask).
}).
#pos(e2110@10, {}, {goesIn(ice_cubes, home_office)}, {
  obj(ice_cubes). hasPhysicalQuality(ice_cubes, perishable). hasPhysicalQuality(ice_cubes, requiresFreezing). hasRole(ice_cubes, consumableRole). affordsTask(ice_cubes, eatingDrinkingTask).
}).
#pos(e2111@10, {}, {goesIn(icebox, garage)}, {
  obj(icebox). hasPhysicalQuality(icebox, requiresFreezing). hasRole(icebox, applianceRole). affordsTask(icebox, storageTask).
}).
#pos(e2112@10, {}, {goesIn(icebox, garden)}, {
  obj(icebox). hasPhysicalQuality(icebox, requiresFreezing). hasRole(icebox, applianceRole). affordsTask(icebox, storageTask).
}).
#pos(e2113@10, {}, {goesIn(index_card, hallway)}, {
  obj(index_card). hasPhysicalQuality(index_card, lightweight). hasPhysicalQuality(index_card, rigid). hasRole(index_card, documentRole). affordsTask(index_card, workStudyTask).
}).
#pos(e2114@10, {}, {goesIn(index_card, playroom)}, {
  obj(index_card). hasPhysicalQuality(index_card, lightweight). hasPhysicalQuality(index_card, rigid). hasRole(index_card, documentRole). affordsTask(index_card, workStudyTask).
}).
#pos(e2115@10, {}, {goesIn(index_card_cabinet, bedroom)}, {
  obj(index_card_cabinet). hasPhysicalQuality(index_card_cabinet, hasContainer). hasPhysicalQuality(index_card_cabinet, heavy). hasRole(index_card_cabinet, storageContainerRole). affordsTask(index_card_cabinet, storageTask).
}).
#pos(e2116@10, {}, {goesIn(index_card_cabinet, closet)}, {
  obj(index_card_cabinet). hasPhysicalQuality(index_card_cabinet, hasContainer). hasPhysicalQuality(index_card_cabinet, heavy). hasRole(index_card_cabinet, storageContainerRole). affordsTask(index_card_cabinet, storageTask).
}).
#pos(e2117@10, {}, {goesIn(ink, closet)}, {
  obj(ink). hasPhysicalQuality(ink, liquid). hasPhysicalQuality(ink, toxic_Hazardous).
}).
#pos(e2118@10, {}, {goesIn(ink, fridge)}, {
  obj(ink). hasPhysicalQuality(ink, liquid). hasPhysicalQuality(ink, toxic_Hazardous).
}).
#pos(e2119@10, {}, {goesIn(instrument_triangle, kitchen)}, {
  obj(instrument_triangle). hasPhysicalQuality(instrument_triangle, lightweight). hasPhysicalQuality(instrument_triangle, rigid). hasRole(instrument_triangle, musicalInstrumentRole). affordsTask(instrument_triangle, leisureTask).
}).
#pos(e2120@10, {}, {goesIn(instrument_triangle, trash)}, {
  obj(instrument_triangle). hasPhysicalQuality(instrument_triangle, lightweight). hasPhysicalQuality(instrument_triangle, rigid). hasRole(instrument_triangle, musicalInstrumentRole). affordsTask(instrument_triangle, leisureTask).
}).
#pos(e2121@10, {}, {goesIn(iron, dining_room)}, {
  obj(iron). hasPhysicalQuality(iron, heated). hasPhysicalQuality(iron, heavy). hasRole(iron, toolRole). affordsTask(iron, maintenanceTask).
}).
#pos(e2122@10, {}, {goesIn(iron, fridge)}, {
  obj(iron). hasPhysicalQuality(iron, heated). hasPhysicalQuality(iron, heavy). hasRole(iron, toolRole). affordsTask(iron, maintenanceTask).
}).
#pos(e2123@10, {}, {goesIn(jacket, cabinet)}, {
  obj(jacket). hasPhysicalQuality(jacket, soft_Deformable). hasPhysicalQuality(jacket, washable). hasRole(jacket, clothingRole). affordsTask(jacket, dressingTask).
}).
#pos(e2124@10, {}, {goesIn(jacket, music_room)}, {
  obj(jacket). hasPhysicalQuality(jacket, soft_Deformable). hasPhysicalQuality(jacket, washable). hasRole(jacket, clothingRole). affordsTask(jacket, dressingTask).
}).
#pos(e2125@10, {}, {goesIn(jar, library)}, {
  obj(jar). hasPhysicalQuality(jar, hasContainer). hasRole(jar, storageContainerRole). affordsTask(jar, storageTask).
}).
#pos(e2126@10, {}, {goesIn(jar, playroom)}, {
  obj(jar). hasPhysicalQuality(jar, hasContainer). hasRole(jar, storageContainerRole). affordsTask(jar, storageTask).
}).
#pos(e2127@10, {}, {goesIn(jars, living_room)}, {
  obj(jars). hasPhysicalQuality(jars, hasContainer). hasRole(jars, storageContainerRole). affordsTask(jars, storageTask).
}).
#pos(e2128@10, {}, {goesIn(jars, playroom)}, {
  obj(jars). hasPhysicalQuality(jars, hasContainer). hasRole(jars, storageContainerRole). affordsTask(jars, storageTask).
}).
#pos(e2129@10, {}, {goesIn(jeans, bed)}, {
  obj(jeans). hasPhysicalQuality(jeans, soft_Deformable). hasPhysicalQuality(jeans, washable). hasRole(jeans, clothingRole). affordsTask(jeans, dressingTask).
}).
#pos(e2130@10, {}, {goesIn(jeans, music_room)}, {
  obj(jeans). hasPhysicalQuality(jeans, soft_Deformable). hasPhysicalQuality(jeans, washable). hasRole(jeans, clothingRole). affordsTask(jeans, dressingTask).
}).
#pos(e2131@10, {}, {goesIn(jello, drawer)}, {
  obj(jello). hasPhysicalQuality(jello, perishable). hasPhysicalQuality(jello, soft_Deformable). hasRole(jello, consumableRole). affordsTask(jello, eatingDrinkingTask).
}).
#pos(e2132@10, {}, {goesIn(jello, library)}, {
  obj(jello). hasPhysicalQuality(jello, perishable). hasPhysicalQuality(jello, soft_Deformable). hasRole(jello, consumableRole). affordsTask(jello, eatingDrinkingTask).
}).
#pos(e2133@10, {}, {goesIn(jelly, laundry_room)}, {
  obj(jelly). hasPhysicalQuality(jelly, liquid). hasPhysicalQuality(jelly, soft_Deformable). hasRole(jelly, consumableRole). affordsTask(jelly, eatingDrinkingTask).
}).
#pos(e2134@10, {}, {goesIn(jelly, sink)}, {
  obj(jelly). hasPhysicalQuality(jelly, liquid). hasPhysicalQuality(jelly, soft_Deformable). hasRole(jelly, consumableRole). affordsTask(jelly, eatingDrinkingTask).
}).
#pos(e2135@10, {}, {goesIn(juice, bathroom)}, {
  obj(juice). hasPhysicalQuality(juice, liquid). hasPhysicalQuality(juice, perishable). hasRole(juice, consumableRole). affordsTask(juice, eatingDrinkingTask).
}).
#pos(e2136@10, {}, {goesIn(juice, trash)}, {
  obj(juice). hasPhysicalQuality(juice, liquid). hasPhysicalQuality(juice, perishable). hasRole(juice, consumableRole). affordsTask(juice, eatingDrinkingTask).
}).
#pos(e2137@10, {}, {goesIn(ketchup, laundry_room)}, {
  obj(ketchup). hasPhysicalQuality(ketchup, liquid). hasPhysicalQuality(ketchup, perishable). hasRole(ketchup, consumableRole). affordsTask(ketchup, eatingDrinkingTask).
}).
#pos(e2138@10, {}, {goesIn(ketchup, shelf)}, {
  obj(ketchup). hasPhysicalQuality(ketchup, liquid). hasPhysicalQuality(ketchup, perishable). hasRole(ketchup, consumableRole). affordsTask(ketchup, eatingDrinkingTask).
}).
#pos(e2139@10, {}, {goesIn(kettle, bathroom)}, {
  obj(kettle). hasPhysicalQuality(kettle, heated). hasPhysicalQuality(kettle, heavy). hasRole(kettle, cookwareRole). affordsTask(kettle, foodPreparationTask).
}).
#pos(e2140@10, {}, {goesIn(kettle, music_room)}, {
  obj(kettle). hasPhysicalQuality(kettle, heated). hasPhysicalQuality(kettle, heavy). hasRole(kettle, cookwareRole). affordsTask(kettle, foodPreparationTask).
}).
#pos(e2141@10, {}, {goesIn(key, garden)}, {
  obj(key). hasPhysicalQuality(key, sharp). hasRole(key, toolRole). affordsTask(key, maintenanceTask).
}).
#pos(e2142@10, {}, {goesIn(key, home_office)}, {
  obj(key). hasPhysicalQuality(key, sharp). hasRole(key, toolRole). affordsTask(key, maintenanceTask).
}).
#pos(e2143@10, {}, {goesIn(keyboard, kitchen)}, {
  obj(keyboard). hasPhysicalQuality(keyboard, electronic). hasPhysicalQuality(keyboard, lightweight). hasRole(keyboard, toolRole). affordsTask(keyboard, workStudyTask).
}).
#pos(e2144@10, {}, {goesIn(keyboard, laundry_room)}, {
  obj(keyboard). hasPhysicalQuality(keyboard, electronic). hasPhysicalQuality(keyboard, lightweight). hasRole(keyboard, toolRole). affordsTask(keyboard, workStudyTask).
}).
#pos(e2145@10, {}, {goesIn(keys, playroom)}, {
  obj(keys). hasPhysicalQuality(keys, lightweight). hasPhysicalQuality(keys, rigid). hasRole(keys, toolRole). affordsTask(keys, maintenanceTask).
}).
#pos(e2146@10, {}, {goesIn(keys, trash)}, {
  obj(keys). hasPhysicalQuality(keys, lightweight). hasPhysicalQuality(keys, rigid). hasRole(keys, toolRole). affordsTask(keys, maintenanceTask).
}).
#pos(e2147@10, {}, {goesIn(kitchen_table, garage)}, {
  obj(kitchen_table). hasPhysicalQuality(kitchen_table, heavy). hasPhysicalQuality(kitchen_table, rigid). hasRole(kitchen_table, furnitureRole). affordsTask(kitchen_table, eatingDrinkingTask). affordsTask(kitchen_table, foodPreparationTask).
}).
#pos(e2148@10, {}, {goesIn(kitchen_table, sink)}, {
  obj(kitchen_table). hasPhysicalQuality(kitchen_table, heavy). hasPhysicalQuality(kitchen_table, rigid). hasRole(kitchen_table, furnitureRole). affordsTask(kitchen_table, eatingDrinkingTask). affordsTask(kitchen_table, foodPreparationTask).
}).
#pos(e2149@10, {}, {goesIn(kitchen_utensil, garage)}, {
  obj(kitchen_utensil). hasPhysicalQuality(kitchen_utensil, rigid). hasPhysicalQuality(kitchen_utensil, sharp). hasRole(kitchen_utensil, utensilRole). affordsTask(kitchen_utensil, foodPreparationTask).
}).
#pos(e2150@10, {}, {goesIn(kitchen_utensil, pantry)}, {
  obj(kitchen_utensil). hasPhysicalQuality(kitchen_utensil, rigid). hasPhysicalQuality(kitchen_utensil, sharp). hasRole(kitchen_utensil, utensilRole). affordsTask(kitchen_utensil, foodPreparationTask).
}).
#pos(e2151@10, {}, {goesIn(kitchenette, garden)}, {
  obj(kitchenette). hasPhysicalQuality(kitchenette, heavy). hasPhysicalQuality(kitchenette, rigid). hasRole(kitchenette, cookwareRole). hasRole(kitchenette, storageContainerRole). affordsTask(kitchenette, eatingDrinkingTask). affordsTask(kitchenette, foodPreparationTask).
}).
#pos(e2152@10, {}, {goesIn(kitchenette, library)}, {
  obj(kitchenette). hasPhysicalQuality(kitchenette, heavy). hasPhysicalQuality(kitchenette, rigid). hasRole(kitchenette, cookwareRole). hasRole(kitchenette, storageContainerRole). affordsTask(kitchenette, eatingDrinkingTask). affordsTask(kitchenette, foodPreparationTask).
}).
#pos(e2153@10, {}, {goesIn(kleenex, bathroom)}, {
  obj(kleenex). hasPhysicalQuality(kleenex, lightweight). hasPhysicalQuality(kleenex, soft_Deformable). hasRole(kleenex, consumableRole). affordsTask(kleenex, hygieneTask).
}).
#pos(e2154@10, {}, {goesIn(kleenex, pantry)}, {
  obj(kleenex). hasPhysicalQuality(kleenex, lightweight). hasPhysicalQuality(kleenex, soft_Deformable). hasRole(kleenex, consumableRole). affordsTask(kleenex, hygieneTask).
}).
#pos(e2155@10, {}, {goesIn(knife, home_office)}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e2156@10, {}, {goesIn(knife, library)}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e2157@10, {}, {goesIn(knives, library)}, {
  obj(knives). hasPhysicalQuality(knives, rigid). hasPhysicalQuality(knives, sharp). hasRole(knives, utensilRole). affordsTask(knives, foodPreparationTask).
}).
#pos(e2158@10, {}, {goesIn(knives, trash)}, {
  obj(knives). hasPhysicalQuality(knives, rigid). hasPhysicalQuality(knives, sharp). hasRole(knives, utensilRole). affordsTask(knives, foodPreparationTask).
}).
#pos(e2159@10, {}, {goesIn(knob, drawer)}, {
  obj(knob). hasPhysicalQuality(knob, lightweight). hasPhysicalQuality(knob, rigid). hasRole(knob, toolRole). affordsTask(knob, maintenanceTask).
}).
#pos(e2160@10, {}, {goesIn(knob, pantry)}, {
  obj(knob). hasPhysicalQuality(knob, lightweight). hasPhysicalQuality(knob, rigid). hasRole(knob, toolRole). affordsTask(knob, maintenanceTask).
}).
#pos(e2161@10, {}, {goesIn(label_maker, closet)}, {
  obj(label_maker). hasPhysicalQuality(label_maker, electronic). hasPhysicalQuality(label_maker, lightweight). hasRole(label_maker, toolRole). affordsTask(label_maker, workStudyTask).
}).
#pos(e2162@10, {}, {goesIn(label_maker, sink)}, {
  obj(label_maker). hasPhysicalQuality(label_maker, electronic). hasPhysicalQuality(label_maker, lightweight). hasRole(label_maker, toolRole). affordsTask(label_maker, workStudyTask).
}).
#pos(e2163@10, {}, {goesIn(ladder, bathroom)}, {
  obj(ladder). hasPhysicalQuality(ladder, heavy). hasPhysicalQuality(ladder, rigid). hasRole(ladder, toolRole). affordsTask(ladder, maintenanceTask).
}).
#pos(e2164@10, {}, {goesIn(ladder, playroom)}, {
  obj(ladder). hasPhysicalQuality(ladder, heavy). hasPhysicalQuality(ladder, rigid). hasRole(ladder, toolRole). affordsTask(ladder, maintenanceTask).
}).
#pos(e2165@10, {}, {goesIn(lamp, laundry_room)}, {
  obj(lamp). hasPhysicalQuality(lamp, electronic). hasPhysicalQuality(lamp, lightweight). hasRole(lamp, lightingRole). affordsTask(lamp, leisureTask).
}).
#pos(e2166@10, {}, {goesIn(lamp, sink)}, {
  obj(lamp). hasPhysicalQuality(lamp, electronic). hasPhysicalQuality(lamp, lightweight). hasRole(lamp, lightingRole). affordsTask(lamp, leisureTask).
}).
#pos(e2167@10, {}, {goesIn(led, shelf)}, {
  obj(led). hasPhysicalQuality(led, electronic). hasPhysicalQuality(led, lightweight). hasRole(led, toolRole). affordsTask(led, maintenanceTask).
}).
#pos(e2168@10, {}, {goesIn(led, table)}, {
  obj(led). hasPhysicalQuality(led, electronic). hasPhysicalQuality(led, lightweight). hasRole(led, toolRole). affordsTask(led, maintenanceTask).
}).
#pos(e2169@10, {}, {goesIn(ledger, bathroom)}, {
  obj(ledger). hasPhysicalQuality(ledger, lightweight). hasRole(ledger, documentRole). affordsTask(ledger, workStudyTask).
}).
#pos(e2170@10, {}, {goesIn(ledger, bedroom)}, {
  obj(ledger). hasPhysicalQuality(ledger, lightweight). hasRole(ledger, documentRole). affordsTask(ledger, workStudyTask).
}).
#pos(e2171@10, {}, {goesIn(leg, dining_room)}, {
  obj(leg). hasPhysicalQuality(leg, heavy). hasPhysicalQuality(leg, rigid). hasRole(leg, furnitureRole).
}).
#pos(e2172@10, {}, {goesIn(leg, playroom)}, {
  obj(leg). hasPhysicalQuality(leg, heavy). hasPhysicalQuality(leg, rigid). hasRole(leg, furnitureRole).
}).
#pos(e2173@10, {}, {goesIn(legs, dining_room)}, {
  obj(legs). hasRole(legs, furnitureRole).
}).
#pos(e2174@10, {}, {goesIn(legs, library)}, {
  obj(legs). hasRole(legs, furnitureRole).
}).
#pos(e2175@10, {}, {goesIn(lemon, bed)}, {
  obj(lemon). hasPhysicalQuality(lemon, fragile). hasPhysicalQuality(lemon, perishable). hasRole(lemon, consumableRole). affordsTask(lemon, eatingDrinkingTask).
}).
#pos(e2176@10, {}, {goesIn(lemon, garden)}, {
  obj(lemon). hasPhysicalQuality(lemon, fragile). hasPhysicalQuality(lemon, perishable). hasRole(lemon, consumableRole). affordsTask(lemon, eatingDrinkingTask).
}).
#pos(e2177@10, {}, {goesIn(lemon_curd, hallway)}, {
  obj(lemon_curd). hasPhysicalQuality(lemon_curd, perishable). hasRole(lemon_curd, consumableRole). affordsTask(lemon_curd, eatingDrinkingTask).
}).
#pos(e2178@10, {}, {goesIn(lemon_curd, kitchen)}, {
  obj(lemon_curd). hasPhysicalQuality(lemon_curd, perishable). hasRole(lemon_curd, consumableRole). affordsTask(lemon_curd, eatingDrinkingTask).
}).
#pos(e2179@10, {}, {goesIn(lemon_juice, drawer)}, {
  obj(lemon_juice). hasPhysicalQuality(lemon_juice, liquid). hasPhysicalQuality(lemon_juice, perishable). hasRole(lemon_juice, consumableRole). affordsTask(lemon_juice, eatingDrinkingTask).
}).
#pos(e2180@10, {}, {goesIn(lemon_juice, living_room)}, {
  obj(lemon_juice). hasPhysicalQuality(lemon_juice, liquid). hasPhysicalQuality(lemon_juice, perishable). hasRole(lemon_juice, consumableRole). affordsTask(lemon_juice, eatingDrinkingTask).
}).
#pos(e2181@10, {}, {goesIn(letter_slot, kitchen)}, {
  obj(letter_slot). hasPhysicalQuality(letter_slot, lightweight). hasRole(letter_slot, storageContainerRole). affordsTask(letter_slot, wasteDisposalTask).
}).
#pos(e2182@10, {}, {goesIn(letter_slot, library)}, {
  obj(letter_slot). hasPhysicalQuality(letter_slot, lightweight). hasRole(letter_slot, storageContainerRole). affordsTask(letter_slot, wasteDisposalTask).
}).
#pos(e2183@10, {}, {goesIn(letters, hallway)}, {
  obj(letters). hasPhysicalQuality(letters, lightweight). hasRole(letters, documentRole).
}).
#pos(e2184@10, {}, {goesIn(letters, music_room)}, {
  obj(letters). hasPhysicalQuality(letters, lightweight). hasRole(letters, documentRole).
}).
#pos(e2185@10, {}, {goesIn(lettuce, bedroom)}, {
  obj(lettuce). hasPhysicalQuality(lettuce, perishable). hasRole(lettuce, consumableRole). affordsTask(lettuce, foodPreparationTask).
}).
#pos(e2186@10, {}, {goesIn(lettuce, garden)}, {
  obj(lettuce). hasPhysicalQuality(lettuce, perishable). hasRole(lettuce, consumableRole). affordsTask(lettuce, foodPreparationTask).
}).
#pos(e2187@10, {}, {goesIn(level, bathroom)}, {
  obj(level). hasPhysicalQuality(level, rigid). hasRole(level, toolRole). affordsTask(level, maintenanceTask).
}).
#pos(e2188@10, {}, {goesIn(level, music_room)}, {
  obj(level). hasPhysicalQuality(level, rigid). hasRole(level, toolRole). affordsTask(level, maintenanceTask).
}).
#pos(e2189@10, {}, {goesIn(light, bed)}, {
  obj(light). hasPhysicalQuality(light, electronic). hasPhysicalQuality(light, lightweight). hasRole(light, lightingRole). affordsTask(light, leisureTask).
}).
#pos(e2190@10, {}, {goesIn(light, trash)}, {
  obj(light). hasPhysicalQuality(light, electronic). hasPhysicalQuality(light, lightweight). hasRole(light, lightingRole). affordsTask(light, leisureTask).
}).
#pos(e2191@10, {}, {goesIn(light_bulb, garden)}, {
  obj(light_bulb). hasPhysicalQuality(light_bulb, electronic). hasPhysicalQuality(light_bulb, lightweight). hasRole(light_bulb, lightingRole). affordsTask(light_bulb, leisureTask).
}).
#pos(e2192@10, {}, {goesIn(light_bulb, laundry_room)}, {
  obj(light_bulb). hasPhysicalQuality(light_bulb, electronic). hasPhysicalQuality(light_bulb, lightweight). hasRole(light_bulb, lightingRole). affordsTask(light_bulb, leisureTask).
}).
#pos(e2193@10, {}, {goesIn(light_source, bed)}, {
  obj(light_source). hasPhysicalQuality(light_source, electronic). hasPhysicalQuality(light_source, heated). hasRole(light_source, lightingRole). affordsTask(light_source, leisureTask).
}).
#pos(e2194@10, {}, {goesIn(light_source, cabinet)}, {
  obj(light_source). hasPhysicalQuality(light_source, electronic). hasPhysicalQuality(light_source, heated). hasRole(light_source, lightingRole). affordsTask(light_source, leisureTask).
}).
#pos(e2195@10, {}, {goesIn(lightbulb, bathroom)}, {
  obj(lightbulb). hasPhysicalQuality(lightbulb, electronic). hasPhysicalQuality(lightbulb, lightweight). hasRole(lightbulb, lightingRole). affordsTask(lightbulb, leisureTask).
}).
#pos(e2196@10, {}, {goesIn(lightbulb, garage)}, {
  obj(lightbulb). hasPhysicalQuality(lightbulb, electronic). hasPhysicalQuality(lightbulb, lightweight). hasRole(lightbulb, lightingRole). affordsTask(lightbulb, leisureTask).
}).
#pos(e2197@10, {}, {goesIn(limes, bathroom)}, {
  obj(limes). hasPhysicalQuality(limes, perishable). hasRole(limes, consumableRole). affordsTask(limes, eatingDrinkingTask).
}).
#pos(e2198@10, {}, {goesIn(limes, drawer)}, {
  obj(limes). hasPhysicalQuality(limes, perishable). hasRole(limes, consumableRole). affordsTask(limes, eatingDrinkingTask).
}).
#pos(e2199@10, {}, {goesIn(line, drawer)}, {
  obj(line). hasPhysicalQuality(line, lightweight). hasPhysicalQuality(line, rigid). hasRole(line, toolRole). affordsTask(line, maintenanceTask).
}).
#pos(e2200@10, {}, {goesIn(line, table)}, {
  obj(line). hasPhysicalQuality(line, lightweight). hasPhysicalQuality(line, rigid). hasRole(line, toolRole). affordsTask(line, maintenanceTask).
}).
#pos(e2201@10, {}, {goesIn(linen, drawer)}, {
  obj(linen). hasPhysicalQuality(linen, soft_Deformable). hasPhysicalQuality(linen, washable). hasRole(linen, clothingRole). affordsTask(linen, dressingTask).
}).
#pos(e2202@10, {}, {goesIn(linen, garden)}, {
  obj(linen). hasPhysicalQuality(linen, soft_Deformable). hasPhysicalQuality(linen, washable). hasRole(linen, clothingRole). affordsTask(linen, dressingTask).
}).
#pos(e2203@10, {}, {goesIn(linen_chest, dining_room)}, {
  obj(linen_chest). hasPhysicalQuality(linen_chest, heavy). hasPhysicalQuality(linen_chest, rigid). hasRole(linen_chest, storageContainerRole). affordsTask(linen_chest, storageTask).
}).
#pos(e2204@10, {}, {goesIn(linen_chest, shelf)}, {
  obj(linen_chest). hasPhysicalQuality(linen_chest, heavy). hasPhysicalQuality(linen_chest, rigid). hasRole(linen_chest, storageContainerRole). affordsTask(linen_chest, storageTask).
}).
#pos(e2205@10, {}, {goesIn(linoleum, garage)}, {
  obj(linoleum). hasPhysicalQuality(linoleum, fragile). hasRole(linoleum, furnitureRole).
}).
#pos(e2206@10, {}, {goesIn(linoleum, table)}, {
  obj(linoleum). hasPhysicalQuality(linoleum, fragile). hasRole(linoleum, furnitureRole).
}).
#pos(e2207@10, {}, {goesIn(liquids, hallway)}, {
  obj(liquids). hasPhysicalQuality(liquids, liquid). hasRole(liquids, consumableRole). affordsTask(liquids, eatingDrinkingTask).
}).
#pos(e2208@10, {}, {goesIn(liquids, playroom)}, {
  obj(liquids). hasPhysicalQuality(liquids, liquid). hasRole(liquids, consumableRole). affordsTask(liquids, eatingDrinkingTask).
}).
#pos(e2209@10, {}, {goesIn(liquor_glass, drawer)}, {
  obj(liquor_glass). hasPhysicalQuality(liquor_glass, lightweight). hasPhysicalQuality(liquor_glass, rigid). hasRole(liquor_glass, utensilRole). affordsTask(liquor_glass, eatingDrinkingTask).
}).
#pos(e2210@10, {}, {goesIn(liquor_glass, laundry_room)}, {
  obj(liquor_glass). hasPhysicalQuality(liquor_glass, lightweight). hasPhysicalQuality(liquor_glass, rigid). hasRole(liquor_glass, utensilRole). affordsTask(liquor_glass, eatingDrinkingTask).
}).
#pos(e2211@10, {}, {goesIn(lock, cabinet)}, {
  obj(lock). hasPhysicalQuality(lock, heavy). hasRole(lock, toolRole). affordsTask(lock, maintenanceTask).
}).
#pos(e2212@10, {}, {goesIn(lock, storage_room)}, {
  obj(lock). hasPhysicalQuality(lock, heavy). hasRole(lock, toolRole). affordsTask(lock, maintenanceTask).
}).
#pos(e2213@10, {}, {goesIn(love_seat, drawer)}, {
  obj(love_seat). hasPhysicalQuality(love_seat, heavy). hasPhysicalQuality(love_seat, soft_Deformable). hasRole(love_seat, furnitureRole). affordsTask(love_seat, storageTask).
}).
#pos(e2214@10, {}, {goesIn(love_seat, hallway)}, {
  obj(love_seat). hasPhysicalQuality(love_seat, heavy). hasPhysicalQuality(love_seat, soft_Deformable). hasRole(love_seat, furnitureRole). affordsTask(love_seat, storageTask).
}).
#pos(e2215@10, {}, {goesIn(luggage, dining_room)}, {
  obj(luggage). hasPhysicalQuality(luggage, hasContainer). hasPhysicalQuality(luggage, lightweight). hasRole(luggage, storageContainerRole).
}).
#pos(e2216@10, {}, {goesIn(luggage, table)}, {
  obj(luggage). hasPhysicalQuality(luggage, hasContainer). hasPhysicalQuality(luggage, lightweight). hasRole(luggage, storageContainerRole).
}).
#pos(e2217@10, {}, {goesIn(machine, bathroom)}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e2218@10, {}, {goesIn(machine, hallway)}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e2219@10, {}, {goesIn(magazines, laundry_room)}, {
  obj(magazines). hasPhysicalQuality(magazines, lightweight). hasRole(magazines, documentRole). affordsTask(magazines, leisureTask).
}).
#pos(e2220@10, {}, {goesIn(magazines, sink)}, {
  obj(magazines). hasPhysicalQuality(magazines, lightweight). hasRole(magazines, documentRole). affordsTask(magazines, leisureTask).
}).
#pos(e2221@10, {}, {goesIn(magnet, laundry_room)}, {
  obj(magnet). hasPhysicalQuality(magnet, rigid). hasRole(magnet, toolRole). affordsTask(magnet, maintenanceTask).
}).
#pos(e2222@10, {}, {goesIn(magnet, trash)}, {
  obj(magnet). hasPhysicalQuality(magnet, rigid). hasRole(magnet, toolRole). affordsTask(magnet, maintenanceTask).
}).
#pos(e2223@10, {}, {goesIn(mail, cabinet)}, {
  obj(mail). hasRole(mail, consumableRole).
}).
#pos(e2224@10, {}, {goesIn(mail, garage)}, {
  obj(mail). hasRole(mail, consumableRole).
}).
#pos(e2225@10, {}, {goesIn(mailbox, shelf)}, {
  obj(mailbox). hasPhysicalQuality(mailbox, heavy). hasRole(mailbox, storageContainerRole). affordsTask(mailbox, storageTask).
}).
#pos(e2226@10, {}, {goesIn(mailbox, trash)}, {
  obj(mailbox). hasPhysicalQuality(mailbox, heavy). hasRole(mailbox, storageContainerRole). affordsTask(mailbox, storageTask).
}).
#pos(e2227@10, {}, {goesIn(map, fridge)}, {
  obj(map). hasPhysicalQuality(map, lightweight). hasRole(map, toolRole). affordsTask(map, leisureTask).
}).
#pos(e2228@10, {}, {goesIn(map, storage_room)}, {
  obj(map). hasPhysicalQuality(map, lightweight). hasRole(map, toolRole). affordsTask(map, leisureTask).
}).
#pos(e2229@10, {}, {goesIn(maps, cabinet)}, {
  obj(maps). hasRole(maps, toolRole). affordsTask(maps, leisureTask).
}).
#pos(e2230@10, {}, {goesIn(maps, trash)}, {
  obj(maps). hasRole(maps, toolRole). affordsTask(maps, leisureTask).
}).
#pos(e2231@10, {}, {goesIn(marble, garden)}, {
  obj(marble). hasPhysicalQuality(marble, granular). hasPhysicalQuality(marble, rigid). hasRole(marble, decorationRole).
}).
#pos(e2232@10, {}, {goesIn(marble, trash)}, {
  obj(marble). hasPhysicalQuality(marble, granular). hasPhysicalQuality(marble, rigid). hasRole(marble, decorationRole).
}).
#pos(e2233@10, {}, {goesIn(marker, bed)}, {
  obj(marker). hasPhysicalQuality(marker, lightweight). hasRole(marker, toolRole). affordsTask(marker, foodPreparationTask).
}).
#pos(e2234@10, {}, {goesIn(marker, dining_room)}, {
  obj(marker). hasPhysicalQuality(marker, lightweight). hasRole(marker, toolRole). affordsTask(marker, foodPreparationTask).
}).
#pos(e2235@10, {}, {goesIn(mat, laundry_room)}, {
  obj(mat). hasPhysicalQuality(mat, lightweight). hasPhysicalQuality(mat, soft_Deformable). hasRole(mat, furnitureRole). affordsTask(mat, storageTask).
}).
#pos(e2236@10, {}, {goesIn(mat, storage_room)}, {
  obj(mat). hasPhysicalQuality(mat, lightweight). hasPhysicalQuality(mat, soft_Deformable). hasRole(mat, furnitureRole). affordsTask(mat, storageTask).
}).
#pos(e2237@10, {}, {goesIn(matches, laundry_room)}, {
  obj(matches). hasPhysicalQuality(matches, fragile). hasPhysicalQuality(matches, lightweight). hasRole(matches, toolRole). affordsTask(matches, maintenanceTask).
}).
#pos(e2238@10, {}, {goesIn(matches, living_room)}, {
  obj(matches). hasPhysicalQuality(matches, fragile). hasPhysicalQuality(matches, lightweight). hasRole(matches, toolRole). affordsTask(matches, maintenanceTask).
}).
#pos(e2239@10, {}, {goesIn(material, cabinet)}, {
  obj(material). hasPhysicalQuality(material, granular). hasRole(material, consumableRole).
}).
#pos(e2240@10, {}, {goesIn(material, pantry)}, {
  obj(material). hasPhysicalQuality(material, granular). hasRole(material, consumableRole).
}).
#pos(e2241@10, {}, {goesIn(mayonnaise, home_office)}, {
  obj(mayonnaise). hasPhysicalQuality(mayonnaise, liquid). hasPhysicalQuality(mayonnaise, perishable). hasRole(mayonnaise, consumableRole). affordsTask(mayonnaise, eatingDrinkingTask).
}).
#pos(e2242@10, {}, {goesIn(mayonnaise, table)}, {
  obj(mayonnaise). hasPhysicalQuality(mayonnaise, liquid). hasPhysicalQuality(mayonnaise, perishable). hasRole(mayonnaise, consumableRole). affordsTask(mayonnaise, eatingDrinkingTask).
}).
#pos(e2243@10, {}, {goesIn(meat, bathroom)}, {
  obj(meat). hasPhysicalQuality(meat, perishable). hasRole(meat, consumableRole). affordsTask(meat, eatingDrinkingTask). affordsTask(meat, foodPreparationTask).
}).
#pos(e2244@10, {}, {goesIn(meat, living_room)}, {
  obj(meat). hasPhysicalQuality(meat, perishable). hasRole(meat, consumableRole). affordsTask(meat, eatingDrinkingTask). affordsTask(meat, foodPreparationTask).
}).
#pos(e2245@10, {}, {goesIn(mechanical_pencil, cabinet)}, {
  obj(mechanical_pencil). hasPhysicalQuality(mechanical_pencil, lightweight). hasPhysicalQuality(mechanical_pencil, rigid). hasRole(mechanical_pencil, toolRole). affordsTask(mechanical_pencil, workStudyTask).
}).
#pos(e2246@10, {}, {goesIn(mechanical_pencil, music_room)}, {
  obj(mechanical_pencil). hasPhysicalQuality(mechanical_pencil, lightweight). hasPhysicalQuality(mechanical_pencil, rigid). hasRole(mechanical_pencil, toolRole). affordsTask(mechanical_pencil, workStudyTask).
}).
#pos(e2247@10, {}, {goesIn(medicine, kitchen)}, {
  obj(medicine). hasPhysicalQuality(medicine, perishable). hasRole(medicine, consumableRole). affordsTask(medicine, eatingDrinkingTask).
}).
#pos(e2248@10, {}, {goesIn(medicine, living_room)}, {
  obj(medicine). hasPhysicalQuality(medicine, perishable). hasRole(medicine, consumableRole). affordsTask(medicine, eatingDrinkingTask).
}).
#pos(e2249@10, {}, {goesIn(microwave, living_room)}, {
  obj(microwave). hasPhysicalQuality(microwave, electronic). hasPhysicalQuality(microwave, heated). hasRole(microwave, applianceRole). affordsTask(microwave, foodPreparationTask).
}).
#pos(e2250@10, {}, {goesIn(microwave, storage_room)}, {
  obj(microwave). hasPhysicalQuality(microwave, electronic). hasPhysicalQuality(microwave, heated). hasRole(microwave, applianceRole). affordsTask(microwave, foodPreparationTask).
}).
#pos(e2251@10, {}, {goesIn(microwave_oven, dining_room)}, {
  obj(microwave_oven). hasPhysicalQuality(microwave_oven, electronic). hasPhysicalQuality(microwave_oven, heated). hasRole(microwave_oven, applianceRole). affordsTask(microwave_oven, foodPreparationTask).
}).
#pos(e2252@10, {}, {goesIn(microwave_oven, living_room)}, {
  obj(microwave_oven). hasPhysicalQuality(microwave_oven, electronic). hasPhysicalQuality(microwave_oven, heated). hasRole(microwave_oven, applianceRole). affordsTask(microwave_oven, foodPreparationTask).
}).
#pos(e2253@10, {}, {goesIn(milk, garden)}, {
  obj(milk). hasPhysicalQuality(milk, perishable). hasRole(milk, consumableRole). affordsTask(milk, eatingDrinkingTask).
}).
#pos(e2254@10, {}, {goesIn(milk, table)}, {
  obj(milk). hasPhysicalQuality(milk, perishable). hasRole(milk, consumableRole). affordsTask(milk, eatingDrinkingTask).
}).
#pos(e2255@10, {}, {goesIn(mirror, hallway)}, {
  obj(mirror). hasPhysicalQuality(mirror, electronic). hasPhysicalQuality(mirror, rigid). hasRole(mirror, decorationRole).
}).
#pos(e2256@10, {}, {goesIn(mirror, table)}, {
  obj(mirror). hasPhysicalQuality(mirror, electronic). hasPhysicalQuality(mirror, rigid). hasRole(mirror, decorationRole).
}).
#pos(e2257@10, {}, {goesIn(monitor, shelf)}, {
  obj(monitor). hasRole(monitor, entertainmentRole). affordsTask(monitor, leisureTask).
}).
#pos(e2258@10, {}, {goesIn(monitor, trash)}, {
  obj(monitor). hasRole(monitor, entertainmentRole). affordsTask(monitor, leisureTask).
}).
#pos(e2259@10, {}, {goesIn(motherboard, living_room)}, {
  obj(motherboard). hasPhysicalQuality(motherboard, electronic). hasPhysicalQuality(motherboard, rigid). hasRole(motherboard, toolRole).
}).
#pos(e2260@10, {}, {goesIn(motherboard, music_room)}, {
  obj(motherboard). hasPhysicalQuality(motherboard, electronic). hasPhysicalQuality(motherboard, rigid). hasRole(motherboard, toolRole).
}).
#pos(e2261@10, {}, {goesIn(mouse, home_office)}, {
  obj(mouse). hasPhysicalQuality(mouse, lightweight). hasRole(mouse, consumableRole).
}).
#pos(e2262@10, {}, {goesIn(mouse, playroom)}, {
  obj(mouse). hasPhysicalQuality(mouse, lightweight). hasRole(mouse, consumableRole).
}).
#pos(e2263@10, {}, {goesIn(mouthwash, hallway)}, {
  obj(mouthwash). hasPhysicalQuality(mouthwash, liquid). hasPhysicalQuality(mouthwash, toxic_Hazardous). hasRole(mouthwash, cleaningToolRole). affordsTask(mouthwash, hygieneTask).
}).
#pos(e2264@10, {}, {goesIn(mouthwash, kitchen)}, {
  obj(mouthwash). hasPhysicalQuality(mouthwash, liquid). hasPhysicalQuality(mouthwash, toxic_Hazardous). hasRole(mouthwash, cleaningToolRole). affordsTask(mouthwash, hygieneTask).
}).
#pos(e2265@10, {}, {goesIn(mug, bedroom)}, {
  obj(mug). hasPhysicalQuality(mug, hasContainer). hasPhysicalQuality(mug, liquid). hasRole(mug, utensilRole). affordsTask(mug, eatingDrinkingTask).
}).
#pos(e2266@10, {}, {goesIn(mug, garage)}, {
  obj(mug). hasPhysicalQuality(mug, hasContainer). hasPhysicalQuality(mug, liquid). hasRole(mug, utensilRole). affordsTask(mug, eatingDrinkingTask).
}).
#pos(e2267@10, {}, {goesIn(music_stand, garage)}, {
  obj(music_stand). hasPhysicalQuality(music_stand, lightweight). hasPhysicalQuality(music_stand, rigid). hasRole(music_stand, furnitureRole). affordsTask(music_stand, workStudyTask).
}).
#pos(e2268@10, {}, {goesIn(music_stand, library)}, {
  obj(music_stand). hasPhysicalQuality(music_stand, lightweight). hasPhysicalQuality(music_stand, rigid). hasRole(music_stand, furnitureRole). affordsTask(music_stand, workStudyTask).
}).
#pos(e2269@10, {}, {goesIn(musical_instrument, fridge)}, {
  obj(musical_instrument). hasRole(musical_instrument, musicalInstrumentRole).
}).
#pos(e2270@10, {}, {goesIn(musical_instrument, library)}, {
  obj(musical_instrument). hasRole(musical_instrument, musicalInstrumentRole).
}).
#pos(e2271@10, {}, {goesIn(mustard, sink)}, {
  obj(mustard). hasPhysicalQuality(mustard, liquid). hasRole(mustard, consumableRole). affordsTask(mustard, eatingDrinkingTask).
}).
#pos(e2272@10, {}, {goesIn(mustard, storage_room)}, {
  obj(mustard). hasPhysicalQuality(mustard, liquid). hasRole(mustard, consumableRole). affordsTask(mustard, eatingDrinkingTask).
}).
#pos(e2273@10, {}, {goesIn(nail_clippers, laundry_room)}, {
  obj(nail_clippers). hasPhysicalQuality(nail_clippers, rigid). hasPhysicalQuality(nail_clippers, sharp). hasRole(nail_clippers, toolRole). affordsTask(nail_clippers, hygieneTask).
}).
#pos(e2274@10, {}, {goesIn(nail_clippers, table)}, {
  obj(nail_clippers). hasPhysicalQuality(nail_clippers, rigid). hasPhysicalQuality(nail_clippers, sharp). hasRole(nail_clippers, toolRole). affordsTask(nail_clippers, hygieneTask).
}).
#pos(e2275@10, {}, {goesIn(nails, bathroom)}, {
  obj(nails). hasPhysicalQuality(nails, rigid). hasPhysicalQuality(nails, sharp). hasRole(nails, toolRole). affordsTask(nails, maintenanceTask).
}).
#pos(e2276@10, {}, {goesIn(nails, laundry_room)}, {
  obj(nails). hasPhysicalQuality(nails, rigid). hasPhysicalQuality(nails, sharp). hasRole(nails, toolRole). affordsTask(nails, maintenanceTask).
}).
#pos(e2277@10, {}, {goesIn(nest_of_tables, hallway)}, {
  obj(nest_of_tables). hasRole(nest_of_tables, furnitureRole).
}).
#pos(e2278@10, {}, {goesIn(nest_of_tables, living_room)}, {
  obj(nest_of_tables). hasRole(nest_of_tables, furnitureRole).
}).
#pos(e2279@10, {}, {goesIn(net, dining_room)}, {
  obj(net). hasRole(net, toolRole).
}).
#pos(e2280@10, {}, {goesIn(net, music_room)}, {
  obj(net). hasRole(net, toolRole).
}).
#pos(e2281@10, {}, {goesIn(night_table, drawer)}, {
  obj(night_table). hasPhysicalQuality(night_table, heavy). hasPhysicalQuality(night_table, rigid). hasRole(night_table, furnitureRole). affordsTask(night_table, storageTask).
}).
#pos(e2282@10, {}, {goesIn(night_table, kitchen)}, {
  obj(night_table). hasPhysicalQuality(night_table, heavy). hasPhysicalQuality(night_table, rigid). hasRole(night_table, furnitureRole). affordsTask(night_table, storageTask).
}).
#pos(e2283@10, {}, {goesIn(notebook, garage)}, {
  obj(notebook). hasPhysicalQuality(notebook, lightweight). hasPhysicalQuality(notebook, rigid). hasRole(notebook, documentRole). affordsTask(notebook, workStudyTask).
}).
#pos(e2284@10, {}, {goesIn(notebook, hallway)}, {
  obj(notebook). hasPhysicalQuality(notebook, lightweight). hasPhysicalQuality(notebook, rigid). hasRole(notebook, documentRole). affordsTask(notebook, workStudyTask).
}).
#pos(e2285@10, {}, {goesIn(notepad, garden)}, {
  obj(notepad). hasPhysicalQuality(notepad, lightweight). hasPhysicalQuality(notepad, rigid). hasRole(notepad, documentRole). affordsTask(notepad, workStudyTask).
}).
#pos(e2286@10, {}, {goesIn(notepad, sink)}, {
  obj(notepad). hasPhysicalQuality(notepad, lightweight). hasPhysicalQuality(notepad, rigid). hasRole(notepad, documentRole). affordsTask(notepad, workStudyTask).
}).
#pos(e2287@10, {}, {goesIn(nuts, hallway)}, {
  obj(nuts). hasPhysicalQuality(nuts, granular). hasPhysicalQuality(nuts, perishable). hasRole(nuts, consumableRole). affordsTask(nuts, eatingDrinkingTask).
}).
#pos(e2288@10, {}, {goesIn(nuts, storage_room)}, {
  obj(nuts). hasPhysicalQuality(nuts, granular). hasPhysicalQuality(nuts, perishable). hasRole(nuts, consumableRole). affordsTask(nuts, eatingDrinkingTask).
}).
#pos(e2289@10, {}, {goesIn(nylon, bathroom)}, {
  obj(nylon). hasPhysicalQuality(nylon, lightweight). hasPhysicalQuality(nylon, soft_Deformable).
}).
#pos(e2290@10, {}, {goesIn(nylon, playroom)}, {
  obj(nylon). hasPhysicalQuality(nylon, lightweight). hasPhysicalQuality(nylon, soft_Deformable).
}).
#pos(e2291@10, {}, {goesIn(oilcloth, bedroom)}, {
  obj(oilcloth). hasPhysicalQuality(oilcloth, soft_Deformable). hasPhysicalQuality(oilcloth, washable). hasRole(oilcloth, clothingRole). affordsTask(oilcloth, leisureTask).
}).
#pos(e2292@10, {}, {goesIn(oilcloth, drawer)}, {
  obj(oilcloth). hasPhysicalQuality(oilcloth, soft_Deformable). hasPhysicalQuality(oilcloth, washable). hasRole(oilcloth, clothingRole). affordsTask(oilcloth, leisureTask).
}).
#pos(e2293@10, {}, {goesIn(old_books, fridge)}, {
  obj(old_books). hasPhysicalQuality(old_books, fragile). hasPhysicalQuality(old_books, lightweight). hasRole(old_books, documentRole). affordsTask(old_books, leisureTask).
}).
#pos(e2294@10, {}, {goesIn(old_books, laundry_room)}, {
  obj(old_books). hasPhysicalQuality(old_books, fragile). hasPhysicalQuality(old_books, lightweight). hasRole(old_books, documentRole). affordsTask(old_books, leisureTask).
}).
#pos(e2295@10, {}, {goesIn(old_dress, pantry)}, {
  obj(old_dress). hasPhysicalQuality(old_dress, lightweight). hasPhysicalQuality(old_dress, soft_Deformable). hasRole(old_dress, clothingRole). affordsTask(old_dress, dressingTask).
}).
#pos(e2296@10, {}, {goesIn(old_dress, shelf)}, {
  obj(old_dress). hasPhysicalQuality(old_dress, lightweight). hasPhysicalQuality(old_dress, soft_Deformable). hasRole(old_dress, clothingRole). affordsTask(old_dress, dressingTask).
}).
#pos(e2297@10, {}, {goesIn(olives, garage)}, {
  obj(olives). hasPhysicalQuality(olives, perishable). hasRole(olives, consumableRole). affordsTask(olives, eatingDrinkingTask).
}).
#pos(e2298@10, {}, {goesIn(olives, music_room)}, {
  obj(olives). hasPhysicalQuality(olives, perishable). hasRole(olives, consumableRole). affordsTask(olives, eatingDrinkingTask).
}).
#pos(e2299@10, {}, {goesIn(one_person_chair, storage_room)}, {
  obj(one_person_chair). hasPhysicalQuality(one_person_chair, rigid). hasRole(one_person_chair, furnitureRole). affordsTask(one_person_chair, leisureTask).
}).
#pos(e2300@10, {}, {goesIn(one_person_chair, trash)}, {
  obj(one_person_chair). hasPhysicalQuality(one_person_chair, rigid). hasRole(one_person_chair, furnitureRole). affordsTask(one_person_chair, leisureTask).
}).
#pos(e2301@10, {}, {goesIn(onions, music_room)}, {
  obj(onions). hasPhysicalQuality(onions, perishable). hasRole(onions, consumableRole). affordsTask(onions, foodPreparationTask).
}).
#pos(e2302@10, {}, {goesIn(onions, playroom)}, {
  obj(onions). hasPhysicalQuality(onions, perishable). hasRole(onions, consumableRole). affordsTask(onions, foodPreparationTask).
}).
#pos(e2303@10, {}, {goesIn(orange_juice, bathroom)}, {
  obj(orange_juice). hasPhysicalQuality(orange_juice, perishable). hasRole(orange_juice, consumableRole). affordsTask(orange_juice, eatingDrinkingTask).
}).
#pos(e2304@10, {}, {goesIn(orange_juice, bedroom)}, {
  obj(orange_juice). hasPhysicalQuality(orange_juice, perishable). hasRole(orange_juice, consumableRole). affordsTask(orange_juice, eatingDrinkingTask).
}).
#pos(e2305@10, {}, {goesIn(ottoman, garage)}, {
  obj(ottoman). hasPhysicalQuality(ottoman, heavy). hasPhysicalQuality(ottoman, soft_Deformable). hasRole(ottoman, furnitureRole). affordsTask(ottoman, leisureTask).
}).
#pos(e2306@10, {}, {goesIn(ottoman, hallway)}, {
  obj(ottoman). hasPhysicalQuality(ottoman, heavy). hasPhysicalQuality(ottoman, soft_Deformable). hasRole(ottoman, furnitureRole). affordsTask(ottoman, leisureTask).
}).
#pos(e2307@10, {}, {goesIn(oven, kitchen)}, {
  obj(oven). hasPhysicalQuality(oven, heated). hasRole(oven, cookwareRole). affordsTask(oven, foodPreparationTask).
}).
#pos(e2308@10, {}, {goesIn(oven, trash)}, {
  obj(oven). hasPhysicalQuality(oven, heated). hasRole(oven, cookwareRole). affordsTask(oven, foodPreparationTask).
}).
#pos(e2309@10, {}, {goesIn(oven_mitts, fridge)}, {
  obj(oven_mitts). hasPhysicalQuality(oven_mitts, lightweight). hasPhysicalQuality(oven_mitts, soft_Deformable). hasRole(oven_mitts, utensilRole). affordsTask(oven_mitts, foodPreparationTask).
}).
#pos(e2310@10, {}, {goesIn(oven_mitts, garden)}, {
  obj(oven_mitts). hasPhysicalQuality(oven_mitts, lightweight). hasPhysicalQuality(oven_mitts, soft_Deformable). hasRole(oven_mitts, utensilRole). affordsTask(oven_mitts, foodPreparationTask).
}).
#pos(e2311@10, {}, {goesIn(page, sink)}, {
  obj(page). hasRole(page, documentRole).
}).
#pos(e2312@10, {}, {goesIn(page, trash)}, {
  obj(page). hasRole(page, documentRole).
}).
#pos(e2313@10, {}, {goesIn(pail, library)}, {
  obj(pail). hasPhysicalQuality(pail, hasContainer). hasRole(pail, storageContainerRole). affordsTask(pail, storageTask).
}).
#pos(e2314@10, {}, {goesIn(pail, playroom)}, {
  obj(pail). hasPhysicalQuality(pail, hasContainer). hasRole(pail, storageContainerRole). affordsTask(pail, storageTask).
}).
#pos(e2315@10, {}, {goesIn(paint, table)}, {
  obj(paint). hasPhysicalQuality(paint, liquid). hasPhysicalQuality(paint, toxic_Hazardous). affordsTask(paint, maintenanceTask).
}).
#pos(e2316@10, {}, {goesIn(paint, trash)}, {
  obj(paint). hasPhysicalQuality(paint, liquid). hasPhysicalQuality(paint, toxic_Hazardous). affordsTask(paint, maintenanceTask).
}).
#pos(e2317@10, {}, {goesIn(pair_of_pants, kitchen)}, {
  obj(pair_of_pants). hasPhysicalQuality(pair_of_pants, lightweight). hasPhysicalQuality(pair_of_pants, soft_Deformable). hasRole(pair_of_pants, clothingRole). affordsTask(pair_of_pants, dressingTask).
}).
#pos(e2318@10, {}, {goesIn(pair_of_pants, library)}, {
  obj(pair_of_pants). hasPhysicalQuality(pair_of_pants, lightweight). hasPhysicalQuality(pair_of_pants, soft_Deformable). hasRole(pair_of_pants, clothingRole). affordsTask(pair_of_pants, dressingTask).
}).
#pos(e2319@10, {}, {goesIn(pair_of_scissors, home_office)}, {
  obj(pair_of_scissors). hasPhysicalQuality(pair_of_scissors, rigid). hasPhysicalQuality(pair_of_scissors, sharp). hasRole(pair_of_scissors, toolRole). affordsTask(pair_of_scissors, maintenanceTask).
}).
#pos(e2320@10, {}, {goesIn(pair_of_scissors, playroom)}, {
  obj(pair_of_scissors). hasPhysicalQuality(pair_of_scissors, rigid). hasPhysicalQuality(pair_of_scissors, sharp). hasRole(pair_of_scissors, toolRole). affordsTask(pair_of_scissors, maintenanceTask).
}).
#pos(e2321@10, {}, {goesIn(pan, home_office)}, {
  obj(pan). hasPhysicalQuality(pan, heated). hasPhysicalQuality(pan, rigid). hasRole(pan, cookwareRole). affordsTask(pan, foodPreparationTask).
}).
#pos(e2322@10, {}, {goesIn(pan, living_room)}, {
  obj(pan). hasPhysicalQuality(pan, heated). hasPhysicalQuality(pan, rigid). hasRole(pan, cookwareRole). affordsTask(pan, foodPreparationTask).
}).
#pos(e2323@10, {}, {goesIn(pantry, garage)}, {
  obj(pantry). hasPhysicalQuality(pantry, hasContainer). hasRole(pantry, applianceRole). hasRole(pantry, storageContainerRole). affordsTask(pantry, storageTask).
}).
#pos(e2324@10, {}, {goesIn(pantry, garden)}, {
  obj(pantry). hasPhysicalQuality(pantry, hasContainer). hasRole(pantry, applianceRole). hasRole(pantry, storageContainerRole). affordsTask(pantry, storageTask).
}).
#pos(e2325@10, {}, {goesIn(paper, garden)}, {
  obj(paper). hasPhysicalQuality(paper, flammable). hasPhysicalQuality(paper, fragile). hasRole(paper, consumableRole). affordsTask(paper, eatingDrinkingTask).
}).
#pos(e2326@10, {}, {goesIn(paper, hallway)}, {
  obj(paper). hasPhysicalQuality(paper, flammable). hasPhysicalQuality(paper, fragile). hasRole(paper, consumableRole). affordsTask(paper, eatingDrinkingTask).
}).
#pos(e2327@10, {}, {goesIn(paper_and_pencil, cabinet)}, {
  obj(paper_and_pencil). hasPhysicalQuality(paper_and_pencil, lightweight). hasPhysicalQuality(paper_and_pencil, rigid). hasRole(paper_and_pencil, toolRole). affordsTask(paper_and_pencil, workStudyTask).
}).
#pos(e2328@10, {}, {goesIn(paper_and_pencil, drawer)}, {
  obj(paper_and_pencil). hasPhysicalQuality(paper_and_pencil, lightweight). hasPhysicalQuality(paper_and_pencil, rigid). hasRole(paper_and_pencil, toolRole). affordsTask(paper_and_pencil, workStudyTask).
}).
#pos(e2329@10, {}, {goesIn(paper_clip, cabinet)}, {
  obj(paper_clip). hasPhysicalQuality(paper_clip, lightweight). hasPhysicalQuality(paper_clip, rigid). hasRole(paper_clip, toolRole). affordsTask(paper_clip, maintenanceTask).
}).
#pos(e2330@10, {}, {goesIn(paper_clip, home_office)}, {
  obj(paper_clip). hasPhysicalQuality(paper_clip, lightweight). hasPhysicalQuality(paper_clip, rigid). hasRole(paper_clip, toolRole). affordsTask(paper_clip, maintenanceTask).
}).
#pos(e2331@10, {}, {goesIn(paper_clips, dining_room)}, {
  obj(paper_clips). hasPhysicalQuality(paper_clips, lightweight). hasPhysicalQuality(paper_clips, rigid). hasRole(paper_clips, toolRole). affordsTask(paper_clips, maintenanceTask).
}).
#pos(e2332@10, {}, {goesIn(paper_clips, playroom)}, {
  obj(paper_clips). hasPhysicalQuality(paper_clips, lightweight). hasPhysicalQuality(paper_clips, rigid). hasRole(paper_clips, toolRole). affordsTask(paper_clips, maintenanceTask).
}).
#pos(e2333@10, {}, {goesIn(paper_fastener, drawer)}, {
  obj(paper_fastener). hasPhysicalQuality(paper_fastener, lightweight). hasPhysicalQuality(paper_fastener, rigid). hasRole(paper_fastener, toolRole). affordsTask(paper_fastener, maintenanceTask).
}).
#pos(e2334@10, {}, {goesIn(paper_fastener, music_room)}, {
  obj(paper_fastener). hasPhysicalQuality(paper_fastener, lightweight). hasPhysicalQuality(paper_fastener, rigid). hasRole(paper_fastener, toolRole). affordsTask(paper_fastener, maintenanceTask).
}).
#pos(e2335@10, {}, {goesIn(paper_towels, garage)}, {
  obj(paper_towels). hasPhysicalQuality(paper_towels, lightweight). hasPhysicalQuality(paper_towels, soft_Deformable). hasPhysicalQuality(paper_towels, washable). hasRole(paper_towels, cleaningToolRole). affordsTask(paper_towels, cleaningTask).
}).
#pos(e2336@10, {}, {goesIn(paper_towels, sink)}, {
  obj(paper_towels). hasPhysicalQuality(paper_towels, lightweight). hasPhysicalQuality(paper_towels, soft_Deformable). hasPhysicalQuality(paper_towels, washable). hasRole(paper_towels, cleaningToolRole). affordsTask(paper_towels, cleaningTask).
}).
#pos(e2337@10, {}, {goesIn(paperweight, music_room)}, {
  obj(paperweight). hasPhysicalQuality(paperweight, heavy). hasPhysicalQuality(paperweight, rigid). hasRole(paperweight, storageContainerRole).
}).
#pos(e2338@10, {}, {goesIn(paperweight, shelf)}, {
  obj(paperweight). hasPhysicalQuality(paperweight, heavy). hasPhysicalQuality(paperweight, rigid). hasRole(paperweight, storageContainerRole).
}).
#pos(e2339@10, {}, {goesIn(parlor, closet)}, {
  obj(parlor). hasRole(parlor, furnitureRole).
}).
#pos(e2340@10, {}, {goesIn(parlor, hallway)}, {
  obj(parlor). hasRole(parlor, furnitureRole).
}).
#pos(e2341@10, {}, {goesIn(patio_door, drawer)}, {
  obj(patio_door). hasPhysicalQuality(patio_door, heavy). hasPhysicalQuality(patio_door, rigid). hasRole(patio_door, furnitureRole). affordsTask(patio_door, leisureTask).
}).
#pos(e2342@10, {}, {goesIn(patio_door, hallway)}, {
  obj(patio_door). hasPhysicalQuality(patio_door, heavy). hasPhysicalQuality(patio_door, rigid). hasRole(patio_door, furnitureRole). affordsTask(patio_door, leisureTask).
}).
#pos(e2343@10, {}, {goesIn(peanut_butter, hallway)}, {
  obj(peanut_butter). hasPhysicalQuality(peanut_butter, liquid). hasPhysicalQuality(peanut_butter, perishable). hasRole(peanut_butter, consumableRole). affordsTask(peanut_butter, eatingDrinkingTask).
}).
#pos(e2344@10, {}, {goesIn(peanut_butter, living_room)}, {
  obj(peanut_butter). hasPhysicalQuality(peanut_butter, liquid). hasPhysicalQuality(peanut_butter, perishable). hasRole(peanut_butter, consumableRole). affordsTask(peanut_butter, eatingDrinkingTask).
}).
#pos(e2345@10, {}, {goesIn(peanuts, drawer)}, {
  obj(peanuts). hasPhysicalQuality(peanuts, granular). hasPhysicalQuality(peanuts, perishable). hasRole(peanuts, consumableRole). affordsTask(peanuts, eatingDrinkingTask).
}).
#pos(e2346@10, {}, {goesIn(peanuts, home_office)}, {
  obj(peanuts). hasPhysicalQuality(peanuts, granular). hasPhysicalQuality(peanuts, perishable). hasRole(peanuts, consumableRole). affordsTask(peanuts, eatingDrinkingTask).
}).
#pos(e2347@10, {}, {goesIn(pears, bathroom)}, {
  obj(pears). hasPhysicalQuality(pears, perishable). hasRole(pears, consumableRole). affordsTask(pears, eatingDrinkingTask).
}).
#pos(e2348@10, {}, {goesIn(pears, shelf)}, {
  obj(pears). hasPhysicalQuality(pears, perishable). hasRole(pears, consumableRole). affordsTask(pears, eatingDrinkingTask).
}).
#pos(e2349@10, {}, {goesIn(peas, closet)}, {
  obj(peas). hasPhysicalQuality(peas, perishable). hasRole(peas, consumableRole). affordsTask(peas, eatingDrinkingTask).
}).
#pos(e2350@10, {}, {goesIn(peas, garden)}, {
  obj(peas). hasPhysicalQuality(peas, perishable). hasRole(peas, consumableRole). affordsTask(peas, eatingDrinkingTask).
}).
#pos(e2351@10, {}, {goesIn(pen, bed)}, {
  obj(pen). hasPhysicalQuality(pen, lightweight). hasPhysicalQuality(pen, rigid). hasRole(pen, toolRole). affordsTask(pen, workStudyTask).
}).
#pos(e2352@10, {}, {goesIn(pen, trash)}, {
  obj(pen). hasPhysicalQuality(pen, lightweight). hasPhysicalQuality(pen, rigid). hasRole(pen, toolRole). affordsTask(pen, workStudyTask).
}).
#pos(e2353@10, {}, {goesIn(pencil, home_office)}, {
  obj(pencil). hasPhysicalQuality(pencil, lightweight). hasPhysicalQuality(pencil, rigid). hasRole(pencil, toolRole).
}).
#pos(e2354@10, {}, {goesIn(pencil, storage_room)}, {
  obj(pencil). hasPhysicalQuality(pencil, lightweight). hasPhysicalQuality(pencil, rigid). hasRole(pencil, toolRole).
}).
#pos(e2355@10, {}, {goesIn(pencil_sharpener, closet)}, {
  obj(pencil_sharpener). hasPhysicalQuality(pencil_sharpener, heavy). hasPhysicalQuality(pencil_sharpener, rigid). hasRole(pencil_sharpener, toolRole). affordsTask(pencil_sharpener, maintenanceTask).
}).
#pos(e2356@10, {}, {goesIn(pencil_sharpener, storage_room)}, {
  obj(pencil_sharpener). hasPhysicalQuality(pencil_sharpener, heavy). hasPhysicalQuality(pencil_sharpener, rigid). hasRole(pencil_sharpener, toolRole). affordsTask(pencil_sharpener, maintenanceTask).
}).
#pos(e2357@10, {}, {goesIn(pens_and_pencils, cabinet)}, {
  obj(pens_and_pencils). hasPhysicalQuality(pens_and_pencils, lightweight). hasRole(pens_and_pencils, utensilRole). affordsTask(pens_and_pencils, workStudyTask).
}).
#pos(e2358@10, {}, {goesIn(pens_and_pencils, living_room)}, {
  obj(pens_and_pencils). hasPhysicalQuality(pens_and_pencils, lightweight). hasRole(pens_and_pencils, utensilRole). affordsTask(pens_and_pencils, workStudyTask).
}).
#pos(e2359@10, {}, {goesIn(phillips_head_screwdriver, bathroom)}, {
  obj(phillips_head_screwdriver). hasPhysicalQuality(phillips_head_screwdriver, heavy). hasPhysicalQuality(phillips_head_screwdriver, rigid). hasRole(phillips_head_screwdriver, toolRole). affordsTask(phillips_head_screwdriver, maintenanceTask).
}).
#pos(e2360@10, {}, {goesIn(phillips_head_screwdriver, shelf)}, {
  obj(phillips_head_screwdriver). hasPhysicalQuality(phillips_head_screwdriver, heavy). hasPhysicalQuality(phillips_head_screwdriver, rigid). hasRole(phillips_head_screwdriver, toolRole). affordsTask(phillips_head_screwdriver, maintenanceTask).
}).
#pos(e2361@10, {}, {goesIn(phillips_screwdriver, hallway)}, {
  obj(phillips_screwdriver). hasPhysicalQuality(phillips_screwdriver, lightweight). hasPhysicalQuality(phillips_screwdriver, rigid). hasRole(phillips_screwdriver, toolRole). affordsTask(phillips_screwdriver, maintenanceTask).
}).
#pos(e2362@10, {}, {goesIn(phillips_screwdriver, music_room)}, {
  obj(phillips_screwdriver). hasPhysicalQuality(phillips_screwdriver, lightweight). hasPhysicalQuality(phillips_screwdriver, rigid). hasRole(phillips_screwdriver, toolRole). affordsTask(phillips_screwdriver, maintenanceTask).
}).
#pos(e2363@10, {}, {goesIn(phone, living_room)}, {
  obj(phone). hasPhysicalQuality(phone, electronic). hasPhysicalQuality(phone, lightweight). hasRole(phone, toolRole). affordsTask(phone, workStudyTask).
}).
#pos(e2364@10, {}, {goesIn(phone, music_room)}, {
  obj(phone). hasPhysicalQuality(phone, electronic). hasPhysicalQuality(phone, lightweight). hasRole(phone, toolRole). affordsTask(phone, workStudyTask).
}).
#pos(e2365@10, {}, {goesIn(phone_book, dining_room)}, {
  obj(phone_book). hasPhysicalQuality(phone_book, heavy). hasRole(phone_book, documentRole).
}).
#pos(e2366@10, {}, {goesIn(phone_book, home_office)}, {
  obj(phone_book). hasPhysicalQuality(phone_book, heavy). hasRole(phone_book, documentRole).
}).
#pos(e2367@10, {}, {goesIn(photograph, bed)}, {
  obj(photograph). hasRole(photograph, documentRole). affordsTask(photograph, leisureTask).
}).
#pos(e2368@10, {}, {goesIn(photograph, garage)}, {
  obj(photograph). hasRole(photograph, documentRole). affordsTask(photograph, leisureTask).
}).
#pos(e2369@10, {}, {goesIn(piano, cabinet)}, {
  obj(piano). hasPhysicalQuality(piano, electronic). hasPhysicalQuality(piano, rigid). hasRole(piano, musicalInstrumentRole). affordsTask(piano, leisureTask).
}).
#pos(e2370@10, {}, {goesIn(piano, living_room)}, {
  obj(piano). hasPhysicalQuality(piano, electronic). hasPhysicalQuality(piano, rigid). hasRole(piano, musicalInstrumentRole). affordsTask(piano, leisureTask).
}).
#pos(e2371@10, {}, {goesIn(pickle, bedroom)}, {
  obj(pickle). hasPhysicalQuality(pickle, perishable). hasRole(pickle, consumableRole). affordsTask(pickle, eatingDrinkingTask).
}).
#pos(e2372@10, {}, {goesIn(pickle, kitchen)}, {
  obj(pickle). hasPhysicalQuality(pickle, perishable). hasRole(pickle, consumableRole). affordsTask(pickle, eatingDrinkingTask).
}).
#pos(e2373@10, {}, {goesIn(picnic_basket, bedroom)}, {
  obj(picnic_basket). hasPhysicalQuality(picnic_basket, hasContainer). hasRole(picnic_basket, furnitureRole). hasRole(picnic_basket, storageContainerRole). affordsTask(picnic_basket, eatingDrinkingTask). affordsTask(picnic_basket, foodPreparationTask).
}).
#pos(e2374@10, {}, {goesIn(picnic_basket, music_room)}, {
  obj(picnic_basket). hasPhysicalQuality(picnic_basket, hasContainer). hasRole(picnic_basket, furnitureRole). hasRole(picnic_basket, storageContainerRole). affordsTask(picnic_basket, eatingDrinkingTask). affordsTask(picnic_basket, foodPreparationTask).
}).
#pos(e2375@10, {}, {goesIn(picture_frame, playroom)}, {
  obj(picture_frame). hasPhysicalQuality(picture_frame, lightweight). hasPhysicalQuality(picture_frame, rigid). hasRole(picture_frame, decorationRole).
}).
#pos(e2376@10, {}, {goesIn(picture_frame, storage_room)}, {
  obj(picture_frame). hasPhysicalQuality(picture_frame, lightweight). hasPhysicalQuality(picture_frame, rigid). hasRole(picture_frame, decorationRole).
}).
#pos(e2377@10, {}, {goesIn(pictures, bed)}, {
  obj(pictures). hasPhysicalQuality(pictures, lightweight). hasRole(pictures, decorationRole).
}).
#pos(e2378@10, {}, {goesIn(pictures, dining_room)}, {
  obj(pictures). hasPhysicalQuality(pictures, lightweight). hasRole(pictures, decorationRole).
}).
#pos(e2379@10, {}, {goesIn(pillow, dining_room)}, {
  obj(pillow). hasPhysicalQuality(pillow, lightweight). hasPhysicalQuality(pillow, soft_Deformable). hasRole(pillow, beddingRole). affordsTask(pillow, sleepingTask).
}).
#pos(e2380@10, {}, {goesIn(pillow, shelf)}, {
  obj(pillow). hasPhysicalQuality(pillow, lightweight). hasPhysicalQuality(pillow, soft_Deformable). hasRole(pillow, beddingRole). affordsTask(pillow, sleepingTask).
}).
#pos(e2381@10, {}, {goesIn(pillow_case, dining_room)}, {
  obj(pillow_case). hasPhysicalQuality(pillow_case, soft_Deformable). hasPhysicalQuality(pillow_case, washable). hasRole(pillow_case, beddingRole). affordsTask(pillow_case, sleepingTask).
}).
#pos(e2382@10, {}, {goesIn(pillow_case, library)}, {
  obj(pillow_case). hasPhysicalQuality(pillow_case, soft_Deformable). hasPhysicalQuality(pillow_case, washable). hasRole(pillow_case, beddingRole). affordsTask(pillow_case, sleepingTask).
}).
#pos(e2383@10, {}, {goesIn(pineapple, cabinet)}, {
  obj(pineapple). hasPhysicalQuality(pineapple, perishable). hasRole(pineapple, consumableRole). affordsTask(pineapple, eatingDrinkingTask).
}).
#pos(e2384@10, {}, {goesIn(pineapple, fridge)}, {
  obj(pineapple). hasPhysicalQuality(pineapple, perishable). hasRole(pineapple, consumableRole). affordsTask(pineapple, eatingDrinkingTask).
}).
#pos(e2385@10, {}, {goesIn(pipe, laundry_room)}, {
  obj(pipe). hasPhysicalQuality(pipe, heavy). hasRole(pipe, toolRole). affordsTask(pipe, maintenanceTask).
}).
#pos(e2386@10, {}, {goesIn(pipe, playroom)}, {
  obj(pipe). hasPhysicalQuality(pipe, heavy). hasRole(pipe, toolRole). affordsTask(pipe, maintenanceTask).
}).
#pos(e2387@10, {}, {goesIn(plastic, storage_room)}, {
  obj(plastic). hasPhysicalQuality(plastic, granular). hasPhysicalQuality(plastic, rigid).
}).
#pos(e2388@10, {}, {goesIn(plastic, table)}, {
  obj(plastic). hasPhysicalQuality(plastic, granular). hasPhysicalQuality(plastic, rigid).
}).
#pos(e2389@10, {}, {goesIn(plate, garage)}, {
  obj(plate). hasPhysicalQuality(plate, hasContainer). hasPhysicalQuality(plate, rigid). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e2390@10, {}, {goesIn(plate, trash)}, {
  obj(plate). hasPhysicalQuality(plate, hasContainer). hasPhysicalQuality(plate, rigid). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e2391@10, {}, {goesIn(plates, library)}, {
  obj(plates). hasPhysicalQuality(plates, lightweight). hasPhysicalQuality(plates, rigid). hasRole(plates, utensilRole). affordsTask(plates, eatingDrinkingTask).
}).
#pos(e2392@10, {}, {goesIn(plates, playroom)}, {
  obj(plates). hasPhysicalQuality(plates, lightweight). hasPhysicalQuality(plates, rigid). hasRole(plates, utensilRole). affordsTask(plates, eatingDrinkingTask).
}).
#pos(e2393@10, {}, {goesIn(plumbing, playroom)}, {
  obj(plumbing). hasPhysicalQuality(plumbing, heavy). hasPhysicalQuality(plumbing, rigid). hasRole(plumbing, toolRole). affordsTask(plumbing, maintenanceTask).
}).
#pos(e2394@10, {}, {goesIn(plumbing, trash)}, {
  obj(plumbing). hasPhysicalQuality(plumbing, heavy). hasPhysicalQuality(plumbing, rigid). hasRole(plumbing, toolRole). affordsTask(plumbing, maintenanceTask).
}).
#pos(e2395@10, {}, {goesIn(pocket, hallway)}, {
  obj(pocket). hasPhysicalQuality(pocket, lightweight). hasPhysicalQuality(pocket, soft_Deformable). hasRole(pocket, storageContainerRole). affordsTask(pocket, storageTask).
}).
#pos(e2396@10, {}, {goesIn(pocket, shelf)}, {
  obj(pocket). hasPhysicalQuality(pocket, lightweight). hasPhysicalQuality(pocket, soft_Deformable). hasRole(pocket, storageContainerRole). affordsTask(pocket, storageTask).
}).
#pos(e2397@10, {}, {goesIn(poker_chips, garden)}, {
  obj(poker_chips). hasPhysicalQuality(poker_chips, fragile). hasPhysicalQuality(poker_chips, lightweight). hasPhysicalQuality(poker_chips, rigid). hasRole(poker_chips, entertainmentRole). affordsTask(poker_chips, leisureTask).
}).
#pos(e2398@10, {}, {goesIn(poker_chips, laundry_room)}, {
  obj(poker_chips). hasPhysicalQuality(poker_chips, fragile). hasPhysicalQuality(poker_chips, lightweight). hasPhysicalQuality(poker_chips, rigid). hasRole(poker_chips, entertainmentRole). affordsTask(poker_chips, leisureTask).
}).
#pos(e2399@10, {}, {goesIn(polish, sink)}, {
  obj(polish). hasPhysicalQuality(polish, liquid). hasRole(polish, cleaningToolRole). affordsTask(polish, cleaningTask).
}).
#pos(e2400@10, {}, {goesIn(polish, storage_room)}, {
  obj(polish). hasPhysicalQuality(polish, liquid). hasRole(polish, cleaningToolRole). affordsTask(polish, cleaningTask).
}).
#pos(e2401@10, {}, {goesIn(popcorn, bed)}, {
  obj(popcorn). hasPhysicalQuality(popcorn, perishable). hasRole(popcorn, consumableRole). affordsTask(popcorn, eatingDrinkingTask).
}).
#pos(e2402@10, {}, {goesIn(popcorn, sink)}, {
  obj(popcorn). hasPhysicalQuality(popcorn, perishable). hasRole(popcorn, consumableRole). affordsTask(popcorn, eatingDrinkingTask).
}).
#pos(e2403@10, {}, {goesIn(pork, cabinet)}, {
  obj(pork). hasPhysicalQuality(pork, perishable). hasRole(pork, consumableRole). affordsTask(pork, eatingDrinkingTask).
}).
#pos(e2404@10, {}, {goesIn(pork, drawer)}, {
  obj(pork). hasPhysicalQuality(pork, perishable). hasRole(pork, consumableRole). affordsTask(pork, eatingDrinkingTask).
}).
#pos(e2405@10, {}, {goesIn(portable_shower_head, drawer)}, {
  obj(portable_shower_head). hasPhysicalQuality(portable_shower_head, lightweight). hasPhysicalQuality(portable_shower_head, liquid). hasRole(portable_shower_head, cleaningToolRole). affordsTask(portable_shower_head, hygieneTask).
}).
#pos(e2406@10, {}, {goesIn(portable_shower_head, storage_room)}, {
  obj(portable_shower_head). hasPhysicalQuality(portable_shower_head, lightweight). hasPhysicalQuality(portable_shower_head, liquid). hasRole(portable_shower_head, cleaningToolRole). affordsTask(portable_shower_head, hygieneTask).
}).
#pos(e2407@10, {}, {goesIn(post_note, garage)}, {
  obj(post_note). hasRole(post_note, documentRole).
}).
#pos(e2408@10, {}, {goesIn(post_note, storage_room)}, {
  obj(post_note). hasRole(post_note, documentRole).
}).
#pos(e2409@10, {}, {goesIn(post_notes, bedroom)}, {
  obj(post_notes). hasRole(post_notes, documentRole).
}).
#pos(e2410@10, {}, {goesIn(post_notes, dining_room)}, {
  obj(post_notes). hasRole(post_notes, documentRole).
}).
#pos(e2411@10, {}, {goesIn(poster, drawer)}, {
  obj(poster). hasRole(poster, decorationRole).
}).
#pos(e2412@10, {}, {goesIn(poster, garage)}, {
  obj(poster). hasRole(poster, decorationRole).
}).
#pos(e2413@10, {}, {goesIn(pot, bedroom)}, {
  obj(pot). hasPhysicalQuality(pot, heavy). hasPhysicalQuality(pot, rigid). hasRole(pot, cookwareRole). affordsTask(pot, foodPreparationTask).
}).
#pos(e2414@10, {}, {goesIn(pot, storage_room)}, {
  obj(pot). hasPhysicalQuality(pot, heavy). hasPhysicalQuality(pot, rigid). hasRole(pot, cookwareRole). affordsTask(pot, foodPreparationTask).
}).
#pos(e2415@10, {}, {goesIn(potatoes, bathroom)}, {
  obj(potatoes). hasPhysicalQuality(potatoes, perishable). hasRole(potatoes, consumableRole). affordsTask(potatoes, foodPreparationTask).
}).
#pos(e2416@10, {}, {goesIn(potatoes, dining_room)}, {
  obj(potatoes). hasPhysicalQuality(potatoes, perishable). hasRole(potatoes, consumableRole). affordsTask(potatoes, foodPreparationTask).
}).
#pos(e2417@10, {}, {goesIn(pouch, library)}, {
  obj(pouch). hasPhysicalQuality(pouch, lightweight). hasPhysicalQuality(pouch, soft_Deformable). hasRole(pouch, storageContainerRole). affordsTask(pouch, storageTask).
}).
#pos(e2418@10, {}, {goesIn(pouch, living_room)}, {
  obj(pouch). hasPhysicalQuality(pouch, lightweight). hasPhysicalQuality(pouch, soft_Deformable). hasRole(pouch, storageContainerRole). affordsTask(pouch, storageTask).
}).
#pos(e2419@10, {}, {goesIn(power_screwdriver, sink)}, {
  obj(power_screwdriver). hasPhysicalQuality(power_screwdriver, electronic). hasPhysicalQuality(power_screwdriver, heavy). hasPhysicalQuality(power_screwdriver, rigid). hasRole(power_screwdriver, toolRole). affordsTask(power_screwdriver, maintenanceTask).
}).
#pos(e2420@10, {}, {goesIn(power_screwdriver, trash)}, {
  obj(power_screwdriver). hasPhysicalQuality(power_screwdriver, electronic). hasPhysicalQuality(power_screwdriver, heavy). hasPhysicalQuality(power_screwdriver, rigid). hasRole(power_screwdriver, toolRole). affordsTask(power_screwdriver, maintenanceTask).
}).
#pos(e2421@10, {}, {goesIn(printer, garden)}, {
  obj(printer). hasPhysicalQuality(printer, electronic). hasPhysicalQuality(printer, heavy). hasRole(printer, applianceRole). affordsTask(printer, workStudyTask).
}).
#pos(e2422@10, {}, {goesIn(printer, pantry)}, {
  obj(printer). hasPhysicalQuality(printer, electronic). hasPhysicalQuality(printer, heavy). hasRole(printer, applianceRole). affordsTask(printer, workStudyTask).
}).
#pos(e2423@10, {}, {goesIn(pump, bed)}, {
  obj(pump). hasPhysicalQuality(pump, electronic). hasPhysicalQuality(pump, heavy). hasRole(pump, toolRole). affordsTask(pump, maintenanceTask).
}).
#pos(e2424@10, {}, {goesIn(pump, fridge)}, {
  obj(pump). hasPhysicalQuality(pump, electronic). hasPhysicalQuality(pump, heavy). hasRole(pump, toolRole). affordsTask(pump, maintenanceTask).
}).
#pos(e2425@10, {}, {goesIn(purse, hallway)}, {
  obj(purse). hasPhysicalQuality(purse, lightweight). hasPhysicalQuality(purse, soft_Deformable). hasRole(purse, storageContainerRole). affordsTask(purse, storageTask).
}).
#pos(e2426@10, {}, {goesIn(purse, trash)}, {
  obj(purse). hasPhysicalQuality(purse, lightweight). hasPhysicalQuality(purse, soft_Deformable). hasRole(purse, storageContainerRole). affordsTask(purse, storageTask).
}).
#pos(e2427@10, {}, {goesIn(puzzle, home_office)}, {
  obj(puzzle). hasRole(puzzle, entertainmentRole). affordsTask(puzzle, leisureTask).
}).
#pos(e2428@10, {}, {goesIn(puzzle, pantry)}, {
  obj(puzzle). hasRole(puzzle, entertainmentRole). affordsTask(puzzle, leisureTask).
}).
#pos(e2429@10, {}, {goesIn(quill_brush, bedroom)}, {
  obj(quill_brush). hasPhysicalQuality(quill_brush, lightweight). hasPhysicalQuality(quill_brush, soft_Deformable). hasRole(quill_brush, toolRole).
}).
#pos(e2430@10, {}, {goesIn(quill_brush, trash)}, {
  obj(quill_brush). hasPhysicalQuality(quill_brush, lightweight). hasPhysicalQuality(quill_brush, soft_Deformable). hasRole(quill_brush, toolRole).
}).
#pos(e2431@10, {}, {goesIn(radiator, fridge)}, {
  obj(radiator). hasPhysicalQuality(radiator, heated). hasRole(radiator, applianceRole). affordsTask(radiator, maintenanceTask).
}).
#pos(e2432@10, {}, {goesIn(radiator, garden)}, {
  obj(radiator). hasPhysicalQuality(radiator, heated). hasRole(radiator, applianceRole). affordsTask(radiator, maintenanceTask).
}).
#pos(e2433@10, {}, {goesIn(radio, sink)}, {
  obj(radio). hasPhysicalQuality(radio, electronic). hasPhysicalQuality(radio, lightweight). hasRole(radio, applianceRole). affordsTask(radio, leisureTask).
}).
#pos(e2434@10, {}, {goesIn(radio, trash)}, {
  obj(radio). hasPhysicalQuality(radio, electronic). hasPhysicalQuality(radio, lightweight). hasRole(radio, applianceRole). affordsTask(radio, leisureTask).
}).
#pos(e2435@10, {}, {goesIn(rafter, drawer)}, {
  obj(rafter). hasPhysicalQuality(rafter, heavy). hasPhysicalQuality(rafter, rigid). hasRole(rafter, furnitureRole).
}).
#pos(e2436@10, {}, {goesIn(rafter, table)}, {
  obj(rafter). hasPhysicalQuality(rafter, heavy). hasPhysicalQuality(rafter, rigid). hasRole(rafter, furnitureRole).
}).
#pos(e2437@10, {}, {goesIn(railing, closet)}, {
  obj(railing). hasPhysicalQuality(railing, rigid). hasRole(railing, furnitureRole).
}).
#pos(e2438@10, {}, {goesIn(railing, living_room)}, {
  obj(railing). hasPhysicalQuality(railing, rigid). hasRole(railing, furnitureRole).
}).
#pos(e2439@10, {}, {goesIn(ratchet_screwdriver, garden)}, {
  obj(ratchet_screwdriver). hasPhysicalQuality(ratchet_screwdriver, electronic). hasPhysicalQuality(ratchet_screwdriver, heavy). hasPhysicalQuality(ratchet_screwdriver, isRotary). hasPhysicalQuality(ratchet_screwdriver, rigid). hasRole(ratchet_screwdriver, toolRole). affordsTask(ratchet_screwdriver, maintenanceTask).
}).
#pos(e2440@10, {}, {goesIn(ratchet_screwdriver, shelf)}, {
  obj(ratchet_screwdriver). hasPhysicalQuality(ratchet_screwdriver, electronic). hasPhysicalQuality(ratchet_screwdriver, heavy). hasPhysicalQuality(ratchet_screwdriver, isRotary). hasPhysicalQuality(ratchet_screwdriver, rigid). hasRole(ratchet_screwdriver, toolRole). affordsTask(ratchet_screwdriver, maintenanceTask).
}).
#pos(e2441@10, {}, {goesIn(recycling_bin, closet)}, {
  obj(recycling_bin). hasPhysicalQuality(recycling_bin, hasContainer). hasPhysicalQuality(recycling_bin, heavy). hasRole(recycling_bin, storageContainerRole). affordsTask(recycling_bin, wasteDisposalTask).
}).
#pos(e2442@10, {}, {goesIn(recycling_bin, sink)}, {
  obj(recycling_bin). hasPhysicalQuality(recycling_bin, hasContainer). hasPhysicalQuality(recycling_bin, heavy). hasRole(recycling_bin, storageContainerRole). affordsTask(recycling_bin, wasteDisposalTask).
}).
#pos(e2443@10, {}, {goesIn(refrigerator, dining_room)}, {
  obj(refrigerator). hasPhysicalQuality(refrigerator, electronic). hasPhysicalQuality(refrigerator, heavy). hasPhysicalQuality(refrigerator, requiresCooling). hasRole(refrigerator, applianceRole). affordsTask(refrigerator, storageTask).
}).
#pos(e2444@10, {}, {goesIn(refrigerator, hallway)}, {
  obj(refrigerator). hasPhysicalQuality(refrigerator, electronic). hasPhysicalQuality(refrigerator, heavy). hasPhysicalQuality(refrigerator, requiresCooling). hasRole(refrigerator, applianceRole). affordsTask(refrigerator, storageTask).
}).
#pos(e2445@10, {}, {goesIn(remote_control, bed)}, {
  obj(remote_control). hasPhysicalQuality(remote_control, electronic). hasPhysicalQuality(remote_control, lightweight). hasRole(remote_control, toolRole). affordsTask(remote_control, leisureTask).
}).
#pos(e2446@10, {}, {goesIn(remote_control, cabinet)}, {
  obj(remote_control). hasPhysicalQuality(remote_control, electronic). hasPhysicalQuality(remote_control, lightweight). hasRole(remote_control, toolRole). affordsTask(remote_control, leisureTask).
}).
#pos(e2447@10, {}, {goesIn(ribbon, drawer)}, {
  obj(ribbon). hasPhysicalQuality(ribbon, lightweight). hasPhysicalQuality(ribbon, soft_Deformable). hasRole(ribbon, clothingRole). affordsTask(ribbon, dressingTask).
}).
#pos(e2448@10, {}, {goesIn(ribbon, home_office)}, {
  obj(ribbon). hasPhysicalQuality(ribbon, lightweight). hasPhysicalQuality(ribbon, soft_Deformable). hasRole(ribbon, clothingRole). affordsTask(ribbon, dressingTask).
}).
#pos(e2449@10, {}, {goesIn(rice, storage_room)}, {
  obj(rice). hasPhysicalQuality(rice, granular). hasRole(rice, consumableRole). affordsTask(rice, foodPreparationTask).
}).
#pos(e2450@10, {}, {goesIn(rice, table)}, {
  obj(rice). hasPhysicalQuality(rice, granular). hasRole(rice, consumableRole). affordsTask(rice, foodPreparationTask).
}).
#pos(e2451@10, {}, {goesIn(ring, home_office)}, {
  obj(ring). hasPhysicalQuality(ring, lightweight). hasPhysicalQuality(ring, rigid). hasRole(ring, utensilRole).
}).
#pos(e2452@10, {}, {goesIn(ring, music_room)}, {
  obj(ring). hasPhysicalQuality(ring, lightweight). hasPhysicalQuality(ring, rigid). hasRole(ring, utensilRole).
}).
#pos(e2453@10, {}, {goesIn(roof, cabinet)}, {
  obj(roof). hasPhysicalQuality(roof, heavy). hasPhysicalQuality(roof, rigid). hasRole(roof, furnitureRole).
}).
#pos(e2454@10, {}, {goesIn(roof, living_room)}, {
  obj(roof). hasPhysicalQuality(roof, heavy). hasPhysicalQuality(roof, rigid). hasRole(roof, furnitureRole).
}).
#pos(e2455@10, {}, {goesIn(roots, home_office)}, {
  obj(roots). hasPhysicalQuality(roots, perishable). hasRole(roots, consumableRole).
}).
#pos(e2456@10, {}, {goesIn(roots, library)}, {
  obj(roots). hasPhysicalQuality(roots, perishable). hasRole(roots, consumableRole).
}).
#pos(e2457@10, {}, {goesIn(rose, garage)}, {
  obj(rose). hasPhysicalQuality(rose, perishable). hasRole(rose, consumableRole).
}).
#pos(e2458@10, {}, {goesIn(rose, pantry)}, {
  obj(rose). hasPhysicalQuality(rose, perishable). hasRole(rose, consumableRole).
}).
#pos(e2459@10, {}, {goesIn(rotten_food, living_room)}, {
  obj(rotten_food). hasPhysicalQuality(rotten_food, perishable). hasPhysicalQuality(rotten_food, toxic_Hazardous). hasRole(rotten_food, consumableRole).
}).
#pos(e2460@10, {}, {goesIn(rotten_food, pantry)}, {
  obj(rotten_food). hasPhysicalQuality(rotten_food, perishable). hasPhysicalQuality(rotten_food, toxic_Hazardous). hasRole(rotten_food, consumableRole).
}).
#pos(e2461@10, {}, {goesIn(round_brush, cabinet)}, {
  obj(round_brush). hasPhysicalQuality(round_brush, lightweight). hasPhysicalQuality(round_brush, soft_Deformable). hasRole(round_brush, toolRole). affordsTask(round_brush, cleaningTask).
}).
#pos(e2462@10, {}, {goesIn(round_brush, music_room)}, {
  obj(round_brush). hasPhysicalQuality(round_brush, lightweight). hasPhysicalQuality(round_brush, soft_Deformable). hasRole(round_brush, toolRole). affordsTask(round_brush, cleaningTask).
}).
#pos(e2463@10, {}, {goesIn(rug, cabinet)}, {
  obj(rug). hasPhysicalQuality(rug, lightweight). hasPhysicalQuality(rug, soft_Deformable). hasRole(rug, furnitureRole). affordsTask(rug, leisureTask).
}).
#pos(e2464@10, {}, {goesIn(rug, trash)}, {
  obj(rug). hasPhysicalQuality(rug, lightweight). hasPhysicalQuality(rug, soft_Deformable). hasRole(rug, furnitureRole). affordsTask(rug, leisureTask).
}).
#pos(e2465@10, {}, {goesIn(rule, hallway)}, {
  obj(rule). hasPhysicalQuality(rule, rigid). hasRole(rule, toolRole). affordsTask(rule, maintenanceTask).
}).
#pos(e2466@10, {}, {goesIn(rule, laundry_room)}, {
  obj(rule). hasPhysicalQuality(rule, rigid). hasRole(rule, toolRole). affordsTask(rule, maintenanceTask).
}).
#pos(e2467@10, {}, {goesIn(ruler, garden)}, {
  obj(ruler). hasPhysicalQuality(ruler, rigid). hasRole(ruler, toolRole). affordsTask(ruler, maintenanceTask).
}).
#pos(e2468@10, {}, {goesIn(ruler, sink)}, {
  obj(ruler). hasPhysicalQuality(ruler, rigid). hasRole(ruler, toolRole). affordsTask(ruler, maintenanceTask).
}).
#pos(e2469@10, {}, {goesIn(salad, bathroom)}, {
  obj(salad). hasPhysicalQuality(salad, perishable). hasRole(salad, consumableRole). affordsTask(salad, eatingDrinkingTask).
}).
#pos(e2470@10, {}, {goesIn(salad, bedroom)}, {
  obj(salad). hasPhysicalQuality(salad, perishable). hasRole(salad, consumableRole). affordsTask(salad, eatingDrinkingTask).
}).
#pos(e2471@10, {}, {goesIn(salad_bowl, garden)}, {
  obj(salad_bowl). hasPhysicalQuality(salad_bowl, hasContainer). hasRole(salad_bowl, storageContainerRole). hasRole(salad_bowl, utensilRole). affordsTask(salad_bowl, foodPreparationTask).
}).
#pos(e2472@10, {}, {goesIn(salad_bowl, storage_room)}, {
  obj(salad_bowl). hasPhysicalQuality(salad_bowl, hasContainer). hasRole(salad_bowl, storageContainerRole). hasRole(salad_bowl, utensilRole). affordsTask(salad_bowl, foodPreparationTask).
}).
#pos(e2473@10, {}, {goesIn(salad_spinner, bathroom)}, {
  obj(salad_spinner). hasPhysicalQuality(salad_spinner, lightweight). hasPhysicalQuality(salad_spinner, rigid). hasRole(salad_spinner, utensilRole). affordsTask(salad_spinner, foodPreparationTask).
}).
#pos(e2474@10, {}, {goesIn(salad_spinner, shelf)}, {
  obj(salad_spinner). hasPhysicalQuality(salad_spinner, lightweight). hasPhysicalQuality(salad_spinner, rigid). hasRole(salad_spinner, utensilRole). affordsTask(salad_spinner, foodPreparationTask).
}).
#pos(e2475@10, {}, {goesIn(salt, bedroom)}, {
  obj(salt). hasPhysicalQuality(salt, granular). hasRole(salt, consumableRole). affordsTask(salt, foodPreparationTask).
}).
#pos(e2476@10, {}, {goesIn(salt, home_office)}, {
  obj(salt). hasPhysicalQuality(salt, granular). hasRole(salt, consumableRole). affordsTask(salt, foodPreparationTask).
}).
#pos(e2477@10, {}, {goesIn(salt_and_pepper, dining_room)}, {
  obj(salt_and_pepper). hasPhysicalQuality(salt_and_pepper, granular). hasRole(salt_and_pepper, consumableRole). affordsTask(salt_and_pepper, foodPreparationTask).
}).
#pos(e2478@10, {}, {goesIn(salt_and_pepper, living_room)}, {
  obj(salt_and_pepper). hasPhysicalQuality(salt_and_pepper, granular). hasRole(salt_and_pepper, consumableRole). affordsTask(salt_and_pepper, foodPreparationTask).
}).
#pos(e2479@10, {}, {goesIn(saltshaker, pantry)}, {
  obj(saltshaker). hasPhysicalQuality(saltshaker, granular). hasPhysicalQuality(saltshaker, lightweight). hasRole(saltshaker, utensilRole). affordsTask(saltshaker, foodPreparationTask).
}).
#pos(e2480@10, {}, {goesIn(saltshaker, storage_room)}, {
  obj(saltshaker). hasPhysicalQuality(saltshaker, granular). hasPhysicalQuality(saltshaker, lightweight). hasRole(saltshaker, utensilRole). affordsTask(saltshaker, foodPreparationTask).
}).
#pos(e2481@10, {}, {goesIn(sauce, garage)}, {
  obj(sauce). hasPhysicalQuality(sauce, liquid). hasPhysicalQuality(sauce, perishable). hasRole(sauce, consumableRole). affordsTask(sauce, foodPreparationTask).
}).
#pos(e2482@10, {}, {goesIn(sauce, living_room)}, {
  obj(sauce). hasPhysicalQuality(sauce, liquid). hasPhysicalQuality(sauce, perishable). hasRole(sauce, consumableRole). affordsTask(sauce, foodPreparationTask).
}).
#pos(e2483@10, {}, {goesIn(saucepan, drawer)}, {
  obj(saucepan). hasPhysicalQuality(saucepan, heated). hasPhysicalQuality(saucepan, heavy). hasRole(saucepan, cookwareRole). affordsTask(saucepan, foodPreparationTask).
}).
#pos(e2484@10, {}, {goesIn(saucepan, sink)}, {
  obj(saucepan). hasPhysicalQuality(saucepan, heated). hasPhysicalQuality(saucepan, heavy). hasRole(saucepan, cookwareRole). affordsTask(saucepan, foodPreparationTask).
}).
#pos(e2485@10, {}, {goesIn(saucer, library)}, {
  obj(saucer). hasPhysicalQuality(saucer, lightweight). hasPhysicalQuality(saucer, rigid). hasRole(saucer, utensilRole). affordsTask(saucer, eatingDrinkingTask).
}).
#pos(e2486@10, {}, {goesIn(saucer, storage_room)}, {
  obj(saucer). hasPhysicalQuality(saucer, lightweight). hasPhysicalQuality(saucer, rigid). hasRole(saucer, utensilRole). affordsTask(saucer, eatingDrinkingTask).
}).
#pos(e2487@10, {}, {goesIn(scale, cabinet)}, {
  obj(scale). hasPhysicalQuality(scale, electronic). hasPhysicalQuality(scale, heavy). hasRole(scale, toolRole). affordsTask(scale, maintenanceTask).
}).
#pos(e2488@10, {}, {goesIn(scale, pantry)}, {
  obj(scale). hasPhysicalQuality(scale, electronic). hasPhysicalQuality(scale, heavy). hasRole(scale, toolRole). affordsTask(scale, maintenanceTask).
}).
#pos(e2489@10, {}, {goesIn(scissors, laundry_room)}, {
  obj(scissors). hasPhysicalQuality(scissors, rigid). hasPhysicalQuality(scissors, sharp). hasRole(scissors, toolRole). affordsTask(scissors, maintenanceTask).
}).
#pos(e2490@10, {}, {goesIn(scissors, pantry)}, {
  obj(scissors). hasPhysicalQuality(scissors, rigid). hasPhysicalQuality(scissors, sharp). hasRole(scissors, toolRole). affordsTask(scissors, maintenanceTask).
}).
#pos(e2491@10, {}, {goesIn(scotch_tape, hallway)}, {
  obj(scotch_tape). hasPhysicalQuality(scotch_tape, lightweight). hasPhysicalQuality(scotch_tape, soft_Deformable). hasRole(scotch_tape, toolRole). affordsTask(scotch_tape, leisureTask).
}).
#pos(e2492@10, {}, {goesIn(scotch_tape, laundry_room)}, {
  obj(scotch_tape). hasPhysicalQuality(scotch_tape, lightweight). hasPhysicalQuality(scotch_tape, soft_Deformable). hasRole(scotch_tape, toolRole). affordsTask(scotch_tape, leisureTask).
}).
#pos(e2493@10, {}, {goesIn(screwdriver, kitchen)}, {
  obj(screwdriver). hasPhysicalQuality(screwdriver, lightweight). hasPhysicalQuality(screwdriver, rigid). hasRole(screwdriver, toolRole). affordsTask(screwdriver, maintenanceTask).
}).
#pos(e2494@10, {}, {goesIn(screwdriver, trash)}, {
  obj(screwdriver). hasPhysicalQuality(screwdriver, lightweight). hasPhysicalQuality(screwdriver, rigid). hasRole(screwdriver, toolRole). affordsTask(screwdriver, maintenanceTask).
}).
#pos(e2495@10, {}, {goesIn(screws, cabinet)}, {
  obj(screws). hasPhysicalQuality(screws, granular). hasRole(screws, toolRole). affordsTask(screws, maintenanceTask).
}).
#pos(e2496@10, {}, {goesIn(screws, drawer)}, {
  obj(screws). hasPhysicalQuality(screws, granular). hasRole(screws, toolRole). affordsTask(screws, maintenanceTask).
}).
#pos(e2497@10, {}, {goesIn(seat, kitchen)}, {
  obj(seat). hasPhysicalQuality(seat, heavy). hasPhysicalQuality(seat, rigid). hasRole(seat, furnitureRole). affordsTask(seat, leisureTask).
}).
#pos(e2498@10, {}, {goesIn(seat, living_room)}, {
  obj(seat). hasPhysicalQuality(seat, heavy). hasPhysicalQuality(seat, rigid). hasRole(seat, furnitureRole). affordsTask(seat, leisureTask).
}).
#pos(e2499@10, {}, {goesIn(second_floor, hallway)}, {
  obj(second_floor). hasRole(second_floor, furnitureRole).
}).
#pos(e2500@10, {}, {goesIn(second_floor, music_room)}, {
  obj(second_floor). hasRole(second_floor, furnitureRole).
}).
#pos(e2501@10, {}, {goesIn(seeds, kitchen)}, {
  obj(seeds). hasPhysicalQuality(seeds, perishable). hasRole(seeds, consumableRole).
}).
#pos(e2502@10, {}, {goesIn(seeds, table)}, {
  obj(seeds). hasPhysicalQuality(seeds, perishable). hasRole(seeds, consumableRole).
}).
#pos(e2503@10, {}, {goesIn(self_adhesive_label, bed)}, {
  obj(self_adhesive_label). hasPhysicalQuality(self_adhesive_label, lightweight). hasPhysicalQuality(self_adhesive_label, soft_Deformable). hasRole(self_adhesive_label, toolRole). affordsTask(self_adhesive_label, maintenanceTask).
}).
#pos(e2504@10, {}, {goesIn(self_adhesive_label, pantry)}, {
  obj(self_adhesive_label). hasPhysicalQuality(self_adhesive_label, lightweight). hasPhysicalQuality(self_adhesive_label, soft_Deformable). hasRole(self_adhesive_label, toolRole). affordsTask(self_adhesive_label, maintenanceTask).
}).
#pos(e2505@10, {}, {goesIn(separate_shower, cabinet)}, {
  obj(separate_shower). hasPhysicalQuality(separate_shower, electronic). hasPhysicalQuality(separate_shower, heavy). hasRole(separate_shower, furnitureRole). affordsTask(separate_shower, hygieneTask).
}).
#pos(e2506@10, {}, {goesIn(separate_shower, music_room)}, {
  obj(separate_shower). hasPhysicalQuality(separate_shower, electronic). hasPhysicalQuality(separate_shower, heavy). hasRole(separate_shower, furnitureRole). affordsTask(separate_shower, hygieneTask).
}).
#pos(e2507@10, {}, {goesIn(serving_trolley, garden)}, {
  obj(serving_trolley). hasPhysicalQuality(serving_trolley, heavy). hasPhysicalQuality(serving_trolley, rigid). hasRole(serving_trolley, furnitureRole). affordsTask(serving_trolley, foodPreparationTask).
}).
#pos(e2508@10, {}, {goesIn(serving_trolley, home_office)}, {
  obj(serving_trolley). hasPhysicalQuality(serving_trolley, heavy). hasPhysicalQuality(serving_trolley, rigid). hasRole(serving_trolley, furnitureRole). affordsTask(serving_trolley, foodPreparationTask).
}).
#pos(e2509@10, {}, {goesIn(shades, closet)}, {
  obj(shades). hasPhysicalQuality(shades, lightweight). hasPhysicalQuality(shades, rigid). hasRole(shades, decorationRole). affordsTask(shades, leisureTask).
}).
#pos(e2510@10, {}, {goesIn(shades, kitchen)}, {
  obj(shades). hasPhysicalQuality(shades, lightweight). hasPhysicalQuality(shades, rigid). hasRole(shades, decorationRole). affordsTask(shades, leisureTask).
}).
#pos(e2511@10, {}, {goesIn(shampoo_and_conditioner, laundry_room)}, {
  obj(shampoo_and_conditioner). hasPhysicalQuality(shampoo_and_conditioner, liquid). hasRole(shampoo_and_conditioner, cleaningToolRole). affordsTask(shampoo_and_conditioner, hygieneTask).
}).
#pos(e2512@10, {}, {goesIn(shampoo_and_conditioner, playroom)}, {
  obj(shampoo_and_conditioner). hasPhysicalQuality(shampoo_and_conditioner, liquid). hasRole(shampoo_and_conditioner, cleaningToolRole). affordsTask(shampoo_and_conditioner, hygieneTask).
}).
#pos(e2513@10, {}, {goesIn(sheet, bathroom)}, {
  obj(sheet). hasPhysicalQuality(sheet, soft_Deformable). hasPhysicalQuality(sheet, washable). hasRole(sheet, beddingRole). affordsTask(sheet, sleepingTask).
}).
#pos(e2514@10, {}, {goesIn(sheet, trash)}, {
  obj(sheet). hasPhysicalQuality(sheet, soft_Deformable). hasPhysicalQuality(sheet, washable). hasRole(sheet, beddingRole). affordsTask(sheet, sleepingTask).
}).
#pos(e2515@10, {}, {goesIn(shelf, sink)}, {
  obj(shelf). hasPhysicalQuality(shelf, heavy). hasPhysicalQuality(shelf, rigid). hasRole(shelf, storageContainerRole). affordsTask(shelf, storageTask).
}).
#pos(e2516@10, {}, {goesIn(shelf, storage_room)}, {
  obj(shelf). hasPhysicalQuality(shelf, heavy). hasPhysicalQuality(shelf, rigid). hasRole(shelf, storageContainerRole). affordsTask(shelf, storageTask).
}).
#pos(e2517@10, {}, {goesIn(shellac, bed)}, {
  obj(shellac). hasPhysicalQuality(shellac, liquid). hasRole(shellac, cleaningToolRole). affordsTask(shellac, maintenanceTask).
}).
#pos(e2518@10, {}, {goesIn(shellac, drawer)}, {
  obj(shellac). hasPhysicalQuality(shellac, liquid). hasRole(shellac, cleaningToolRole). affordsTask(shellac, maintenanceTask).
}).
#pos(e2519@10, {}, {goesIn(shirt, library)}, {
  obj(shirt). hasPhysicalQuality(shirt, lightweight). hasPhysicalQuality(shirt, soft_Deformable). hasRole(shirt, clothingRole). affordsTask(shirt, dressingTask).
}).
#pos(e2520@10, {}, {goesIn(shirt, shelf)}, {
  obj(shirt). hasPhysicalQuality(shirt, lightweight). hasPhysicalQuality(shirt, soft_Deformable). hasRole(shirt, clothingRole). affordsTask(shirt, dressingTask).
}).
#pos(e2521@10, {}, {goesIn(shoes, music_room)}, {
  obj(shoes). hasPhysicalQuality(shoes, fragile). hasPhysicalQuality(shoes, lightweight). hasRole(shoes, clothingRole). affordsTask(shoes, dressingTask).
}).
#pos(e2522@10, {}, {goesIn(shoes, trash)}, {
  obj(shoes). hasPhysicalQuality(shoes, fragile). hasPhysicalQuality(shoes, lightweight). hasRole(shoes, clothingRole). affordsTask(shoes, dressingTask).
}).
#pos(e2523@10, {}, {goesIn(shopping_bag, bed)}, {
  obj(shopping_bag). hasPhysicalQuality(shopping_bag, hasContainer). hasPhysicalQuality(shopping_bag, lightweight). hasRole(shopping_bag, storageContainerRole). affordsTask(shopping_bag, storageTask).
}).
#pos(e2524@10, {}, {goesIn(shopping_bag, music_room)}, {
  obj(shopping_bag). hasPhysicalQuality(shopping_bag, hasContainer). hasPhysicalQuality(shopping_bag, lightweight). hasRole(shopping_bag, storageContainerRole). affordsTask(shopping_bag, storageTask).
}).
#pos(e2525@10, {}, {goesIn(shopping_basket, drawer)}, {
  obj(shopping_basket). hasPhysicalQuality(shopping_basket, lightweight). hasPhysicalQuality(shopping_basket, rigid). hasRole(shopping_basket, storageContainerRole).
}).
#pos(e2526@10, {}, {goesIn(shopping_basket, garage)}, {
  obj(shopping_basket). hasPhysicalQuality(shopping_basket, lightweight). hasPhysicalQuality(shopping_basket, rigid). hasRole(shopping_basket, storageContainerRole).
}).
#pos(e2527@10, {}, {goesIn(shower_door, dining_room)}, {
  obj(shower_door). hasPhysicalQuality(shower_door, fragile). hasPhysicalQuality(shower_door, rigid). hasRole(shower_door, furnitureRole). affordsTask(shower_door, hygieneTask).
}).
#pos(e2528@10, {}, {goesIn(shower_door, shelf)}, {
  obj(shower_door). hasPhysicalQuality(shower_door, fragile). hasPhysicalQuality(shower_door, rigid). hasRole(shower_door, furnitureRole). affordsTask(shower_door, hygieneTask).
}).
#pos(e2529@10, {}, {goesIn(shower_switch, hallway)}, {
  obj(shower_switch). hasPhysicalQuality(shower_switch, electronic). hasPhysicalQuality(shower_switch, lightweight). hasRole(shower_switch, toolRole). affordsTask(shower_switch, maintenanceTask).
}).
#pos(e2530@10, {}, {goesIn(shower_switch, music_room)}, {
  obj(shower_switch). hasPhysicalQuality(shower_switch, electronic). hasPhysicalQuality(shower_switch, lightweight). hasRole(shower_switch, toolRole). affordsTask(shower_switch, maintenanceTask).
}).
#pos(e2531@10, {}, {goesIn(shrimp, music_room)}, {
  obj(shrimp). hasPhysicalQuality(shrimp, fragile). hasPhysicalQuality(shrimp, perishable). hasRole(shrimp, consumableRole). affordsTask(shrimp, eatingDrinkingTask).
}).
#pos(e2532@10, {}, {goesIn(shrimp, trash)}, {
  obj(shrimp). hasPhysicalQuality(shrimp, fragile). hasPhysicalQuality(shrimp, perishable). hasRole(shrimp, consumableRole). affordsTask(shrimp, eatingDrinkingTask).
}).
#pos(e2533@10, {}, {goesIn(side_chair, bathroom)}, {
  obj(side_chair). hasPhysicalQuality(side_chair, heavy). hasPhysicalQuality(side_chair, rigid). hasRole(side_chair, furnitureRole).
}).
#pos(e2534@10, {}, {goesIn(side_chair, closet)}, {
  obj(side_chair). hasPhysicalQuality(side_chair, heavy). hasPhysicalQuality(side_chair, rigid). hasRole(side_chair, furnitureRole).
}).
#pos(e2535@10, {}, {goesIn(sideboard, storage_room)}, {
  obj(sideboard). hasPhysicalQuality(sideboard, heavy). hasPhysicalQuality(sideboard, rigid). hasRole(sideboard, furnitureRole). affordsTask(sideboard, storageTask).
}).
#pos(e2536@10, {}, {goesIn(sideboard, table)}, {
  obj(sideboard). hasPhysicalQuality(sideboard, heavy). hasPhysicalQuality(sideboard, rigid). hasRole(sideboard, furnitureRole). affordsTask(sideboard, storageTask).
}).
#pos(e2537@10, {}, {goesIn(signs, fridge)}, {
  obj(signs). hasRole(signs, decorationRole).
}).
#pos(e2538@10, {}, {goesIn(signs, trash)}, {
  obj(signs). hasRole(signs, decorationRole).
}).
#pos(e2539@10, {}, {goesIn(silk, drawer)}, {
  obj(silk). hasPhysicalQuality(silk, lightweight). hasPhysicalQuality(silk, soft_Deformable). hasRole(silk, clothingRole).
}).
#pos(e2540@10, {}, {goesIn(silk, hallway)}, {
  obj(silk). hasPhysicalQuality(silk, lightweight). hasPhysicalQuality(silk, soft_Deformable). hasRole(silk, clothingRole).
}).
#pos(e2541@10, {}, {goesIn(silverware, bathroom)}, {
  obj(silverware). hasPhysicalQuality(silverware, rigid). hasPhysicalQuality(silverware, sharp). hasRole(silverware, utensilRole). affordsTask(silverware, foodPreparationTask).
}).
#pos(e2542@10, {}, {goesIn(silverware, shelf)}, {
  obj(silverware). hasPhysicalQuality(silverware, rigid). hasPhysicalQuality(silverware, sharp). hasRole(silverware, utensilRole). affordsTask(silverware, foodPreparationTask).
}).
#pos(e2543@10, {}, {goesIn(sink, music_room)}, {
  obj(sink). hasPhysicalQuality(sink, hasContainer). hasPhysicalQuality(sink, heavy). hasRole(sink, cleaningToolRole). affordsTask(sink, cleaningTask). affordsTask(sink, hygieneTask).
}).
#pos(e2544@10, {}, {goesIn(sink, sink)}, {
  obj(sink). hasPhysicalQuality(sink, hasContainer). hasPhysicalQuality(sink, heavy). hasRole(sink, cleaningToolRole). affordsTask(sink, cleaningTask). affordsTask(sink, hygieneTask).
}).
#pos(e2545@10, {}, {goesIn(skirt, cabinet)}, {
  obj(skirt). hasPhysicalQuality(skirt, lightweight). hasPhysicalQuality(skirt, soft_Deformable). hasRole(skirt, clothingRole). affordsTask(skirt, dressingTask).
}).
#pos(e2546@10, {}, {goesIn(skirt, garden)}, {
  obj(skirt). hasPhysicalQuality(skirt, lightweight). hasPhysicalQuality(skirt, soft_Deformable). hasRole(skirt, clothingRole). affordsTask(skirt, dressingTask).
}).
#pos(e2547@10, {}, {goesIn(skirts, cabinet)}, {
  obj(skirts). hasRole(skirts, clothingRole). affordsTask(skirts, dressingTask).
}).
#pos(e2548@10, {}, {goesIn(skirts, library)}, {
  obj(skirts). hasRole(skirts, clothingRole). affordsTask(skirts, dressingTask).
}).
#pos(e2549@10, {}, {goesIn(skylight, closet)}, {
  obj(skylight). hasRole(skylight, lightingRole). affordsTask(skylight, leisureTask).
}).
#pos(e2550@10, {}, {goesIn(skylight, table)}, {
  obj(skylight). hasRole(skylight, lightingRole). affordsTask(skylight, leisureTask).
}).
#pos(e2551@10, {}, {goesIn(slipper, dining_room)}, {
  obj(slipper). hasPhysicalQuality(slipper, lightweight). hasPhysicalQuality(slipper, soft_Deformable). hasRole(slipper, clothingRole). affordsTask(slipper, dressingTask).
}).
#pos(e2552@10, {}, {goesIn(slipper, music_room)}, {
  obj(slipper). hasPhysicalQuality(slipper, lightweight). hasPhysicalQuality(slipper, soft_Deformable). hasRole(slipper, clothingRole). affordsTask(slipper, dressingTask).
}).
#pos(e2553@10, {}, {goesIn(slippers, home_office)}, {
  obj(slippers). hasPhysicalQuality(slippers, lightweight). hasPhysicalQuality(slippers, soft_Deformable). hasRole(slippers, clothingRole). affordsTask(slippers, dressingTask).
}).
#pos(e2554@10, {}, {goesIn(slippers, playroom)}, {
  obj(slippers). hasPhysicalQuality(slippers, lightweight). hasPhysicalQuality(slippers, soft_Deformable). hasRole(slippers, clothingRole). affordsTask(slippers, dressingTask).
}).
#pos(e2555@10, {}, {goesIn(smoothie, garden)}, {
  obj(smoothie). hasPhysicalQuality(smoothie, liquid). hasPhysicalQuality(smoothie, perishable). hasRole(smoothie, consumableRole). affordsTask(smoothie, eatingDrinkingTask).
}).
#pos(e2556@10, {}, {goesIn(smoothie, trash)}, {
  obj(smoothie). hasPhysicalQuality(smoothie, liquid). hasPhysicalQuality(smoothie, perishable). hasRole(smoothie, consumableRole). affordsTask(smoothie, eatingDrinkingTask).
}).
#pos(e2557@10, {}, {goesIn(soap, laundry_room)}, {
  obj(soap). hasPhysicalQuality(soap, fragile). hasPhysicalQuality(soap, liquid). hasRole(soap, cleaningToolRole). affordsTask(soap, hygieneTask).
}).
#pos(e2558@10, {}, {goesIn(soap, living_room)}, {
  obj(soap). hasPhysicalQuality(soap, fragile). hasPhysicalQuality(soap, liquid). hasRole(soap, cleaningToolRole). affordsTask(soap, hygieneTask).
}).
#pos(e2559@10, {}, {goesIn(soap_dish, fridge)}, {
  obj(soap_dish). hasPhysicalQuality(soap_dish, lightweight). hasPhysicalQuality(soap_dish, rigid). hasRole(soap_dish, storageContainerRole). affordsTask(soap_dish, hygieneTask).
}).
#pos(e2560@10, {}, {goesIn(soap_dish, living_room)}, {
  obj(soap_dish). hasPhysicalQuality(soap_dish, lightweight). hasPhysicalQuality(soap_dish, rigid). hasRole(soap_dish, storageContainerRole). affordsTask(soap_dish, hygieneTask).
}).
#pos(e2561@10, {}, {goesIn(sock, music_room)}, {
  obj(sock). hasPhysicalQuality(sock, lightweight). hasPhysicalQuality(sock, soft_Deformable). hasRole(sock, clothingRole). affordsTask(sock, dressingTask).
}).
#pos(e2562@10, {}, {goesIn(sock, shelf)}, {
  obj(sock). hasPhysicalQuality(sock, lightweight). hasPhysicalQuality(sock, soft_Deformable). hasRole(sock, clothingRole). affordsTask(sock, dressingTask).
}).
#pos(e2563@10, {}, {goesIn(sofa, dining_room)}, {
  obj(sofa). hasPhysicalQuality(sofa, heavy). hasPhysicalQuality(sofa, soft_Deformable). hasRole(sofa, furnitureRole). affordsTask(sofa, leisureTask).
}).
#pos(e2564@10, {}, {goesIn(sofa, laundry_room)}, {
  obj(sofa). hasPhysicalQuality(sofa, heavy). hasPhysicalQuality(sofa, soft_Deformable). hasRole(sofa, furnitureRole). affordsTask(sofa, leisureTask).
}).
#pos(e2565@10, {}, {goesIn(sofabed, fridge)}, {
  obj(sofabed). hasPhysicalQuality(sofabed, fragile). hasPhysicalQuality(sofabed, soft_Deformable). hasRole(sofabed, furnitureRole). affordsTask(sofabed, sleepingTask).
}).
#pos(e2566@10, {}, {goesIn(sofabed, storage_room)}, {
  obj(sofabed). hasPhysicalQuality(sofabed, fragile). hasPhysicalQuality(sofabed, soft_Deformable). hasRole(sofabed, furnitureRole). affordsTask(sofabed, sleepingTask).
}).
#pos(e2567@10, {}, {goesIn(spatula, closet)}, {
  obj(spatula). hasPhysicalQuality(spatula, hasBlade). hasPhysicalQuality(spatula, rigid). hasPhysicalQuality(spatula, sharp). hasRole(spatula, utensilRole). affordsTask(spatula, foodPreparationTask).
}).
#pos(e2568@10, {}, {goesIn(spatula, playroom)}, {
  obj(spatula). hasPhysicalQuality(spatula, hasBlade). hasPhysicalQuality(spatula, rigid). hasPhysicalQuality(spatula, sharp). hasRole(spatula, utensilRole). affordsTask(spatula, foodPreparationTask).
}).
#pos(e2569@10, {}, {goesIn(speaker, bedroom)}, {
  obj(speaker). hasPhysicalQuality(speaker, electronic). hasRole(speaker, toolRole). affordsTask(speaker, leisureTask).
}).
#pos(e2570@10, {}, {goesIn(speaker, garage)}, {
  obj(speaker). hasPhysicalQuality(speaker, electronic). hasRole(speaker, toolRole). affordsTask(speaker, leisureTask).
}).
#pos(e2571@10, {}, {goesIn(spices, home_office)}, {
  obj(spices). hasPhysicalQuality(spices, granular). hasRole(spices, consumableRole). affordsTask(spices, foodPreparationTask).
}).
#pos(e2572@10, {}, {goesIn(spices, living_room)}, {
  obj(spices). hasPhysicalQuality(spices, granular). hasRole(spices, consumableRole). affordsTask(spices, foodPreparationTask).
}).
#pos(e2573@10, {}, {goesIn(spoon, garden)}, {
  obj(spoon). hasPhysicalQuality(spoon, lightweight). hasPhysicalQuality(spoon, rigid). hasPhysicalQuality(spoon, sharp). hasRole(spoon, utensilRole). affordsTask(spoon, foodPreparationTask).
}).
#pos(e2574@10, {}, {goesIn(spoon, playroom)}, {
  obj(spoon). hasPhysicalQuality(spoon, lightweight). hasPhysicalQuality(spoon, rigid). hasPhysicalQuality(spoon, sharp). hasRole(spoon, utensilRole). affordsTask(spoon, foodPreparationTask).
}).
#pos(e2575@10, {}, {goesIn(spray_hose, bathroom)}, {
  obj(spray_hose). hasPhysicalQuality(spray_hose, gas_Aerosol). hasPhysicalQuality(spray_hose, liquid). hasRole(spray_hose, toolRole). affordsTask(spray_hose, maintenanceTask).
}).
#pos(e2576@10, {}, {goesIn(spray_hose, home_office)}, {
  obj(spray_hose). hasPhysicalQuality(spray_hose, gas_Aerosol). hasPhysicalQuality(spray_hose, liquid). hasRole(spray_hose, toolRole). affordsTask(spray_hose, maintenanceTask).
}).
#pos(e2577@10, {}, {goesIn(stacking_chairs, home_office)}, {
  obj(stacking_chairs). hasPhysicalQuality(stacking_chairs, lightweight). hasRole(stacking_chairs, storageContainerRole). affordsTask(stacking_chairs, storageTask).
}).
#pos(e2578@10, {}, {goesIn(stacking_chairs, sink)}, {
  obj(stacking_chairs). hasPhysicalQuality(stacking_chairs, lightweight). hasRole(stacking_chairs, storageContainerRole). affordsTask(stacking_chairs, storageTask).
}).
#pos(e2579@10, {}, {goesIn(stain, shelf)}, {
  obj(stain). hasRole(stain, cleaningToolRole). affordsTask(stain, cleaningTask).
}).
#pos(e2580@10, {}, {goesIn(stain, table)}, {
  obj(stain). hasRole(stain, cleaningToolRole). affordsTask(stain, cleaningTask).
}).
#pos(e2581@10, {}, {goesIn(staircase, dining_room)}, {
  obj(staircase). hasPhysicalQuality(staircase, heavy). hasPhysicalQuality(staircase, rigid). hasRole(staircase, furnitureRole). affordsTask(staircase, maintenanceTask).
}).
#pos(e2582@10, {}, {goesIn(staircase, living_room)}, {
  obj(staircase). hasPhysicalQuality(staircase, heavy). hasPhysicalQuality(staircase, rigid). hasRole(staircase, furnitureRole). affordsTask(staircase, maintenanceTask).
}).
#pos(e2583@10, {}, {goesIn(stairs, pantry)}, {
  obj(stairs). hasPhysicalQuality(stairs, heavy). hasPhysicalQuality(stairs, rigid). hasRole(stairs, furnitureRole). affordsTask(stairs, maintenanceTask).
}).
#pos(e2584@10, {}, {goesIn(stairs, shelf)}, {
  obj(stairs). hasPhysicalQuality(stairs, heavy). hasPhysicalQuality(stairs, rigid). hasRole(stairs, furnitureRole). affordsTask(stairs, maintenanceTask).
}).
#pos(e2585@10, {}, {goesIn(stamp_pad, hallway)}, {
  obj(stamp_pad). hasPhysicalQuality(stamp_pad, lightweight). hasRole(stamp_pad, toolRole). affordsTask(stamp_pad, maintenanceTask).
}).
#pos(e2586@10, {}, {goesIn(stamp_pad, home_office)}, {
  obj(stamp_pad). hasPhysicalQuality(stamp_pad, lightweight). hasRole(stamp_pad, toolRole). affordsTask(stamp_pad, maintenanceTask).
}).
#pos(e2587@10, {}, {goesIn(stapler, kitchen)}, {
  obj(stapler). hasPhysicalQuality(stapler, heavy). hasPhysicalQuality(stapler, rigid). hasRole(stapler, toolRole). affordsTask(stapler, maintenanceTask).
}).
#pos(e2588@10, {}, {goesIn(stapler, pantry)}, {
  obj(stapler). hasPhysicalQuality(stapler, heavy). hasPhysicalQuality(stapler, rigid). hasRole(stapler, toolRole). affordsTask(stapler, maintenanceTask).
}).
#pos(e2589@10, {}, {goesIn(staples, laundry_room)}, {
  obj(staples). hasPhysicalQuality(staples, sharp). hasRole(staples, toolRole). affordsTask(staples, maintenanceTask).
}).
#pos(e2590@10, {}, {goesIn(staples, playroom)}, {
  obj(staples). hasPhysicalQuality(staples, sharp). hasRole(staples, toolRole). affordsTask(staples, maintenanceTask).
}).
#pos(e2591@10, {}, {goesIn(steak, drawer)}, {
  obj(steak). hasPhysicalQuality(steak, fragile). hasPhysicalQuality(steak, perishable). hasRole(steak, consumableRole). affordsTask(steak, eatingDrinkingTask). affordsTask(steak, foodPreparationTask).
}).
#pos(e2592@10, {}, {goesIn(steak, garage)}, {
  obj(steak). hasPhysicalQuality(steak, fragile). hasPhysicalQuality(steak, perishable). hasRole(steak, consumableRole). affordsTask(steak, eatingDrinkingTask). affordsTask(steak, foodPreparationTask).
}).
#pos(e2593@10, {}, {goesIn(steel, laundry_room)}, {
  obj(steel). hasPhysicalQuality(steel, heavy). hasPhysicalQuality(steel, rigid). hasRole(steel, toolRole).
}).
#pos(e2594@10, {}, {goesIn(steel, shelf)}, {
  obj(steel). hasPhysicalQuality(steel, heavy). hasPhysicalQuality(steel, rigid). hasRole(steel, toolRole).
}).
#pos(e2595@10, {}, {goesIn(stick_of_butter, garage)}, {
  obj(stick_of_butter). hasPhysicalQuality(stick_of_butter, granular). hasPhysicalQuality(stick_of_butter, perishable). hasRole(stick_of_butter, consumableRole). affordsTask(stick_of_butter, foodPreparationTask).
}).
#pos(e2596@10, {}, {goesIn(stick_of_butter, library)}, {
  obj(stick_of_butter). hasPhysicalQuality(stick_of_butter, granular). hasPhysicalQuality(stick_of_butter, perishable). hasRole(stick_of_butter, consumableRole). affordsTask(stick_of_butter, foodPreparationTask).
}).
#pos(e2597@10, {}, {goesIn(storage, bed)}, {
  obj(storage). hasPhysicalQuality(storage, hasContainer). hasRole(storage, storageContainerRole). affordsTask(storage, storageTask).
}).
#pos(e2598@10, {}, {goesIn(storage, hallway)}, {
  obj(storage). hasPhysicalQuality(storage, hasContainer). hasRole(storage, storageContainerRole). affordsTask(storage, storageTask).
}).
#pos(e2599@10, {}, {goesIn(storage_furniture, laundry_room)}, {
  obj(storage_furniture). hasPhysicalQuality(storage_furniture, heavy). hasPhysicalQuality(storage_furniture, rigid). hasRole(storage_furniture, furnitureRole). affordsTask(storage_furniture, storageTask).
}).
#pos(e2600@10, {}, {goesIn(storage_furniture, music_room)}, {
  obj(storage_furniture). hasPhysicalQuality(storage_furniture, heavy). hasPhysicalQuality(storage_furniture, rigid). hasRole(storage_furniture, furnitureRole). affordsTask(storage_furniture, storageTask).
}).
#pos(e2601@10, {}, {goesIn(stove, laundry_room)}, {
  obj(stove). hasPhysicalQuality(stove, heated). hasRole(stove, cookwareRole). affordsTask(stove, foodPreparationTask).
}).
#pos(e2602@10, {}, {goesIn(stove, trash)}, {
  obj(stove). hasPhysicalQuality(stove, heated). hasRole(stove, cookwareRole). affordsTask(stove, foodPreparationTask).
}).
#pos(e2603@10, {}, {goesIn(strawberries, closet)}, {
  obj(strawberries). hasPhysicalQuality(strawberries, perishable). hasRole(strawberries, consumableRole). affordsTask(strawberries, eatingDrinkingTask).
}).
#pos(e2604@10, {}, {goesIn(strawberries, storage_room)}, {
  obj(strawberries). hasPhysicalQuality(strawberries, perishable). hasRole(strawberries, consumableRole). affordsTask(strawberries, eatingDrinkingTask).
}).
#pos(e2605@10, {}, {goesIn(studio_pedestal, bed)}, {
  obj(studio_pedestal). hasPhysicalQuality(studio_pedestal, heavy). hasPhysicalQuality(studio_pedestal, rigid). hasRole(studio_pedestal, furnitureRole). affordsTask(studio_pedestal, storageTask).
}).
#pos(e2606@10, {}, {goesIn(studio_pedestal, living_room)}, {
  obj(studio_pedestal). hasPhysicalQuality(studio_pedestal, heavy). hasPhysicalQuality(studio_pedestal, rigid). hasRole(studio_pedestal, furnitureRole). affordsTask(studio_pedestal, storageTask).
}).
#pos(e2607@10, {}, {goesIn(sugar, drawer)}, {
  obj(sugar). hasPhysicalQuality(sugar, granular). hasRole(sugar, consumableRole). affordsTask(sugar, eatingDrinkingTask).
}).
#pos(e2608@10, {}, {goesIn(sugar, storage_room)}, {
  obj(sugar). hasPhysicalQuality(sugar, granular). hasRole(sugar, consumableRole). affordsTask(sugar, eatingDrinkingTask).
}).
#pos(e2609@10, {}, {goesIn(suit, kitchen)}, {
  obj(suit). hasPhysicalQuality(suit, fragile). hasPhysicalQuality(suit, rigid). hasRole(suit, clothingRole). affordsTask(suit, dressingTask).
}).
#pos(e2610@10, {}, {goesIn(suit, sink)}, {
  obj(suit). hasPhysicalQuality(suit, fragile). hasPhysicalQuality(suit, rigid). hasRole(suit, clothingRole). affordsTask(suit, dressingTask).
}).
#pos(e2611@10, {}, {goesIn(suntan_lotion, cabinet)}, {
  obj(suntan_lotion). hasPhysicalQuality(suntan_lotion, liquid). hasPhysicalQuality(suntan_lotion, washable). hasRole(suntan_lotion, consumableRole). affordsTask(suntan_lotion, hygieneTask).
}).
#pos(e2612@10, {}, {goesIn(suntan_lotion, library)}, {
  obj(suntan_lotion). hasPhysicalQuality(suntan_lotion, liquid). hasPhysicalQuality(suntan_lotion, washable). hasRole(suntan_lotion, consumableRole). affordsTask(suntan_lotion, hygieneTask).
}).
#pos(e2613@10, {}, {goesIn(swiss_cheese, cabinet)}, {
  obj(swiss_cheese). hasPhysicalQuality(swiss_cheese, perishable). hasRole(swiss_cheese, consumableRole). affordsTask(swiss_cheese, eatingDrinkingTask).
}).
#pos(e2614@10, {}, {goesIn(swiss_cheese, music_room)}, {
  obj(swiss_cheese). hasPhysicalQuality(swiss_cheese, perishable). hasRole(swiss_cheese, consumableRole). affordsTask(swiss_cheese, eatingDrinkingTask).
}).
#pos(e2615@10, {}, {goesIn(tabby_cat, bathroom)}, {
  obj(tabby_cat). hasPhysicalQuality(tabby_cat, fragile). hasPhysicalQuality(tabby_cat, soft_Deformable). hasRole(tabby_cat, entertainmentRole). affordsTask(tabby_cat, leisureTask).
}).
#pos(e2616@10, {}, {goesIn(tabby_cat, library)}, {
  obj(tabby_cat). hasPhysicalQuality(tabby_cat, fragile). hasPhysicalQuality(tabby_cat, soft_Deformable). hasRole(tabby_cat, entertainmentRole). affordsTask(tabby_cat, leisureTask).
}).
#pos(e2617@10, {}, {goesIn(table_cloth, dining_room)}, {
  obj(table_cloth). hasPhysicalQuality(table_cloth, lightweight). hasPhysicalQuality(table_cloth, soft_Deformable). hasRole(table_cloth, beddingRole).
}).
#pos(e2618@10, {}, {goesIn(table_cloth, library)}, {
  obj(table_cloth). hasPhysicalQuality(table_cloth, lightweight). hasPhysicalQuality(table_cloth, soft_Deformable). hasRole(table_cloth, beddingRole).
}).
#pos(e2619@10, {}, {goesIn(tablecloth, dining_room)}, {
  obj(tablecloth). hasPhysicalQuality(tablecloth, soft_Deformable). hasPhysicalQuality(tablecloth, washable). hasRole(tablecloth, decorationRole). affordsTask(tablecloth, leisureTask).
}).
#pos(e2620@10, {}, {goesIn(tablecloth, trash)}, {
  obj(tablecloth). hasPhysicalQuality(tablecloth, soft_Deformable). hasPhysicalQuality(tablecloth, washable). hasRole(tablecloth, decorationRole). affordsTask(tablecloth, leisureTask).
}).
#pos(e2621@10, {}, {goesIn(tables, cabinet)}, {
  obj(tables). hasPhysicalQuality(tables, heavy). hasPhysicalQuality(tables, rigid). hasRole(tables, furnitureRole). affordsTask(tables, storageTask).
}).
#pos(e2622@10, {}, {goesIn(tables, pantry)}, {
  obj(tables). hasPhysicalQuality(tables, heavy). hasPhysicalQuality(tables, rigid). hasRole(tables, furnitureRole). affordsTask(tables, storageTask).
}).
#pos(e2623@10, {}, {goesIn(tablespoon, garden)}, {
  obj(tablespoon). hasPhysicalQuality(tablespoon, hasContainer). hasPhysicalQuality(tablespoon, lightweight). hasRole(tablespoon, utensilRole). affordsTask(tablespoon, foodPreparationTask).
}).
#pos(e2624@10, {}, {goesIn(tablespoon, home_office)}, {
  obj(tablespoon). hasPhysicalQuality(tablespoon, hasContainer). hasPhysicalQuality(tablespoon, lightweight). hasRole(tablespoon, utensilRole). affordsTask(tablespoon, foodPreparationTask).
}).
#pos(e2625@10, {}, {goesIn(tack, living_room)}, {
  obj(tack). hasPhysicalQuality(tack, rigid). hasPhysicalQuality(tack, sharp). hasRole(tack, utensilRole). affordsTask(tack, foodPreparationTask).
}).
#pos(e2626@10, {}, {goesIn(tack, table)}, {
  obj(tack). hasPhysicalQuality(tack, rigid). hasPhysicalQuality(tack, sharp). hasRole(tack, utensilRole). affordsTask(tack, foodPreparationTask).
}).
#pos(e2627@10, {}, {goesIn(tap, cabinet)}, {
  obj(tap). hasPhysicalQuality(tap, lightweight). hasPhysicalQuality(tap, rigid). hasRole(tap, toolRole). affordsTask(tap, maintenanceTask).
}).
#pos(e2628@10, {}, {goesIn(tap, trash)}, {
  obj(tap). hasPhysicalQuality(tap, lightweight). hasPhysicalQuality(tap, rigid). hasRole(tap, toolRole). affordsTask(tap, maintenanceTask).
}).
#pos(e2629@10, {}, {goesIn(tape, home_office)}, {
  obj(tape). hasPhysicalQuality(tape, isFlexible). hasPhysicalQuality(tape, lightweight). hasRole(tape, toolRole). affordsTask(tape, maintenanceTask).
}).
#pos(e2630@10, {}, {goesIn(tape, table)}, {
  obj(tape). hasPhysicalQuality(tape, isFlexible). hasPhysicalQuality(tape, lightweight). hasRole(tape, toolRole). affordsTask(tape, maintenanceTask).
}).
#pos(e2631@10, {}, {goesIn(tape_dispenser, laundry_room)}, {
  obj(tape_dispenser). hasPhysicalQuality(tape_dispenser, lightweight). hasPhysicalQuality(tape_dispenser, rigid). hasRole(tape_dispenser, toolRole). affordsTask(tape_dispenser, maintenanceTask).
}).
#pos(e2632@10, {}, {goesIn(tape_dispenser, playroom)}, {
  obj(tape_dispenser). hasPhysicalQuality(tape_dispenser, lightweight). hasPhysicalQuality(tape_dispenser, rigid). hasRole(tape_dispenser, toolRole). affordsTask(tape_dispenser, maintenanceTask).
}).
#pos(e2633@10, {}, {goesIn(tape_measure, hallway)}, {
  obj(tape_measure). hasPhysicalQuality(tape_measure, lightweight). hasPhysicalQuality(tape_measure, rigid). hasRole(tape_measure, toolRole). affordsTask(tape_measure, maintenanceTask).
}).
#pos(e2634@10, {}, {goesIn(tape_measure, sink)}, {
  obj(tape_measure). hasPhysicalQuality(tape_measure, lightweight). hasPhysicalQuality(tape_measure, rigid). hasRole(tape_measure, toolRole). affordsTask(tape_measure, maintenanceTask).
}).
#pos(e2635@10, {}, {goesIn(tar, music_room)}, {
  obj(tar). hasPhysicalQuality(tar, fragile). hasPhysicalQuality(tar, granular). hasRole(tar, consumableRole).
}).
#pos(e2636@10, {}, {goesIn(tar, trash)}, {
  obj(tar). hasPhysicalQuality(tar, fragile). hasPhysicalQuality(tar, granular). hasRole(tar, consumableRole).
}).
#pos(e2637@10, {}, {goesIn(tea, bed)}, {
  obj(tea). hasPhysicalQuality(tea, liquid). hasPhysicalQuality(tea, perishable). hasRole(tea, consumableRole). affordsTask(tea, eatingDrinkingTask).
}).
#pos(e2638@10, {}, {goesIn(tea, storage_room)}, {
  obj(tea). hasPhysicalQuality(tea, liquid). hasPhysicalQuality(tea, perishable). hasRole(tea, consumableRole). affordsTask(tea, eatingDrinkingTask).
}).
#pos(e2639@10, {}, {goesIn(teakettle, dining_room)}, {
  obj(teakettle). hasPhysicalQuality(teakettle, heated). hasRole(teakettle, cookwareRole). affordsTask(teakettle, foodPreparationTask).
}).
#pos(e2640@10, {}, {goesIn(teakettle, table)}, {
  obj(teakettle). hasPhysicalQuality(teakettle, heated). hasRole(teakettle, cookwareRole). affordsTask(teakettle, foodPreparationTask).
}).
#pos(e2641@10, {}, {goesIn(teaspoon, fridge)}, {
  obj(teaspoon). hasPhysicalQuality(teaspoon, lightweight). hasPhysicalQuality(teaspoon, rigid). hasRole(teaspoon, utensilRole). affordsTask(teaspoon, foodPreparationTask).
}).
#pos(e2642@10, {}, {goesIn(teaspoon, storage_room)}, {
  obj(teaspoon). hasPhysicalQuality(teaspoon, lightweight). hasPhysicalQuality(teaspoon, rigid). hasRole(teaspoon, utensilRole). affordsTask(teaspoon, foodPreparationTask).
}).
#pos(e2643@10, {}, {goesIn(teddy_bear, hallway)}, {
  obj(teddy_bear). hasRole(teddy_bear, entertainmentRole). affordsTask(teddy_bear, leisureTask).
}).
#pos(e2644@10, {}, {goesIn(teddy_bear, trash)}, {
  obj(teddy_bear). hasRole(teddy_bear, entertainmentRole). affordsTask(teddy_bear, leisureTask).
}).
#pos(e2645@10, {}, {goesIn(telephone, bedroom)}, {
  obj(telephone). hasPhysicalQuality(telephone, electronic). hasPhysicalQuality(telephone, lightweight). hasRole(telephone, toolRole). affordsTask(telephone, workStudyTask).
}).
#pos(e2646@10, {}, {goesIn(telephone, fridge)}, {
  obj(telephone). hasPhysicalQuality(telephone, electronic). hasPhysicalQuality(telephone, lightweight). hasRole(telephone, toolRole). affordsTask(telephone, workStudyTask).
}).
#pos(e2647@10, {}, {goesIn(telephone_book, dining_room)}, {
  obj(telephone_book). hasPhysicalQuality(telephone_book, fragile). hasPhysicalQuality(telephone_book, lightweight). hasRole(telephone_book, documentRole). affordsTask(telephone_book, workStudyTask).
}).
#pos(e2648@10, {}, {goesIn(telephone_book, pantry)}, {
  obj(telephone_book). hasPhysicalQuality(telephone_book, fragile). hasPhysicalQuality(telephone_book, lightweight). hasRole(telephone_book, documentRole). affordsTask(telephone_book, workStudyTask).
}).
#pos(e2649@10, {}, {goesIn(telephone_directory, closet)}, {
  obj(telephone_directory). hasRole(telephone_directory, documentRole).
}).
#pos(e2650@10, {}, {goesIn(telephone_directory, pantry)}, {
  obj(telephone_directory). hasRole(telephone_directory, documentRole).
}).
#pos(e2651@10, {}, {goesIn(telephone_index, fridge)}, {
  obj(telephone_index). hasPhysicalQuality(telephone_index, electronic). hasPhysicalQuality(telephone_index, lightweight). hasRole(telephone_index, toolRole). affordsTask(telephone_index, workStudyTask).
}).
#pos(e2652@10, {}, {goesIn(telephone_index, home_office)}, {
  obj(telephone_index). hasPhysicalQuality(telephone_index, electronic). hasPhysicalQuality(telephone_index, lightweight). hasRole(telephone_index, toolRole). affordsTask(telephone_index, workStudyTask).
}).
#pos(e2653@10, {}, {goesIn(television, bathroom)}, {
  obj(television). hasPhysicalQuality(television, electronic). hasPhysicalQuality(television, heavy). hasRole(television, applianceRole). affordsTask(television, leisureTask).
}).
#pos(e2654@10, {}, {goesIn(television, bed)}, {
  obj(television). hasPhysicalQuality(television, electronic). hasPhysicalQuality(television, heavy). hasRole(television, applianceRole). affordsTask(television, leisureTask).
}).
#pos(e2655@10, {}, {goesIn(terrace_railing, bed)}, {
  obj(terrace_railing). hasPhysicalQuality(terrace_railing, heavy). hasPhysicalQuality(terrace_railing, rigid). hasRole(terrace_railing, furnitureRole).
}).
#pos(e2656@10, {}, {goesIn(terrace_railing, home_office)}, {
  obj(terrace_railing). hasPhysicalQuality(terrace_railing, heavy). hasPhysicalQuality(terrace_railing, rigid). hasRole(terrace_railing, furnitureRole).
}).
#pos(e2657@10, {}, {goesIn(textile, garden)}, {
  obj(textile). hasPhysicalQuality(textile, lightweight). hasPhysicalQuality(textile, soft_Deformable). hasRole(textile, clothingRole).
}).
#pos(e2658@10, {}, {goesIn(textile, home_office)}, {
  obj(textile). hasPhysicalQuality(textile, lightweight). hasPhysicalQuality(textile, soft_Deformable). hasRole(textile, clothingRole).
}).
#pos(e2659@10, {}, {goesIn(thermostat, kitchen)}, {
  obj(thermostat). hasPhysicalQuality(thermostat, electronic). hasPhysicalQuality(thermostat, heavy). hasRole(thermostat, applianceRole).
}).
#pos(e2660@10, {}, {goesIn(thermostat, library)}, {
  obj(thermostat). hasPhysicalQuality(thermostat, electronic). hasPhysicalQuality(thermostat, heavy). hasRole(thermostat, applianceRole).
}).
#pos(e2661@10, {}, {goesIn(thumb_tack, closet)}, {
  obj(thumb_tack). hasPhysicalQuality(thumb_tack, lightweight). hasPhysicalQuality(thumb_tack, sharp). hasRole(thumb_tack, toolRole). affordsTask(thumb_tack, maintenanceTask).
}).
#pos(e2662@10, {}, {goesIn(thumb_tack, garage)}, {
  obj(thumb_tack). hasPhysicalQuality(thumb_tack, lightweight). hasPhysicalQuality(thumb_tack, sharp). hasRole(thumb_tack, toolRole). affordsTask(thumb_tack, maintenanceTask).
}).
#pos(e2663@10, {}, {goesIn(tiles, music_room)}, {
  obj(tiles). hasPhysicalQuality(tiles, granular). hasPhysicalQuality(tiles, rigid). hasRole(tiles, furnitureRole).
}).
#pos(e2664@10, {}, {goesIn(tiles, shelf)}, {
  obj(tiles). hasPhysicalQuality(tiles, granular). hasPhysicalQuality(tiles, rigid). hasRole(tiles, furnitureRole).
}).
#pos(e2665@10, {}, {goesIn(tin_cans, playroom)}, {
  obj(tin_cans). hasPhysicalQuality(tin_cans, heavy). hasPhysicalQuality(tin_cans, rigid). hasRole(tin_cans, storageContainerRole). affordsTask(tin_cans, storageTask).
}).
#pos(e2666@10, {}, {goesIn(tin_cans, storage_room)}, {
  obj(tin_cans). hasPhysicalQuality(tin_cans, heavy). hasPhysicalQuality(tin_cans, rigid). hasRole(tin_cans, storageContainerRole). affordsTask(tin_cans, storageTask).
}).
#pos(e2667@10, {}, {goesIn(tissue_holder, cabinet)}, {
  obj(tissue_holder). hasPhysicalQuality(tissue_holder, lightweight). hasPhysicalQuality(tissue_holder, rigid). hasRole(tissue_holder, storageContainerRole). affordsTask(tissue_holder, storageTask).
}).
#pos(e2668@10, {}, {goesIn(tissue_holder, drawer)}, {
  obj(tissue_holder). hasPhysicalQuality(tissue_holder, lightweight). hasPhysicalQuality(tissue_holder, rigid). hasRole(tissue_holder, storageContainerRole). affordsTask(tissue_holder, storageTask).
}).
#pos(e2669@10, {}, {goesIn(tofu, laundry_room)}, {
  obj(tofu). hasPhysicalQuality(tofu, lightweight). hasPhysicalQuality(tofu, perishable). hasRole(tofu, consumableRole). affordsTask(tofu, eatingDrinkingTask).
}).
#pos(e2670@10, {}, {goesIn(tofu, sink)}, {
  obj(tofu). hasPhysicalQuality(tofu, lightweight). hasPhysicalQuality(tofu, perishable). hasRole(tofu, consumableRole). affordsTask(tofu, eatingDrinkingTask).
}).
#pos(e2671@10, {}, {goesIn(toilet_brush, storage_room)}, {
  obj(toilet_brush). hasPhysicalQuality(toilet_brush, fragile). hasPhysicalQuality(toilet_brush, lightweight). hasRole(toilet_brush, cleaningToolRole). affordsTask(toilet_brush, cleaningTask).
}).
#pos(e2672@10, {}, {goesIn(toilet_brush, trash)}, {
  obj(toilet_brush). hasPhysicalQuality(toilet_brush, fragile). hasPhysicalQuality(toilet_brush, lightweight). hasRole(toilet_brush, cleaningToolRole). affordsTask(toilet_brush, cleaningTask).
}).
#pos(e2673@10, {}, {goesIn(toilet_paper, garage)}, {
  obj(toilet_paper). hasPhysicalQuality(toilet_paper, soft_Deformable). hasPhysicalQuality(toilet_paper, washable). hasRole(toilet_paper, consumableRole). affordsTask(toilet_paper, hygieneTask).
}).
#pos(e2674@10, {}, {goesIn(toilet_paper, pantry)}, {
  obj(toilet_paper). hasPhysicalQuality(toilet_paper, soft_Deformable). hasPhysicalQuality(toilet_paper, washable). hasRole(toilet_paper, consumableRole). affordsTask(toilet_paper, hygieneTask).
}).
#pos(e2675@10, {}, {goesIn(toilet_seat, dining_room)}, {
  obj(toilet_seat). hasPhysicalQuality(toilet_seat, fragile). hasRole(toilet_seat, utensilRole). affordsTask(toilet_seat, eatingDrinkingTask).
}).
#pos(e2676@10, {}, {goesIn(toilet_seat, shelf)}, {
  obj(toilet_seat). hasPhysicalQuality(toilet_seat, fragile). hasRole(toilet_seat, utensilRole). affordsTask(toilet_seat, eatingDrinkingTask).
}).
#pos(e2677@10, {}, {goesIn(toilet_tank, garage)}, {
  obj(toilet_tank). hasPhysicalQuality(toilet_tank, heavy). hasRole(toilet_tank, applianceRole). affordsTask(toilet_tank, wasteDisposalTask).
}).
#pos(e2678@10, {}, {goesIn(toilet_tank, living_room)}, {
  obj(toilet_tank). hasPhysicalQuality(toilet_tank, heavy). hasRole(toilet_tank, applianceRole). affordsTask(toilet_tank, wasteDisposalTask).
}).
#pos(e2679@10, {}, {goesIn(tomato, garden)}, {
  obj(tomato). hasPhysicalQuality(tomato, fragile). hasPhysicalQuality(tomato, perishable). hasRole(tomato, consumableRole). affordsTask(tomato, eatingDrinkingTask).
}).
#pos(e2680@10, {}, {goesIn(tomato, storage_room)}, {
  obj(tomato). hasPhysicalQuality(tomato, fragile). hasPhysicalQuality(tomato, perishable). hasRole(tomato, consumableRole). affordsTask(tomato, eatingDrinkingTask).
}).
#pos(e2681@10, {}, {goesIn(tomato_plants, garden)}, {
  obj(tomato_plants). hasPhysicalQuality(tomato_plants, perishable).
}).
#pos(e2682@10, {}, {goesIn(tomato_plants, living_room)}, {
  obj(tomato_plants). hasPhysicalQuality(tomato_plants, perishable).
}).
#pos(e2683@10, {}, {goesIn(tomatoes, bathroom)}, {
  obj(tomatoes). hasPhysicalQuality(tomatoes, perishable). hasRole(tomatoes, consumableRole). affordsTask(tomatoes, eatingDrinkingTask).
}).
#pos(e2684@10, {}, {goesIn(tomatoes, table)}, {
  obj(tomatoes). hasPhysicalQuality(tomatoes, perishable). hasRole(tomatoes, consumableRole). affordsTask(tomatoes, eatingDrinkingTask).
}).
#pos(e2685@10, {}, {goesIn(toolbox, hallway)}, {
  obj(toolbox). hasPhysicalQuality(toolbox, heavy). hasPhysicalQuality(toolbox, rigid). hasRole(toolbox, toolRole). affordsTask(toolbox, maintenanceTask).
}).
#pos(e2686@10, {}, {goesIn(toolbox, living_room)}, {
  obj(toolbox). hasPhysicalQuality(toolbox, heavy). hasPhysicalQuality(toolbox, rigid). hasRole(toolbox, toolRole). affordsTask(toolbox, maintenanceTask).
}).
#pos(e2687@10, {}, {goesIn(toothbrush, playroom)}, {
  obj(toothbrush). hasPhysicalQuality(toothbrush, fragile). hasPhysicalQuality(toothbrush, lightweight). affordsTask(toothbrush, hygieneTask).
}).
#pos(e2688@10, {}, {goesIn(toothbrush, table)}, {
  obj(toothbrush). hasPhysicalQuality(toothbrush, fragile). hasPhysicalQuality(toothbrush, lightweight). affordsTask(toothbrush, hygieneTask).
}).
#pos(e2689@10, {}, {goesIn(toothbrush_bristle, closet)}, {
  obj(toothbrush_bristle). hasPhysicalQuality(toothbrush_bristle, lightweight). hasPhysicalQuality(toothbrush_bristle, soft_Deformable). affordsTask(toothbrush_bristle, hygieneTask).
}).
#pos(e2690@10, {}, {goesIn(toothbrush_bristle, fridge)}, {
  obj(toothbrush_bristle). hasPhysicalQuality(toothbrush_bristle, lightweight). hasPhysicalQuality(toothbrush_bristle, soft_Deformable). affordsTask(toothbrush_bristle, hygieneTask).
}).
#pos(e2691@10, {}, {goesIn(toothbrush_head, home_office)}, {
  obj(toothbrush_head). hasPhysicalQuality(toothbrush_head, fragile). hasPhysicalQuality(toothbrush_head, lightweight). affordsTask(toothbrush_head, eatingDrinkingTask).
}).
#pos(e2692@10, {}, {goesIn(toothbrush_head, library)}, {
  obj(toothbrush_head). hasPhysicalQuality(toothbrush_head, fragile). hasPhysicalQuality(toothbrush_head, lightweight). affordsTask(toothbrush_head, eatingDrinkingTask).
}).
#pos(e2693@10, {}, {goesIn(toothpaste, hallway)}, {
  obj(toothpaste). hasPhysicalQuality(toothpaste, liquid). hasPhysicalQuality(toothpaste, toxic_Hazardous). hasRole(toothpaste, cleaningToolRole). affordsTask(toothpaste, hygieneTask).
}).
#pos(e2694@10, {}, {goesIn(toothpaste, storage_room)}, {
  obj(toothpaste). hasPhysicalQuality(toothpaste, liquid). hasPhysicalQuality(toothpaste, toxic_Hazardous). hasRole(toothpaste, cleaningToolRole). affordsTask(toothpaste, hygieneTask).
}).
#pos(e2695@10, {}, {goesIn(torch, library)}, {
  obj(torch). hasPhysicalQuality(torch, electronic). hasPhysicalQuality(torch, heated). hasRole(torch, lightingRole). affordsTask(torch, leisureTask).
}).
#pos(e2696@10, {}, {goesIn(torch, storage_room)}, {
  obj(torch). hasPhysicalQuality(torch, electronic). hasPhysicalQuality(torch, heated). hasRole(torch, lightingRole). affordsTask(torch, leisureTask).
}).
#pos(e2697@10, {}, {goesIn(tote_bag, hallway)}, {
  obj(tote_bag). hasPhysicalQuality(tote_bag, lightweight). hasPhysicalQuality(tote_bag, soft_Deformable). hasRole(tote_bag, clothingRole). affordsTask(tote_bag, storageTask).
}).
#pos(e2698@10, {}, {goesIn(tote_bag, music_room)}, {
  obj(tote_bag). hasPhysicalQuality(tote_bag, lightweight). hasPhysicalQuality(tote_bag, soft_Deformable). hasRole(tote_bag, clothingRole). affordsTask(tote_bag, storageTask).
}).
#pos(e2699@10, {}, {goesIn(towel, home_office)}, {
  obj(towel). hasPhysicalQuality(towel, soft_Deformable). hasPhysicalQuality(towel, washable). hasRole(towel, cleaningToolRole). affordsTask(towel, hygieneTask).
}).
#pos(e2700@10, {}, {goesIn(towel, library)}, {
  obj(towel). hasPhysicalQuality(towel, soft_Deformable). hasPhysicalQuality(towel, washable). hasRole(towel, cleaningToolRole). affordsTask(towel, hygieneTask).
}).
#pos(e2701@10, {}, {goesIn(towel_bar, kitchen)}, {
  obj(towel_bar). hasPhysicalQuality(towel_bar, electronic). hasPhysicalQuality(towel_bar, rigid). hasRole(towel_bar, storageContainerRole). affordsTask(towel_bar, hygieneTask).
}).
#pos(e2702@10, {}, {goesIn(towel_bar, music_room)}, {
  obj(towel_bar). hasPhysicalQuality(towel_bar, electronic). hasPhysicalQuality(towel_bar, rigid). hasRole(towel_bar, storageContainerRole). affordsTask(towel_bar, hygieneTask).
}).
#pos(e2703@10, {}, {goesIn(towel_rack, closet)}, {
  obj(towel_rack). hasPhysicalQuality(towel_rack, heavy). hasPhysicalQuality(towel_rack, rigid). hasRole(towel_rack, storageContainerRole). affordsTask(towel_rack, storageTask).
}).
#pos(e2704@10, {}, {goesIn(towel_rack, garage)}, {
  obj(towel_rack). hasPhysicalQuality(towel_rack, heavy). hasPhysicalQuality(towel_rack, rigid). hasRole(towel_rack, storageContainerRole). affordsTask(towel_rack, storageTask).
}).
#pos(e2705@10, {}, {goesIn(toy, kitchen)}, {
  obj(toy). hasRole(toy, entertainmentRole). affordsTask(toy, leisureTask).
}).
#pos(e2706@10, {}, {goesIn(toy, playroom)}, {
  obj(toy). hasRole(toy, entertainmentRole). affordsTask(toy, leisureTask).
}).
#pos(e2707@10, {}, {goesIn(toys, music_room)}, {
  obj(toys). hasPhysicalQuality(toys, lightweight). hasRole(toys, entertainmentRole). affordsTask(toys, leisureTask).
}).
#pos(e2708@10, {}, {goesIn(toys, playroom)}, {
  obj(toys). hasPhysicalQuality(toys, lightweight). hasRole(toys, entertainmentRole). affordsTask(toys, leisureTask).
}).
#pos(e2709@10, {}, {goesIn(trash, laundry_room)}, {
  obj(trash). hasRole(trash, storageContainerRole). affordsTask(trash, wasteDisposalTask).
}).
#pos(e2710@10, {}, {goesIn(trash, table)}, {
  obj(trash). hasRole(trash, storageContainerRole). affordsTask(trash, wasteDisposalTask).
}).
#pos(e2711@10, {}, {goesIn(trash_can, bathroom)}, {
  obj(trash_can). hasPhysicalQuality(trash_can, heavy). hasRole(trash_can, storageContainerRole). hasRole(trash_can, wasteRole). affordsTask(trash_can, wasteDisposalTask).
}).
#pos(e2712@10, {}, {goesIn(trash_can, trash)}, {
  obj(trash_can). hasPhysicalQuality(trash_can, heavy). hasRole(trash_can, storageContainerRole). hasRole(trash_can, wasteRole). affordsTask(trash_can, wasteDisposalTask).
}).
#pos(e2713@10, {}, {goesIn(trash_container, garage)}, {
  obj(trash_container). hasPhysicalQuality(trash_container, hasContainer). hasPhysicalQuality(trash_container, heavy). hasRole(trash_container, storageContainerRole). affordsTask(trash_container, wasteDisposalTask).
}).
#pos(e2714@10, {}, {goesIn(trash_container, laundry_room)}, {
  obj(trash_container). hasPhysicalQuality(trash_container, hasContainer). hasPhysicalQuality(trash_container, heavy). hasRole(trash_container, storageContainerRole). affordsTask(trash_container, wasteDisposalTask).
}).
#pos(e2715@10, {}, {goesIn(tub, bathroom)}, {
  obj(tub). hasPhysicalQuality(tub, hasContainer). hasPhysicalQuality(tub, heavy). hasRole(tub, storageContainerRole). affordsTask(tub, eatingDrinkingTask).
}).
#pos(e2716@10, {}, {goesIn(tub, shelf)}, {
  obj(tub). hasPhysicalQuality(tub, hasContainer). hasPhysicalQuality(tub, heavy). hasRole(tub, storageContainerRole). affordsTask(tub, eatingDrinkingTask).
}).
#pos(e2717@10, {}, {goesIn(tuna, bedroom)}, {
  obj(tuna). hasPhysicalQuality(tuna, perishable). hasRole(tuna, consumableRole). affordsTask(tuna, eatingDrinkingTask).
}).
#pos(e2718@10, {}, {goesIn(tuna, shelf)}, {
  obj(tuna). hasPhysicalQuality(tuna, perishable). hasRole(tuna, consumableRole). affordsTask(tuna, eatingDrinkingTask).
}).
#pos(e2719@10, {}, {goesIn(tuning_fork, fridge)}, {
  obj(tuning_fork). hasPhysicalQuality(tuning_fork, electronic). hasPhysicalQuality(tuning_fork, rigid). hasRole(tuning_fork, toolRole). affordsTask(tuning_fork, maintenanceTask).
}).
#pos(e2720@10, {}, {goesIn(tuning_fork, garden)}, {
  obj(tuning_fork). hasPhysicalQuality(tuning_fork, electronic). hasPhysicalQuality(tuning_fork, rigid). hasRole(tuning_fork, toolRole). affordsTask(tuning_fork, maintenanceTask).
}).
#pos(e2721@10, {}, {goesIn(turkey, kitchen)}, {
  obj(turkey). hasPhysicalQuality(turkey, perishable). hasRole(turkey, consumableRole). affordsTask(turkey, eatingDrinkingTask).
}).
#pos(e2722@10, {}, {goesIn(turkey, sink)}, {
  obj(turkey). hasPhysicalQuality(turkey, perishable). hasRole(turkey, consumableRole). affordsTask(turkey, eatingDrinkingTask).
}).
#pos(e2723@10, {}, {goesIn(tv, garage)}, {
  obj(tv). hasPhysicalQuality(tv, electronic). hasPhysicalQuality(tv, heavy). hasRole(tv, applianceRole). affordsTask(tv, leisureTask).
}).
#pos(e2724@10, {}, {goesIn(tv, table)}, {
  obj(tv). hasPhysicalQuality(tv, electronic). hasPhysicalQuality(tv, heavy). hasRole(tv, applianceRole). affordsTask(tv, leisureTask).
}).
#pos(e2725@10, {}, {goesIn(typewriter, drawer)}, {
  obj(typewriter). hasPhysicalQuality(typewriter, heavy). hasPhysicalQuality(typewriter, rigid). hasRole(typewriter, toolRole). affordsTask(typewriter, workStudyTask).
}).
#pos(e2726@10, {}, {goesIn(typewriter, shelf)}, {
  obj(typewriter). hasPhysicalQuality(typewriter, heavy). hasPhysicalQuality(typewriter, rigid). hasRole(typewriter, toolRole). affordsTask(typewriter, workStudyTask).
}).
#pos(e2727@10, {}, {goesIn(umbrella, hallway)}, {
  obj(umbrella). hasPhysicalQuality(umbrella, isFlexible). hasPhysicalQuality(umbrella, lightweight). hasRole(umbrella, toolRole).
}).
#pos(e2728@10, {}, {goesIn(umbrella, trash)}, {
  obj(umbrella). hasPhysicalQuality(umbrella, isFlexible). hasPhysicalQuality(umbrella, lightweight). hasRole(umbrella, toolRole).
}).
#pos(e2729@10, {}, {goesIn(underwear, closet)}, {
  obj(underwear). hasPhysicalQuality(underwear, lightweight). hasPhysicalQuality(underwear, soft_Deformable). hasRole(underwear, clothingRole). affordsTask(underwear, dressingTask).
}).
#pos(e2730@10, {}, {goesIn(underwear, table)}, {
  obj(underwear). hasPhysicalQuality(underwear, lightweight). hasPhysicalQuality(underwear, soft_Deformable). hasRole(underwear, clothingRole). affordsTask(underwear, dressingTask).
}).
#pos(e2731@10, {}, {goesIn(upright_piano, closet)}, {
  obj(upright_piano). hasPhysicalQuality(upright_piano, heavy). hasPhysicalQuality(upright_piano, rigid). hasRole(upright_piano, entertainmentRole). hasRole(upright_piano, musicalInstrumentRole). affordsTask(upright_piano, leisureTask). affordsTask(upright_piano, workStudyTask).
}).
#pos(e2732@10, {}, {goesIn(upright_piano, trash)}, {
  obj(upright_piano). hasPhysicalQuality(upright_piano, heavy). hasPhysicalQuality(upright_piano, rigid). hasRole(upright_piano, entertainmentRole). hasRole(upright_piano, musicalInstrumentRole). affordsTask(upright_piano, leisureTask). affordsTask(upright_piano, workStudyTask).
}).
#pos(e2733@10, {}, {goesIn(utensils, bed)}, {
  obj(utensils). hasRole(utensils, utensilRole).
}).
#pos(e2734@10, {}, {goesIn(utensils, table)}, {
  obj(utensils). hasRole(utensils, utensilRole).
}).
#pos(e2735@10, {}, {goesIn(utility_case, hallway)}, {
  obj(utility_case). hasPhysicalQuality(utility_case, hasContainer). hasRole(utility_case, storageContainerRole). affordsTask(utility_case, storageTask).
}).
#pos(e2736@10, {}, {goesIn(utility_case, living_room)}, {
  obj(utility_case). hasPhysicalQuality(utility_case, hasContainer). hasRole(utility_case, storageContainerRole). affordsTask(utility_case, storageTask).
}).
#pos(e2737@10, {}, {goesIn(vacuum, bed)}, {
  obj(vacuum). hasPhysicalQuality(vacuum, electronic). hasPhysicalQuality(vacuum, heavy). hasRole(vacuum, cleaningToolRole). affordsTask(vacuum, cleaningTask).
}).
#pos(e2738@10, {}, {goesIn(vacuum, living_room)}, {
  obj(vacuum). hasPhysicalQuality(vacuum, electronic). hasPhysicalQuality(vacuum, heavy). hasRole(vacuum, cleaningToolRole). affordsTask(vacuum, cleaningTask).
}).
#pos(e2739@10, {}, {goesIn(vanity_case, cabinet)}, {
  obj(vanity_case). hasPhysicalQuality(vanity_case, hasContainer). hasPhysicalQuality(vanity_case, lightweight). hasRole(vanity_case, storageContainerRole). affordsTask(vanity_case, leisureTask).
}).
#pos(e2740@10, {}, {goesIn(vanity_case, drawer)}, {
  obj(vanity_case). hasPhysicalQuality(vanity_case, hasContainer). hasPhysicalQuality(vanity_case, lightweight). hasRole(vanity_case, storageContainerRole). affordsTask(vanity_case, leisureTask).
}).
#pos(e2741@10, {}, {goesIn(varnish, garden)}, {
  obj(varnish). hasPhysicalQuality(varnish, liquid). hasPhysicalQuality(varnish, toxic_Hazardous). hasRole(varnish, toolRole). affordsTask(varnish, maintenanceTask).
}).
#pos(e2742@10, {}, {goesIn(varnish, hallway)}, {
  obj(varnish). hasPhysicalQuality(varnish, liquid). hasPhysicalQuality(varnish, toxic_Hazardous). hasRole(varnish, toolRole). affordsTask(varnish, maintenanceTask).
}).
#pos(e2743@10, {}, {goesIn(vase, dining_room)}, {
  obj(vase). hasPhysicalQuality(vase, fragile). hasPhysicalQuality(vase, rigid). hasRole(vase, decorationRole).
}).
#pos(e2744@10, {}, {goesIn(vase, laundry_room)}, {
  obj(vase). hasPhysicalQuality(vase, fragile). hasPhysicalQuality(vase, rigid). hasRole(vase, decorationRole).
}).
#pos(e2745@10, {}, {goesIn(vcr, dining_room)}, {
  obj(vcr). hasPhysicalQuality(vcr, electronic). hasPhysicalQuality(vcr, heavy). hasRole(vcr, applianceRole). affordsTask(vcr, leisureTask).
}).
#pos(e2746@10, {}, {goesIn(vcr, fridge)}, {
  obj(vcr). hasPhysicalQuality(vcr, electronic). hasPhysicalQuality(vcr, heavy). hasRole(vcr, applianceRole). affordsTask(vcr, leisureTask).
}).
#pos(e2747@10, {}, {goesIn(vegetables, library)}, {
  obj(vegetables). hasPhysicalQuality(vegetables, granular). hasPhysicalQuality(vegetables, perishable). hasRole(vegetables, consumableRole). affordsTask(vegetables, eatingDrinkingTask). affordsTask(vegetables, foodPreparationTask).
}).
#pos(e2748@10, {}, {goesIn(vegetables, storage_room)}, {
  obj(vegetables). hasPhysicalQuality(vegetables, granular). hasPhysicalQuality(vegetables, perishable). hasRole(vegetables, consumableRole). affordsTask(vegetables, eatingDrinkingTask). affordsTask(vegetables, foodPreparationTask).
}).
#pos(e2749@10, {}, {goesIn(velvet, hallway)}, {
  obj(velvet). hasPhysicalQuality(velvet, soft_Deformable). hasPhysicalQuality(velvet, washable). hasRole(velvet, clothingRole). affordsTask(velvet, dressingTask).
}).
#pos(e2750@10, {}, {goesIn(velvet, playroom)}, {
  obj(velvet). hasPhysicalQuality(velvet, soft_Deformable). hasPhysicalQuality(velvet, washable). hasRole(velvet, clothingRole). affordsTask(velvet, dressingTask).
}).
#pos(e2751@10, {}, {goesIn(vent_brush, dining_room)}, {
  obj(vent_brush). hasPhysicalQuality(vent_brush, lightweight). hasPhysicalQuality(vent_brush, soft_Deformable). hasRole(vent_brush, cleaningToolRole). affordsTask(vent_brush, cleaningTask).
}).
#pos(e2752@10, {}, {goesIn(vent_brush, garage)}, {
  obj(vent_brush). hasPhysicalQuality(vent_brush, lightweight). hasPhysicalQuality(vent_brush, soft_Deformable). hasRole(vent_brush, cleaningToolRole). affordsTask(vent_brush, cleaningTask).
}).
#pos(e2753@10, {}, {goesIn(ventilation_system, hallway)}, {
  obj(ventilation_system). hasPhysicalQuality(ventilation_system, electronic). hasPhysicalQuality(ventilation_system, heavy). hasRole(ventilation_system, applianceRole). affordsTask(ventilation_system, maintenanceTask).
}).
#pos(e2754@10, {}, {goesIn(ventilation_system, music_room)}, {
  obj(ventilation_system). hasPhysicalQuality(ventilation_system, electronic). hasPhysicalQuality(ventilation_system, heavy). hasRole(ventilation_system, applianceRole). affordsTask(ventilation_system, maintenanceTask).
}).
#pos(e2755@10, {}, {goesIn(vice, cabinet)}, {
  obj(vice). hasPhysicalQuality(vice, heavy). hasPhysicalQuality(vice, rigid). hasRole(vice, toolRole). affordsTask(vice, maintenanceTask).
}).
#pos(e2756@10, {}, {goesIn(vice, home_office)}, {
  obj(vice). hasPhysicalQuality(vice, heavy). hasPhysicalQuality(vice, rigid). hasRole(vice, toolRole). affordsTask(vice, maintenanceTask).
}).
#pos(e2757@10, {}, {goesIn(vinyl, cabinet)}, {
  obj(vinyl). hasPhysicalQuality(vinyl, granular). hasRole(vinyl, consumableRole).
}).
#pos(e2758@10, {}, {goesIn(vinyl, music_room)}, {
  obj(vinyl). hasPhysicalQuality(vinyl, granular). hasRole(vinyl, consumableRole).
}).
#pos(e2759@10, {}, {goesIn(violin, closet)}, {
  obj(violin). hasPhysicalQuality(violin, electronic). hasPhysicalQuality(violin, rigid). hasRole(violin, musicalInstrumentRole). affordsTask(violin, leisureTask).
}).
#pos(e2760@10, {}, {goesIn(violin, fridge)}, {
  obj(violin). hasPhysicalQuality(violin, electronic). hasPhysicalQuality(violin, rigid). hasRole(violin, musicalInstrumentRole). affordsTask(violin, leisureTask).
}).
#pos(e2761@10, {}, {goesIn(waffles, laundry_room)}, {
  obj(waffles). hasPhysicalQuality(waffles, granular). hasPhysicalQuality(waffles, perishable). hasRole(waffles, consumableRole). affordsTask(waffles, eatingDrinkingTask).
}).
#pos(e2762@10, {}, {goesIn(waffles, table)}, {
  obj(waffles). hasPhysicalQuality(waffles, granular). hasPhysicalQuality(waffles, perishable). hasRole(waffles, consumableRole). affordsTask(waffles, eatingDrinkingTask).
}).
#pos(e2763@10, {}, {goesIn(wall, kitchen)}, {
  obj(wall). hasPhysicalQuality(wall, rigid). hasRole(wall, furnitureRole).
}).
#pos(e2764@10, {}, {goesIn(wall, playroom)}, {
  obj(wall). hasPhysicalQuality(wall, rigid). hasRole(wall, furnitureRole).
}).
#pos(e2765@10, {}, {goesIn(wardrobe, cabinet)}, {
  obj(wardrobe). hasPhysicalQuality(wardrobe, heavy). hasPhysicalQuality(wardrobe, rigid). hasRole(wardrobe, furnitureRole). affordsTask(wardrobe, storageTask).
}).
#pos(e2766@10, {}, {goesIn(wardrobe, library)}, {
  obj(wardrobe). hasPhysicalQuality(wardrobe, heavy). hasPhysicalQuality(wardrobe, rigid). hasRole(wardrobe, furnitureRole). affordsTask(wardrobe, storageTask).
}).
#pos(e2767@10, {}, {goesIn(wash_cloth, bathroom)}, {
  obj(wash_cloth). hasPhysicalQuality(wash_cloth, soft_Deformable). hasPhysicalQuality(wash_cloth, washable). hasRole(wash_cloth, cleaningToolRole). affordsTask(wash_cloth, hygieneTask).
}).
#pos(e2768@10, {}, {goesIn(wash_cloth, garden)}, {
  obj(wash_cloth). hasPhysicalQuality(wash_cloth, soft_Deformable). hasPhysicalQuality(wash_cloth, washable). hasRole(wash_cloth, cleaningToolRole). affordsTask(wash_cloth, hygieneTask).
}).
#pos(e2769@10, {}, {goesIn(washcloth, closet)}, {
  obj(washcloth). hasPhysicalQuality(washcloth, soft_Deformable). hasPhysicalQuality(washcloth, washable). hasRole(washcloth, cleaningToolRole). affordsTask(washcloth, hygieneTask).
}).
#pos(e2770@10, {}, {goesIn(washcloth, shelf)}, {
  obj(washcloth). hasPhysicalQuality(washcloth, soft_Deformable). hasPhysicalQuality(washcloth, washable). hasRole(washcloth, cleaningToolRole). affordsTask(washcloth, hygieneTask).
}).
#pos(e2771@10, {}, {goesIn(washing_machine, kitchen)}, {
  obj(washing_machine). hasPhysicalQuality(washing_machine, electronic). hasPhysicalQuality(washing_machine, heavy). hasRole(washing_machine, applianceRole). affordsTask(washing_machine, cleaningTask).
}).
#pos(e2772@10, {}, {goesIn(washing_machine, living_room)}, {
  obj(washing_machine). hasPhysicalQuality(washing_machine, electronic). hasPhysicalQuality(washing_machine, heavy). hasRole(washing_machine, applianceRole). affordsTask(washing_machine, cleaningTask).
}).
#pos(e2773@10, {}, {goesIn(water, shelf)}, {
  obj(water). hasPhysicalQuality(water, liquid). hasRole(water, cleaningToolRole). hasRole(water, consumableRole). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e2774@10, {}, {goesIn(water, table)}, {
  obj(water). hasPhysicalQuality(water, liquid). hasRole(water, cleaningToolRole). hasRole(water, consumableRole). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e2775@10, {}, {goesIn(wax, garden)}, {
  obj(wax). hasPhysicalQuality(wax, liquid). hasPhysicalQuality(wax, perishable). hasRole(wax, consumableRole). affordsTask(wax, eatingDrinkingTask).
}).
#pos(e2776@10, {}, {goesIn(wax, sink)}, {
  obj(wax). hasPhysicalQuality(wax, liquid). hasPhysicalQuality(wax, perishable). hasRole(wax, consumableRole). affordsTask(wax, eatingDrinkingTask).
}).
#pos(e2777@10, {}, {goesIn(weather_vane, laundry_room)}, {
  obj(weather_vane). hasRole(weather_vane, toolRole).
}).
#pos(e2778@10, {}, {goesIn(weather_vane, storage_room)}, {
  obj(weather_vane). hasRole(weather_vane, toolRole).
}).
#pos(e2779@10, {}, {goesIn(wheel, closet)}, {
  obj(wheel). hasPhysicalQuality(wheel, lightweight). hasPhysicalQuality(wheel, rigid). hasRole(wheel, toolRole). affordsTask(wheel, maintenanceTask).
}).
#pos(e2780@10, {}, {goesIn(wheel, laundry_room)}, {
  obj(wheel). hasPhysicalQuality(wheel, lightweight). hasPhysicalQuality(wheel, rigid). hasRole(wheel, toolRole). affordsTask(wheel, maintenanceTask).
}).
#pos(e2781@10, {}, {goesIn(whisk, garage)}, {
  obj(whisk). hasPhysicalQuality(whisk, hasBlade). hasPhysicalQuality(whisk, lightweight). hasPhysicalQuality(whisk, rigid). hasPhysicalQuality(whisk, sharp). hasRole(whisk, utensilRole). affordsTask(whisk, foodPreparationTask).
}).
#pos(e2782@10, {}, {goesIn(whisk, table)}, {
  obj(whisk). hasPhysicalQuality(whisk, hasBlade). hasPhysicalQuality(whisk, lightweight). hasPhysicalQuality(whisk, rigid). hasPhysicalQuality(whisk, sharp). hasRole(whisk, utensilRole). affordsTask(whisk, foodPreparationTask).
}).
#pos(e2783@10, {}, {goesIn(whisky, bathroom)}, {
  obj(whisky). hasPhysicalQuality(whisky, liquid). hasPhysicalQuality(whisky, perishable). hasRole(whisky, consumableRole). affordsTask(whisky, eatingDrinkingTask).
}).
#pos(e2784@10, {}, {goesIn(whisky, living_room)}, {
  obj(whisky). hasPhysicalQuality(whisky, liquid). hasPhysicalQuality(whisky, perishable). hasRole(whisky, consumableRole). affordsTask(whisky, eatingDrinkingTask).
}).
#pos(e2785@10, {}, {goesIn(window, shelf)}, {
  obj(window). hasPhysicalQuality(window, lightweight). hasPhysicalQuality(window, rigid). hasRole(window, furnitureRole). affordsTask(window, leisureTask).
}).
#pos(e2786@10, {}, {goesIn(window, table)}, {
  obj(window). hasPhysicalQuality(window, lightweight). hasPhysicalQuality(window, rigid). hasRole(window, furnitureRole). affordsTask(window, leisureTask).
}).
#pos(e2787@10, {}, {goesIn(window_curtain, home_office)}, {
  obj(window_curtain). hasPhysicalQuality(window_curtain, lightweight). hasPhysicalQuality(window_curtain, soft_Deformable). hasRole(window_curtain, decorationRole). affordsTask(window_curtain, leisureTask).
}).
#pos(e2788@10, {}, {goesIn(window_curtain, table)}, {
  obj(window_curtain). hasPhysicalQuality(window_curtain, lightweight). hasPhysicalQuality(window_curtain, soft_Deformable). hasRole(window_curtain, decorationRole). affordsTask(window_curtain, leisureTask).
}).
#pos(e2789@10, {}, {goesIn(wine, cabinet)}, {
  obj(wine). hasPhysicalQuality(wine, liquid). hasPhysicalQuality(wine, perishable). hasRole(wine, consumableRole). affordsTask(wine, eatingDrinkingTask).
}).
#pos(e2790@10, {}, {goesIn(wine, garden)}, {
  obj(wine). hasPhysicalQuality(wine, liquid). hasPhysicalQuality(wine, perishable). hasRole(wine, consumableRole). affordsTask(wine, eatingDrinkingTask).
}).
#pos(e2791@10, {}, {goesIn(wine_glass, living_room)}, {
  obj(wine_glass). hasPhysicalQuality(wine_glass, fragile). hasPhysicalQuality(wine_glass, lightweight). hasRole(wine_glass, utensilRole). affordsTask(wine_glass, eatingDrinkingTask).
}).
#pos(e2792@10, {}, {goesIn(wine_glass, storage_room)}, {
  obj(wine_glass). hasPhysicalQuality(wine_glass, fragile). hasPhysicalQuality(wine_glass, lightweight). hasRole(wine_glass, utensilRole). affordsTask(wine_glass, eatingDrinkingTask).
}).
#pos(e2793@10, {}, {goesIn(wooden_floor, kitchen)}, {
  obj(wooden_floor). hasPhysicalQuality(wooden_floor, fragile). hasPhysicalQuality(wooden_floor, rigid).
}).
#pos(e2794@10, {}, {goesIn(wooden_floor, music_room)}, {
  obj(wooden_floor). hasPhysicalQuality(wooden_floor, fragile). hasPhysicalQuality(wooden_floor, rigid).
}).
#pos(e2795@10, {}, {goesIn(wool, cabinet)}, {
  obj(wool). hasPhysicalQuality(wool, soft_Deformable). hasPhysicalQuality(wool, washable). hasRole(wool, clothingRole). affordsTask(wool, dressingTask).
}).
#pos(e2796@10, {}, {goesIn(wool, dining_room)}, {
  obj(wool). hasPhysicalQuality(wool, soft_Deformable). hasPhysicalQuality(wool, washable). hasRole(wool, clothingRole). affordsTask(wool, dressingTask).
}).
#pos(e2797@10, {}, {goesIn(wrench, bed)}, {
  obj(wrench). hasPhysicalQuality(wrench, heavy). hasPhysicalQuality(wrench, rigid). hasRole(wrench, toolRole). affordsTask(wrench, maintenanceTask).
}).
#pos(e2798@10, {}, {goesIn(wrench, hallway)}, {
  obj(wrench). hasPhysicalQuality(wrench, heavy). hasPhysicalQuality(wrench, rigid). hasRole(wrench, toolRole). affordsTask(wrench, maintenanceTask).
}).
