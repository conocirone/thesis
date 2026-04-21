% ==========================================================
% ILASP Input: hasAffordance(Object, Affordance) rule learning
% Context-dependent examples (each carries its own BK)
% Generated from ConceptNet object properties + SOMA background knowledge
% ==========================================================

#maxv(1).

#constant(affordance, absorb).
#constant(affordance, be_heated).
#constant(affordance, beautify).
#constant(affordance, bend).
#constant(affordance, bore).
#constant(affordance, break).
#constant(affordance, carry).
#constant(affordance, carve).
#constant(affordance, change).
#constant(affordance, chop).
#constant(affordance, clean).
#constant(affordance, comfort).
#constant(affordance, compress).
#constant(affordance, contain).
#constant(affordance, control).
#constant(affordance, cool).
#constant(affordance, cover).
#constant(affordance, crack).
#constant(affordance, crumble).
#constant(affordance, crunch).
#constant(affordance, cube).
#constant(affordance, cut).
#constant(affordance, decorate).
#constant(affordance, dice).
#constant(affordance, dig).
#constant(affordance, display).
#constant(affordance, dispose).
#constant(affordance, drill).
#constant(affordance, dry).
#constant(affordance, eat).
#constant(affordance, engrave).
#constant(affordance, entertain).
#constant(affordance, exercise).
#constant(affordance, file).
#constant(affordance, fix).
#constant(affordance, flex).
#constant(affordance, grasp).
#constant(affordance, grind).
#constant(affordance, hammer).
#constant(affordance, handle).
#constant(affordance, heat).
#constant(affordance, hold).
#constant(affordance, illuminate).
#constant(affordance, increase).
#constant(affordance, install).
#constant(affordance, lift).
#constant(affordance, mark).
#constant(affordance, melt).
#constant(affordance, mix).
#constant(affordance, operate).
#constant(affordance, peel).
#constant(affordance, pick).
#constant(affordance, pierce).
#constant(affordance, plow).
#constant(affordance, plug).
#constant(affordance, poke).
#constant(affordance, polish).
#constant(affordance, pour).
#constant(affordance, press).
#constant(affordance, read).
#constant(affordance, repair).
#constant(affordance, roll).
#constant(affordance, rub).
#constant(affordance, saw).
#constant(affordance, scoop).
#constant(affordance, screw).
#constant(affordance, separate).
#constant(affordance, shape).
#constant(affordance, skin).
#constant(affordance, slit).
#constant(affordance, smoothen).
#constant(affordance, solder).
#constant(affordance, spread).
#constant(affordance, staple).
#constant(affordance, stick).
#constant(affordance, store).
#constant(affordance, strip).
#constant(affordance, support).
#constant(affordance, tamp).
#constant(affordance, time).
#constant(affordance, unclog).
#constant(affordance, wash).
#constant(affordance, wipe).
#constant(affordance, wrap).
#constant(affordance, wrench).
#constant(affordance, write).

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

#modeh(hasAffordance(var(obj), const(affordance))).
#modeb(2, hasPhysicalQuality(var(obj), const(quality))).
#modeb(2, hasRole(var(obj), const(role))).
#modeb(2, affordsTask(var(obj), const(task))).

% --- Positive examples (weight 100) ---
#pos(e1@100, {hasAffordance(acne_medication, control)}, {}, {
  obj(acne_medication). hasPhysicalQuality(acne_medication, perishable). hasPhysicalQuality(acne_medication, toxic_Hazardous). hasRole(acne_medication, consumableRole). affordsTask(acne_medication, hygieneTask).
}).
#pos(e2@100, {hasAffordance(acne_medication, dry)}, {}, {
  obj(acne_medication). hasPhysicalQuality(acne_medication, perishable). hasPhysicalQuality(acne_medication, toxic_Hazardous). hasRole(acne_medication, consumableRole). affordsTask(acne_medication, hygieneTask).
}).
#pos(e3@100, {hasAffordance(acne_medication, skin)}, {}, {
  obj(acne_medication). hasPhysicalQuality(acne_medication, perishable). hasPhysicalQuality(acne_medication, toxic_Hazardous). hasRole(acne_medication, consumableRole). affordsTask(acne_medication, hygieneTask).
}).
#pos(e4@100, {hasAffordance(air_conditioner, comfort)}, {}, {
  obj(air_conditioner). hasPhysicalQuality(air_conditioner, electronic). hasPhysicalQuality(air_conditioner, heavy). hasPhysicalQuality(air_conditioner, requiresCooling). hasRole(air_conditioner, applianceRole).
}).
#pos(e5@100, {hasAffordance(air_conditioner, cool)}, {}, {
  obj(air_conditioner). hasPhysicalQuality(air_conditioner, electronic). hasPhysicalQuality(air_conditioner, heavy). hasPhysicalQuality(air_conditioner, requiresCooling). hasRole(air_conditioner, applianceRole).
}).
#pos(e6@100, {hasAffordance(air_conditioner, heat)}, {}, {
  obj(air_conditioner). hasPhysicalQuality(air_conditioner, electronic). hasPhysicalQuality(air_conditioner, heavy). hasPhysicalQuality(air_conditioner, requiresCooling). hasRole(air_conditioner, applianceRole).
}).
#pos(e7@100, {hasAffordance(album, entertain)}, {}, {
  obj(album). hasPhysicalQuality(album, lightweight). hasRole(album, documentRole). affordsTask(album, leisureTask).
}).
#pos(e8@100, {hasAffordance(album, hold)}, {}, {
  obj(album). hasPhysicalQuality(album, lightweight). hasRole(album, documentRole). affordsTask(album, leisureTask).
}).
#pos(e9@100, {hasAffordance(album, stick)}, {}, {
  obj(album). hasPhysicalQuality(album, lightweight). hasRole(album, documentRole). affordsTask(album, leisureTask).
}).
#pos(e10@100, {hasAffordance(album, store)}, {}, {
  obj(album). hasPhysicalQuality(album, lightweight). hasRole(album, documentRole). affordsTask(album, leisureTask).
}).
#pos(e11@100, {hasAffordance(alcohol, clean)}, {}, {
  obj(alcohol). hasPhysicalQuality(alcohol, flammable). hasRole(alcohol, consumableRole).
}).
#pos(e12@100, {hasAffordance(appointment_book, store)}, {}, {
  obj(appointment_book). hasRole(appointment_book, documentRole).
}).
#pos(e13@100, {hasAffordance(appointment_book, time)}, {}, {
  obj(appointment_book). hasRole(appointment_book, documentRole).
}).
#pos(e14@100, {hasAffordance(arch, support)}, {}, {
  obj(arch). hasPhysicalQuality(arch, heavy). hasPhysicalQuality(arch, rigid). hasRole(arch, furnitureRole).
}).
#pos(e15@100, {hasAffordance(armchair, read)}, {}, {
  obj(armchair). hasPhysicalQuality(armchair, heavy). hasRole(armchair, furnitureRole). affordsTask(armchair, leisureTask).
}).
#pos(e16@100, {hasAffordance(armoire, store)}, {}, {
  obj(armoire). hasPhysicalQuality(armoire, heavy). hasPhysicalQuality(armoire, rigid). hasRole(armoire, furnitureRole). affordsTask(armoire, storageTask).
}).
#pos(e17@100, {hasAffordance(artichoke_hearts, smoothen)}, {}, {
  obj(artichoke_hearts). hasPhysicalQuality(artichoke_hearts, perishable). hasRole(artichoke_hearts, consumableRole). affordsTask(artichoke_hearts, eatingDrinkingTask).
}).
#pos(e18@100, {hasAffordance(attache_case, carry)}, {}, {
  obj(attache_case). hasPhysicalQuality(attache_case, lightweight). hasPhysicalQuality(attache_case, soft_Deformable). hasRole(attache_case, storageContainerRole). affordsTask(attache_case, workStudyTask).
}).
#pos(e19@100, {hasAffordance(attache_case, hold)}, {}, {
  obj(attache_case). hasPhysicalQuality(attache_case, lightweight). hasPhysicalQuality(attache_case, soft_Deformable). hasRole(attache_case, storageContainerRole). affordsTask(attache_case, workStudyTask).
}).
#pos(e20@100, {hasAffordance(attache_case, store)}, {}, {
  obj(attache_case). hasPhysicalQuality(attache_case, lightweight). hasPhysicalQuality(attache_case, soft_Deformable). hasRole(attache_case, storageContainerRole). affordsTask(attache_case, workStudyTask).
}).
#pos(e21@100, {hasAffordance(bag, carry)}, {}, {
  obj(bag). hasPhysicalQuality(bag, hasContainer). hasRole(bag, storageContainerRole). affordsTask(bag, storageTask).
}).
#pos(e22@100, {hasAffordance(bag, contain)}, {}, {
  obj(bag). hasPhysicalQuality(bag, hasContainer). hasRole(bag, storageContainerRole). affordsTask(bag, storageTask).
}).
#pos(e23@100, {hasAffordance(bag, hammer)}, {}, {
  obj(bag). hasPhysicalQuality(bag, hasContainer). hasRole(bag, storageContainerRole). affordsTask(bag, storageTask).
}).
#pos(e24@100, {hasAffordance(bag, heat)}, {}, {
  obj(bag). hasPhysicalQuality(bag, hasContainer). hasRole(bag, storageContainerRole). affordsTask(bag, storageTask).
}).
#pos(e25@100, {hasAffordance(bag, hold)}, {}, {
  obj(bag). hasPhysicalQuality(bag, hasContainer). hasRole(bag, storageContainerRole). affordsTask(bag, storageTask).
}).
#pos(e26@100, {hasAffordance(baking_oven, heat)}, {}, {
  obj(baking_oven). hasPhysicalQuality(baking_oven, heated). hasRole(baking_oven, cookwareRole). affordsTask(baking_oven, foodPreparationTask).
}).
#pos(e27@100, {hasAffordance(ballpoint_pen, mark)}, {}, {
  obj(ballpoint_pen). hasPhysicalQuality(ballpoint_pen, lightweight). hasPhysicalQuality(ballpoint_pen, rigid). hasRole(ballpoint_pen, toolRole).
}).
#pos(e28@100, {hasAffordance(ballpoint_pen, write)}, {}, {
  obj(ballpoint_pen). hasPhysicalQuality(ballpoint_pen, lightweight). hasPhysicalQuality(ballpoint_pen, rigid). hasRole(ballpoint_pen, toolRole).
}).
#pos(e29@100, {hasAffordance(bandages, cover)}, {}, {
  obj(bandages). hasPhysicalQuality(bandages, lightweight). hasPhysicalQuality(bandages, washable). hasRole(bandages, safetyEquipmentRole). affordsTask(bandages, hygieneTask).
}).
#pos(e30@100, {hasAffordance(barbecue, heat)}, {}, {
  obj(barbecue). hasPhysicalQuality(barbecue, heated). hasRole(barbecue, cookwareRole). hasRole(barbecue, toolRole). affordsTask(barbecue, foodPreparationTask).
}).
#pos(e31@100, {hasAffordance(basket, carry)}, {}, {
  obj(basket). hasPhysicalQuality(basket, lightweight). hasPhysicalQuality(basket, rigid). hasRole(basket, storageContainerRole). affordsTask(basket, storageTask).
}).
#pos(e32@100, {hasAffordance(basket, entertain)}, {}, {
  obj(basket). hasPhysicalQuality(basket, lightweight). hasPhysicalQuality(basket, rigid). hasRole(basket, storageContainerRole). affordsTask(basket, storageTask).
}).
#pos(e33@100, {hasAffordance(basket, hold)}, {}, {
  obj(basket). hasPhysicalQuality(basket, lightweight). hasPhysicalQuality(basket, rigid). hasRole(basket, storageContainerRole). affordsTask(basket, storageTask).
}).
#pos(e34@100, {hasAffordance(basket, roll)}, {}, {
  obj(basket). hasPhysicalQuality(basket, lightweight). hasPhysicalQuality(basket, rigid). hasRole(basket, storageContainerRole). affordsTask(basket, storageTask).
}).
#pos(e35@100, {hasAffordance(basket, store)}, {}, {
  obj(basket). hasPhysicalQuality(basket, lightweight). hasPhysicalQuality(basket, rigid). hasRole(basket, storageContainerRole). affordsTask(basket, storageTask).
}).
#pos(e36@100, {hasAffordance(basket_with_handle, carry)}, {}, {
  obj(basket_with_handle). hasPhysicalQuality(basket_with_handle, hasContainer). hasPhysicalQuality(basket_with_handle, lightweight). hasRole(basket_with_handle, storageContainerRole). affordsTask(basket_with_handle, storageTask).
}).
#pos(e37@100, {hasAffordance(basket_with_handle, clean)}, {}, {
  obj(basket_with_handle). hasPhysicalQuality(basket_with_handle, hasContainer). hasPhysicalQuality(basket_with_handle, lightweight). hasRole(basket_with_handle, storageContainerRole). affordsTask(basket_with_handle, storageTask).
}).
#pos(e38@100, {hasAffordance(basket_with_handle, hold)}, {}, {
  obj(basket_with_handle). hasPhysicalQuality(basket_with_handle, hasContainer). hasPhysicalQuality(basket_with_handle, lightweight). hasRole(basket_with_handle, storageContainerRole). affordsTask(basket_with_handle, storageTask).
}).
#pos(e39@100, {hasAffordance(basket_with_handle, illuminate)}, {}, {
  obj(basket_with_handle). hasPhysicalQuality(basket_with_handle, hasContainer). hasPhysicalQuality(basket_with_handle, lightweight). hasRole(basket_with_handle, storageContainerRole). affordsTask(basket_with_handle, storageTask).
}).
#pos(e40@100, {hasAffordance(basket_with_handle, store)}, {}, {
  obj(basket_with_handle). hasPhysicalQuality(basket_with_handle, hasContainer). hasPhysicalQuality(basket_with_handle, lightweight). hasRole(basket_with_handle, storageContainerRole). affordsTask(basket_with_handle, storageTask).
}).
#pos(e41@100, {hasAffordance(basket_with_handle, wash)}, {}, {
  obj(basket_with_handle). hasPhysicalQuality(basket_with_handle, hasContainer). hasPhysicalQuality(basket_with_handle, lightweight). hasRole(basket_with_handle, storageContainerRole). affordsTask(basket_with_handle, storageTask).
}).
#pos(e42@100, {hasAffordance(bath, absorb)}, {}, {
  obj(bath). hasPhysicalQuality(bath, soft_Deformable). hasPhysicalQuality(bath, washable). hasRole(bath, cleaningToolRole). affordsTask(bath, hygieneTask).
}).
#pos(e43@100, {hasAffordance(bath, clean)}, {}, {
  obj(bath). hasPhysicalQuality(bath, soft_Deformable). hasPhysicalQuality(bath, washable). hasRole(bath, cleaningToolRole). affordsTask(bath, hygieneTask).
}).
#pos(e44@100, {hasAffordance(bath, heat)}, {}, {
  obj(bath). hasPhysicalQuality(bath, soft_Deformable). hasPhysicalQuality(bath, washable). hasRole(bath, cleaningToolRole). affordsTask(bath, hygieneTask).
}).
#pos(e45@100, {hasAffordance(bath, skin)}, {}, {
  obj(bath). hasPhysicalQuality(bath, soft_Deformable). hasPhysicalQuality(bath, washable). hasRole(bath, cleaningToolRole). affordsTask(bath, hygieneTask).
}).
#pos(e46@100, {hasAffordance(bath, wash)}, {}, {
  obj(bath). hasPhysicalQuality(bath, soft_Deformable). hasPhysicalQuality(bath, washable). hasRole(bath, cleaningToolRole). affordsTask(bath, hygieneTask).
}).
#pos(e47@100, {hasAffordance(bath_shower, clean)}, {}, {
  obj(bath_shower). hasPhysicalQuality(bath_shower, electronic). hasPhysicalQuality(bath_shower, heavy). hasRole(bath_shower, cleaningToolRole). affordsTask(bath_shower, hygieneTask).
}).
#pos(e48@100, {hasAffordance(bath_shower, wash)}, {}, {
  obj(bath_shower). hasPhysicalQuality(bath_shower, electronic). hasPhysicalQuality(bath_shower, heavy). hasRole(bath_shower, cleaningToolRole). affordsTask(bath_shower, hygieneTask).
}).
#pos(e49@100, {hasAffordance(bathroom, clean)}, {}, {
  obj(bathroom). hasPhysicalQuality(bathroom, heavy). hasRole(bathroom, furnitureRole).
}).
#pos(e50@100, {hasAffordance(bathroom, read)}, {}, {
  obj(bathroom). hasPhysicalQuality(bathroom, heavy). hasRole(bathroom, furnitureRole).
}).
#pos(e51@100, {hasAffordance(bathroom, wash)}, {}, {
  obj(bathroom). hasPhysicalQuality(bathroom, heavy). hasRole(bathroom, furnitureRole).
}).
#pos(e52@100, {hasAffordance(bay_window, illuminate)}, {}, {
  obj(bay_window). hasPhysicalQuality(bay_window, heavy). hasPhysicalQuality(bay_window, rigid). hasRole(bay_window, furnitureRole).
}).
#pos(e53@100, {hasAffordance(beam, illuminate)}, {}, {
  obj(beam). hasPhysicalQuality(beam, heavy). hasPhysicalQuality(beam, rigid). hasRole(beam, toolRole). affordsTask(beam, maintenanceTask).
}).
#pos(e54@100, {hasAffordance(beam, support)}, {}, {
  obj(beam). hasPhysicalQuality(beam, heavy). hasPhysicalQuality(beam, rigid). hasRole(beam, toolRole). affordsTask(beam, maintenanceTask).
}).
#pos(e55@100, {hasAffordance(bean_bag_chair, comfort)}, {}, {
  obj(bean_bag_chair). hasPhysicalQuality(bean_bag_chair, lightweight). hasPhysicalQuality(bean_bag_chair, soft_Deformable). hasRole(bean_bag_chair, furnitureRole). affordsTask(bean_bag_chair, leisureTask).
}).
#pos(e56@100, {hasAffordance(beanbag, entertain)}, {}, {
  obj(beanbag). hasPhysicalQuality(beanbag, lightweight). hasPhysicalQuality(beanbag, soft_Deformable). hasRole(beanbag, furnitureRole). affordsTask(beanbag, leisureTask).
}).
#pos(e57@100, {hasAffordance(bed, comfort)}, {}, {
  obj(bed). hasPhysicalQuality(bed, heavy). hasPhysicalQuality(bed, soft_Deformable). hasRole(bed, furnitureRole). affordsTask(bed, sleepingTask).
}).
#pos(e58@100, {hasAffordance(bed, cover)}, {}, {
  obj(bed). hasPhysicalQuality(bed, heavy). hasPhysicalQuality(bed, soft_Deformable). hasRole(bed, furnitureRole). affordsTask(bed, sleepingTask).
}).
#pos(e59@100, {hasAffordance(bed, read)}, {}, {
  obj(bed). hasPhysicalQuality(bed, heavy). hasPhysicalQuality(bed, soft_Deformable). hasRole(bed, furnitureRole). affordsTask(bed, sleepingTask).
}).
#pos(e60@100, {hasAffordance(bed_sheet, cover)}, {}, {
  obj(bed_sheet). hasPhysicalQuality(bed_sheet, soft_Deformable). hasPhysicalQuality(bed_sheet, washable). hasRole(bed_sheet, beddingRole). affordsTask(bed_sheet, sleepingTask).
}).
#pos(e61@100, {hasAffordance(bed_sheet, entertain)}, {}, {
  obj(bed_sheet). hasPhysicalQuality(bed_sheet, soft_Deformable). hasPhysicalQuality(bed_sheet, washable). hasRole(bed_sheet, beddingRole). affordsTask(bed_sheet, sleepingTask).
}).
#pos(e62@100, {hasAffordance(bedroom, wash)}, {}, {
  obj(bedroom). hasRole(bedroom, furnitureRole). affordsTask(bedroom, sleepingTask).
}).
#pos(e63@100, {hasAffordance(beer_mug, hold)}, {}, {
  obj(beer_mug). hasPhysicalQuality(beer_mug, heavy). hasPhysicalQuality(beer_mug, liquid). hasRole(beer_mug, utensilRole). affordsTask(beer_mug, eatingDrinkingTask).
}).
#pos(e64@100, {hasAffordance(bell, entertain)}, {}, {
  obj(bell). hasPhysicalQuality(bell, lightweight). hasPhysicalQuality(bell, rigid). hasRole(bell, toolRole). affordsTask(bell, maintenanceTask).
}).
#pos(e65@100, {hasAffordance(bell, time)}, {}, {
  obj(bell). hasPhysicalQuality(bell, lightweight). hasPhysicalQuality(bell, rigid). hasRole(bell, toolRole). affordsTask(bell, maintenanceTask).
}).
#pos(e66@100, {hasAffordance(belt, hold)}, {}, {
  obj(belt). hasPhysicalQuality(belt, lightweight). hasPhysicalQuality(belt, soft_Deformable). hasRole(belt, clothingRole). affordsTask(belt, dressingTask).
}).
#pos(e67@100, {hasAffordance(bicycle_storage_area, store)}, {}, {
  obj(bicycle_storage_area). hasRole(bicycle_storage_area, storageContainerRole). affordsTask(bicycle_storage_area, storageTask).
}).
#pos(e68@100, {hasAffordance(bike, carry)}, {}, {
  obj(bike). hasPhysicalQuality(bike, heavy). hasPhysicalQuality(bike, rigid). hasRole(bike, furnitureRole). affordsTask(bike, leisureTask).
}).
#pos(e69@100, {hasAffordance(bill_file, file)}, {}, {
  obj(bill_file). hasPhysicalQuality(bill_file, lightweight). hasPhysicalQuality(bill_file, washable). hasRole(bill_file, storageContainerRole). affordsTask(bill_file, storageTask).
}).
#pos(e70@100, {hasAffordance(bill_file, store)}, {}, {
  obj(bill_file). hasPhysicalQuality(bill_file, lightweight). hasPhysicalQuality(bill_file, washable). hasRole(bill_file, storageContainerRole). affordsTask(bill_file, storageTask).
}).
#pos(e71@100, {hasAffordance(binder, hold)}, {}, {
  obj(binder). hasPhysicalQuality(binder, lightweight). hasPhysicalQuality(binder, rigid). hasRole(binder, storageContainerRole). affordsTask(binder, storageTask).
}).
#pos(e72@100, {hasAffordance(binder, store)}, {}, {
  obj(binder). hasPhysicalQuality(binder, lightweight). hasPhysicalQuality(binder, rigid). hasRole(binder, storageContainerRole). affordsTask(binder, storageTask).
}).
#pos(e73@100, {hasAffordance(bird, entertain)}, {}, {
  obj(bird). hasPhysicalQuality(bird, fragile). hasPhysicalQuality(bird, lightweight). hasRole(bird, entertainmentRole). affordsTask(bird, leisureTask).
}).
#pos(e74@100, {hasAffordance(bird, spread)}, {}, {
  obj(bird). hasPhysicalQuality(bird, fragile). hasPhysicalQuality(bird, lightweight). hasRole(bird, entertainmentRole). affordsTask(bird, leisureTask).
}).
#pos(e75@100, {hasAffordance(birds, spread)}, {}, {
  obj(birds). hasPhysicalQuality(birds, lightweight). hasPhysicalQuality(birds, soft_Deformable). hasRole(birds, entertainmentRole). affordsTask(birds, leisureTask).
}).
#pos(e76@100, {hasAffordance(birds, stick)}, {}, {
  obj(birds). hasPhysicalQuality(birds, lightweight). hasPhysicalQuality(birds, soft_Deformable). hasRole(birds, entertainmentRole). affordsTask(birds, leisureTask).
}).
#pos(e77@100, {hasAffordance(birth_control_pill, control)}, {}, {
  obj(birth_control_pill). hasPhysicalQuality(birth_control_pill, liquid). hasPhysicalQuality(birth_control_pill, perishable). hasRole(birth_control_pill, consumableRole). affordsTask(birth_control_pill, eatingDrinkingTask).
}).
#pos(e78@100, {hasAffordance(blanket, comfort)}, {}, {
  obj(blanket). hasPhysicalQuality(blanket, soft_Deformable). hasPhysicalQuality(blanket, washable). hasRole(blanket, beddingRole). affordsTask(blanket, sleepingTask).
}).
#pos(e79@100, {hasAffordance(blanket, cover)}, {}, {
  obj(blanket). hasPhysicalQuality(blanket, soft_Deformable). hasPhysicalQuality(blanket, washable). hasRole(blanket, beddingRole). affordsTask(blanket, sleepingTask).
}).
#pos(e80@100, {hasAffordance(blanket, heat)}, {}, {
  obj(blanket). hasPhysicalQuality(blanket, soft_Deformable). hasPhysicalQuality(blanket, washable). hasRole(blanket, beddingRole). affordsTask(blanket, sleepingTask).
}).
#pos(e81@100, {hasAffordance(blowdryer, dry)}, {}, {
  obj(blowdryer). hasPhysicalQuality(blowdryer, electronic). hasPhysicalQuality(blowdryer, heavy). hasRole(blowdryer, applianceRole). affordsTask(blowdryer, leisureTask).
}).
#pos(e82@100, {hasAffordance(blowdryer, hammer)}, {}, {
  obj(blowdryer). hasPhysicalQuality(blowdryer, electronic). hasPhysicalQuality(blowdryer, heavy). hasRole(blowdryer, applianceRole). affordsTask(blowdryer, leisureTask).
}).
#pos(e83@100, {hasAffordance(blowdryer, heat)}, {}, {
  obj(blowdryer). hasPhysicalQuality(blowdryer, electronic). hasPhysicalQuality(blowdryer, heavy). hasRole(blowdryer, applianceRole). affordsTask(blowdryer, leisureTask).
}).
#pos(e84@100, {hasAffordance(blowdryer, polish)}, {}, {
  obj(blowdryer). hasPhysicalQuality(blowdryer, electronic). hasPhysicalQuality(blowdryer, heavy). hasRole(blowdryer, applianceRole). affordsTask(blowdryer, leisureTask).
}).
#pos(e85@100, {hasAffordance(board_game, bore)}, {}, {
  obj(board_game). hasRole(board_game, entertainmentRole). affordsTask(board_game, leisureTask).
}).
#pos(e86@100, {hasAffordance(board_game, entertain)}, {}, {
  obj(board_game). hasRole(board_game, entertainmentRole). affordsTask(board_game, leisureTask).
}).
#pos(e87@100, {hasAffordance(board_game, mix)}, {}, {
  obj(board_game). hasRole(board_game, entertainmentRole). affordsTask(board_game, leisureTask).
}).
#pos(e88@100, {hasAffordance(board_game, time)}, {}, {
  obj(board_game). hasRole(board_game, entertainmentRole). affordsTask(board_game, leisureTask).
}).
#pos(e89@100, {hasAffordance(bone, break)}, {}, {
  obj(bone). hasPhysicalQuality(bone, fragile). hasPhysicalQuality(bone, heavy). hasRole(bone, consumableRole). affordsTask(bone, foodPreparationTask).
}).
#pos(e90@100, {hasAffordance(bone, support)}, {}, {
  obj(bone). hasPhysicalQuality(bone, fragile). hasPhysicalQuality(bone, heavy). hasRole(bone, consumableRole). affordsTask(bone, foodPreparationTask).
}).
#pos(e91@100, {hasAffordance(bones, break)}, {}, {
  obj(bones). hasPhysicalQuality(bones, fragile). hasPhysicalQuality(bones, rigid). hasRole(bones, toolRole).
}).
#pos(e92@100, {hasAffordance(book, absorb)}, {}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask).
}).
#pos(e93@100, {hasAffordance(book, carry)}, {}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask).
}).
#pos(e94@100, {hasAffordance(book, cover)}, {}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask).
}).
#pos(e95@100, {hasAffordance(book, dig)}, {}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask).
}).
#pos(e96@100, {hasAffordance(book, entertain)}, {}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask).
}).
#pos(e97@100, {hasAffordance(book, hold)}, {}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask).
}).
#pos(e98@100, {hasAffordance(book, press)}, {}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask).
}).
#pos(e99@100, {hasAffordance(book, read)}, {}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask).
}).
#pos(e100@100, {hasAffordance(book, spread)}, {}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask).
}).
#pos(e101@100, {hasAffordance(book, support)}, {}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask).
}).
#pos(e102@100, {hasAffordance(book, time)}, {}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask).
}).
#pos(e103@100, {hasAffordance(book, write)}, {}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask).
}).
#pos(e104@100, {hasAffordance(book_end, hold)}, {}, {
  obj(book_end). hasPhysicalQuality(book_end, heavy). hasPhysicalQuality(book_end, rigid). hasRole(book_end, furnitureRole). affordsTask(book_end, storageTask).
}).
#pos(e105@100, {hasAffordance(bookcase, carry)}, {}, {
  obj(bookcase). hasPhysicalQuality(bookcase, heavy). hasPhysicalQuality(bookcase, rigid). hasRole(bookcase, storageContainerRole). affordsTask(bookcase, storageTask).
}).
#pos(e106@100, {hasAffordance(bookcase, display)}, {}, {
  obj(bookcase). hasPhysicalQuality(bookcase, heavy). hasPhysicalQuality(bookcase, rigid). hasRole(bookcase, storageContainerRole). affordsTask(bookcase, storageTask).
}).
#pos(e107@100, {hasAffordance(bookcase, store)}, {}, {
  obj(bookcase). hasPhysicalQuality(bookcase, heavy). hasPhysicalQuality(bookcase, rigid). hasRole(bookcase, storageContainerRole). affordsTask(bookcase, storageTask).
}).
#pos(e108@100, {hasAffordance(bookend, display)}, {}, {
  obj(bookend). hasPhysicalQuality(bookend, heavy). hasPhysicalQuality(bookend, rigid). hasRole(bookend, furnitureRole). affordsTask(bookend, storageTask).
}).
#pos(e109@100, {hasAffordance(bookend, hold)}, {}, {
  obj(bookend). hasPhysicalQuality(bookend, heavy). hasPhysicalQuality(bookend, rigid). hasRole(bookend, furnitureRole). affordsTask(bookend, storageTask).
}).
#pos(e110@100, {hasAffordance(bookend, press)}, {}, {
  obj(bookend). hasPhysicalQuality(bookend, heavy). hasPhysicalQuality(bookend, rigid). hasRole(bookend, furnitureRole). affordsTask(bookend, storageTask).
}).
#pos(e111@100, {hasAffordance(books, entertain)}, {}, {
  obj(books). hasPhysicalQuality(books, lightweight). hasPhysicalQuality(books, washable). hasRole(books, documentRole). affordsTask(books, workStudyTask).
}).
#pos(e112@100, {hasAffordance(books, hold)}, {}, {
  obj(books). hasPhysicalQuality(books, lightweight). hasPhysicalQuality(books, washable). hasRole(books, documentRole). affordsTask(books, workStudyTask).
}).
#pos(e113@100, {hasAffordance(books, press)}, {}, {
  obj(books). hasPhysicalQuality(books, lightweight). hasPhysicalQuality(books, washable). hasRole(books, documentRole). affordsTask(books, workStudyTask).
}).
#pos(e114@100, {hasAffordance(books, read)}, {}, {
  obj(books). hasPhysicalQuality(books, lightweight). hasPhysicalQuality(books, washable). hasRole(books, documentRole). affordsTask(books, workStudyTask).
}).
#pos(e115@100, {hasAffordance(books, store)}, {}, {
  obj(books). hasPhysicalQuality(books, lightweight). hasPhysicalQuality(books, washable). hasRole(books, documentRole). affordsTask(books, workStudyTask).
}).
#pos(e116@100, {hasAffordance(bookshelf, contain)}, {}, {
  obj(bookshelf). hasPhysicalQuality(bookshelf, heavy). hasPhysicalQuality(bookshelf, rigid). hasRole(bookshelf, storageContainerRole). affordsTask(bookshelf, storageTask).
}).
#pos(e117@100, {hasAffordance(bookshelf, display)}, {}, {
  obj(bookshelf). hasPhysicalQuality(bookshelf, heavy). hasPhysicalQuality(bookshelf, rigid). hasRole(bookshelf, storageContainerRole). affordsTask(bookshelf, storageTask).
}).
#pos(e118@100, {hasAffordance(bookshelf, entertain)}, {}, {
  obj(bookshelf). hasPhysicalQuality(bookshelf, heavy). hasPhysicalQuality(bookshelf, rigid). hasRole(bookshelf, storageContainerRole). affordsTask(bookshelf, storageTask).
}).
#pos(e119@100, {hasAffordance(bookshelf, hold)}, {}, {
  obj(bookshelf). hasPhysicalQuality(bookshelf, heavy). hasPhysicalQuality(bookshelf, rigid). hasRole(bookshelf, storageContainerRole). affordsTask(bookshelf, storageTask).
}).
#pos(e120@100, {hasAffordance(bookshelf, read)}, {}, {
  obj(bookshelf). hasPhysicalQuality(bookshelf, heavy). hasPhysicalQuality(bookshelf, rigid). hasRole(bookshelf, storageContainerRole). affordsTask(bookshelf, storageTask).
}).
#pos(e121@100, {hasAffordance(bookshelf, support)}, {}, {
  obj(bookshelf). hasPhysicalQuality(bookshelf, heavy). hasPhysicalQuality(bookshelf, rigid). hasRole(bookshelf, storageContainerRole). affordsTask(bookshelf, storageTask).
}).
#pos(e122@100, {hasAffordance(boots, heat)}, {}, {
  obj(boots). hasPhysicalQuality(boots, heavy). hasPhysicalQuality(boots, soft_Deformable). hasRole(boots, clothingRole). affordsTask(boots, dressingTask).
}).
#pos(e123@100, {hasAffordance(bottle, carry)}, {}, {
  obj(bottle). hasPhysicalQuality(bottle, hasContainer). hasRole(bottle, storageContainerRole). affordsTask(bottle, eatingDrinkingTask).
}).
#pos(e124@100, {hasAffordance(bottle, hold)}, {}, {
  obj(bottle). hasPhysicalQuality(bottle, hasContainer). hasRole(bottle, storageContainerRole). affordsTask(bottle, eatingDrinkingTask).
}).
#pos(e125@100, {hasAffordance(bottle, pour)}, {}, {
  obj(bottle). hasPhysicalQuality(bottle, hasContainer). hasRole(bottle, storageContainerRole). affordsTask(bottle, eatingDrinkingTask).
}).
#pos(e126@100, {hasAffordance(bottle, store)}, {}, {
  obj(bottle). hasPhysicalQuality(bottle, hasContainer). hasRole(bottle, storageContainerRole). affordsTask(bottle, eatingDrinkingTask).
}).
#pos(e127@100, {hasAffordance(bowl, contain)}, {}, {
  obj(bowl). hasPhysicalQuality(bowl, hasContainer). hasRole(bowl, storageContainerRole). affordsTask(bowl, eatingDrinkingTask). affordsTask(bowl, foodPreparationTask).
}).
#pos(e128@100, {hasAffordance(bowl, cut)}, {}, {
  obj(bowl). hasPhysicalQuality(bowl, hasContainer). hasRole(bowl, storageContainerRole). affordsTask(bowl, eatingDrinkingTask). affordsTask(bowl, foodPreparationTask).
}).
#pos(e129@100, {hasAffordance(bowl, dry)}, {}, {
  obj(bowl). hasPhysicalQuality(bowl, hasContainer). hasRole(bowl, storageContainerRole). affordsTask(bowl, eatingDrinkingTask). affordsTask(bowl, foodPreparationTask).
}).
#pos(e130@100, {hasAffordance(bowl, entertain)}, {}, {
  obj(bowl). hasPhysicalQuality(bowl, hasContainer). hasRole(bowl, storageContainerRole). affordsTask(bowl, eatingDrinkingTask). affordsTask(bowl, foodPreparationTask).
}).
#pos(e131@100, {hasAffordance(bowl, hold)}, {}, {
  obj(bowl). hasPhysicalQuality(bowl, hasContainer). hasRole(bowl, storageContainerRole). affordsTask(bowl, eatingDrinkingTask). affordsTask(bowl, foodPreparationTask).
}).
#pos(e132@100, {hasAffordance(bowl, mix)}, {}, {
  obj(bowl). hasPhysicalQuality(bowl, hasContainer). hasRole(bowl, storageContainerRole). affordsTask(bowl, eatingDrinkingTask). affordsTask(bowl, foodPreparationTask).
}).
#pos(e133@100, {hasAffordance(bowl, wash)}, {}, {
  obj(bowl). hasPhysicalQuality(bowl, hasContainer). hasRole(bowl, storageContainerRole). affordsTask(bowl, eatingDrinkingTask). affordsTask(bowl, foodPreparationTask).
}).
#pos(e134@100, {hasAffordance(box, carry)}, {}, {
  obj(box). hasPhysicalQuality(box, heavy). hasPhysicalQuality(box, rigid). hasRole(box, storageContainerRole). affordsTask(box, storageTask).
}).
#pos(e135@100, {hasAffordance(box, contain)}, {}, {
  obj(box). hasPhysicalQuality(box, heavy). hasPhysicalQuality(box, rigid). hasRole(box, storageContainerRole). affordsTask(box, storageTask).
}).
#pos(e136@100, {hasAffordance(box, hold)}, {}, {
  obj(box). hasPhysicalQuality(box, heavy). hasPhysicalQuality(box, rigid). hasRole(box, storageContainerRole). affordsTask(box, storageTask).
}).
#pos(e137@100, {hasAffordance(box, store)}, {}, {
  obj(box). hasPhysicalQuality(box, heavy). hasPhysicalQuality(box, rigid). hasRole(box, storageContainerRole). affordsTask(box, storageTask).
}).
#pos(e138@100, {hasAffordance(box, wrap)}, {}, {
  obj(box). hasPhysicalQuality(box, heavy). hasPhysicalQuality(box, rigid). hasRole(box, storageContainerRole). affordsTask(box, storageTask).
}).
#pos(e139@100, {hasAffordance(boxes, hold)}, {}, {
  obj(boxes). hasPhysicalQuality(boxes, heavy). hasPhysicalQuality(boxes, rigid). hasRole(boxes, storageContainerRole). affordsTask(boxes, storageTask).
}).
#pos(e140@100, {hasAffordance(boxes, store)}, {}, {
  obj(boxes). hasPhysicalQuality(boxes, heavy). hasPhysicalQuality(boxes, rigid). hasRole(boxes, storageContainerRole). affordsTask(boxes, storageTask).
}).
#pos(e141@100, {hasAffordance(bread, dry)}, {}, {
  obj(bread). hasPhysicalQuality(bread, granular). hasPhysicalQuality(bread, perishable). hasRole(bread, consumableRole). affordsTask(bread, eatingDrinkingTask). affordsTask(bread, foodPreparationTask).
}).
#pos(e142@100, {hasAffordance(bread, heat)}, {}, {
  obj(bread). hasPhysicalQuality(bread, granular). hasPhysicalQuality(bread, perishable). hasRole(bread, consumableRole). affordsTask(bread, eatingDrinkingTask). affordsTask(bread, foodPreparationTask).
}).
#pos(e143@100, {hasAffordance(bread, smoothen)}, {}, {
  obj(bread). hasPhysicalQuality(bread, granular). hasPhysicalQuality(bread, perishable). hasRole(bread, consumableRole). affordsTask(bread, eatingDrinkingTask). affordsTask(bread, foodPreparationTask).
}).
#pos(e144@100, {hasAffordance(bread, spread)}, {}, {
  obj(bread). hasPhysicalQuality(bread, granular). hasPhysicalQuality(bread, perishable). hasRole(bread, consumableRole). affordsTask(bread, eatingDrinkingTask). affordsTask(bread, foodPreparationTask).
}).
#pos(e145@100, {hasAffordance(broken_glass, cut)}, {}, {
  obj(broken_glass). hasPhysicalQuality(broken_glass, fragile). hasPhysicalQuality(broken_glass, sharp). hasRole(broken_glass, wasteRole).
}).
#pos(e146@100, {hasAffordance(broken_glass, skin)}, {}, {
  obj(broken_glass). hasPhysicalQuality(broken_glass, fragile). hasPhysicalQuality(broken_glass, sharp). hasRole(broken_glass, wasteRole).
}).
#pos(e147@100, {hasAffordance(bucket, carry)}, {}, {
  obj(bucket). hasPhysicalQuality(bucket, hasContainer). hasRole(bucket, storageContainerRole). affordsTask(bucket, storageTask).
}).
#pos(e148@100, {hasAffordance(bucket, cool)}, {}, {
  obj(bucket). hasPhysicalQuality(bucket, hasContainer). hasRole(bucket, storageContainerRole). affordsTask(bucket, storageTask).
}).
#pos(e149@100, {hasAffordance(bucket, hammer)}, {}, {
  obj(bucket). hasPhysicalQuality(bucket, hasContainer). hasRole(bucket, storageContainerRole). affordsTask(bucket, storageTask).
}).
#pos(e150@100, {hasAffordance(bucket, hold)}, {}, {
  obj(bucket). hasPhysicalQuality(bucket, hasContainer). hasRole(bucket, storageContainerRole). affordsTask(bucket, storageTask).
}).
#pos(e151@100, {hasAffordance(bucket, mix)}, {}, {
  obj(bucket). hasPhysicalQuality(bucket, hasContainer). hasRole(bucket, storageContainerRole). affordsTask(bucket, storageTask).
}).
#pos(e152@100, {hasAffordance(bucket, smoothen)}, {}, {
  obj(bucket). hasPhysicalQuality(bucket, hasContainer). hasRole(bucket, storageContainerRole). affordsTask(bucket, storageTask).
}).
#pos(e153@100, {hasAffordance(bulb, illuminate)}, {}, {
  obj(bulb). hasPhysicalQuality(bulb, electronic). hasRole(bulb, applianceRole). affordsTask(bulb, leisureTask).
}).
#pos(e154@100, {hasAffordance(bureau, hold)}, {}, {
  obj(bureau). hasPhysicalQuality(bureau, heavy). hasPhysicalQuality(bureau, rigid). hasRole(bureau, furnitureRole). affordsTask(bureau, storageTask).
}).
#pos(e155@100, {hasAffordance(bureau, store)}, {}, {
  obj(bureau). hasPhysicalQuality(bureau, heavy). hasPhysicalQuality(bureau, rigid). hasRole(bureau, furnitureRole). affordsTask(bureau, storageTask).
}).
#pos(e156@100, {hasAffordance(bureau, write)}, {}, {
  obj(bureau). hasPhysicalQuality(bureau, heavy). hasPhysicalQuality(bureau, rigid). hasRole(bureau, furnitureRole). affordsTask(bureau, storageTask).
}).
#pos(e157@100, {hasAffordance(bus_seat, comfort)}, {}, {
  obj(bus_seat). hasPhysicalQuality(bus_seat, lightweight). hasPhysicalQuality(bus_seat, soft_Deformable). hasRole(bus_seat, furnitureRole). affordsTask(bus_seat, leisureTask).
}).
#pos(e158@100, {hasAffordance(butter, spread)}, {}, {
  obj(butter). hasPhysicalQuality(butter, granular). hasPhysicalQuality(butter, perishable). hasRole(butter, consumableRole). affordsTask(butter, eatingDrinkingTask).
}).
#pos(e159@100, {hasAffordance(buttons, screw)}, {}, {
  obj(buttons). hasPhysicalQuality(buttons, lightweight). hasPhysicalQuality(buttons, rigid). hasRole(buttons, utensilRole).
}).
#pos(e160@100, {hasAffordance(cabinets, contain)}, {}, {
  obj(cabinets). hasPhysicalQuality(cabinets, heavy). hasPhysicalQuality(cabinets, rigid). hasRole(cabinets, storageContainerRole). affordsTask(cabinets, storageTask).
}).
#pos(e161@100, {hasAffordance(cabinets, display)}, {}, {
  obj(cabinets). hasPhysicalQuality(cabinets, heavy). hasPhysicalQuality(cabinets, rigid). hasRole(cabinets, storageContainerRole). affordsTask(cabinets, storageTask).
}).
#pos(e162@100, {hasAffordance(cabinets, hold)}, {}, {
  obj(cabinets). hasPhysicalQuality(cabinets, heavy). hasPhysicalQuality(cabinets, rigid). hasRole(cabinets, storageContainerRole). affordsTask(cabinets, storageTask).
}).
#pos(e163@100, {hasAffordance(cabinets, store)}, {}, {
  obj(cabinets). hasPhysicalQuality(cabinets, heavy). hasPhysicalQuality(cabinets, rigid). hasRole(cabinets, storageContainerRole). affordsTask(cabinets, storageTask).
}).
#pos(e164@100, {hasAffordance(cabinets, write)}, {}, {
  obj(cabinets). hasPhysicalQuality(cabinets, heavy). hasPhysicalQuality(cabinets, rigid). hasRole(cabinets, storageContainerRole). affordsTask(cabinets, storageTask).
}).
#pos(e165@100, {hasAffordance(cable, carry)}, {}, {
  obj(cable). hasPhysicalQuality(cable, electronic). hasRole(cable, toolRole). affordsTask(cable, maintenanceTask).
}).
#pos(e166@100, {hasAffordance(cable, hold)}, {}, {
  obj(cable). hasPhysicalQuality(cable, electronic). hasRole(cable, toolRole). affordsTask(cable, maintenanceTask).
}).
#pos(e167@100, {hasAffordance(cable, plug)}, {}, {
  obj(cable). hasPhysicalQuality(cable, electronic). hasRole(cable, toolRole). affordsTask(cable, maintenanceTask).
}).
#pos(e168@100, {hasAffordance(cable, support)}, {}, {
  obj(cable). hasPhysicalQuality(cable, electronic). hasRole(cable, toolRole). affordsTask(cable, maintenanceTask).
}).
#pos(e169@100, {hasAffordance(cake, dry)}, {}, {
  obj(cake). hasPhysicalQuality(cake, granular). hasPhysicalQuality(cake, perishable). hasRole(cake, consumableRole). affordsTask(cake, eatingDrinkingTask).
}).
#pos(e170@100, {hasAffordance(cake, heat)}, {}, {
  obj(cake). hasPhysicalQuality(cake, granular). hasPhysicalQuality(cake, perishable). hasRole(cake, consumableRole). affordsTask(cake, eatingDrinkingTask).
}).
#pos(e171@100, {hasAffordance(cake, hold)}, {}, {
  obj(cake). hasPhysicalQuality(cake, granular). hasPhysicalQuality(cake, perishable). hasRole(cake, consumableRole). affordsTask(cake, eatingDrinkingTask).
}).
#pos(e172@100, {hasAffordance(cake, mix)}, {}, {
  obj(cake). hasPhysicalQuality(cake, granular). hasPhysicalQuality(cake, perishable). hasRole(cake, consumableRole). affordsTask(cake, eatingDrinkingTask).
}).
#pos(e173@100, {hasAffordance(calculator, illuminate)}, {}, {
  obj(calculator). hasPhysicalQuality(calculator, electronic). hasPhysicalQuality(calculator, lightweight). hasRole(calculator, toolRole). affordsTask(calculator, workStudyTask).
}).
#pos(e174@100, {hasAffordance(calendar, mark)}, {}, {
  obj(calendar). hasRole(calendar, documentRole). affordsTask(calendar, workStudyTask).
}).
#pos(e175@100, {hasAffordance(calendar, time)}, {}, {
  obj(calendar). hasRole(calendar, documentRole). affordsTask(calendar, workStudyTask).
}).
#pos(e176@100, {hasAffordance(candle, heat)}, {}, {
  obj(candle). hasPhysicalQuality(candle, flammable). hasPhysicalQuality(candle, heated). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e177@100, {hasAffordance(candle, illuminate)}, {}, {
  obj(candle). hasPhysicalQuality(candle, flammable). hasPhysicalQuality(candle, heated). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e178@100, {hasAffordance(candle, read)}, {}, {
  obj(candle). hasPhysicalQuality(candle, flammable). hasPhysicalQuality(candle, heated). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e179@100, {hasAffordance(cans, store)}, {}, {
  obj(cans). hasPhysicalQuality(cans, lightweight). hasPhysicalQuality(cans, rigid). hasRole(cans, storageContainerRole). affordsTask(cans, storageTask).
}).
#pos(e180@100, {hasAffordance(card, entertain)}, {}, {
  obj(card). hasPhysicalQuality(card, lightweight). hasRole(card, consumableRole). hasRole(card, utensilRole). affordsTask(card, eatingDrinkingTask).
}).
#pos(e181@100, {hasAffordance(card, poke)}, {}, {
  obj(card). hasPhysicalQuality(card, lightweight). hasRole(card, consumableRole). hasRole(card, utensilRole). affordsTask(card, eatingDrinkingTask).
}).
#pos(e182@100, {hasAffordance(card, write)}, {}, {
  obj(card). hasPhysicalQuality(card, lightweight). hasRole(card, consumableRole). hasRole(card, utensilRole). affordsTask(card, eatingDrinkingTask).
}).
#pos(e183@100, {hasAffordance(card_case, carry)}, {}, {
  obj(card_case). hasPhysicalQuality(card_case, hasContainer). hasPhysicalQuality(card_case, lightweight). hasRole(card_case, storageContainerRole). affordsTask(card_case, storageTask).
}).
#pos(e184@100, {hasAffordance(card_case, display)}, {}, {
  obj(card_case). hasPhysicalQuality(card_case, hasContainer). hasPhysicalQuality(card_case, lightweight). hasRole(card_case, storageContainerRole). affordsTask(card_case, storageTask).
}).
#pos(e185@100, {hasAffordance(card_case, hold)}, {}, {
  obj(card_case). hasPhysicalQuality(card_case, hasContainer). hasPhysicalQuality(card_case, lightweight). hasRole(card_case, storageContainerRole). affordsTask(card_case, storageTask).
}).
#pos(e186@100, {hasAffordance(cardboard, contain)}, {}, {
  obj(cardboard). hasPhysicalQuality(cardboard, granular). hasRole(cardboard, furnitureRole). hasRole(cardboard, storageContainerRole). affordsTask(cardboard, maintenanceTask).
}).
#pos(e187@100, {hasAffordance(cardboard, cut)}, {}, {
  obj(cardboard). hasPhysicalQuality(cardboard, granular). hasRole(cardboard, furnitureRole). hasRole(cardboard, storageContainerRole). affordsTask(cardboard, maintenanceTask).
}).
#pos(e188@100, {hasAffordance(cardboard, display)}, {}, {
  obj(cardboard). hasPhysicalQuality(cardboard, granular). hasRole(cardboard, furnitureRole). hasRole(cardboard, storageContainerRole). affordsTask(cardboard, maintenanceTask).
}).
#pos(e189@100, {hasAffordance(cardboard, entertain)}, {}, {
  obj(cardboard). hasPhysicalQuality(cardboard, granular). hasRole(cardboard, furnitureRole). hasRole(cardboard, storageContainerRole). affordsTask(cardboard, maintenanceTask).
}).
#pos(e190@100, {hasAffordance(cardboard, illuminate)}, {}, {
  obj(cardboard). hasPhysicalQuality(cardboard, granular). hasRole(cardboard, furnitureRole). hasRole(cardboard, storageContainerRole). affordsTask(cardboard, maintenanceTask).
}).
#pos(e191@100, {hasAffordance(cardboard, press)}, {}, {
  obj(cardboard). hasPhysicalQuality(cardboard, granular). hasRole(cardboard, furnitureRole). hasRole(cardboard, storageContainerRole). affordsTask(cardboard, maintenanceTask).
}).
#pos(e192@100, {hasAffordance(cardboard_box, carry)}, {}, {
  obj(cardboard_box). hasPhysicalQuality(cardboard_box, lightweight). hasPhysicalQuality(cardboard_box, rigid). hasRole(cardboard_box, storageContainerRole). affordsTask(cardboard_box, storageTask).
}).
#pos(e193@100, {hasAffordance(cardboard_box, hold)}, {}, {
  obj(cardboard_box). hasPhysicalQuality(cardboard_box, lightweight). hasPhysicalQuality(cardboard_box, rigid). hasRole(cardboard_box, storageContainerRole). affordsTask(cardboard_box, storageTask).
}).
#pos(e194@100, {hasAffordance(cardboard_box, store)}, {}, {
  obj(cardboard_box). hasPhysicalQuality(cardboard_box, lightweight). hasPhysicalQuality(cardboard_box, rigid). hasRole(cardboard_box, storageContainerRole). affordsTask(cardboard_box, storageTask).
}).
#pos(e195@100, {hasAffordance(cards, entertain)}, {}, {
  obj(cards). hasRole(cards, entertainmentRole). affordsTask(cards, leisureTask).
}).
#pos(e196@100, {hasAffordance(carpet, comfort)}, {}, {
  obj(carpet). hasPhysicalQuality(carpet, soft_Deformable). hasPhysicalQuality(carpet, washable). hasRole(carpet, furnitureRole). affordsTask(carpet, leisureTask).
}).
#pos(e197@100, {hasAffordance(carpet, cover)}, {}, {
  obj(carpet). hasPhysicalQuality(carpet, soft_Deformable). hasPhysicalQuality(carpet, washable). hasRole(carpet, furnitureRole). affordsTask(carpet, leisureTask).
}).
#pos(e198@100, {hasAffordance(carpet, decorate)}, {}, {
  obj(carpet). hasPhysicalQuality(carpet, soft_Deformable). hasPhysicalQuality(carpet, washable). hasRole(carpet, furnitureRole). affordsTask(carpet, leisureTask).
}).
#pos(e199@100, {hasAffordance(carpeting, comfort)}, {}, {
  obj(carpeting). hasPhysicalQuality(carpeting, soft_Deformable). hasPhysicalQuality(carpeting, washable). hasRole(carpeting, furnitureRole). affordsTask(carpeting, leisureTask).
}).
#pos(e200@100, {hasAffordance(carpeting, cover)}, {}, {
  obj(carpeting). hasPhysicalQuality(carpeting, soft_Deformable). hasPhysicalQuality(carpeting, washable). hasRole(carpeting, furnitureRole). affordsTask(carpeting, leisureTask).
}).
#pos(e201@100, {hasAffordance(carpeting, heat)}, {}, {
  obj(carpeting). hasPhysicalQuality(carpeting, soft_Deformable). hasPhysicalQuality(carpeting, washable). hasRole(carpeting, furnitureRole). affordsTask(carpeting, leisureTask).
}).
#pos(e202@100, {hasAffordance(carrots, chop)}, {}, {
  obj(carrots). hasPhysicalQuality(carrots, perishable). hasRole(carrots, consumableRole). affordsTask(carrots, foodPreparationTask).
}).
#pos(e203@100, {hasAffordance(cat, clean)}, {}, {
  obj(cat). hasPhysicalQuality(cat, lightweight). hasPhysicalQuality(cat, soft_Deformable). hasRole(cat, furnitureRole). affordsTask(cat, leisureTask).
}).
#pos(e204@100, {hasAffordance(cat, comfort)}, {}, {
  obj(cat). hasPhysicalQuality(cat, lightweight). hasPhysicalQuality(cat, soft_Deformable). hasRole(cat, furnitureRole). affordsTask(cat, leisureTask).
}).
#pos(e205@100, {hasAffordance(cat, entertain)}, {}, {
  obj(cat). hasPhysicalQuality(cat, lightweight). hasPhysicalQuality(cat, soft_Deformable). hasRole(cat, furnitureRole). affordsTask(cat, leisureTask).
}).
#pos(e206@100, {hasAffordance(cat, hammer)}, {}, {
  obj(cat). hasPhysicalQuality(cat, lightweight). hasPhysicalQuality(cat, soft_Deformable). hasRole(cat, furnitureRole). affordsTask(cat, leisureTask).
}).
#pos(e207@100, {hasAffordance(cat, heat)}, {}, {
  obj(cat). hasPhysicalQuality(cat, lightweight). hasPhysicalQuality(cat, soft_Deformable). hasRole(cat, furnitureRole). affordsTask(cat, leisureTask).
}).
#pos(e208@100, {hasAffordance(cat, lift)}, {}, {
  obj(cat). hasPhysicalQuality(cat, lightweight). hasPhysicalQuality(cat, soft_Deformable). hasRole(cat, furnitureRole). affordsTask(cat, leisureTask).
}).
#pos(e209@100, {hasAffordance(cat, time)}, {}, {
  obj(cat). hasPhysicalQuality(cat, lightweight). hasPhysicalQuality(cat, soft_Deformable). hasRole(cat, furnitureRole). affordsTask(cat, leisureTask).
}).
#pos(e210@100, {hasAffordance(cat, wash)}, {}, {
  obj(cat). hasPhysicalQuality(cat, lightweight). hasPhysicalQuality(cat, soft_Deformable). hasRole(cat, furnitureRole). affordsTask(cat, leisureTask).
}).
#pos(e211@100, {hasAffordance(cd_rom, hold)}, {}, {
  obj(cd_rom). hasPhysicalQuality(cd_rom, electronic). hasPhysicalQuality(cd_rom, lightweight). hasRole(cd_rom, storageContainerRole). affordsTask(cd_rom, workStudyTask).
}).
#pos(e212@100, {hasAffordance(cds, hold)}, {}, {
  obj(cds). hasPhysicalQuality(cds, lightweight). hasPhysicalQuality(cds, rigid). hasRole(cds, storageContainerRole). affordsTask(cds, leisureTask).
}).
#pos(e213@100, {hasAffordance(cds, store)}, {}, {
  obj(cds). hasPhysicalQuality(cds, lightweight). hasPhysicalQuality(cds, rigid). hasRole(cds, storageContainerRole). affordsTask(cds, leisureTask).
}).
#pos(e214@100, {hasAffordance(ceiling, cover)}, {}, {
  obj(ceiling). hasPhysicalQuality(ceiling, rigid). hasRole(ceiling, furnitureRole).
}).
#pos(e215@100, {hasAffordance(ceiling, decorate)}, {}, {
  obj(ceiling). hasPhysicalQuality(ceiling, rigid). hasRole(ceiling, furnitureRole).
}).
#pos(e216@100, {hasAffordance(ceiling, illuminate)}, {}, {
  obj(ceiling). hasPhysicalQuality(ceiling, rigid). hasRole(ceiling, furnitureRole).
}).
#pos(e217@100, {hasAffordance(ceiling, support)}, {}, {
  obj(ceiling). hasPhysicalQuality(ceiling, rigid). hasRole(ceiling, furnitureRole).
}).
#pos(e218@100, {hasAffordance(celery, mix)}, {}, {
  obj(celery). hasPhysicalQuality(celery, granular). hasPhysicalQuality(celery, perishable). hasRole(celery, consumableRole). affordsTask(celery, eatingDrinkingTask).
}).
#pos(e219@100, {hasAffordance(cellar, store)}, {}, {
  obj(cellar). hasPhysicalQuality(cellar, heavy). hasPhysicalQuality(cellar, rigid). hasRole(cellar, storageContainerRole). affordsTask(cellar, storageTask).
}).
#pos(e220@100, {hasAffordance(cereal, contain)}, {}, {
  obj(cereal). hasPhysicalQuality(cereal, granular). hasPhysicalQuality(cereal, perishable). hasRole(cereal, consumableRole). affordsTask(cereal, eatingDrinkingTask).
}).
#pos(e221@100, {hasAffordance(chain, hold)}, {}, {
  obj(chain). hasPhysicalQuality(chain, heavy). hasPhysicalQuality(chain, rigid). hasRole(chain, toolRole). affordsTask(chain, maintenanceTask).
}).
#pos(e222@100, {hasAffordance(chain, mark)}, {}, {
  obj(chain). hasPhysicalQuality(chain, heavy). hasPhysicalQuality(chain, rigid). hasRole(chain, toolRole). affordsTask(chain, maintenanceTask).
}).
#pos(e223@100, {hasAffordance(check, mark)}, {}, {
  obj(check). hasPhysicalQuality(check, electronic). hasRole(check, toolRole). affordsTask(check, maintenanceTask).
}).
#pos(e224@100, {hasAffordance(checkbook_holder, hold)}, {}, {
  obj(checkbook_holder). hasPhysicalQuality(checkbook_holder, hasContainer). hasRole(checkbook_holder, storageContainerRole). affordsTask(checkbook_holder, storageTask).
}).
#pos(e225@100, {hasAffordance(chess_bishop, entertain)}, {}, {
  obj(chess_bishop). hasPhysicalQuality(chess_bishop, rigid). hasRole(chess_bishop, toolRole). affordsTask(chess_bishop, leisureTask).
}).
#pos(e226@100, {hasAffordance(chess_board, cut)}, {}, {
  obj(chess_board). hasPhysicalQuality(chess_board, heavy). hasPhysicalQuality(chess_board, rigid). hasRole(chess_board, furnitureRole). affordsTask(chess_board, leisureTask).
}).
#pos(e227@100, {hasAffordance(chess_board, display)}, {}, {
  obj(chess_board). hasPhysicalQuality(chess_board, heavy). hasPhysicalQuality(chess_board, rigid). hasRole(chess_board, furnitureRole). affordsTask(chess_board, leisureTask).
}).
#pos(e228@100, {hasAffordance(chess_board, entertain)}, {}, {
  obj(chess_board). hasPhysicalQuality(chess_board, heavy). hasPhysicalQuality(chess_board, rigid). hasRole(chess_board, furnitureRole). affordsTask(chess_board, leisureTask).
}).
#pos(e229@100, {hasAffordance(chess_board, support)}, {}, {
  obj(chess_board). hasPhysicalQuality(chess_board, heavy). hasPhysicalQuality(chess_board, rigid). hasRole(chess_board, furnitureRole). affordsTask(chess_board, leisureTask).
}).
#pos(e230@100, {hasAffordance(chess_board, time)}, {}, {
  obj(chess_board). hasPhysicalQuality(chess_board, heavy). hasPhysicalQuality(chess_board, rigid). hasRole(chess_board, furnitureRole). affordsTask(chess_board, leisureTask).
}).
#pos(e231@100, {hasAffordance(chess_king, entertain)}, {}, {
  obj(chess_king). hasPhysicalQuality(chess_king, lightweight). hasRole(chess_king, entertainmentRole). affordsTask(chess_king, leisureTask).
}).
#pos(e232@100, {hasAffordance(chess_knight, entertain)}, {}, {
  obj(chess_knight). hasPhysicalQuality(chess_knight, rigid). hasRole(chess_knight, entertainmentRole). affordsTask(chess_knight, leisureTask).
}).
#pos(e233@100, {hasAffordance(chess_pawn, entertain)}, {}, {
  obj(chess_pawn). hasPhysicalQuality(chess_pawn, lightweight). hasRole(chess_pawn, entertainmentRole). affordsTask(chess_pawn, leisureTask).
}).
#pos(e234@100, {hasAffordance(chess_piece, entertain)}, {}, {
  obj(chess_piece). hasPhysicalQuality(chess_piece, lightweight). hasRole(chess_piece, entertainmentRole). affordsTask(chess_piece, leisureTask).
}).
#pos(e235@100, {hasAffordance(chess_queen, entertain)}, {}, {
  obj(chess_queen). hasRole(chess_queen, toolRole).
}).
#pos(e236@100, {hasAffordance(chess_set, decorate)}, {}, {
  obj(chess_set). hasPhysicalQuality(chess_set, lightweight). hasPhysicalQuality(chess_set, rigid). hasRole(chess_set, entertainmentRole). affordsTask(chess_set, leisureTask).
}).
#pos(e237@100, {hasAffordance(chess_set, entertain)}, {}, {
  obj(chess_set). hasPhysicalQuality(chess_set, lightweight). hasPhysicalQuality(chess_set, rigid). hasRole(chess_set, entertainmentRole). affordsTask(chess_set, leisureTask).
}).
#pos(e238@100, {hasAffordance(chess_set, pour)}, {}, {
  obj(chess_set). hasPhysicalQuality(chess_set, lightweight). hasPhysicalQuality(chess_set, rigid). hasRole(chess_set, entertainmentRole). affordsTask(chess_set, leisureTask).
}).
#pos(e239@100, {hasAffordance(chest, contain)}, {}, {
  obj(chest). hasPhysicalQuality(chest, heavy). hasPhysicalQuality(chest, rigid). hasRole(chest, storageContainerRole). affordsTask(chest, storageTask).
}).
#pos(e240@100, {hasAffordance(chest, entertain)}, {}, {
  obj(chest). hasPhysicalQuality(chest, heavy). hasPhysicalQuality(chest, rigid). hasRole(chest, storageContainerRole). affordsTask(chest, storageTask).
}).
#pos(e241@100, {hasAffordance(chest, hold)}, {}, {
  obj(chest). hasPhysicalQuality(chest, heavy). hasPhysicalQuality(chest, rigid). hasRole(chest, storageContainerRole). affordsTask(chest, storageTask).
}).
#pos(e242@100, {hasAffordance(chest, store)}, {}, {
  obj(chest). hasPhysicalQuality(chest, heavy). hasPhysicalQuality(chest, rigid). hasRole(chest, storageContainerRole). affordsTask(chest, storageTask).
}).
#pos(e243@100, {hasAffordance(chocolate, melt)}, {}, {
  obj(chocolate). hasPhysicalQuality(chocolate, perishable). hasRole(chocolate, consumableRole). affordsTask(chocolate, eatingDrinkingTask).
}).
#pos(e244@100, {hasAffordance(cinnamon, heat)}, {}, {
  obj(cinnamon). hasPhysicalQuality(cinnamon, perishable). hasRole(cinnamon, consumableRole). affordsTask(cinnamon, foodPreparationTask).
}).
#pos(e245@100, {hasAffordance(clip, hold)}, {}, {
  obj(clip). hasPhysicalQuality(clip, lightweight). hasRole(clip, toolRole). affordsTask(clip, maintenanceTask).
}).
#pos(e246@100, {hasAffordance(clip, illuminate)}, {}, {
  obj(clip). hasPhysicalQuality(clip, lightweight). hasRole(clip, toolRole). affordsTask(clip, maintenanceTask).
}).
#pos(e247@100, {hasAffordance(clip, write)}, {}, {
  obj(clip). hasPhysicalQuality(clip, lightweight). hasRole(clip, toolRole). affordsTask(clip, maintenanceTask).
}).
#pos(e248@100, {hasAffordance(clipboard, hold)}, {}, {
  obj(clipboard). hasPhysicalQuality(clipboard, lightweight). hasPhysicalQuality(clipboard, rigid). hasRole(clipboard, utensilRole). affordsTask(clipboard, foodPreparationTask).
}).
#pos(e249@100, {hasAffordance(clipboard, screw)}, {}, {
  obj(clipboard). hasPhysicalQuality(clipboard, lightweight). hasPhysicalQuality(clipboard, rigid). hasRole(clipboard, utensilRole). affordsTask(clipboard, foodPreparationTask).
}).
#pos(e250@100, {hasAffordance(clipboard, write)}, {}, {
  obj(clipboard). hasPhysicalQuality(clipboard, lightweight). hasPhysicalQuality(clipboard, rigid). hasRole(clipboard, utensilRole). affordsTask(clipboard, foodPreparationTask).
}).
#pos(e251@100, {hasAffordance(clock, time)}, {}, {
  obj(clock). hasPhysicalQuality(clock, rigid). hasRole(clock, decorationRole).
}).
#pos(e252@100, {hasAffordance(closet, clean)}, {}, {
  obj(closet). hasPhysicalQuality(closet, heavy). hasPhysicalQuality(closet, rigid). hasRole(closet, storageContainerRole). affordsTask(closet, storageTask).
}).
#pos(e253@100, {hasAffordance(closet, entertain)}, {}, {
  obj(closet). hasPhysicalQuality(closet, heavy). hasPhysicalQuality(closet, rigid). hasRole(closet, storageContainerRole). affordsTask(closet, storageTask).
}).
#pos(e254@100, {hasAffordance(closet, store)}, {}, {
  obj(closet). hasPhysicalQuality(closet, heavy). hasPhysicalQuality(closet, rigid). hasRole(closet, storageContainerRole). affordsTask(closet, storageTask).
}).
#pos(e255@100, {hasAffordance(cloth, absorb)}, {}, {
  obj(cloth). hasPhysicalQuality(cloth, soft_Deformable). hasPhysicalQuality(cloth, washable). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask).
}).
#pos(e256@100, {hasAffordance(cloth, clean)}, {}, {
  obj(cloth). hasPhysicalQuality(cloth, soft_Deformable). hasPhysicalQuality(cloth, washable). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask).
}).
#pos(e257@100, {hasAffordance(cloth, cover)}, {}, {
  obj(cloth). hasPhysicalQuality(cloth, soft_Deformable). hasPhysicalQuality(cloth, washable). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask).
}).
#pos(e258@100, {hasAffordance(cloth, cut)}, {}, {
  obj(cloth). hasPhysicalQuality(cloth, soft_Deformable). hasPhysicalQuality(cloth, washable). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask).
}).
#pos(e259@100, {hasAffordance(cloth, dry)}, {}, {
  obj(cloth). hasPhysicalQuality(cloth, soft_Deformable). hasPhysicalQuality(cloth, washable). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask).
}).
#pos(e260@100, {hasAffordance(cloth, heat)}, {}, {
  obj(cloth). hasPhysicalQuality(cloth, soft_Deformable). hasPhysicalQuality(cloth, washable). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask).
}).
#pos(e261@100, {hasAffordance(cloth, hold)}, {}, {
  obj(cloth). hasPhysicalQuality(cloth, soft_Deformable). hasPhysicalQuality(cloth, washable). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask).
}).
#pos(e262@100, {hasAffordance(cloth, polish)}, {}, {
  obj(cloth). hasPhysicalQuality(cloth, soft_Deformable). hasPhysicalQuality(cloth, washable). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask).
}).
#pos(e263@100, {hasAffordance(cloth, skin)}, {}, {
  obj(cloth). hasPhysicalQuality(cloth, soft_Deformable). hasPhysicalQuality(cloth, washable). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask).
}).
#pos(e264@100, {hasAffordance(cloth, spread)}, {}, {
  obj(cloth). hasPhysicalQuality(cloth, soft_Deformable). hasPhysicalQuality(cloth, washable). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask).
}).
#pos(e265@100, {hasAffordance(cloth, wash)}, {}, {
  obj(cloth). hasPhysicalQuality(cloth, soft_Deformable). hasPhysicalQuality(cloth, washable). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask).
}).
#pos(e266@100, {hasAffordance(cloth, wipe)}, {}, {
  obj(cloth). hasPhysicalQuality(cloth, soft_Deformable). hasPhysicalQuality(cloth, washable). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask).
}).
#pos(e267@100, {hasAffordance(clothes, beautify)}, {}, {
  obj(clothes). hasPhysicalQuality(clothes, soft_Deformable). hasPhysicalQuality(clothes, washable). hasRole(clothes, clothingRole). affordsTask(clothes, dressingTask).
}).
#pos(e268@100, {hasAffordance(clothes, cover)}, {}, {
  obj(clothes). hasPhysicalQuality(clothes, soft_Deformable). hasPhysicalQuality(clothes, washable). hasRole(clothes, clothingRole). affordsTask(clothes, dressingTask).
}).
#pos(e269@100, {hasAffordance(clothes, dry)}, {}, {
  obj(clothes). hasPhysicalQuality(clothes, soft_Deformable). hasPhysicalQuality(clothes, washable). hasRole(clothes, clothingRole). affordsTask(clothes, dressingTask).
}).
#pos(e270@100, {hasAffordance(clothes, heat)}, {}, {
  obj(clothes). hasPhysicalQuality(clothes, soft_Deformable). hasPhysicalQuality(clothes, washable). hasRole(clothes, clothingRole). affordsTask(clothes, dressingTask).
}).
#pos(e271@100, {hasAffordance(clothes, skin)}, {}, {
  obj(clothes). hasPhysicalQuality(clothes, soft_Deformable). hasPhysicalQuality(clothes, washable). hasRole(clothes, clothingRole). affordsTask(clothes, dressingTask).
}).
#pos(e272@100, {hasAffordance(clothing, heat)}, {}, {
  obj(clothing). hasPhysicalQuality(clothing, lightweight). hasPhysicalQuality(clothing, soft_Deformable). hasRole(clothing, clothingRole). affordsTask(clothing, dressingTask).
}).
#pos(e273@100, {hasAffordance(clothing_shelf, clean)}, {}, {
  obj(clothing_shelf). hasPhysicalQuality(clothing_shelf, heavy). hasPhysicalQuality(clothing_shelf, rigid). hasRole(clothing_shelf, storageContainerRole). affordsTask(clothing_shelf, storageTask).
}).
#pos(e274@100, {hasAffordance(clothing_shelf, store)}, {}, {
  obj(clothing_shelf). hasPhysicalQuality(clothing_shelf, heavy). hasPhysicalQuality(clothing_shelf, rigid). hasRole(clothing_shelf, storageContainerRole). affordsTask(clothing_shelf, storageTask).
}).
#pos(e275@100, {hasAffordance(coats, heat)}, {}, {
  obj(coats). hasRole(coats, clothingRole). affordsTask(coats, dressingTask).
}).
#pos(e276@100, {hasAffordance(coffee_cups, hold)}, {}, {
  obj(coffee_cups). hasPhysicalQuality(coffee_cups, hasContainer). hasPhysicalQuality(coffee_cups, lightweight). hasRole(coffee_cups, utensilRole). affordsTask(coffee_cups, eatingDrinkingTask).
}).
#pos(e277@100, {hasAffordance(coin, operate)}, {}, {
  obj(coin). hasPhysicalQuality(coin, lightweight). hasRole(coin, consumableRole).
}).
#pos(e278@100, {hasAffordance(cold_faucet, write)}, {}, {
  obj(cold_faucet). hasPhysicalQuality(cold_faucet, heavy). hasPhysicalQuality(cold_faucet, liquid). hasRole(cold_faucet, utensilRole). affordsTask(cold_faucet, eatingDrinkingTask).
}).
#pos(e279@100, {hasAffordance(cold_storage, cool)}, {}, {
  obj(cold_storage). hasPhysicalQuality(cold_storage, requiresCooling). hasRole(cold_storage, applianceRole). affordsTask(cold_storage, storageTask).
}).
#pos(e280@100, {hasAffordance(cold_storage, heat)}, {}, {
  obj(cold_storage). hasPhysicalQuality(cold_storage, requiresCooling). hasRole(cold_storage, applianceRole). affordsTask(cold_storage, storageTask).
}).
#pos(e281@100, {hasAffordance(cold_storage, store)}, {}, {
  obj(cold_storage). hasPhysicalQuality(cold_storage, requiresCooling). hasRole(cold_storage, applianceRole). affordsTask(cold_storage, storageTask).
}).
#pos(e282@100, {hasAffordance(column, hold)}, {}, {
  obj(column). hasPhysicalQuality(column, heavy). hasPhysicalQuality(column, rigid). hasRole(column, furnitureRole).
}).
#pos(e283@100, {hasAffordance(column, support)}, {}, {
  obj(column). hasPhysicalQuality(column, heavy). hasPhysicalQuality(column, rigid). hasRole(column, furnitureRole).
}).
#pos(e284@100, {hasAffordance(comforter, cover)}, {}, {
  obj(comforter). hasPhysicalQuality(comforter, soft_Deformable). hasPhysicalQuality(comforter, washable). hasRole(comforter, beddingRole). affordsTask(comforter, sleepingTask).
}).
#pos(e285@100, {hasAffordance(comforter, heat)}, {}, {
  obj(comforter). hasPhysicalQuality(comforter, soft_Deformable). hasPhysicalQuality(comforter, washable). hasRole(comforter, beddingRole). affordsTask(comforter, sleepingTask).
}).
#pos(e286@100, {hasAffordance(computer, control)}, {}, {
  obj(computer). hasPhysicalQuality(computer, electronic). hasPhysicalQuality(computer, heavy). hasRole(computer, applianceRole). affordsTask(computer, workStudyTask).
}).
#pos(e287@100, {hasAffordance(computer, entertain)}, {}, {
  obj(computer). hasPhysicalQuality(computer, electronic). hasPhysicalQuality(computer, heavy). hasRole(computer, applianceRole). affordsTask(computer, workStudyTask).
}).
#pos(e288@100, {hasAffordance(computer, file)}, {}, {
  obj(computer). hasPhysicalQuality(computer, electronic). hasPhysicalQuality(computer, heavy). hasRole(computer, applianceRole). affordsTask(computer, workStudyTask).
}).
#pos(e289@100, {hasAffordance(computer, heat)}, {}, {
  obj(computer). hasPhysicalQuality(computer, electronic). hasPhysicalQuality(computer, heavy). hasRole(computer, applianceRole). affordsTask(computer, workStudyTask).
}).
#pos(e290@100, {hasAffordance(computer, plug)}, {}, {
  obj(computer). hasPhysicalQuality(computer, electronic). hasPhysicalQuality(computer, heavy). hasRole(computer, applianceRole). affordsTask(computer, workStudyTask).
}).
#pos(e291@100, {hasAffordance(computer, spread)}, {}, {
  obj(computer). hasPhysicalQuality(computer, electronic). hasPhysicalQuality(computer, heavy). hasRole(computer, applianceRole). affordsTask(computer, workStudyTask).
}).
#pos(e292@100, {hasAffordance(computer, store)}, {}, {
  obj(computer). hasPhysicalQuality(computer, electronic). hasPhysicalQuality(computer, heavy). hasRole(computer, applianceRole). affordsTask(computer, workStudyTask).
}).
#pos(e293@100, {hasAffordance(computer, write)}, {}, {
  obj(computer). hasPhysicalQuality(computer, electronic). hasPhysicalQuality(computer, heavy). hasRole(computer, applianceRole). affordsTask(computer, workStudyTask).
}).
#pos(e294@100, {hasAffordance(concrete, pour)}, {}, {
  obj(concrete). hasPhysicalQuality(concrete, granular). hasPhysicalQuality(concrete, rigid). hasRole(concrete, consumableRole).
}).
#pos(e295@100, {hasAffordance(container, carry)}, {}, {
  obj(container). hasPhysicalQuality(container, hasContainer). hasRole(container, storageContainerRole). affordsTask(container, storageTask).
}).
#pos(e296@100, {hasAffordance(container, contain)}, {}, {
  obj(container). hasPhysicalQuality(container, hasContainer). hasRole(container, storageContainerRole). affordsTask(container, storageTask).
}).
#pos(e297@100, {hasAffordance(container, hold)}, {}, {
  obj(container). hasPhysicalQuality(container, hasContainer). hasRole(container, storageContainerRole). affordsTask(container, storageTask).
}).
#pos(e298@100, {hasAffordance(container, store)}, {}, {
  obj(container). hasPhysicalQuality(container, hasContainer). hasRole(container, storageContainerRole). affordsTask(container, storageTask).
}).
#pos(e299@100, {hasAffordance(container, wash)}, {}, {
  obj(container). hasPhysicalQuality(container, hasContainer). hasRole(container, storageContainerRole). affordsTask(container, storageTask).
}).
#pos(e300@100, {hasAffordance(container_can, contain)}, {}, {
  obj(container_can). hasPhysicalQuality(container_can, hasContainer). hasRole(container_can, storageContainerRole). affordsTask(container_can, storageTask).
}).
#pos(e301@100, {hasAffordance(container_can, dispose)}, {}, {
  obj(container_can). hasPhysicalQuality(container_can, hasContainer). hasRole(container_can, storageContainerRole). affordsTask(container_can, storageTask).
}).
#pos(e302@100, {hasAffordance(container_can, dry)}, {}, {
  obj(container_can). hasPhysicalQuality(container_can, hasContainer). hasRole(container_can, storageContainerRole). affordsTask(container_can, storageTask).
}).
#pos(e303@100, {hasAffordance(container_can, hammer)}, {}, {
  obj(container_can). hasPhysicalQuality(container_can, hasContainer). hasRole(container_can, storageContainerRole). affordsTask(container_can, storageTask).
}).
#pos(e304@100, {hasAffordance(container_can, hold)}, {}, {
  obj(container_can). hasPhysicalQuality(container_can, hasContainer). hasRole(container_can, storageContainerRole). affordsTask(container_can, storageTask).
}).
#pos(e305@100, {hasAffordance(container_can, store)}, {}, {
  obj(container_can). hasPhysicalQuality(container_can, hasContainer). hasRole(container_can, storageContainerRole). affordsTask(container_can, storageTask).
}).
#pos(e306@100, {hasAffordance(container_cup, hold)}, {}, {
  obj(container_cup). hasPhysicalQuality(container_cup, hasContainer). hasRole(container_cup, storageContainerRole). hasRole(container_cup, utensilRole). affordsTask(container_cup, eatingDrinkingTask). affordsTask(container_cup, storageTask).
}).
#pos(e307@100, {hasAffordance(container_cup, time)}, {}, {
  obj(container_cup). hasPhysicalQuality(container_cup, hasContainer). hasRole(container_cup, storageContainerRole). hasRole(container_cup, utensilRole). affordsTask(container_cup, eatingDrinkingTask). affordsTask(container_cup, storageTask).
}).
#pos(e308@100, {hasAffordance(cook, chop)}, {}, {
  obj(cook). hasPhysicalQuality(cook, heavy). hasPhysicalQuality(cook, rigid). hasRole(cook, cookwareRole). affordsTask(cook, foodPreparationTask).
}).
#pos(e309@100, {hasAffordance(cook, cover)}, {}, {
  obj(cook). hasPhysicalQuality(cook, heavy). hasPhysicalQuality(cook, rigid). hasRole(cook, cookwareRole). affordsTask(cook, foodPreparationTask).
}).
#pos(e310@100, {hasAffordance(cook, cut)}, {}, {
  obj(cook). hasPhysicalQuality(cook, heavy). hasPhysicalQuality(cook, rigid). hasRole(cook, cookwareRole). affordsTask(cook, foodPreparationTask).
}).
#pos(e311@100, {hasAffordance(cook, file)}, {}, {
  obj(cook). hasPhysicalQuality(cook, heavy). hasPhysicalQuality(cook, rigid). hasRole(cook, cookwareRole). affordsTask(cook, foodPreparationTask).
}).
#pos(e312@100, {hasAffordance(cook, heat)}, {}, {
  obj(cook). hasPhysicalQuality(cook, heavy). hasPhysicalQuality(cook, rigid). hasRole(cook, cookwareRole). affordsTask(cook, foodPreparationTask).
}).
#pos(e313@100, {hasAffordance(cook, read)}, {}, {
  obj(cook). hasPhysicalQuality(cook, heavy). hasPhysicalQuality(cook, rigid). hasRole(cook, cookwareRole). affordsTask(cook, foodPreparationTask).
}).
#pos(e314@100, {hasAffordance(cook, roll)}, {}, {
  obj(cook). hasPhysicalQuality(cook, heavy). hasPhysicalQuality(cook, rigid). hasRole(cook, cookwareRole). affordsTask(cook, foodPreparationTask).
}).
#pos(e315@100, {hasAffordance(cook, store)}, {}, {
  obj(cook). hasPhysicalQuality(cook, heavy). hasPhysicalQuality(cook, rigid). hasRole(cook, cookwareRole). affordsTask(cook, foodPreparationTask).
}).
#pos(e316@100, {hasAffordance(cook, time)}, {}, {
  obj(cook). hasPhysicalQuality(cook, heavy). hasPhysicalQuality(cook, rigid). hasRole(cook, cookwareRole). affordsTask(cook, foodPreparationTask).
}).
#pos(e317@100, {hasAffordance(cook, wash)}, {}, {
  obj(cook). hasPhysicalQuality(cook, heavy). hasPhysicalQuality(cook, rigid). hasRole(cook, cookwareRole). affordsTask(cook, foodPreparationTask).
}).
#pos(e318@100, {hasAffordance(cookie_jar, heat)}, {}, {
  obj(cookie_jar). hasPhysicalQuality(cookie_jar, hasContainer). hasPhysicalQuality(cookie_jar, heavy). hasRole(cookie_jar, storageContainerRole). affordsTask(cookie_jar, storageTask).
}).
#pos(e319@100, {hasAffordance(cookie_jar, store)}, {}, {
  obj(cookie_jar). hasPhysicalQuality(cookie_jar, hasContainer). hasPhysicalQuality(cookie_jar, heavy). hasRole(cookie_jar, storageContainerRole). affordsTask(cookie_jar, storageTask).
}).
#pos(e320@100, {hasAffordance(cooling_device, comfort)}, {}, {
  obj(cooling_device). hasPhysicalQuality(cooling_device, requiresCooling). hasRole(cooling_device, applianceRole). affordsTask(cooling_device, storageTask).
}).
#pos(e321@100, {hasAffordance(cooling_device, cool)}, {}, {
  obj(cooling_device). hasPhysicalQuality(cooling_device, requiresCooling). hasRole(cooling_device, applianceRole). affordsTask(cooling_device, storageTask).
}).
#pos(e322@100, {hasAffordance(cooling_device, heat)}, {}, {
  obj(cooling_device). hasPhysicalQuality(cooling_device, requiresCooling). hasRole(cooling_device, applianceRole). affordsTask(cooling_device, storageTask).
}).
#pos(e323@100, {hasAffordance(corner_cupboard, display)}, {}, {
  obj(corner_cupboard). hasPhysicalQuality(corner_cupboard, heavy). hasPhysicalQuality(corner_cupboard, rigid). hasRole(corner_cupboard, storageContainerRole). affordsTask(corner_cupboard, storageTask).
}).
#pos(e324@100, {hasAffordance(corner_cupboard, dry)}, {}, {
  obj(corner_cupboard). hasPhysicalQuality(corner_cupboard, heavy). hasPhysicalQuality(corner_cupboard, rigid). hasRole(corner_cupboard, storageContainerRole). affordsTask(corner_cupboard, storageTask).
}).
#pos(e325@100, {hasAffordance(corner_cupboard, hold)}, {}, {
  obj(corner_cupboard). hasPhysicalQuality(corner_cupboard, heavy). hasPhysicalQuality(corner_cupboard, rigid). hasRole(corner_cupboard, storageContainerRole). affordsTask(corner_cupboard, storageTask).
}).
#pos(e326@100, {hasAffordance(corner_cupboard, store)}, {}, {
  obj(corner_cupboard). hasPhysicalQuality(corner_cupboard, heavy). hasPhysicalQuality(corner_cupboard, rigid). hasRole(corner_cupboard, storageContainerRole). affordsTask(corner_cupboard, storageTask).
}).
#pos(e327@100, {hasAffordance(cotton, comfort)}, {}, {
  obj(cotton). hasPhysicalQuality(cotton, lightweight). hasPhysicalQuality(cotton, soft_Deformable). hasRole(cotton, clothingRole). hasRole(cotton, consumableRole).
}).
#pos(e328@100, {hasAffordance(couch, comfort)}, {}, {
  obj(couch). hasPhysicalQuality(couch, heavy). hasPhysicalQuality(couch, rigid). hasRole(couch, furnitureRole). affordsTask(couch, leisureTask).
}).
#pos(e329@100, {hasAffordance(couch, read)}, {}, {
  obj(couch). hasPhysicalQuality(couch, heavy). hasPhysicalQuality(couch, rigid). hasRole(couch, furnitureRole). affordsTask(couch, leisureTask).
}).
#pos(e330@100, {hasAffordance(counter, hold)}, {}, {
  obj(counter). hasPhysicalQuality(counter, heavy). hasPhysicalQuality(counter, rigid). hasRole(counter, furnitureRole). affordsTask(counter, workStudyTask).
}).
#pos(e331@100, {hasAffordance(counter, mark)}, {}, {
  obj(counter). hasPhysicalQuality(counter, heavy). hasPhysicalQuality(counter, rigid). hasRole(counter, furnitureRole). affordsTask(counter, workStudyTask).
}).
#pos(e332@100, {hasAffordance(counter, store)}, {}, {
  obj(counter). hasPhysicalQuality(counter, heavy). hasPhysicalQuality(counter, rigid). hasRole(counter, furnitureRole). affordsTask(counter, workStudyTask).
}).
#pos(e333@100, {hasAffordance(counter, support)}, {}, {
  obj(counter). hasPhysicalQuality(counter, heavy). hasPhysicalQuality(counter, rigid). hasRole(counter, furnitureRole). affordsTask(counter, workStudyTask).
}).
#pos(e334@100, {hasAffordance(counter, write)}, {}, {
  obj(counter). hasPhysicalQuality(counter, heavy). hasPhysicalQuality(counter, rigid). hasRole(counter, furnitureRole). affordsTask(counter, workStudyTask).
}).
#pos(e335@100, {hasAffordance(cover, cover)}, {}, {
  obj(cover). hasPhysicalQuality(cover, lightweight). hasPhysicalQuality(cover, soft_Deformable). hasRole(cover, beddingRole). hasRole(cover, furnitureRole). affordsTask(cover, sleepingTask).
}).
#pos(e336@100, {hasAffordance(cover, spread)}, {}, {
  obj(cover). hasPhysicalQuality(cover, lightweight). hasPhysicalQuality(cover, soft_Deformable). hasRole(cover, beddingRole). hasRole(cover, furnitureRole). affordsTask(cover, sleepingTask).
}).
#pos(e337@100, {hasAffordance(credit_card_wallet, carry)}, {}, {
  obj(credit_card_wallet). hasPhysicalQuality(credit_card_wallet, hasContainer). hasPhysicalQuality(credit_card_wallet, lightweight). hasRole(credit_card_wallet, storageContainerRole). affordsTask(credit_card_wallet, leisureTask).
}).
#pos(e338@100, {hasAffordance(credit_card_wallet, hold)}, {}, {
  obj(credit_card_wallet). hasPhysicalQuality(credit_card_wallet, hasContainer). hasPhysicalQuality(credit_card_wallet, lightweight). hasRole(credit_card_wallet, storageContainerRole). affordsTask(credit_card_wallet, leisureTask).
}).
#pos(e339@100, {hasAffordance(credit_card_wallet, store)}, {}, {
  obj(credit_card_wallet). hasPhysicalQuality(credit_card_wallet, hasContainer). hasPhysicalQuality(credit_card_wallet, lightweight). hasRole(credit_card_wallet, storageContainerRole). affordsTask(credit_card_wallet, leisureTask).
}).
#pos(e340@100, {hasAffordance(cup, control)}, {}, {
  obj(cup). hasPhysicalQuality(cup, hasContainer). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e341@100, {hasAffordance(cup, hold)}, {}, {
  obj(cup). hasPhysicalQuality(cup, hasContainer). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e342@100, {hasAffordance(cup, pour)}, {}, {
  obj(cup). hasPhysicalQuality(cup, hasContainer). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e343@100, {hasAffordance(cup, store)}, {}, {
  obj(cup). hasPhysicalQuality(cup, hasContainer). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e344@100, {hasAffordance(curtain, cover)}, {}, {
  obj(curtain). hasPhysicalQuality(curtain, lightweight). hasPhysicalQuality(curtain, soft_Deformable). hasRole(curtain, furnitureRole). affordsTask(curtain, leisureTask).
}).
#pos(e345@100, {hasAffordance(curtain, illuminate)}, {}, {
  obj(curtain). hasPhysicalQuality(curtain, lightweight). hasPhysicalQuality(curtain, soft_Deformable). hasRole(curtain, furnitureRole). affordsTask(curtain, leisureTask).
}).
#pos(e346@100, {hasAffordance(dandruff_shampoo, clean)}, {}, {
  obj(dandruff_shampoo). hasPhysicalQuality(dandruff_shampoo, liquid). hasPhysicalQuality(dandruff_shampoo, toxic_Hazardous). hasRole(dandruff_shampoo, cleaningToolRole). affordsTask(dandruff_shampoo, hygieneTask).
}).
#pos(e347@100, {hasAffordance(dandruff_shampoo, control)}, {}, {
  obj(dandruff_shampoo). hasPhysicalQuality(dandruff_shampoo, liquid). hasPhysicalQuality(dandruff_shampoo, toxic_Hazardous). hasRole(dandruff_shampoo, cleaningToolRole). affordsTask(dandruff_shampoo, hygieneTask).
}).
#pos(e348@100, {hasAffordance(dandruff_shampoo, wash)}, {}, {
  obj(dandruff_shampoo). hasPhysicalQuality(dandruff_shampoo, liquid). hasPhysicalQuality(dandruff_shampoo, toxic_Hazardous). hasRole(dandruff_shampoo, cleaningToolRole). affordsTask(dandruff_shampoo, hygieneTask).
}).
#pos(e349@100, {hasAffordance(denim, cool)}, {}, {
  obj(denim). hasPhysicalQuality(denim, soft_Deformable). hasPhysicalQuality(denim, washable). hasRole(denim, clothingRole). affordsTask(denim, dressingTask).
}).
#pos(e350@100, {hasAffordance(dental_floss, clean)}, {}, {
  obj(dental_floss). hasPhysicalQuality(dental_floss, fragile). hasPhysicalQuality(dental_floss, lightweight). hasRole(dental_floss, cleaningToolRole). affordsTask(dental_floss, hygieneTask).
}).
#pos(e351@100, {hasAffordance(desk, read)}, {}, {
  obj(desk). hasPhysicalQuality(desk, heavy). hasPhysicalQuality(desk, rigid). hasRole(desk, furnitureRole). affordsTask(desk, workStudyTask).
}).
#pos(e352@100, {hasAffordance(desk, support)}, {}, {
  obj(desk). hasPhysicalQuality(desk, heavy). hasPhysicalQuality(desk, rigid). hasRole(desk, furnitureRole). affordsTask(desk, workStudyTask).
}).
#pos(e353@100, {hasAffordance(desk, write)}, {}, {
  obj(desk). hasPhysicalQuality(desk, heavy). hasPhysicalQuality(desk, rigid). hasRole(desk, furnitureRole). affordsTask(desk, workStudyTask).
}).
#pos(e354@100, {hasAffordance(desk_drawer, file)}, {}, {
  obj(desk_drawer). hasPhysicalQuality(desk_drawer, lightweight). hasPhysicalQuality(desk_drawer, rigid). hasRole(desk_drawer, storageContainerRole). affordsTask(desk_drawer, workStudyTask).
}).
#pos(e355@100, {hasAffordance(desk_drawer, hold)}, {}, {
  obj(desk_drawer). hasPhysicalQuality(desk_drawer, lightweight). hasPhysicalQuality(desk_drawer, rigid). hasRole(desk_drawer, storageContainerRole). affordsTask(desk_drawer, workStudyTask).
}).
#pos(e356@100, {hasAffordance(desk_drawer, staple)}, {}, {
  obj(desk_drawer). hasPhysicalQuality(desk_drawer, lightweight). hasPhysicalQuality(desk_drawer, rigid). hasRole(desk_drawer, storageContainerRole). affordsTask(desk_drawer, workStudyTask).
}).
#pos(e357@100, {hasAffordance(desk_drawer, store)}, {}, {
  obj(desk_drawer). hasPhysicalQuality(desk_drawer, lightweight). hasPhysicalQuality(desk_drawer, rigid). hasRole(desk_drawer, storageContainerRole). affordsTask(desk_drawer, workStudyTask).
}).
#pos(e358@100, {hasAffordance(desk_tray, hold)}, {}, {
  obj(desk_tray). hasPhysicalQuality(desk_tray, hasContainer). hasPhysicalQuality(desk_tray, lightweight). hasRole(desk_tray, storageContainerRole). affordsTask(desk_tray, storageTask).
}).
#pos(e359@100, {hasAffordance(desk_tray, rub)}, {}, {
  obj(desk_tray). hasPhysicalQuality(desk_tray, hasContainer). hasPhysicalQuality(desk_tray, lightweight). hasRole(desk_tray, storageContainerRole). affordsTask(desk_tray, storageTask).
}).
#pos(e360@100, {hasAffordance(desk_tray, staple)}, {}, {
  obj(desk_tray). hasPhysicalQuality(desk_tray, hasContainer). hasPhysicalQuality(desk_tray, lightweight). hasRole(desk_tray, storageContainerRole). affordsTask(desk_tray, storageTask).
}).
#pos(e361@100, {hasAffordance(detergent, clean)}, {}, {
  obj(detergent). hasPhysicalQuality(detergent, liquid). hasPhysicalQuality(detergent, toxic_Hazardous). hasRole(detergent, cleaningToolRole). affordsTask(detergent, cleaningTask).
}).
#pos(e362@100, {hasAffordance(detergent, wash)}, {}, {
  obj(detergent). hasPhysicalQuality(detergent, liquid). hasPhysicalQuality(detergent, toxic_Hazardous). hasRole(detergent, cleaningToolRole). affordsTask(detergent, cleaningTask).
}).
#pos(e363@100, {hasAffordance(dice, roll)}, {}, {
  obj(dice). hasPhysicalQuality(dice, lightweight). hasPhysicalQuality(dice, rigid). hasRole(dice, entertainmentRole). affordsTask(dice, leisureTask).
}).
#pos(e364@100, {hasAffordance(dinner_plate, hold)}, {}, {
  obj(dinner_plate). hasPhysicalQuality(dinner_plate, hasContainer). hasPhysicalQuality(dinner_plate, rigid). hasRole(dinner_plate, utensilRole). affordsTask(dinner_plate, eatingDrinkingTask).
}).
#pos(e365@100, {hasAffordance(dishwasher, wash)}, {}, {
  obj(dishwasher). hasPhysicalQuality(dishwasher, electronic). hasPhysicalQuality(dishwasher, heavy). hasRole(dishwasher, applianceRole). affordsTask(dishwasher, cleaningTask).
}).
#pos(e366@100, {hasAffordance(disk, file)}, {}, {
  obj(disk). hasRole(disk, storageContainerRole). affordsTask(disk, storageTask).
}).
#pos(e367@100, {hasAffordance(disk, store)}, {}, {
  obj(disk). hasRole(disk, storageContainerRole). affordsTask(disk, storageTask).
}).
#pos(e368@100, {hasAffordance(display_cabinet, display)}, {}, {
  obj(display_cabinet). hasPhysicalQuality(display_cabinet, heavy). hasPhysicalQuality(display_cabinet, rigid). hasRole(display_cabinet, furnitureRole). affordsTask(display_cabinet, storageTask).
}).
#pos(e369@100, {hasAffordance(disposable_razor, skin)}, {}, {
  obj(disposable_razor). hasPhysicalQuality(disposable_razor, fragile). hasPhysicalQuality(disposable_razor, sharp). hasRole(disposable_razor, utensilRole). affordsTask(disposable_razor, foodPreparationTask).
}).
#pos(e370@100, {hasAffordance(dog, comfort)}, {}, {
  obj(dog). hasPhysicalQuality(dog, fragile). hasPhysicalQuality(dog, soft_Deformable). affordsTask(dog, leisureTask).
}).
#pos(e371@100, {hasAffordance(dog, control)}, {}, {
  obj(dog). hasPhysicalQuality(dog, fragile). hasPhysicalQuality(dog, soft_Deformable). affordsTask(dog, leisureTask).
}).
#pos(e372@100, {hasAffordance(dog, cover)}, {}, {
  obj(dog). hasPhysicalQuality(dog, fragile). hasPhysicalQuality(dog, soft_Deformable). affordsTask(dog, leisureTask).
}).
#pos(e373@100, {hasAffordance(dog, dig)}, {}, {
  obj(dog). hasPhysicalQuality(dog, fragile). hasPhysicalQuality(dog, soft_Deformable). affordsTask(dog, leisureTask).
}).
#pos(e374@100, {hasAffordance(dog, entertain)}, {}, {
  obj(dog). hasPhysicalQuality(dog, fragile). hasPhysicalQuality(dog, soft_Deformable). affordsTask(dog, leisureTask).
}).
#pos(e375@100, {hasAffordance(dog, heat)}, {}, {
  obj(dog). hasPhysicalQuality(dog, fragile). hasPhysicalQuality(dog, soft_Deformable). affordsTask(dog, leisureTask).
}).
#pos(e376@100, {hasAffordance(dog, mark)}, {}, {
  obj(dog). hasPhysicalQuality(dog, fragile). hasPhysicalQuality(dog, soft_Deformable). affordsTask(dog, leisureTask).
}).
#pos(e377@100, {hasAffordance(dog, roll)}, {}, {
  obj(dog). hasPhysicalQuality(dog, fragile). hasPhysicalQuality(dog, soft_Deformable). affordsTask(dog, leisureTask).
}).
#pos(e378@100, {hasAffordance(dog, smoothen)}, {}, {
  obj(dog). hasPhysicalQuality(dog, fragile). hasPhysicalQuality(dog, soft_Deformable). affordsTask(dog, leisureTask).
}).
#pos(e379@100, {hasAffordance(dog, stick)}, {}, {
  obj(dog). hasPhysicalQuality(dog, fragile). hasPhysicalQuality(dog, soft_Deformable). affordsTask(dog, leisureTask).
}).
#pos(e380@100, {hasAffordance(dog, time)}, {}, {
  obj(dog). hasPhysicalQuality(dog, fragile). hasPhysicalQuality(dog, soft_Deformable). affordsTask(dog, leisureTask).
}).
#pos(e381@100, {hasAffordance(door, control)}, {}, {
  obj(door). hasPhysicalQuality(door, rigid). hasRole(door, furnitureRole). affordsTask(door, maintenanceTask).
}).
#pos(e382@100, {hasAffordance(doormat, absorb)}, {}, {
  obj(doormat). hasPhysicalQuality(doormat, lightweight). hasPhysicalQuality(doormat, soft_Deformable). hasRole(doormat, furnitureRole). affordsTask(doormat, cleaningTask).
}).
#pos(e383@100, {hasAffordance(doormat, clean)}, {}, {
  obj(doormat). hasPhysicalQuality(doormat, lightweight). hasPhysicalQuality(doormat, soft_Deformable). hasRole(doormat, furnitureRole). affordsTask(doormat, cleaningTask).
}).
#pos(e384@100, {hasAffordance(doormat, wipe)}, {}, {
  obj(doormat). hasPhysicalQuality(doormat, lightweight). hasPhysicalQuality(doormat, soft_Deformable). hasRole(doormat, furnitureRole). affordsTask(doormat, cleaningTask).
}).
#pos(e385@100, {hasAffordance(doorway, hold)}, {}, {
  obj(doorway). hasPhysicalQuality(doorway, rigid). hasRole(doorway, furnitureRole).
}).
#pos(e386@100, {hasAffordance(doorway, mark)}, {}, {
  obj(doorway). hasPhysicalQuality(doorway, rigid). hasRole(doorway, furnitureRole).
}).
#pos(e387@100, {hasAffordance(drawer, hold)}, {}, {
  obj(drawer). hasPhysicalQuality(drawer, hasContainer). hasRole(drawer, furnitureRole). hasRole(drawer, storageContainerRole). affordsTask(drawer, storageTask).
}).
#pos(e388@100, {hasAffordance(drawer, store)}, {}, {
  obj(drawer). hasPhysicalQuality(drawer, hasContainer). hasRole(drawer, furnitureRole). hasRole(drawer, storageContainerRole). affordsTask(drawer, storageTask).
}).
#pos(e389@100, {hasAffordance(drawstring_bag, carry)}, {}, {
  obj(drawstring_bag). hasPhysicalQuality(drawstring_bag, lightweight). hasPhysicalQuality(drawstring_bag, soft_Deformable). hasRole(drawstring_bag, storageContainerRole). affordsTask(drawstring_bag, storageTask).
}).
#pos(e390@100, {hasAffordance(drawstring_bag, hold)}, {}, {
  obj(drawstring_bag). hasPhysicalQuality(drawstring_bag, lightweight). hasPhysicalQuality(drawstring_bag, soft_Deformable). hasRole(drawstring_bag, storageContainerRole). affordsTask(drawstring_bag, storageTask).
}).
#pos(e391@100, {hasAffordance(dresser, hold)}, {}, {
  obj(dresser). hasPhysicalQuality(dresser, heavy). hasPhysicalQuality(dresser, rigid). hasRole(dresser, furnitureRole). affordsTask(dresser, storageTask).
}).
#pos(e392@100, {hasAffordance(dresser, store)}, {}, {
  obj(dresser). hasPhysicalQuality(dresser, heavy). hasPhysicalQuality(dresser, rigid). hasRole(dresser, furnitureRole). affordsTask(dresser, storageTask).
}).
#pos(e393@100, {hasAffordance(dresser, support)}, {}, {
  obj(dresser). hasPhysicalQuality(dresser, heavy). hasPhysicalQuality(dresser, rigid). hasRole(dresser, furnitureRole). affordsTask(dresser, storageTask).
}).
#pos(e394@100, {hasAffordance(dresser, write)}, {}, {
  obj(dresser). hasPhysicalQuality(dresser, heavy). hasPhysicalQuality(dresser, rigid). hasRole(dresser, furnitureRole). affordsTask(dresser, storageTask).
}).
#pos(e395@100, {hasAffordance(drill, cut)}, {}, {
  obj(drill). hasPhysicalQuality(drill, heavy). hasPhysicalQuality(drill, isRotary). hasPhysicalQuality(drill, rigid). hasRole(drill, toolRole). affordsTask(drill, maintenanceTask).
}).
#pos(e396@100, {hasAffordance(drill, drill)}, {}, {
  obj(drill). hasPhysicalQuality(drill, heavy). hasPhysicalQuality(drill, isRotary). hasPhysicalQuality(drill, rigid). hasRole(drill, toolRole). affordsTask(drill, maintenanceTask).
}).
#pos(e397@100, {hasAffordance(drill, fix)}, {}, {
  obj(drill). hasPhysicalQuality(drill, heavy). hasPhysicalQuality(drill, isRotary). hasPhysicalQuality(drill, rigid). hasRole(drill, toolRole). affordsTask(drill, maintenanceTask).
}).
#pos(e398@100, {hasAffordance(drill, screw)}, {}, {
  obj(drill). hasPhysicalQuality(drill, heavy). hasPhysicalQuality(drill, isRotary). hasPhysicalQuality(drill, rigid). hasRole(drill, toolRole). affordsTask(drill, maintenanceTask).
}).
#pos(e399@100, {hasAffordance(dry_storage, dry)}, {}, {
  obj(dry_storage). hasPhysicalQuality(dry_storage, hasContainer). hasRole(dry_storage, storageContainerRole). affordsTask(dry_storage, storageTask).
}).
#pos(e400@100, {hasAffordance(dry_storage, store)}, {}, {
  obj(dry_storage). hasPhysicalQuality(dry_storage, hasContainer). hasRole(dry_storage, storageContainerRole). affordsTask(dry_storage, storageTask).
}).
#pos(e401@100, {hasAffordance(dryer, dry)}, {}, {
  obj(dryer). hasPhysicalQuality(dryer, electronic). hasPhysicalQuality(dryer, heavy). hasRole(dryer, applianceRole). affordsTask(dryer, maintenanceTask).
}).
#pos(e402@100, {hasAffordance(dustbin, dispose)}, {}, {
  obj(dustbin). hasPhysicalQuality(dustbin, heavy). hasPhysicalQuality(dustbin, rigid). hasRole(dustbin, storageContainerRole). hasRole(dustbin, wasteRole). affordsTask(dustbin, wasteDisposalTask).
}).
#pos(e403@100, {hasAffordance(dustbin, rub)}, {}, {
  obj(dustbin). hasPhysicalQuality(dustbin, heavy). hasPhysicalQuality(dustbin, rigid). hasRole(dustbin, storageContainerRole). hasRole(dustbin, wasteRole). affordsTask(dustbin, wasteDisposalTask).
}).
#pos(e404@100, {hasAffordance(dustbin, scoop)}, {}, {
  obj(dustbin). hasPhysicalQuality(dustbin, heavy). hasPhysicalQuality(dustbin, rigid). hasRole(dustbin, storageContainerRole). hasRole(dustbin, wasteRole). affordsTask(dustbin, wasteDisposalTask).
}).
#pos(e405@100, {hasAffordance(duvet, comfort)}, {}, {
  obj(duvet). hasPhysicalQuality(duvet, soft_Deformable). hasPhysicalQuality(duvet, washable). hasRole(duvet, beddingRole). affordsTask(duvet, sleepingTask).
}).
#pos(e406@100, {hasAffordance(duvet, cover)}, {}, {
  obj(duvet). hasPhysicalQuality(duvet, soft_Deformable). hasPhysicalQuality(duvet, washable). hasRole(duvet, beddingRole). affordsTask(duvet, sleepingTask).
}).
#pos(e407@100, {hasAffordance(duvet, heat)}, {}, {
  obj(duvet). hasPhysicalQuality(duvet, soft_Deformable). hasPhysicalQuality(duvet, washable). hasRole(duvet, beddingRole). affordsTask(duvet, sleepingTask).
}).
#pos(e408@100, {hasAffordance(duvet_cover, comfort)}, {}, {
  obj(duvet_cover). hasPhysicalQuality(duvet_cover, soft_Deformable). hasPhysicalQuality(duvet_cover, washable). hasRole(duvet_cover, beddingRole). affordsTask(duvet_cover, sleepingTask).
}).
#pos(e409@100, {hasAffordance(duvet_cover, cover)}, {}, {
  obj(duvet_cover). hasPhysicalQuality(duvet_cover, soft_Deformable). hasPhysicalQuality(duvet_cover, washable). hasRole(duvet_cover, beddingRole). affordsTask(duvet_cover, sleepingTask).
}).
#pos(e410@100, {hasAffordance(egg, break)}, {}, {
  obj(egg). hasPhysicalQuality(egg, fragile). hasPhysicalQuality(egg, perishable). hasRole(egg, consumableRole). affordsTask(egg, foodPreparationTask).
}).
#pos(e411@100, {hasAffordance(egg, heat)}, {}, {
  obj(egg). hasPhysicalQuality(egg, fragile). hasPhysicalQuality(egg, perishable). hasRole(egg, consumableRole). affordsTask(egg, foodPreparationTask).
}).
#pos(e412@100, {hasAffordance(egg, roll)}, {}, {
  obj(egg). hasPhysicalQuality(egg, fragile). hasPhysicalQuality(egg, perishable). hasRole(egg, consumableRole). affordsTask(egg, foodPreparationTask).
}).
#pos(e413@100, {hasAffordance(egg, stick)}, {}, {
  obj(egg). hasPhysicalQuality(egg, fragile). hasPhysicalQuality(egg, perishable). hasRole(egg, consumableRole). affordsTask(egg, foodPreparationTask).
}).
#pos(e414@100, {hasAffordance(electric_blanket, heat)}, {}, {
  obj(electric_blanket). hasPhysicalQuality(electric_blanket, electronic). hasPhysicalQuality(electric_blanket, soft_Deformable). hasPhysicalQuality(electric_blanket, washable). hasRole(electric_blanket, beddingRole). affordsTask(electric_blanket, sleepingTask).
}).
#pos(e415@100, {hasAffordance(electric_fan, cool)}, {}, {
  obj(electric_fan). hasPhysicalQuality(electric_fan, electronic). hasPhysicalQuality(electric_fan, lightweight). hasRole(electric_fan, applianceRole). affordsTask(electric_fan, leisureTask).
}).
#pos(e416@100, {hasAffordance(electric_fan, dry)}, {}, {
  obj(electric_fan). hasPhysicalQuality(electric_fan, electronic). hasPhysicalQuality(electric_fan, lightweight). hasRole(electric_fan, applianceRole). affordsTask(electric_fan, leisureTask).
}).
#pos(e417@100, {hasAffordance(electric_fan, illuminate)}, {}, {
  obj(electric_fan). hasPhysicalQuality(electric_fan, electronic). hasPhysicalQuality(electric_fan, lightweight). hasRole(electric_fan, applianceRole). affordsTask(electric_fan, leisureTask).
}).
#pos(e418@100, {hasAffordance(electric_pencil_sharpener, grind)}, {}, {
  obj(electric_pencil_sharpener). hasPhysicalQuality(electric_pencil_sharpener, electronic). hasPhysicalQuality(electric_pencil_sharpener, heavy). hasRole(electric_pencil_sharpener, toolRole). affordsTask(electric_pencil_sharpener, maintenanceTask).
}).
#pos(e419@100, {hasAffordance(electric_razor, cut)}, {}, {
  obj(electric_razor). hasPhysicalQuality(electric_razor, electronic). hasPhysicalQuality(electric_razor, lightweight). hasRole(electric_razor, toolRole). affordsTask(electric_razor, hygieneTask).
}).
#pos(e420@100, {hasAffordance(electric_socket, illuminate)}, {}, {
  obj(electric_socket). hasPhysicalQuality(electric_socket, electronic). hasPhysicalQuality(electric_socket, heavy). hasRole(electric_socket, applianceRole).
}).
#pos(e421@100, {hasAffordance(electric_socket, plug)}, {}, {
  obj(electric_socket). hasPhysicalQuality(electric_socket, electronic). hasPhysicalQuality(electric_socket, heavy). hasRole(electric_socket, applianceRole).
}).
#pos(e422@100, {hasAffordance(eraser, clean)}, {}, {
  obj(eraser). hasPhysicalQuality(eraser, lightweight). hasPhysicalQuality(eraser, soft_Deformable). hasRole(eraser, toolRole). affordsTask(eraser, maintenanceTask).
}).
#pos(e423@100, {hasAffordance(eraser, fix)}, {}, {
  obj(eraser). hasPhysicalQuality(eraser, lightweight). hasPhysicalQuality(eraser, soft_Deformable). hasRole(eraser, toolRole). affordsTask(eraser, maintenanceTask).
}).
#pos(e424@100, {hasAffordance(eraser, mark)}, {}, {
  obj(eraser). hasPhysicalQuality(eraser, lightweight). hasPhysicalQuality(eraser, soft_Deformable). hasRole(eraser, toolRole). affordsTask(eraser, maintenanceTask).
}).
#pos(e425@100, {hasAffordance(eraser, write)}, {}, {
  obj(eraser). hasPhysicalQuality(eraser, lightweight). hasPhysicalQuality(eraser, soft_Deformable). hasRole(eraser, toolRole). affordsTask(eraser, maintenanceTask).
}).
#pos(e426@100, {hasAffordance(eyeglasses_case, clean)}, {}, {
  obj(eyeglasses_case). hasPhysicalQuality(eyeglasses_case, hasContainer). hasPhysicalQuality(eyeglasses_case, lightweight). hasRole(eyeglasses_case, storageContainerRole). affordsTask(eyeglasses_case, storageTask).
}).
#pos(e427@100, {hasAffordance(eyeglasses_case, contain)}, {}, {
  obj(eyeglasses_case). hasPhysicalQuality(eyeglasses_case, hasContainer). hasPhysicalQuality(eyeglasses_case, lightweight). hasRole(eyeglasses_case, storageContainerRole). affordsTask(eyeglasses_case, storageTask).
}).
#pos(e428@100, {hasAffordance(eyeglasses_case, hold)}, {}, {
  obj(eyeglasses_case). hasPhysicalQuality(eyeglasses_case, hasContainer). hasPhysicalQuality(eyeglasses_case, lightweight). hasRole(eyeglasses_case, storageContainerRole). affordsTask(eyeglasses_case, storageTask).
}).
#pos(e429@100, {hasAffordance(eyeglasses_case, store)}, {}, {
  obj(eyeglasses_case). hasPhysicalQuality(eyeglasses_case, hasContainer). hasPhysicalQuality(eyeglasses_case, lightweight). hasRole(eyeglasses_case, storageContainerRole). affordsTask(eyeglasses_case, storageTask).
}).
#pos(e430@100, {hasAffordance(faucet, break)}, {}, {
  obj(faucet). hasPhysicalQuality(faucet, electronic). hasPhysicalQuality(faucet, liquid). hasRole(faucet, toolRole). affordsTask(faucet, hygieneTask).
}).
#pos(e431@100, {hasAffordance(faucet, wash)}, {}, {
  obj(faucet). hasPhysicalQuality(faucet, electronic). hasPhysicalQuality(faucet, liquid). hasRole(faucet, toolRole). affordsTask(faucet, hygieneTask).
}).
#pos(e432@100, {hasAffordance(faucet, write)}, {}, {
  obj(faucet). hasPhysicalQuality(faucet, electronic). hasPhysicalQuality(faucet, liquid). hasRole(faucet, toolRole). affordsTask(faucet, hygieneTask).
}).
#pos(e433@100, {hasAffordance(faucet_overflow, pour)}, {}, {
  obj(faucet_overflow). hasPhysicalQuality(faucet_overflow, liquid). hasRole(faucet_overflow, toolRole). affordsTask(faucet_overflow, maintenanceTask).
}).
#pos(e434@100, {hasAffordance(feather, write)}, {}, {
  obj(feather). hasPhysicalQuality(feather, lightweight). hasPhysicalQuality(feather, soft_Deformable). hasRole(feather, consumableRole). affordsTask(feather, leisureTask).
}).
#pos(e435@100, {hasAffordance(feathers, write)}, {}, {
  obj(feathers). hasPhysicalQuality(feathers, lightweight). hasPhysicalQuality(feathers, soft_Deformable). hasRole(feathers, consumableRole).
}).
#pos(e436@100, {hasAffordance(felt, break)}, {}, {
  obj(felt). hasPhysicalQuality(felt, soft_Deformable). hasRole(felt, consumableRole). hasRole(felt, toolRole).
}).
#pos(e437@100, {hasAffordance(felt, display)}, {}, {
  obj(felt). hasPhysicalQuality(felt, soft_Deformable). hasRole(felt, consumableRole). hasRole(felt, toolRole).
}).
#pos(e438@100, {hasAffordance(felt, hammer)}, {}, {
  obj(felt). hasPhysicalQuality(felt, soft_Deformable). hasRole(felt, consumableRole). hasRole(felt, toolRole).
}).
#pos(e439@100, {hasAffordance(felt, heat)}, {}, {
  obj(felt). hasPhysicalQuality(felt, soft_Deformable). hasRole(felt, consumableRole). hasRole(felt, toolRole).
}).
#pos(e440@100, {hasAffordance(file, hold)}, {}, {
  obj(file). hasPhysicalQuality(file, lightweight). hasRole(file, documentRole). affordsTask(file, storageTask).
}).
#pos(e441@100, {hasAffordance(file, saw)}, {}, {
  obj(file). hasPhysicalQuality(file, lightweight). hasRole(file, documentRole). affordsTask(file, storageTask).
}).
#pos(e442@100, {hasAffordance(file, smoothen)}, {}, {
  obj(file). hasPhysicalQuality(file, lightweight). hasRole(file, documentRole). affordsTask(file, storageTask).
}).
#pos(e443@100, {hasAffordance(file_cabinet, file)}, {}, {
  obj(file_cabinet). hasRole(file_cabinet, storageContainerRole).
}).
#pos(e444@100, {hasAffordance(files, dig)}, {}, {
  obj(files). hasRole(files, documentRole).
}).
#pos(e445@100, {hasAffordance(files, hold)}, {}, {
  obj(files). hasRole(files, documentRole).
}).
#pos(e446@100, {hasAffordance(filing_box, file)}, {}, {
  obj(filing_box). hasPhysicalQuality(filing_box, hasContainer). hasPhysicalQuality(filing_box, heavy). hasRole(filing_box, storageContainerRole). affordsTask(filing_box, storageTask).
}).
#pos(e447@100, {hasAffordance(filing_box, store)}, {}, {
  obj(filing_box). hasPhysicalQuality(filing_box, hasContainer). hasPhysicalQuality(filing_box, heavy). hasRole(filing_box, storageContainerRole). affordsTask(filing_box, storageTask).
}).
#pos(e448@100, {hasAffordance(film, store)}, {}, {
  obj(film). hasPhysicalQuality(film, fragile). hasRole(film, entertainmentRole). affordsTask(film, leisureTask).
}).
#pos(e449@100, {hasAffordance(fireplace, comfort)}, {}, {
  obj(fireplace). hasPhysicalQuality(fireplace, heated). hasRole(fireplace, applianceRole). affordsTask(fireplace, maintenanceTask).
}).
#pos(e450@100, {hasAffordance(fireplace, heat)}, {}, {
  obj(fireplace). hasPhysicalQuality(fireplace, heated). hasRole(fireplace, applianceRole). affordsTask(fireplace, maintenanceTask).
}).
#pos(e451@100, {hasAffordance(fireplace, illuminate)}, {}, {
  obj(fireplace). hasPhysicalQuality(fireplace, heated). hasRole(fireplace, applianceRole). affordsTask(fireplace, maintenanceTask).
}).
#pos(e452@100, {hasAffordance(fish, illuminate)}, {}, {
  obj(fish). hasPhysicalQuality(fish, liquid). hasPhysicalQuality(fish, perishable). hasRole(fish, consumableRole). affordsTask(fish, eatingDrinkingTask).
}).
#pos(e453@100, {hasAffordance(flask, carry)}, {}, {
  obj(flask). hasPhysicalQuality(flask, hasContainer). hasPhysicalQuality(flask, liquid). hasRole(flask, utensilRole). affordsTask(flask, eatingDrinkingTask).
}).
#pos(e454@100, {hasAffordance(flask, hold)}, {}, {
  obj(flask). hasPhysicalQuality(flask, hasContainer). hasPhysicalQuality(flask, liquid). hasRole(flask, utensilRole). affordsTask(flask, eatingDrinkingTask).
}).
#pos(e455@100, {hasAffordance(flask, store)}, {}, {
  obj(flask). hasPhysicalQuality(flask, hasContainer). hasPhysicalQuality(flask, liquid). hasRole(flask, utensilRole). affordsTask(flask, eatingDrinkingTask).
}).
#pos(e456@100, {hasAffordance(flooring, cover)}, {}, {
  obj(flooring). hasPhysicalQuality(flooring, rigid). hasRole(flooring, furnitureRole).
}).
#pos(e457@100, {hasAffordance(flower, hold)}, {}, {
  obj(flower). hasPhysicalQuality(flower, perishable). hasRole(flower, consumableRole).
}).
#pos(e458@100, {hasAffordance(flower, spread)}, {}, {
  obj(flower). hasPhysicalQuality(flower, perishable). hasRole(flower, consumableRole).
}).
#pos(e459@100, {hasAffordance(folder, contain)}, {}, {
  obj(folder). hasRole(folder, storageContainerRole). affordsTask(folder, storageTask).
}).
#pos(e460@100, {hasAffordance(folder, hold)}, {}, {
  obj(folder). hasRole(folder, storageContainerRole). affordsTask(folder, storageTask).
}).
#pos(e461@100, {hasAffordance(folder, store)}, {}, {
  obj(folder). hasRole(folder, storageContainerRole). affordsTask(folder, storageTask).
}).
#pos(e462@100, {hasAffordance(folder, write)}, {}, {
  obj(folder). hasRole(folder, storageContainerRole). affordsTask(folder, storageTask).
}).
#pos(e463@100, {hasAffordance(folding_shower_door, dry)}, {}, {
  obj(folding_shower_door). hasPhysicalQuality(folding_shower_door, lightweight). hasPhysicalQuality(folding_shower_door, rigid). hasRole(folding_shower_door, furnitureRole). affordsTask(folding_shower_door, leisureTask).
}).
#pos(e464@100, {hasAffordance(fork, hold)}, {}, {
  obj(fork). hasPhysicalQuality(fork, rigid). hasPhysicalQuality(fork, sharp). hasRole(fork, utensilRole). affordsTask(fork, foodPreparationTask).
}).
#pos(e465@100, {hasAffordance(fork, lift)}, {}, {
  obj(fork). hasPhysicalQuality(fork, rigid). hasPhysicalQuality(fork, sharp). hasRole(fork, utensilRole). affordsTask(fork, foodPreparationTask).
}).
#pos(e466@100, {hasAffordance(freezer, store)}, {}, {
  obj(freezer). hasPhysicalQuality(freezer, requiresFreezing). hasRole(freezer, applianceRole). affordsTask(freezer, storageTask).
}).
#pos(e467@100, {hasAffordance(fridge, cool)}, {}, {
  obj(fridge). hasPhysicalQuality(fridge, electronic). hasPhysicalQuality(fridge, heavy). hasRole(fridge, applianceRole). affordsTask(fridge, storageTask).
}).
#pos(e468@100, {hasAffordance(frisbee, entertain)}, {}, {
  obj(frisbee). hasPhysicalQuality(frisbee, lightweight). hasPhysicalQuality(frisbee, rigid). hasRole(frisbee, entertainmentRole). hasRole(frisbee, toolRole). affordsTask(frisbee, leisureTask). affordsTask(frisbee, maintenanceTask).
}).
#pos(e469@100, {hasAffordance(frying_pan, chop)}, {}, {
  obj(frying_pan). hasPhysicalQuality(frying_pan, heated). hasPhysicalQuality(frying_pan, rigid). hasRole(frying_pan, cookwareRole). affordsTask(frying_pan, foodPreparationTask).
}).
#pos(e470@100, {hasAffordance(frying_pan, cut)}, {}, {
  obj(frying_pan). hasPhysicalQuality(frying_pan, heated). hasPhysicalQuality(frying_pan, rigid). hasRole(frying_pan, cookwareRole). affordsTask(frying_pan, foodPreparationTask).
}).
#pos(e471@100, {hasAffordance(frying_pan, heat)}, {}, {
  obj(frying_pan). hasPhysicalQuality(frying_pan, heated). hasPhysicalQuality(frying_pan, rigid). hasRole(frying_pan, cookwareRole). affordsTask(frying_pan, foodPreparationTask).
}).
#pos(e472@100, {hasAffordance(frying_pan, hold)}, {}, {
  obj(frying_pan). hasPhysicalQuality(frying_pan, heated). hasPhysicalQuality(frying_pan, rigid). hasRole(frying_pan, cookwareRole). affordsTask(frying_pan, foodPreparationTask).
}).
#pos(e473@100, {hasAffordance(garage, dry)}, {}, {
  obj(garage). hasPhysicalQuality(garage, heavy). hasPhysicalQuality(garage, rigid). hasRole(garage, furnitureRole). hasRole(garage, storageContainerRole). affordsTask(garage, storageTask).
}).
#pos(e474@100, {hasAffordance(garage, repair)}, {}, {
  obj(garage). hasPhysicalQuality(garage, heavy). hasPhysicalQuality(garage, rigid). hasRole(garage, furnitureRole). hasRole(garage, storageContainerRole). affordsTask(garage, storageTask).
}).
#pos(e475@100, {hasAffordance(garage, store)}, {}, {
  obj(garage). hasPhysicalQuality(garage, heavy). hasPhysicalQuality(garage, rigid). hasRole(garage, furnitureRole). hasRole(garage, storageContainerRole). affordsTask(garage, storageTask).
}).
#pos(e476@100, {hasAffordance(garbage, contain)}, {}, {
  obj(garbage). hasRole(garbage, consumableRole). hasRole(garbage, storageContainerRole). affordsTask(garbage, wasteDisposalTask).
}).
#pos(e477@100, {hasAffordance(garbage, hold)}, {}, {
  obj(garbage). hasRole(garbage, consumableRole). hasRole(garbage, storageContainerRole). affordsTask(garbage, wasteDisposalTask).
}).
#pos(e478@100, {hasAffordance(garbage_can, dispose)}, {}, {
  obj(garbage_can). hasPhysicalQuality(garbage_can, hasContainer). hasPhysicalQuality(garbage_can, heavy). hasRole(garbage_can, storageContainerRole). affordsTask(garbage_can, wasteDisposalTask).
}).
#pos(e479@100, {hasAffordance(garbage_can, hold)}, {}, {
  obj(garbage_can). hasPhysicalQuality(garbage_can, hasContainer). hasPhysicalQuality(garbage_can, heavy). hasRole(garbage_can, storageContainerRole). affordsTask(garbage_can, wasteDisposalTask).
}).
#pos(e480@100, {hasAffordance(garbage_can, roll)}, {}, {
  obj(garbage_can). hasPhysicalQuality(garbage_can, hasContainer). hasPhysicalQuality(garbage_can, heavy). hasRole(garbage_can, storageContainerRole). affordsTask(garbage_can, wasteDisposalTask).
}).
#pos(e481@100, {hasAffordance(garbage_can, store)}, {}, {
  obj(garbage_can). hasPhysicalQuality(garbage_can, hasContainer). hasPhysicalQuality(garbage_can, heavy). hasRole(garbage_can, storageContainerRole). affordsTask(garbage_can, wasteDisposalTask).
}).
#pos(e482@100, {hasAffordance(garden, time)}, {}, {
  obj(garden). hasPhysicalQuality(garden, lightweight). hasPhysicalQuality(garden, soft_Deformable). hasRole(garden, furnitureRole). affordsTask(garden, leisureTask).
}).
#pos(e483@100, {hasAffordance(garden_hose, cool)}, {}, {
  obj(garden_hose). hasPhysicalQuality(garden_hose, liquid). hasRole(garden_hose, toolRole). affordsTask(garden_hose, gardeningTask). affordsTask(garden_hose, hygieneTask).
}).
#pos(e484@100, {hasAffordance(garden_hose, wash)}, {}, {
  obj(garden_hose). hasPhysicalQuality(garden_hose, liquid). hasRole(garden_hose, toolRole). affordsTask(garden_hose, gardeningTask). affordsTask(garden_hose, hygieneTask).
}).
#pos(e485@100, {hasAffordance(garlic, heat)}, {}, {
  obj(garlic). hasPhysicalQuality(garlic, perishable). hasRole(garlic, consumableRole). affordsTask(garlic, foodPreparationTask).
}).
#pos(e486@100, {hasAffordance(garment_bag, carry)}, {}, {
  obj(garment_bag). hasPhysicalQuality(garment_bag, lightweight). hasPhysicalQuality(garment_bag, soft_Deformable). hasRole(garment_bag, storageContainerRole). affordsTask(garment_bag, storageTask).
}).
#pos(e487@100, {hasAffordance(garment_bag, contain)}, {}, {
  obj(garment_bag). hasPhysicalQuality(garment_bag, lightweight). hasPhysicalQuality(garment_bag, soft_Deformable). hasRole(garment_bag, storageContainerRole). affordsTask(garment_bag, storageTask).
}).
#pos(e488@100, {hasAffordance(garment_bag, hold)}, {}, {
  obj(garment_bag). hasPhysicalQuality(garment_bag, lightweight). hasPhysicalQuality(garment_bag, soft_Deformable). hasRole(garment_bag, storageContainerRole). affordsTask(garment_bag, storageTask).
}).
#pos(e489@100, {hasAffordance(garment_bag, store)}, {}, {
  obj(garment_bag). hasPhysicalQuality(garment_bag, lightweight). hasPhysicalQuality(garment_bag, soft_Deformable). hasRole(garment_bag, storageContainerRole). affordsTask(garment_bag, storageTask).
}).
#pos(e490@100, {hasAffordance(gate, control)}, {}, {
  obj(gate). hasPhysicalQuality(gate, heavy). hasPhysicalQuality(gate, rigid). hasRole(gate, furnitureRole). affordsTask(gate, maintenanceTask).
}).
#pos(e491@100, {hasAffordance(gel_toothpaste, clean)}, {}, {
  obj(gel_toothpaste). hasPhysicalQuality(gel_toothpaste, liquid). hasPhysicalQuality(gel_toothpaste, toxic_Hazardous). hasRole(gel_toothpaste, cleaningToolRole). affordsTask(gel_toothpaste, hygieneTask).
}).
#pos(e492@100, {hasAffordance(glass, break)}, {}, {
  obj(glass). hasPhysicalQuality(glass, fragile). hasPhysicalQuality(glass, rigid). hasRole(glass, utensilRole). affordsTask(glass, eatingDrinkingTask).
}).
#pos(e493@100, {hasAffordance(glass, cut)}, {}, {
  obj(glass). hasPhysicalQuality(glass, fragile). hasPhysicalQuality(glass, rigid). hasRole(glass, utensilRole). affordsTask(glass, eatingDrinkingTask).
}).
#pos(e494@100, {hasAffordance(glass, hold)}, {}, {
  obj(glass). hasPhysicalQuality(glass, fragile). hasPhysicalQuality(glass, rigid). hasRole(glass, utensilRole). affordsTask(glass, eatingDrinkingTask).
}).
#pos(e495@100, {hasAffordance(glass, melt)}, {}, {
  obj(glass). hasPhysicalQuality(glass, fragile). hasPhysicalQuality(glass, rigid). hasRole(glass, utensilRole). affordsTask(glass, eatingDrinkingTask).
}).
#pos(e496@100, {hasAffordance(glass_fronted_cupboard, display)}, {}, {
  obj(glass_fronted_cupboard). hasPhysicalQuality(glass_fronted_cupboard, heavy). hasPhysicalQuality(glass_fronted_cupboard, rigid). hasRole(glass_fronted_cupboard, storageContainerRole). affordsTask(glass_fronted_cupboard, storageTask).
}).
#pos(e497@100, {hasAffordance(glass_fronted_cupboard, store)}, {}, {
  obj(glass_fronted_cupboard). hasPhysicalQuality(glass_fronted_cupboard, heavy). hasPhysicalQuality(glass_fronted_cupboard, rigid). hasRole(glass_fronted_cupboard, storageContainerRole). affordsTask(glass_fronted_cupboard, storageTask).
}).
#pos(e498@100, {hasAffordance(glass_fronted_display_cabinet, contain)}, {}, {
  obj(glass_fronted_display_cabinet). hasPhysicalQuality(glass_fronted_display_cabinet, heavy). hasPhysicalQuality(glass_fronted_display_cabinet, rigid). hasRole(glass_fronted_display_cabinet, furnitureRole). hasRole(glass_fronted_display_cabinet, storageContainerRole). affordsTask(glass_fronted_display_cabinet, storageTask).
}).
#pos(e499@100, {hasAffordance(glass_fronted_display_cabinet, display)}, {}, {
  obj(glass_fronted_display_cabinet). hasPhysicalQuality(glass_fronted_display_cabinet, heavy). hasPhysicalQuality(glass_fronted_display_cabinet, rigid). hasRole(glass_fronted_display_cabinet, furnitureRole). hasRole(glass_fronted_display_cabinet, storageContainerRole). affordsTask(glass_fronted_display_cabinet, storageTask).
}).
#pos(e500@100, {hasAffordance(glass_of_water, pour)}, {}, {
  obj(glass_of_water). hasPhysicalQuality(glass_of_water, liquid). hasRole(glass_of_water, consumableRole). hasRole(glass_of_water, utensilRole). affordsTask(glass_of_water, eatingDrinkingTask).
}).
#pos(e501@100, {hasAffordance(glasses, hold)}, {}, {
  obj(glasses). hasPhysicalQuality(glasses, lightweight). hasRole(glasses, utensilRole). affordsTask(glasses, eatingDrinkingTask).
}).
#pos(e502@100, {hasAffordance(glasses, read)}, {}, {
  obj(glasses). hasPhysicalQuality(glasses, lightweight). hasRole(glasses, utensilRole). affordsTask(glasses, eatingDrinkingTask).
}).
#pos(e503@100, {hasAffordance(glasses_case, display)}, {}, {
  obj(glasses_case). hasPhysicalQuality(glasses_case, lightweight). hasPhysicalQuality(glasses_case, soft_Deformable). hasRole(glasses_case, storageContainerRole). affordsTask(glasses_case, storageTask).
}).
#pos(e504@100, {hasAffordance(glasses_case, hold)}, {}, {
  obj(glasses_case). hasPhysicalQuality(glasses_case, lightweight). hasPhysicalQuality(glasses_case, soft_Deformable). hasRole(glasses_case, storageContainerRole). affordsTask(glasses_case, storageTask).
}).
#pos(e505@100, {hasAffordance(glue, dry)}, {}, {
  obj(glue). hasPhysicalQuality(glue, fragile). hasPhysicalQuality(glue, liquid). hasRole(glue, toolRole). affordsTask(glue, maintenanceTask).
}).
#pos(e506@100, {hasAffordance(glue, fix)}, {}, {
  obj(glue). hasPhysicalQuality(glue, fragile). hasPhysicalQuality(glue, liquid). hasRole(glue, toolRole). affordsTask(glue, maintenanceTask).
}).
#pos(e507@100, {hasAffordance(glue, hold)}, {}, {
  obj(glue). hasPhysicalQuality(glue, fragile). hasPhysicalQuality(glue, liquid). hasRole(glue, toolRole). affordsTask(glue, maintenanceTask).
}).
#pos(e508@100, {hasAffordance(glue, screw)}, {}, {
  obj(glue). hasPhysicalQuality(glue, fragile). hasPhysicalQuality(glue, liquid). hasRole(glue, toolRole). affordsTask(glue, maintenanceTask).
}).
#pos(e509@100, {hasAffordance(glue, stick)}, {}, {
  obj(glue). hasPhysicalQuality(glue, fragile). hasPhysicalQuality(glue, liquid). hasRole(glue, toolRole). affordsTask(glue, maintenanceTask).
}).
#pos(e510@100, {hasAffordance(glue_stick, spread)}, {}, {
  obj(glue_stick). hasPhysicalQuality(glue_stick, fragile). hasPhysicalQuality(glue_stick, liquid). hasRole(glue_stick, toolRole). affordsTask(glue_stick, maintenanceTask).
}).
#pos(e511@100, {hasAffordance(glue_stick, stick)}, {}, {
  obj(glue_stick). hasPhysicalQuality(glue_stick, fragile). hasPhysicalQuality(glue_stick, liquid). hasRole(glue_stick, toolRole). affordsTask(glue_stick, maintenanceTask).
}).
#pos(e512@100, {hasAffordance(grill, cool)}, {}, {
  obj(grill). hasPhysicalQuality(grill, heated). hasPhysicalQuality(grill, heavy). hasRole(grill, cookwareRole). affordsTask(grill, foodPreparationTask).
}).
#pos(e513@100, {hasAffordance(grill, heat)}, {}, {
  obj(grill). hasPhysicalQuality(grill, heated). hasPhysicalQuality(grill, heavy). hasRole(grill, cookwareRole). affordsTask(grill, foodPreparationTask).
}).
#pos(e514@100, {hasAffordance(gum, stick)}, {}, {
  obj(gum). hasPhysicalQuality(gum, liquid). hasPhysicalQuality(gum, perishable). hasRole(gum, consumableRole). affordsTask(gum, eatingDrinkingTask).
}).
#pos(e515@100, {hasAffordance(hair_dryer, dry)}, {}, {
  obj(hair_dryer). hasPhysicalQuality(hair_dryer, electronic). hasPhysicalQuality(hair_dryer, heavy). hasRole(hair_dryer, applianceRole). affordsTask(hair_dryer, leisureTask).
}).
#pos(e516@100, {hasAffordance(hair_dryer, heat)}, {}, {
  obj(hair_dryer). hasPhysicalQuality(hair_dryer, electronic). hasPhysicalQuality(hair_dryer, heavy). hasRole(hair_dryer, applianceRole). affordsTask(hair_dryer, leisureTask).
}).
#pos(e517@100, {hasAffordance(hairbrush, smoothen)}, {}, {
  obj(hairbrush). hasPhysicalQuality(hairbrush, lightweight). hasPhysicalQuality(hairbrush, rigid). hasRole(hairbrush, toolRole). affordsTask(hairbrush, hygieneTask).
}).
#pos(e518@100, {hasAffordance(hammer, break)}, {}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e519@100, {hasAffordance(hammer, dig)}, {}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e520@100, {hasAffordance(hammer, entertain)}, {}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e521@100, {hasAffordance(hammer, hammer)}, {}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e522@100, {hasAffordance(hammer, repair)}, {}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e523@100, {hasAffordance(hammer, screw)}, {}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e524@100, {hasAffordance(hammer, smoothen)}, {}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e525@100, {hasAffordance(handbag, carry)}, {}, {
  obj(handbag). hasPhysicalQuality(handbag, lightweight). hasPhysicalQuality(handbag, soft_Deformable). hasRole(handbag, storageContainerRole). affordsTask(handbag, storageTask).
}).
#pos(e526@100, {hasAffordance(handbag, hold)}, {}, {
  obj(handbag). hasPhysicalQuality(handbag, lightweight). hasPhysicalQuality(handbag, soft_Deformable). hasRole(handbag, storageContainerRole). affordsTask(handbag, storageTask).
}).
#pos(e527@100, {hasAffordance(hanger, smoothen)}, {}, {
  obj(hanger). hasPhysicalQuality(hanger, lightweight). hasPhysicalQuality(hanger, rigid). hasPhysicalQuality(hanger, soft_Deformable). hasRole(hanger, clothingRole). affordsTask(hanger, dressingTask).
}).
#pos(e528@100, {hasAffordance(hard_drive, store)}, {}, {
  obj(hard_drive). hasPhysicalQuality(hard_drive, electronic). hasPhysicalQuality(hard_drive, heavy). hasRole(hard_drive, applianceRole). affordsTask(hard_drive, storageTask).
}).
#pos(e529@100, {hasAffordance(hat, cover)}, {}, {
  obj(hat). hasPhysicalQuality(hat, lightweight). hasPhysicalQuality(hat, soft_Deformable). hasRole(hat, clothingRole). affordsTask(hat, dressingTask).
}).
#pos(e530@100, {hasAffordance(hat, dry)}, {}, {
  obj(hat). hasPhysicalQuality(hat, lightweight). hasPhysicalQuality(hat, soft_Deformable). hasRole(hat, clothingRole). affordsTask(hat, dressingTask).
}).
#pos(e531@100, {hasAffordance(hat, heat)}, {}, {
  obj(hat). hasPhysicalQuality(hat, lightweight). hasPhysicalQuality(hat, soft_Deformable). hasRole(hat, clothingRole). affordsTask(hat, dressingTask).
}).
#pos(e532@100, {hasAffordance(hat, hold)}, {}, {
  obj(hat). hasPhysicalQuality(hat, lightweight). hasPhysicalQuality(hat, soft_Deformable). hasRole(hat, clothingRole). affordsTask(hat, dressingTask).
}).
#pos(e533@100, {hasAffordance(hat, press)}, {}, {
  obj(hat). hasPhysicalQuality(hat, lightweight). hasPhysicalQuality(hat, soft_Deformable). hasRole(hat, clothingRole). affordsTask(hat, dressingTask).
}).
#pos(e534@100, {hasAffordance(heated_towel_rack, comfort)}, {}, {
  obj(heated_towel_rack). hasPhysicalQuality(heated_towel_rack, heated). hasRole(heated_towel_rack, applianceRole). affordsTask(heated_towel_rack, hygieneTask).
}).
#pos(e535@100, {hasAffordance(heated_towel_rack, dry)}, {}, {
  obj(heated_towel_rack). hasPhysicalQuality(heated_towel_rack, heated). hasRole(heated_towel_rack, applianceRole). affordsTask(heated_towel_rack, hygieneTask).
}).
#pos(e536@100, {hasAffordance(heated_towel_rack, heat)}, {}, {
  obj(heated_towel_rack). hasPhysicalQuality(heated_towel_rack, heated). hasRole(heated_towel_rack, applianceRole). affordsTask(heated_towel_rack, hygieneTask).
}).
#pos(e537@100, {hasAffordance(heater, comfort)}, {}, {
  obj(heater). hasPhysicalQuality(heater, heated). hasRole(heater, applianceRole). affordsTask(heater, maintenanceTask).
}).
#pos(e538@100, {hasAffordance(heater, heat)}, {}, {
  obj(heater). hasPhysicalQuality(heater, heated). hasRole(heater, applianceRole). affordsTask(heater, maintenanceTask).
}).
#pos(e539@100, {hasAffordance(hide_bed_sofa, comfort)}, {}, {
  obj(hide_bed_sofa). hasPhysicalQuality(hide_bed_sofa, fragile). hasPhysicalQuality(hide_bed_sofa, soft_Deformable). hasRole(hide_bed_sofa, furnitureRole). affordsTask(hide_bed_sofa, sleepingTask).
}).
#pos(e540@100, {hasAffordance(highlighter, mark)}, {}, {
  obj(highlighter). hasPhysicalQuality(highlighter, lightweight). hasPhysicalQuality(highlighter, rigid). hasRole(highlighter, utensilRole). affordsTask(highlighter, foodPreparationTask).
}).
#pos(e541@100, {hasAffordance(highlighter_pen, mark)}, {}, {
  obj(highlighter_pen). hasPhysicalQuality(highlighter_pen, lightweight). hasPhysicalQuality(highlighter_pen, rigid). hasRole(highlighter_pen, utensilRole). affordsTask(highlighter_pen, foodPreparationTask).
}).
#pos(e542@100, {hasAffordance(hinged_door, heat)}, {}, {
  obj(hinged_door). hasPhysicalQuality(hinged_door, heavy). hasPhysicalQuality(hinged_door, rigid). hasRole(hinged_door, furnitureRole). affordsTask(hinged_door, storageTask).
}).
#pos(e543@100, {hasAffordance(holdall, carry)}, {}, {
  obj(holdall). hasPhysicalQuality(holdall, lightweight). hasPhysicalQuality(holdall, soft_Deformable). hasRole(holdall, storageContainerRole). affordsTask(holdall, storageTask).
}).
#pos(e544@100, {hasAffordance(honey, stick)}, {}, {
  obj(honey). hasPhysicalQuality(honey, perishable). hasRole(honey, consumableRole). affordsTask(honey, eatingDrinkingTask).
}).
#pos(e545@100, {hasAffordance(horn, entertain)}, {}, {
  obj(horn). hasPhysicalQuality(horn, lightweight). hasPhysicalQuality(horn, rigid). hasRole(horn, musicalInstrumentRole). affordsTask(horn, leisureTask).
}).
#pos(e546@100, {hasAffordance(horn, hold)}, {}, {
  obj(horn). hasPhysicalQuality(horn, lightweight). hasPhysicalQuality(horn, rigid). hasRole(horn, musicalInstrumentRole). affordsTask(horn, leisureTask).
}).
#pos(e547@100, {hasAffordance(hose, carry)}, {}, {
  obj(hose). hasPhysicalQuality(hose, isFlexible). hasPhysicalQuality(hose, liquid). hasRole(hose, toolRole). affordsTask(hose, cleaningTask).
}).
#pos(e548@100, {hasAffordance(hose, clean)}, {}, {
  obj(hose). hasPhysicalQuality(hose, isFlexible). hasPhysicalQuality(hose, liquid). hasRole(hose, toolRole). affordsTask(hose, cleaningTask).
}).
#pos(e549@100, {hasAffordance(hose, wash)}, {}, {
  obj(hose). hasPhysicalQuality(hose, isFlexible). hasPhysicalQuality(hose, liquid). hasRole(hose, toolRole). affordsTask(hose, cleaningTask).
}).
#pos(e550@100, {hasAffordance(house, comfort)}, {}, {
  obj(house). hasPhysicalQuality(house, heavy). hasRole(house, furnitureRole). hasRole(house, storageContainerRole). affordsTask(house, leisureTask). affordsTask(house, workStudyTask).
}).
#pos(e551@100, {hasAffordance(house, entertain)}, {}, {
  obj(house). hasPhysicalQuality(house, heavy). hasRole(house, furnitureRole). hasRole(house, storageContainerRole). affordsTask(house, leisureTask). affordsTask(house, workStudyTask).
}).
#pos(e552@100, {hasAffordance(house, hold)}, {}, {
  obj(house). hasPhysicalQuality(house, heavy). hasRole(house, furnitureRole). hasRole(house, storageContainerRole). affordsTask(house, leisureTask). affordsTask(house, workStudyTask).
}).
#pos(e553@100, {hasAffordance(ice_cream, melt)}, {}, {
  obj(ice_cream). hasPhysicalQuality(ice_cream, perishable). hasPhysicalQuality(ice_cream, requiresFreezing). hasRole(ice_cream, consumableRole). affordsTask(ice_cream, eatingDrinkingTask).
}).
#pos(e554@100, {hasAffordance(icebox, cool)}, {}, {
  obj(icebox). hasPhysicalQuality(icebox, requiresFreezing). hasRole(icebox, applianceRole). affordsTask(icebox, storageTask).
}).
#pos(e555@100, {hasAffordance(icebox, melt)}, {}, {
  obj(icebox). hasPhysicalQuality(icebox, requiresFreezing). hasRole(icebox, applianceRole). affordsTask(icebox, storageTask).
}).
#pos(e556@100, {hasAffordance(icebox, store)}, {}, {
  obj(icebox). hasPhysicalQuality(icebox, requiresFreezing). hasRole(icebox, applianceRole). affordsTask(icebox, storageTask).
}).
#pos(e557@100, {hasAffordance(index_card, write)}, {}, {
  obj(index_card). hasPhysicalQuality(index_card, lightweight). hasPhysicalQuality(index_card, rigid). hasRole(index_card, documentRole). affordsTask(index_card, workStudyTask).
}).
#pos(e558@100, {hasAffordance(index_card_cabinet, hold)}, {}, {
  obj(index_card_cabinet). hasPhysicalQuality(index_card_cabinet, hasContainer). hasPhysicalQuality(index_card_cabinet, heavy). hasRole(index_card_cabinet, storageContainerRole). affordsTask(index_card_cabinet, storageTask).
}).
#pos(e559@100, {hasAffordance(index_card_cabinet, time)}, {}, {
  obj(index_card_cabinet). hasPhysicalQuality(index_card_cabinet, hasContainer). hasPhysicalQuality(index_card_cabinet, heavy). hasRole(index_card_cabinet, storageContainerRole). affordsTask(index_card_cabinet, storageTask).
}).
#pos(e560@100, {hasAffordance(ink, mark)}, {}, {
  obj(ink). hasPhysicalQuality(ink, liquid). hasPhysicalQuality(ink, toxic_Hazardous).
}).
#pos(e561@100, {hasAffordance(ink, write)}, {}, {
  obj(ink). hasPhysicalQuality(ink, liquid). hasPhysicalQuality(ink, toxic_Hazardous).
}).
#pos(e562@100, {hasAffordance(instrument_triangle, entertain)}, {}, {
  obj(instrument_triangle). hasPhysicalQuality(instrument_triangle, lightweight). hasPhysicalQuality(instrument_triangle, rigid). hasRole(instrument_triangle, musicalInstrumentRole). affordsTask(instrument_triangle, leisureTask).
}).
#pos(e563@100, {hasAffordance(iron, press)}, {}, {
  obj(iron). hasPhysicalQuality(iron, heated). hasPhysicalQuality(iron, heavy). hasRole(iron, toolRole). affordsTask(iron, maintenanceTask).
}).
#pos(e564@100, {hasAffordance(jacket, heat)}, {}, {
  obj(jacket). hasPhysicalQuality(jacket, soft_Deformable). hasPhysicalQuality(jacket, washable). hasRole(jacket, clothingRole). affordsTask(jacket, dressingTask).
}).
#pos(e565@100, {hasAffordance(jar, hold)}, {}, {
  obj(jar). hasPhysicalQuality(jar, hasContainer). hasRole(jar, storageContainerRole). affordsTask(jar, storageTask).
}).
#pos(e566@100, {hasAffordance(jar, store)}, {}, {
  obj(jar). hasPhysicalQuality(jar, hasContainer). hasRole(jar, storageContainerRole). affordsTask(jar, storageTask).
}).
#pos(e567@100, {hasAffordance(jars, hold)}, {}, {
  obj(jars). hasPhysicalQuality(jars, hasContainer). hasRole(jars, storageContainerRole). affordsTask(jars, storageTask).
}).
#pos(e568@100, {hasAffordance(jeans, cool)}, {}, {
  obj(jeans). hasPhysicalQuality(jeans, soft_Deformable). hasPhysicalQuality(jeans, washable). hasRole(jeans, clothingRole). affordsTask(jeans, dressingTask).
}).
#pos(e569@100, {hasAffordance(jeans, cover)}, {}, {
  obj(jeans). hasPhysicalQuality(jeans, soft_Deformable). hasPhysicalQuality(jeans, washable). hasRole(jeans, clothingRole). affordsTask(jeans, dressingTask).
}).
#pos(e570@100, {hasAffordance(jeans, display)}, {}, {
  obj(jeans). hasPhysicalQuality(jeans, soft_Deformable). hasPhysicalQuality(jeans, washable). hasRole(jeans, clothingRole). affordsTask(jeans, dressingTask).
}).
#pos(e571@100, {hasAffordance(kettle, carry)}, {}, {
  obj(kettle). hasPhysicalQuality(kettle, heated). hasPhysicalQuality(kettle, heavy). hasRole(kettle, cookwareRole). affordsTask(kettle, foodPreparationTask).
}).
#pos(e572@100, {hasAffordance(kettle, heat)}, {}, {
  obj(kettle). hasPhysicalQuality(kettle, heated). hasPhysicalQuality(kettle, heavy). hasRole(kettle, cookwareRole). affordsTask(kettle, foodPreparationTask).
}).
#pos(e573@100, {hasAffordance(kettle, hold)}, {}, {
  obj(kettle). hasPhysicalQuality(kettle, heated). hasPhysicalQuality(kettle, heavy). hasRole(kettle, cookwareRole). affordsTask(kettle, foodPreparationTask).
}).
#pos(e574@100, {hasAffordance(kettle, wash)}, {}, {
  obj(kettle). hasPhysicalQuality(kettle, heated). hasPhysicalQuality(kettle, heavy). hasRole(kettle, cookwareRole). affordsTask(kettle, foodPreparationTask).
}).
#pos(e575@100, {hasAffordance(keyboard, control)}, {}, {
  obj(keyboard). hasPhysicalQuality(keyboard, electronic). hasPhysicalQuality(keyboard, lightweight). hasRole(keyboard, toolRole). affordsTask(keyboard, workStudyTask).
}).
#pos(e576@100, {hasAffordance(keyboard, entertain)}, {}, {
  obj(keyboard). hasPhysicalQuality(keyboard, electronic). hasPhysicalQuality(keyboard, lightweight). hasRole(keyboard, toolRole). affordsTask(keyboard, workStudyTask).
}).
#pos(e577@100, {hasAffordance(keyboard, press)}, {}, {
  obj(keyboard). hasPhysicalQuality(keyboard, electronic). hasPhysicalQuality(keyboard, lightweight). hasRole(keyboard, toolRole). affordsTask(keyboard, workStudyTask).
}).
#pos(e578@100, {hasAffordance(keys, break)}, {}, {
  obj(keys). hasPhysicalQuality(keys, lightweight). hasPhysicalQuality(keys, rigid). hasRole(keys, toolRole). affordsTask(keys, maintenanceTask).
}).
#pos(e579@100, {hasAffordance(keys, operate)}, {}, {
  obj(keys). hasPhysicalQuality(keys, lightweight). hasPhysicalQuality(keys, rigid). hasRole(keys, toolRole). affordsTask(keys, maintenanceTask).
}).
#pos(e580@100, {hasAffordance(kitchen_table, break)}, {}, {
  obj(kitchen_table). hasPhysicalQuality(kitchen_table, heavy). hasPhysicalQuality(kitchen_table, rigid). hasRole(kitchen_table, furnitureRole). affordsTask(kitchen_table, eatingDrinkingTask). affordsTask(kitchen_table, foodPreparationTask).
}).
#pos(e581@100, {hasAffordance(kitchen_table, entertain)}, {}, {
  obj(kitchen_table). hasPhysicalQuality(kitchen_table, heavy). hasPhysicalQuality(kitchen_table, rigid). hasRole(kitchen_table, furnitureRole). affordsTask(kitchen_table, eatingDrinkingTask). affordsTask(kitchen_table, foodPreparationTask).
}).
#pos(e582@100, {hasAffordance(kitchen_table, read)}, {}, {
  obj(kitchen_table). hasPhysicalQuality(kitchen_table, heavy). hasPhysicalQuality(kitchen_table, rigid). hasRole(kitchen_table, furnitureRole). affordsTask(kitchen_table, eatingDrinkingTask). affordsTask(kitchen_table, foodPreparationTask).
}).
#pos(e583@100, {hasAffordance(kitchen_table, support)}, {}, {
  obj(kitchen_table). hasPhysicalQuality(kitchen_table, heavy). hasPhysicalQuality(kitchen_table, rigid). hasRole(kitchen_table, furnitureRole). affordsTask(kitchen_table, eatingDrinkingTask). affordsTask(kitchen_table, foodPreparationTask).
}).
#pos(e584@100, {hasAffordance(kitchen_utensil, chop)}, {}, {
  obj(kitchen_utensil). hasPhysicalQuality(kitchen_utensil, rigid). hasPhysicalQuality(kitchen_utensil, sharp). hasRole(kitchen_utensil, utensilRole). affordsTask(kitchen_utensil, foodPreparationTask).
}).
#pos(e585@100, {hasAffordance(kitchen_utensil, cut)}, {}, {
  obj(kitchen_utensil). hasPhysicalQuality(kitchen_utensil, rigid). hasPhysicalQuality(kitchen_utensil, sharp). hasRole(kitchen_utensil, utensilRole). affordsTask(kitchen_utensil, foodPreparationTask).
}).
#pos(e586@100, {hasAffordance(kitchen_utensil, heat)}, {}, {
  obj(kitchen_utensil). hasPhysicalQuality(kitchen_utensil, rigid). hasPhysicalQuality(kitchen_utensil, sharp). hasRole(kitchen_utensil, utensilRole). affordsTask(kitchen_utensil, foodPreparationTask).
}).
#pos(e587@100, {hasAffordance(kitchen_utensil, mix)}, {}, {
  obj(kitchen_utensil). hasPhysicalQuality(kitchen_utensil, rigid). hasPhysicalQuality(kitchen_utensil, sharp). hasRole(kitchen_utensil, utensilRole). affordsTask(kitchen_utensil, foodPreparationTask).
}).
#pos(e588@100, {hasAffordance(kitchen_utensil, peel)}, {}, {
  obj(kitchen_utensil). hasPhysicalQuality(kitchen_utensil, rigid). hasPhysicalQuality(kitchen_utensil, sharp). hasRole(kitchen_utensil, utensilRole). affordsTask(kitchen_utensil, foodPreparationTask).
}).
#pos(e589@100, {hasAffordance(kitchenette, break)}, {}, {
  obj(kitchenette). hasPhysicalQuality(kitchenette, heavy). hasPhysicalQuality(kitchenette, rigid). hasRole(kitchenette, cookwareRole). hasRole(kitchenette, storageContainerRole). affordsTask(kitchenette, eatingDrinkingTask). affordsTask(kitchenette, foodPreparationTask).
}).
#pos(e590@100, {hasAffordance(kitchenette, heat)}, {}, {
  obj(kitchenette). hasPhysicalQuality(kitchenette, heavy). hasPhysicalQuality(kitchenette, rigid). hasRole(kitchenette, cookwareRole). hasRole(kitchenette, storageContainerRole). affordsTask(kitchenette, eatingDrinkingTask). affordsTask(kitchenette, foodPreparationTask).
}).
#pos(e591@100, {hasAffordance(kitchenette, hold)}, {}, {
  obj(kitchenette). hasPhysicalQuality(kitchenette, heavy). hasPhysicalQuality(kitchenette, rigid). hasRole(kitchenette, cookwareRole). hasRole(kitchenette, storageContainerRole). affordsTask(kitchenette, eatingDrinkingTask). affordsTask(kitchenette, foodPreparationTask).
}).
#pos(e592@100, {hasAffordance(kleenex, wipe)}, {}, {
  obj(kleenex). hasPhysicalQuality(kleenex, lightweight). hasPhysicalQuality(kleenex, soft_Deformable). hasRole(kleenex, consumableRole). affordsTask(kleenex, hygieneTask).
}).
#pos(e593@100, {hasAffordance(knife, break)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e594@100, {hasAffordance(knife, chop)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e595@100, {hasAffordance(knife, crack)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e596@100, {hasAffordance(knife, cut)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e597@100, {hasAffordance(knife, dig)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e598@100, {hasAffordance(knife, entertain)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e599@100, {hasAffordance(knife, hold)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e600@100, {hasAffordance(knife, mark)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e601@100, {hasAffordance(knife, peel)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e602@100, {hasAffordance(knife, saw)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e603@100, {hasAffordance(knife, screw)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e604@100, {hasAffordance(knife, skin)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e605@100, {hasAffordance(knife, spread)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e606@100, {hasAffordance(knife, stick)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e607@100, {hasAffordance(knives, cut)}, {}, {
  obj(knives). hasPhysicalQuality(knives, rigid). hasPhysicalQuality(knives, sharp). hasRole(knives, utensilRole). affordsTask(knives, foodPreparationTask).
}).
#pos(e608@100, {hasAffordance(knives, heat)}, {}, {
  obj(knives). hasPhysicalQuality(knives, rigid). hasPhysicalQuality(knives, sharp). hasRole(knives, utensilRole). affordsTask(knives, foodPreparationTask).
}).
#pos(e609@100, {hasAffordance(knives, peel)}, {}, {
  obj(knives). hasPhysicalQuality(knives, rigid). hasPhysicalQuality(knives, sharp). hasRole(knives, utensilRole). affordsTask(knives, foodPreparationTask).
}).
#pos(e610@100, {hasAffordance(knives, spread)}, {}, {
  obj(knives). hasPhysicalQuality(knives, rigid). hasPhysicalQuality(knives, sharp). hasRole(knives, utensilRole). affordsTask(knives, foodPreparationTask).
}).
#pos(e611@100, {hasAffordance(knob, write)}, {}, {
  obj(knob). hasPhysicalQuality(knob, lightweight). hasPhysicalQuality(knob, rigid). hasRole(knob, toolRole). affordsTask(knob, maintenanceTask).
}).
#pos(e612@100, {hasAffordance(label_maker, file)}, {}, {
  obj(label_maker). hasPhysicalQuality(label_maker, electronic). hasPhysicalQuality(label_maker, lightweight). hasRole(label_maker, toolRole). affordsTask(label_maker, workStudyTask).
}).
#pos(e613@100, {hasAffordance(label_maker, mark)}, {}, {
  obj(label_maker). hasPhysicalQuality(label_maker, electronic). hasPhysicalQuality(label_maker, lightweight). hasRole(label_maker, toolRole). affordsTask(label_maker, workStudyTask).
}).
#pos(e614@100, {hasAffordance(ladder, fix)}, {}, {
  obj(ladder). hasPhysicalQuality(ladder, heavy). hasPhysicalQuality(ladder, rigid). hasRole(ladder, toolRole). affordsTask(ladder, maintenanceTask).
}).
#pos(e615@100, {hasAffordance(ladder, illuminate)}, {}, {
  obj(ladder). hasPhysicalQuality(ladder, heavy). hasPhysicalQuality(ladder, rigid). hasRole(ladder, toolRole). affordsTask(ladder, maintenanceTask).
}).
#pos(e616@100, {hasAffordance(ladder, repair)}, {}, {
  obj(ladder). hasPhysicalQuality(ladder, heavy). hasPhysicalQuality(ladder, rigid). hasRole(ladder, toolRole). affordsTask(ladder, maintenanceTask).
}).
#pos(e617@100, {hasAffordance(lamp, illuminate)}, {}, {
  obj(lamp). hasPhysicalQuality(lamp, electronic). hasPhysicalQuality(lamp, lightweight). hasRole(lamp, lightingRole). affordsTask(lamp, leisureTask).
}).
#pos(e618@100, {hasAffordance(lamp, read)}, {}, {
  obj(lamp). hasPhysicalQuality(lamp, electronic). hasPhysicalQuality(lamp, lightweight). hasRole(lamp, lightingRole). affordsTask(lamp, leisureTask).
}).
#pos(e619@100, {hasAffordance(led, dig)}, {}, {
  obj(led). hasPhysicalQuality(led, electronic). hasPhysicalQuality(led, lightweight). hasRole(led, toolRole). affordsTask(led, maintenanceTask).
}).
#pos(e620@100, {hasAffordance(led, display)}, {}, {
  obj(led). hasPhysicalQuality(led, electronic). hasPhysicalQuality(led, lightweight). hasRole(led, toolRole). affordsTask(led, maintenanceTask).
}).
#pos(e621@100, {hasAffordance(led, illuminate)}, {}, {
  obj(led). hasPhysicalQuality(led, electronic). hasPhysicalQuality(led, lightweight). hasRole(led, toolRole). affordsTask(led, maintenanceTask).
}).
#pos(e622@100, {hasAffordance(led, read)}, {}, {
  obj(led). hasPhysicalQuality(led, electronic). hasPhysicalQuality(led, lightweight). hasRole(led, toolRole). affordsTask(led, maintenanceTask).
}).
#pos(e623@100, {hasAffordance(level, time)}, {}, {
  obj(level). hasPhysicalQuality(level, rigid). hasRole(level, toolRole). affordsTask(level, maintenanceTask).
}).
#pos(e624@100, {hasAffordance(light, carry)}, {}, {
  obj(light). hasPhysicalQuality(light, electronic). hasPhysicalQuality(light, lightweight). hasRole(light, lightingRole). affordsTask(light, leisureTask).
}).
#pos(e625@100, {hasAffordance(light, comfort)}, {}, {
  obj(light). hasPhysicalQuality(light, electronic). hasPhysicalQuality(light, lightweight). hasRole(light, lightingRole). affordsTask(light, leisureTask).
}).
#pos(e626@100, {hasAffordance(light, illuminate)}, {}, {
  obj(light). hasPhysicalQuality(light, electronic). hasPhysicalQuality(light, lightweight). hasRole(light, lightingRole). affordsTask(light, leisureTask).
}).
#pos(e627@100, {hasAffordance(light, read)}, {}, {
  obj(light). hasPhysicalQuality(light, electronic). hasPhysicalQuality(light, lightweight). hasRole(light, lightingRole). affordsTask(light, leisureTask).
}).
#pos(e628@100, {hasAffordance(light_bulb, illuminate)}, {}, {
  obj(light_bulb). hasPhysicalQuality(light_bulb, electronic). hasPhysicalQuality(light_bulb, lightweight). hasRole(light_bulb, lightingRole). affordsTask(light_bulb, leisureTask).
}).
#pos(e629@100, {hasAffordance(light_source, illuminate)}, {}, {
  obj(light_source). hasPhysicalQuality(light_source, electronic). hasPhysicalQuality(light_source, heated). hasRole(light_source, lightingRole). affordsTask(light_source, leisureTask).
}).
#pos(e630@100, {hasAffordance(light_source, read)}, {}, {
  obj(light_source). hasPhysicalQuality(light_source, electronic). hasPhysicalQuality(light_source, heated). hasRole(light_source, lightingRole). affordsTask(light_source, leisureTask).
}).
#pos(e631@100, {hasAffordance(lightbulb, illuminate)}, {}, {
  obj(lightbulb). hasPhysicalQuality(lightbulb, electronic). hasPhysicalQuality(lightbulb, lightweight). hasRole(lightbulb, lightingRole). affordsTask(lightbulb, leisureTask).
}).
#pos(e632@100, {hasAffordance(line, carry)}, {}, {
  obj(line). hasPhysicalQuality(line, lightweight). hasPhysicalQuality(line, rigid). hasRole(line, toolRole). affordsTask(line, maintenanceTask).
}).
#pos(e633@100, {hasAffordance(line, cut)}, {}, {
  obj(line). hasPhysicalQuality(line, lightweight). hasPhysicalQuality(line, rigid). hasRole(line, toolRole). affordsTask(line, maintenanceTask).
}).
#pos(e634@100, {hasAffordance(line, decorate)}, {}, {
  obj(line). hasPhysicalQuality(line, lightweight). hasPhysicalQuality(line, rigid). hasRole(line, toolRole). affordsTask(line, maintenanceTask).
}).
#pos(e635@100, {hasAffordance(line, entertain)}, {}, {
  obj(line). hasPhysicalQuality(line, lightweight). hasPhysicalQuality(line, rigid). hasRole(line, toolRole). affordsTask(line, maintenanceTask).
}).
#pos(e636@100, {hasAffordance(line, file)}, {}, {
  obj(line). hasPhysicalQuality(line, lightweight). hasPhysicalQuality(line, rigid). hasRole(line, toolRole). affordsTask(line, maintenanceTask).
}).
#pos(e637@100, {hasAffordance(line, hold)}, {}, {
  obj(line). hasPhysicalQuality(line, lightweight). hasPhysicalQuality(line, rigid). hasRole(line, toolRole). affordsTask(line, maintenanceTask).
}).
#pos(e638@100, {hasAffordance(line, mark)}, {}, {
  obj(line). hasPhysicalQuality(line, lightweight). hasPhysicalQuality(line, rigid). hasRole(line, toolRole). affordsTask(line, maintenanceTask).
}).
#pos(e639@100, {hasAffordance(line, plug)}, {}, {
  obj(line). hasPhysicalQuality(line, lightweight). hasPhysicalQuality(line, rigid). hasRole(line, toolRole). affordsTask(line, maintenanceTask).
}).
#pos(e640@100, {hasAffordance(line, read)}, {}, {
  obj(line). hasPhysicalQuality(line, lightweight). hasPhysicalQuality(line, rigid). hasRole(line, toolRole). affordsTask(line, maintenanceTask).
}).
#pos(e641@100, {hasAffordance(line, saw)}, {}, {
  obj(line). hasPhysicalQuality(line, lightweight). hasPhysicalQuality(line, rigid). hasRole(line, toolRole). affordsTask(line, maintenanceTask).
}).
#pos(e642@100, {hasAffordance(line, screw)}, {}, {
  obj(line). hasPhysicalQuality(line, lightweight). hasPhysicalQuality(line, rigid). hasRole(line, toolRole). affordsTask(line, maintenanceTask).
}).
#pos(e643@100, {hasAffordance(line, smoothen)}, {}, {
  obj(line). hasPhysicalQuality(line, lightweight). hasPhysicalQuality(line, rigid). hasRole(line, toolRole). affordsTask(line, maintenanceTask).
}).
#pos(e644@100, {hasAffordance(line, spread)}, {}, {
  obj(line). hasPhysicalQuality(line, lightweight). hasPhysicalQuality(line, rigid). hasRole(line, toolRole). affordsTask(line, maintenanceTask).
}).
#pos(e645@100, {hasAffordance(line, time)}, {}, {
  obj(line). hasPhysicalQuality(line, lightweight). hasPhysicalQuality(line, rigid). hasRole(line, toolRole). affordsTask(line, maintenanceTask).
}).
#pos(e646@100, {hasAffordance(line, write)}, {}, {
  obj(line). hasPhysicalQuality(line, lightweight). hasPhysicalQuality(line, rigid). hasRole(line, toolRole). affordsTask(line, maintenanceTask).
}).
#pos(e647@100, {hasAffordance(linen, comfort)}, {}, {
  obj(linen). hasPhysicalQuality(linen, soft_Deformable). hasPhysicalQuality(linen, washable). hasRole(linen, clothingRole). affordsTask(linen, dressingTask).
}).
#pos(e648@100, {hasAffordance(linen, dry)}, {}, {
  obj(linen). hasPhysicalQuality(linen, soft_Deformable). hasPhysicalQuality(linen, washable). hasRole(linen, clothingRole). affordsTask(linen, dressingTask).
}).
#pos(e649@100, {hasAffordance(linen, wash)}, {}, {
  obj(linen). hasPhysicalQuality(linen, soft_Deformable). hasPhysicalQuality(linen, washable). hasRole(linen, clothingRole). affordsTask(linen, dressingTask).
}).
#pos(e650@100, {hasAffordance(linen_chest, clean)}, {}, {
  obj(linen_chest). hasPhysicalQuality(linen_chest, heavy). hasPhysicalQuality(linen_chest, rigid). hasRole(linen_chest, storageContainerRole). affordsTask(linen_chest, storageTask).
}).
#pos(e651@100, {hasAffordance(linen_chest, hold)}, {}, {
  obj(linen_chest). hasPhysicalQuality(linen_chest, heavy). hasPhysicalQuality(linen_chest, rigid). hasRole(linen_chest, storageContainerRole). affordsTask(linen_chest, storageTask).
}).
#pos(e652@100, {hasAffordance(linen_chest, store)}, {}, {
  obj(linen_chest). hasPhysicalQuality(linen_chest, heavy). hasPhysicalQuality(linen_chest, rigid). hasRole(linen_chest, storageContainerRole). affordsTask(linen_chest, storageTask).
}).
#pos(e653@100, {hasAffordance(linoleum, clean)}, {}, {
  obj(linoleum). hasPhysicalQuality(linoleum, fragile). hasRole(linoleum, furnitureRole).
}).
#pos(e654@100, {hasAffordance(linoleum, cover)}, {}, {
  obj(linoleum). hasPhysicalQuality(linoleum, fragile). hasRole(linoleum, furnitureRole).
}).
#pos(e655@100, {hasAffordance(liquor_glass, heat)}, {}, {
  obj(liquor_glass). hasPhysicalQuality(liquor_glass, lightweight). hasPhysicalQuality(liquor_glass, rigid). hasRole(liquor_glass, utensilRole). affordsTask(liquor_glass, eatingDrinkingTask).
}).
#pos(e656@100, {hasAffordance(liquor_glass, hold)}, {}, {
  obj(liquor_glass). hasPhysicalQuality(liquor_glass, lightweight). hasPhysicalQuality(liquor_glass, rigid). hasRole(liquor_glass, utensilRole). affordsTask(liquor_glass, eatingDrinkingTask).
}).
#pos(e657@100, {hasAffordance(liquor_glass, time)}, {}, {
  obj(liquor_glass). hasPhysicalQuality(liquor_glass, lightweight). hasPhysicalQuality(liquor_glass, rigid). hasRole(liquor_glass, utensilRole). affordsTask(liquor_glass, eatingDrinkingTask).
}).
#pos(e658@100, {hasAffordance(lock, control)}, {}, {
  obj(lock). hasPhysicalQuality(lock, heavy). hasRole(lock, toolRole). affordsTask(lock, maintenanceTask).
}).
#pos(e659@100, {hasAffordance(love_seat, entertain)}, {}, {
  obj(love_seat). hasPhysicalQuality(love_seat, heavy). hasPhysicalQuality(love_seat, soft_Deformable). hasRole(love_seat, furnitureRole). affordsTask(love_seat, storageTask).
}).
#pos(e660@100, {hasAffordance(luggage, carry)}, {}, {
  obj(luggage). hasPhysicalQuality(luggage, hasContainer). hasPhysicalQuality(luggage, lightweight). hasRole(luggage, storageContainerRole).
}).
#pos(e661@100, {hasAffordance(machine, bend)}, {}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e662@100, {hasAffordance(machine, break)}, {}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e663@100, {hasAffordance(machine, carry)}, {}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e664@100, {hasAffordance(machine, clean)}, {}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e665@100, {hasAffordance(machine, contain)}, {}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e666@100, {hasAffordance(machine, cut)}, {}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e667@100, {hasAffordance(machine, dig)}, {}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e668@100, {hasAffordance(machine, drill)}, {}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e669@100, {hasAffordance(machine, dry)}, {}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e670@100, {hasAffordance(machine, entertain)}, {}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e671@100, {hasAffordance(machine, exercise)}, {}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e672@100, {hasAffordance(machine, grasp)}, {}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e673@100, {hasAffordance(machine, grind)}, {}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e674@100, {hasAffordance(machine, hammer)}, {}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e675@100, {hasAffordance(machine, heat)}, {}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e676@100, {hasAffordance(machine, lift)}, {}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e677@100, {hasAffordance(machine, mix)}, {}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e678@100, {hasAffordance(machine, pour)}, {}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e679@100, {hasAffordance(machine, press)}, {}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e680@100, {hasAffordance(machine, repair)}, {}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e681@100, {hasAffordance(machine, saw)}, {}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e682@100, {hasAffordance(machine, screw)}, {}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e683@100, {hasAffordance(machine, smoothen)}, {}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e684@100, {hasAffordance(machine, solder)}, {}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e685@100, {hasAffordance(machine, spread)}, {}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e686@100, {hasAffordance(machine, staple)}, {}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e687@100, {hasAffordance(machine, store)}, {}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e688@100, {hasAffordance(machine, time)}, {}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e689@100, {hasAffordance(machine, wash)}, {}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e690@100, {hasAffordance(machine, write)}, {}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e691@100, {hasAffordance(magazines, read)}, {}, {
  obj(magazines). hasPhysicalQuality(magazines, lightweight). hasRole(magazines, documentRole). affordsTask(magazines, leisureTask).
}).
#pos(e692@100, {hasAffordance(magnet, smoothen)}, {}, {
  obj(magnet). hasPhysicalQuality(magnet, rigid). hasRole(magnet, toolRole). affordsTask(magnet, maintenanceTask).
}).
#pos(e693@100, {hasAffordance(mail, time)}, {}, {
  obj(mail). hasRole(mail, consumableRole).
}).
#pos(e694@100, {hasAffordance(map, decorate)}, {}, {
  obj(map). hasPhysicalQuality(map, lightweight). hasRole(map, toolRole). affordsTask(map, leisureTask).
}).
#pos(e695@100, {hasAffordance(marble, decorate)}, {}, {
  obj(marble). hasPhysicalQuality(marble, granular). hasPhysicalQuality(marble, rigid). hasRole(marble, decorationRole).
}).
#pos(e696@100, {hasAffordance(marble, entertain)}, {}, {
  obj(marble). hasPhysicalQuality(marble, granular). hasPhysicalQuality(marble, rigid). hasRole(marble, decorationRole).
}).
#pos(e697@100, {hasAffordance(marker, entertain)}, {}, {
  obj(marker). hasPhysicalQuality(marker, lightweight). hasRole(marker, toolRole). affordsTask(marker, foodPreparationTask).
}).
#pos(e698@100, {hasAffordance(marker, mark)}, {}, {
  obj(marker). hasPhysicalQuality(marker, lightweight). hasRole(marker, toolRole). affordsTask(marker, foodPreparationTask).
}).
#pos(e699@100, {hasAffordance(marker, read)}, {}, {
  obj(marker). hasPhysicalQuality(marker, lightweight). hasRole(marker, toolRole). affordsTask(marker, foodPreparationTask).
}).
#pos(e700@100, {hasAffordance(marker, write)}, {}, {
  obj(marker). hasPhysicalQuality(marker, lightweight). hasRole(marker, toolRole). affordsTask(marker, foodPreparationTask).
}).
#pos(e701@100, {hasAffordance(mat, clean)}, {}, {
  obj(mat). hasPhysicalQuality(mat, lightweight). hasPhysicalQuality(mat, soft_Deformable). hasRole(mat, furnitureRole). affordsTask(mat, storageTask).
}).
#pos(e702@100, {hasAffordance(mat, exercise)}, {}, {
  obj(mat). hasPhysicalQuality(mat, lightweight). hasPhysicalQuality(mat, soft_Deformable). hasRole(mat, furnitureRole). affordsTask(mat, storageTask).
}).
#pos(e703@100, {hasAffordance(mat, wipe)}, {}, {
  obj(mat). hasPhysicalQuality(mat, lightweight). hasPhysicalQuality(mat, soft_Deformable). hasRole(mat, furnitureRole). affordsTask(mat, storageTask).
}).
#pos(e704@100, {hasAffordance(matches, illuminate)}, {}, {
  obj(matches). hasPhysicalQuality(matches, fragile). hasPhysicalQuality(matches, lightweight). hasRole(matches, toolRole). affordsTask(matches, maintenanceTask).
}).
#pos(e705@100, {hasAffordance(meat, heat)}, {}, {
  obj(meat). hasPhysicalQuality(meat, perishable). hasRole(meat, consumableRole). affordsTask(meat, eatingDrinkingTask). affordsTask(meat, foodPreparationTask).
}).
#pos(e706@100, {hasAffordance(mechanical_pencil, write)}, {}, {
  obj(mechanical_pencil). hasPhysicalQuality(mechanical_pencil, lightweight). hasPhysicalQuality(mechanical_pencil, rigid). hasRole(mechanical_pencil, toolRole). affordsTask(mechanical_pencil, workStudyTask).
}).
#pos(e707@100, {hasAffordance(medicine, press)}, {}, {
  obj(medicine). hasPhysicalQuality(medicine, perishable). hasRole(medicine, consumableRole). affordsTask(medicine, eatingDrinkingTask).
}).
#pos(e708@100, {hasAffordance(microwave, dry)}, {}, {
  obj(microwave). hasPhysicalQuality(microwave, electronic). hasPhysicalQuality(microwave, heated). hasRole(microwave, applianceRole). affordsTask(microwave, foodPreparationTask).
}).
#pos(e709@100, {hasAffordance(microwave, heat)}, {}, {
  obj(microwave). hasPhysicalQuality(microwave, electronic). hasPhysicalQuality(microwave, heated). hasRole(microwave, applianceRole). affordsTask(microwave, foodPreparationTask).
}).
#pos(e710@100, {hasAffordance(microwave_oven, heat)}, {}, {
  obj(microwave_oven). hasPhysicalQuality(microwave_oven, electronic). hasPhysicalQuality(microwave_oven, heated). hasRole(microwave_oven, applianceRole). affordsTask(microwave_oven, foodPreparationTask).
}).
#pos(e711@100, {hasAffordance(milk, contain)}, {}, {
  obj(milk). hasPhysicalQuality(milk, perishable). hasRole(milk, consumableRole). affordsTask(milk, eatingDrinkingTask).
}).
#pos(e712@100, {hasAffordance(mirror, illuminate)}, {}, {
  obj(mirror). hasPhysicalQuality(mirror, electronic). hasPhysicalQuality(mirror, rigid). hasRole(mirror, decorationRole).
}).
#pos(e713@100, {hasAffordance(monitor, display)}, {}, {
  obj(monitor). hasRole(monitor, entertainmentRole). affordsTask(monitor, leisureTask).
}).
#pos(e714@100, {hasAffordance(motherboard, control)}, {}, {
  obj(motherboard). hasPhysicalQuality(motherboard, electronic). hasPhysicalQuality(motherboard, rigid). hasRole(motherboard, toolRole).
}).
#pos(e715@100, {hasAffordance(motherboard, hold)}, {}, {
  obj(motherboard). hasPhysicalQuality(motherboard, electronic). hasPhysicalQuality(motherboard, rigid). hasRole(motherboard, toolRole).
}).
#pos(e716@100, {hasAffordance(mouse, control)}, {}, {
  obj(mouse). hasPhysicalQuality(mouse, lightweight). hasRole(mouse, consumableRole).
}).
#pos(e717@100, {hasAffordance(mouthwash, clean)}, {}, {
  obj(mouthwash). hasPhysicalQuality(mouthwash, liquid). hasPhysicalQuality(mouthwash, toxic_Hazardous). hasRole(mouthwash, cleaningToolRole). affordsTask(mouthwash, hygieneTask).
}).
#pos(e718@100, {hasAffordance(mouthwash, read)}, {}, {
  obj(mouthwash). hasPhysicalQuality(mouthwash, liquid). hasPhysicalQuality(mouthwash, toxic_Hazardous). hasRole(mouthwash, cleaningToolRole). affordsTask(mouthwash, hygieneTask).
}).
#pos(e719@100, {hasAffordance(mug, clean)}, {}, {
  obj(mug). hasPhysicalQuality(mug, hasContainer). hasPhysicalQuality(mug, liquid). hasRole(mug, utensilRole). affordsTask(mug, eatingDrinkingTask).
}).
#pos(e720@100, {hasAffordance(mug, contain)}, {}, {
  obj(mug). hasPhysicalQuality(mug, hasContainer). hasPhysicalQuality(mug, liquid). hasRole(mug, utensilRole). affordsTask(mug, eatingDrinkingTask).
}).
#pos(e721@100, {hasAffordance(mug, hold)}, {}, {
  obj(mug). hasPhysicalQuality(mug, hasContainer). hasPhysicalQuality(mug, liquid). hasRole(mug, utensilRole). affordsTask(mug, eatingDrinkingTask).
}).
#pos(e722@100, {hasAffordance(mug, pour)}, {}, {
  obj(mug). hasPhysicalQuality(mug, hasContainer). hasPhysicalQuality(mug, liquid). hasRole(mug, utensilRole). affordsTask(mug, eatingDrinkingTask).
}).
#pos(e723@100, {hasAffordance(music_stand, entertain)}, {}, {
  obj(music_stand). hasPhysicalQuality(music_stand, lightweight). hasPhysicalQuality(music_stand, rigid). hasRole(music_stand, furnitureRole). affordsTask(music_stand, workStudyTask).
}).
#pos(e724@100, {hasAffordance(music_stand, hold)}, {}, {
  obj(music_stand). hasPhysicalQuality(music_stand, lightweight). hasPhysicalQuality(music_stand, rigid). hasRole(music_stand, furnitureRole). affordsTask(music_stand, workStudyTask).
}).
#pos(e725@100, {hasAffordance(music_stand, read)}, {}, {
  obj(music_stand). hasPhysicalQuality(music_stand, lightweight). hasPhysicalQuality(music_stand, rigid). hasRole(music_stand, furnitureRole). affordsTask(music_stand, workStudyTask).
}).
#pos(e726@100, {hasAffordance(musical_instrument, entertain)}, {}, {
  obj(musical_instrument). hasRole(musical_instrument, musicalInstrumentRole).
}).
#pos(e727@100, {hasAffordance(nail_clippers, cut)}, {}, {
  obj(nail_clippers). hasPhysicalQuality(nail_clippers, rigid). hasPhysicalQuality(nail_clippers, sharp). hasRole(nail_clippers, toolRole). affordsTask(nail_clippers, hygieneTask).
}).
#pos(e728@100, {hasAffordance(nail_clippers, hammer)}, {}, {
  obj(nail_clippers). hasPhysicalQuality(nail_clippers, rigid). hasPhysicalQuality(nail_clippers, sharp). hasRole(nail_clippers, toolRole). affordsTask(nail_clippers, hygieneTask).
}).
#pos(e729@100, {hasAffordance(nest_of_tables, store)}, {}, {
  obj(nest_of_tables). hasRole(nest_of_tables, furnitureRole).
}).
#pos(e730@100, {hasAffordance(net, contain)}, {}, {
  obj(net). hasRole(net, toolRole).
}).
#pos(e731@100, {hasAffordance(net, control)}, {}, {
  obj(net). hasRole(net, toolRole).
}).
#pos(e732@100, {hasAffordance(net, hold)}, {}, {
  obj(net). hasRole(net, toolRole).
}).
#pos(e733@100, {hasAffordance(night_table, hold)}, {}, {
  obj(night_table). hasPhysicalQuality(night_table, heavy). hasPhysicalQuality(night_table, rigid). hasRole(night_table, furnitureRole). affordsTask(night_table, storageTask).
}).
#pos(e734@100, {hasAffordance(night_table, illuminate)}, {}, {
  obj(night_table). hasPhysicalQuality(night_table, heavy). hasPhysicalQuality(night_table, rigid). hasRole(night_table, furnitureRole). affordsTask(night_table, storageTask).
}).
#pos(e735@100, {hasAffordance(notebook, hold)}, {}, {
  obj(notebook). hasPhysicalQuality(notebook, lightweight). hasPhysicalQuality(notebook, rigid). hasRole(notebook, documentRole). affordsTask(notebook, workStudyTask).
}).
#pos(e736@100, {hasAffordance(notebook, store)}, {}, {
  obj(notebook). hasPhysicalQuality(notebook, lightweight). hasPhysicalQuality(notebook, rigid). hasRole(notebook, documentRole). affordsTask(notebook, workStudyTask).
}).
#pos(e737@100, {hasAffordance(notebook, write)}, {}, {
  obj(notebook). hasPhysicalQuality(notebook, lightweight). hasPhysicalQuality(notebook, rigid). hasRole(notebook, documentRole). affordsTask(notebook, workStudyTask).
}).
#pos(e738@100, {hasAffordance(notepad, carry)}, {}, {
  obj(notepad). hasPhysicalQuality(notepad, lightweight). hasPhysicalQuality(notepad, rigid). hasRole(notepad, documentRole). affordsTask(notepad, workStudyTask).
}).
#pos(e739@100, {hasAffordance(notepad, write)}, {}, {
  obj(notepad). hasPhysicalQuality(notepad, lightweight). hasPhysicalQuality(notepad, rigid). hasRole(notepad, documentRole). affordsTask(notepad, workStudyTask).
}).
#pos(e740@100, {hasAffordance(nylon, cover)}, {}, {
  obj(nylon). hasPhysicalQuality(nylon, lightweight). hasPhysicalQuality(nylon, soft_Deformable).
}).
#pos(e741@100, {hasAffordance(oilcloth, clean)}, {}, {
  obj(oilcloth). hasPhysicalQuality(oilcloth, soft_Deformable). hasPhysicalQuality(oilcloth, washable). hasRole(oilcloth, clothingRole). affordsTask(oilcloth, leisureTask).
}).
#pos(e742@100, {hasAffordance(oilcloth, cover)}, {}, {
  obj(oilcloth). hasPhysicalQuality(oilcloth, soft_Deformable). hasPhysicalQuality(oilcloth, washable). hasRole(oilcloth, clothingRole). affordsTask(oilcloth, leisureTask).
}).
#pos(e743@100, {hasAffordance(one_person_chair, operate)}, {}, {
  obj(one_person_chair). hasPhysicalQuality(one_person_chair, rigid). hasRole(one_person_chair, furnitureRole). affordsTask(one_person_chair, leisureTask).
}).
#pos(e744@100, {hasAffordance(one_person_chair, read)}, {}, {
  obj(one_person_chair). hasPhysicalQuality(one_person_chair, rigid). hasRole(one_person_chair, furnitureRole). affordsTask(one_person_chair, leisureTask).
}).
#pos(e745@100, {hasAffordance(oven, cool)}, {}, {
  obj(oven). hasPhysicalQuality(oven, heated). hasRole(oven, cookwareRole). affordsTask(oven, foodPreparationTask).
}).
#pos(e746@100, {hasAffordance(oven, heat)}, {}, {
  obj(oven). hasPhysicalQuality(oven, heated). hasRole(oven, cookwareRole). affordsTask(oven, foodPreparationTask).
}).
#pos(e747@100, {hasAffordance(page, hold)}, {}, {
  obj(page). hasRole(page, documentRole).
}).
#pos(e748@100, {hasAffordance(page, read)}, {}, {
  obj(page). hasRole(page, documentRole).
}).
#pos(e749@100, {hasAffordance(page, write)}, {}, {
  obj(page). hasRole(page, documentRole).
}).
#pos(e750@100, {hasAffordance(pail, carry)}, {}, {
  obj(pail). hasPhysicalQuality(pail, hasContainer). hasRole(pail, storageContainerRole). affordsTask(pail, storageTask).
}).
#pos(e751@100, {hasAffordance(pail, entertain)}, {}, {
  obj(pail). hasPhysicalQuality(pail, hasContainer). hasRole(pail, storageContainerRole). affordsTask(pail, storageTask).
}).
#pos(e752@100, {hasAffordance(pail, hold)}, {}, {
  obj(pail). hasPhysicalQuality(pail, hasContainer). hasRole(pail, storageContainerRole). affordsTask(pail, storageTask).
}).
#pos(e753@100, {hasAffordance(pail, smoothen)}, {}, {
  obj(pail). hasPhysicalQuality(pail, hasContainer). hasRole(pail, storageContainerRole). affordsTask(pail, storageTask).
}).
#pos(e754@100, {hasAffordance(paint, dry)}, {}, {
  obj(paint). hasPhysicalQuality(paint, liquid). hasPhysicalQuality(paint, toxic_Hazardous). affordsTask(paint, maintenanceTask).
}).
#pos(e755@100, {hasAffordance(pair_of_pants, cover)}, {}, {
  obj(pair_of_pants). hasPhysicalQuality(pair_of_pants, lightweight). hasPhysicalQuality(pair_of_pants, soft_Deformable). hasRole(pair_of_pants, clothingRole). affordsTask(pair_of_pants, dressingTask).
}).
#pos(e756@100, {hasAffordance(pair_of_pants, press)}, {}, {
  obj(pair_of_pants). hasPhysicalQuality(pair_of_pants, lightweight). hasPhysicalQuality(pair_of_pants, soft_Deformable). hasRole(pair_of_pants, clothingRole). affordsTask(pair_of_pants, dressingTask).
}).
#pos(e757@100, {hasAffordance(pair_of_scissors, cut)}, {}, {
  obj(pair_of_scissors). hasPhysicalQuality(pair_of_scissors, rigid). hasPhysicalQuality(pair_of_scissors, sharp). hasRole(pair_of_scissors, toolRole). affordsTask(pair_of_scissors, maintenanceTask).
}).
#pos(e758@100, {hasAffordance(pan, heat)}, {}, {
  obj(pan). hasPhysicalQuality(pan, heated). hasPhysicalQuality(pan, rigid). hasRole(pan, cookwareRole). affordsTask(pan, foodPreparationTask).
}).
#pos(e759@100, {hasAffordance(pan, store)}, {}, {
  obj(pan). hasPhysicalQuality(pan, heated). hasPhysicalQuality(pan, rigid). hasRole(pan, cookwareRole). affordsTask(pan, foodPreparationTask).
}).
#pos(e760@100, {hasAffordance(pantry, cool)}, {}, {
  obj(pantry). hasPhysicalQuality(pantry, hasContainer). hasRole(pantry, applianceRole). hasRole(pantry, storageContainerRole). affordsTask(pantry, storageTask).
}).
#pos(e761@100, {hasAffordance(pantry, store)}, {}, {
  obj(pantry). hasPhysicalQuality(pantry, hasContainer). hasRole(pantry, applianceRole). hasRole(pantry, storageContainerRole). affordsTask(pantry, storageTask).
}).
#pos(e762@100, {hasAffordance(paper, clean)}, {}, {
  obj(paper). hasPhysicalQuality(paper, flammable). hasPhysicalQuality(paper, fragile). hasRole(paper, consumableRole). affordsTask(paper, eatingDrinkingTask).
}).
#pos(e763@100, {hasAffordance(paper, cover)}, {}, {
  obj(paper). hasPhysicalQuality(paper, flammable). hasPhysicalQuality(paper, fragile). hasRole(paper, consumableRole). affordsTask(paper, eatingDrinkingTask).
}).
#pos(e764@100, {hasAffordance(paper, cut)}, {}, {
  obj(paper). hasPhysicalQuality(paper, flammable). hasPhysicalQuality(paper, fragile). hasRole(paper, consumableRole). affordsTask(paper, eatingDrinkingTask).
}).
#pos(e765@100, {hasAffordance(paper, read)}, {}, {
  obj(paper). hasPhysicalQuality(paper, flammable). hasPhysicalQuality(paper, fragile). hasRole(paper, consumableRole). affordsTask(paper, eatingDrinkingTask).
}).
#pos(e766@100, {hasAffordance(paper, skin)}, {}, {
  obj(paper). hasPhysicalQuality(paper, flammable). hasPhysicalQuality(paper, fragile). hasRole(paper, consumableRole). affordsTask(paper, eatingDrinkingTask).
}).
#pos(e767@100, {hasAffordance(paper, staple)}, {}, {
  obj(paper). hasPhysicalQuality(paper, flammable). hasPhysicalQuality(paper, fragile). hasRole(paper, consumableRole). affordsTask(paper, eatingDrinkingTask).
}).
#pos(e768@100, {hasAffordance(paper, wrap)}, {}, {
  obj(paper). hasPhysicalQuality(paper, flammable). hasPhysicalQuality(paper, fragile). hasRole(paper, consumableRole). affordsTask(paper, eatingDrinkingTask).
}).
#pos(e769@100, {hasAffordance(paper, write)}, {}, {
  obj(paper). hasPhysicalQuality(paper, flammable). hasPhysicalQuality(paper, fragile). hasRole(paper, consumableRole). affordsTask(paper, eatingDrinkingTask).
}).
#pos(e770@100, {hasAffordance(paper_and_pencil, write)}, {}, {
  obj(paper_and_pencil). hasPhysicalQuality(paper_and_pencil, lightweight). hasPhysicalQuality(paper_and_pencil, rigid). hasRole(paper_and_pencil, toolRole). affordsTask(paper_and_pencil, workStudyTask).
}).
#pos(e771@100, {hasAffordance(paper_clip, bend)}, {}, {
  obj(paper_clip). hasPhysicalQuality(paper_clip, lightweight). hasPhysicalQuality(paper_clip, rigid). hasRole(paper_clip, toolRole). affordsTask(paper_clip, maintenanceTask).
}).
#pos(e772@100, {hasAffordance(paper_clip, clean)}, {}, {
  obj(paper_clip). hasPhysicalQuality(paper_clip, lightweight). hasPhysicalQuality(paper_clip, rigid). hasRole(paper_clip, toolRole). affordsTask(paper_clip, maintenanceTask).
}).
#pos(e773@100, {hasAffordance(paper_clip, file)}, {}, {
  obj(paper_clip). hasPhysicalQuality(paper_clip, lightweight). hasPhysicalQuality(paper_clip, rigid). hasRole(paper_clip, toolRole). affordsTask(paper_clip, maintenanceTask).
}).
#pos(e774@100, {hasAffordance(paper_clip, hold)}, {}, {
  obj(paper_clip). hasPhysicalQuality(paper_clip, lightweight). hasPhysicalQuality(paper_clip, rigid). hasRole(paper_clip, toolRole). affordsTask(paper_clip, maintenanceTask).
}).
#pos(e775@100, {hasAffordance(paper_clip, screw)}, {}, {
  obj(paper_clip). hasPhysicalQuality(paper_clip, lightweight). hasPhysicalQuality(paper_clip, rigid). hasRole(paper_clip, toolRole). affordsTask(paper_clip, maintenanceTask).
}).
#pos(e776@100, {hasAffordance(paper_clips, screw)}, {}, {
  obj(paper_clips). hasPhysicalQuality(paper_clips, lightweight). hasPhysicalQuality(paper_clips, rigid). hasRole(paper_clips, toolRole). affordsTask(paper_clips, maintenanceTask).
}).
#pos(e777@100, {hasAffordance(paper_fastener, screw)}, {}, {
  obj(paper_fastener). hasPhysicalQuality(paper_fastener, lightweight). hasPhysicalQuality(paper_fastener, rigid). hasRole(paper_fastener, toolRole). affordsTask(paper_fastener, maintenanceTask).
}).
#pos(e778@100, {hasAffordance(paper_towels, wipe)}, {}, {
  obj(paper_towels). hasPhysicalQuality(paper_towels, lightweight). hasPhysicalQuality(paper_towels, soft_Deformable). hasPhysicalQuality(paper_towels, washable). hasRole(paper_towels, cleaningToolRole). affordsTask(paper_towels, cleaningTask).
}).
#pos(e779@100, {hasAffordance(parlor, entertain)}, {}, {
  obj(parlor). hasRole(parlor, furnitureRole).
}).
#pos(e780@100, {hasAffordance(patio_door, plug)}, {}, {
  obj(patio_door). hasPhysicalQuality(patio_door, heavy). hasPhysicalQuality(patio_door, rigid). hasRole(patio_door, furnitureRole). affordsTask(patio_door, leisureTask).
}).
#pos(e781@100, {hasAffordance(peanut_butter, spread)}, {}, {
  obj(peanut_butter). hasPhysicalQuality(peanut_butter, liquid). hasPhysicalQuality(peanut_butter, perishable). hasRole(peanut_butter, consumableRole). affordsTask(peanut_butter, eatingDrinkingTask).
}).
#pos(e782@100, {hasAffordance(pen, hold)}, {}, {
  obj(pen). hasPhysicalQuality(pen, lightweight). hasPhysicalQuality(pen, rigid). hasRole(pen, toolRole). affordsTask(pen, workStudyTask).
}).
#pos(e783@100, {hasAffordance(pen, mark)}, {}, {
  obj(pen). hasPhysicalQuality(pen, lightweight). hasPhysicalQuality(pen, rigid). hasRole(pen, toolRole). affordsTask(pen, workStudyTask).
}).
#pos(e784@100, {hasAffordance(pen, write)}, {}, {
  obj(pen). hasPhysicalQuality(pen, lightweight). hasPhysicalQuality(pen, rigid). hasRole(pen, toolRole). affordsTask(pen, workStudyTask).
}).
#pos(e785@100, {hasAffordance(pencil, break)}, {}, {
  obj(pencil). hasPhysicalQuality(pencil, lightweight). hasPhysicalQuality(pencil, rigid). hasRole(pencil, toolRole).
}).
#pos(e786@100, {hasAffordance(pencil, mark)}, {}, {
  obj(pencil). hasPhysicalQuality(pencil, lightweight). hasPhysicalQuality(pencil, rigid). hasRole(pencil, toolRole).
}).
#pos(e787@100, {hasAffordance(pencil, write)}, {}, {
  obj(pencil). hasPhysicalQuality(pencil, lightweight). hasPhysicalQuality(pencil, rigid). hasRole(pencil, toolRole).
}).
#pos(e788@100, {hasAffordance(pencil_sharpener, cut)}, {}, {
  obj(pencil_sharpener). hasPhysicalQuality(pencil_sharpener, heavy). hasPhysicalQuality(pencil_sharpener, rigid). hasRole(pencil_sharpener, toolRole). affordsTask(pencil_sharpener, maintenanceTask).
}).
#pos(e789@100, {hasAffordance(pencil_sharpener, grind)}, {}, {
  obj(pencil_sharpener). hasPhysicalQuality(pencil_sharpener, heavy). hasPhysicalQuality(pencil_sharpener, rigid). hasRole(pencil_sharpener, toolRole). affordsTask(pencil_sharpener, maintenanceTask).
}).
#pos(e790@100, {hasAffordance(pencil_sharpener, read)}, {}, {
  obj(pencil_sharpener). hasPhysicalQuality(pencil_sharpener, heavy). hasPhysicalQuality(pencil_sharpener, rigid). hasRole(pencil_sharpener, toolRole). affordsTask(pencil_sharpener, maintenanceTask).
}).
#pos(e791@100, {hasAffordance(pencil_sharpener, repair)}, {}, {
  obj(pencil_sharpener). hasPhysicalQuality(pencil_sharpener, heavy). hasPhysicalQuality(pencil_sharpener, rigid). hasRole(pencil_sharpener, toolRole). affordsTask(pencil_sharpener, maintenanceTask).
}).
#pos(e792@100, {hasAffordance(pencil_sharpener, time)}, {}, {
  obj(pencil_sharpener). hasPhysicalQuality(pencil_sharpener, heavy). hasPhysicalQuality(pencil_sharpener, rigid). hasRole(pencil_sharpener, toolRole). affordsTask(pencil_sharpener, maintenanceTask).
}).
#pos(e793@100, {hasAffordance(phillips_head_screwdriver, fix)}, {}, {
  obj(phillips_head_screwdriver). hasPhysicalQuality(phillips_head_screwdriver, heavy). hasPhysicalQuality(phillips_head_screwdriver, rigid). hasRole(phillips_head_screwdriver, toolRole). affordsTask(phillips_head_screwdriver, maintenanceTask).
}).
#pos(e794@100, {hasAffordance(phillips_head_screwdriver, screw)}, {}, {
  obj(phillips_head_screwdriver). hasPhysicalQuality(phillips_head_screwdriver, heavy). hasPhysicalQuality(phillips_head_screwdriver, rigid). hasRole(phillips_head_screwdriver, toolRole). affordsTask(phillips_head_screwdriver, maintenanceTask).
}).
#pos(e795@100, {hasAffordance(phillips_screwdriver, screw)}, {}, {
  obj(phillips_screwdriver). hasPhysicalQuality(phillips_screwdriver, lightweight). hasPhysicalQuality(phillips_screwdriver, rigid). hasRole(phillips_screwdriver, toolRole). affordsTask(phillips_screwdriver, maintenanceTask).
}).
#pos(e796@100, {hasAffordance(phone, time)}, {}, {
  obj(phone). hasPhysicalQuality(phone, electronic). hasPhysicalQuality(phone, lightweight). hasRole(phone, toolRole). affordsTask(phone, workStudyTask).
}).
#pos(e797@100, {hasAffordance(piano, entertain)}, {}, {
  obj(piano). hasPhysicalQuality(piano, electronic). hasPhysicalQuality(piano, rigid). hasRole(piano, musicalInstrumentRole). affordsTask(piano, leisureTask).
}).
#pos(e798@100, {hasAffordance(picnic_basket, carry)}, {}, {
  obj(picnic_basket). hasPhysicalQuality(picnic_basket, hasContainer). hasRole(picnic_basket, furnitureRole). hasRole(picnic_basket, storageContainerRole). affordsTask(picnic_basket, eatingDrinkingTask). affordsTask(picnic_basket, foodPreparationTask).
}).
#pos(e799@100, {hasAffordance(picnic_basket, hold)}, {}, {
  obj(picnic_basket). hasPhysicalQuality(picnic_basket, hasContainer). hasRole(picnic_basket, furnitureRole). hasRole(picnic_basket, storageContainerRole). affordsTask(picnic_basket, eatingDrinkingTask). affordsTask(picnic_basket, foodPreparationTask).
}).
#pos(e800@100, {hasAffordance(picnic_basket, smoothen)}, {}, {
  obj(picnic_basket). hasPhysicalQuality(picnic_basket, hasContainer). hasRole(picnic_basket, furnitureRole). hasRole(picnic_basket, storageContainerRole). affordsTask(picnic_basket, eatingDrinkingTask). affordsTask(picnic_basket, foodPreparationTask).
}).
#pos(e801@100, {hasAffordance(picnic_basket, store)}, {}, {
  obj(picnic_basket). hasPhysicalQuality(picnic_basket, hasContainer). hasRole(picnic_basket, furnitureRole). hasRole(picnic_basket, storageContainerRole). affordsTask(picnic_basket, eatingDrinkingTask). affordsTask(picnic_basket, foodPreparationTask).
}).
#pos(e802@100, {hasAffordance(picture_frame, display)}, {}, {
  obj(picture_frame). hasPhysicalQuality(picture_frame, lightweight). hasPhysicalQuality(picture_frame, rigid). hasRole(picture_frame, decorationRole).
}).
#pos(e803@100, {hasAffordance(pillow_case, clean)}, {}, {
  obj(pillow_case). hasPhysicalQuality(pillow_case, soft_Deformable). hasPhysicalQuality(pillow_case, washable). hasRole(pillow_case, beddingRole). affordsTask(pillow_case, sleepingTask).
}).
#pos(e804@100, {hasAffordance(pillow_case, cover)}, {}, {
  obj(pillow_case). hasPhysicalQuality(pillow_case, soft_Deformable). hasPhysicalQuality(pillow_case, washable). hasRole(pillow_case, beddingRole). affordsTask(pillow_case, sleepingTask).
}).
#pos(e805@100, {hasAffordance(pillow_case, hold)}, {}, {
  obj(pillow_case). hasPhysicalQuality(pillow_case, soft_Deformable). hasPhysicalQuality(pillow_case, washable). hasRole(pillow_case, beddingRole). affordsTask(pillow_case, sleepingTask).
}).
#pos(e806@100, {hasAffordance(pipe, carry)}, {}, {
  obj(pipe). hasPhysicalQuality(pipe, heavy). hasRole(pipe, toolRole). affordsTask(pipe, maintenanceTask).
}).
#pos(e807@100, {hasAffordance(plastic, cover)}, {}, {
  obj(plastic). hasPhysicalQuality(plastic, granular). hasPhysicalQuality(plastic, rigid).
}).
#pos(e808@100, {hasAffordance(plastic, melt)}, {}, {
  obj(plastic). hasPhysicalQuality(plastic, granular). hasPhysicalQuality(plastic, rigid).
}).
#pos(e809@100, {hasAffordance(plastic, time)}, {}, {
  obj(plastic). hasPhysicalQuality(plastic, granular). hasPhysicalQuality(plastic, rigid).
}).
#pos(e810@100, {hasAffordance(plate, fix)}, {}, {
  obj(plate). hasPhysicalQuality(plate, hasContainer). hasPhysicalQuality(plate, rigid). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e811@100, {hasAffordance(plate, heat)}, {}, {
  obj(plate). hasPhysicalQuality(plate, hasContainer). hasPhysicalQuality(plate, rigid). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e812@100, {hasAffordance(plate, hold)}, {}, {
  obj(plate). hasPhysicalQuality(plate, hasContainer). hasPhysicalQuality(plate, rigid). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e813@100, {hasAffordance(plumbing, carry)}, {}, {
  obj(plumbing). hasPhysicalQuality(plumbing, heavy). hasPhysicalQuality(plumbing, rigid). hasRole(plumbing, toolRole). affordsTask(plumbing, maintenanceTask).
}).
#pos(e814@100, {hasAffordance(plumbing, clean)}, {}, {
  obj(plumbing). hasPhysicalQuality(plumbing, heavy). hasPhysicalQuality(plumbing, rigid). hasRole(plumbing, toolRole). affordsTask(plumbing, maintenanceTask).
}).
#pos(e815@100, {hasAffordance(pocket, store)}, {}, {
  obj(pocket). hasPhysicalQuality(pocket, lightweight). hasPhysicalQuality(pocket, soft_Deformable). hasRole(pocket, storageContainerRole). affordsTask(pocket, storageTask).
}).
#pos(e816@100, {hasAffordance(poker_chips, entertain)}, {}, {
  obj(poker_chips). hasPhysicalQuality(poker_chips, fragile). hasPhysicalQuality(poker_chips, lightweight). hasPhysicalQuality(poker_chips, rigid). hasRole(poker_chips, entertainmentRole). affordsTask(poker_chips, leisureTask).
}).
#pos(e817@100, {hasAffordance(poker_chips, poke)}, {}, {
  obj(poker_chips). hasPhysicalQuality(poker_chips, fragile). hasPhysicalQuality(poker_chips, lightweight). hasPhysicalQuality(poker_chips, rigid). hasRole(poker_chips, entertainmentRole). affordsTask(poker_chips, leisureTask).
}).
#pos(e818@100, {hasAffordance(polish, clean)}, {}, {
  obj(polish). hasPhysicalQuality(polish, liquid). hasRole(polish, cleaningToolRole). affordsTask(polish, cleaningTask).
}).
#pos(e819@100, {hasAffordance(portable_shower_head, clean)}, {}, {
  obj(portable_shower_head). hasPhysicalQuality(portable_shower_head, lightweight). hasPhysicalQuality(portable_shower_head, liquid). hasRole(portable_shower_head, cleaningToolRole). affordsTask(portable_shower_head, hygieneTask).
}).
#pos(e820@100, {hasAffordance(portable_shower_head, wash)}, {}, {
  obj(portable_shower_head). hasPhysicalQuality(portable_shower_head, lightweight). hasPhysicalQuality(portable_shower_head, liquid). hasRole(portable_shower_head, cleaningToolRole). affordsTask(portable_shower_head, hygieneTask).
}).
#pos(e821@100, {hasAffordance(post_notes, stick)}, {}, {
  obj(post_notes). hasRole(post_notes, documentRole).
}).
#pos(e822@100, {hasAffordance(pot, heat)}, {}, {
  obj(pot). hasPhysicalQuality(pot, heavy). hasPhysicalQuality(pot, rigid). hasRole(pot, cookwareRole). affordsTask(pot, foodPreparationTask).
}).
#pos(e823@100, {hasAffordance(pot, hold)}, {}, {
  obj(pot). hasPhysicalQuality(pot, heavy). hasPhysicalQuality(pot, rigid). hasRole(pot, cookwareRole). affordsTask(pot, foodPreparationTask).
}).
#pos(e824@100, {hasAffordance(pot, mix)}, {}, {
  obj(pot). hasPhysicalQuality(pot, heavy). hasPhysicalQuality(pot, rigid). hasRole(pot, cookwareRole). affordsTask(pot, foodPreparationTask).
}).
#pos(e825@100, {hasAffordance(pouch, carry)}, {}, {
  obj(pouch). hasPhysicalQuality(pouch, lightweight). hasPhysicalQuality(pouch, soft_Deformable). hasRole(pouch, storageContainerRole). affordsTask(pouch, storageTask).
}).
#pos(e826@100, {hasAffordance(pouch, contain)}, {}, {
  obj(pouch). hasPhysicalQuality(pouch, lightweight). hasPhysicalQuality(pouch, soft_Deformable). hasRole(pouch, storageContainerRole). affordsTask(pouch, storageTask).
}).
#pos(e827@100, {hasAffordance(pouch, cover)}, {}, {
  obj(pouch). hasPhysicalQuality(pouch, lightweight). hasPhysicalQuality(pouch, soft_Deformable). hasRole(pouch, storageContainerRole). affordsTask(pouch, storageTask).
}).
#pos(e828@100, {hasAffordance(pouch, hold)}, {}, {
  obj(pouch). hasPhysicalQuality(pouch, lightweight). hasPhysicalQuality(pouch, soft_Deformable). hasRole(pouch, storageContainerRole). affordsTask(pouch, storageTask).
}).
#pos(e829@100, {hasAffordance(pouch, store)}, {}, {
  obj(pouch). hasPhysicalQuality(pouch, lightweight). hasPhysicalQuality(pouch, soft_Deformable). hasRole(pouch, storageContainerRole). affordsTask(pouch, storageTask).
}).
#pos(e830@100, {hasAffordance(pouch, write)}, {}, {
  obj(pouch). hasPhysicalQuality(pouch, lightweight). hasPhysicalQuality(pouch, soft_Deformable). hasRole(pouch, storageContainerRole). affordsTask(pouch, storageTask).
}).
#pos(e831@100, {hasAffordance(power_screwdriver, screw)}, {}, {
  obj(power_screwdriver). hasPhysicalQuality(power_screwdriver, electronic). hasPhysicalQuality(power_screwdriver, heavy). hasPhysicalQuality(power_screwdriver, rigid). hasRole(power_screwdriver, toolRole). affordsTask(power_screwdriver, maintenanceTask).
}).
#pos(e832@100, {hasAffordance(printer, write)}, {}, {
  obj(printer). hasPhysicalQuality(printer, electronic). hasPhysicalQuality(printer, heavy). hasRole(printer, applianceRole). affordsTask(printer, workStudyTask).
}).
#pos(e833@100, {hasAffordance(purse, carry)}, {}, {
  obj(purse). hasPhysicalQuality(purse, lightweight). hasPhysicalQuality(purse, soft_Deformable). hasRole(purse, storageContainerRole). affordsTask(purse, storageTask).
}).
#pos(e834@100, {hasAffordance(purse, hold)}, {}, {
  obj(purse). hasPhysicalQuality(purse, lightweight). hasPhysicalQuality(purse, soft_Deformable). hasRole(purse, storageContainerRole). affordsTask(purse, storageTask).
}).
#pos(e835@100, {hasAffordance(purse, store)}, {}, {
  obj(purse). hasPhysicalQuality(purse, lightweight). hasPhysicalQuality(purse, soft_Deformable). hasRole(purse, storageContainerRole). affordsTask(purse, storageTask).
}).
#pos(e836@100, {hasAffordance(puzzle, entertain)}, {}, {
  obj(puzzle). hasRole(puzzle, entertainmentRole). affordsTask(puzzle, leisureTask).
}).
#pos(e837@100, {hasAffordance(puzzle, time)}, {}, {
  obj(puzzle). hasRole(puzzle, entertainmentRole). affordsTask(puzzle, leisureTask).
}).
#pos(e838@100, {hasAffordance(quill_brush, write)}, {}, {
  obj(quill_brush). hasPhysicalQuality(quill_brush, lightweight). hasPhysicalQuality(quill_brush, soft_Deformable). hasRole(quill_brush, toolRole).
}).
#pos(e839@100, {hasAffordance(radiator, comfort)}, {}, {
  obj(radiator). hasPhysicalQuality(radiator, heated). hasRole(radiator, applianceRole). affordsTask(radiator, maintenanceTask).
}).
#pos(e840@100, {hasAffordance(radiator, cool)}, {}, {
  obj(radiator). hasPhysicalQuality(radiator, heated). hasRole(radiator, applianceRole). affordsTask(radiator, maintenanceTask).
}).
#pos(e841@100, {hasAffordance(radiator, heat)}, {}, {
  obj(radiator). hasPhysicalQuality(radiator, heated). hasRole(radiator, applianceRole). affordsTask(radiator, maintenanceTask).
}).
#pos(e842@100, {hasAffordance(radio, bore)}, {}, {
  obj(radio). hasPhysicalQuality(radio, electronic). hasPhysicalQuality(radio, lightweight). hasRole(radio, applianceRole). affordsTask(radio, leisureTask).
}).
#pos(e843@100, {hasAffordance(radio, entertain)}, {}, {
  obj(radio). hasPhysicalQuality(radio, electronic). hasPhysicalQuality(radio, lightweight). hasRole(radio, applianceRole). affordsTask(radio, leisureTask).
}).
#pos(e844@100, {hasAffordance(radio, mark)}, {}, {
  obj(radio). hasPhysicalQuality(radio, electronic). hasPhysicalQuality(radio, lightweight). hasRole(radio, applianceRole). affordsTask(radio, leisureTask).
}).
#pos(e845@100, {hasAffordance(rafter, support)}, {}, {
  obj(rafter). hasPhysicalQuality(rafter, heavy). hasPhysicalQuality(rafter, rigid). hasRole(rafter, furnitureRole).
}).
#pos(e846@100, {hasAffordance(ratchet_screwdriver, screw)}, {}, {
  obj(ratchet_screwdriver). hasPhysicalQuality(ratchet_screwdriver, electronic). hasPhysicalQuality(ratchet_screwdriver, heavy). hasPhysicalQuality(ratchet_screwdriver, isRotary). hasPhysicalQuality(ratchet_screwdriver, rigid). hasRole(ratchet_screwdriver, toolRole). affordsTask(ratchet_screwdriver, maintenanceTask).
}).
#pos(e847@100, {hasAffordance(refrigerator, cool)}, {}, {
  obj(refrigerator). hasPhysicalQuality(refrigerator, electronic). hasPhysicalQuality(refrigerator, heavy). hasPhysicalQuality(refrigerator, requiresCooling). hasRole(refrigerator, applianceRole). affordsTask(refrigerator, storageTask).
}).
#pos(e848@100, {hasAffordance(refrigerator, store)}, {}, {
  obj(refrigerator). hasPhysicalQuality(refrigerator, electronic). hasPhysicalQuality(refrigerator, heavy). hasPhysicalQuality(refrigerator, requiresCooling). hasRole(refrigerator, applianceRole). affordsTask(refrigerator, storageTask).
}).
#pos(e849@100, {hasAffordance(refrigerator, time)}, {}, {
  obj(refrigerator). hasPhysicalQuality(refrigerator, electronic). hasPhysicalQuality(refrigerator, heavy). hasPhysicalQuality(refrigerator, requiresCooling). hasRole(refrigerator, applianceRole). affordsTask(refrigerator, storageTask).
}).
#pos(e850@100, {hasAffordance(remote_control, control)}, {}, {
  obj(remote_control). hasPhysicalQuality(remote_control, electronic). hasPhysicalQuality(remote_control, lightweight). hasRole(remote_control, toolRole). affordsTask(remote_control, leisureTask).
}).
#pos(e851@100, {hasAffordance(ribbon, cut)}, {}, {
  obj(ribbon). hasPhysicalQuality(ribbon, lightweight). hasPhysicalQuality(ribbon, soft_Deformable). hasRole(ribbon, clothingRole). affordsTask(ribbon, dressingTask).
}).
#pos(e852@100, {hasAffordance(ribbon, decorate)}, {}, {
  obj(ribbon). hasPhysicalQuality(ribbon, lightweight). hasPhysicalQuality(ribbon, soft_Deformable). hasRole(ribbon, clothingRole). affordsTask(ribbon, dressingTask).
}).
#pos(e853@100, {hasAffordance(ribbon, mark)}, {}, {
  obj(ribbon). hasPhysicalQuality(ribbon, lightweight). hasPhysicalQuality(ribbon, soft_Deformable). hasRole(ribbon, clothingRole). affordsTask(ribbon, dressingTask).
}).
#pos(e854@100, {hasAffordance(ribbon, wrap)}, {}, {
  obj(ribbon). hasPhysicalQuality(ribbon, lightweight). hasPhysicalQuality(ribbon, soft_Deformable). hasRole(ribbon, clothingRole). affordsTask(ribbon, dressingTask).
}).
#pos(e855@100, {hasAffordance(ring, decorate)}, {}, {
  obj(ring). hasPhysicalQuality(ring, lightweight). hasPhysicalQuality(ring, rigid). hasRole(ring, utensilRole).
}).
#pos(e856@100, {hasAffordance(ring, exercise)}, {}, {
  obj(ring). hasPhysicalQuality(ring, lightweight). hasPhysicalQuality(ring, rigid). hasRole(ring, utensilRole).
}).
#pos(e857@100, {hasAffordance(ring, screw)}, {}, {
  obj(ring). hasPhysicalQuality(ring, lightweight). hasPhysicalQuality(ring, rigid). hasRole(ring, utensilRole).
}).
#pos(e858@100, {hasAffordance(roof, cover)}, {}, {
  obj(roof). hasPhysicalQuality(roof, heavy). hasPhysicalQuality(roof, rigid). hasRole(roof, furnitureRole).
}).
#pos(e859@100, {hasAffordance(round_brush, clean)}, {}, {
  obj(round_brush). hasPhysicalQuality(round_brush, lightweight). hasPhysicalQuality(round_brush, soft_Deformable). hasRole(round_brush, toolRole). affordsTask(round_brush, cleaningTask).
}).
#pos(e860@100, {hasAffordance(rug, cover)}, {}, {
  obj(rug). hasPhysicalQuality(rug, lightweight). hasPhysicalQuality(rug, soft_Deformable). hasRole(rug, furnitureRole). affordsTask(rug, leisureTask).
}).
#pos(e861@100, {hasAffordance(rug, heat)}, {}, {
  obj(rug). hasPhysicalQuality(rug, lightweight). hasPhysicalQuality(rug, soft_Deformable). hasRole(rug, furnitureRole). affordsTask(rug, leisureTask).
}).
#pos(e862@100, {hasAffordance(rule, break)}, {}, {
  obj(rule). hasPhysicalQuality(rule, rigid). hasRole(rule, toolRole). affordsTask(rule, maintenanceTask).
}).
#pos(e863@100, {hasAffordance(rule, write)}, {}, {
  obj(rule). hasPhysicalQuality(rule, rigid). hasRole(rule, toolRole). affordsTask(rule, maintenanceTask).
}).
#pos(e864@100, {hasAffordance(ruler, time)}, {}, {
  obj(ruler). hasPhysicalQuality(ruler, rigid). hasRole(ruler, toolRole). affordsTask(ruler, maintenanceTask).
}).
#pos(e865@100, {hasAffordance(salad_bowl, contain)}, {}, {
  obj(salad_bowl). hasPhysicalQuality(salad_bowl, hasContainer). hasRole(salad_bowl, storageContainerRole). hasRole(salad_bowl, utensilRole). affordsTask(salad_bowl, foodPreparationTask).
}).
#pos(e866@100, {hasAffordance(salad_bowl, hold)}, {}, {
  obj(salad_bowl). hasPhysicalQuality(salad_bowl, hasContainer). hasRole(salad_bowl, storageContainerRole). hasRole(salad_bowl, utensilRole). affordsTask(salad_bowl, foodPreparationTask).
}).
#pos(e867@100, {hasAffordance(salad_bowl, mix)}, {}, {
  obj(salad_bowl). hasPhysicalQuality(salad_bowl, hasContainer). hasRole(salad_bowl, storageContainerRole). hasRole(salad_bowl, utensilRole). affordsTask(salad_bowl, foodPreparationTask).
}).
#pos(e868@100, {hasAffordance(salad_spinner, dry)}, {}, {
  obj(salad_spinner). hasPhysicalQuality(salad_spinner, lightweight). hasPhysicalQuality(salad_spinner, rigid). hasRole(salad_spinner, utensilRole). affordsTask(salad_spinner, foodPreparationTask).
}).
#pos(e869@100, {hasAffordance(salad_spinner, wash)}, {}, {
  obj(salad_spinner). hasPhysicalQuality(salad_spinner, lightweight). hasPhysicalQuality(salad_spinner, rigid). hasRole(salad_spinner, utensilRole). affordsTask(salad_spinner, foodPreparationTask).
}).
#pos(e870@100, {hasAffordance(salt, melt)}, {}, {
  obj(salt). hasPhysicalQuality(salt, granular). hasRole(salt, consumableRole). affordsTask(salt, foodPreparationTask).
}).
#pos(e871@100, {hasAffordance(salt, press)}, {}, {
  obj(salt). hasPhysicalQuality(salt, granular). hasRole(salt, consumableRole). affordsTask(salt, foodPreparationTask).
}).
#pos(e872@100, {hasAffordance(salt, rub)}, {}, {
  obj(salt). hasPhysicalQuality(salt, granular). hasRole(salt, consumableRole). affordsTask(salt, foodPreparationTask).
}).
#pos(e873@100, {hasAffordance(saltshaker, hold)}, {}, {
  obj(saltshaker). hasPhysicalQuality(saltshaker, granular). hasPhysicalQuality(saltshaker, lightweight). hasRole(saltshaker, utensilRole). affordsTask(saltshaker, foodPreparationTask).
}).
#pos(e874@100, {hasAffordance(saucepan, heat)}, {}, {
  obj(saucepan). hasPhysicalQuality(saucepan, heated). hasPhysicalQuality(saucepan, heavy). hasRole(saucepan, cookwareRole). affordsTask(saucepan, foodPreparationTask).
}).
#pos(e875@100, {hasAffordance(saucepan, melt)}, {}, {
  obj(saucepan). hasPhysicalQuality(saucepan, heated). hasPhysicalQuality(saucepan, heavy). hasRole(saucepan, cookwareRole). affordsTask(saucepan, foodPreparationTask).
}).
#pos(e876@100, {hasAffordance(saucer, heat)}, {}, {
  obj(saucer). hasPhysicalQuality(saucer, lightweight). hasPhysicalQuality(saucer, rigid). hasRole(saucer, utensilRole). affordsTask(saucer, eatingDrinkingTask).
}).
#pos(e877@100, {hasAffordance(saucer, hold)}, {}, {
  obj(saucer). hasPhysicalQuality(saucer, lightweight). hasPhysicalQuality(saucer, rigid). hasRole(saucer, utensilRole). affordsTask(saucer, eatingDrinkingTask).
}).
#pos(e878@100, {hasAffordance(saucer, support)}, {}, {
  obj(saucer). hasPhysicalQuality(saucer, lightweight). hasPhysicalQuality(saucer, rigid). hasRole(saucer, utensilRole). affordsTask(saucer, eatingDrinkingTask).
}).
#pos(e879@100, {hasAffordance(scale, heat)}, {}, {
  obj(scale). hasPhysicalQuality(scale, electronic). hasPhysicalQuality(scale, heavy). hasRole(scale, toolRole). affordsTask(scale, maintenanceTask).
}).
#pos(e880@100, {hasAffordance(scale, time)}, {}, {
  obj(scale). hasPhysicalQuality(scale, electronic). hasPhysicalQuality(scale, heavy). hasRole(scale, toolRole). affordsTask(scale, maintenanceTask).
}).
#pos(e881@100, {hasAffordance(scissors, cut)}, {}, {
  obj(scissors). hasPhysicalQuality(scissors, rigid). hasPhysicalQuality(scissors, sharp). hasRole(scissors, toolRole). affordsTask(scissors, maintenanceTask).
}).
#pos(e882@100, {hasAffordance(scotch_tape, wrap)}, {}, {
  obj(scotch_tape). hasPhysicalQuality(scotch_tape, lightweight). hasPhysicalQuality(scotch_tape, soft_Deformable). hasRole(scotch_tape, toolRole). affordsTask(scotch_tape, leisureTask).
}).
#pos(e883@100, {hasAffordance(screwdriver, fix)}, {}, {
  obj(screwdriver). hasPhysicalQuality(screwdriver, lightweight). hasPhysicalQuality(screwdriver, rigid). hasRole(screwdriver, toolRole). affordsTask(screwdriver, maintenanceTask).
}).
#pos(e884@100, {hasAffordance(screwdriver, mix)}, {}, {
  obj(screwdriver). hasPhysicalQuality(screwdriver, lightweight). hasPhysicalQuality(screwdriver, rigid). hasRole(screwdriver, toolRole). affordsTask(screwdriver, maintenanceTask).
}).
#pos(e885@100, {hasAffordance(screwdriver, screw)}, {}, {
  obj(screwdriver). hasPhysicalQuality(screwdriver, lightweight). hasPhysicalQuality(screwdriver, rigid). hasRole(screwdriver, toolRole). affordsTask(screwdriver, maintenanceTask).
}).
#pos(e886@100, {hasAffordance(screws, hold)}, {}, {
  obj(screws). hasPhysicalQuality(screws, granular). hasRole(screws, toolRole). affordsTask(screws, maintenanceTask).
}).
#pos(e887@100, {hasAffordance(seat, comfort)}, {}, {
  obj(seat). hasPhysicalQuality(seat, heavy). hasPhysicalQuality(seat, rigid). hasRole(seat, furnitureRole). affordsTask(seat, leisureTask).
}).
#pos(e888@100, {hasAffordance(seat, hold)}, {}, {
  obj(seat). hasPhysicalQuality(seat, heavy). hasPhysicalQuality(seat, rigid). hasRole(seat, furnitureRole). affordsTask(seat, leisureTask).
}).
#pos(e889@100, {hasAffordance(seat, plug)}, {}, {
  obj(seat). hasPhysicalQuality(seat, heavy). hasPhysicalQuality(seat, rigid). hasRole(seat, furnitureRole). affordsTask(seat, leisureTask).
}).
#pos(e890@100, {hasAffordance(seat, screw)}, {}, {
  obj(seat). hasPhysicalQuality(seat, heavy). hasPhysicalQuality(seat, rigid). hasRole(seat, furnitureRole). affordsTask(seat, leisureTask).
}).
#pos(e891@100, {hasAffordance(self_adhesive_label, stick)}, {}, {
  obj(self_adhesive_label). hasPhysicalQuality(self_adhesive_label, lightweight). hasPhysicalQuality(self_adhesive_label, soft_Deformable). hasRole(self_adhesive_label, toolRole). affordsTask(self_adhesive_label, maintenanceTask).
}).
#pos(e892@100, {hasAffordance(serving_trolley, carry)}, {}, {
  obj(serving_trolley). hasPhysicalQuality(serving_trolley, heavy). hasPhysicalQuality(serving_trolley, rigid). hasRole(serving_trolley, furnitureRole). affordsTask(serving_trolley, foodPreparationTask).
}).
#pos(e893@100, {hasAffordance(shades, cool)}, {}, {
  obj(shades). hasPhysicalQuality(shades, lightweight). hasPhysicalQuality(shades, rigid). hasRole(shades, decorationRole). affordsTask(shades, leisureTask).
}).
#pos(e894@100, {hasAffordance(shades, cover)}, {}, {
  obj(shades). hasPhysicalQuality(shades, lightweight). hasPhysicalQuality(shades, rigid). hasRole(shades, decorationRole). affordsTask(shades, leisureTask).
}).
#pos(e895@100, {hasAffordance(shades, illuminate)}, {}, {
  obj(shades). hasPhysicalQuality(shades, lightweight). hasPhysicalQuality(shades, rigid). hasRole(shades, decorationRole). affordsTask(shades, leisureTask).
}).
#pos(e896@100, {hasAffordance(shampoo_and_conditioner, clean)}, {}, {
  obj(shampoo_and_conditioner). hasPhysicalQuality(shampoo_and_conditioner, liquid). hasRole(shampoo_and_conditioner, cleaningToolRole). affordsTask(shampoo_and_conditioner, hygieneTask).
}).
#pos(e897@100, {hasAffordance(shampoo_and_conditioner, wash)}, {}, {
  obj(shampoo_and_conditioner). hasPhysicalQuality(shampoo_and_conditioner, liquid). hasRole(shampoo_and_conditioner, cleaningToolRole). affordsTask(shampoo_and_conditioner, hygieneTask).
}).
#pos(e898@100, {hasAffordance(sheet, cover)}, {}, {
  obj(sheet). hasPhysicalQuality(sheet, soft_Deformable). hasPhysicalQuality(sheet, washable). hasRole(sheet, beddingRole). affordsTask(sheet, sleepingTask).
}).
#pos(e899@100, {hasAffordance(sheet, heat)}, {}, {
  obj(sheet). hasPhysicalQuality(sheet, soft_Deformable). hasPhysicalQuality(sheet, washable). hasRole(sheet, beddingRole). affordsTask(sheet, sleepingTask).
}).
#pos(e900@100, {hasAffordance(sheet, store)}, {}, {
  obj(sheet). hasPhysicalQuality(sheet, soft_Deformable). hasPhysicalQuality(sheet, washable). hasRole(sheet, beddingRole). affordsTask(sheet, sleepingTask).
}).
#pos(e901@100, {hasAffordance(shelf, display)}, {}, {
  obj(shelf). hasPhysicalQuality(shelf, heavy). hasPhysicalQuality(shelf, rigid). hasRole(shelf, storageContainerRole). affordsTask(shelf, storageTask).
}).
#pos(e902@100, {hasAffordance(shelf, hold)}, {}, {
  obj(shelf). hasPhysicalQuality(shelf, heavy). hasPhysicalQuality(shelf, rigid). hasRole(shelf, storageContainerRole). affordsTask(shelf, storageTask).
}).
#pos(e903@100, {hasAffordance(shelf, store)}, {}, {
  obj(shelf). hasPhysicalQuality(shelf, heavy). hasPhysicalQuality(shelf, rigid). hasRole(shelf, storageContainerRole). affordsTask(shelf, storageTask).
}).
#pos(e904@100, {hasAffordance(shirt, absorb)}, {}, {
  obj(shirt). hasPhysicalQuality(shirt, lightweight). hasPhysicalQuality(shirt, soft_Deformable). hasRole(shirt, clothingRole). affordsTask(shirt, dressingTask).
}).
#pos(e905@100, {hasAffordance(shirt, carry)}, {}, {
  obj(shirt). hasPhysicalQuality(shirt, lightweight). hasPhysicalQuality(shirt, soft_Deformable). hasRole(shirt, clothingRole). affordsTask(shirt, dressingTask).
}).
#pos(e906@100, {hasAffordance(shirt, cover)}, {}, {
  obj(shirt). hasPhysicalQuality(shirt, lightweight). hasPhysicalQuality(shirt, soft_Deformable). hasRole(shirt, clothingRole). affordsTask(shirt, dressingTask).
}).
#pos(e907@100, {hasAffordance(shirt, cut)}, {}, {
  obj(shirt). hasPhysicalQuality(shirt, lightweight). hasPhysicalQuality(shirt, soft_Deformable). hasRole(shirt, clothingRole). affordsTask(shirt, dressingTask).
}).
#pos(e908@100, {hasAffordance(shirt, heat)}, {}, {
  obj(shirt). hasPhysicalQuality(shirt, lightweight). hasPhysicalQuality(shirt, soft_Deformable). hasRole(shirt, clothingRole). affordsTask(shirt, dressingTask).
}).
#pos(e909@100, {hasAffordance(shirt, hold)}, {}, {
  obj(shirt). hasPhysicalQuality(shirt, lightweight). hasPhysicalQuality(shirt, soft_Deformable). hasRole(shirt, clothingRole). affordsTask(shirt, dressingTask).
}).
#pos(e910@100, {hasAffordance(shopping_bag, carry)}, {}, {
  obj(shopping_bag). hasPhysicalQuality(shopping_bag, hasContainer). hasPhysicalQuality(shopping_bag, lightweight). hasRole(shopping_bag, storageContainerRole). affordsTask(shopping_bag, storageTask).
}).
#pos(e911@100, {hasAffordance(shopping_bag, hold)}, {}, {
  obj(shopping_bag). hasPhysicalQuality(shopping_bag, hasContainer). hasPhysicalQuality(shopping_bag, lightweight). hasRole(shopping_bag, storageContainerRole). affordsTask(shopping_bag, storageTask).
}).
#pos(e912@100, {hasAffordance(shopping_basket, carry)}, {}, {
  obj(shopping_basket). hasPhysicalQuality(shopping_basket, lightweight). hasPhysicalQuality(shopping_basket, rigid). hasRole(shopping_basket, storageContainerRole).
}).
#pos(e913@100, {hasAffordance(shopping_basket, hold)}, {}, {
  obj(shopping_basket). hasPhysicalQuality(shopping_basket, lightweight). hasPhysicalQuality(shopping_basket, rigid). hasRole(shopping_basket, storageContainerRole).
}).
#pos(e914@100, {hasAffordance(shower_door, dry)}, {}, {
  obj(shower_door). hasPhysicalQuality(shower_door, fragile). hasPhysicalQuality(shower_door, rigid). hasRole(shower_door, furnitureRole). affordsTask(shower_door, hygieneTask).
}).
#pos(e915@100, {hasAffordance(shower_door, heat)}, {}, {
  obj(shower_door). hasPhysicalQuality(shower_door, fragile). hasPhysicalQuality(shower_door, rigid). hasRole(shower_door, furnitureRole). affordsTask(shower_door, hygieneTask).
}).
#pos(e916@100, {hasAffordance(shower_switch, control)}, {}, {
  obj(shower_switch). hasPhysicalQuality(shower_switch, electronic). hasPhysicalQuality(shower_switch, lightweight). hasRole(shower_switch, toolRole). affordsTask(shower_switch, maintenanceTask).
}).
#pos(e917@100, {hasAffordance(sideboard, contain)}, {}, {
  obj(sideboard). hasPhysicalQuality(sideboard, heavy). hasPhysicalQuality(sideboard, rigid). hasRole(sideboard, furnitureRole). affordsTask(sideboard, storageTask).
}).
#pos(e918@100, {hasAffordance(signs, carry)}, {}, {
  obj(signs). hasRole(signs, decorationRole).
}).
#pos(e919@100, {hasAffordance(sink, absorb)}, {}, {
  obj(sink). hasPhysicalQuality(sink, hasContainer). hasPhysicalQuality(sink, heavy). hasRole(sink, cleaningToolRole). affordsTask(sink, cleaningTask). affordsTask(sink, hygieneTask).
}).
#pos(e920@100, {hasAffordance(sink, clean)}, {}, {
  obj(sink). hasPhysicalQuality(sink, hasContainer). hasPhysicalQuality(sink, heavy). hasRole(sink, cleaningToolRole). affordsTask(sink, cleaningTask). affordsTask(sink, hygieneTask).
}).
#pos(e921@100, {hasAffordance(sink, hold)}, {}, {
  obj(sink). hasPhysicalQuality(sink, hasContainer). hasPhysicalQuality(sink, heavy). hasRole(sink, cleaningToolRole). affordsTask(sink, cleaningTask). affordsTask(sink, hygieneTask).
}).
#pos(e922@100, {hasAffordance(sink, wash)}, {}, {
  obj(sink). hasPhysicalQuality(sink, hasContainer). hasPhysicalQuality(sink, heavy). hasRole(sink, cleaningToolRole). affordsTask(sink, cleaningTask). affordsTask(sink, hygieneTask).
}).
#pos(e923@100, {hasAffordance(skylight, illuminate)}, {}, {
  obj(skylight). hasRole(skylight, lightingRole). affordsTask(skylight, leisureTask).
}).
#pos(e924@100, {hasAffordance(slippers, heat)}, {}, {
  obj(slippers). hasPhysicalQuality(slippers, lightweight). hasPhysicalQuality(slippers, soft_Deformable). hasRole(slippers, clothingRole). affordsTask(slippers, dressingTask).
}).
#pos(e925@100, {hasAffordance(soap, clean)}, {}, {
  obj(soap). hasPhysicalQuality(soap, fragile). hasPhysicalQuality(soap, liquid). hasRole(soap, cleaningToolRole). affordsTask(soap, hygieneTask).
}).
#pos(e926@100, {hasAffordance(soap, entertain)}, {}, {
  obj(soap). hasPhysicalQuality(soap, fragile). hasPhysicalQuality(soap, liquid). hasRole(soap, cleaningToolRole). affordsTask(soap, hygieneTask).
}).
#pos(e927@100, {hasAffordance(soap, skin)}, {}, {
  obj(soap). hasPhysicalQuality(soap, fragile). hasPhysicalQuality(soap, liquid). hasRole(soap, cleaningToolRole). affordsTask(soap, hygieneTask).
}).
#pos(e928@100, {hasAffordance(soap, stick)}, {}, {
  obj(soap). hasPhysicalQuality(soap, fragile). hasPhysicalQuality(soap, liquid). hasRole(soap, cleaningToolRole). affordsTask(soap, hygieneTask).
}).
#pos(e929@100, {hasAffordance(soap, wash)}, {}, {
  obj(soap). hasPhysicalQuality(soap, fragile). hasPhysicalQuality(soap, liquid). hasRole(soap, cleaningToolRole). affordsTask(soap, hygieneTask).
}).
#pos(e930@100, {hasAffordance(soap, write)}, {}, {
  obj(soap). hasPhysicalQuality(soap, fragile). hasPhysicalQuality(soap, liquid). hasRole(soap, cleaningToolRole). affordsTask(soap, hygieneTask).
}).
#pos(e931@100, {hasAffordance(soap_dish, hold)}, {}, {
  obj(soap_dish). hasPhysicalQuality(soap_dish, lightweight). hasPhysicalQuality(soap_dish, rigid). hasRole(soap_dish, storageContainerRole). affordsTask(soap_dish, hygieneTask).
}).
#pos(e932@100, {hasAffordance(soap_dish, wash)}, {}, {
  obj(soap_dish). hasPhysicalQuality(soap_dish, lightweight). hasPhysicalQuality(soap_dish, rigid). hasRole(soap_dish, storageContainerRole). affordsTask(soap_dish, hygieneTask).
}).
#pos(e933@100, {hasAffordance(sock, comfort)}, {}, {
  obj(sock). hasPhysicalQuality(sock, lightweight). hasPhysicalQuality(sock, soft_Deformable). hasRole(sock, clothingRole). affordsTask(sock, dressingTask).
}).
#pos(e934@100, {hasAffordance(sock, heat)}, {}, {
  obj(sock). hasPhysicalQuality(sock, lightweight). hasPhysicalQuality(sock, soft_Deformable). hasRole(sock, clothingRole). affordsTask(sock, dressingTask).
}).
#pos(e935@100, {hasAffordance(sofa, comfort)}, {}, {
  obj(sofa). hasPhysicalQuality(sofa, heavy). hasPhysicalQuality(sofa, soft_Deformable). hasRole(sofa, furnitureRole). affordsTask(sofa, leisureTask).
}).
#pos(e936@100, {hasAffordance(sofa, read)}, {}, {
  obj(sofa). hasPhysicalQuality(sofa, heavy). hasPhysicalQuality(sofa, soft_Deformable). hasRole(sofa, furnitureRole). affordsTask(sofa, leisureTask).
}).
#pos(e937@100, {hasAffordance(sofabed, comfort)}, {}, {
  obj(sofabed). hasPhysicalQuality(sofabed, fragile). hasPhysicalQuality(sofabed, soft_Deformable). hasRole(sofabed, furnitureRole). affordsTask(sofabed, sleepingTask).
}).
#pos(e938@100, {hasAffordance(sofabed, read)}, {}, {
  obj(sofabed). hasPhysicalQuality(sofabed, fragile). hasPhysicalQuality(sofabed, soft_Deformable). hasRole(sofabed, furnitureRole). affordsTask(sofabed, sleepingTask).
}).
#pos(e939@100, {hasAffordance(speaker, time)}, {}, {
  obj(speaker). hasPhysicalQuality(speaker, electronic). hasRole(speaker, toolRole). affordsTask(speaker, leisureTask).
}).
#pos(e940@100, {hasAffordance(spoon, carry)}, {}, {
  obj(spoon). hasPhysicalQuality(spoon, lightweight). hasPhysicalQuality(spoon, rigid). hasPhysicalQuality(spoon, sharp). hasRole(spoon, utensilRole). affordsTask(spoon, foodPreparationTask).
}).
#pos(e941@100, {hasAffordance(spoon, cool)}, {}, {
  obj(spoon). hasPhysicalQuality(spoon, lightweight). hasPhysicalQuality(spoon, rigid). hasPhysicalQuality(spoon, sharp). hasRole(spoon, utensilRole). affordsTask(spoon, foodPreparationTask).
}).
#pos(e942@100, {hasAffordance(spoon, hold)}, {}, {
  obj(spoon). hasPhysicalQuality(spoon, lightweight). hasPhysicalQuality(spoon, rigid). hasPhysicalQuality(spoon, sharp). hasRole(spoon, utensilRole). affordsTask(spoon, foodPreparationTask).
}).
#pos(e943@100, {hasAffordance(spoon, mix)}, {}, {
  obj(spoon). hasPhysicalQuality(spoon, lightweight). hasPhysicalQuality(spoon, rigid). hasPhysicalQuality(spoon, sharp). hasRole(spoon, utensilRole). affordsTask(spoon, foodPreparationTask).
}).
#pos(e944@100, {hasAffordance(spoon, scoop)}, {}, {
  obj(spoon). hasPhysicalQuality(spoon, lightweight). hasPhysicalQuality(spoon, rigid). hasPhysicalQuality(spoon, sharp). hasRole(spoon, utensilRole). affordsTask(spoon, foodPreparationTask).
}).
#pos(e945@100, {hasAffordance(spray_hose, wash)}, {}, {
  obj(spray_hose). hasPhysicalQuality(spray_hose, gas_Aerosol). hasPhysicalQuality(spray_hose, liquid). hasRole(spray_hose, toolRole). affordsTask(spray_hose, maintenanceTask).
}).
#pos(e946@100, {hasAffordance(staircase, exercise)}, {}, {
  obj(staircase). hasPhysicalQuality(staircase, heavy). hasPhysicalQuality(staircase, rigid). hasRole(staircase, furnitureRole). affordsTask(staircase, maintenanceTask).
}).
#pos(e947@100, {hasAffordance(stamp_pad, rub)}, {}, {
  obj(stamp_pad). hasPhysicalQuality(stamp_pad, lightweight). hasRole(stamp_pad, toolRole). affordsTask(stamp_pad, maintenanceTask).
}).
#pos(e948@100, {hasAffordance(stamp_pad, spread)}, {}, {
  obj(stamp_pad). hasPhysicalQuality(stamp_pad, lightweight). hasRole(stamp_pad, toolRole). affordsTask(stamp_pad, maintenanceTask).
}).
#pos(e949@100, {hasAffordance(stamp_pad, store)}, {}, {
  obj(stamp_pad). hasPhysicalQuality(stamp_pad, lightweight). hasRole(stamp_pad, toolRole). affordsTask(stamp_pad, maintenanceTask).
}).
#pos(e950@100, {hasAffordance(stapler, hold)}, {}, {
  obj(stapler). hasPhysicalQuality(stapler, heavy). hasPhysicalQuality(stapler, rigid). hasRole(stapler, toolRole). affordsTask(stapler, maintenanceTask).
}).
#pos(e951@100, {hasAffordance(stapler, screw)}, {}, {
  obj(stapler). hasPhysicalQuality(stapler, heavy). hasPhysicalQuality(stapler, rigid). hasRole(stapler, toolRole). affordsTask(stapler, maintenanceTask).
}).
#pos(e952@100, {hasAffordance(stapler, staple)}, {}, {
  obj(stapler). hasPhysicalQuality(stapler, heavy). hasPhysicalQuality(stapler, rigid). hasRole(stapler, toolRole). affordsTask(stapler, maintenanceTask).
}).
#pos(e953@100, {hasAffordance(staples, hold)}, {}, {
  obj(staples). hasPhysicalQuality(staples, sharp). hasRole(staples, toolRole). affordsTask(staples, maintenanceTask).
}).
#pos(e954@100, {hasAffordance(staples, plug)}, {}, {
  obj(staples). hasPhysicalQuality(staples, sharp). hasRole(staples, toolRole). affordsTask(staples, maintenanceTask).
}).
#pos(e955@100, {hasAffordance(staples, screw)}, {}, {
  obj(staples). hasPhysicalQuality(staples, sharp). hasRole(staples, toolRole). affordsTask(staples, maintenanceTask).
}).
#pos(e956@100, {hasAffordance(staples, stick)}, {}, {
  obj(staples). hasPhysicalQuality(staples, sharp). hasRole(staples, toolRole). affordsTask(staples, maintenanceTask).
}).
#pos(e957@100, {hasAffordance(steak, heat)}, {}, {
  obj(steak). hasPhysicalQuality(steak, fragile). hasPhysicalQuality(steak, perishable). hasRole(steak, consumableRole). affordsTask(steak, eatingDrinkingTask). affordsTask(steak, foodPreparationTask).
}).
#pos(e958@100, {hasAffordance(stick_of_butter, cut)}, {}, {
  obj(stick_of_butter). hasPhysicalQuality(stick_of_butter, granular). hasPhysicalQuality(stick_of_butter, perishable). hasRole(stick_of_butter, consumableRole). affordsTask(stick_of_butter, foodPreparationTask).
}).
#pos(e959@100, {hasAffordance(stick_of_butter, heat)}, {}, {
  obj(stick_of_butter). hasPhysicalQuality(stick_of_butter, granular). hasPhysicalQuality(stick_of_butter, perishable). hasRole(stick_of_butter, consumableRole). affordsTask(stick_of_butter, foodPreparationTask).
}).
#pos(e960@100, {hasAffordance(stick_of_butter, melt)}, {}, {
  obj(stick_of_butter). hasPhysicalQuality(stick_of_butter, granular). hasPhysicalQuality(stick_of_butter, perishable). hasRole(stick_of_butter, consumableRole). affordsTask(stick_of_butter, foodPreparationTask).
}).
#pos(e961@100, {hasAffordance(stick_of_butter, time)}, {}, {
  obj(stick_of_butter). hasPhysicalQuality(stick_of_butter, granular). hasPhysicalQuality(stick_of_butter, perishable). hasRole(stick_of_butter, consumableRole). affordsTask(stick_of_butter, foodPreparationTask).
}).
#pos(e962@100, {hasAffordance(storage, heat)}, {}, {
  obj(storage). hasPhysicalQuality(storage, hasContainer). hasRole(storage, storageContainerRole). affordsTask(storage, storageTask).
}).
#pos(e963@100, {hasAffordance(storage, store)}, {}, {
  obj(storage). hasPhysicalQuality(storage, hasContainer). hasRole(storage, storageContainerRole). affordsTask(storage, storageTask).
}).
#pos(e964@100, {hasAffordance(stove, heat)}, {}, {
  obj(stove). hasPhysicalQuality(stove, heated). hasRole(stove, cookwareRole). affordsTask(stove, foodPreparationTask).
}).
#pos(e965@100, {hasAffordance(studio_pedestal, display)}, {}, {
  obj(studio_pedestal). hasPhysicalQuality(studio_pedestal, heavy). hasPhysicalQuality(studio_pedestal, rigid). hasRole(studio_pedestal, furnitureRole). affordsTask(studio_pedestal, storageTask).
}).
#pos(e966@100, {hasAffordance(studio_pedestal, hold)}, {}, {
  obj(studio_pedestal). hasPhysicalQuality(studio_pedestal, heavy). hasPhysicalQuality(studio_pedestal, rigid). hasRole(studio_pedestal, furnitureRole). affordsTask(studio_pedestal, storageTask).
}).
#pos(e967@100, {hasAffordance(sugar, heat)}, {}, {
  obj(sugar). hasPhysicalQuality(sugar, granular). hasRole(sugar, consumableRole). affordsTask(sugar, eatingDrinkingTask).
}).
#pos(e968@100, {hasAffordance(suntan_lotion, skin)}, {}, {
  obj(suntan_lotion). hasPhysicalQuality(suntan_lotion, liquid). hasPhysicalQuality(suntan_lotion, washable). hasRole(suntan_lotion, consumableRole). affordsTask(suntan_lotion, hygieneTask).
}).
#pos(e969@100, {hasAffordance(table_cloth, cover)}, {}, {
  obj(table_cloth). hasPhysicalQuality(table_cloth, lightweight). hasPhysicalQuality(table_cloth, soft_Deformable). hasRole(table_cloth, beddingRole).
}).
#pos(e970@100, {hasAffordance(tablecloth, clean)}, {}, {
  obj(tablecloth). hasPhysicalQuality(tablecloth, soft_Deformable). hasPhysicalQuality(tablecloth, washable). hasRole(tablecloth, decorationRole). affordsTask(tablecloth, leisureTask).
}).
#pos(e971@100, {hasAffordance(tablecloth, cover)}, {}, {
  obj(tablecloth). hasPhysicalQuality(tablecloth, soft_Deformable). hasPhysicalQuality(tablecloth, washable). hasRole(tablecloth, decorationRole). affordsTask(tablecloth, leisureTask).
}).
#pos(e972@100, {hasAffordance(tablecloth, decorate)}, {}, {
  obj(tablecloth). hasPhysicalQuality(tablecloth, soft_Deformable). hasPhysicalQuality(tablecloth, washable). hasRole(tablecloth, decorationRole). affordsTask(tablecloth, leisureTask).
}).
#pos(e973@100, {hasAffordance(tables, hold)}, {}, {
  obj(tables). hasPhysicalQuality(tables, heavy). hasPhysicalQuality(tables, rigid). hasRole(tables, furnitureRole). affordsTask(tables, storageTask).
}).
#pos(e974@100, {hasAffordance(tablespoon, dry)}, {}, {
  obj(tablespoon). hasPhysicalQuality(tablespoon, hasContainer). hasPhysicalQuality(tablespoon, lightweight). hasRole(tablespoon, utensilRole). affordsTask(tablespoon, foodPreparationTask).
}).
#pos(e975@100, {hasAffordance(tablespoon, heat)}, {}, {
  obj(tablespoon). hasPhysicalQuality(tablespoon, hasContainer). hasPhysicalQuality(tablespoon, lightweight). hasRole(tablespoon, utensilRole). affordsTask(tablespoon, foodPreparationTask).
}).
#pos(e976@100, {hasAffordance(tablespoon, hold)}, {}, {
  obj(tablespoon). hasPhysicalQuality(tablespoon, hasContainer). hasPhysicalQuality(tablespoon, lightweight). hasRole(tablespoon, utensilRole). affordsTask(tablespoon, foodPreparationTask).
}).
#pos(e977@100, {hasAffordance(tablespoon, mix)}, {}, {
  obj(tablespoon). hasPhysicalQuality(tablespoon, hasContainer). hasPhysicalQuality(tablespoon, lightweight). hasRole(tablespoon, utensilRole). affordsTask(tablespoon, foodPreparationTask).
}).
#pos(e978@100, {hasAffordance(tablespoon, time)}, {}, {
  obj(tablespoon). hasPhysicalQuality(tablespoon, hasContainer). hasPhysicalQuality(tablespoon, lightweight). hasRole(tablespoon, utensilRole). affordsTask(tablespoon, foodPreparationTask).
}).
#pos(e979@100, {hasAffordance(tack, hold)}, {}, {
  obj(tack). hasPhysicalQuality(tack, rigid). hasPhysicalQuality(tack, sharp). hasRole(tack, utensilRole). affordsTask(tack, foodPreparationTask).
}).
#pos(e980@100, {hasAffordance(tap, pour)}, {}, {
  obj(tap). hasPhysicalQuality(tap, lightweight). hasPhysicalQuality(tap, rigid). hasRole(tap, toolRole). affordsTask(tap, maintenanceTask).
}).
#pos(e981@100, {hasAffordance(tape, fix)}, {}, {
  obj(tape). hasPhysicalQuality(tape, isFlexible). hasPhysicalQuality(tape, lightweight). hasRole(tape, toolRole). affordsTask(tape, maintenanceTask).
}).
#pos(e982@100, {hasAffordance(tape, stick)}, {}, {
  obj(tape). hasPhysicalQuality(tape, isFlexible). hasPhysicalQuality(tape, lightweight). hasRole(tape, toolRole). affordsTask(tape, maintenanceTask).
}).
#pos(e983@100, {hasAffordance(tape_dispenser, cut)}, {}, {
  obj(tape_dispenser). hasPhysicalQuality(tape_dispenser, lightweight). hasPhysicalQuality(tape_dispenser, rigid). hasRole(tape_dispenser, toolRole). affordsTask(tape_dispenser, maintenanceTask).
}).
#pos(e984@100, {hasAffordance(tape_dispenser, hold)}, {}, {
  obj(tape_dispenser). hasPhysicalQuality(tape_dispenser, lightweight). hasPhysicalQuality(tape_dispenser, rigid). hasRole(tape_dispenser, toolRole). affordsTask(tape_dispenser, maintenanceTask).
}).
#pos(e985@100, {hasAffordance(tape_dispenser, roll)}, {}, {
  obj(tape_dispenser). hasPhysicalQuality(tape_dispenser, lightweight). hasPhysicalQuality(tape_dispenser, rigid). hasRole(tape_dispenser, toolRole). affordsTask(tape_dispenser, maintenanceTask).
}).
#pos(e986@100, {hasAffordance(tape_dispenser, store)}, {}, {
  obj(tape_dispenser). hasPhysicalQuality(tape_dispenser, lightweight). hasPhysicalQuality(tape_dispenser, rigid). hasRole(tape_dispenser, toolRole). affordsTask(tape_dispenser, maintenanceTask).
}).
#pos(e987@100, {hasAffordance(tape_measure, time)}, {}, {
  obj(tape_measure). hasPhysicalQuality(tape_measure, lightweight). hasPhysicalQuality(tape_measure, rigid). hasRole(tape_measure, toolRole). affordsTask(tape_measure, maintenanceTask).
}).
#pos(e988@100, {hasAffordance(teakettle, heat)}, {}, {
  obj(teakettle). hasPhysicalQuality(teakettle, heated). hasRole(teakettle, cookwareRole). affordsTask(teakettle, foodPreparationTask).
}).
#pos(e989@100, {hasAffordance(teakettle, hold)}, {}, {
  obj(teakettle). hasPhysicalQuality(teakettle, heated). hasRole(teakettle, cookwareRole). affordsTask(teakettle, foodPreparationTask).
}).
#pos(e990@100, {hasAffordance(teaspoon, crack)}, {}, {
  obj(teaspoon). hasPhysicalQuality(teaspoon, lightweight). hasPhysicalQuality(teaspoon, rigid). hasRole(teaspoon, utensilRole). affordsTask(teaspoon, foodPreparationTask).
}).
#pos(e991@100, {hasAffordance(teaspoon, hold)}, {}, {
  obj(teaspoon). hasPhysicalQuality(teaspoon, lightweight). hasPhysicalQuality(teaspoon, rigid). hasRole(teaspoon, utensilRole). affordsTask(teaspoon, foodPreparationTask).
}).
#pos(e992@100, {hasAffordance(teaspoon, mix)}, {}, {
  obj(teaspoon). hasPhysicalQuality(teaspoon, lightweight). hasPhysicalQuality(teaspoon, rigid). hasRole(teaspoon, utensilRole). affordsTask(teaspoon, foodPreparationTask).
}).
#pos(e993@100, {hasAffordance(teaspoon, scoop)}, {}, {
  obj(teaspoon). hasPhysicalQuality(teaspoon, lightweight). hasPhysicalQuality(teaspoon, rigid). hasRole(teaspoon, utensilRole). affordsTask(teaspoon, foodPreparationTask).
}).
#pos(e994@100, {hasAffordance(teaspoon, skin)}, {}, {
  obj(teaspoon). hasPhysicalQuality(teaspoon, lightweight). hasPhysicalQuality(teaspoon, rigid). hasRole(teaspoon, utensilRole). affordsTask(teaspoon, foodPreparationTask).
}).
#pos(e995@100, {hasAffordance(teaspoon, time)}, {}, {
  obj(teaspoon). hasPhysicalQuality(teaspoon, lightweight). hasPhysicalQuality(teaspoon, rigid). hasRole(teaspoon, utensilRole). affordsTask(teaspoon, foodPreparationTask).
}).
#pos(e996@100, {hasAffordance(telephone_book, contain)}, {}, {
  obj(telephone_book). hasPhysicalQuality(telephone_book, fragile). hasPhysicalQuality(telephone_book, lightweight). hasRole(telephone_book, documentRole). affordsTask(telephone_book, workStudyTask).
}).
#pos(e997@100, {hasAffordance(telephone_book, mark)}, {}, {
  obj(telephone_book). hasPhysicalQuality(telephone_book, fragile). hasPhysicalQuality(telephone_book, lightweight). hasRole(telephone_book, documentRole). affordsTask(telephone_book, workStudyTask).
}).
#pos(e998@100, {hasAffordance(thumb_tack, dry)}, {}, {
  obj(thumb_tack). hasPhysicalQuality(thumb_tack, lightweight). hasPhysicalQuality(thumb_tack, sharp). hasRole(thumb_tack, toolRole). affordsTask(thumb_tack, maintenanceTask).
}).
#pos(e999@100, {hasAffordance(thumb_tack, hold)}, {}, {
  obj(thumb_tack). hasPhysicalQuality(thumb_tack, lightweight). hasPhysicalQuality(thumb_tack, sharp). hasRole(thumb_tack, toolRole). affordsTask(thumb_tack, maintenanceTask).
}).
#pos(e1000@100, {hasAffordance(thumb_tack, staple)}, {}, {
  obj(thumb_tack). hasPhysicalQuality(thumb_tack, lightweight). hasPhysicalQuality(thumb_tack, sharp). hasRole(thumb_tack, toolRole). affordsTask(thumb_tack, maintenanceTask).
}).
#pos(e1001@100, {hasAffordance(tin_cans, store)}, {}, {
  obj(tin_cans). hasPhysicalQuality(tin_cans, heavy). hasPhysicalQuality(tin_cans, rigid). hasRole(tin_cans, storageContainerRole). affordsTask(tin_cans, storageTask).
}).
#pos(e1002@100, {hasAffordance(tissue_holder, decorate)}, {}, {
  obj(tissue_holder). hasPhysicalQuality(tissue_holder, lightweight). hasPhysicalQuality(tissue_holder, rigid). hasRole(tissue_holder, storageContainerRole). affordsTask(tissue_holder, storageTask).
}).
#pos(e1003@100, {hasAffordance(tissue_holder, hold)}, {}, {
  obj(tissue_holder). hasPhysicalQuality(tissue_holder, lightweight). hasPhysicalQuality(tissue_holder, rigid). hasRole(tissue_holder, storageContainerRole). affordsTask(tissue_holder, storageTask).
}).
#pos(e1004@100, {hasAffordance(toilet_brush, clean)}, {}, {
  obj(toilet_brush). hasPhysicalQuality(toilet_brush, fragile). hasPhysicalQuality(toilet_brush, lightweight). hasRole(toilet_brush, cleaningToolRole). affordsTask(toilet_brush, cleaningTask).
}).
#pos(e1005@100, {hasAffordance(toilet_paper, absorb)}, {}, {
  obj(toilet_paper). hasPhysicalQuality(toilet_paper, soft_Deformable). hasPhysicalQuality(toilet_paper, washable). hasRole(toilet_paper, consumableRole). affordsTask(toilet_paper, hygieneTask).
}).
#pos(e1006@100, {hasAffordance(toilet_paper, clean)}, {}, {
  obj(toilet_paper). hasPhysicalQuality(toilet_paper, soft_Deformable). hasPhysicalQuality(toilet_paper, washable). hasRole(toilet_paper, consumableRole). affordsTask(toilet_paper, hygieneTask).
}).
#pos(e1007@100, {hasAffordance(toilet_paper, wipe)}, {}, {
  obj(toilet_paper). hasPhysicalQuality(toilet_paper, soft_Deformable). hasPhysicalQuality(toilet_paper, washable). hasRole(toilet_paper, consumableRole). affordsTask(toilet_paper, hygieneTask).
}).
#pos(e1008@100, {hasAffordance(toilet_seat, comfort)}, {}, {
  obj(toilet_seat). hasPhysicalQuality(toilet_seat, fragile). hasRole(toilet_seat, utensilRole). affordsTask(toilet_seat, eatingDrinkingTask).
}).
#pos(e1009@100, {hasAffordance(toilet_tank, hold)}, {}, {
  obj(toilet_tank). hasPhysicalQuality(toilet_tank, heavy). hasRole(toilet_tank, applianceRole). affordsTask(toilet_tank, wasteDisposalTask).
}).
#pos(e1010@100, {hasAffordance(toilet_tank, store)}, {}, {
  obj(toilet_tank). hasPhysicalQuality(toilet_tank, heavy). hasRole(toilet_tank, applianceRole). affordsTask(toilet_tank, wasteDisposalTask).
}).
#pos(e1011@100, {hasAffordance(toolbox, screw)}, {}, {
  obj(toolbox). hasPhysicalQuality(toolbox, heavy). hasPhysicalQuality(toolbox, rigid). hasRole(toolbox, toolRole). affordsTask(toolbox, maintenanceTask).
}).
#pos(e1012@100, {hasAffordance(toolbox, store)}, {}, {
  obj(toolbox). hasPhysicalQuality(toolbox, heavy). hasPhysicalQuality(toolbox, rigid). hasRole(toolbox, toolRole). affordsTask(toolbox, maintenanceTask).
}).
#pos(e1013@100, {hasAffordance(toothbrush, clean)}, {}, {
  obj(toothbrush). hasPhysicalQuality(toothbrush, fragile). hasPhysicalQuality(toothbrush, lightweight). affordsTask(toothbrush, hygieneTask).
}).
#pos(e1014@100, {hasAffordance(toothbrush_bristle, clean)}, {}, {
  obj(toothbrush_bristle). hasPhysicalQuality(toothbrush_bristle, lightweight). hasPhysicalQuality(toothbrush_bristle, soft_Deformable). affordsTask(toothbrush_bristle, hygieneTask).
}).
#pos(e1015@100, {hasAffordance(toothbrush_head, clean)}, {}, {
  obj(toothbrush_head). hasPhysicalQuality(toothbrush_head, fragile). hasPhysicalQuality(toothbrush_head, lightweight). affordsTask(toothbrush_head, eatingDrinkingTask).
}).
#pos(e1016@100, {hasAffordance(toothbrush_head, hold)}, {}, {
  obj(toothbrush_head). hasPhysicalQuality(toothbrush_head, fragile). hasPhysicalQuality(toothbrush_head, lightweight). affordsTask(toothbrush_head, eatingDrinkingTask).
}).
#pos(e1017@100, {hasAffordance(toothbrush_head, plug)}, {}, {
  obj(toothbrush_head). hasPhysicalQuality(toothbrush_head, fragile). hasPhysicalQuality(toothbrush_head, lightweight). affordsTask(toothbrush_head, eatingDrinkingTask).
}).
#pos(e1018@100, {hasAffordance(toothpaste, clean)}, {}, {
  obj(toothpaste). hasPhysicalQuality(toothpaste, liquid). hasPhysicalQuality(toothpaste, toxic_Hazardous). hasRole(toothpaste, cleaningToolRole). affordsTask(toothpaste, hygieneTask).
}).
#pos(e1019@100, {hasAffordance(toothpaste, polish)}, {}, {
  obj(toothpaste). hasPhysicalQuality(toothpaste, liquid). hasPhysicalQuality(toothpaste, toxic_Hazardous). hasRole(toothpaste, cleaningToolRole). affordsTask(toothpaste, hygieneTask).
}).
#pos(e1020@100, {hasAffordance(torch, illuminate)}, {}, {
  obj(torch). hasPhysicalQuality(torch, electronic). hasPhysicalQuality(torch, heated). hasRole(torch, lightingRole). affordsTask(torch, leisureTask).
}).
#pos(e1021@100, {hasAffordance(tote_bag, carry)}, {}, {
  obj(tote_bag). hasPhysicalQuality(tote_bag, lightweight). hasPhysicalQuality(tote_bag, soft_Deformable). hasRole(tote_bag, clothingRole). affordsTask(tote_bag, storageTask).
}).
#pos(e1022@100, {hasAffordance(towel, absorb)}, {}, {
  obj(towel). hasPhysicalQuality(towel, soft_Deformable). hasPhysicalQuality(towel, washable). hasRole(towel, cleaningToolRole). affordsTask(towel, hygieneTask).
}).
#pos(e1023@100, {hasAffordance(towel, clean)}, {}, {
  obj(towel). hasPhysicalQuality(towel, soft_Deformable). hasPhysicalQuality(towel, washable). hasRole(towel, cleaningToolRole). affordsTask(towel, hygieneTask).
}).
#pos(e1024@100, {hasAffordance(towel, dry)}, {}, {
  obj(towel). hasPhysicalQuality(towel, soft_Deformable). hasPhysicalQuality(towel, washable). hasRole(towel, cleaningToolRole). affordsTask(towel, hygieneTask).
}).
#pos(e1025@100, {hasAffordance(towel, skin)}, {}, {
  obj(towel). hasPhysicalQuality(towel, soft_Deformable). hasPhysicalQuality(towel, washable). hasRole(towel, cleaningToolRole). affordsTask(towel, hygieneTask).
}).
#pos(e1026@100, {hasAffordance(towel, wash)}, {}, {
  obj(towel). hasPhysicalQuality(towel, soft_Deformable). hasPhysicalQuality(towel, washable). hasRole(towel, cleaningToolRole). affordsTask(towel, hygieneTask).
}).
#pos(e1027@100, {hasAffordance(towel_bar, dry)}, {}, {
  obj(towel_bar). hasPhysicalQuality(towel_bar, electronic). hasPhysicalQuality(towel_bar, rigid). hasRole(towel_bar, storageContainerRole). affordsTask(towel_bar, hygieneTask).
}).
#pos(e1028@100, {hasAffordance(towel_bar, hold)}, {}, {
  obj(towel_bar). hasPhysicalQuality(towel_bar, electronic). hasPhysicalQuality(towel_bar, rigid). hasRole(towel_bar, storageContainerRole). affordsTask(towel_bar, hygieneTask).
}).
#pos(e1029@100, {hasAffordance(towel_bar, read)}, {}, {
  obj(towel_bar). hasPhysicalQuality(towel_bar, electronic). hasPhysicalQuality(towel_bar, rigid). hasRole(towel_bar, storageContainerRole). affordsTask(towel_bar, hygieneTask).
}).
#pos(e1030@100, {hasAffordance(towel_bar, store)}, {}, {
  obj(towel_bar). hasPhysicalQuality(towel_bar, electronic). hasPhysicalQuality(towel_bar, rigid). hasRole(towel_bar, storageContainerRole). affordsTask(towel_bar, hygieneTask).
}).
#pos(e1031@100, {hasAffordance(towel_bar, wash)}, {}, {
  obj(towel_bar). hasPhysicalQuality(towel_bar, electronic). hasPhysicalQuality(towel_bar, rigid). hasRole(towel_bar, storageContainerRole). affordsTask(towel_bar, hygieneTask).
}).
#pos(e1032@100, {hasAffordance(towel_rack, dry)}, {}, {
  obj(towel_rack). hasPhysicalQuality(towel_rack, heavy). hasPhysicalQuality(towel_rack, rigid). hasRole(towel_rack, storageContainerRole). affordsTask(towel_rack, storageTask).
}).
#pos(e1033@100, {hasAffordance(towel_rack, heat)}, {}, {
  obj(towel_rack). hasPhysicalQuality(towel_rack, heavy). hasPhysicalQuality(towel_rack, rigid). hasRole(towel_rack, storageContainerRole). affordsTask(towel_rack, storageTask).
}).
#pos(e1034@100, {hasAffordance(towel_rack, hold)}, {}, {
  obj(towel_rack). hasPhysicalQuality(towel_rack, heavy). hasPhysicalQuality(towel_rack, rigid). hasRole(towel_rack, storageContainerRole). affordsTask(towel_rack, storageTask).
}).
#pos(e1035@100, {hasAffordance(towel_rack, wash)}, {}, {
  obj(towel_rack). hasPhysicalQuality(towel_rack, heavy). hasPhysicalQuality(towel_rack, rigid). hasRole(towel_rack, storageContainerRole). affordsTask(towel_rack, storageTask).
}).
#pos(e1036@100, {hasAffordance(toy, entertain)}, {}, {
  obj(toy). hasRole(toy, entertainmentRole). affordsTask(toy, leisureTask).
}).
#pos(e1037@100, {hasAffordance(trash, hold)}, {}, {
  obj(trash). hasRole(trash, storageContainerRole). affordsTask(trash, wasteDisposalTask).
}).
#pos(e1038@100, {hasAffordance(trash_can, dispose)}, {}, {
  obj(trash_can). hasPhysicalQuality(trash_can, heavy). hasRole(trash_can, storageContainerRole). hasRole(trash_can, wasteRole). affordsTask(trash_can, wasteDisposalTask).
}).
#pos(e1039@100, {hasAffordance(trash_can, rub)}, {}, {
  obj(trash_can). hasPhysicalQuality(trash_can, heavy). hasRole(trash_can, storageContainerRole). hasRole(trash_can, wasteRole). affordsTask(trash_can, wasteDisposalTask).
}).
#pos(e1040@100, {hasAffordance(trash_can, stick)}, {}, {
  obj(trash_can). hasPhysicalQuality(trash_can, heavy). hasRole(trash_can, storageContainerRole). hasRole(trash_can, wasteRole). affordsTask(trash_can, wasteDisposalTask).
}).
#pos(e1041@100, {hasAffordance(trash_can, store)}, {}, {
  obj(trash_can). hasPhysicalQuality(trash_can, heavy). hasRole(trash_can, storageContainerRole). hasRole(trash_can, wasteRole). affordsTask(trash_can, wasteDisposalTask).
}).
#pos(e1042@100, {hasAffordance(trash_container, contain)}, {}, {
  obj(trash_container). hasPhysicalQuality(trash_container, hasContainer). hasPhysicalQuality(trash_container, heavy). hasRole(trash_container, storageContainerRole). affordsTask(trash_container, wasteDisposalTask).
}).
#pos(e1043@100, {hasAffordance(trash_container, entertain)}, {}, {
  obj(trash_container). hasPhysicalQuality(trash_container, hasContainer). hasPhysicalQuality(trash_container, heavy). hasRole(trash_container, storageContainerRole). affordsTask(trash_container, wasteDisposalTask).
}).
#pos(e1044@100, {hasAffordance(trash_container, hold)}, {}, {
  obj(trash_container). hasPhysicalQuality(trash_container, hasContainer). hasPhysicalQuality(trash_container, heavy). hasRole(trash_container, storageContainerRole). affordsTask(trash_container, wasteDisposalTask).
}).
#pos(e1045@100, {hasAffordance(trash_container, rub)}, {}, {
  obj(trash_container). hasPhysicalQuality(trash_container, hasContainer). hasPhysicalQuality(trash_container, heavy). hasRole(trash_container, storageContainerRole). affordsTask(trash_container, wasteDisposalTask).
}).
#pos(e1046@100, {hasAffordance(tub, absorb)}, {}, {
  obj(tub). hasPhysicalQuality(tub, hasContainer). hasPhysicalQuality(tub, heavy). hasRole(tub, storageContainerRole). affordsTask(tub, eatingDrinkingTask).
}).
#pos(e1047@100, {hasAffordance(tub, clean)}, {}, {
  obj(tub). hasPhysicalQuality(tub, hasContainer). hasPhysicalQuality(tub, heavy). hasRole(tub, storageContainerRole). affordsTask(tub, eatingDrinkingTask).
}).
#pos(e1048@100, {hasAffordance(tub, contain)}, {}, {
  obj(tub). hasPhysicalQuality(tub, hasContainer). hasPhysicalQuality(tub, heavy). hasRole(tub, storageContainerRole). affordsTask(tub, eatingDrinkingTask).
}).
#pos(e1049@100, {hasAffordance(tub, hold)}, {}, {
  obj(tub). hasPhysicalQuality(tub, hasContainer). hasPhysicalQuality(tub, heavy). hasRole(tub, storageContainerRole). affordsTask(tub, eatingDrinkingTask).
}).
#pos(e1050@100, {hasAffordance(tub, time)}, {}, {
  obj(tub). hasPhysicalQuality(tub, hasContainer). hasPhysicalQuality(tub, heavy). hasRole(tub, storageContainerRole). affordsTask(tub, eatingDrinkingTask).
}).
#pos(e1051@100, {hasAffordance(tub, wash)}, {}, {
  obj(tub). hasPhysicalQuality(tub, hasContainer). hasPhysicalQuality(tub, heavy). hasRole(tub, storageContainerRole). affordsTask(tub, eatingDrinkingTask).
}).
#pos(e1052@100, {hasAffordance(tv, control)}, {}, {
  obj(tv). hasPhysicalQuality(tv, electronic). hasPhysicalQuality(tv, heavy). hasRole(tv, applianceRole). affordsTask(tv, leisureTask).
}).
#pos(e1053@100, {hasAffordance(tv, display)}, {}, {
  obj(tv). hasPhysicalQuality(tv, electronic). hasPhysicalQuality(tv, heavy). hasRole(tv, applianceRole). affordsTask(tv, leisureTask).
}).
#pos(e1054@100, {hasAffordance(tv, entertain)}, {}, {
  obj(tv). hasPhysicalQuality(tv, electronic). hasPhysicalQuality(tv, heavy). hasRole(tv, applianceRole). affordsTask(tv, leisureTask).
}).
#pos(e1055@100, {hasAffordance(typewriter, cool)}, {}, {
  obj(typewriter). hasPhysicalQuality(typewriter, heavy). hasPhysicalQuality(typewriter, rigid). hasRole(typewriter, toolRole). affordsTask(typewriter, workStudyTask).
}).
#pos(e1056@100, {hasAffordance(typewriter, file)}, {}, {
  obj(typewriter). hasPhysicalQuality(typewriter, heavy). hasPhysicalQuality(typewriter, rigid). hasRole(typewriter, toolRole). affordsTask(typewriter, workStudyTask).
}).
#pos(e1057@100, {hasAffordance(typewriter, write)}, {}, {
  obj(typewriter). hasPhysicalQuality(typewriter, heavy). hasPhysicalQuality(typewriter, rigid). hasRole(typewriter, toolRole). affordsTask(typewriter, workStudyTask).
}).
#pos(e1058@100, {hasAffordance(umbrella, break)}, {}, {
  obj(umbrella). hasPhysicalQuality(umbrella, isFlexible). hasPhysicalQuality(umbrella, lightweight). hasRole(umbrella, toolRole).
}).
#pos(e1059@100, {hasAffordance(umbrella, dry)}, {}, {
  obj(umbrella). hasPhysicalQuality(umbrella, isFlexible). hasPhysicalQuality(umbrella, lightweight). hasRole(umbrella, toolRole).
}).
#pos(e1060@100, {hasAffordance(upright_piano, display)}, {}, {
  obj(upright_piano). hasPhysicalQuality(upright_piano, heavy). hasPhysicalQuality(upright_piano, rigid). hasRole(upright_piano, entertainmentRole). hasRole(upright_piano, musicalInstrumentRole). affordsTask(upright_piano, leisureTask). affordsTask(upright_piano, workStudyTask).
}).
#pos(e1061@100, {hasAffordance(upright_piano, entertain)}, {}, {
  obj(upright_piano). hasPhysicalQuality(upright_piano, heavy). hasPhysicalQuality(upright_piano, rigid). hasRole(upright_piano, entertainmentRole). hasRole(upright_piano, musicalInstrumentRole). affordsTask(upright_piano, leisureTask). affordsTask(upright_piano, workStudyTask).
}).
#pos(e1062@100, {hasAffordance(utility_case, carry)}, {}, {
  obj(utility_case). hasPhysicalQuality(utility_case, hasContainer). hasRole(utility_case, storageContainerRole). affordsTask(utility_case, storageTask).
}).
#pos(e1063@100, {hasAffordance(utility_case, hold)}, {}, {
  obj(utility_case). hasPhysicalQuality(utility_case, hasContainer). hasRole(utility_case, storageContainerRole). affordsTask(utility_case, storageTask).
}).
#pos(e1064@100, {hasAffordance(vacuum, clean)}, {}, {
  obj(vacuum). hasPhysicalQuality(vacuum, electronic). hasPhysicalQuality(vacuum, heavy). hasRole(vacuum, cleaningToolRole). affordsTask(vacuum, cleaningTask).
}).
#pos(e1065@100, {hasAffordance(vanity_case, carry)}, {}, {
  obj(vanity_case). hasPhysicalQuality(vanity_case, hasContainer). hasPhysicalQuality(vanity_case, lightweight). hasRole(vanity_case, storageContainerRole). affordsTask(vanity_case, leisureTask).
}).
#pos(e1066@100, {hasAffordance(vanity_case, hold)}, {}, {
  obj(vanity_case). hasPhysicalQuality(vanity_case, hasContainer). hasPhysicalQuality(vanity_case, lightweight). hasRole(vanity_case, storageContainerRole). affordsTask(vanity_case, leisureTask).
}).
#pos(e1067@100, {hasAffordance(vanity_case, store)}, {}, {
  obj(vanity_case). hasPhysicalQuality(vanity_case, hasContainer). hasPhysicalQuality(vanity_case, lightweight). hasRole(vanity_case, storageContainerRole). affordsTask(vanity_case, leisureTask).
}).
#pos(e1068@100, {hasAffordance(vase, hold)}, {}, {
  obj(vase). hasPhysicalQuality(vase, fragile). hasPhysicalQuality(vase, rigid). hasRole(vase, decorationRole).
}).
#pos(e1069@100, {hasAffordance(vegetables, heat)}, {}, {
  obj(vegetables). hasPhysicalQuality(vegetables, granular). hasPhysicalQuality(vegetables, perishable). hasRole(vegetables, consumableRole). affordsTask(vegetables, eatingDrinkingTask). affordsTask(vegetables, foodPreparationTask).
}).
#pos(e1070@100, {hasAffordance(vent_brush, clean)}, {}, {
  obj(vent_brush). hasPhysicalQuality(vent_brush, lightweight). hasPhysicalQuality(vent_brush, soft_Deformable). hasRole(vent_brush, cleaningToolRole). affordsTask(vent_brush, cleaningTask).
}).
#pos(e1071@100, {hasAffordance(ventilation_system, cool)}, {}, {
  obj(ventilation_system). hasPhysicalQuality(ventilation_system, electronic). hasPhysicalQuality(ventilation_system, heavy). hasRole(ventilation_system, applianceRole). affordsTask(ventilation_system, maintenanceTask).
}).
#pos(e1072@100, {hasAffordance(vice, hold)}, {}, {
  obj(vice). hasPhysicalQuality(vice, heavy). hasPhysicalQuality(vice, rigid). hasRole(vice, toolRole). affordsTask(vice, maintenanceTask).
}).
#pos(e1073@100, {hasAffordance(vinyl, cover)}, {}, {
  obj(vinyl). hasPhysicalQuality(vinyl, granular). hasRole(vinyl, consumableRole).
}).
#pos(e1074@100, {hasAffordance(violin, entertain)}, {}, {
  obj(violin). hasPhysicalQuality(violin, electronic). hasPhysicalQuality(violin, rigid). hasRole(violin, musicalInstrumentRole). affordsTask(violin, leisureTask).
}).
#pos(e1075@100, {hasAffordance(wall, contain)}, {}, {
  obj(wall). hasPhysicalQuality(wall, rigid). hasRole(wall, furnitureRole).
}).
#pos(e1076@100, {hasAffordance(wall, control)}, {}, {
  obj(wall). hasPhysicalQuality(wall, rigid). hasRole(wall, furnitureRole).
}).
#pos(e1077@100, {hasAffordance(wall, hold)}, {}, {
  obj(wall). hasPhysicalQuality(wall, rigid). hasRole(wall, furnitureRole).
}).
#pos(e1078@100, {hasAffordance(wash_cloth, clean)}, {}, {
  obj(wash_cloth). hasPhysicalQuality(wash_cloth, soft_Deformable). hasPhysicalQuality(wash_cloth, washable). hasRole(wash_cloth, cleaningToolRole). affordsTask(wash_cloth, hygieneTask).
}).
#pos(e1079@100, {hasAffordance(wash_cloth, wash)}, {}, {
  obj(wash_cloth). hasPhysicalQuality(wash_cloth, soft_Deformable). hasPhysicalQuality(wash_cloth, washable). hasRole(wash_cloth, cleaningToolRole). affordsTask(wash_cloth, hygieneTask).
}).
#pos(e1080@100, {hasAffordance(washcloth, clean)}, {}, {
  obj(washcloth). hasPhysicalQuality(washcloth, soft_Deformable). hasPhysicalQuality(washcloth, washable). hasRole(washcloth, cleaningToolRole). affordsTask(washcloth, hygieneTask).
}).
#pos(e1081@100, {hasAffordance(washcloth, wash)}, {}, {
  obj(washcloth). hasPhysicalQuality(washcloth, soft_Deformable). hasPhysicalQuality(washcloth, washable). hasRole(washcloth, cleaningToolRole). affordsTask(washcloth, hygieneTask).
}).
#pos(e1082@100, {hasAffordance(washing_machine, clean)}, {}, {
  obj(washing_machine). hasPhysicalQuality(washing_machine, electronic). hasPhysicalQuality(washing_machine, heavy). hasRole(washing_machine, applianceRole). affordsTask(washing_machine, cleaningTask).
}).
#pos(e1083@100, {hasAffordance(washing_machine, wash)}, {}, {
  obj(washing_machine). hasPhysicalQuality(washing_machine, electronic). hasPhysicalQuality(washing_machine, heavy). hasRole(washing_machine, applianceRole). affordsTask(washing_machine, cleaningTask).
}).
#pos(e1084@100, {hasAffordance(water, break)}, {}, {
  obj(water). hasPhysicalQuality(water, liquid). hasRole(water, cleaningToolRole). hasRole(water, consumableRole). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e1085@100, {hasAffordance(water, clean)}, {}, {
  obj(water). hasPhysicalQuality(water, liquid). hasRole(water, cleaningToolRole). hasRole(water, consumableRole). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e1086@100, {hasAffordance(water, cool)}, {}, {
  obj(water). hasPhysicalQuality(water, liquid). hasRole(water, cleaningToolRole). hasRole(water, consumableRole). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e1087@100, {hasAffordance(water, cover)}, {}, {
  obj(water). hasPhysicalQuality(water, liquid). hasRole(water, cleaningToolRole). hasRole(water, consumableRole). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e1088@100, {hasAffordance(water, heat)}, {}, {
  obj(water). hasPhysicalQuality(water, liquid). hasRole(water, cleaningToolRole). hasRole(water, consumableRole). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e1089@100, {hasAffordance(water, mix)}, {}, {
  obj(water). hasPhysicalQuality(water, liquid). hasRole(water, cleaningToolRole). hasRole(water, consumableRole). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e1090@100, {hasAffordance(water, wash)}, {}, {
  obj(water). hasPhysicalQuality(water, liquid). hasRole(water, cleaningToolRole). hasRole(water, consumableRole). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e1091@100, {hasAffordance(wax, melt)}, {}, {
  obj(wax). hasPhysicalQuality(wax, liquid). hasPhysicalQuality(wax, perishable). hasRole(wax, consumableRole). affordsTask(wax, eatingDrinkingTask).
}).
#pos(e1092@100, {hasAffordance(wheel, carry)}, {}, {
  obj(wheel). hasPhysicalQuality(wheel, lightweight). hasPhysicalQuality(wheel, rigid). hasRole(wheel, toolRole). affordsTask(wheel, maintenanceTask).
}).
#pos(e1093@100, {hasAffordance(wheel, hold)}, {}, {
  obj(wheel). hasPhysicalQuality(wheel, lightweight). hasPhysicalQuality(wheel, rigid). hasRole(wheel, toolRole). affordsTask(wheel, maintenanceTask).
}).
#pos(e1094@100, {hasAffordance(wheel, roll)}, {}, {
  obj(wheel). hasPhysicalQuality(wheel, lightweight). hasPhysicalQuality(wheel, rigid). hasRole(wheel, toolRole). affordsTask(wheel, maintenanceTask).
}).
#pos(e1095@100, {hasAffordance(wheel, smoothen)}, {}, {
  obj(wheel). hasPhysicalQuality(wheel, lightweight). hasPhysicalQuality(wheel, rigid). hasRole(wheel, toolRole). affordsTask(wheel, maintenanceTask).
}).
#pos(e1096@100, {hasAffordance(window, break)}, {}, {
  obj(window). hasPhysicalQuality(window, lightweight). hasPhysicalQuality(window, rigid). hasRole(window, furnitureRole). affordsTask(window, leisureTask).
}).
#pos(e1097@100, {hasAffordance(window, illuminate)}, {}, {
  obj(window). hasPhysicalQuality(window, lightweight). hasPhysicalQuality(window, rigid). hasRole(window, furnitureRole). affordsTask(window, leisureTask).
}).
#pos(e1098@100, {hasAffordance(window, stick)}, {}, {
  obj(window). hasPhysicalQuality(window, lightweight). hasPhysicalQuality(window, rigid). hasRole(window, furnitureRole). affordsTask(window, leisureTask).
}).
#pos(e1099@100, {hasAffordance(window_curtain, decorate)}, {}, {
  obj(window_curtain). hasPhysicalQuality(window_curtain, lightweight). hasPhysicalQuality(window_curtain, soft_Deformable). hasRole(window_curtain, decorationRole). affordsTask(window_curtain, leisureTask).
}).
#pos(e1100@100, {hasAffordance(window_curtain, illuminate)}, {}, {
  obj(window_curtain). hasPhysicalQuality(window_curtain, lightweight). hasPhysicalQuality(window_curtain, soft_Deformable). hasRole(window_curtain, decorationRole). affordsTask(window_curtain, leisureTask).
}).
#pos(e1101@100, {hasAffordance(wine, time)}, {}, {
  obj(wine). hasPhysicalQuality(wine, liquid). hasPhysicalQuality(wine, perishable). hasRole(wine, consumableRole). affordsTask(wine, eatingDrinkingTask).
}).
#pos(e1102@100, {hasAffordance(wool, heat)}, {}, {
  obj(wool). hasPhysicalQuality(wool, soft_Deformable). hasPhysicalQuality(wool, washable). hasRole(wool, clothingRole). affordsTask(wool, dressingTask).
}).
#pos(e1103@100, {hasAffordance(wrench, screw)}, {}, {
  obj(wrench). hasPhysicalQuality(wrench, heavy). hasPhysicalQuality(wrench, rigid). hasRole(wrench, toolRole). affordsTask(wrench, maintenanceTask).
}).

% --- Negative examples (weight 10) ---
#pos(e1104@10, {}, {hasAffordance(acne_medication, cool)}, {
  obj(acne_medication). hasPhysicalQuality(acne_medication, perishable). hasPhysicalQuality(acne_medication, toxic_Hazardous). hasRole(acne_medication, consumableRole). affordsTask(acne_medication, hygieneTask).
}).
#pos(e1105@10, {}, {hasAffordance(acne_medication, wrench)}, {
  obj(acne_medication). hasPhysicalQuality(acne_medication, perishable). hasPhysicalQuality(acne_medication, toxic_Hazardous). hasRole(acne_medication, consumableRole). affordsTask(acne_medication, hygieneTask).
}).
#pos(e1106@10, {}, {hasAffordance(air_conditioner, bend)}, {
  obj(air_conditioner). hasPhysicalQuality(air_conditioner, electronic). hasPhysicalQuality(air_conditioner, heavy). hasPhysicalQuality(air_conditioner, requiresCooling). hasRole(air_conditioner, applianceRole).
}).
#pos(e1107@10, {}, {hasAffordance(air_conditioner, grind)}, {
  obj(air_conditioner). hasPhysicalQuality(air_conditioner, electronic). hasPhysicalQuality(air_conditioner, heavy). hasPhysicalQuality(air_conditioner, requiresCooling). hasRole(air_conditioner, applianceRole).
}).
#pos(e1108@10, {}, {hasAffordance(album, dry)}, {
  obj(album). hasPhysicalQuality(album, lightweight). hasRole(album, documentRole). affordsTask(album, leisureTask).
}).
#pos(e1109@10, {}, {hasAffordance(album, exercise)}, {
  obj(album). hasPhysicalQuality(album, lightweight). hasRole(album, documentRole). affordsTask(album, leisureTask).
}).
#pos(e1110@10, {}, {hasAffordance(alcohol, control)}, {
  obj(alcohol). hasPhysicalQuality(alcohol, flammable). hasRole(alcohol, consumableRole).
}).
#pos(e1111@10, {}, {hasAffordance(alcohol, crumble)}, {
  obj(alcohol). hasPhysicalQuality(alcohol, flammable). hasRole(alcohol, consumableRole).
}).
#pos(e1112@10, {}, {hasAffordance(appointment_book, comfort)}, {
  obj(appointment_book). hasRole(appointment_book, documentRole).
}).
#pos(e1113@10, {}, {hasAffordance(appointment_book, slit)}, {
  obj(appointment_book). hasRole(appointment_book, documentRole).
}).
#pos(e1114@10, {}, {hasAffordance(arch, plug)}, {
  obj(arch). hasPhysicalQuality(arch, heavy). hasPhysicalQuality(arch, rigid). hasRole(arch, furnitureRole).
}).
#pos(e1115@10, {}, {hasAffordance(arch, store)}, {
  obj(arch). hasPhysicalQuality(arch, heavy). hasPhysicalQuality(arch, rigid). hasRole(arch, furnitureRole).
}).
#pos(e1116@10, {}, {hasAffordance(armchair, bend)}, {
  obj(armchair). hasPhysicalQuality(armchair, heavy). hasRole(armchair, furnitureRole). affordsTask(armchair, leisureTask).
}).
#pos(e1117@10, {}, {hasAffordance(armchair, bore)}, {
  obj(armchair). hasPhysicalQuality(armchair, heavy). hasRole(armchair, furnitureRole). affordsTask(armchair, leisureTask).
}).
#pos(e1118@10, {}, {hasAffordance(armoire, comfort)}, {
  obj(armoire). hasPhysicalQuality(armoire, heavy). hasPhysicalQuality(armoire, rigid). hasRole(armoire, furnitureRole). affordsTask(armoire, storageTask).
}).
#pos(e1119@10, {}, {hasAffordance(armoire, drill)}, {
  obj(armoire). hasPhysicalQuality(armoire, heavy). hasPhysicalQuality(armoire, rigid). hasRole(armoire, furnitureRole). affordsTask(armoire, storageTask).
}).
#pos(e1120@10, {}, {hasAffordance(artichoke_hearts, eat)}, {
  obj(artichoke_hearts). hasPhysicalQuality(artichoke_hearts, perishable). hasRole(artichoke_hearts, consumableRole). affordsTask(artichoke_hearts, eatingDrinkingTask).
}).
#pos(e1121@10, {}, {hasAffordance(artichoke_hearts, scoop)}, {
  obj(artichoke_hearts). hasPhysicalQuality(artichoke_hearts, perishable). hasRole(artichoke_hearts, consumableRole). affordsTask(artichoke_hearts, eatingDrinkingTask).
}).
#pos(e1122@10, {}, {hasAffordance(attache_case, bend)}, {
  obj(attache_case). hasPhysicalQuality(attache_case, lightweight). hasPhysicalQuality(attache_case, soft_Deformable). hasRole(attache_case, storageContainerRole). affordsTask(attache_case, workStudyTask).
}).
#pos(e1123@10, {}, {hasAffordance(attache_case, unclog)}, {
  obj(attache_case). hasPhysicalQuality(attache_case, lightweight). hasPhysicalQuality(attache_case, soft_Deformable). hasRole(attache_case, storageContainerRole). affordsTask(attache_case, workStudyTask).
}).
#pos(e1124@10, {}, {hasAffordance(bag, drill)}, {
  obj(bag). hasPhysicalQuality(bag, hasContainer). hasRole(bag, storageContainerRole). affordsTask(bag, storageTask).
}).
#pos(e1125@10, {}, {hasAffordance(bag, strip)}, {
  obj(bag). hasPhysicalQuality(bag, hasContainer). hasRole(bag, storageContainerRole). affordsTask(bag, storageTask).
}).
#pos(e1126@10, {}, {hasAffordance(baking_oven, smoothen)}, {
  obj(baking_oven). hasPhysicalQuality(baking_oven, heated). hasRole(baking_oven, cookwareRole). affordsTask(baking_oven, foodPreparationTask).
}).
#pos(e1127@10, {}, {hasAffordance(baking_oven, wrench)}, {
  obj(baking_oven). hasPhysicalQuality(baking_oven, heated). hasRole(baking_oven, cookwareRole). affordsTask(baking_oven, foodPreparationTask).
}).
#pos(e1128@10, {}, {hasAffordance(ballpoint_pen, dry)}, {
  obj(ballpoint_pen). hasPhysicalQuality(ballpoint_pen, lightweight). hasPhysicalQuality(ballpoint_pen, rigid). hasRole(ballpoint_pen, toolRole).
}).
#pos(e1129@10, {}, {hasAffordance(ballpoint_pen, plug)}, {
  obj(ballpoint_pen). hasPhysicalQuality(ballpoint_pen, lightweight). hasPhysicalQuality(ballpoint_pen, rigid). hasRole(ballpoint_pen, toolRole).
}).
#pos(e1130@10, {}, {hasAffordance(bandages, press)}, {
  obj(bandages). hasPhysicalQuality(bandages, lightweight). hasPhysicalQuality(bandages, washable). hasRole(bandages, safetyEquipmentRole). affordsTask(bandages, hygieneTask).
}).
#pos(e1131@10, {}, {hasAffordance(bandages, strip)}, {
  obj(bandages). hasPhysicalQuality(bandages, lightweight). hasPhysicalQuality(bandages, washable). hasRole(bandages, safetyEquipmentRole). affordsTask(bandages, hygieneTask).
}).
#pos(e1132@10, {}, {hasAffordance(barbecue, absorb)}, {
  obj(barbecue). hasPhysicalQuality(barbecue, heated). hasRole(barbecue, cookwareRole). hasRole(barbecue, toolRole). affordsTask(barbecue, foodPreparationTask).
}).
#pos(e1133@10, {}, {hasAffordance(barbecue, flex)}, {
  obj(barbecue). hasPhysicalQuality(barbecue, heated). hasRole(barbecue, cookwareRole). hasRole(barbecue, toolRole). affordsTask(barbecue, foodPreparationTask).
}).
#pos(e1134@10, {}, {hasAffordance(basket, cut)}, {
  obj(basket). hasPhysicalQuality(basket, lightweight). hasPhysicalQuality(basket, rigid). hasRole(basket, storageContainerRole). affordsTask(basket, storageTask).
}).
#pos(e1135@10, {}, {hasAffordance(basket, pour)}, {
  obj(basket). hasPhysicalQuality(basket, lightweight). hasPhysicalQuality(basket, rigid). hasRole(basket, storageContainerRole). affordsTask(basket, storageTask).
}).
#pos(e1136@10, {}, {hasAffordance(basket_with_handle, grind)}, {
  obj(basket_with_handle). hasPhysicalQuality(basket_with_handle, hasContainer). hasPhysicalQuality(basket_with_handle, lightweight). hasRole(basket_with_handle, storageContainerRole). affordsTask(basket_with_handle, storageTask).
}).
#pos(e1137@10, {}, {hasAffordance(basket_with_handle, melt)}, {
  obj(basket_with_handle). hasPhysicalQuality(basket_with_handle, hasContainer). hasPhysicalQuality(basket_with_handle, lightweight). hasRole(basket_with_handle, storageContainerRole). affordsTask(basket_with_handle, storageTask).
}).
#pos(e1138@10, {}, {hasAffordance(bath, cut)}, {
  obj(bath). hasPhysicalQuality(bath, soft_Deformable). hasPhysicalQuality(bath, washable). hasRole(bath, cleaningToolRole). affordsTask(bath, hygieneTask).
}).
#pos(e1139@10, {}, {hasAffordance(bath, eat)}, {
  obj(bath). hasPhysicalQuality(bath, soft_Deformable). hasPhysicalQuality(bath, washable). hasRole(bath, cleaningToolRole). affordsTask(bath, hygieneTask).
}).
#pos(e1140@10, {}, {hasAffordance(bath_shower, control)}, {
  obj(bath_shower). hasPhysicalQuality(bath_shower, electronic). hasPhysicalQuality(bath_shower, heavy). hasRole(bath_shower, cleaningToolRole). affordsTask(bath_shower, hygieneTask).
}).
#pos(e1141@10, {}, {hasAffordance(bath_shower, install)}, {
  obj(bath_shower). hasPhysicalQuality(bath_shower, electronic). hasPhysicalQuality(bath_shower, heavy). hasRole(bath_shower, cleaningToolRole). affordsTask(bath_shower, hygieneTask).
}).
#pos(e1142@10, {}, {hasAffordance(bathroom, compress)}, {
  obj(bathroom). hasPhysicalQuality(bathroom, heavy). hasRole(bathroom, furnitureRole).
}).
#pos(e1143@10, {}, {hasAffordance(bathroom, operate)}, {
  obj(bathroom). hasPhysicalQuality(bathroom, heavy). hasRole(bathroom, furnitureRole).
}).
#pos(e1144@10, {}, {hasAffordance(bay_window, compress)}, {
  obj(bay_window). hasPhysicalQuality(bay_window, heavy). hasPhysicalQuality(bay_window, rigid). hasRole(bay_window, furnitureRole).
}).
#pos(e1145@10, {}, {hasAffordance(bay_window, mark)}, {
  obj(bay_window). hasPhysicalQuality(bay_window, heavy). hasPhysicalQuality(bay_window, rigid). hasRole(bay_window, furnitureRole).
}).
#pos(e1146@10, {}, {hasAffordance(beam, lift)}, {
  obj(beam). hasPhysicalQuality(beam, heavy). hasPhysicalQuality(beam, rigid). hasRole(beam, toolRole). affordsTask(beam, maintenanceTask).
}).
#pos(e1147@10, {}, {hasAffordance(beam, time)}, {
  obj(beam). hasPhysicalQuality(beam, heavy). hasPhysicalQuality(beam, rigid). hasRole(beam, toolRole). affordsTask(beam, maintenanceTask).
}).
#pos(e1148@10, {}, {hasAffordance(bean_bag_chair, break)}, {
  obj(bean_bag_chair). hasPhysicalQuality(bean_bag_chair, lightweight). hasPhysicalQuality(bean_bag_chair, soft_Deformable). hasRole(bean_bag_chair, furnitureRole). affordsTask(bean_bag_chair, leisureTask).
}).
#pos(e1149@10, {}, {hasAffordance(bean_bag_chair, fix)}, {
  obj(bean_bag_chair). hasPhysicalQuality(bean_bag_chair, lightweight). hasPhysicalQuality(bean_bag_chair, soft_Deformable). hasRole(bean_bag_chair, furnitureRole). affordsTask(bean_bag_chair, leisureTask).
}).
#pos(e1150@10, {}, {hasAffordance(beanbag, read)}, {
  obj(beanbag). hasPhysicalQuality(beanbag, lightweight). hasPhysicalQuality(beanbag, soft_Deformable). hasRole(beanbag, furnitureRole). affordsTask(beanbag, leisureTask).
}).
#pos(e1151@10, {}, {hasAffordance(beanbag, slit)}, {
  obj(beanbag). hasPhysicalQuality(beanbag, lightweight). hasPhysicalQuality(beanbag, soft_Deformable). hasRole(beanbag, furnitureRole). affordsTask(beanbag, leisureTask).
}).
#pos(e1152@10, {}, {hasAffordance(bed, crack)}, {
  obj(bed). hasPhysicalQuality(bed, heavy). hasPhysicalQuality(bed, soft_Deformable). hasRole(bed, furnitureRole). affordsTask(bed, sleepingTask).
}).
#pos(e1153@10, {}, {hasAffordance(bed, peel)}, {
  obj(bed). hasPhysicalQuality(bed, heavy). hasPhysicalQuality(bed, soft_Deformable). hasRole(bed, furnitureRole). affordsTask(bed, sleepingTask).
}).
#pos(e1154@10, {}, {hasAffordance(bed_sheet, clean)}, {
  obj(bed_sheet). hasPhysicalQuality(bed_sheet, soft_Deformable). hasPhysicalQuality(bed_sheet, washable). hasRole(bed_sheet, beddingRole). affordsTask(bed_sheet, sleepingTask).
}).
#pos(e1155@10, {}, {hasAffordance(bed_sheet, spread)}, {
  obj(bed_sheet). hasPhysicalQuality(bed_sheet, soft_Deformable). hasPhysicalQuality(bed_sheet, washable). hasRole(bed_sheet, beddingRole). affordsTask(bed_sheet, sleepingTask).
}).
#pos(e1156@10, {}, {hasAffordance(bedroom, grind)}, {
  obj(bedroom). hasRole(bedroom, furnitureRole). affordsTask(bedroom, sleepingTask).
}).
#pos(e1157@10, {}, {hasAffordance(bedroom, unclog)}, {
  obj(bedroom). hasRole(bedroom, furnitureRole). affordsTask(bedroom, sleepingTask).
}).
#pos(e1158@10, {}, {hasAffordance(beer_mug, melt)}, {
  obj(beer_mug). hasPhysicalQuality(beer_mug, heavy). hasPhysicalQuality(beer_mug, liquid). hasRole(beer_mug, utensilRole). affordsTask(beer_mug, eatingDrinkingTask).
}).
#pos(e1159@10, {}, {hasAffordance(beer_mug, unclog)}, {
  obj(beer_mug). hasPhysicalQuality(beer_mug, heavy). hasPhysicalQuality(beer_mug, liquid). hasRole(beer_mug, utensilRole). affordsTask(beer_mug, eatingDrinkingTask).
}).
#pos(e1160@10, {}, {hasAffordance(bell, dig)}, {
  obj(bell). hasPhysicalQuality(bell, lightweight). hasPhysicalQuality(bell, rigid). hasRole(bell, toolRole). affordsTask(bell, maintenanceTask).
}).
#pos(e1161@10, {}, {hasAffordance(bell, stick)}, {
  obj(bell). hasPhysicalQuality(bell, lightweight). hasPhysicalQuality(bell, rigid). hasRole(bell, toolRole). affordsTask(bell, maintenanceTask).
}).
#pos(e1162@10, {}, {hasAffordance(belt, break)}, {
  obj(belt). hasPhysicalQuality(belt, lightweight). hasPhysicalQuality(belt, soft_Deformable). hasRole(belt, clothingRole). affordsTask(belt, dressingTask).
}).
#pos(e1163@10, {}, {hasAffordance(belt, change)}, {
  obj(belt). hasPhysicalQuality(belt, lightweight). hasPhysicalQuality(belt, soft_Deformable). hasRole(belt, clothingRole). affordsTask(belt, dressingTask).
}).
#pos(e1164@10, {}, {hasAffordance(bicycle_storage_area, eat)}, {
  obj(bicycle_storage_area). hasRole(bicycle_storage_area, storageContainerRole). affordsTask(bicycle_storage_area, storageTask).
}).
#pos(e1165@10, {}, {hasAffordance(bicycle_storage_area, write)}, {
  obj(bicycle_storage_area). hasRole(bicycle_storage_area, storageContainerRole). affordsTask(bicycle_storage_area, storageTask).
}).
#pos(e1166@10, {}, {hasAffordance(bike, comfort)}, {
  obj(bike). hasPhysicalQuality(bike, heavy). hasPhysicalQuality(bike, rigid). hasRole(bike, furnitureRole). affordsTask(bike, leisureTask).
}).
#pos(e1167@10, {}, {hasAffordance(bike, hammer)}, {
  obj(bike). hasPhysicalQuality(bike, heavy). hasPhysicalQuality(bike, rigid). hasRole(bike, furnitureRole). affordsTask(bike, leisureTask).
}).
#pos(e1168@10, {}, {hasAffordance(bill_file, compress)}, {
  obj(bill_file). hasPhysicalQuality(bill_file, lightweight). hasPhysicalQuality(bill_file, washable). hasRole(bill_file, storageContainerRole). affordsTask(bill_file, storageTask).
}).
#pos(e1169@10, {}, {hasAffordance(bill_file, eat)}, {
  obj(bill_file). hasPhysicalQuality(bill_file, lightweight). hasPhysicalQuality(bill_file, washable). hasRole(bill_file, storageContainerRole). affordsTask(bill_file, storageTask).
}).
#pos(e1170@10, {}, {hasAffordance(binder, flex)}, {
  obj(binder). hasPhysicalQuality(binder, lightweight). hasPhysicalQuality(binder, rigid). hasRole(binder, storageContainerRole). affordsTask(binder, storageTask).
}).
#pos(e1171@10, {}, {hasAffordance(binder, operate)}, {
  obj(binder). hasPhysicalQuality(binder, lightweight). hasPhysicalQuality(binder, rigid). hasRole(binder, storageContainerRole). affordsTask(binder, storageTask).
}).
#pos(e1172@10, {}, {hasAffordance(bird, read)}, {
  obj(bird). hasPhysicalQuality(bird, fragile). hasPhysicalQuality(bird, lightweight). hasRole(bird, entertainmentRole). affordsTask(bird, leisureTask).
}).
#pos(e1173@10, {}, {hasAffordance(bird, wrap)}, {
  obj(bird). hasPhysicalQuality(bird, fragile). hasPhysicalQuality(bird, lightweight). hasRole(bird, entertainmentRole). affordsTask(bird, leisureTask).
}).
#pos(e1174@10, {}, {hasAffordance(birds, cube)}, {
  obj(birds). hasPhysicalQuality(birds, lightweight). hasPhysicalQuality(birds, soft_Deformable). hasRole(birds, entertainmentRole). affordsTask(birds, leisureTask).
}).
#pos(e1175@10, {}, {hasAffordance(birds, mark)}, {
  obj(birds). hasPhysicalQuality(birds, lightweight). hasPhysicalQuality(birds, soft_Deformable). hasRole(birds, entertainmentRole). affordsTask(birds, leisureTask).
}).
#pos(e1176@10, {}, {hasAffordance(birth_control_pill, mark)}, {
  obj(birth_control_pill). hasPhysicalQuality(birth_control_pill, liquid). hasPhysicalQuality(birth_control_pill, perishable). hasRole(birth_control_pill, consumableRole). affordsTask(birth_control_pill, eatingDrinkingTask).
}).
#pos(e1177@10, {}, {hasAffordance(birth_control_pill, mix)}, {
  obj(birth_control_pill). hasPhysicalQuality(birth_control_pill, liquid). hasPhysicalQuality(birth_control_pill, perishable). hasRole(birth_control_pill, consumableRole). affordsTask(birth_control_pill, eatingDrinkingTask).
}).
#pos(e1178@10, {}, {hasAffordance(blanket, dry)}, {
  obj(blanket). hasPhysicalQuality(blanket, soft_Deformable). hasPhysicalQuality(blanket, washable). hasRole(blanket, beddingRole). affordsTask(blanket, sleepingTask).
}).
#pos(e1179@10, {}, {hasAffordance(blanket, grasp)}, {
  obj(blanket). hasPhysicalQuality(blanket, soft_Deformable). hasPhysicalQuality(blanket, washable). hasRole(blanket, beddingRole). affordsTask(blanket, sleepingTask).
}).
#pos(e1180@10, {}, {hasAffordance(blowdryer, chop)}, {
  obj(blowdryer). hasPhysicalQuality(blowdryer, electronic). hasPhysicalQuality(blowdryer, heavy). hasRole(blowdryer, applianceRole). affordsTask(blowdryer, leisureTask).
}).
#pos(e1181@10, {}, {hasAffordance(blowdryer, wash)}, {
  obj(blowdryer). hasPhysicalQuality(blowdryer, electronic). hasPhysicalQuality(blowdryer, heavy). hasRole(blowdryer, applianceRole). affordsTask(blowdryer, leisureTask).
}).
#pos(e1182@10, {}, {hasAffordance(board_game, decorate)}, {
  obj(board_game). hasRole(board_game, entertainmentRole). affordsTask(board_game, leisureTask).
}).
#pos(e1183@10, {}, {hasAffordance(board_game, write)}, {
  obj(board_game). hasRole(board_game, entertainmentRole). affordsTask(board_game, leisureTask).
}).
#pos(e1184@10, {}, {hasAffordance(bone, exercise)}, {
  obj(bone). hasPhysicalQuality(bone, fragile). hasPhysicalQuality(bone, heavy). hasRole(bone, consumableRole). affordsTask(bone, foodPreparationTask).
}).
#pos(e1185@10, {}, {hasAffordance(bone, slit)}, {
  obj(bone). hasPhysicalQuality(bone, fragile). hasPhysicalQuality(bone, heavy). hasRole(bone, consumableRole). affordsTask(bone, foodPreparationTask).
}).
#pos(e1186@10, {}, {hasAffordance(bones, cut)}, {
  obj(bones). hasPhysicalQuality(bones, fragile). hasPhysicalQuality(bones, rigid). hasRole(bones, toolRole).
}).
#pos(e1187@10, {}, {hasAffordance(bones, repair)}, {
  obj(bones). hasPhysicalQuality(bones, fragile). hasPhysicalQuality(bones, rigid). hasRole(bones, toolRole).
}).
#pos(e1188@10, {}, {hasAffordance(book, handle)}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask).
}).
#pos(e1189@10, {}, {hasAffordance(book, plug)}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask).
}).
#pos(e1190@10, {}, {hasAffordance(book_end, spread)}, {
  obj(book_end). hasPhysicalQuality(book_end, heavy). hasPhysicalQuality(book_end, rigid). hasRole(book_end, furnitureRole). affordsTask(book_end, storageTask).
}).
#pos(e1191@10, {}, {hasAffordance(book_end, wipe)}, {
  obj(book_end). hasPhysicalQuality(book_end, heavy). hasPhysicalQuality(book_end, rigid). hasRole(book_end, furnitureRole). affordsTask(book_end, storageTask).
}).
#pos(e1192@10, {}, {hasAffordance(bookcase, engrave)}, {
  obj(bookcase). hasPhysicalQuality(bookcase, heavy). hasPhysicalQuality(bookcase, rigid). hasRole(bookcase, storageContainerRole). affordsTask(bookcase, storageTask).
}).
#pos(e1193@10, {}, {hasAffordance(bookcase, increase)}, {
  obj(bookcase). hasPhysicalQuality(bookcase, heavy). hasPhysicalQuality(bookcase, rigid). hasRole(bookcase, storageContainerRole). affordsTask(bookcase, storageTask).
}).
#pos(e1194@10, {}, {hasAffordance(bookend, carve)}, {
  obj(bookend). hasPhysicalQuality(bookend, heavy). hasPhysicalQuality(bookend, rigid). hasRole(bookend, furnitureRole). affordsTask(bookend, storageTask).
}).
#pos(e1195@10, {}, {hasAffordance(bookend, engrave)}, {
  obj(bookend). hasPhysicalQuality(bookend, heavy). hasPhysicalQuality(bookend, rigid). hasRole(bookend, furnitureRole). affordsTask(bookend, storageTask).
}).
#pos(e1196@10, {}, {hasAffordance(books, bore)}, {
  obj(books). hasPhysicalQuality(books, lightweight). hasPhysicalQuality(books, washable). hasRole(books, documentRole). affordsTask(books, workStudyTask).
}).
#pos(e1197@10, {}, {hasAffordance(books, illuminate)}, {
  obj(books). hasPhysicalQuality(books, lightweight). hasPhysicalQuality(books, washable). hasRole(books, documentRole). affordsTask(books, workStudyTask).
}).
#pos(e1198@10, {}, {hasAffordance(bookshelf, grind)}, {
  obj(bookshelf). hasPhysicalQuality(bookshelf, heavy). hasPhysicalQuality(bookshelf, rigid). hasRole(bookshelf, storageContainerRole). affordsTask(bookshelf, storageTask).
}).
#pos(e1199@10, {}, {hasAffordance(bookshelf, poke)}, {
  obj(bookshelf). hasPhysicalQuality(bookshelf, heavy). hasPhysicalQuality(bookshelf, rigid). hasRole(bookshelf, storageContainerRole). affordsTask(bookshelf, storageTask).
}).
#pos(e1200@10, {}, {hasAffordance(boots, change)}, {
  obj(boots). hasPhysicalQuality(boots, heavy). hasPhysicalQuality(boots, soft_Deformable). hasRole(boots, clothingRole). affordsTask(boots, dressingTask).
}).
#pos(e1201@10, {}, {hasAffordance(boots, drill)}, {
  obj(boots). hasPhysicalQuality(boots, heavy). hasPhysicalQuality(boots, soft_Deformable). hasRole(boots, clothingRole). affordsTask(boots, dressingTask).
}).
#pos(e1202@10, {}, {hasAffordance(bottle, illuminate)}, {
  obj(bottle). hasPhysicalQuality(bottle, hasContainer). hasRole(bottle, storageContainerRole). affordsTask(bottle, eatingDrinkingTask).
}).
#pos(e1203@10, {}, {hasAffordance(bottle, strip)}, {
  obj(bottle). hasPhysicalQuality(bottle, hasContainer). hasRole(bottle, storageContainerRole). affordsTask(bottle, eatingDrinkingTask).
}).
#pos(e1204@10, {}, {hasAffordance(bowl, engrave)}, {
  obj(bowl). hasPhysicalQuality(bowl, hasContainer). hasRole(bowl, storageContainerRole). affordsTask(bowl, eatingDrinkingTask). affordsTask(bowl, foodPreparationTask).
}).
#pos(e1205@10, {}, {hasAffordance(bowl, slit)}, {
  obj(bowl). hasPhysicalQuality(bowl, hasContainer). hasRole(bowl, storageContainerRole). affordsTask(bowl, eatingDrinkingTask). affordsTask(bowl, foodPreparationTask).
}).
#pos(e1206@10, {}, {hasAffordance(box, plow)}, {
  obj(box). hasPhysicalQuality(box, heavy). hasPhysicalQuality(box, rigid). hasRole(box, storageContainerRole). affordsTask(box, storageTask).
}).
#pos(e1207@10, {}, {hasAffordance(box, roll)}, {
  obj(box). hasPhysicalQuality(box, heavy). hasPhysicalQuality(box, rigid). hasRole(box, storageContainerRole). affordsTask(box, storageTask).
}).
#pos(e1208@10, {}, {hasAffordance(boxes, crumble)}, {
  obj(boxes). hasPhysicalQuality(boxes, heavy). hasPhysicalQuality(boxes, rigid). hasRole(boxes, storageContainerRole). affordsTask(boxes, storageTask).
}).
#pos(e1209@10, {}, {hasAffordance(boxes, file)}, {
  obj(boxes). hasPhysicalQuality(boxes, heavy). hasPhysicalQuality(boxes, rigid). hasRole(boxes, storageContainerRole). affordsTask(boxes, storageTask).
}).
#pos(e1210@10, {}, {hasAffordance(bread, crack)}, {
  obj(bread). hasPhysicalQuality(bread, granular). hasPhysicalQuality(bread, perishable). hasRole(bread, consumableRole). affordsTask(bread, eatingDrinkingTask). affordsTask(bread, foodPreparationTask).
}).
#pos(e1211@10, {}, {hasAffordance(bread, exercise)}, {
  obj(bread). hasPhysicalQuality(bread, granular). hasPhysicalQuality(bread, perishable). hasRole(bread, consumableRole). affordsTask(bread, eatingDrinkingTask). affordsTask(bread, foodPreparationTask).
}).
#pos(e1212@10, {}, {hasAffordance(broken_glass, smoothen)}, {
  obj(broken_glass). hasPhysicalQuality(broken_glass, fragile). hasPhysicalQuality(broken_glass, sharp). hasRole(broken_glass, wasteRole).
}).
#pos(e1213@10, {}, {hasAffordance(broken_glass, staple)}, {
  obj(broken_glass). hasPhysicalQuality(broken_glass, fragile). hasPhysicalQuality(broken_glass, sharp). hasRole(broken_glass, wasteRole).
}).
#pos(e1214@10, {}, {hasAffordance(bucket, flex)}, {
  obj(bucket). hasPhysicalQuality(bucket, hasContainer). hasRole(bucket, storageContainerRole). affordsTask(bucket, storageTask).
}).
#pos(e1215@10, {}, {hasAffordance(bucket, unclog)}, {
  obj(bucket). hasPhysicalQuality(bucket, hasContainer). hasRole(bucket, storageContainerRole). affordsTask(bucket, storageTask).
}).
#pos(e1216@10, {}, {hasAffordance(bulb, poke)}, {
  obj(bulb). hasPhysicalQuality(bulb, electronic). hasRole(bulb, applianceRole). affordsTask(bulb, leisureTask).
}).
#pos(e1217@10, {}, {hasAffordance(bulb, store)}, {
  obj(bulb). hasPhysicalQuality(bulb, electronic). hasRole(bulb, applianceRole). affordsTask(bulb, leisureTask).
}).
#pos(e1218@10, {}, {hasAffordance(bureau, melt)}, {
  obj(bureau). hasPhysicalQuality(bureau, heavy). hasPhysicalQuality(bureau, rigid). hasRole(bureau, furnitureRole). affordsTask(bureau, storageTask).
}).
#pos(e1219@10, {}, {hasAffordance(bureau, pierce)}, {
  obj(bureau). hasPhysicalQuality(bureau, heavy). hasPhysicalQuality(bureau, rigid). hasRole(bureau, furnitureRole). affordsTask(bureau, storageTask).
}).
#pos(e1220@10, {}, {hasAffordance(bus_seat, crumble)}, {
  obj(bus_seat). hasPhysicalQuality(bus_seat, lightweight). hasPhysicalQuality(bus_seat, soft_Deformable). hasRole(bus_seat, furnitureRole). affordsTask(bus_seat, leisureTask).
}).
#pos(e1221@10, {}, {hasAffordance(bus_seat, eat)}, {
  obj(bus_seat). hasPhysicalQuality(bus_seat, lightweight). hasPhysicalQuality(bus_seat, soft_Deformable). hasRole(bus_seat, furnitureRole). affordsTask(bus_seat, leisureTask).
}).
#pos(e1222@10, {}, {hasAffordance(butter, saw)}, {
  obj(butter). hasPhysicalQuality(butter, granular). hasPhysicalQuality(butter, perishable). hasRole(butter, consumableRole). affordsTask(butter, eatingDrinkingTask).
}).
#pos(e1223@10, {}, {hasAffordance(butter, screw)}, {
  obj(butter). hasPhysicalQuality(butter, granular). hasPhysicalQuality(butter, perishable). hasRole(butter, consumableRole). affordsTask(butter, eatingDrinkingTask).
}).
#pos(e1224@10, {}, {hasAffordance(buttons, carry)}, {
  obj(buttons). hasPhysicalQuality(buttons, lightweight). hasPhysicalQuality(buttons, rigid). hasRole(buttons, utensilRole).
}).
#pos(e1225@10, {}, {hasAffordance(buttons, comfort)}, {
  obj(buttons). hasPhysicalQuality(buttons, lightweight). hasPhysicalQuality(buttons, rigid). hasRole(buttons, utensilRole).
}).
#pos(e1226@10, {}, {hasAffordance(cabinets, cool)}, {
  obj(cabinets). hasPhysicalQuality(cabinets, heavy). hasPhysicalQuality(cabinets, rigid). hasRole(cabinets, storageContainerRole). affordsTask(cabinets, storageTask).
}).
#pos(e1227@10, {}, {hasAffordance(cabinets, cube)}, {
  obj(cabinets). hasPhysicalQuality(cabinets, heavy). hasPhysicalQuality(cabinets, rigid). hasRole(cabinets, storageContainerRole). affordsTask(cabinets, storageTask).
}).
#pos(e1228@10, {}, {hasAffordance(cable, cut)}, {
  obj(cable). hasPhysicalQuality(cable, electronic). hasRole(cable, toolRole). affordsTask(cable, maintenanceTask).
}).
#pos(e1229@10, {}, {hasAffordance(cable, wrench)}, {
  obj(cable). hasPhysicalQuality(cable, electronic). hasRole(cable, toolRole). affordsTask(cable, maintenanceTask).
}).
#pos(e1230@10, {}, {hasAffordance(cake, press)}, {
  obj(cake). hasPhysicalQuality(cake, granular). hasPhysicalQuality(cake, perishable). hasRole(cake, consumableRole). affordsTask(cake, eatingDrinkingTask).
}).
#pos(e1231@10, {}, {hasAffordance(cake, unclog)}, {
  obj(cake). hasPhysicalQuality(cake, granular). hasPhysicalQuality(cake, perishable). hasRole(cake, consumableRole). affordsTask(cake, eatingDrinkingTask).
}).
#pos(e1232@10, {}, {hasAffordance(calculator, change)}, {
  obj(calculator). hasPhysicalQuality(calculator, electronic). hasPhysicalQuality(calculator, lightweight). hasRole(calculator, toolRole). affordsTask(calculator, workStudyTask).
}).
#pos(e1233@10, {}, {hasAffordance(calculator, peel)}, {
  obj(calculator). hasPhysicalQuality(calculator, electronic). hasPhysicalQuality(calculator, lightweight). hasRole(calculator, toolRole). affordsTask(calculator, workStudyTask).
}).
#pos(e1234@10, {}, {hasAffordance(calendar, operate)}, {
  obj(calendar). hasRole(calendar, documentRole). affordsTask(calendar, workStudyTask).
}).
#pos(e1235@10, {}, {hasAffordance(calendar, support)}, {
  obj(calendar). hasRole(calendar, documentRole). affordsTask(calendar, workStudyTask).
}).
#pos(e1236@10, {}, {hasAffordance(candle, rub)}, {
  obj(candle). hasPhysicalQuality(candle, flammable). hasPhysicalQuality(candle, heated). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e1237@10, {}, {hasAffordance(candle, smoothen)}, {
  obj(candle). hasPhysicalQuality(candle, flammable). hasPhysicalQuality(candle, heated). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e1238@10, {}, {hasAffordance(cans, exercise)}, {
  obj(cans). hasPhysicalQuality(cans, lightweight). hasPhysicalQuality(cans, rigid). hasRole(cans, storageContainerRole). affordsTask(cans, storageTask).
}).
#pos(e1239@10, {}, {hasAffordance(cans, smoothen)}, {
  obj(cans). hasPhysicalQuality(cans, lightweight). hasPhysicalQuality(cans, rigid). hasRole(cans, storageContainerRole). affordsTask(cans, storageTask).
}).
#pos(e1240@10, {}, {hasAffordance(card, be_heated)}, {
  obj(card). hasPhysicalQuality(card, lightweight). hasRole(card, consumableRole). hasRole(card, utensilRole). affordsTask(card, eatingDrinkingTask).
}).
#pos(e1241@10, {}, {hasAffordance(card, control)}, {
  obj(card). hasPhysicalQuality(card, lightweight). hasRole(card, consumableRole). hasRole(card, utensilRole). affordsTask(card, eatingDrinkingTask).
}).
#pos(e1242@10, {}, {hasAffordance(card_case, grasp)}, {
  obj(card_case). hasPhysicalQuality(card_case, hasContainer). hasPhysicalQuality(card_case, lightweight). hasRole(card_case, storageContainerRole). affordsTask(card_case, storageTask).
}).
#pos(e1243@10, {}, {hasAffordance(card_case, solder)}, {
  obj(card_case). hasPhysicalQuality(card_case, hasContainer). hasPhysicalQuality(card_case, lightweight). hasRole(card_case, storageContainerRole). affordsTask(card_case, storageTask).
}).
#pos(e1244@10, {}, {hasAffordance(cardboard, cool)}, {
  obj(cardboard). hasPhysicalQuality(cardboard, granular). hasRole(cardboard, furnitureRole). hasRole(cardboard, storageContainerRole). affordsTask(cardboard, maintenanceTask).
}).
#pos(e1245@10, {}, {hasAffordance(cardboard, mix)}, {
  obj(cardboard). hasPhysicalQuality(cardboard, granular). hasRole(cardboard, furnitureRole). hasRole(cardboard, storageContainerRole). affordsTask(cardboard, maintenanceTask).
}).
#pos(e1246@10, {}, {hasAffordance(cardboard_box, hammer)}, {
  obj(cardboard_box). hasPhysicalQuality(cardboard_box, lightweight). hasPhysicalQuality(cardboard_box, rigid). hasRole(cardboard_box, storageContainerRole). affordsTask(cardboard_box, storageTask).
}).
#pos(e1247@10, {}, {hasAffordance(cardboard_box, pour)}, {
  obj(cardboard_box). hasPhysicalQuality(cardboard_box, lightweight). hasPhysicalQuality(cardboard_box, rigid). hasRole(cardboard_box, storageContainerRole). affordsTask(cardboard_box, storageTask).
}).
#pos(e1248@10, {}, {hasAffordance(cards, cube)}, {
  obj(cards). hasRole(cards, entertainmentRole). affordsTask(cards, leisureTask).
}).
#pos(e1249@10, {}, {hasAffordance(cards, read)}, {
  obj(cards). hasRole(cards, entertainmentRole). affordsTask(cards, leisureTask).
}).
#pos(e1250@10, {}, {hasAffordance(carpet, absorb)}, {
  obj(carpet). hasPhysicalQuality(carpet, soft_Deformable). hasPhysicalQuality(carpet, washable). hasRole(carpet, furnitureRole). affordsTask(carpet, leisureTask).
}).
#pos(e1251@10, {}, {hasAffordance(carpet, grasp)}, {
  obj(carpet). hasPhysicalQuality(carpet, soft_Deformable). hasPhysicalQuality(carpet, washable). hasRole(carpet, furnitureRole). affordsTask(carpet, leisureTask).
}).
#pos(e1252@10, {}, {hasAffordance(carpeting, dig)}, {
  obj(carpeting). hasPhysicalQuality(carpeting, soft_Deformable). hasPhysicalQuality(carpeting, washable). hasRole(carpeting, furnitureRole). affordsTask(carpeting, leisureTask).
}).
#pos(e1253@10, {}, {hasAffordance(carpeting, shape)}, {
  obj(carpeting). hasPhysicalQuality(carpeting, soft_Deformable). hasPhysicalQuality(carpeting, washable). hasRole(carpeting, furnitureRole). affordsTask(carpeting, leisureTask).
}).
#pos(e1254@10, {}, {hasAffordance(carrots, control)}, {
  obj(carrots). hasPhysicalQuality(carrots, perishable). hasRole(carrots, consumableRole). affordsTask(carrots, foodPreparationTask).
}).
#pos(e1255@10, {}, {hasAffordance(carrots, screw)}, {
  obj(carrots). hasPhysicalQuality(carrots, perishable). hasRole(carrots, consumableRole). affordsTask(carrots, foodPreparationTask).
}).
#pos(e1256@10, {}, {hasAffordance(cat, increase)}, {
  obj(cat). hasPhysicalQuality(cat, lightweight). hasPhysicalQuality(cat, soft_Deformable). hasRole(cat, furnitureRole). affordsTask(cat, leisureTask).
}).
#pos(e1257@10, {}, {hasAffordance(cat, smoothen)}, {
  obj(cat). hasPhysicalQuality(cat, lightweight). hasPhysicalQuality(cat, soft_Deformable). hasRole(cat, furnitureRole). affordsTask(cat, leisureTask).
}).
#pos(e1258@10, {}, {hasAffordance(cd_rom, display)}, {
  obj(cd_rom). hasPhysicalQuality(cd_rom, electronic). hasPhysicalQuality(cd_rom, lightweight). hasRole(cd_rom, storageContainerRole). affordsTask(cd_rom, workStudyTask).
}).
#pos(e1259@10, {}, {hasAffordance(cd_rom, tamp)}, {
  obj(cd_rom). hasPhysicalQuality(cd_rom, electronic). hasPhysicalQuality(cd_rom, lightweight). hasRole(cd_rom, storageContainerRole). affordsTask(cd_rom, workStudyTask).
}).
#pos(e1260@10, {}, {hasAffordance(cds, crunch)}, {
  obj(cds). hasPhysicalQuality(cds, lightweight). hasPhysicalQuality(cds, rigid). hasRole(cds, storageContainerRole). affordsTask(cds, leisureTask).
}).
#pos(e1261@10, {}, {hasAffordance(cds, mix)}, {
  obj(cds). hasPhysicalQuality(cds, lightweight). hasPhysicalQuality(cds, rigid). hasRole(cds, storageContainerRole). affordsTask(cds, leisureTask).
}).
#pos(e1262@10, {}, {hasAffordance(ceiling, cut)}, {
  obj(ceiling). hasPhysicalQuality(ceiling, rigid). hasRole(ceiling, furnitureRole).
}).
#pos(e1263@10, {}, {hasAffordance(ceiling, spread)}, {
  obj(ceiling). hasPhysicalQuality(ceiling, rigid). hasRole(ceiling, furnitureRole).
}).
#pos(e1264@10, {}, {hasAffordance(celery, absorb)}, {
  obj(celery). hasPhysicalQuality(celery, granular). hasPhysicalQuality(celery, perishable). hasRole(celery, consumableRole). affordsTask(celery, eatingDrinkingTask).
}).
#pos(e1265@10, {}, {hasAffordance(celery, skin)}, {
  obj(celery). hasPhysicalQuality(celery, granular). hasPhysicalQuality(celery, perishable). hasRole(celery, consumableRole). affordsTask(celery, eatingDrinkingTask).
}).
#pos(e1266@10, {}, {hasAffordance(cellar, hold)}, {
  obj(cellar). hasPhysicalQuality(cellar, heavy). hasPhysicalQuality(cellar, rigid). hasRole(cellar, storageContainerRole). affordsTask(cellar, storageTask).
}).
#pos(e1267@10, {}, {hasAffordance(cellar, support)}, {
  obj(cellar). hasPhysicalQuality(cellar, heavy). hasPhysicalQuality(cellar, rigid). hasRole(cellar, storageContainerRole). affordsTask(cellar, storageTask).
}).
#pos(e1268@10, {}, {hasAffordance(cereal, beautify)}, {
  obj(cereal). hasPhysicalQuality(cereal, granular). hasPhysicalQuality(cereal, perishable). hasRole(cereal, consumableRole). affordsTask(cereal, eatingDrinkingTask).
}).
#pos(e1269@10, {}, {hasAffordance(cereal, saw)}, {
  obj(cereal). hasPhysicalQuality(cereal, granular). hasPhysicalQuality(cereal, perishable). hasRole(cereal, consumableRole). affordsTask(cereal, eatingDrinkingTask).
}).
#pos(e1270@10, {}, {hasAffordance(chain, control)}, {
  obj(chain). hasPhysicalQuality(chain, heavy). hasPhysicalQuality(chain, rigid). hasRole(chain, toolRole). affordsTask(chain, maintenanceTask).
}).
#pos(e1271@10, {}, {hasAffordance(chain, mix)}, {
  obj(chain). hasPhysicalQuality(chain, heavy). hasPhysicalQuality(chain, rigid). hasRole(chain, toolRole). affordsTask(chain, maintenanceTask).
}).
#pos(e1272@10, {}, {hasAffordance(check, engrave)}, {
  obj(check). hasPhysicalQuality(check, electronic). hasRole(check, toolRole). affordsTask(check, maintenanceTask).
}).
#pos(e1273@10, {}, {hasAffordance(check, handle)}, {
  obj(check). hasPhysicalQuality(check, electronic). hasRole(check, toolRole). affordsTask(check, maintenanceTask).
}).
#pos(e1274@10, {}, {hasAffordance(checkbook_holder, carve)}, {
  obj(checkbook_holder). hasPhysicalQuality(checkbook_holder, hasContainer). hasRole(checkbook_holder, storageContainerRole). affordsTask(checkbook_holder, storageTask).
}).
#pos(e1275@10, {}, {hasAffordance(checkbook_holder, engrave)}, {
  obj(checkbook_holder). hasPhysicalQuality(checkbook_holder, hasContainer). hasRole(checkbook_holder, storageContainerRole). affordsTask(checkbook_holder, storageTask).
}).
#pos(e1276@10, {}, {hasAffordance(chess_bishop, clean)}, {
  obj(chess_bishop). hasPhysicalQuality(chess_bishop, rigid). hasRole(chess_bishop, toolRole). affordsTask(chess_bishop, leisureTask).
}).
#pos(e1277@10, {}, {hasAffordance(chess_bishop, staple)}, {
  obj(chess_bishop). hasPhysicalQuality(chess_bishop, rigid). hasRole(chess_bishop, toolRole). affordsTask(chess_bishop, leisureTask).
}).
#pos(e1278@10, {}, {hasAffordance(chess_board, clean)}, {
  obj(chess_board). hasPhysicalQuality(chess_board, heavy). hasPhysicalQuality(chess_board, rigid). hasRole(chess_board, furnitureRole). affordsTask(chess_board, leisureTask).
}).
#pos(e1279@10, {}, {hasAffordance(chess_board, screw)}, {
  obj(chess_board). hasPhysicalQuality(chess_board, heavy). hasPhysicalQuality(chess_board, rigid). hasRole(chess_board, furnitureRole). affordsTask(chess_board, leisureTask).
}).
#pos(e1280@10, {}, {hasAffordance(chess_king, change)}, {
  obj(chess_king). hasPhysicalQuality(chess_king, lightweight). hasRole(chess_king, entertainmentRole). affordsTask(chess_king, leisureTask).
}).
#pos(e1281@10, {}, {hasAffordance(chess_king, slit)}, {
  obj(chess_king). hasPhysicalQuality(chess_king, lightweight). hasRole(chess_king, entertainmentRole). affordsTask(chess_king, leisureTask).
}).
#pos(e1282@10, {}, {hasAffordance(chess_knight, cover)}, {
  obj(chess_knight). hasPhysicalQuality(chess_knight, rigid). hasRole(chess_knight, entertainmentRole). affordsTask(chess_knight, leisureTask).
}).
#pos(e1283@10, {}, {hasAffordance(chess_knight, write)}, {
  obj(chess_knight). hasPhysicalQuality(chess_knight, rigid). hasRole(chess_knight, entertainmentRole). affordsTask(chess_knight, leisureTask).
}).
#pos(e1284@10, {}, {hasAffordance(chess_pawn, roll)}, {
  obj(chess_pawn). hasPhysicalQuality(chess_pawn, lightweight). hasRole(chess_pawn, entertainmentRole). affordsTask(chess_pawn, leisureTask).
}).
#pos(e1285@10, {}, {hasAffordance(chess_pawn, solder)}, {
  obj(chess_pawn). hasPhysicalQuality(chess_pawn, lightweight). hasRole(chess_pawn, entertainmentRole). affordsTask(chess_pawn, leisureTask).
}).
#pos(e1286@10, {}, {hasAffordance(chess_piece, cut)}, {
  obj(chess_piece). hasPhysicalQuality(chess_piece, lightweight). hasRole(chess_piece, entertainmentRole). affordsTask(chess_piece, leisureTask).
}).
#pos(e1287@10, {}, {hasAffordance(chess_piece, fix)}, {
  obj(chess_piece). hasPhysicalQuality(chess_piece, lightweight). hasRole(chess_piece, entertainmentRole). affordsTask(chess_piece, leisureTask).
}).
#pos(e1288@10, {}, {hasAffordance(chess_queen, skin)}, {
  obj(chess_queen). hasRole(chess_queen, toolRole).
}).
#pos(e1289@10, {}, {hasAffordance(chess_queen, tamp)}, {
  obj(chess_queen). hasRole(chess_queen, toolRole).
}).
#pos(e1290@10, {}, {hasAffordance(chess_set, dry)}, {
  obj(chess_set). hasPhysicalQuality(chess_set, lightweight). hasPhysicalQuality(chess_set, rigid). hasRole(chess_set, entertainmentRole). affordsTask(chess_set, leisureTask).
}).
#pos(e1291@10, {}, {hasAffordance(chess_set, polish)}, {
  obj(chess_set). hasPhysicalQuality(chess_set, lightweight). hasPhysicalQuality(chess_set, rigid). hasRole(chess_set, entertainmentRole). affordsTask(chess_set, leisureTask).
}).
#pos(e1292@10, {}, {hasAffordance(chest, dispose)}, {
  obj(chest). hasPhysicalQuality(chest, heavy). hasPhysicalQuality(chest, rigid). hasRole(chest, storageContainerRole). affordsTask(chest, storageTask).
}).
#pos(e1293@10, {}, {hasAffordance(chest, spread)}, {
  obj(chest). hasPhysicalQuality(chest, heavy). hasPhysicalQuality(chest, rigid). hasRole(chest, storageContainerRole). affordsTask(chest, storageTask).
}).
#pos(e1294@10, {}, {hasAffordance(chocolate, handle)}, {
  obj(chocolate). hasPhysicalQuality(chocolate, perishable). hasRole(chocolate, consumableRole). affordsTask(chocolate, eatingDrinkingTask).
}).
#pos(e1295@10, {}, {hasAffordance(chocolate, pierce)}, {
  obj(chocolate). hasPhysicalQuality(chocolate, perishable). hasRole(chocolate, consumableRole). affordsTask(chocolate, eatingDrinkingTask).
}).
#pos(e1296@10, {}, {hasAffordance(cinnamon, mix)}, {
  obj(cinnamon). hasPhysicalQuality(cinnamon, perishable). hasRole(cinnamon, consumableRole). affordsTask(cinnamon, foodPreparationTask).
}).
#pos(e1297@10, {}, {hasAffordance(cinnamon, wrench)}, {
  obj(cinnamon). hasPhysicalQuality(cinnamon, perishable). hasRole(cinnamon, consumableRole). affordsTask(cinnamon, foodPreparationTask).
}).
#pos(e1298@10, {}, {hasAffordance(clip, press)}, {
  obj(clip). hasPhysicalQuality(clip, lightweight). hasRole(clip, toolRole). affordsTask(clip, maintenanceTask).
}).
#pos(e1299@10, {}, {hasAffordance(clip, skin)}, {
  obj(clip). hasPhysicalQuality(clip, lightweight). hasRole(clip, toolRole). affordsTask(clip, maintenanceTask).
}).
#pos(e1300@10, {}, {hasAffordance(clipboard, cool)}, {
  obj(clipboard). hasPhysicalQuality(clipboard, lightweight). hasPhysicalQuality(clipboard, rigid). hasRole(clipboard, utensilRole). affordsTask(clipboard, foodPreparationTask).
}).
#pos(e1301@10, {}, {hasAffordance(clipboard, press)}, {
  obj(clipboard). hasPhysicalQuality(clipboard, lightweight). hasPhysicalQuality(clipboard, rigid). hasRole(clipboard, utensilRole). affordsTask(clipboard, foodPreparationTask).
}).
#pos(e1302@10, {}, {hasAffordance(clock, dry)}, {
  obj(clock). hasPhysicalQuality(clock, rigid). hasRole(clock, decorationRole).
}).
#pos(e1303@10, {}, {hasAffordance(clock, entertain)}, {
  obj(clock). hasPhysicalQuality(clock, rigid). hasRole(clock, decorationRole).
}).
#pos(e1304@10, {}, {hasAffordance(closet, change)}, {
  obj(closet). hasPhysicalQuality(closet, heavy). hasPhysicalQuality(closet, rigid). hasRole(closet, storageContainerRole). affordsTask(closet, storageTask).
}).
#pos(e1305@10, {}, {hasAffordance(closet, lift)}, {
  obj(closet). hasPhysicalQuality(closet, heavy). hasPhysicalQuality(closet, rigid). hasRole(closet, storageContainerRole). affordsTask(closet, storageTask).
}).
#pos(e1306@10, {}, {hasAffordance(cloth, bend)}, {
  obj(cloth). hasPhysicalQuality(cloth, soft_Deformable). hasPhysicalQuality(cloth, washable). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask).
}).
#pos(e1307@10, {}, {hasAffordance(cloth, unclog)}, {
  obj(cloth). hasPhysicalQuality(cloth, soft_Deformable). hasPhysicalQuality(cloth, washable). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask).
}).
#pos(e1308@10, {}, {hasAffordance(clothes, exercise)}, {
  obj(clothes). hasPhysicalQuality(clothes, soft_Deformable). hasPhysicalQuality(clothes, washable). hasRole(clothes, clothingRole). affordsTask(clothes, dressingTask).
}).
#pos(e1309@10, {}, {hasAffordance(clothes, unclog)}, {
  obj(clothes). hasPhysicalQuality(clothes, soft_Deformable). hasPhysicalQuality(clothes, washable). hasRole(clothes, clothingRole). affordsTask(clothes, dressingTask).
}).
#pos(e1310@10, {}, {hasAffordance(clothing, absorb)}, {
  obj(clothing). hasPhysicalQuality(clothing, lightweight). hasPhysicalQuality(clothing, soft_Deformable). hasRole(clothing, clothingRole). affordsTask(clothing, dressingTask).
}).
#pos(e1311@10, {}, {hasAffordance(clothing, dry)}, {
  obj(clothing). hasPhysicalQuality(clothing, lightweight). hasPhysicalQuality(clothing, soft_Deformable). hasRole(clothing, clothingRole). affordsTask(clothing, dressingTask).
}).
#pos(e1312@10, {}, {hasAffordance(clothing_shelf, chop)}, {
  obj(clothing_shelf). hasPhysicalQuality(clothing_shelf, heavy). hasPhysicalQuality(clothing_shelf, rigid). hasRole(clothing_shelf, storageContainerRole). affordsTask(clothing_shelf, storageTask).
}).
#pos(e1313@10, {}, {hasAffordance(clothing_shelf, wipe)}, {
  obj(clothing_shelf). hasPhysicalQuality(clothing_shelf, heavy). hasPhysicalQuality(clothing_shelf, rigid). hasRole(clothing_shelf, storageContainerRole). affordsTask(clothing_shelf, storageTask).
}).
#pos(e1314@10, {}, {hasAffordance(coats, carve)}, {
  obj(coats). hasRole(coats, clothingRole). affordsTask(coats, dressingTask).
}).
#pos(e1315@10, {}, {hasAffordance(coats, eat)}, {
  obj(coats). hasRole(coats, clothingRole). affordsTask(coats, dressingTask).
}).
#pos(e1316@10, {}, {hasAffordance(coffee_cups, bore)}, {
  obj(coffee_cups). hasPhysicalQuality(coffee_cups, hasContainer). hasPhysicalQuality(coffee_cups, lightweight). hasRole(coffee_cups, utensilRole). affordsTask(coffee_cups, eatingDrinkingTask).
}).
#pos(e1317@10, {}, {hasAffordance(coffee_cups, change)}, {
  obj(coffee_cups). hasPhysicalQuality(coffee_cups, hasContainer). hasPhysicalQuality(coffee_cups, lightweight). hasRole(coffee_cups, utensilRole). affordsTask(coffee_cups, eatingDrinkingTask).
}).
#pos(e1318@10, {}, {hasAffordance(coin, chop)}, {
  obj(coin). hasPhysicalQuality(coin, lightweight). hasRole(coin, consumableRole).
}).
#pos(e1319@10, {}, {hasAffordance(coin, illuminate)}, {
  obj(coin). hasPhysicalQuality(coin, lightweight). hasRole(coin, consumableRole).
}).
#pos(e1320@10, {}, {hasAffordance(cold_faucet, engrave)}, {
  obj(cold_faucet). hasPhysicalQuality(cold_faucet, heavy). hasPhysicalQuality(cold_faucet, liquid). hasRole(cold_faucet, utensilRole). affordsTask(cold_faucet, eatingDrinkingTask).
}).
#pos(e1321@10, {}, {hasAffordance(cold_faucet, screw)}, {
  obj(cold_faucet). hasPhysicalQuality(cold_faucet, heavy). hasPhysicalQuality(cold_faucet, liquid). hasRole(cold_faucet, utensilRole). affordsTask(cold_faucet, eatingDrinkingTask).
}).
#pos(e1322@10, {}, {hasAffordance(cold_storage, grasp)}, {
  obj(cold_storage). hasPhysicalQuality(cold_storage, requiresCooling). hasRole(cold_storage, applianceRole). affordsTask(cold_storage, storageTask).
}).
#pos(e1323@10, {}, {hasAffordance(cold_storage, scoop)}, {
  obj(cold_storage). hasPhysicalQuality(cold_storage, requiresCooling). hasRole(cold_storage, applianceRole). affordsTask(cold_storage, storageTask).
}).
#pos(e1324@10, {}, {hasAffordance(column, drill)}, {
  obj(column). hasPhysicalQuality(column, heavy). hasPhysicalQuality(column, rigid). hasRole(column, furnitureRole).
}).
#pos(e1325@10, {}, {hasAffordance(column, smoothen)}, {
  obj(column). hasPhysicalQuality(column, heavy). hasPhysicalQuality(column, rigid). hasRole(column, furnitureRole).
}).
#pos(e1326@10, {}, {hasAffordance(comforter, crack)}, {
  obj(comforter). hasPhysicalQuality(comforter, soft_Deformable). hasPhysicalQuality(comforter, washable). hasRole(comforter, beddingRole). affordsTask(comforter, sleepingTask).
}).
#pos(e1327@10, {}, {hasAffordance(comforter, store)}, {
  obj(comforter). hasPhysicalQuality(comforter, soft_Deformable). hasPhysicalQuality(comforter, washable). hasRole(comforter, beddingRole). affordsTask(comforter, sleepingTask).
}).
#pos(e1328@10, {}, {hasAffordance(computer, screw)}, {
  obj(computer). hasPhysicalQuality(computer, electronic). hasPhysicalQuality(computer, heavy). hasRole(computer, applianceRole). affordsTask(computer, workStudyTask).
}).
#pos(e1329@10, {}, {hasAffordance(computer, unclog)}, {
  obj(computer). hasPhysicalQuality(computer, electronic). hasPhysicalQuality(computer, heavy). hasRole(computer, applianceRole). affordsTask(computer, workStudyTask).
}).
#pos(e1330@10, {}, {hasAffordance(concrete, entertain)}, {
  obj(concrete). hasPhysicalQuality(concrete, granular). hasPhysicalQuality(concrete, rigid). hasRole(concrete, consumableRole).
}).
#pos(e1331@10, {}, {hasAffordance(concrete, roll)}, {
  obj(concrete). hasPhysicalQuality(concrete, granular). hasPhysicalQuality(concrete, rigid). hasRole(concrete, consumableRole).
}).
#pos(e1332@10, {}, {hasAffordance(container, dispose)}, {
  obj(container). hasPhysicalQuality(container, hasContainer). hasRole(container, storageContainerRole). affordsTask(container, storageTask).
}).
#pos(e1333@10, {}, {hasAffordance(container, poke)}, {
  obj(container). hasPhysicalQuality(container, hasContainer). hasRole(container, storageContainerRole). affordsTask(container, storageTask).
}).
#pos(e1334@10, {}, {hasAffordance(container_can, compress)}, {
  obj(container_can). hasPhysicalQuality(container_can, hasContainer). hasRole(container_can, storageContainerRole). affordsTask(container_can, storageTask).
}).
#pos(e1335@10, {}, {hasAffordance(container_can, repair)}, {
  obj(container_can). hasPhysicalQuality(container_can, hasContainer). hasRole(container_can, storageContainerRole). affordsTask(container_can, storageTask).
}).
#pos(e1336@10, {}, {hasAffordance(container_cup, mark)}, {
  obj(container_cup). hasPhysicalQuality(container_cup, hasContainer). hasRole(container_cup, storageContainerRole). hasRole(container_cup, utensilRole). affordsTask(container_cup, eatingDrinkingTask). affordsTask(container_cup, storageTask).
}).
#pos(e1337@10, {}, {hasAffordance(container_cup, poke)}, {
  obj(container_cup). hasPhysicalQuality(container_cup, hasContainer). hasRole(container_cup, storageContainerRole). hasRole(container_cup, utensilRole). affordsTask(container_cup, eatingDrinkingTask). affordsTask(container_cup, storageTask).
}).
#pos(e1338@10, {}, {hasAffordance(cook, pour)}, {
  obj(cook). hasPhysicalQuality(cook, heavy). hasPhysicalQuality(cook, rigid). hasRole(cook, cookwareRole). affordsTask(cook, foodPreparationTask).
}).
#pos(e1339@10, {}, {hasAffordance(cook, separate)}, {
  obj(cook). hasPhysicalQuality(cook, heavy). hasPhysicalQuality(cook, rigid). hasRole(cook, cookwareRole). affordsTask(cook, foodPreparationTask).
}).
#pos(e1340@10, {}, {hasAffordance(cookie_jar, carry)}, {
  obj(cookie_jar). hasPhysicalQuality(cookie_jar, hasContainer). hasPhysicalQuality(cookie_jar, heavy). hasRole(cookie_jar, storageContainerRole). affordsTask(cookie_jar, storageTask).
}).
#pos(e1341@10, {}, {hasAffordance(cookie_jar, write)}, {
  obj(cookie_jar). hasPhysicalQuality(cookie_jar, hasContainer). hasPhysicalQuality(cookie_jar, heavy). hasRole(cookie_jar, storageContainerRole). affordsTask(cookie_jar, storageTask).
}).
#pos(e1342@10, {}, {hasAffordance(cooling_device, contain)}, {
  obj(cooling_device). hasPhysicalQuality(cooling_device, requiresCooling). hasRole(cooling_device, applianceRole). affordsTask(cooling_device, storageTask).
}).
#pos(e1343@10, {}, {hasAffordance(cooling_device, write)}, {
  obj(cooling_device). hasPhysicalQuality(cooling_device, requiresCooling). hasRole(cooling_device, applianceRole). affordsTask(cooling_device, storageTask).
}).
#pos(e1344@10, {}, {hasAffordance(corner_cupboard, carve)}, {
  obj(corner_cupboard). hasPhysicalQuality(corner_cupboard, heavy). hasPhysicalQuality(corner_cupboard, rigid). hasRole(corner_cupboard, storageContainerRole). affordsTask(corner_cupboard, storageTask).
}).
#pos(e1345@10, {}, {hasAffordance(corner_cupboard, plug)}, {
  obj(corner_cupboard). hasPhysicalQuality(corner_cupboard, heavy). hasPhysicalQuality(corner_cupboard, rigid). hasRole(corner_cupboard, storageContainerRole). affordsTask(corner_cupboard, storageTask).
}).
#pos(e1346@10, {}, {hasAffordance(cotton, control)}, {
  obj(cotton). hasPhysicalQuality(cotton, lightweight). hasPhysicalQuality(cotton, soft_Deformable). hasRole(cotton, clothingRole). hasRole(cotton, consumableRole).
}).
#pos(e1347@10, {}, {hasAffordance(cotton, install)}, {
  obj(cotton). hasPhysicalQuality(cotton, lightweight). hasPhysicalQuality(cotton, soft_Deformable). hasRole(cotton, clothingRole). hasRole(cotton, consumableRole).
}).
#pos(e1348@10, {}, {hasAffordance(couch, display)}, {
  obj(couch). hasPhysicalQuality(couch, heavy). hasPhysicalQuality(couch, rigid). hasRole(couch, furnitureRole). affordsTask(couch, leisureTask).
}).
#pos(e1349@10, {}, {hasAffordance(couch, exercise)}, {
  obj(couch). hasPhysicalQuality(couch, heavy). hasPhysicalQuality(couch, rigid). hasRole(couch, furnitureRole). affordsTask(couch, leisureTask).
}).
#pos(e1350@10, {}, {hasAffordance(counter, dig)}, {
  obj(counter). hasPhysicalQuality(counter, heavy). hasPhysicalQuality(counter, rigid). hasRole(counter, furnitureRole). affordsTask(counter, workStudyTask).
}).
#pos(e1351@10, {}, {hasAffordance(counter, smoothen)}, {
  obj(counter). hasPhysicalQuality(counter, heavy). hasPhysicalQuality(counter, rigid). hasRole(counter, furnitureRole). affordsTask(counter, workStudyTask).
}).
#pos(e1352@10, {}, {hasAffordance(cover, crumble)}, {
  obj(cover). hasPhysicalQuality(cover, lightweight). hasPhysicalQuality(cover, soft_Deformable). hasRole(cover, beddingRole). hasRole(cover, furnitureRole). affordsTask(cover, sleepingTask).
}).
#pos(e1353@10, {}, {hasAffordance(cover, press)}, {
  obj(cover). hasPhysicalQuality(cover, lightweight). hasPhysicalQuality(cover, soft_Deformable). hasRole(cover, beddingRole). hasRole(cover, furnitureRole). affordsTask(cover, sleepingTask).
}).
#pos(e1354@10, {}, {hasAffordance(credit_card_wallet, dig)}, {
  obj(credit_card_wallet). hasPhysicalQuality(credit_card_wallet, hasContainer). hasPhysicalQuality(credit_card_wallet, lightweight). hasRole(credit_card_wallet, storageContainerRole). affordsTask(credit_card_wallet, leisureTask).
}).
#pos(e1355@10, {}, {hasAffordance(credit_card_wallet, polish)}, {
  obj(credit_card_wallet). hasPhysicalQuality(credit_card_wallet, hasContainer). hasPhysicalQuality(credit_card_wallet, lightweight). hasRole(credit_card_wallet, storageContainerRole). affordsTask(credit_card_wallet, leisureTask).
}).
#pos(e1356@10, {}, {hasAffordance(cup, grasp)}, {
  obj(cup). hasPhysicalQuality(cup, hasContainer). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e1357@10, {}, {hasAffordance(cup, rub)}, {
  obj(cup). hasPhysicalQuality(cup, hasContainer). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e1358@10, {}, {hasAffordance(curtain, chop)}, {
  obj(curtain). hasPhysicalQuality(curtain, lightweight). hasPhysicalQuality(curtain, soft_Deformable). hasRole(curtain, furnitureRole). affordsTask(curtain, leisureTask).
}).
#pos(e1359@10, {}, {hasAffordance(curtain, exercise)}, {
  obj(curtain). hasPhysicalQuality(curtain, lightweight). hasPhysicalQuality(curtain, soft_Deformable). hasRole(curtain, furnitureRole). affordsTask(curtain, leisureTask).
}).
#pos(e1360@10, {}, {hasAffordance(dandruff_shampoo, press)}, {
  obj(dandruff_shampoo). hasPhysicalQuality(dandruff_shampoo, liquid). hasPhysicalQuality(dandruff_shampoo, toxic_Hazardous). hasRole(dandruff_shampoo, cleaningToolRole). affordsTask(dandruff_shampoo, hygieneTask).
}).
#pos(e1361@10, {}, {hasAffordance(dandruff_shampoo, spread)}, {
  obj(dandruff_shampoo). hasPhysicalQuality(dandruff_shampoo, liquid). hasPhysicalQuality(dandruff_shampoo, toxic_Hazardous). hasRole(dandruff_shampoo, cleaningToolRole). affordsTask(dandruff_shampoo, hygieneTask).
}).
#pos(e1362@10, {}, {hasAffordance(denim, carry)}, {
  obj(denim). hasPhysicalQuality(denim, soft_Deformable). hasPhysicalQuality(denim, washable). hasRole(denim, clothingRole). affordsTask(denim, dressingTask).
}).
#pos(e1363@10, {}, {hasAffordance(denim, compress)}, {
  obj(denim). hasPhysicalQuality(denim, soft_Deformable). hasPhysicalQuality(denim, washable). hasRole(denim, clothingRole). affordsTask(denim, dressingTask).
}).
#pos(e1364@10, {}, {hasAffordance(dental_floss, smoothen)}, {
  obj(dental_floss). hasPhysicalQuality(dental_floss, fragile). hasPhysicalQuality(dental_floss, lightweight). hasRole(dental_floss, cleaningToolRole). affordsTask(dental_floss, hygieneTask).
}).
#pos(e1365@10, {}, {hasAffordance(dental_floss, wrench)}, {
  obj(dental_floss). hasPhysicalQuality(dental_floss, fragile). hasPhysicalQuality(dental_floss, lightweight). hasRole(dental_floss, cleaningToolRole). affordsTask(dental_floss, hygieneTask).
}).
#pos(e1366@10, {}, {hasAffordance(desk, be_heated)}, {
  obj(desk). hasPhysicalQuality(desk, heavy). hasPhysicalQuality(desk, rigid). hasRole(desk, furnitureRole). affordsTask(desk, workStudyTask).
}).
#pos(e1367@10, {}, {hasAffordance(desk, comfort)}, {
  obj(desk). hasPhysicalQuality(desk, heavy). hasPhysicalQuality(desk, rigid). hasRole(desk, furnitureRole). affordsTask(desk, workStudyTask).
}).
#pos(e1368@10, {}, {hasAffordance(desk_drawer, cut)}, {
  obj(desk_drawer). hasPhysicalQuality(desk_drawer, lightweight). hasPhysicalQuality(desk_drawer, rigid). hasRole(desk_drawer, storageContainerRole). affordsTask(desk_drawer, workStudyTask).
}).
#pos(e1369@10, {}, {hasAffordance(desk_drawer, engrave)}, {
  obj(desk_drawer). hasPhysicalQuality(desk_drawer, lightweight). hasPhysicalQuality(desk_drawer, rigid). hasRole(desk_drawer, storageContainerRole). affordsTask(desk_drawer, workStudyTask).
}).
#pos(e1370@10, {}, {hasAffordance(desk_tray, plow)}, {
  obj(desk_tray). hasPhysicalQuality(desk_tray, hasContainer). hasPhysicalQuality(desk_tray, lightweight). hasRole(desk_tray, storageContainerRole). affordsTask(desk_tray, storageTask).
}).
#pos(e1371@10, {}, {hasAffordance(desk_tray, scoop)}, {
  obj(desk_tray). hasPhysicalQuality(desk_tray, hasContainer). hasPhysicalQuality(desk_tray, lightweight). hasRole(desk_tray, storageContainerRole). affordsTask(desk_tray, storageTask).
}).
#pos(e1372@10, {}, {hasAffordance(detergent, dry)}, {
  obj(detergent). hasPhysicalQuality(detergent, liquid). hasPhysicalQuality(detergent, toxic_Hazardous). hasRole(detergent, cleaningToolRole). affordsTask(detergent, cleaningTask).
}).
#pos(e1373@10, {}, {hasAffordance(detergent, rub)}, {
  obj(detergent). hasPhysicalQuality(detergent, liquid). hasPhysicalQuality(detergent, toxic_Hazardous). hasRole(detergent, cleaningToolRole). affordsTask(detergent, cleaningTask).
}).
#pos(e1374@10, {}, {hasAffordance(dice, carve)}, {
  obj(dice). hasPhysicalQuality(dice, lightweight). hasPhysicalQuality(dice, rigid). hasRole(dice, entertainmentRole). affordsTask(dice, leisureTask).
}).
#pos(e1375@10, {}, {hasAffordance(dice, pick)}, {
  obj(dice). hasPhysicalQuality(dice, lightweight). hasPhysicalQuality(dice, rigid). hasRole(dice, entertainmentRole). affordsTask(dice, leisureTask).
}).
#pos(e1376@10, {}, {hasAffordance(dinner_plate, cut)}, {
  obj(dinner_plate). hasPhysicalQuality(dinner_plate, hasContainer). hasPhysicalQuality(dinner_plate, rigid). hasRole(dinner_plate, utensilRole). affordsTask(dinner_plate, eatingDrinkingTask).
}).
#pos(e1377@10, {}, {hasAffordance(dinner_plate, operate)}, {
  obj(dinner_plate). hasPhysicalQuality(dinner_plate, hasContainer). hasPhysicalQuality(dinner_plate, rigid). hasRole(dinner_plate, utensilRole). affordsTask(dinner_plate, eatingDrinkingTask).
}).
#pos(e1378@10, {}, {hasAffordance(dishwasher, absorb)}, {
  obj(dishwasher). hasPhysicalQuality(dishwasher, electronic). hasPhysicalQuality(dishwasher, heavy). hasRole(dishwasher, applianceRole). affordsTask(dishwasher, cleaningTask).
}).
#pos(e1379@10, {}, {hasAffordance(dishwasher, operate)}, {
  obj(dishwasher). hasPhysicalQuality(dishwasher, electronic). hasPhysicalQuality(dishwasher, heavy). hasRole(dishwasher, applianceRole). affordsTask(dishwasher, cleaningTask).
}).
#pos(e1380@10, {}, {hasAffordance(disk, fix)}, {
  obj(disk). hasRole(disk, storageContainerRole). affordsTask(disk, storageTask).
}).
#pos(e1381@10, {}, {hasAffordance(disk, read)}, {
  obj(disk). hasRole(disk, storageContainerRole). affordsTask(disk, storageTask).
}).
#pos(e1382@10, {}, {hasAffordance(display_cabinet, grind)}, {
  obj(display_cabinet). hasPhysicalQuality(display_cabinet, heavy). hasPhysicalQuality(display_cabinet, rigid). hasRole(display_cabinet, furnitureRole). affordsTask(display_cabinet, storageTask).
}).
#pos(e1383@10, {}, {hasAffordance(display_cabinet, poke)}, {
  obj(display_cabinet). hasPhysicalQuality(display_cabinet, heavy). hasPhysicalQuality(display_cabinet, rigid). hasRole(display_cabinet, furnitureRole). affordsTask(display_cabinet, storageTask).
}).
#pos(e1384@10, {}, {hasAffordance(disposable_razor, spread)}, {
  obj(disposable_razor). hasPhysicalQuality(disposable_razor, fragile). hasPhysicalQuality(disposable_razor, sharp). hasRole(disposable_razor, utensilRole). affordsTask(disposable_razor, foodPreparationTask).
}).
#pos(e1385@10, {}, {hasAffordance(disposable_razor, write)}, {
  obj(disposable_razor). hasPhysicalQuality(disposable_razor, fragile). hasPhysicalQuality(disposable_razor, sharp). hasRole(disposable_razor, utensilRole). affordsTask(disposable_razor, foodPreparationTask).
}).
#pos(e1386@10, {}, {hasAffordance(dog, decorate)}, {
  obj(dog). hasPhysicalQuality(dog, fragile). hasPhysicalQuality(dog, soft_Deformable). affordsTask(dog, leisureTask).
}).
#pos(e1387@10, {}, {hasAffordance(dog, solder)}, {
  obj(dog). hasPhysicalQuality(dog, fragile). hasPhysicalQuality(dog, soft_Deformable). affordsTask(dog, leisureTask).
}).
#pos(e1388@10, {}, {hasAffordance(door, display)}, {
  obj(door). hasPhysicalQuality(door, rigid). hasRole(door, furnitureRole). affordsTask(door, maintenanceTask).
}).
#pos(e1389@10, {}, {hasAffordance(door, hammer)}, {
  obj(door). hasPhysicalQuality(door, rigid). hasRole(door, furnitureRole). affordsTask(door, maintenanceTask).
}).
#pos(e1390@10, {}, {hasAffordance(doormat, change)}, {
  obj(doormat). hasPhysicalQuality(doormat, lightweight). hasPhysicalQuality(doormat, soft_Deformable). hasRole(doormat, furnitureRole). affordsTask(doormat, cleaningTask).
}).
#pos(e1391@10, {}, {hasAffordance(doormat, eat)}, {
  obj(doormat). hasPhysicalQuality(doormat, lightweight). hasPhysicalQuality(doormat, soft_Deformable). hasRole(doormat, furnitureRole). affordsTask(doormat, cleaningTask).
}).
#pos(e1392@10, {}, {hasAffordance(doorway, solder)}, {
  obj(doorway). hasPhysicalQuality(doorway, rigid). hasRole(doorway, furnitureRole).
}).
#pos(e1393@10, {}, {hasAffordance(doorway, strip)}, {
  obj(doorway). hasPhysicalQuality(doorway, rigid). hasRole(doorway, furnitureRole).
}).
#pos(e1394@10, {}, {hasAffordance(drawer, carve)}, {
  obj(drawer). hasPhysicalQuality(drawer, hasContainer). hasRole(drawer, furnitureRole). hasRole(drawer, storageContainerRole). affordsTask(drawer, storageTask).
}).
#pos(e1395@10, {}, {hasAffordance(drawer, heat)}, {
  obj(drawer). hasPhysicalQuality(drawer, hasContainer). hasRole(drawer, furnitureRole). hasRole(drawer, storageContainerRole). affordsTask(drawer, storageTask).
}).
#pos(e1396@10, {}, {hasAffordance(drawstring_bag, carve)}, {
  obj(drawstring_bag). hasPhysicalQuality(drawstring_bag, lightweight). hasPhysicalQuality(drawstring_bag, soft_Deformable). hasRole(drawstring_bag, storageContainerRole). affordsTask(drawstring_bag, storageTask).
}).
#pos(e1397@10, {}, {hasAffordance(drawstring_bag, change)}, {
  obj(drawstring_bag). hasPhysicalQuality(drawstring_bag, lightweight). hasPhysicalQuality(drawstring_bag, soft_Deformable). hasRole(drawstring_bag, storageContainerRole). affordsTask(drawstring_bag, storageTask).
}).
#pos(e1398@10, {}, {hasAffordance(dresser, rub)}, {
  obj(dresser). hasPhysicalQuality(dresser, heavy). hasPhysicalQuality(dresser, rigid). hasRole(dresser, furnitureRole). affordsTask(dresser, storageTask).
}).
#pos(e1399@10, {}, {hasAffordance(dresser, strip)}, {
  obj(dresser). hasPhysicalQuality(dresser, heavy). hasPhysicalQuality(dresser, rigid). hasRole(dresser, furnitureRole). affordsTask(dresser, storageTask).
}).
#pos(e1400@10, {}, {hasAffordance(drill, skin)}, {
  obj(drill). hasPhysicalQuality(drill, heavy). hasPhysicalQuality(drill, isRotary). hasPhysicalQuality(drill, rigid). hasRole(drill, toolRole). affordsTask(drill, maintenanceTask).
}).
#pos(e1401@10, {}, {hasAffordance(drill, solder)}, {
  obj(drill). hasPhysicalQuality(drill, heavy). hasPhysicalQuality(drill, isRotary). hasPhysicalQuality(drill, rigid). hasRole(drill, toolRole). affordsTask(drill, maintenanceTask).
}).
#pos(e1402@10, {}, {hasAffordance(dry_storage, carve)}, {
  obj(dry_storage). hasPhysicalQuality(dry_storage, hasContainer). hasRole(dry_storage, storageContainerRole). affordsTask(dry_storage, storageTask).
}).
#pos(e1403@10, {}, {hasAffordance(dry_storage, cube)}, {
  obj(dry_storage). hasPhysicalQuality(dry_storage, hasContainer). hasRole(dry_storage, storageContainerRole). affordsTask(dry_storage, storageTask).
}).
#pos(e1404@10, {}, {hasAffordance(dryer, clean)}, {
  obj(dryer). hasPhysicalQuality(dryer, electronic). hasPhysicalQuality(dryer, heavy). hasRole(dryer, applianceRole). affordsTask(dryer, maintenanceTask).
}).
#pos(e1405@10, {}, {hasAffordance(dryer, separate)}, {
  obj(dryer). hasPhysicalQuality(dryer, electronic). hasPhysicalQuality(dryer, heavy). hasRole(dryer, applianceRole). affordsTask(dryer, maintenanceTask).
}).
#pos(e1406@10, {}, {hasAffordance(dustbin, change)}, {
  obj(dustbin). hasPhysicalQuality(dustbin, heavy). hasPhysicalQuality(dustbin, rigid). hasRole(dustbin, storageContainerRole). hasRole(dustbin, wasteRole). affordsTask(dustbin, wasteDisposalTask).
}).
#pos(e1407@10, {}, {hasAffordance(dustbin, dice)}, {
  obj(dustbin). hasPhysicalQuality(dustbin, heavy). hasPhysicalQuality(dustbin, rigid). hasRole(dustbin, storageContainerRole). hasRole(dustbin, wasteRole). affordsTask(dustbin, wasteDisposalTask).
}).
#pos(e1408@10, {}, {hasAffordance(duvet, change)}, {
  obj(duvet). hasPhysicalQuality(duvet, soft_Deformable). hasPhysicalQuality(duvet, washable). hasRole(duvet, beddingRole). affordsTask(duvet, sleepingTask).
}).
#pos(e1409@10, {}, {hasAffordance(duvet, time)}, {
  obj(duvet). hasPhysicalQuality(duvet, soft_Deformable). hasPhysicalQuality(duvet, washable). hasRole(duvet, beddingRole). affordsTask(duvet, sleepingTask).
}).
#pos(e1410@10, {}, {hasAffordance(duvet_cover, exercise)}, {
  obj(duvet_cover). hasPhysicalQuality(duvet_cover, soft_Deformable). hasPhysicalQuality(duvet_cover, washable). hasRole(duvet_cover, beddingRole). affordsTask(duvet_cover, sleepingTask).
}).
#pos(e1411@10, {}, {hasAffordance(duvet_cover, plow)}, {
  obj(duvet_cover). hasPhysicalQuality(duvet_cover, soft_Deformable). hasPhysicalQuality(duvet_cover, washable). hasRole(duvet_cover, beddingRole). affordsTask(duvet_cover, sleepingTask).
}).
#pos(e1412@10, {}, {hasAffordance(egg, cover)}, {
  obj(egg). hasPhysicalQuality(egg, fragile). hasPhysicalQuality(egg, perishable). hasRole(egg, consumableRole). affordsTask(egg, foodPreparationTask).
}).
#pos(e1413@10, {}, {hasAffordance(egg, strip)}, {
  obj(egg). hasPhysicalQuality(egg, fragile). hasPhysicalQuality(egg, perishable). hasRole(egg, consumableRole). affordsTask(egg, foodPreparationTask).
}).
#pos(e1414@10, {}, {hasAffordance(electric_blanket, entertain)}, {
  obj(electric_blanket). hasPhysicalQuality(electric_blanket, electronic). hasPhysicalQuality(electric_blanket, soft_Deformable). hasPhysicalQuality(electric_blanket, washable). hasRole(electric_blanket, beddingRole). affordsTask(electric_blanket, sleepingTask).
}).
#pos(e1415@10, {}, {hasAffordance(electric_blanket, store)}, {
  obj(electric_blanket). hasPhysicalQuality(electric_blanket, electronic). hasPhysicalQuality(electric_blanket, soft_Deformable). hasPhysicalQuality(electric_blanket, washable). hasRole(electric_blanket, beddingRole). affordsTask(electric_blanket, sleepingTask).
}).
#pos(e1416@10, {}, {hasAffordance(electric_fan, break)}, {
  obj(electric_fan). hasPhysicalQuality(electric_fan, electronic). hasPhysicalQuality(electric_fan, lightweight). hasRole(electric_fan, applianceRole). affordsTask(electric_fan, leisureTask).
}).
#pos(e1417@10, {}, {hasAffordance(electric_fan, time)}, {
  obj(electric_fan). hasPhysicalQuality(electric_fan, electronic). hasPhysicalQuality(electric_fan, lightweight). hasRole(electric_fan, applianceRole). affordsTask(electric_fan, leisureTask).
}).
#pos(e1418@10, {}, {hasAffordance(electric_pencil_sharpener, clean)}, {
  obj(electric_pencil_sharpener). hasPhysicalQuality(electric_pencil_sharpener, electronic). hasPhysicalQuality(electric_pencil_sharpener, heavy). hasRole(electric_pencil_sharpener, toolRole). affordsTask(electric_pencil_sharpener, maintenanceTask).
}).
#pos(e1419@10, {}, {hasAffordance(electric_pencil_sharpener, unclog)}, {
  obj(electric_pencil_sharpener). hasPhysicalQuality(electric_pencil_sharpener, electronic). hasPhysicalQuality(electric_pencil_sharpener, heavy). hasRole(electric_pencil_sharpener, toolRole). affordsTask(electric_pencil_sharpener, maintenanceTask).
}).
#pos(e1420@10, {}, {hasAffordance(electric_razor, plug)}, {
  obj(electric_razor). hasPhysicalQuality(electric_razor, electronic). hasPhysicalQuality(electric_razor, lightweight). hasRole(electric_razor, toolRole). affordsTask(electric_razor, hygieneTask).
}).
#pos(e1421@10, {}, {hasAffordance(electric_razor, write)}, {
  obj(electric_razor). hasPhysicalQuality(electric_razor, electronic). hasPhysicalQuality(electric_razor, lightweight). hasRole(electric_razor, toolRole). affordsTask(electric_razor, hygieneTask).
}).
#pos(e1422@10, {}, {hasAffordance(electric_socket, stick)}, {
  obj(electric_socket). hasPhysicalQuality(electric_socket, electronic). hasPhysicalQuality(electric_socket, heavy). hasRole(electric_socket, applianceRole).
}).
#pos(e1423@10, {}, {hasAffordance(electric_socket, strip)}, {
  obj(electric_socket). hasPhysicalQuality(electric_socket, electronic). hasPhysicalQuality(electric_socket, heavy). hasRole(electric_socket, applianceRole).
}).
#pos(e1424@10, {}, {hasAffordance(eraser, illuminate)}, {
  obj(eraser). hasPhysicalQuality(eraser, lightweight). hasPhysicalQuality(eraser, soft_Deformable). hasRole(eraser, toolRole). affordsTask(eraser, maintenanceTask).
}).
#pos(e1425@10, {}, {hasAffordance(eraser, slit)}, {
  obj(eraser). hasPhysicalQuality(eraser, lightweight). hasPhysicalQuality(eraser, soft_Deformable). hasRole(eraser, toolRole). affordsTask(eraser, maintenanceTask).
}).
#pos(e1426@10, {}, {hasAffordance(eyeglasses_case, dry)}, {
  obj(eyeglasses_case). hasPhysicalQuality(eyeglasses_case, hasContainer). hasPhysicalQuality(eyeglasses_case, lightweight). hasRole(eyeglasses_case, storageContainerRole). affordsTask(eyeglasses_case, storageTask).
}).
#pos(e1427@10, {}, {hasAffordance(eyeglasses_case, flex)}, {
  obj(eyeglasses_case). hasPhysicalQuality(eyeglasses_case, hasContainer). hasPhysicalQuality(eyeglasses_case, lightweight). hasRole(eyeglasses_case, storageContainerRole). affordsTask(eyeglasses_case, storageTask).
}).
#pos(e1428@10, {}, {hasAffordance(faucet, entertain)}, {
  obj(faucet). hasPhysicalQuality(faucet, electronic). hasPhysicalQuality(faucet, liquid). hasRole(faucet, toolRole). affordsTask(faucet, hygieneTask).
}).
#pos(e1429@10, {}, {hasAffordance(faucet, hold)}, {
  obj(faucet). hasPhysicalQuality(faucet, electronic). hasPhysicalQuality(faucet, liquid). hasRole(faucet, toolRole). affordsTask(faucet, hygieneTask).
}).
#pos(e1430@10, {}, {hasAffordance(faucet_overflow, file)}, {
  obj(faucet_overflow). hasPhysicalQuality(faucet_overflow, liquid). hasRole(faucet_overflow, toolRole). affordsTask(faucet_overflow, maintenanceTask).
}).
#pos(e1431@10, {}, {hasAffordance(faucet_overflow, peel)}, {
  obj(faucet_overflow). hasPhysicalQuality(faucet_overflow, liquid). hasRole(faucet_overflow, toolRole). affordsTask(faucet_overflow, maintenanceTask).
}).
#pos(e1432@10, {}, {hasAffordance(feather, cover)}, {
  obj(feather). hasPhysicalQuality(feather, lightweight). hasPhysicalQuality(feather, soft_Deformable). hasRole(feather, consumableRole). affordsTask(feather, leisureTask).
}).
#pos(e1433@10, {}, {hasAffordance(feather, wipe)}, {
  obj(feather). hasPhysicalQuality(feather, lightweight). hasPhysicalQuality(feather, soft_Deformable). hasRole(feather, consumableRole). affordsTask(feather, leisureTask).
}).
#pos(e1434@10, {}, {hasAffordance(feathers, hammer)}, {
  obj(feathers). hasPhysicalQuality(feathers, lightweight). hasPhysicalQuality(feathers, soft_Deformable). hasRole(feathers, consumableRole).
}).
#pos(e1435@10, {}, {hasAffordance(feathers, press)}, {
  obj(feathers). hasPhysicalQuality(feathers, lightweight). hasPhysicalQuality(feathers, soft_Deformable). hasRole(feathers, consumableRole).
}).
#pos(e1436@10, {}, {hasAffordance(felt, clean)}, {
  obj(felt). hasPhysicalQuality(felt, soft_Deformable). hasRole(felt, consumableRole). hasRole(felt, toolRole).
}).
#pos(e1437@10, {}, {hasAffordance(felt, install)}, {
  obj(felt). hasPhysicalQuality(felt, soft_Deformable). hasRole(felt, consumableRole). hasRole(felt, toolRole).
}).
#pos(e1438@10, {}, {hasAffordance(file, be_heated)}, {
  obj(file). hasPhysicalQuality(file, lightweight). hasRole(file, documentRole). affordsTask(file, storageTask).
}).
#pos(e1439@10, {}, {hasAffordance(file, read)}, {
  obj(file). hasPhysicalQuality(file, lightweight). hasRole(file, documentRole). affordsTask(file, storageTask).
}).
#pos(e1440@10, {}, {hasAffordance(file_cabinet, staple)}, {
  obj(file_cabinet). hasRole(file_cabinet, storageContainerRole).
}).
#pos(e1441@10, {}, {hasAffordance(file_cabinet, unclog)}, {
  obj(file_cabinet). hasRole(file_cabinet, storageContainerRole).
}).
#pos(e1442@10, {}, {hasAffordance(files, chop)}, {
  obj(files). hasRole(files, documentRole).
}).
#pos(e1443@10, {}, {hasAffordance(files, compress)}, {
  obj(files). hasRole(files, documentRole).
}).
#pos(e1444@10, {}, {hasAffordance(filing_box, drill)}, {
  obj(filing_box). hasPhysicalQuality(filing_box, hasContainer). hasPhysicalQuality(filing_box, heavy). hasRole(filing_box, storageContainerRole). affordsTask(filing_box, storageTask).
}).
#pos(e1445@10, {}, {hasAffordance(filing_box, slit)}, {
  obj(filing_box). hasPhysicalQuality(filing_box, hasContainer). hasPhysicalQuality(filing_box, heavy). hasRole(filing_box, storageContainerRole). affordsTask(filing_box, storageTask).
}).
#pos(e1446@10, {}, {hasAffordance(film, file)}, {
  obj(film). hasPhysicalQuality(film, fragile). hasRole(film, entertainmentRole). affordsTask(film, leisureTask).
}).
#pos(e1447@10, {}, {hasAffordance(film, scoop)}, {
  obj(film). hasPhysicalQuality(film, fragile). hasRole(film, entertainmentRole). affordsTask(film, leisureTask).
}).
#pos(e1448@10, {}, {hasAffordance(fireplace, crack)}, {
  obj(fireplace). hasPhysicalQuality(fireplace, heated). hasRole(fireplace, applianceRole). affordsTask(fireplace, maintenanceTask).
}).
#pos(e1449@10, {}, {hasAffordance(fireplace, melt)}, {
  obj(fireplace). hasPhysicalQuality(fireplace, heated). hasRole(fireplace, applianceRole). affordsTask(fireplace, maintenanceTask).
}).
#pos(e1450@10, {}, {hasAffordance(fish, change)}, {
  obj(fish). hasPhysicalQuality(fish, liquid). hasPhysicalQuality(fish, perishable). hasRole(fish, consumableRole). affordsTask(fish, eatingDrinkingTask).
}).
#pos(e1451@10, {}, {hasAffordance(fish, entertain)}, {
  obj(fish). hasPhysicalQuality(fish, liquid). hasPhysicalQuality(fish, perishable). hasRole(fish, consumableRole). affordsTask(fish, eatingDrinkingTask).
}).
#pos(e1452@10, {}, {hasAffordance(flask, grind)}, {
  obj(flask). hasPhysicalQuality(flask, hasContainer). hasPhysicalQuality(flask, liquid). hasRole(flask, utensilRole). affordsTask(flask, eatingDrinkingTask).
}).
#pos(e1453@10, {}, {hasAffordance(flask, operate)}, {
  obj(flask). hasPhysicalQuality(flask, hasContainer). hasPhysicalQuality(flask, liquid). hasRole(flask, utensilRole). affordsTask(flask, eatingDrinkingTask).
}).
#pos(e1454@10, {}, {hasAffordance(flooring, cut)}, {
  obj(flooring). hasPhysicalQuality(flooring, rigid). hasRole(flooring, furnitureRole).
}).
#pos(e1455@10, {}, {hasAffordance(flooring, pour)}, {
  obj(flooring). hasPhysicalQuality(flooring, rigid). hasRole(flooring, furnitureRole).
}).
#pos(e1456@10, {}, {hasAffordance(flower, hammer)}, {
  obj(flower). hasPhysicalQuality(flower, perishable). hasRole(flower, consumableRole).
}).
#pos(e1457@10, {}, {hasAffordance(flower, smoothen)}, {
  obj(flower). hasPhysicalQuality(flower, perishable). hasRole(flower, consumableRole).
}).
#pos(e1458@10, {}, {hasAffordance(folder, slit)}, {
  obj(folder). hasRole(folder, storageContainerRole). affordsTask(folder, storageTask).
}).
#pos(e1459@10, {}, {hasAffordance(folder, wash)}, {
  obj(folder). hasRole(folder, storageContainerRole). affordsTask(folder, storageTask).
}).
#pos(e1460@10, {}, {hasAffordance(folding_shower_door, be_heated)}, {
  obj(folding_shower_door). hasPhysicalQuality(folding_shower_door, lightweight). hasPhysicalQuality(folding_shower_door, rigid). hasRole(folding_shower_door, furnitureRole). affordsTask(folding_shower_door, leisureTask).
}).
#pos(e1461@10, {}, {hasAffordance(folding_shower_door, solder)}, {
  obj(folding_shower_door). hasPhysicalQuality(folding_shower_door, lightweight). hasPhysicalQuality(folding_shower_door, rigid). hasRole(folding_shower_door, furnitureRole). affordsTask(folding_shower_door, leisureTask).
}).
#pos(e1462@10, {}, {hasAffordance(fork, contain)}, {
  obj(fork). hasPhysicalQuality(fork, rigid). hasPhysicalQuality(fork, sharp). hasRole(fork, utensilRole). affordsTask(fork, foodPreparationTask).
}).
#pos(e1463@10, {}, {hasAffordance(fork, hammer)}, {
  obj(fork). hasPhysicalQuality(fork, rigid). hasPhysicalQuality(fork, sharp). hasRole(fork, utensilRole). affordsTask(fork, foodPreparationTask).
}).
#pos(e1464@10, {}, {hasAffordance(freezer, crack)}, {
  obj(freezer). hasPhysicalQuality(freezer, requiresFreezing). hasRole(freezer, applianceRole). affordsTask(freezer, storageTask).
}).
#pos(e1465@10, {}, {hasAffordance(freezer, file)}, {
  obj(freezer). hasPhysicalQuality(freezer, requiresFreezing). hasRole(freezer, applianceRole). affordsTask(freezer, storageTask).
}).
#pos(e1466@10, {}, {hasAffordance(fridge, contain)}, {
  obj(fridge). hasPhysicalQuality(fridge, electronic). hasPhysicalQuality(fridge, heavy). hasRole(fridge, applianceRole). affordsTask(fridge, storageTask).
}).
#pos(e1467@10, {}, {hasAffordance(fridge, control)}, {
  obj(fridge). hasPhysicalQuality(fridge, electronic). hasPhysicalQuality(fridge, heavy). hasRole(fridge, applianceRole). affordsTask(fridge, storageTask).
}).
#pos(e1468@10, {}, {hasAffordance(frisbee, crunch)}, {
  obj(frisbee). hasPhysicalQuality(frisbee, lightweight). hasPhysicalQuality(frisbee, rigid). hasRole(frisbee, entertainmentRole). hasRole(frisbee, toolRole). affordsTask(frisbee, leisureTask). affordsTask(frisbee, maintenanceTask).
}).
#pos(e1469@10, {}, {hasAffordance(frisbee, solder)}, {
  obj(frisbee). hasPhysicalQuality(frisbee, lightweight). hasPhysicalQuality(frisbee, rigid). hasRole(frisbee, entertainmentRole). hasRole(frisbee, toolRole). affordsTask(frisbee, leisureTask). affordsTask(frisbee, maintenanceTask).
}).
#pos(e1470@10, {}, {hasAffordance(frying_pan, grasp)}, {
  obj(frying_pan). hasPhysicalQuality(frying_pan, heated). hasPhysicalQuality(frying_pan, rigid). hasRole(frying_pan, cookwareRole). affordsTask(frying_pan, foodPreparationTask).
}).
#pos(e1471@10, {}, {hasAffordance(frying_pan, hammer)}, {
  obj(frying_pan). hasPhysicalQuality(frying_pan, heated). hasPhysicalQuality(frying_pan, rigid). hasRole(frying_pan, cookwareRole). affordsTask(frying_pan, foodPreparationTask).
}).
#pos(e1472@10, {}, {hasAffordance(garage, dispose)}, {
  obj(garage). hasPhysicalQuality(garage, heavy). hasPhysicalQuality(garage, rigid). hasRole(garage, furnitureRole). hasRole(garage, storageContainerRole). affordsTask(garage, storageTask).
}).
#pos(e1473@10, {}, {hasAffordance(garage, unclog)}, {
  obj(garage). hasPhysicalQuality(garage, heavy). hasPhysicalQuality(garage, rigid). hasRole(garage, furnitureRole). hasRole(garage, storageContainerRole). affordsTask(garage, storageTask).
}).
#pos(e1474@10, {}, {hasAffordance(garbage, drill)}, {
  obj(garbage). hasRole(garbage, consumableRole). hasRole(garbage, storageContainerRole). affordsTask(garbage, wasteDisposalTask).
}).
#pos(e1475@10, {}, {hasAffordance(garbage, lift)}, {
  obj(garbage). hasRole(garbage, consumableRole). hasRole(garbage, storageContainerRole). affordsTask(garbage, wasteDisposalTask).
}).
#pos(e1476@10, {}, {hasAffordance(garbage_can, fix)}, {
  obj(garbage_can). hasPhysicalQuality(garbage_can, hasContainer). hasPhysicalQuality(garbage_can, heavy). hasRole(garbage_can, storageContainerRole). affordsTask(garbage_can, wasteDisposalTask).
}).
#pos(e1477@10, {}, {hasAffordance(garbage_can, write)}, {
  obj(garbage_can). hasPhysicalQuality(garbage_can, hasContainer). hasPhysicalQuality(garbage_can, heavy). hasRole(garbage_can, storageContainerRole). affordsTask(garbage_can, wasteDisposalTask).
}).
#pos(e1478@10, {}, {hasAffordance(garden, rub)}, {
  obj(garden). hasPhysicalQuality(garden, lightweight). hasPhysicalQuality(garden, soft_Deformable). hasRole(garden, furnitureRole). affordsTask(garden, leisureTask).
}).
#pos(e1479@10, {}, {hasAffordance(garden, scoop)}, {
  obj(garden). hasPhysicalQuality(garden, lightweight). hasPhysicalQuality(garden, soft_Deformable). hasRole(garden, furnitureRole). affordsTask(garden, leisureTask).
}).
#pos(e1480@10, {}, {hasAffordance(garden_hose, carry)}, {
  obj(garden_hose). hasPhysicalQuality(garden_hose, liquid). hasRole(garden_hose, toolRole). affordsTask(garden_hose, gardeningTask). affordsTask(garden_hose, hygieneTask).
}).
#pos(e1481@10, {}, {hasAffordance(garden_hose, file)}, {
  obj(garden_hose). hasPhysicalQuality(garden_hose, liquid). hasRole(garden_hose, toolRole). affordsTask(garden_hose, gardeningTask). affordsTask(garden_hose, hygieneTask).
}).
#pos(e1482@10, {}, {hasAffordance(garlic, comfort)}, {
  obj(garlic). hasPhysicalQuality(garlic, perishable). hasRole(garlic, consumableRole). affordsTask(garlic, foodPreparationTask).
}).
#pos(e1483@10, {}, {hasAffordance(garlic, wipe)}, {
  obj(garlic). hasPhysicalQuality(garlic, perishable). hasRole(garlic, consumableRole). affordsTask(garlic, foodPreparationTask).
}).
#pos(e1484@10, {}, {hasAffordance(garment_bag, grind)}, {
  obj(garment_bag). hasPhysicalQuality(garment_bag, lightweight). hasPhysicalQuality(garment_bag, soft_Deformable). hasRole(garment_bag, storageContainerRole). affordsTask(garment_bag, storageTask).
}).
#pos(e1485@10, {}, {hasAffordance(garment_bag, pour)}, {
  obj(garment_bag). hasPhysicalQuality(garment_bag, lightweight). hasPhysicalQuality(garment_bag, soft_Deformable). hasRole(garment_bag, storageContainerRole). affordsTask(garment_bag, storageTask).
}).
#pos(e1486@10, {}, {hasAffordance(gate, absorb)}, {
  obj(gate). hasPhysicalQuality(gate, heavy). hasPhysicalQuality(gate, rigid). hasRole(gate, furnitureRole). affordsTask(gate, maintenanceTask).
}).
#pos(e1487@10, {}, {hasAffordance(gate, break)}, {
  obj(gate). hasPhysicalQuality(gate, heavy). hasPhysicalQuality(gate, rigid). hasRole(gate, furnitureRole). affordsTask(gate, maintenanceTask).
}).
#pos(e1488@10, {}, {hasAffordance(gel_toothpaste, crack)}, {
  obj(gel_toothpaste). hasPhysicalQuality(gel_toothpaste, liquid). hasPhysicalQuality(gel_toothpaste, toxic_Hazardous). hasRole(gel_toothpaste, cleaningToolRole). affordsTask(gel_toothpaste, hygieneTask).
}).
#pos(e1489@10, {}, {hasAffordance(gel_toothpaste, increase)}, {
  obj(gel_toothpaste). hasPhysicalQuality(gel_toothpaste, liquid). hasPhysicalQuality(gel_toothpaste, toxic_Hazardous). hasRole(gel_toothpaste, cleaningToolRole). affordsTask(gel_toothpaste, hygieneTask).
}).
#pos(e1490@10, {}, {hasAffordance(glass, flex)}, {
  obj(glass). hasPhysicalQuality(glass, fragile). hasPhysicalQuality(glass, rigid). hasRole(glass, utensilRole). affordsTask(glass, eatingDrinkingTask).
}).
#pos(e1491@10, {}, {hasAffordance(glass, write)}, {
  obj(glass). hasPhysicalQuality(glass, fragile). hasPhysicalQuality(glass, rigid). hasRole(glass, utensilRole). affordsTask(glass, eatingDrinkingTask).
}).
#pos(e1492@10, {}, {hasAffordance(glass_fronted_cupboard, cube)}, {
  obj(glass_fronted_cupboard). hasPhysicalQuality(glass_fronted_cupboard, heavy). hasPhysicalQuality(glass_fronted_cupboard, rigid). hasRole(glass_fronted_cupboard, storageContainerRole). affordsTask(glass_fronted_cupboard, storageTask).
}).
#pos(e1493@10, {}, {hasAffordance(glass_fronted_cupboard, pour)}, {
  obj(glass_fronted_cupboard). hasPhysicalQuality(glass_fronted_cupboard, heavy). hasPhysicalQuality(glass_fronted_cupboard, rigid). hasRole(glass_fronted_cupboard, storageContainerRole). affordsTask(glass_fronted_cupboard, storageTask).
}).
#pos(e1494@10, {}, {hasAffordance(glass_fronted_display_cabinet, polish)}, {
  obj(glass_fronted_display_cabinet). hasPhysicalQuality(glass_fronted_display_cabinet, heavy). hasPhysicalQuality(glass_fronted_display_cabinet, rigid). hasRole(glass_fronted_display_cabinet, furnitureRole). hasRole(glass_fronted_display_cabinet, storageContainerRole). affordsTask(glass_fronted_display_cabinet, storageTask).
}).
#pos(e1495@10, {}, {hasAffordance(glass_fronted_display_cabinet, spread)}, {
  obj(glass_fronted_display_cabinet). hasPhysicalQuality(glass_fronted_display_cabinet, heavy). hasPhysicalQuality(glass_fronted_display_cabinet, rigid). hasRole(glass_fronted_display_cabinet, furnitureRole). hasRole(glass_fronted_display_cabinet, storageContainerRole). affordsTask(glass_fronted_display_cabinet, storageTask).
}).
#pos(e1496@10, {}, {hasAffordance(glass_of_water, be_heated)}, {
  obj(glass_of_water). hasPhysicalQuality(glass_of_water, liquid). hasRole(glass_of_water, consumableRole). hasRole(glass_of_water, utensilRole). affordsTask(glass_of_water, eatingDrinkingTask).
}).
#pos(e1497@10, {}, {hasAffordance(glass_of_water, spread)}, {
  obj(glass_of_water). hasPhysicalQuality(glass_of_water, liquid). hasRole(glass_of_water, consumableRole). hasRole(glass_of_water, utensilRole). affordsTask(glass_of_water, eatingDrinkingTask).
}).
#pos(e1498@10, {}, {hasAffordance(glasses, chop)}, {
  obj(glasses). hasPhysicalQuality(glasses, lightweight). hasRole(glasses, utensilRole). affordsTask(glasses, eatingDrinkingTask).
}).
#pos(e1499@10, {}, {hasAffordance(glasses, control)}, {
  obj(glasses). hasPhysicalQuality(glasses, lightweight). hasRole(glasses, utensilRole). affordsTask(glasses, eatingDrinkingTask).
}).
#pos(e1500@10, {}, {hasAffordance(glasses_case, crunch)}, {
  obj(glasses_case). hasPhysicalQuality(glasses_case, lightweight). hasPhysicalQuality(glasses_case, soft_Deformable). hasRole(glasses_case, storageContainerRole). affordsTask(glasses_case, storageTask).
}).
#pos(e1501@10, {}, {hasAffordance(glasses_case, solder)}, {
  obj(glasses_case). hasPhysicalQuality(glasses_case, lightweight). hasPhysicalQuality(glasses_case, soft_Deformable). hasRole(glasses_case, storageContainerRole). affordsTask(glasses_case, storageTask).
}).
#pos(e1502@10, {}, {hasAffordance(glue, bore)}, {
  obj(glue). hasPhysicalQuality(glue, fragile). hasPhysicalQuality(glue, liquid). hasRole(glue, toolRole). affordsTask(glue, maintenanceTask).
}).
#pos(e1503@10, {}, {hasAffordance(glue, peel)}, {
  obj(glue). hasPhysicalQuality(glue, fragile). hasPhysicalQuality(glue, liquid). hasRole(glue, toolRole). affordsTask(glue, maintenanceTask).
}).
#pos(e1504@10, {}, {hasAffordance(glue_stick, smoothen)}, {
  obj(glue_stick). hasPhysicalQuality(glue_stick, fragile). hasPhysicalQuality(glue_stick, liquid). hasRole(glue_stick, toolRole). affordsTask(glue_stick, maintenanceTask).
}).
#pos(e1505@10, {}, {hasAffordance(glue_stick, strip)}, {
  obj(glue_stick). hasPhysicalQuality(glue_stick, fragile). hasPhysicalQuality(glue_stick, liquid). hasRole(glue_stick, toolRole). affordsTask(glue_stick, maintenanceTask).
}).
#pos(e1506@10, {}, {hasAffordance(grill, crunch)}, {
  obj(grill). hasPhysicalQuality(grill, heated). hasPhysicalQuality(grill, heavy). hasRole(grill, cookwareRole). affordsTask(grill, foodPreparationTask).
}).
#pos(e1507@10, {}, {hasAffordance(grill, pour)}, {
  obj(grill). hasPhysicalQuality(grill, heated). hasPhysicalQuality(grill, heavy). hasRole(grill, cookwareRole). affordsTask(grill, foodPreparationTask).
}).
#pos(e1508@10, {}, {hasAffordance(gum, break)}, {
  obj(gum). hasPhysicalQuality(gum, liquid). hasPhysicalQuality(gum, perishable). hasRole(gum, consumableRole). affordsTask(gum, eatingDrinkingTask).
}).
#pos(e1509@10, {}, {hasAffordance(gum, cover)}, {
  obj(gum). hasPhysicalQuality(gum, liquid). hasPhysicalQuality(gum, perishable). hasRole(gum, consumableRole). affordsTask(gum, eatingDrinkingTask).
}).
#pos(e1510@10, {}, {hasAffordance(hair_dryer, hold)}, {
  obj(hair_dryer). hasPhysicalQuality(hair_dryer, electronic). hasPhysicalQuality(hair_dryer, heavy). hasRole(hair_dryer, applianceRole). affordsTask(hair_dryer, leisureTask).
}).
#pos(e1511@10, {}, {hasAffordance(hair_dryer, mix)}, {
  obj(hair_dryer). hasPhysicalQuality(hair_dryer, electronic). hasPhysicalQuality(hair_dryer, heavy). hasRole(hair_dryer, applianceRole). affordsTask(hair_dryer, leisureTask).
}).
#pos(e1512@10, {}, {hasAffordance(hairbrush, break)}, {
  obj(hairbrush). hasPhysicalQuality(hairbrush, lightweight). hasPhysicalQuality(hairbrush, rigid). hasRole(hairbrush, toolRole). affordsTask(hairbrush, hygieneTask).
}).
#pos(e1513@10, {}, {hasAffordance(hairbrush, lift)}, {
  obj(hairbrush). hasPhysicalQuality(hairbrush, lightweight). hasPhysicalQuality(hairbrush, rigid). hasRole(hairbrush, toolRole). affordsTask(hairbrush, hygieneTask).
}).
#pos(e1514@10, {}, {hasAffordance(hammer, dry)}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e1515@10, {}, {hasAffordance(hammer, fix)}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e1516@10, {}, {hasAffordance(handbag, control)}, {
  obj(handbag). hasPhysicalQuality(handbag, lightweight). hasPhysicalQuality(handbag, soft_Deformable). hasRole(handbag, storageContainerRole). affordsTask(handbag, storageTask).
}).
#pos(e1517@10, {}, {hasAffordance(handbag, melt)}, {
  obj(handbag). hasPhysicalQuality(handbag, lightweight). hasPhysicalQuality(handbag, soft_Deformable). hasRole(handbag, storageContainerRole). affordsTask(handbag, storageTask).
}).
#pos(e1518@10, {}, {hasAffordance(hanger, pierce)}, {
  obj(hanger). hasPhysicalQuality(hanger, lightweight). hasPhysicalQuality(hanger, rigid). hasPhysicalQuality(hanger, soft_Deformable). hasRole(hanger, clothingRole). affordsTask(hanger, dressingTask).
}).
#pos(e1519@10, {}, {hasAffordance(hanger, spread)}, {
  obj(hanger). hasPhysicalQuality(hanger, lightweight). hasPhysicalQuality(hanger, rigid). hasPhysicalQuality(hanger, soft_Deformable). hasRole(hanger, clothingRole). affordsTask(hanger, dressingTask).
}).
#pos(e1520@10, {}, {hasAffordance(hard_drive, crunch)}, {
  obj(hard_drive). hasPhysicalQuality(hard_drive, electronic). hasPhysicalQuality(hard_drive, heavy). hasRole(hard_drive, applianceRole). affordsTask(hard_drive, storageTask).
}).
#pos(e1521@10, {}, {hasAffordance(hard_drive, unclog)}, {
  obj(hard_drive). hasPhysicalQuality(hard_drive, electronic). hasPhysicalQuality(hard_drive, heavy). hasRole(hard_drive, applianceRole). affordsTask(hard_drive, storageTask).
}).
#pos(e1522@10, {}, {hasAffordance(hat, cut)}, {
  obj(hat). hasPhysicalQuality(hat, lightweight). hasPhysicalQuality(hat, soft_Deformable). hasRole(hat, clothingRole). affordsTask(hat, dressingTask).
}).
#pos(e1523@10, {}, {hasAffordance(hat, exercise)}, {
  obj(hat). hasPhysicalQuality(hat, lightweight). hasPhysicalQuality(hat, soft_Deformable). hasRole(hat, clothingRole). affordsTask(hat, dressingTask).
}).
#pos(e1524@10, {}, {hasAffordance(heated_towel_rack, dice)}, {
  obj(heated_towel_rack). hasPhysicalQuality(heated_towel_rack, heated). hasRole(heated_towel_rack, applianceRole). affordsTask(heated_towel_rack, hygieneTask).
}).
#pos(e1525@10, {}, {hasAffordance(heated_towel_rack, poke)}, {
  obj(heated_towel_rack). hasPhysicalQuality(heated_towel_rack, heated). hasRole(heated_towel_rack, applianceRole). affordsTask(heated_towel_rack, hygieneTask).
}).
#pos(e1526@10, {}, {hasAffordance(heater, bend)}, {
  obj(heater). hasPhysicalQuality(heater, heated). hasRole(heater, applianceRole). affordsTask(heater, maintenanceTask).
}).
#pos(e1527@10, {}, {hasAffordance(heater, dice)}, {
  obj(heater). hasPhysicalQuality(heater, heated). hasRole(heater, applianceRole). affordsTask(heater, maintenanceTask).
}).
#pos(e1528@10, {}, {hasAffordance(hide_bed_sofa, increase)}, {
  obj(hide_bed_sofa). hasPhysicalQuality(hide_bed_sofa, fragile). hasPhysicalQuality(hide_bed_sofa, soft_Deformable). hasRole(hide_bed_sofa, furnitureRole). affordsTask(hide_bed_sofa, sleepingTask).
}).
#pos(e1529@10, {}, {hasAffordance(hide_bed_sofa, plow)}, {
  obj(hide_bed_sofa). hasPhysicalQuality(hide_bed_sofa, fragile). hasPhysicalQuality(hide_bed_sofa, soft_Deformable). hasRole(hide_bed_sofa, furnitureRole). affordsTask(hide_bed_sofa, sleepingTask).
}).
#pos(e1530@10, {}, {hasAffordance(highlighter, entertain)}, {
  obj(highlighter). hasPhysicalQuality(highlighter, lightweight). hasPhysicalQuality(highlighter, rigid). hasRole(highlighter, utensilRole). affordsTask(highlighter, foodPreparationTask).
}).
#pos(e1531@10, {}, {hasAffordance(highlighter, fix)}, {
  obj(highlighter). hasPhysicalQuality(highlighter, lightweight). hasPhysicalQuality(highlighter, rigid). hasRole(highlighter, utensilRole). affordsTask(highlighter, foodPreparationTask).
}).
#pos(e1532@10, {}, {hasAffordance(highlighter_pen, contain)}, {
  obj(highlighter_pen). hasPhysicalQuality(highlighter_pen, lightweight). hasPhysicalQuality(highlighter_pen, rigid). hasRole(highlighter_pen, utensilRole). affordsTask(highlighter_pen, foodPreparationTask).
}).
#pos(e1533@10, {}, {hasAffordance(highlighter_pen, cube)}, {
  obj(highlighter_pen). hasPhysicalQuality(highlighter_pen, lightweight). hasPhysicalQuality(highlighter_pen, rigid). hasRole(highlighter_pen, utensilRole). affordsTask(highlighter_pen, foodPreparationTask).
}).
#pos(e1534@10, {}, {hasAffordance(hinged_door, bore)}, {
  obj(hinged_door). hasPhysicalQuality(hinged_door, heavy). hasPhysicalQuality(hinged_door, rigid). hasRole(hinged_door, furnitureRole). affordsTask(hinged_door, storageTask).
}).
#pos(e1535@10, {}, {hasAffordance(hinged_door, operate)}, {
  obj(hinged_door). hasPhysicalQuality(hinged_door, heavy). hasPhysicalQuality(hinged_door, rigid). hasRole(hinged_door, furnitureRole). affordsTask(hinged_door, storageTask).
}).
#pos(e1536@10, {}, {hasAffordance(holdall, eat)}, {
  obj(holdall). hasPhysicalQuality(holdall, lightweight). hasPhysicalQuality(holdall, soft_Deformable). hasRole(holdall, storageContainerRole). affordsTask(holdall, storageTask).
}).
#pos(e1537@10, {}, {hasAffordance(holdall, roll)}, {
  obj(holdall). hasPhysicalQuality(holdall, lightweight). hasPhysicalQuality(holdall, soft_Deformable). hasRole(holdall, storageContainerRole). affordsTask(holdall, storageTask).
}).
#pos(e1538@10, {}, {hasAffordance(honey, display)}, {
  obj(honey). hasPhysicalQuality(honey, perishable). hasRole(honey, consumableRole). affordsTask(honey, eatingDrinkingTask).
}).
#pos(e1539@10, {}, {hasAffordance(honey, press)}, {
  obj(honey). hasPhysicalQuality(honey, perishable). hasRole(honey, consumableRole). affordsTask(honey, eatingDrinkingTask).
}).
#pos(e1540@10, {}, {hasAffordance(horn, heat)}, {
  obj(horn). hasPhysicalQuality(horn, lightweight). hasPhysicalQuality(horn, rigid). hasRole(horn, musicalInstrumentRole). affordsTask(horn, leisureTask).
}).
#pos(e1541@10, {}, {hasAffordance(horn, mark)}, {
  obj(horn). hasPhysicalQuality(horn, lightweight). hasPhysicalQuality(horn, rigid). hasRole(horn, musicalInstrumentRole). affordsTask(horn, leisureTask).
}).
#pos(e1542@10, {}, {hasAffordance(hose, engrave)}, {
  obj(hose). hasPhysicalQuality(hose, isFlexible). hasPhysicalQuality(hose, liquid). hasRole(hose, toolRole). affordsTask(hose, cleaningTask).
}).
#pos(e1543@10, {}, {hasAffordance(hose, entertain)}, {
  obj(hose). hasPhysicalQuality(hose, isFlexible). hasPhysicalQuality(hose, liquid). hasRole(hose, toolRole). affordsTask(hose, cleaningTask).
}).
#pos(e1544@10, {}, {hasAffordance(house, bend)}, {
  obj(house). hasPhysicalQuality(house, heavy). hasRole(house, furnitureRole). hasRole(house, storageContainerRole). affordsTask(house, leisureTask). affordsTask(house, workStudyTask).
}).
#pos(e1545@10, {}, {hasAffordance(house, display)}, {
  obj(house). hasPhysicalQuality(house, heavy). hasRole(house, furnitureRole). hasRole(house, storageContainerRole). affordsTask(house, leisureTask). affordsTask(house, workStudyTask).
}).
#pos(e1546@10, {}, {hasAffordance(ice_cream, illuminate)}, {
  obj(ice_cream). hasPhysicalQuality(ice_cream, perishable). hasPhysicalQuality(ice_cream, requiresFreezing). hasRole(ice_cream, consumableRole). affordsTask(ice_cream, eatingDrinkingTask).
}).
#pos(e1547@10, {}, {hasAffordance(ice_cream, pierce)}, {
  obj(ice_cream). hasPhysicalQuality(ice_cream, perishable). hasPhysicalQuality(ice_cream, requiresFreezing). hasRole(ice_cream, consumableRole). affordsTask(ice_cream, eatingDrinkingTask).
}).
#pos(e1548@10, {}, {hasAffordance(icebox, change)}, {
  obj(icebox). hasPhysicalQuality(icebox, requiresFreezing). hasRole(icebox, applianceRole). affordsTask(icebox, storageTask).
}).
#pos(e1549@10, {}, {hasAffordance(icebox, grasp)}, {
  obj(icebox). hasPhysicalQuality(icebox, requiresFreezing). hasRole(icebox, applianceRole). affordsTask(icebox, storageTask).
}).
#pos(e1550@10, {}, {hasAffordance(index_card, flex)}, {
  obj(index_card). hasPhysicalQuality(index_card, lightweight). hasPhysicalQuality(index_card, rigid). hasRole(index_card, documentRole). affordsTask(index_card, workStudyTask).
}).
#pos(e1551@10, {}, {hasAffordance(index_card, install)}, {
  obj(index_card). hasPhysicalQuality(index_card, lightweight). hasPhysicalQuality(index_card, rigid). hasRole(index_card, documentRole). affordsTask(index_card, workStudyTask).
}).
#pos(e1552@10, {}, {hasAffordance(index_card_cabinet, separate)}, {
  obj(index_card_cabinet). hasPhysicalQuality(index_card_cabinet, hasContainer). hasPhysicalQuality(index_card_cabinet, heavy). hasRole(index_card_cabinet, storageContainerRole). affordsTask(index_card_cabinet, storageTask).
}).
#pos(e1553@10, {}, {hasAffordance(index_card_cabinet, wrench)}, {
  obj(index_card_cabinet). hasPhysicalQuality(index_card_cabinet, hasContainer). hasPhysicalQuality(index_card_cabinet, heavy). hasRole(index_card_cabinet, storageContainerRole). affordsTask(index_card_cabinet, storageTask).
}).
#pos(e1554@10, {}, {hasAffordance(ink, pierce)}, {
  obj(ink). hasPhysicalQuality(ink, liquid). hasPhysicalQuality(ink, toxic_Hazardous).
}).
#pos(e1555@10, {}, {hasAffordance(ink, slit)}, {
  obj(ink). hasPhysicalQuality(ink, liquid). hasPhysicalQuality(ink, toxic_Hazardous).
}).
#pos(e1556@10, {}, {hasAffordance(instrument_triangle, bend)}, {
  obj(instrument_triangle). hasPhysicalQuality(instrument_triangle, lightweight). hasPhysicalQuality(instrument_triangle, rigid). hasRole(instrument_triangle, musicalInstrumentRole). affordsTask(instrument_triangle, leisureTask).
}).
#pos(e1557@10, {}, {hasAffordance(instrument_triangle, increase)}, {
  obj(instrument_triangle). hasPhysicalQuality(instrument_triangle, lightweight). hasPhysicalQuality(instrument_triangle, rigid). hasRole(instrument_triangle, musicalInstrumentRole). affordsTask(instrument_triangle, leisureTask).
}).
#pos(e1558@10, {}, {hasAffordance(iron, control)}, {
  obj(iron). hasPhysicalQuality(iron, heated). hasPhysicalQuality(iron, heavy). hasRole(iron, toolRole). affordsTask(iron, maintenanceTask).
}).
#pos(e1559@10, {}, {hasAffordance(iron, file)}, {
  obj(iron). hasPhysicalQuality(iron, heated). hasPhysicalQuality(iron, heavy). hasRole(iron, toolRole). affordsTask(iron, maintenanceTask).
}).
#pos(e1560@10, {}, {hasAffordance(jacket, decorate)}, {
  obj(jacket). hasPhysicalQuality(jacket, soft_Deformable). hasPhysicalQuality(jacket, washable). hasRole(jacket, clothingRole). affordsTask(jacket, dressingTask).
}).
#pos(e1561@10, {}, {hasAffordance(jacket, store)}, {
  obj(jacket). hasPhysicalQuality(jacket, soft_Deformable). hasPhysicalQuality(jacket, washable). hasRole(jacket, clothingRole). affordsTask(jacket, dressingTask).
}).
#pos(e1562@10, {}, {hasAffordance(jar, bore)}, {
  obj(jar). hasPhysicalQuality(jar, hasContainer). hasRole(jar, storageContainerRole). affordsTask(jar, storageTask).
}).
#pos(e1563@10, {}, {hasAffordance(jar, file)}, {
  obj(jar). hasPhysicalQuality(jar, hasContainer). hasRole(jar, storageContainerRole). affordsTask(jar, storageTask).
}).
#pos(e1564@10, {}, {hasAffordance(jars, contain)}, {
  obj(jars). hasPhysicalQuality(jars, hasContainer). hasRole(jars, storageContainerRole). affordsTask(jars, storageTask).
}).
#pos(e1565@10, {}, {hasAffordance(jars, support)}, {
  obj(jars). hasPhysicalQuality(jars, hasContainer). hasRole(jars, storageContainerRole). affordsTask(jars, storageTask).
}).
#pos(e1566@10, {}, {hasAffordance(jeans, melt)}, {
  obj(jeans). hasPhysicalQuality(jeans, soft_Deformable). hasPhysicalQuality(jeans, washable). hasRole(jeans, clothingRole). affordsTask(jeans, dressingTask).
}).
#pos(e1567@10, {}, {hasAffordance(jeans, press)}, {
  obj(jeans). hasPhysicalQuality(jeans, soft_Deformable). hasPhysicalQuality(jeans, washable). hasRole(jeans, clothingRole). affordsTask(jeans, dressingTask).
}).
#pos(e1568@10, {}, {hasAffordance(kettle, increase)}, {
  obj(kettle). hasPhysicalQuality(kettle, heated). hasPhysicalQuality(kettle, heavy). hasRole(kettle, cookwareRole). affordsTask(kettle, foodPreparationTask).
}).
#pos(e1569@10, {}, {hasAffordance(kettle, press)}, {
  obj(kettle). hasPhysicalQuality(kettle, heated). hasPhysicalQuality(kettle, heavy). hasRole(kettle, cookwareRole). affordsTask(kettle, foodPreparationTask).
}).
#pos(e1570@10, {}, {hasAffordance(keyboard, skin)}, {
  obj(keyboard). hasPhysicalQuality(keyboard, electronic). hasPhysicalQuality(keyboard, lightweight). hasRole(keyboard, toolRole). affordsTask(keyboard, workStudyTask).
}).
#pos(e1571@10, {}, {hasAffordance(keyboard, unclog)}, {
  obj(keyboard). hasPhysicalQuality(keyboard, electronic). hasPhysicalQuality(keyboard, lightweight). hasRole(keyboard, toolRole). affordsTask(keyboard, workStudyTask).
}).
#pos(e1572@10, {}, {hasAffordance(keys, cool)}, {
  obj(keys). hasPhysicalQuality(keys, lightweight). hasPhysicalQuality(keys, rigid). hasRole(keys, toolRole). affordsTask(keys, maintenanceTask).
}).
#pos(e1573@10, {}, {hasAffordance(keys, pick)}, {
  obj(keys). hasPhysicalQuality(keys, lightweight). hasPhysicalQuality(keys, rigid). hasRole(keys, toolRole). affordsTask(keys, maintenanceTask).
}).
#pos(e1574@10, {}, {hasAffordance(kitchen_table, display)}, {
  obj(kitchen_table). hasPhysicalQuality(kitchen_table, heavy). hasPhysicalQuality(kitchen_table, rigid). hasRole(kitchen_table, furnitureRole). affordsTask(kitchen_table, eatingDrinkingTask). affordsTask(kitchen_table, foodPreparationTask).
}).
#pos(e1575@10, {}, {hasAffordance(kitchen_table, strip)}, {
  obj(kitchen_table). hasPhysicalQuality(kitchen_table, heavy). hasPhysicalQuality(kitchen_table, rigid). hasRole(kitchen_table, furnitureRole). affordsTask(kitchen_table, eatingDrinkingTask). affordsTask(kitchen_table, foodPreparationTask).
}).
#pos(e1576@10, {}, {hasAffordance(kitchen_utensil, break)}, {
  obj(kitchen_utensil). hasPhysicalQuality(kitchen_utensil, rigid). hasPhysicalQuality(kitchen_utensil, sharp). hasRole(kitchen_utensil, utensilRole). affordsTask(kitchen_utensil, foodPreparationTask).
}).
#pos(e1577@10, {}, {hasAffordance(kitchen_utensil, fix)}, {
  obj(kitchen_utensil). hasPhysicalQuality(kitchen_utensil, rigid). hasPhysicalQuality(kitchen_utensil, sharp). hasRole(kitchen_utensil, utensilRole). affordsTask(kitchen_utensil, foodPreparationTask).
}).
#pos(e1578@10, {}, {hasAffordance(kitchenette, absorb)}, {
  obj(kitchenette). hasPhysicalQuality(kitchenette, heavy). hasPhysicalQuality(kitchenette, rigid). hasRole(kitchenette, cookwareRole). hasRole(kitchenette, storageContainerRole). affordsTask(kitchenette, eatingDrinkingTask). affordsTask(kitchenette, foodPreparationTask).
}).
#pos(e1579@10, {}, {hasAffordance(kitchenette, press)}, {
  obj(kitchenette). hasPhysicalQuality(kitchenette, heavy). hasPhysicalQuality(kitchenette, rigid). hasRole(kitchenette, cookwareRole). hasRole(kitchenette, storageContainerRole). affordsTask(kitchenette, eatingDrinkingTask). affordsTask(kitchenette, foodPreparationTask).
}).
#pos(e1580@10, {}, {hasAffordance(kleenex, separate)}, {
  obj(kleenex). hasPhysicalQuality(kleenex, lightweight). hasPhysicalQuality(kleenex, soft_Deformable). hasRole(kleenex, consumableRole). affordsTask(kleenex, hygieneTask).
}).
#pos(e1581@10, {}, {hasAffordance(kleenex, skin)}, {
  obj(kleenex). hasPhysicalQuality(kleenex, lightweight). hasPhysicalQuality(kleenex, soft_Deformable). hasRole(kleenex, consumableRole). affordsTask(kleenex, hygieneTask).
}).
#pos(e1582@10, {}, {hasAffordance(knife, engrave)}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e1583@10, {}, {hasAffordance(knife, poke)}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e1584@10, {}, {hasAffordance(knives, change)}, {
  obj(knives). hasPhysicalQuality(knives, rigid). hasPhysicalQuality(knives, sharp). hasRole(knives, utensilRole). affordsTask(knives, foodPreparationTask).
}).
#pos(e1585@10, {}, {hasAffordance(knives, press)}, {
  obj(knives). hasPhysicalQuality(knives, rigid). hasPhysicalQuality(knives, sharp). hasRole(knives, utensilRole). affordsTask(knives, foodPreparationTask).
}).
#pos(e1586@10, {}, {hasAffordance(knob, illuminate)}, {
  obj(knob). hasPhysicalQuality(knob, lightweight). hasPhysicalQuality(knob, rigid). hasRole(knob, toolRole). affordsTask(knob, maintenanceTask).
}).
#pos(e1587@10, {}, {hasAffordance(knob, time)}, {
  obj(knob). hasPhysicalQuality(knob, lightweight). hasPhysicalQuality(knob, rigid). hasRole(knob, toolRole). affordsTask(knob, maintenanceTask).
}).
#pos(e1588@10, {}, {hasAffordance(label_maker, cool)}, {
  obj(label_maker). hasPhysicalQuality(label_maker, electronic). hasPhysicalQuality(label_maker, lightweight). hasRole(label_maker, toolRole). affordsTask(label_maker, workStudyTask).
}).
#pos(e1589@10, {}, {hasAffordance(label_maker, hold)}, {
  obj(label_maker). hasPhysicalQuality(label_maker, electronic). hasPhysicalQuality(label_maker, lightweight). hasRole(label_maker, toolRole). affordsTask(label_maker, workStudyTask).
}).
#pos(e1590@10, {}, {hasAffordance(ladder, handle)}, {
  obj(ladder). hasPhysicalQuality(ladder, heavy). hasPhysicalQuality(ladder, rigid). hasRole(ladder, toolRole). affordsTask(ladder, maintenanceTask).
}).
#pos(e1591@10, {}, {hasAffordance(ladder, shape)}, {
  obj(ladder). hasPhysicalQuality(ladder, heavy). hasPhysicalQuality(ladder, rigid). hasRole(ladder, toolRole). affordsTask(ladder, maintenanceTask).
}).
#pos(e1592@10, {}, {hasAffordance(lamp, handle)}, {
  obj(lamp). hasPhysicalQuality(lamp, electronic). hasPhysicalQuality(lamp, lightweight). hasRole(lamp, lightingRole). affordsTask(lamp, leisureTask).
}).
#pos(e1593@10, {}, {hasAffordance(lamp, plow)}, {
  obj(lamp). hasPhysicalQuality(lamp, electronic). hasPhysicalQuality(lamp, lightweight). hasRole(lamp, lightingRole). affordsTask(lamp, leisureTask).
}).
#pos(e1594@10, {}, {hasAffordance(led, install)}, {
  obj(led). hasPhysicalQuality(led, electronic). hasPhysicalQuality(led, lightweight). hasRole(led, toolRole). affordsTask(led, maintenanceTask).
}).
#pos(e1595@10, {}, {hasAffordance(led, plug)}, {
  obj(led). hasPhysicalQuality(led, electronic). hasPhysicalQuality(led, lightweight). hasRole(led, toolRole). affordsTask(led, maintenanceTask).
}).
#pos(e1596@10, {}, {hasAffordance(level, grind)}, {
  obj(level). hasPhysicalQuality(level, rigid). hasRole(level, toolRole). affordsTask(level, maintenanceTask).
}).
#pos(e1597@10, {}, {hasAffordance(level, smoothen)}, {
  obj(level). hasPhysicalQuality(level, rigid). hasRole(level, toolRole). affordsTask(level, maintenanceTask).
}).
#pos(e1598@10, {}, {hasAffordance(light, crumble)}, {
  obj(light). hasPhysicalQuality(light, electronic). hasPhysicalQuality(light, lightweight). hasRole(light, lightingRole). affordsTask(light, leisureTask).
}).
#pos(e1599@10, {}, {hasAffordance(light, dispose)}, {
  obj(light). hasPhysicalQuality(light, electronic). hasPhysicalQuality(light, lightweight). hasRole(light, lightingRole). affordsTask(light, leisureTask).
}).
#pos(e1600@10, {}, {hasAffordance(light_bulb, operate)}, {
  obj(light_bulb). hasPhysicalQuality(light_bulb, electronic). hasPhysicalQuality(light_bulb, lightweight). hasRole(light_bulb, lightingRole). affordsTask(light_bulb, leisureTask).
}).
#pos(e1601@10, {}, {hasAffordance(light_bulb, plug)}, {
  obj(light_bulb). hasPhysicalQuality(light_bulb, electronic). hasPhysicalQuality(light_bulb, lightweight). hasRole(light_bulb, lightingRole). affordsTask(light_bulb, leisureTask).
}).
#pos(e1602@10, {}, {hasAffordance(light_source, decorate)}, {
  obj(light_source). hasPhysicalQuality(light_source, electronic). hasPhysicalQuality(light_source, heated). hasRole(light_source, lightingRole). affordsTask(light_source, leisureTask).
}).
#pos(e1603@10, {}, {hasAffordance(light_source, unclog)}, {
  obj(light_source). hasPhysicalQuality(light_source, electronic). hasPhysicalQuality(light_source, heated). hasRole(light_source, lightingRole). affordsTask(light_source, leisureTask).
}).
#pos(e1604@10, {}, {hasAffordance(lightbulb, hammer)}, {
  obj(lightbulb). hasPhysicalQuality(lightbulb, electronic). hasPhysicalQuality(lightbulb, lightweight). hasRole(lightbulb, lightingRole). affordsTask(lightbulb, leisureTask).
}).
#pos(e1605@10, {}, {hasAffordance(lightbulb, staple)}, {
  obj(lightbulb). hasPhysicalQuality(lightbulb, electronic). hasPhysicalQuality(lightbulb, lightweight). hasRole(lightbulb, lightingRole). affordsTask(lightbulb, leisureTask).
}).
#pos(e1606@10, {}, {hasAffordance(line, repair)}, {
  obj(line). hasPhysicalQuality(line, lightweight). hasPhysicalQuality(line, rigid). hasRole(line, toolRole). affordsTask(line, maintenanceTask).
}).
#pos(e1607@10, {}, {hasAffordance(line, wrench)}, {
  obj(line). hasPhysicalQuality(line, lightweight). hasPhysicalQuality(line, rigid). hasRole(line, toolRole). affordsTask(line, maintenanceTask).
}).
#pos(e1608@10, {}, {hasAffordance(linen, absorb)}, {
  obj(linen). hasPhysicalQuality(linen, soft_Deformable). hasPhysicalQuality(linen, washable). hasRole(linen, clothingRole). affordsTask(linen, dressingTask).
}).
#pos(e1609@10, {}, {hasAffordance(linen, heat)}, {
  obj(linen). hasPhysicalQuality(linen, soft_Deformable). hasPhysicalQuality(linen, washable). hasRole(linen, clothingRole). affordsTask(linen, dressingTask).
}).
#pos(e1610@10, {}, {hasAffordance(linen_chest, drill)}, {
  obj(linen_chest). hasPhysicalQuality(linen_chest, heavy). hasPhysicalQuality(linen_chest, rigid). hasRole(linen_chest, storageContainerRole). affordsTask(linen_chest, storageTask).
}).
#pos(e1611@10, {}, {hasAffordance(linen_chest, grind)}, {
  obj(linen_chest). hasPhysicalQuality(linen_chest, heavy). hasPhysicalQuality(linen_chest, rigid). hasRole(linen_chest, storageContainerRole). affordsTask(linen_chest, storageTask).
}).
#pos(e1612@10, {}, {hasAffordance(linoleum, pour)}, {
  obj(linoleum). hasPhysicalQuality(linoleum, fragile). hasRole(linoleum, furnitureRole).
}).
#pos(e1613@10, {}, {hasAffordance(linoleum, strip)}, {
  obj(linoleum). hasPhysicalQuality(linoleum, fragile). hasRole(linoleum, furnitureRole).
}).
#pos(e1614@10, {}, {hasAffordance(liquor_glass, increase)}, {
  obj(liquor_glass). hasPhysicalQuality(liquor_glass, lightweight). hasPhysicalQuality(liquor_glass, rigid). hasRole(liquor_glass, utensilRole). affordsTask(liquor_glass, eatingDrinkingTask).
}).
#pos(e1615@10, {}, {hasAffordance(liquor_glass, unclog)}, {
  obj(liquor_glass). hasPhysicalQuality(liquor_glass, lightweight). hasPhysicalQuality(liquor_glass, rigid). hasRole(liquor_glass, utensilRole). affordsTask(liquor_glass, eatingDrinkingTask).
}).
#pos(e1616@10, {}, {hasAffordance(lock, pour)}, {
  obj(lock). hasPhysicalQuality(lock, heavy). hasRole(lock, toolRole). affordsTask(lock, maintenanceTask).
}).
#pos(e1617@10, {}, {hasAffordance(lock, repair)}, {
  obj(lock). hasPhysicalQuality(lock, heavy). hasRole(lock, toolRole). affordsTask(lock, maintenanceTask).
}).
#pos(e1618@10, {}, {hasAffordance(love_seat, drill)}, {
  obj(love_seat). hasPhysicalQuality(love_seat, heavy). hasPhysicalQuality(love_seat, soft_Deformable). hasRole(love_seat, furnitureRole). affordsTask(love_seat, storageTask).
}).
#pos(e1619@10, {}, {hasAffordance(love_seat, pour)}, {
  obj(love_seat). hasPhysicalQuality(love_seat, heavy). hasPhysicalQuality(love_seat, soft_Deformable). hasRole(love_seat, furnitureRole). affordsTask(love_seat, storageTask).
}).
#pos(e1620@10, {}, {hasAffordance(luggage, roll)}, {
  obj(luggage). hasPhysicalQuality(luggage, hasContainer). hasPhysicalQuality(luggage, lightweight). hasRole(luggage, storageContainerRole).
}).
#pos(e1621@10, {}, {hasAffordance(luggage, separate)}, {
  obj(luggage). hasPhysicalQuality(luggage, hasContainer). hasPhysicalQuality(luggage, lightweight). hasRole(luggage, storageContainerRole).
}).
#pos(e1622@10, {}, {hasAffordance(machine, slit)}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e1623@10, {}, {hasAffordance(machine, support)}, {
  obj(machine). hasPhysicalQuality(machine, electronic). hasPhysicalQuality(machine, heavy). hasRole(machine, toolRole). affordsTask(machine, maintenanceTask).
}).
#pos(e1624@10, {}, {hasAffordance(magazines, cut)}, {
  obj(magazines). hasPhysicalQuality(magazines, lightweight). hasRole(magazines, documentRole). affordsTask(magazines, leisureTask).
}).
#pos(e1625@10, {}, {hasAffordance(magazines, write)}, {
  obj(magazines). hasPhysicalQuality(magazines, lightweight). hasRole(magazines, documentRole). affordsTask(magazines, leisureTask).
}).
#pos(e1626@10, {}, {hasAffordance(magnet, clean)}, {
  obj(magnet). hasPhysicalQuality(magnet, rigid). hasRole(magnet, toolRole). affordsTask(magnet, maintenanceTask).
}).
#pos(e1627@10, {}, {hasAffordance(magnet, grasp)}, {
  obj(magnet). hasPhysicalQuality(magnet, rigid). hasRole(magnet, toolRole). affordsTask(magnet, maintenanceTask).
}).
#pos(e1628@10, {}, {hasAffordance(mail, screw)}, {
  obj(mail). hasRole(mail, consumableRole).
}).
#pos(e1629@10, {}, {hasAffordance(mail, write)}, {
  obj(mail). hasRole(mail, consumableRole).
}).
#pos(e1630@10, {}, {hasAffordance(map, unclog)}, {
  obj(map). hasPhysicalQuality(map, lightweight). hasRole(map, toolRole). affordsTask(map, leisureTask).
}).
#pos(e1631@10, {}, {hasAffordance(map, wipe)}, {
  obj(map). hasPhysicalQuality(map, lightweight). hasRole(map, toolRole). affordsTask(map, leisureTask).
}).
#pos(e1632@10, {}, {hasAffordance(marble, comfort)}, {
  obj(marble). hasPhysicalQuality(marble, granular). hasPhysicalQuality(marble, rigid). hasRole(marble, decorationRole).
}).
#pos(e1633@10, {}, {hasAffordance(marble, install)}, {
  obj(marble). hasPhysicalQuality(marble, granular). hasPhysicalQuality(marble, rigid). hasRole(marble, decorationRole).
}).
#pos(e1634@10, {}, {hasAffordance(marker, engrave)}, {
  obj(marker). hasPhysicalQuality(marker, lightweight). hasRole(marker, toolRole). affordsTask(marker, foodPreparationTask).
}).
#pos(e1635@10, {}, {hasAffordance(marker, heat)}, {
  obj(marker). hasPhysicalQuality(marker, lightweight). hasRole(marker, toolRole). affordsTask(marker, foodPreparationTask).
}).
#pos(e1636@10, {}, {hasAffordance(mat, dispose)}, {
  obj(mat). hasPhysicalQuality(mat, lightweight). hasPhysicalQuality(mat, soft_Deformable). hasRole(mat, furnitureRole). affordsTask(mat, storageTask).
}).
#pos(e1637@10, {}, {hasAffordance(mat, eat)}, {
  obj(mat). hasPhysicalQuality(mat, lightweight). hasPhysicalQuality(mat, soft_Deformable). hasRole(mat, furnitureRole). affordsTask(mat, storageTask).
}).
#pos(e1638@10, {}, {hasAffordance(matches, bend)}, {
  obj(matches). hasPhysicalQuality(matches, fragile). hasPhysicalQuality(matches, lightweight). hasRole(matches, toolRole). affordsTask(matches, maintenanceTask).
}).
#pos(e1639@10, {}, {hasAffordance(matches, crumble)}, {
  obj(matches). hasPhysicalQuality(matches, fragile). hasPhysicalQuality(matches, lightweight). hasRole(matches, toolRole). affordsTask(matches, maintenanceTask).
}).
#pos(e1640@10, {}, {hasAffordance(meat, break)}, {
  obj(meat). hasPhysicalQuality(meat, perishable). hasRole(meat, consumableRole). affordsTask(meat, eatingDrinkingTask). affordsTask(meat, foodPreparationTask).
}).
#pos(e1641@10, {}, {hasAffordance(meat, entertain)}, {
  obj(meat). hasPhysicalQuality(meat, perishable). hasRole(meat, consumableRole). affordsTask(meat, eatingDrinkingTask). affordsTask(meat, foodPreparationTask).
}).
#pos(e1642@10, {}, {hasAffordance(mechanical_pencil, repair)}, {
  obj(mechanical_pencil). hasPhysicalQuality(mechanical_pencil, lightweight). hasPhysicalQuality(mechanical_pencil, rigid). hasRole(mechanical_pencil, toolRole). affordsTask(mechanical_pencil, workStudyTask).
}).
#pos(e1643@10, {}, {hasAffordance(mechanical_pencil, tamp)}, {
  obj(mechanical_pencil). hasPhysicalQuality(mechanical_pencil, lightweight). hasPhysicalQuality(mechanical_pencil, rigid). hasRole(mechanical_pencil, toolRole). affordsTask(mechanical_pencil, workStudyTask).
}).
#pos(e1644@10, {}, {hasAffordance(medicine, chop)}, {
  obj(medicine). hasPhysicalQuality(medicine, perishable). hasRole(medicine, consumableRole). affordsTask(medicine, eatingDrinkingTask).
}).
#pos(e1645@10, {}, {hasAffordance(medicine, read)}, {
  obj(medicine). hasPhysicalQuality(medicine, perishable). hasRole(medicine, consumableRole). affordsTask(medicine, eatingDrinkingTask).
}).
#pos(e1646@10, {}, {hasAffordance(microwave, poke)}, {
  obj(microwave). hasPhysicalQuality(microwave, electronic). hasPhysicalQuality(microwave, heated). hasRole(microwave, applianceRole). affordsTask(microwave, foodPreparationTask).
}).
#pos(e1647@10, {}, {hasAffordance(microwave, wipe)}, {
  obj(microwave). hasPhysicalQuality(microwave, electronic). hasPhysicalQuality(microwave, heated). hasRole(microwave, applianceRole). affordsTask(microwave, foodPreparationTask).
}).
#pos(e1648@10, {}, {hasAffordance(microwave_oven, dig)}, {
  obj(microwave_oven). hasPhysicalQuality(microwave_oven, electronic). hasPhysicalQuality(microwave_oven, heated). hasRole(microwave_oven, applianceRole). affordsTask(microwave_oven, foodPreparationTask).
}).
#pos(e1649@10, {}, {hasAffordance(microwave_oven, stick)}, {
  obj(microwave_oven). hasPhysicalQuality(microwave_oven, electronic). hasPhysicalQuality(microwave_oven, heated). hasRole(microwave_oven, applianceRole). affordsTask(microwave_oven, foodPreparationTask).
}).
#pos(e1650@10, {}, {hasAffordance(milk, peel)}, {
  obj(milk). hasPhysicalQuality(milk, perishable). hasRole(milk, consumableRole). affordsTask(milk, eatingDrinkingTask).
}).
#pos(e1651@10, {}, {hasAffordance(milk, scoop)}, {
  obj(milk). hasPhysicalQuality(milk, perishable). hasRole(milk, consumableRole). affordsTask(milk, eatingDrinkingTask).
}).
#pos(e1652@10, {}, {hasAffordance(mirror, entertain)}, {
  obj(mirror). hasPhysicalQuality(mirror, electronic). hasPhysicalQuality(mirror, rigid). hasRole(mirror, decorationRole).
}).
#pos(e1653@10, {}, {hasAffordance(mirror, pierce)}, {
  obj(mirror). hasPhysicalQuality(mirror, electronic). hasPhysicalQuality(mirror, rigid). hasRole(mirror, decorationRole).
}).
#pos(e1654@10, {}, {hasAffordance(monitor, crumble)}, {
  obj(monitor). hasRole(monitor, entertainmentRole). affordsTask(monitor, leisureTask).
}).
#pos(e1655@10, {}, {hasAffordance(monitor, wrench)}, {
  obj(monitor). hasRole(monitor, entertainmentRole). affordsTask(monitor, leisureTask).
}).
#pos(e1656@10, {}, {hasAffordance(motherboard, absorb)}, {
  obj(motherboard). hasPhysicalQuality(motherboard, electronic). hasPhysicalQuality(motherboard, rigid). hasRole(motherboard, toolRole).
}).
#pos(e1657@10, {}, {hasAffordance(motherboard, contain)}, {
  obj(motherboard). hasPhysicalQuality(motherboard, electronic). hasPhysicalQuality(motherboard, rigid). hasRole(motherboard, toolRole).
}).
#pos(e1658@10, {}, {hasAffordance(mouse, eat)}, {
  obj(mouse). hasPhysicalQuality(mouse, lightweight). hasRole(mouse, consumableRole).
}).
#pos(e1659@10, {}, {hasAffordance(mouse, poke)}, {
  obj(mouse). hasPhysicalQuality(mouse, lightweight). hasRole(mouse, consumableRole).
}).
#pos(e1660@10, {}, {hasAffordance(mouthwash, dice)}, {
  obj(mouthwash). hasPhysicalQuality(mouthwash, liquid). hasPhysicalQuality(mouthwash, toxic_Hazardous). hasRole(mouthwash, cleaningToolRole). affordsTask(mouthwash, hygieneTask).
}).
#pos(e1661@10, {}, {hasAffordance(mouthwash, skin)}, {
  obj(mouthwash). hasPhysicalQuality(mouthwash, liquid). hasPhysicalQuality(mouthwash, toxic_Hazardous). hasRole(mouthwash, cleaningToolRole). affordsTask(mouthwash, hygieneTask).
}).
#pos(e1662@10, {}, {hasAffordance(mug, carry)}, {
  obj(mug). hasPhysicalQuality(mug, hasContainer). hasPhysicalQuality(mug, liquid). hasRole(mug, utensilRole). affordsTask(mug, eatingDrinkingTask).
}).
#pos(e1663@10, {}, {hasAffordance(mug, saw)}, {
  obj(mug). hasPhysicalQuality(mug, hasContainer). hasPhysicalQuality(mug, liquid). hasRole(mug, utensilRole). affordsTask(mug, eatingDrinkingTask).
}).
#pos(e1664@10, {}, {hasAffordance(music_stand, exercise)}, {
  obj(music_stand). hasPhysicalQuality(music_stand, lightweight). hasPhysicalQuality(music_stand, rigid). hasRole(music_stand, furnitureRole). affordsTask(music_stand, workStudyTask).
}).
#pos(e1665@10, {}, {hasAffordance(music_stand, stick)}, {
  obj(music_stand). hasPhysicalQuality(music_stand, lightweight). hasPhysicalQuality(music_stand, rigid). hasRole(music_stand, furnitureRole). affordsTask(music_stand, workStudyTask).
}).
#pos(e1666@10, {}, {hasAffordance(musical_instrument, cool)}, {
  obj(musical_instrument). hasRole(musical_instrument, musicalInstrumentRole).
}).
#pos(e1667@10, {}, {hasAffordance(musical_instrument, read)}, {
  obj(musical_instrument). hasRole(musical_instrument, musicalInstrumentRole).
}).
#pos(e1668@10, {}, {hasAffordance(nail_clippers, crack)}, {
  obj(nail_clippers). hasPhysicalQuality(nail_clippers, rigid). hasPhysicalQuality(nail_clippers, sharp). hasRole(nail_clippers, toolRole). affordsTask(nail_clippers, hygieneTask).
}).
#pos(e1669@10, {}, {hasAffordance(nail_clippers, roll)}, {
  obj(nail_clippers). hasPhysicalQuality(nail_clippers, rigid). hasPhysicalQuality(nail_clippers, sharp). hasRole(nail_clippers, toolRole). affordsTask(nail_clippers, hygieneTask).
}).
#pos(e1670@10, {}, {hasAffordance(nest_of_tables, shape)}, {
  obj(nest_of_tables). hasRole(nest_of_tables, furnitureRole).
}).
#pos(e1671@10, {}, {hasAffordance(nest_of_tables, solder)}, {
  obj(nest_of_tables). hasRole(nest_of_tables, furnitureRole).
}).
#pos(e1672@10, {}, {hasAffordance(net, increase)}, {
  obj(net). hasRole(net, toolRole).
}).
#pos(e1673@10, {}, {hasAffordance(net, time)}, {
  obj(net). hasRole(net, toolRole).
}).
#pos(e1674@10, {}, {hasAffordance(night_table, press)}, {
  obj(night_table). hasPhysicalQuality(night_table, heavy). hasPhysicalQuality(night_table, rigid). hasRole(night_table, furnitureRole). affordsTask(night_table, storageTask).
}).
#pos(e1675@10, {}, {hasAffordance(night_table, unclog)}, {
  obj(night_table). hasPhysicalQuality(night_table, heavy). hasPhysicalQuality(night_table, rigid). hasRole(night_table, furnitureRole). affordsTask(night_table, storageTask).
}).
#pos(e1676@10, {}, {hasAffordance(notebook, poke)}, {
  obj(notebook). hasPhysicalQuality(notebook, lightweight). hasPhysicalQuality(notebook, rigid). hasRole(notebook, documentRole). affordsTask(notebook, workStudyTask).
}).
#pos(e1677@10, {}, {hasAffordance(notebook, screw)}, {
  obj(notebook). hasPhysicalQuality(notebook, lightweight). hasPhysicalQuality(notebook, rigid). hasRole(notebook, documentRole). affordsTask(notebook, workStudyTask).
}).
#pos(e1678@10, {}, {hasAffordance(notepad, press)}, {
  obj(notepad). hasPhysicalQuality(notepad, lightweight). hasPhysicalQuality(notepad, rigid). hasRole(notepad, documentRole). affordsTask(notepad, workStudyTask).
}).
#pos(e1679@10, {}, {hasAffordance(notepad, solder)}, {
  obj(notepad). hasPhysicalQuality(notepad, lightweight). hasPhysicalQuality(notepad, rigid). hasRole(notepad, documentRole). affordsTask(notepad, workStudyTask).
}).
#pos(e1680@10, {}, {hasAffordance(nylon, cut)}, {
  obj(nylon). hasPhysicalQuality(nylon, lightweight). hasPhysicalQuality(nylon, soft_Deformable).
}).
#pos(e1681@10, {}, {hasAffordance(nylon, roll)}, {
  obj(nylon). hasPhysicalQuality(nylon, lightweight). hasPhysicalQuality(nylon, soft_Deformable).
}).
#pos(e1682@10, {}, {hasAffordance(oilcloth, flex)}, {
  obj(oilcloth). hasPhysicalQuality(oilcloth, soft_Deformable). hasPhysicalQuality(oilcloth, washable). hasRole(oilcloth, clothingRole). affordsTask(oilcloth, leisureTask).
}).
#pos(e1683@10, {}, {hasAffordance(oilcloth, read)}, {
  obj(oilcloth). hasPhysicalQuality(oilcloth, soft_Deformable). hasPhysicalQuality(oilcloth, washable). hasRole(oilcloth, clothingRole). affordsTask(oilcloth, leisureTask).
}).
#pos(e1684@10, {}, {hasAffordance(one_person_chair, entertain)}, {
  obj(one_person_chair). hasPhysicalQuality(one_person_chair, rigid). hasRole(one_person_chair, furnitureRole). affordsTask(one_person_chair, leisureTask).
}).
#pos(e1685@10, {}, {hasAffordance(one_person_chair, wrap)}, {
  obj(one_person_chair). hasPhysicalQuality(one_person_chair, rigid). hasRole(one_person_chair, furnitureRole). affordsTask(one_person_chair, leisureTask).
}).
#pos(e1686@10, {}, {hasAffordance(oven, grasp)}, {
  obj(oven). hasPhysicalQuality(oven, heated). hasRole(oven, cookwareRole). affordsTask(oven, foodPreparationTask).
}).
#pos(e1687@10, {}, {hasAffordance(oven, skin)}, {
  obj(oven). hasPhysicalQuality(oven, heated). hasRole(oven, cookwareRole). affordsTask(oven, foodPreparationTask).
}).
#pos(e1688@10, {}, {hasAffordance(page, scoop)}, {
  obj(page). hasRole(page, documentRole).
}).
#pos(e1689@10, {}, {hasAffordance(page, wipe)}, {
  obj(page). hasRole(page, documentRole).
}).
#pos(e1690@10, {}, {hasAffordance(pail, exercise)}, {
  obj(pail). hasPhysicalQuality(pail, hasContainer). hasRole(pail, storageContainerRole). affordsTask(pail, storageTask).
}).
#pos(e1691@10, {}, {hasAffordance(pail, grind)}, {
  obj(pail). hasPhysicalQuality(pail, hasContainer). hasRole(pail, storageContainerRole). affordsTask(pail, storageTask).
}).
#pos(e1692@10, {}, {hasAffordance(paint, chop)}, {
  obj(paint). hasPhysicalQuality(paint, liquid). hasPhysicalQuality(paint, toxic_Hazardous). affordsTask(paint, maintenanceTask).
}).
#pos(e1693@10, {}, {hasAffordance(paint, pour)}, {
  obj(paint). hasPhysicalQuality(paint, liquid). hasPhysicalQuality(paint, toxic_Hazardous). affordsTask(paint, maintenanceTask).
}).
#pos(e1694@10, {}, {hasAffordance(pair_of_pants, entertain)}, {
  obj(pair_of_pants). hasPhysicalQuality(pair_of_pants, lightweight). hasPhysicalQuality(pair_of_pants, soft_Deformable). hasRole(pair_of_pants, clothingRole). affordsTask(pair_of_pants, dressingTask).
}).
#pos(e1695@10, {}, {hasAffordance(pair_of_pants, grind)}, {
  obj(pair_of_pants). hasPhysicalQuality(pair_of_pants, lightweight). hasPhysicalQuality(pair_of_pants, soft_Deformable). hasRole(pair_of_pants, clothingRole). affordsTask(pair_of_pants, dressingTask).
}).
#pos(e1696@10, {}, {hasAffordance(pair_of_scissors, flex)}, {
  obj(pair_of_scissors). hasPhysicalQuality(pair_of_scissors, rigid). hasPhysicalQuality(pair_of_scissors, sharp). hasRole(pair_of_scissors, toolRole). affordsTask(pair_of_scissors, maintenanceTask).
}).
#pos(e1697@10, {}, {hasAffordance(pair_of_scissors, increase)}, {
  obj(pair_of_scissors). hasPhysicalQuality(pair_of_scissors, rigid). hasPhysicalQuality(pair_of_scissors, sharp). hasRole(pair_of_scissors, toolRole). affordsTask(pair_of_scissors, maintenanceTask).
}).
#pos(e1698@10, {}, {hasAffordance(pan, hold)}, {
  obj(pan). hasPhysicalQuality(pan, heated). hasPhysicalQuality(pan, rigid). hasRole(pan, cookwareRole). affordsTask(pan, foodPreparationTask).
}).
#pos(e1699@10, {}, {hasAffordance(pan, smoothen)}, {
  obj(pan). hasPhysicalQuality(pan, heated). hasPhysicalQuality(pan, rigid). hasRole(pan, cookwareRole). affordsTask(pan, foodPreparationTask).
}).
#pos(e1700@10, {}, {hasAffordance(pantry, clean)}, {
  obj(pantry). hasPhysicalQuality(pantry, hasContainer). hasRole(pantry, applianceRole). hasRole(pantry, storageContainerRole). affordsTask(pantry, storageTask).
}).
#pos(e1701@10, {}, {hasAffordance(pantry, crumble)}, {
  obj(pantry). hasPhysicalQuality(pantry, hasContainer). hasRole(pantry, applianceRole). hasRole(pantry, storageContainerRole). affordsTask(pantry, storageTask).
}).
#pos(e1702@10, {}, {hasAffordance(paper, decorate)}, {
  obj(paper). hasPhysicalQuality(paper, flammable). hasPhysicalQuality(paper, fragile). hasRole(paper, consumableRole). affordsTask(paper, eatingDrinkingTask).
}).
#pos(e1703@10, {}, {hasAffordance(paper, exercise)}, {
  obj(paper). hasPhysicalQuality(paper, flammable). hasPhysicalQuality(paper, fragile). hasRole(paper, consumableRole). affordsTask(paper, eatingDrinkingTask).
}).
#pos(e1704@10, {}, {hasAffordance(paper_and_pencil, crunch)}, {
  obj(paper_and_pencil). hasPhysicalQuality(paper_and_pencil, lightweight). hasPhysicalQuality(paper_and_pencil, rigid). hasRole(paper_and_pencil, toolRole). affordsTask(paper_and_pencil, workStudyTask).
}).
#pos(e1705@10, {}, {hasAffordance(paper_and_pencil, operate)}, {
  obj(paper_and_pencil). hasPhysicalQuality(paper_and_pencil, lightweight). hasPhysicalQuality(paper_and_pencil, rigid). hasRole(paper_and_pencil, toolRole). affordsTask(paper_and_pencil, workStudyTask).
}).
#pos(e1706@10, {}, {hasAffordance(paper_clip, chop)}, {
  obj(paper_clip). hasPhysicalQuality(paper_clip, lightweight). hasPhysicalQuality(paper_clip, rigid). hasRole(paper_clip, toolRole). affordsTask(paper_clip, maintenanceTask).
}).
#pos(e1707@10, {}, {hasAffordance(paper_clip, eat)}, {
  obj(paper_clip). hasPhysicalQuality(paper_clip, lightweight). hasPhysicalQuality(paper_clip, rigid). hasRole(paper_clip, toolRole). affordsTask(paper_clip, maintenanceTask).
}).
#pos(e1708@10, {}, {hasAffordance(paper_clips, pierce)}, {
  obj(paper_clips). hasPhysicalQuality(paper_clips, lightweight). hasPhysicalQuality(paper_clips, rigid). hasRole(paper_clips, toolRole). affordsTask(paper_clips, maintenanceTask).
}).
#pos(e1709@10, {}, {hasAffordance(paper_clips, plow)}, {
  obj(paper_clips). hasPhysicalQuality(paper_clips, lightweight). hasPhysicalQuality(paper_clips, rigid). hasRole(paper_clips, toolRole). affordsTask(paper_clips, maintenanceTask).
}).
#pos(e1710@10, {}, {hasAffordance(paper_fastener, illuminate)}, {
  obj(paper_fastener). hasPhysicalQuality(paper_fastener, lightweight). hasPhysicalQuality(paper_fastener, rigid). hasRole(paper_fastener, toolRole). affordsTask(paper_fastener, maintenanceTask).
}).
#pos(e1711@10, {}, {hasAffordance(paper_fastener, smoothen)}, {
  obj(paper_fastener). hasPhysicalQuality(paper_fastener, lightweight). hasPhysicalQuality(paper_fastener, rigid). hasRole(paper_fastener, toolRole). affordsTask(paper_fastener, maintenanceTask).
}).
#pos(e1712@10, {}, {hasAffordance(paper_towels, plow)}, {
  obj(paper_towels). hasPhysicalQuality(paper_towels, lightweight). hasPhysicalQuality(paper_towels, soft_Deformable). hasPhysicalQuality(paper_towels, washable). hasRole(paper_towels, cleaningToolRole). affordsTask(paper_towels, cleaningTask).
}).
#pos(e1713@10, {}, {hasAffordance(paper_towels, read)}, {
  obj(paper_towels). hasPhysicalQuality(paper_towels, lightweight). hasPhysicalQuality(paper_towels, soft_Deformable). hasPhysicalQuality(paper_towels, washable). hasRole(paper_towels, cleaningToolRole). affordsTask(paper_towels, cleaningTask).
}).
#pos(e1714@10, {}, {hasAffordance(parlor, carve)}, {
  obj(parlor). hasRole(parlor, furnitureRole).
}).
#pos(e1715@10, {}, {hasAffordance(parlor, dispose)}, {
  obj(parlor). hasRole(parlor, furnitureRole).
}).
#pos(e1716@10, {}, {hasAffordance(patio_door, operate)}, {
  obj(patio_door). hasPhysicalQuality(patio_door, heavy). hasPhysicalQuality(patio_door, rigid). hasRole(patio_door, furnitureRole). affordsTask(patio_door, leisureTask).
}).
#pos(e1717@10, {}, {hasAffordance(patio_door, plow)}, {
  obj(patio_door). hasPhysicalQuality(patio_door, heavy). hasPhysicalQuality(patio_door, rigid). hasRole(patio_door, furnitureRole). affordsTask(patio_door, leisureTask).
}).
#pos(e1718@10, {}, {hasAffordance(peanut_butter, beautify)}, {
  obj(peanut_butter). hasPhysicalQuality(peanut_butter, liquid). hasPhysicalQuality(peanut_butter, perishable). hasRole(peanut_butter, consumableRole). affordsTask(peanut_butter, eatingDrinkingTask).
}).
#pos(e1719@10, {}, {hasAffordance(peanut_butter, store)}, {
  obj(peanut_butter). hasPhysicalQuality(peanut_butter, liquid). hasPhysicalQuality(peanut_butter, perishable). hasRole(peanut_butter, consumableRole). affordsTask(peanut_butter, eatingDrinkingTask).
}).
#pos(e1720@10, {}, {hasAffordance(pen, peel)}, {
  obj(pen). hasPhysicalQuality(pen, lightweight). hasPhysicalQuality(pen, rigid). hasRole(pen, toolRole). affordsTask(pen, workStudyTask).
}).
#pos(e1721@10, {}, {hasAffordance(pen, store)}, {
  obj(pen). hasPhysicalQuality(pen, lightweight). hasPhysicalQuality(pen, rigid). hasRole(pen, toolRole). affordsTask(pen, workStudyTask).
}).
#pos(e1722@10, {}, {hasAffordance(pencil, absorb)}, {
  obj(pencil). hasPhysicalQuality(pencil, lightweight). hasPhysicalQuality(pencil, rigid). hasRole(pencil, toolRole).
}).
#pos(e1723@10, {}, {hasAffordance(pencil, saw)}, {
  obj(pencil). hasPhysicalQuality(pencil, lightweight). hasPhysicalQuality(pencil, rigid). hasRole(pencil, toolRole).
}).
#pos(e1724@10, {}, {hasAffordance(pencil_sharpener, heat)}, {
  obj(pencil_sharpener). hasPhysicalQuality(pencil_sharpener, heavy). hasPhysicalQuality(pencil_sharpener, rigid). hasRole(pencil_sharpener, toolRole). affordsTask(pencil_sharpener, maintenanceTask).
}).
#pos(e1725@10, {}, {hasAffordance(pencil_sharpener, melt)}, {
  obj(pencil_sharpener). hasPhysicalQuality(pencil_sharpener, heavy). hasPhysicalQuality(pencil_sharpener, rigid). hasRole(pencil_sharpener, toolRole). affordsTask(pencil_sharpener, maintenanceTask).
}).
#pos(e1726@10, {}, {hasAffordance(phillips_head_screwdriver, peel)}, {
  obj(phillips_head_screwdriver). hasPhysicalQuality(phillips_head_screwdriver, heavy). hasPhysicalQuality(phillips_head_screwdriver, rigid). hasRole(phillips_head_screwdriver, toolRole). affordsTask(phillips_head_screwdriver, maintenanceTask).
}).
#pos(e1727@10, {}, {hasAffordance(phillips_head_screwdriver, plug)}, {
  obj(phillips_head_screwdriver). hasPhysicalQuality(phillips_head_screwdriver, heavy). hasPhysicalQuality(phillips_head_screwdriver, rigid). hasRole(phillips_head_screwdriver, toolRole). affordsTask(phillips_head_screwdriver, maintenanceTask).
}).
#pos(e1728@10, {}, {hasAffordance(phillips_screwdriver, slit)}, {
  obj(phillips_screwdriver). hasPhysicalQuality(phillips_screwdriver, lightweight). hasPhysicalQuality(phillips_screwdriver, rigid). hasRole(phillips_screwdriver, toolRole). affordsTask(phillips_screwdriver, maintenanceTask).
}).
#pos(e1729@10, {}, {hasAffordance(phillips_screwdriver, smoothen)}, {
  obj(phillips_screwdriver). hasPhysicalQuality(phillips_screwdriver, lightweight). hasPhysicalQuality(phillips_screwdriver, rigid). hasRole(phillips_screwdriver, toolRole). affordsTask(phillips_screwdriver, maintenanceTask).
}).
#pos(e1730@10, {}, {hasAffordance(phone, dry)}, {
  obj(phone). hasPhysicalQuality(phone, electronic). hasPhysicalQuality(phone, lightweight). hasRole(phone, toolRole). affordsTask(phone, workStudyTask).
}).
#pos(e1731@10, {}, {hasAffordance(phone, support)}, {
  obj(phone). hasPhysicalQuality(phone, electronic). hasPhysicalQuality(phone, lightweight). hasRole(phone, toolRole). affordsTask(phone, workStudyTask).
}).
#pos(e1732@10, {}, {hasAffordance(piano, dry)}, {
  obj(piano). hasPhysicalQuality(piano, electronic). hasPhysicalQuality(piano, rigid). hasRole(piano, musicalInstrumentRole). affordsTask(piano, leisureTask).
}).
#pos(e1733@10, {}, {hasAffordance(piano, saw)}, {
  obj(piano). hasPhysicalQuality(piano, electronic). hasPhysicalQuality(piano, rigid). hasRole(piano, musicalInstrumentRole). affordsTask(piano, leisureTask).
}).
#pos(e1734@10, {}, {hasAffordance(picnic_basket, flex)}, {
  obj(picnic_basket). hasPhysicalQuality(picnic_basket, hasContainer). hasRole(picnic_basket, furnitureRole). hasRole(picnic_basket, storageContainerRole). affordsTask(picnic_basket, eatingDrinkingTask). affordsTask(picnic_basket, foodPreparationTask).
}).
#pos(e1735@10, {}, {hasAffordance(picnic_basket, pour)}, {
  obj(picnic_basket). hasPhysicalQuality(picnic_basket, hasContainer). hasRole(picnic_basket, furnitureRole). hasRole(picnic_basket, storageContainerRole). affordsTask(picnic_basket, eatingDrinkingTask). affordsTask(picnic_basket, foodPreparationTask).
}).
#pos(e1736@10, {}, {hasAffordance(picture_frame, bend)}, {
  obj(picture_frame). hasPhysicalQuality(picture_frame, lightweight). hasPhysicalQuality(picture_frame, rigid). hasRole(picture_frame, decorationRole).
}).
#pos(e1737@10, {}, {hasAffordance(picture_frame, saw)}, {
  obj(picture_frame). hasPhysicalQuality(picture_frame, lightweight). hasPhysicalQuality(picture_frame, rigid). hasRole(picture_frame, decorationRole).
}).
#pos(e1738@10, {}, {hasAffordance(pillow_case, mark)}, {
  obj(pillow_case). hasPhysicalQuality(pillow_case, soft_Deformable). hasPhysicalQuality(pillow_case, washable). hasRole(pillow_case, beddingRole). affordsTask(pillow_case, sleepingTask).
}).
#pos(e1739@10, {}, {hasAffordance(pillow_case, pierce)}, {
  obj(pillow_case). hasPhysicalQuality(pillow_case, soft_Deformable). hasPhysicalQuality(pillow_case, washable). hasRole(pillow_case, beddingRole). affordsTask(pillow_case, sleepingTask).
}).
#pos(e1740@10, {}, {hasAffordance(pipe, decorate)}, {
  obj(pipe). hasPhysicalQuality(pipe, heavy). hasRole(pipe, toolRole). affordsTask(pipe, maintenanceTask).
}).
#pos(e1741@10, {}, {hasAffordance(pipe, pierce)}, {
  obj(pipe). hasPhysicalQuality(pipe, heavy). hasRole(pipe, toolRole). affordsTask(pipe, maintenanceTask).
}).
#pos(e1742@10, {}, {hasAffordance(plastic, crack)}, {
  obj(plastic). hasPhysicalQuality(plastic, granular). hasPhysicalQuality(plastic, rigid).
}).
#pos(e1743@10, {}, {hasAffordance(plastic, roll)}, {
  obj(plastic). hasPhysicalQuality(plastic, granular). hasPhysicalQuality(plastic, rigid).
}).
#pos(e1744@10, {}, {hasAffordance(plate, solder)}, {
  obj(plate). hasPhysicalQuality(plate, hasContainer). hasPhysicalQuality(plate, rigid). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e1745@10, {}, {hasAffordance(plate, wipe)}, {
  obj(plate). hasPhysicalQuality(plate, hasContainer). hasPhysicalQuality(plate, rigid). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e1746@10, {}, {hasAffordance(plumbing, bend)}, {
  obj(plumbing). hasPhysicalQuality(plumbing, heavy). hasPhysicalQuality(plumbing, rigid). hasRole(plumbing, toolRole). affordsTask(plumbing, maintenanceTask).
}).
#pos(e1747@10, {}, {hasAffordance(plumbing, pierce)}, {
  obj(plumbing). hasPhysicalQuality(plumbing, heavy). hasPhysicalQuality(plumbing, rigid). hasRole(plumbing, toolRole). affordsTask(plumbing, maintenanceTask).
}).
#pos(e1748@10, {}, {hasAffordance(pocket, spread)}, {
  obj(pocket). hasPhysicalQuality(pocket, lightweight). hasPhysicalQuality(pocket, soft_Deformable). hasRole(pocket, storageContainerRole). affordsTask(pocket, storageTask).
}).
#pos(e1749@10, {}, {hasAffordance(pocket, strip)}, {
  obj(pocket). hasPhysicalQuality(pocket, lightweight). hasPhysicalQuality(pocket, soft_Deformable). hasRole(pocket, storageContainerRole). affordsTask(pocket, storageTask).
}).
#pos(e1750@10, {}, {hasAffordance(poker_chips, bend)}, {
  obj(poker_chips). hasPhysicalQuality(poker_chips, fragile). hasPhysicalQuality(poker_chips, lightweight). hasPhysicalQuality(poker_chips, rigid). hasRole(poker_chips, entertainmentRole). affordsTask(poker_chips, leisureTask).
}).
#pos(e1751@10, {}, {hasAffordance(poker_chips, clean)}, {
  obj(poker_chips). hasPhysicalQuality(poker_chips, fragile). hasPhysicalQuality(poker_chips, lightweight). hasPhysicalQuality(poker_chips, rigid). hasRole(poker_chips, entertainmentRole). affordsTask(poker_chips, leisureTask).
}).
#pos(e1752@10, {}, {hasAffordance(polish, poke)}, {
  obj(polish). hasPhysicalQuality(polish, liquid). hasRole(polish, cleaningToolRole). affordsTask(polish, cleaningTask).
}).
#pos(e1753@10, {}, {hasAffordance(polish, wrap)}, {
  obj(polish). hasPhysicalQuality(polish, liquid). hasRole(polish, cleaningToolRole). affordsTask(polish, cleaningTask).
}).
#pos(e1754@10, {}, {hasAffordance(portable_shower_head, crumble)}, {
  obj(portable_shower_head). hasPhysicalQuality(portable_shower_head, lightweight). hasPhysicalQuality(portable_shower_head, liquid). hasRole(portable_shower_head, cleaningToolRole). affordsTask(portable_shower_head, hygieneTask).
}).
#pos(e1755@10, {}, {hasAffordance(portable_shower_head, repair)}, {
  obj(portable_shower_head). hasPhysicalQuality(portable_shower_head, lightweight). hasPhysicalQuality(portable_shower_head, liquid). hasRole(portable_shower_head, cleaningToolRole). affordsTask(portable_shower_head, hygieneTask).
}).
#pos(e1756@10, {}, {hasAffordance(post_notes, carry)}, {
  obj(post_notes). hasRole(post_notes, documentRole).
}).
#pos(e1757@10, {}, {hasAffordance(post_notes, dice)}, {
  obj(post_notes). hasRole(post_notes, documentRole).
}).
#pos(e1758@10, {}, {hasAffordance(pot, file)}, {
  obj(pot). hasPhysicalQuality(pot, heavy). hasPhysicalQuality(pot, rigid). hasRole(pot, cookwareRole). affordsTask(pot, foodPreparationTask).
}).
#pos(e1759@10, {}, {hasAffordance(pot, pick)}, {
  obj(pot). hasPhysicalQuality(pot, heavy). hasPhysicalQuality(pot, rigid). hasRole(pot, cookwareRole). affordsTask(pot, foodPreparationTask).
}).
#pos(e1760@10, {}, {hasAffordance(pouch, engrave)}, {
  obj(pouch). hasPhysicalQuality(pouch, lightweight). hasPhysicalQuality(pouch, soft_Deformable). hasRole(pouch, storageContainerRole). affordsTask(pouch, storageTask).
}).
#pos(e1761@10, {}, {hasAffordance(pouch, lift)}, {
  obj(pouch). hasPhysicalQuality(pouch, lightweight). hasPhysicalQuality(pouch, soft_Deformable). hasRole(pouch, storageContainerRole). affordsTask(pouch, storageTask).
}).
#pos(e1762@10, {}, {hasAffordance(power_screwdriver, hold)}, {
  obj(power_screwdriver). hasPhysicalQuality(power_screwdriver, electronic). hasPhysicalQuality(power_screwdriver, heavy). hasPhysicalQuality(power_screwdriver, rigid). hasRole(power_screwdriver, toolRole). affordsTask(power_screwdriver, maintenanceTask).
}).
#pos(e1763@10, {}, {hasAffordance(power_screwdriver, press)}, {
  obj(power_screwdriver). hasPhysicalQuality(power_screwdriver, electronic). hasPhysicalQuality(power_screwdriver, heavy). hasPhysicalQuality(power_screwdriver, rigid). hasRole(power_screwdriver, toolRole). affordsTask(power_screwdriver, maintenanceTask).
}).
#pos(e1764@10, {}, {hasAffordance(printer, increase)}, {
  obj(printer). hasPhysicalQuality(printer, electronic). hasPhysicalQuality(printer, heavy). hasRole(printer, applianceRole). affordsTask(printer, workStudyTask).
}).
#pos(e1765@10, {}, {hasAffordance(printer, mix)}, {
  obj(printer). hasPhysicalQuality(printer, electronic). hasPhysicalQuality(printer, heavy). hasRole(printer, applianceRole). affordsTask(printer, workStudyTask).
}).
#pos(e1766@10, {}, {hasAffordance(purse, grasp)}, {
  obj(purse). hasPhysicalQuality(purse, lightweight). hasPhysicalQuality(purse, soft_Deformable). hasRole(purse, storageContainerRole). affordsTask(purse, storageTask).
}).
#pos(e1767@10, {}, {hasAffordance(purse, poke)}, {
  obj(purse). hasPhysicalQuality(purse, lightweight). hasPhysicalQuality(purse, soft_Deformable). hasRole(purse, storageContainerRole). affordsTask(purse, storageTask).
}).
#pos(e1768@10, {}, {hasAffordance(puzzle, clean)}, {
  obj(puzzle). hasRole(puzzle, entertainmentRole). affordsTask(puzzle, leisureTask).
}).
#pos(e1769@10, {}, {hasAffordance(puzzle, file)}, {
  obj(puzzle). hasRole(puzzle, entertainmentRole). affordsTask(puzzle, leisureTask).
}).
#pos(e1770@10, {}, {hasAffordance(quill_brush, beautify)}, {
  obj(quill_brush). hasPhysicalQuality(quill_brush, lightweight). hasPhysicalQuality(quill_brush, soft_Deformable). hasRole(quill_brush, toolRole).
}).
#pos(e1771@10, {}, {hasAffordance(quill_brush, repair)}, {
  obj(quill_brush). hasPhysicalQuality(quill_brush, lightweight). hasPhysicalQuality(quill_brush, soft_Deformable). hasRole(quill_brush, toolRole).
}).
#pos(e1772@10, {}, {hasAffordance(radiator, carry)}, {
  obj(radiator). hasPhysicalQuality(radiator, heated). hasRole(radiator, applianceRole). affordsTask(radiator, maintenanceTask).
}).
#pos(e1773@10, {}, {hasAffordance(radiator, spread)}, {
  obj(radiator). hasPhysicalQuality(radiator, heated). hasRole(radiator, applianceRole). affordsTask(radiator, maintenanceTask).
}).
#pos(e1774@10, {}, {hasAffordance(radio, eat)}, {
  obj(radio). hasPhysicalQuality(radio, electronic). hasPhysicalQuality(radio, lightweight). hasRole(radio, applianceRole). affordsTask(radio, leisureTask).
}).
#pos(e1775@10, {}, {hasAffordance(radio, melt)}, {
  obj(radio). hasPhysicalQuality(radio, electronic). hasPhysicalQuality(radio, lightweight). hasRole(radio, applianceRole). affordsTask(radio, leisureTask).
}).
#pos(e1776@10, {}, {hasAffordance(rafter, change)}, {
  obj(rafter). hasPhysicalQuality(rafter, heavy). hasPhysicalQuality(rafter, rigid). hasRole(rafter, furnitureRole).
}).
#pos(e1777@10, {}, {hasAffordance(rafter, wrench)}, {
  obj(rafter). hasPhysicalQuality(rafter, heavy). hasPhysicalQuality(rafter, rigid). hasRole(rafter, furnitureRole).
}).
#pos(e1778@10, {}, {hasAffordance(ratchet_screwdriver, break)}, {
  obj(ratchet_screwdriver). hasPhysicalQuality(ratchet_screwdriver, electronic). hasPhysicalQuality(ratchet_screwdriver, heavy). hasPhysicalQuality(ratchet_screwdriver, isRotary). hasPhysicalQuality(ratchet_screwdriver, rigid). hasRole(ratchet_screwdriver, toolRole). affordsTask(ratchet_screwdriver, maintenanceTask).
}).
#pos(e1779@10, {}, {hasAffordance(ratchet_screwdriver, wrench)}, {
  obj(ratchet_screwdriver). hasPhysicalQuality(ratchet_screwdriver, electronic). hasPhysicalQuality(ratchet_screwdriver, heavy). hasPhysicalQuality(ratchet_screwdriver, isRotary). hasPhysicalQuality(ratchet_screwdriver, rigid). hasRole(ratchet_screwdriver, toolRole). affordsTask(ratchet_screwdriver, maintenanceTask).
}).
#pos(e1780@10, {}, {hasAffordance(refrigerator, bend)}, {
  obj(refrigerator). hasPhysicalQuality(refrigerator, electronic). hasPhysicalQuality(refrigerator, heavy). hasPhysicalQuality(refrigerator, requiresCooling). hasRole(refrigerator, applianceRole). affordsTask(refrigerator, storageTask).
}).
#pos(e1781@10, {}, {hasAffordance(refrigerator, exercise)}, {
  obj(refrigerator). hasPhysicalQuality(refrigerator, electronic). hasPhysicalQuality(refrigerator, heavy). hasPhysicalQuality(refrigerator, requiresCooling). hasRole(refrigerator, applianceRole). affordsTask(refrigerator, storageTask).
}).
#pos(e1782@10, {}, {hasAffordance(remote_control, beautify)}, {
  obj(remote_control). hasPhysicalQuality(remote_control, electronic). hasPhysicalQuality(remote_control, lightweight). hasRole(remote_control, toolRole). affordsTask(remote_control, leisureTask).
}).
#pos(e1783@10, {}, {hasAffordance(remote_control, dispose)}, {
  obj(remote_control). hasPhysicalQuality(remote_control, electronic). hasPhysicalQuality(remote_control, lightweight). hasRole(remote_control, toolRole). affordsTask(remote_control, leisureTask).
}).
#pos(e1784@10, {}, {hasAffordance(ribbon, crunch)}, {
  obj(ribbon). hasPhysicalQuality(ribbon, lightweight). hasPhysicalQuality(ribbon, soft_Deformable). hasRole(ribbon, clothingRole). affordsTask(ribbon, dressingTask).
}).
#pos(e1785@10, {}, {hasAffordance(ribbon, wipe)}, {
  obj(ribbon). hasPhysicalQuality(ribbon, lightweight). hasPhysicalQuality(ribbon, soft_Deformable). hasRole(ribbon, clothingRole). affordsTask(ribbon, dressingTask).
}).
#pos(e1786@10, {}, {hasAffordance(ring, cover)}, {
  obj(ring). hasPhysicalQuality(ring, lightweight). hasPhysicalQuality(ring, rigid). hasRole(ring, utensilRole).
}).
#pos(e1787@10, {}, {hasAffordance(ring, entertain)}, {
  obj(ring). hasPhysicalQuality(ring, lightweight). hasPhysicalQuality(ring, rigid). hasRole(ring, utensilRole).
}).
#pos(e1788@10, {}, {hasAffordance(roof, control)}, {
  obj(roof). hasPhysicalQuality(roof, heavy). hasPhysicalQuality(roof, rigid). hasRole(roof, furnitureRole).
}).
#pos(e1789@10, {}, {hasAffordance(roof, roll)}, {
  obj(roof). hasPhysicalQuality(roof, heavy). hasPhysicalQuality(roof, rigid). hasRole(roof, furnitureRole).
}).
#pos(e1790@10, {}, {hasAffordance(round_brush, dry)}, {
  obj(round_brush). hasPhysicalQuality(round_brush, lightweight). hasPhysicalQuality(round_brush, soft_Deformable). hasRole(round_brush, toolRole). affordsTask(round_brush, cleaningTask).
}).
#pos(e1791@10, {}, {hasAffordance(round_brush, staple)}, {
  obj(round_brush). hasPhysicalQuality(round_brush, lightweight). hasPhysicalQuality(round_brush, soft_Deformable). hasRole(round_brush, toolRole). affordsTask(round_brush, cleaningTask).
}).
#pos(e1792@10, {}, {hasAffordance(rug, file)}, {
  obj(rug). hasPhysicalQuality(rug, lightweight). hasPhysicalQuality(rug, soft_Deformable). hasRole(rug, furnitureRole). affordsTask(rug, leisureTask).
}).
#pos(e1793@10, {}, {hasAffordance(rug, roll)}, {
  obj(rug). hasPhysicalQuality(rug, lightweight). hasPhysicalQuality(rug, soft_Deformable). hasRole(rug, furnitureRole). affordsTask(rug, leisureTask).
}).
#pos(e1794@10, {}, {hasAffordance(rule, decorate)}, {
  obj(rule). hasPhysicalQuality(rule, rigid). hasRole(rule, toolRole). affordsTask(rule, maintenanceTask).
}).
#pos(e1795@10, {}, {hasAffordance(rule, mix)}, {
  obj(rule). hasPhysicalQuality(rule, rigid). hasRole(rule, toolRole). affordsTask(rule, maintenanceTask).
}).
#pos(e1796@10, {}, {hasAffordance(ruler, control)}, {
  obj(ruler). hasPhysicalQuality(ruler, rigid). hasRole(ruler, toolRole). affordsTask(ruler, maintenanceTask).
}).
#pos(e1797@10, {}, {hasAffordance(ruler, support)}, {
  obj(ruler). hasPhysicalQuality(ruler, rigid). hasRole(ruler, toolRole). affordsTask(ruler, maintenanceTask).
}).
#pos(e1798@10, {}, {hasAffordance(salad_bowl, cut)}, {
  obj(salad_bowl). hasPhysicalQuality(salad_bowl, hasContainer). hasRole(salad_bowl, storageContainerRole). hasRole(salad_bowl, utensilRole). affordsTask(salad_bowl, foodPreparationTask).
}).
#pos(e1799@10, {}, {hasAffordance(salad_bowl, heat)}, {
  obj(salad_bowl). hasPhysicalQuality(salad_bowl, hasContainer). hasRole(salad_bowl, storageContainerRole). hasRole(salad_bowl, utensilRole). affordsTask(salad_bowl, foodPreparationTask).
}).
#pos(e1800@10, {}, {hasAffordance(salad_spinner, contain)}, {
  obj(salad_spinner). hasPhysicalQuality(salad_spinner, lightweight). hasPhysicalQuality(salad_spinner, rigid). hasRole(salad_spinner, utensilRole). affordsTask(salad_spinner, foodPreparationTask).
}).
#pos(e1801@10, {}, {hasAffordance(salad_spinner, store)}, {
  obj(salad_spinner). hasPhysicalQuality(salad_spinner, lightweight). hasPhysicalQuality(salad_spinner, rigid). hasRole(salad_spinner, utensilRole). affordsTask(salad_spinner, foodPreparationTask).
}).
#pos(e1802@10, {}, {hasAffordance(salt, bend)}, {
  obj(salt). hasPhysicalQuality(salt, granular). hasRole(salt, consumableRole). affordsTask(salt, foodPreparationTask).
}).
#pos(e1803@10, {}, {hasAffordance(salt, handle)}, {
  obj(salt). hasPhysicalQuality(salt, granular). hasRole(salt, consumableRole). affordsTask(salt, foodPreparationTask).
}).
#pos(e1804@10, {}, {hasAffordance(saltshaker, operate)}, {
  obj(saltshaker). hasPhysicalQuality(saltshaker, granular). hasPhysicalQuality(saltshaker, lightweight). hasRole(saltshaker, utensilRole). affordsTask(saltshaker, foodPreparationTask).
}).
#pos(e1805@10, {}, {hasAffordance(saltshaker, stick)}, {
  obj(saltshaker). hasPhysicalQuality(saltshaker, granular). hasPhysicalQuality(saltshaker, lightweight). hasRole(saltshaker, utensilRole). affordsTask(saltshaker, foodPreparationTask).
}).
#pos(e1806@10, {}, {hasAffordance(saucepan, display)}, {
  obj(saucepan). hasPhysicalQuality(saucepan, heated). hasPhysicalQuality(saucepan, heavy). hasRole(saucepan, cookwareRole). affordsTask(saucepan, foodPreparationTask).
}).
#pos(e1807@10, {}, {hasAffordance(saucepan, pierce)}, {
  obj(saucepan). hasPhysicalQuality(saucepan, heated). hasPhysicalQuality(saucepan, heavy). hasRole(saucepan, cookwareRole). affordsTask(saucepan, foodPreparationTask).
}).
#pos(e1808@10, {}, {hasAffordance(saucer, chop)}, {
  obj(saucer). hasPhysicalQuality(saucer, lightweight). hasPhysicalQuality(saucer, rigid). hasRole(saucer, utensilRole). affordsTask(saucer, eatingDrinkingTask).
}).
#pos(e1809@10, {}, {hasAffordance(saucer, tamp)}, {
  obj(saucer). hasPhysicalQuality(saucer, lightweight). hasPhysicalQuality(saucer, rigid). hasRole(saucer, utensilRole). affordsTask(saucer, eatingDrinkingTask).
}).
#pos(e1810@10, {}, {hasAffordance(scale, entertain)}, {
  obj(scale). hasPhysicalQuality(scale, electronic). hasPhysicalQuality(scale, heavy). hasRole(scale, toolRole). affordsTask(scale, maintenanceTask).
}).
#pos(e1811@10, {}, {hasAffordance(scale, wipe)}, {
  obj(scale). hasPhysicalQuality(scale, electronic). hasPhysicalQuality(scale, heavy). hasRole(scale, toolRole). affordsTask(scale, maintenanceTask).
}).
#pos(e1812@10, {}, {hasAffordance(scissors, contain)}, {
  obj(scissors). hasPhysicalQuality(scissors, rigid). hasPhysicalQuality(scissors, sharp). hasRole(scissors, toolRole). affordsTask(scissors, maintenanceTask).
}).
#pos(e1813@10, {}, {hasAffordance(scissors, handle)}, {
  obj(scissors). hasPhysicalQuality(scissors, rigid). hasPhysicalQuality(scissors, sharp). hasRole(scissors, toolRole). affordsTask(scissors, maintenanceTask).
}).
#pos(e1814@10, {}, {hasAffordance(scotch_tape, cool)}, {
  obj(scotch_tape). hasPhysicalQuality(scotch_tape, lightweight). hasPhysicalQuality(scotch_tape, soft_Deformable). hasRole(scotch_tape, toolRole). affordsTask(scotch_tape, leisureTask).
}).
#pos(e1815@10, {}, {hasAffordance(scotch_tape, strip)}, {
  obj(scotch_tape). hasPhysicalQuality(scotch_tape, lightweight). hasPhysicalQuality(scotch_tape, soft_Deformable). hasRole(scotch_tape, toolRole). affordsTask(scotch_tape, leisureTask).
}).
#pos(e1816@10, {}, {hasAffordance(screwdriver, break)}, {
  obj(screwdriver). hasPhysicalQuality(screwdriver, lightweight). hasPhysicalQuality(screwdriver, rigid). hasRole(screwdriver, toolRole). affordsTask(screwdriver, maintenanceTask).
}).
#pos(e1817@10, {}, {hasAffordance(screwdriver, store)}, {
  obj(screwdriver). hasPhysicalQuality(screwdriver, lightweight). hasPhysicalQuality(screwdriver, rigid). hasRole(screwdriver, toolRole). affordsTask(screwdriver, maintenanceTask).
}).
#pos(e1818@10, {}, {hasAffordance(screws, lift)}, {
  obj(screws). hasPhysicalQuality(screws, granular). hasRole(screws, toolRole). affordsTask(screws, maintenanceTask).
}).
#pos(e1819@10, {}, {hasAffordance(screws, slit)}, {
  obj(screws). hasPhysicalQuality(screws, granular). hasRole(screws, toolRole). affordsTask(screws, maintenanceTask).
}).
#pos(e1820@10, {}, {hasAffordance(seat, operate)}, {
  obj(seat). hasPhysicalQuality(seat, heavy). hasPhysicalQuality(seat, rigid). hasRole(seat, furnitureRole). affordsTask(seat, leisureTask).
}).
#pos(e1821@10, {}, {hasAffordance(seat, pour)}, {
  obj(seat). hasPhysicalQuality(seat, heavy). hasPhysicalQuality(seat, rigid). hasRole(seat, furnitureRole). affordsTask(seat, leisureTask).
}).
#pos(e1822@10, {}, {hasAffordance(self_adhesive_label, change)}, {
  obj(self_adhesive_label). hasPhysicalQuality(self_adhesive_label, lightweight). hasPhysicalQuality(self_adhesive_label, soft_Deformable). hasRole(self_adhesive_label, toolRole). affordsTask(self_adhesive_label, maintenanceTask).
}).
#pos(e1823@10, {}, {hasAffordance(self_adhesive_label, scoop)}, {
  obj(self_adhesive_label). hasPhysicalQuality(self_adhesive_label, lightweight). hasPhysicalQuality(self_adhesive_label, soft_Deformable). hasRole(self_adhesive_label, toolRole). affordsTask(self_adhesive_label, maintenanceTask).
}).
#pos(e1824@10, {}, {hasAffordance(serving_trolley, install)}, {
  obj(serving_trolley). hasPhysicalQuality(serving_trolley, heavy). hasPhysicalQuality(serving_trolley, rigid). hasRole(serving_trolley, furnitureRole). affordsTask(serving_trolley, foodPreparationTask).
}).
#pos(e1825@10, {}, {hasAffordance(serving_trolley, wrap)}, {
  obj(serving_trolley). hasPhysicalQuality(serving_trolley, heavy). hasPhysicalQuality(serving_trolley, rigid). hasRole(serving_trolley, furnitureRole). affordsTask(serving_trolley, foodPreparationTask).
}).
#pos(e1826@10, {}, {hasAffordance(shades, be_heated)}, {
  obj(shades). hasPhysicalQuality(shades, lightweight). hasPhysicalQuality(shades, rigid). hasRole(shades, decorationRole). affordsTask(shades, leisureTask).
}).
#pos(e1827@10, {}, {hasAffordance(shades, polish)}, {
  obj(shades). hasPhysicalQuality(shades, lightweight). hasPhysicalQuality(shades, rigid). hasRole(shades, decorationRole). affordsTask(shades, leisureTask).
}).
#pos(e1828@10, {}, {hasAffordance(shampoo_and_conditioner, control)}, {
  obj(shampoo_and_conditioner). hasPhysicalQuality(shampoo_and_conditioner, liquid). hasRole(shampoo_and_conditioner, cleaningToolRole). affordsTask(shampoo_and_conditioner, hygieneTask).
}).
#pos(e1829@10, {}, {hasAffordance(shampoo_and_conditioner, saw)}, {
  obj(shampoo_and_conditioner). hasPhysicalQuality(shampoo_and_conditioner, liquid). hasRole(shampoo_and_conditioner, cleaningToolRole). affordsTask(shampoo_and_conditioner, hygieneTask).
}).
#pos(e1830@10, {}, {hasAffordance(sheet, mix)}, {
  obj(sheet). hasPhysicalQuality(sheet, soft_Deformable). hasPhysicalQuality(sheet, washable). hasRole(sheet, beddingRole). affordsTask(sheet, sleepingTask).
}).
#pos(e1831@10, {}, {hasAffordance(sheet, pour)}, {
  obj(sheet). hasPhysicalQuality(sheet, soft_Deformable). hasPhysicalQuality(sheet, washable). hasRole(sheet, beddingRole). affordsTask(sheet, sleepingTask).
}).
#pos(e1832@10, {}, {hasAffordance(shelf, repair)}, {
  obj(shelf). hasPhysicalQuality(shelf, heavy). hasPhysicalQuality(shelf, rigid). hasRole(shelf, storageContainerRole). affordsTask(shelf, storageTask).
}).
#pos(e1833@10, {}, {hasAffordance(shelf, wrench)}, {
  obj(shelf). hasPhysicalQuality(shelf, heavy). hasPhysicalQuality(shelf, rigid). hasRole(shelf, storageContainerRole). affordsTask(shelf, storageTask).
}).
#pos(e1834@10, {}, {hasAffordance(shirt, dice)}, {
  obj(shirt). hasPhysicalQuality(shirt, lightweight). hasPhysicalQuality(shirt, soft_Deformable). hasRole(shirt, clothingRole). affordsTask(shirt, dressingTask).
}).
#pos(e1835@10, {}, {hasAffordance(shirt, roll)}, {
  obj(shirt). hasPhysicalQuality(shirt, lightweight). hasPhysicalQuality(shirt, soft_Deformable). hasRole(shirt, clothingRole). affordsTask(shirt, dressingTask).
}).
#pos(e1836@10, {}, {hasAffordance(shopping_bag, dice)}, {
  obj(shopping_bag). hasPhysicalQuality(shopping_bag, hasContainer). hasPhysicalQuality(shopping_bag, lightweight). hasRole(shopping_bag, storageContainerRole). affordsTask(shopping_bag, storageTask).
}).
#pos(e1837@10, {}, {hasAffordance(shopping_bag, skin)}, {
  obj(shopping_bag). hasPhysicalQuality(shopping_bag, hasContainer). hasPhysicalQuality(shopping_bag, lightweight). hasRole(shopping_bag, storageContainerRole). affordsTask(shopping_bag, storageTask).
}).
#pos(e1838@10, {}, {hasAffordance(shopping_basket, flex)}, {
  obj(shopping_basket). hasPhysicalQuality(shopping_basket, lightweight). hasPhysicalQuality(shopping_basket, rigid). hasRole(shopping_basket, storageContainerRole).
}).
#pos(e1839@10, {}, {hasAffordance(shopping_basket, write)}, {
  obj(shopping_basket). hasPhysicalQuality(shopping_basket, lightweight). hasPhysicalQuality(shopping_basket, rigid). hasRole(shopping_basket, storageContainerRole).
}).
#pos(e1840@10, {}, {hasAffordance(shower_door, smoothen)}, {
  obj(shower_door). hasPhysicalQuality(shower_door, fragile). hasPhysicalQuality(shower_door, rigid). hasRole(shower_door, furnitureRole). affordsTask(shower_door, hygieneTask).
}).
#pos(e1841@10, {}, {hasAffordance(shower_door, unclog)}, {
  obj(shower_door). hasPhysicalQuality(shower_door, fragile). hasPhysicalQuality(shower_door, rigid). hasRole(shower_door, furnitureRole). affordsTask(shower_door, hygieneTask).
}).
#pos(e1842@10, {}, {hasAffordance(shower_switch, repair)}, {
  obj(shower_switch). hasPhysicalQuality(shower_switch, electronic). hasPhysicalQuality(shower_switch, lightweight). hasRole(shower_switch, toolRole). affordsTask(shower_switch, maintenanceTask).
}).
#pos(e1843@10, {}, {hasAffordance(shower_switch, rub)}, {
  obj(shower_switch). hasPhysicalQuality(shower_switch, electronic). hasPhysicalQuality(shower_switch, lightweight). hasRole(shower_switch, toolRole). affordsTask(shower_switch, maintenanceTask).
}).
#pos(e1844@10, {}, {hasAffordance(sideboard, polish)}, {
  obj(sideboard). hasPhysicalQuality(sideboard, heavy). hasPhysicalQuality(sideboard, rigid). hasRole(sideboard, furnitureRole). affordsTask(sideboard, storageTask).
}).
#pos(e1845@10, {}, {hasAffordance(sideboard, strip)}, {
  obj(sideboard). hasPhysicalQuality(sideboard, heavy). hasPhysicalQuality(sideboard, rigid). hasRole(sideboard, furnitureRole). affordsTask(sideboard, storageTask).
}).
#pos(e1846@10, {}, {hasAffordance(signs, flex)}, {
  obj(signs). hasRole(signs, decorationRole).
}).
#pos(e1847@10, {}, {hasAffordance(signs, illuminate)}, {
  obj(signs). hasRole(signs, decorationRole).
}).
#pos(e1848@10, {}, {hasAffordance(sink, contain)}, {
  obj(sink). hasPhysicalQuality(sink, hasContainer). hasPhysicalQuality(sink, heavy). hasRole(sink, cleaningToolRole). affordsTask(sink, cleaningTask). affordsTask(sink, hygieneTask).
}).
#pos(e1849@10, {}, {hasAffordance(sink, file)}, {
  obj(sink). hasPhysicalQuality(sink, hasContainer). hasPhysicalQuality(sink, heavy). hasRole(sink, cleaningToolRole). affordsTask(sink, cleaningTask). affordsTask(sink, hygieneTask).
}).
#pos(e1850@10, {}, {hasAffordance(skylight, flex)}, {
  obj(skylight). hasRole(skylight, lightingRole). affordsTask(skylight, leisureTask).
}).
#pos(e1851@10, {}, {hasAffordance(skylight, press)}, {
  obj(skylight). hasRole(skylight, lightingRole). affordsTask(skylight, leisureTask).
}).
#pos(e1852@10, {}, {hasAffordance(slippers, entertain)}, {
  obj(slippers). hasPhysicalQuality(slippers, lightweight). hasPhysicalQuality(slippers, soft_Deformable). hasRole(slippers, clothingRole). affordsTask(slippers, dressingTask).
}).
#pos(e1853@10, {}, {hasAffordance(slippers, repair)}, {
  obj(slippers). hasPhysicalQuality(slippers, lightweight). hasPhysicalQuality(slippers, soft_Deformable). hasRole(slippers, clothingRole). affordsTask(slippers, dressingTask).
}).
#pos(e1854@10, {}, {hasAffordance(soap, strip)}, {
  obj(soap). hasPhysicalQuality(soap, fragile). hasPhysicalQuality(soap, liquid). hasRole(soap, cleaningToolRole). affordsTask(soap, hygieneTask).
}).
#pos(e1855@10, {}, {hasAffordance(soap, wrap)}, {
  obj(soap). hasPhysicalQuality(soap, fragile). hasPhysicalQuality(soap, liquid). hasRole(soap, cleaningToolRole). affordsTask(soap, hygieneTask).
}).
#pos(e1856@10, {}, {hasAffordance(soap_dish, install)}, {
  obj(soap_dish). hasPhysicalQuality(soap_dish, lightweight). hasPhysicalQuality(soap_dish, rigid). hasRole(soap_dish, storageContainerRole). affordsTask(soap_dish, hygieneTask).
}).
#pos(e1857@10, {}, {hasAffordance(soap_dish, operate)}, {
  obj(soap_dish). hasPhysicalQuality(soap_dish, lightweight). hasPhysicalQuality(soap_dish, rigid). hasRole(soap_dish, storageContainerRole). affordsTask(soap_dish, hygieneTask).
}).
#pos(e1858@10, {}, {hasAffordance(sock, bend)}, {
  obj(sock). hasPhysicalQuality(sock, lightweight). hasPhysicalQuality(sock, soft_Deformable). hasRole(sock, clothingRole). affordsTask(sock, dressingTask).
}).
#pos(e1859@10, {}, {hasAffordance(sock, screw)}, {
  obj(sock). hasPhysicalQuality(sock, lightweight). hasPhysicalQuality(sock, soft_Deformable). hasRole(sock, clothingRole). affordsTask(sock, dressingTask).
}).
#pos(e1860@10, {}, {hasAffordance(sofa, dig)}, {
  obj(sofa). hasPhysicalQuality(sofa, heavy). hasPhysicalQuality(sofa, soft_Deformable). hasRole(sofa, furnitureRole). affordsTask(sofa, leisureTask).
}).
#pos(e1861@10, {}, {hasAffordance(sofa, illuminate)}, {
  obj(sofa). hasPhysicalQuality(sofa, heavy). hasPhysicalQuality(sofa, soft_Deformable). hasRole(sofa, furnitureRole). affordsTask(sofa, leisureTask).
}).
#pos(e1862@10, {}, {hasAffordance(sofabed, dry)}, {
  obj(sofabed). hasPhysicalQuality(sofabed, fragile). hasPhysicalQuality(sofabed, soft_Deformable). hasRole(sofabed, furnitureRole). affordsTask(sofabed, sleepingTask).
}).
#pos(e1863@10, {}, {hasAffordance(sofabed, scoop)}, {
  obj(sofabed). hasPhysicalQuality(sofabed, fragile). hasPhysicalQuality(sofabed, soft_Deformable). hasRole(sofabed, furnitureRole). affordsTask(sofabed, sleepingTask).
}).
#pos(e1864@10, {}, {hasAffordance(speaker, file)}, {
  obj(speaker). hasPhysicalQuality(speaker, electronic). hasRole(speaker, toolRole). affordsTask(speaker, leisureTask).
}).
#pos(e1865@10, {}, {hasAffordance(speaker, lift)}, {
  obj(speaker). hasPhysicalQuality(speaker, electronic). hasRole(speaker, toolRole). affordsTask(speaker, leisureTask).
}).
#pos(e1866@10, {}, {hasAffordance(spoon, grind)}, {
  obj(spoon). hasPhysicalQuality(spoon, lightweight). hasPhysicalQuality(spoon, rigid). hasPhysicalQuality(spoon, sharp). hasRole(spoon, utensilRole). affordsTask(spoon, foodPreparationTask).
}).
#pos(e1867@10, {}, {hasAffordance(spoon, mark)}, {
  obj(spoon). hasPhysicalQuality(spoon, lightweight). hasPhysicalQuality(spoon, rigid). hasPhysicalQuality(spoon, sharp). hasRole(spoon, utensilRole). affordsTask(spoon, foodPreparationTask).
}).
#pos(e1868@10, {}, {hasAffordance(spray_hose, flex)}, {
  obj(spray_hose). hasPhysicalQuality(spray_hose, gas_Aerosol). hasPhysicalQuality(spray_hose, liquid). hasRole(spray_hose, toolRole). affordsTask(spray_hose, maintenanceTask).
}).
#pos(e1869@10, {}, {hasAffordance(spray_hose, strip)}, {
  obj(spray_hose). hasPhysicalQuality(spray_hose, gas_Aerosol). hasPhysicalQuality(spray_hose, liquid). hasRole(spray_hose, toolRole). affordsTask(spray_hose, maintenanceTask).
}).
#pos(e1870@10, {}, {hasAffordance(staircase, be_heated)}, {
  obj(staircase). hasPhysicalQuality(staircase, heavy). hasPhysicalQuality(staircase, rigid). hasRole(staircase, furnitureRole). affordsTask(staircase, maintenanceTask).
}).
#pos(e1871@10, {}, {hasAffordance(staircase, spread)}, {
  obj(staircase). hasPhysicalQuality(staircase, heavy). hasPhysicalQuality(staircase, rigid). hasRole(staircase, furnitureRole). affordsTask(staircase, maintenanceTask).
}).
#pos(e1872@10, {}, {hasAffordance(stamp_pad, dig)}, {
  obj(stamp_pad). hasPhysicalQuality(stamp_pad, lightweight). hasRole(stamp_pad, toolRole). affordsTask(stamp_pad, maintenanceTask).
}).
#pos(e1873@10, {}, {hasAffordance(stamp_pad, shape)}, {
  obj(stamp_pad). hasPhysicalQuality(stamp_pad, lightweight). hasRole(stamp_pad, toolRole). affordsTask(stamp_pad, maintenanceTask).
}).
#pos(e1874@10, {}, {hasAffordance(stapler, clean)}, {
  obj(stapler). hasPhysicalQuality(stapler, heavy). hasPhysicalQuality(stapler, rigid). hasRole(stapler, toolRole). affordsTask(stapler, maintenanceTask).
}).
#pos(e1875@10, {}, {hasAffordance(stapler, engrave)}, {
  obj(stapler). hasPhysicalQuality(stapler, heavy). hasPhysicalQuality(stapler, rigid). hasRole(stapler, toolRole). affordsTask(stapler, maintenanceTask).
}).
#pos(e1876@10, {}, {hasAffordance(staples, plow)}, {
  obj(staples). hasPhysicalQuality(staples, sharp). hasRole(staples, toolRole). affordsTask(staples, maintenanceTask).
}).
#pos(e1877@10, {}, {hasAffordance(staples, scoop)}, {
  obj(staples). hasPhysicalQuality(staples, sharp). hasRole(staples, toolRole). affordsTask(staples, maintenanceTask).
}).
#pos(e1878@10, {}, {hasAffordance(steak, engrave)}, {
  obj(steak). hasPhysicalQuality(steak, fragile). hasPhysicalQuality(steak, perishable). hasRole(steak, consumableRole). affordsTask(steak, eatingDrinkingTask). affordsTask(steak, foodPreparationTask).
}).
#pos(e1879@10, {}, {hasAffordance(steak, spread)}, {
  obj(steak). hasPhysicalQuality(steak, fragile). hasPhysicalQuality(steak, perishable). hasRole(steak, consumableRole). affordsTask(steak, eatingDrinkingTask). affordsTask(steak, foodPreparationTask).
}).
#pos(e1880@10, {}, {hasAffordance(stick_of_butter, saw)}, {
  obj(stick_of_butter). hasPhysicalQuality(stick_of_butter, granular). hasPhysicalQuality(stick_of_butter, perishable). hasRole(stick_of_butter, consumableRole). affordsTask(stick_of_butter, foodPreparationTask).
}).
#pos(e1881@10, {}, {hasAffordance(stick_of_butter, screw)}, {
  obj(stick_of_butter). hasPhysicalQuality(stick_of_butter, granular). hasPhysicalQuality(stick_of_butter, perishable). hasRole(stick_of_butter, consumableRole). affordsTask(stick_of_butter, foodPreparationTask).
}).
#pos(e1882@10, {}, {hasAffordance(storage, beautify)}, {
  obj(storage). hasPhysicalQuality(storage, hasContainer). hasRole(storage, storageContainerRole). affordsTask(storage, storageTask).
}).
#pos(e1883@10, {}, {hasAffordance(storage, press)}, {
  obj(storage). hasPhysicalQuality(storage, hasContainer). hasRole(storage, storageContainerRole). affordsTask(storage, storageTask).
}).
#pos(e1884@10, {}, {hasAffordance(stove, comfort)}, {
  obj(stove). hasPhysicalQuality(stove, heated). hasRole(stove, cookwareRole). affordsTask(stove, foodPreparationTask).
}).
#pos(e1885@10, {}, {hasAffordance(stove, grind)}, {
  obj(stove). hasPhysicalQuality(stove, heated). hasRole(stove, cookwareRole). affordsTask(stove, foodPreparationTask).
}).
#pos(e1886@10, {}, {hasAffordance(studio_pedestal, eat)}, {
  obj(studio_pedestal). hasPhysicalQuality(studio_pedestal, heavy). hasPhysicalQuality(studio_pedestal, rigid). hasRole(studio_pedestal, furnitureRole). affordsTask(studio_pedestal, storageTask).
}).
#pos(e1887@10, {}, {hasAffordance(studio_pedestal, plow)}, {
  obj(studio_pedestal). hasPhysicalQuality(studio_pedestal, heavy). hasPhysicalQuality(studio_pedestal, rigid). hasRole(studio_pedestal, furnitureRole). affordsTask(studio_pedestal, storageTask).
}).
#pos(e1888@10, {}, {hasAffordance(sugar, entertain)}, {
  obj(sugar). hasPhysicalQuality(sugar, granular). hasRole(sugar, consumableRole). affordsTask(sugar, eatingDrinkingTask).
}).
#pos(e1889@10, {}, {hasAffordance(sugar, handle)}, {
  obj(sugar). hasPhysicalQuality(sugar, granular). hasRole(sugar, consumableRole). affordsTask(sugar, eatingDrinkingTask).
}).
#pos(e1890@10, {}, {hasAffordance(suntan_lotion, store)}, {
  obj(suntan_lotion). hasPhysicalQuality(suntan_lotion, liquid). hasPhysicalQuality(suntan_lotion, washable). hasRole(suntan_lotion, consumableRole). affordsTask(suntan_lotion, hygieneTask).
}).
#pos(e1891@10, {}, {hasAffordance(suntan_lotion, write)}, {
  obj(suntan_lotion). hasPhysicalQuality(suntan_lotion, liquid). hasPhysicalQuality(suntan_lotion, washable). hasRole(suntan_lotion, consumableRole). affordsTask(suntan_lotion, hygieneTask).
}).
#pos(e1892@10, {}, {hasAffordance(table_cloth, mix)}, {
  obj(table_cloth). hasPhysicalQuality(table_cloth, lightweight). hasPhysicalQuality(table_cloth, soft_Deformable). hasRole(table_cloth, beddingRole).
}).
#pos(e1893@10, {}, {hasAffordance(table_cloth, roll)}, {
  obj(table_cloth). hasPhysicalQuality(table_cloth, lightweight). hasPhysicalQuality(table_cloth, soft_Deformable). hasRole(table_cloth, beddingRole).
}).
#pos(e1894@10, {}, {hasAffordance(tablecloth, smoothen)}, {
  obj(tablecloth). hasPhysicalQuality(tablecloth, soft_Deformable). hasPhysicalQuality(tablecloth, washable). hasRole(tablecloth, decorationRole). affordsTask(tablecloth, leisureTask).
}).
#pos(e1895@10, {}, {hasAffordance(tablecloth, staple)}, {
  obj(tablecloth). hasPhysicalQuality(tablecloth, soft_Deformable). hasPhysicalQuality(tablecloth, washable). hasRole(tablecloth, decorationRole). affordsTask(tablecloth, leisureTask).
}).
#pos(e1896@10, {}, {hasAffordance(tables, lift)}, {
  obj(tables). hasPhysicalQuality(tables, heavy). hasPhysicalQuality(tables, rigid). hasRole(tables, furnitureRole). affordsTask(tables, storageTask).
}).
#pos(e1897@10, {}, {hasAffordance(tables, poke)}, {
  obj(tables). hasPhysicalQuality(tables, heavy). hasPhysicalQuality(tables, rigid). hasRole(tables, furnitureRole). affordsTask(tables, storageTask).
}).
#pos(e1898@10, {}, {hasAffordance(tablespoon, lift)}, {
  obj(tablespoon). hasPhysicalQuality(tablespoon, hasContainer). hasPhysicalQuality(tablespoon, lightweight). hasRole(tablespoon, utensilRole). affordsTask(tablespoon, foodPreparationTask).
}).
#pos(e1899@10, {}, {hasAffordance(tablespoon, stick)}, {
  obj(tablespoon). hasPhysicalQuality(tablespoon, hasContainer). hasPhysicalQuality(tablespoon, lightweight). hasRole(tablespoon, utensilRole). affordsTask(tablespoon, foodPreparationTask).
}).
#pos(e1900@10, {}, {hasAffordance(tack, mark)}, {
  obj(tack). hasPhysicalQuality(tack, rigid). hasPhysicalQuality(tack, sharp). hasRole(tack, utensilRole). affordsTask(tack, foodPreparationTask).
}).
#pos(e1901@10, {}, {hasAffordance(tack, read)}, {
  obj(tack). hasPhysicalQuality(tack, rigid). hasPhysicalQuality(tack, sharp). hasRole(tack, utensilRole). affordsTask(tack, foodPreparationTask).
}).
#pos(e1902@10, {}, {hasAffordance(tap, fix)}, {
  obj(tap). hasPhysicalQuality(tap, lightweight). hasPhysicalQuality(tap, rigid). hasRole(tap, toolRole). affordsTask(tap, maintenanceTask).
}).
#pos(e1903@10, {}, {hasAffordance(tap, handle)}, {
  obj(tap). hasPhysicalQuality(tap, lightweight). hasPhysicalQuality(tap, rigid). hasRole(tap, toolRole). affordsTask(tap, maintenanceTask).
}).
#pos(e1904@10, {}, {hasAffordance(tape, eat)}, {
  obj(tape). hasPhysicalQuality(tape, isFlexible). hasPhysicalQuality(tape, lightweight). hasRole(tape, toolRole). affordsTask(tape, maintenanceTask).
}).
#pos(e1905@10, {}, {hasAffordance(tape, exercise)}, {
  obj(tape). hasPhysicalQuality(tape, isFlexible). hasPhysicalQuality(tape, lightweight). hasRole(tape, toolRole). affordsTask(tape, maintenanceTask).
}).
#pos(e1906@10, {}, {hasAffordance(tape_dispenser, cool)}, {
  obj(tape_dispenser). hasPhysicalQuality(tape_dispenser, lightweight). hasPhysicalQuality(tape_dispenser, rigid). hasRole(tape_dispenser, toolRole). affordsTask(tape_dispenser, maintenanceTask).
}).
#pos(e1907@10, {}, {hasAffordance(tape_dispenser, display)}, {
  obj(tape_dispenser). hasPhysicalQuality(tape_dispenser, lightweight). hasPhysicalQuality(tape_dispenser, rigid). hasRole(tape_dispenser, toolRole). affordsTask(tape_dispenser, maintenanceTask).
}).
#pos(e1908@10, {}, {hasAffordance(tape_measure, cool)}, {
  obj(tape_measure). hasPhysicalQuality(tape_measure, lightweight). hasPhysicalQuality(tape_measure, rigid). hasRole(tape_measure, toolRole). affordsTask(tape_measure, maintenanceTask).
}).
#pos(e1909@10, {}, {hasAffordance(tape_measure, heat)}, {
  obj(tape_measure). hasPhysicalQuality(tape_measure, lightweight). hasPhysicalQuality(tape_measure, rigid). hasRole(tape_measure, toolRole). affordsTask(tape_measure, maintenanceTask).
}).
#pos(e1910@10, {}, {hasAffordance(teakettle, dice)}, {
  obj(teakettle). hasPhysicalQuality(teakettle, heated). hasRole(teakettle, cookwareRole). affordsTask(teakettle, foodPreparationTask).
}).
#pos(e1911@10, {}, {hasAffordance(teakettle, smoothen)}, {
  obj(teakettle). hasPhysicalQuality(teakettle, heated). hasRole(teakettle, cookwareRole). affordsTask(teakettle, foodPreparationTask).
}).
#pos(e1912@10, {}, {hasAffordance(teaspoon, display)}, {
  obj(teaspoon). hasPhysicalQuality(teaspoon, lightweight). hasPhysicalQuality(teaspoon, rigid). hasRole(teaspoon, utensilRole). affordsTask(teaspoon, foodPreparationTask).
}).
#pos(e1913@10, {}, {hasAffordance(teaspoon, dry)}, {
  obj(teaspoon). hasPhysicalQuality(teaspoon, lightweight). hasPhysicalQuality(teaspoon, rigid). hasRole(teaspoon, utensilRole). affordsTask(teaspoon, foodPreparationTask).
}).
#pos(e1914@10, {}, {hasAffordance(telephone_book, grasp)}, {
  obj(telephone_book). hasPhysicalQuality(telephone_book, fragile). hasPhysicalQuality(telephone_book, lightweight). hasRole(telephone_book, documentRole). affordsTask(telephone_book, workStudyTask).
}).
#pos(e1915@10, {}, {hasAffordance(telephone_book, saw)}, {
  obj(telephone_book). hasPhysicalQuality(telephone_book, fragile). hasPhysicalQuality(telephone_book, lightweight). hasRole(telephone_book, documentRole). affordsTask(telephone_book, workStudyTask).
}).
#pos(e1916@10, {}, {hasAffordance(thumb_tack, slit)}, {
  obj(thumb_tack). hasPhysicalQuality(thumb_tack, lightweight). hasPhysicalQuality(thumb_tack, sharp). hasRole(thumb_tack, toolRole). affordsTask(thumb_tack, maintenanceTask).
}).
#pos(e1917@10, {}, {hasAffordance(thumb_tack, tamp)}, {
  obj(thumb_tack). hasPhysicalQuality(thumb_tack, lightweight). hasPhysicalQuality(thumb_tack, sharp). hasRole(thumb_tack, toolRole). affordsTask(thumb_tack, maintenanceTask).
}).
#pos(e1918@10, {}, {hasAffordance(tin_cans, grasp)}, {
  obj(tin_cans). hasPhysicalQuality(tin_cans, heavy). hasPhysicalQuality(tin_cans, rigid). hasRole(tin_cans, storageContainerRole). affordsTask(tin_cans, storageTask).
}).
#pos(e1919@10, {}, {hasAffordance(tin_cans, support)}, {
  obj(tin_cans). hasPhysicalQuality(tin_cans, heavy). hasPhysicalQuality(tin_cans, rigid). hasRole(tin_cans, storageContainerRole). affordsTask(tin_cans, storageTask).
}).
#pos(e1920@10, {}, {hasAffordance(tissue_holder, compress)}, {
  obj(tissue_holder). hasPhysicalQuality(tissue_holder, lightweight). hasPhysicalQuality(tissue_holder, rigid). hasRole(tissue_holder, storageContainerRole). affordsTask(tissue_holder, storageTask).
}).
#pos(e1921@10, {}, {hasAffordance(tissue_holder, display)}, {
  obj(tissue_holder). hasPhysicalQuality(tissue_holder, lightweight). hasPhysicalQuality(tissue_holder, rigid). hasRole(tissue_holder, storageContainerRole). affordsTask(tissue_holder, storageTask).
}).
#pos(e1922@10, {}, {hasAffordance(toilet_brush, engrave)}, {
  obj(toilet_brush). hasPhysicalQuality(toilet_brush, fragile). hasPhysicalQuality(toilet_brush, lightweight). hasRole(toilet_brush, cleaningToolRole). affordsTask(toilet_brush, cleaningTask).
}).
#pos(e1923@10, {}, {hasAffordance(toilet_brush, hammer)}, {
  obj(toilet_brush). hasPhysicalQuality(toilet_brush, fragile). hasPhysicalQuality(toilet_brush, lightweight). hasRole(toilet_brush, cleaningToolRole). affordsTask(toilet_brush, cleaningTask).
}).
#pos(e1924@10, {}, {hasAffordance(toilet_paper, dig)}, {
  obj(toilet_paper). hasPhysicalQuality(toilet_paper, soft_Deformable). hasPhysicalQuality(toilet_paper, washable). hasRole(toilet_paper, consumableRole). affordsTask(toilet_paper, hygieneTask).
}).
#pos(e1925@10, {}, {hasAffordance(toilet_paper, mix)}, {
  obj(toilet_paper). hasPhysicalQuality(toilet_paper, soft_Deformable). hasPhysicalQuality(toilet_paper, washable). hasRole(toilet_paper, consumableRole). affordsTask(toilet_paper, hygieneTask).
}).
#pos(e1926@10, {}, {hasAffordance(toilet_seat, be_heated)}, {
  obj(toilet_seat). hasPhysicalQuality(toilet_seat, fragile). hasRole(toilet_seat, utensilRole). affordsTask(toilet_seat, eatingDrinkingTask).
}).
#pos(e1927@10, {}, {hasAffordance(toilet_seat, handle)}, {
  obj(toilet_seat). hasPhysicalQuality(toilet_seat, fragile). hasRole(toilet_seat, utensilRole). affordsTask(toilet_seat, eatingDrinkingTask).
}).
#pos(e1928@10, {}, {hasAffordance(toilet_tank, cover)}, {
  obj(toilet_tank). hasPhysicalQuality(toilet_tank, heavy). hasRole(toilet_tank, applianceRole). affordsTask(toilet_tank, wasteDisposalTask).
}).
#pos(e1929@10, {}, {hasAffordance(toilet_tank, slit)}, {
  obj(toilet_tank). hasPhysicalQuality(toilet_tank, heavy). hasRole(toilet_tank, applianceRole). affordsTask(toilet_tank, wasteDisposalTask).
}).
#pos(e1930@10, {}, {hasAffordance(toolbox, break)}, {
  obj(toolbox). hasPhysicalQuality(toolbox, heavy). hasPhysicalQuality(toolbox, rigid). hasRole(toolbox, toolRole). affordsTask(toolbox, maintenanceTask).
}).
#pos(e1931@10, {}, {hasAffordance(toolbox, flex)}, {
  obj(toolbox). hasPhysicalQuality(toolbox, heavy). hasPhysicalQuality(toolbox, rigid). hasRole(toolbox, toolRole). affordsTask(toolbox, maintenanceTask).
}).
#pos(e1932@10, {}, {hasAffordance(toothbrush, carry)}, {
  obj(toothbrush). hasPhysicalQuality(toothbrush, fragile). hasPhysicalQuality(toothbrush, lightweight). affordsTask(toothbrush, hygieneTask).
}).
#pos(e1933@10, {}, {hasAffordance(toothbrush, solder)}, {
  obj(toothbrush). hasPhysicalQuality(toothbrush, fragile). hasPhysicalQuality(toothbrush, lightweight). affordsTask(toothbrush, hygieneTask).
}).
#pos(e1934@10, {}, {hasAffordance(toothbrush_bristle, crack)}, {
  obj(toothbrush_bristle). hasPhysicalQuality(toothbrush_bristle, lightweight). hasPhysicalQuality(toothbrush_bristle, soft_Deformable). affordsTask(toothbrush_bristle, hygieneTask).
}).
#pos(e1935@10, {}, {hasAffordance(toothbrush_bristle, hammer)}, {
  obj(toothbrush_bristle). hasPhysicalQuality(toothbrush_bristle, lightweight). hasPhysicalQuality(toothbrush_bristle, soft_Deformable). affordsTask(toothbrush_bristle, hygieneTask).
}).
#pos(e1936@10, {}, {hasAffordance(toothbrush_head, screw)}, {
  obj(toothbrush_head). hasPhysicalQuality(toothbrush_head, fragile). hasPhysicalQuality(toothbrush_head, lightweight). affordsTask(toothbrush_head, eatingDrinkingTask).
}).
#pos(e1937@10, {}, {hasAffordance(toothbrush_head, wrench)}, {
  obj(toothbrush_head). hasPhysicalQuality(toothbrush_head, fragile). hasPhysicalQuality(toothbrush_head, lightweight). affordsTask(toothbrush_head, eatingDrinkingTask).
}).
#pos(e1938@10, {}, {hasAffordance(toothpaste, be_heated)}, {
  obj(toothpaste). hasPhysicalQuality(toothpaste, liquid). hasPhysicalQuality(toothpaste, toxic_Hazardous). hasRole(toothpaste, cleaningToolRole). affordsTask(toothpaste, hygieneTask).
}).
#pos(e1939@10, {}, {hasAffordance(toothpaste, control)}, {
  obj(toothpaste). hasPhysicalQuality(toothpaste, liquid). hasPhysicalQuality(toothpaste, toxic_Hazardous). hasRole(toothpaste, cleaningToolRole). affordsTask(toothpaste, hygieneTask).
}).
#pos(e1940@10, {}, {hasAffordance(torch, grasp)}, {
  obj(torch). hasPhysicalQuality(torch, electronic). hasPhysicalQuality(torch, heated). hasRole(torch, lightingRole). affordsTask(torch, leisureTask).
}).
#pos(e1941@10, {}, {hasAffordance(torch, stick)}, {
  obj(torch). hasPhysicalQuality(torch, electronic). hasPhysicalQuality(torch, heated). hasRole(torch, lightingRole). affordsTask(torch, leisureTask).
}).
#pos(e1942@10, {}, {hasAffordance(tote_bag, roll)}, {
  obj(tote_bag). hasPhysicalQuality(tote_bag, lightweight). hasPhysicalQuality(tote_bag, soft_Deformable). hasRole(tote_bag, clothingRole). affordsTask(tote_bag, storageTask).
}).
#pos(e1943@10, {}, {hasAffordance(tote_bag, rub)}, {
  obj(tote_bag). hasPhysicalQuality(tote_bag, lightweight). hasPhysicalQuality(tote_bag, soft_Deformable). hasRole(tote_bag, clothingRole). affordsTask(tote_bag, storageTask).
}).
#pos(e1944@10, {}, {hasAffordance(towel, mark)}, {
  obj(towel). hasPhysicalQuality(towel, soft_Deformable). hasPhysicalQuality(towel, washable). hasRole(towel, cleaningToolRole). affordsTask(towel, hygieneTask).
}).
#pos(e1945@10, {}, {hasAffordance(towel, read)}, {
  obj(towel). hasPhysicalQuality(towel, soft_Deformable). hasPhysicalQuality(towel, washable). hasRole(towel, cleaningToolRole). affordsTask(towel, hygieneTask).
}).
#pos(e1946@10, {}, {hasAffordance(towel_bar, carry)}, {
  obj(towel_bar). hasPhysicalQuality(towel_bar, electronic). hasPhysicalQuality(towel_bar, rigid). hasRole(towel_bar, storageContainerRole). affordsTask(towel_bar, hygieneTask).
}).
#pos(e1947@10, {}, {hasAffordance(towel_bar, dice)}, {
  obj(towel_bar). hasPhysicalQuality(towel_bar, electronic). hasPhysicalQuality(towel_bar, rigid). hasRole(towel_bar, storageContainerRole). affordsTask(towel_bar, hygieneTask).
}).
#pos(e1948@10, {}, {hasAffordance(towel_rack, file)}, {
  obj(towel_rack). hasPhysicalQuality(towel_rack, heavy). hasPhysicalQuality(towel_rack, rigid). hasRole(towel_rack, storageContainerRole). affordsTask(towel_rack, storageTask).
}).
#pos(e1949@10, {}, {hasAffordance(towel_rack, scoop)}, {
  obj(towel_rack). hasPhysicalQuality(towel_rack, heavy). hasPhysicalQuality(towel_rack, rigid). hasRole(towel_rack, storageContainerRole). affordsTask(towel_rack, storageTask).
}).
#pos(e1950@10, {}, {hasAffordance(toy, change)}, {
  obj(toy). hasRole(toy, entertainmentRole). affordsTask(toy, leisureTask).
}).
#pos(e1951@10, {}, {hasAffordance(toy, control)}, {
  obj(toy). hasRole(toy, entertainmentRole). affordsTask(toy, leisureTask).
}).
#pos(e1952@10, {}, {hasAffordance(trash, pierce)}, {
  obj(trash). hasRole(trash, storageContainerRole). affordsTask(trash, wasteDisposalTask).
}).
#pos(e1953@10, {}, {hasAffordance(trash, saw)}, {
  obj(trash). hasRole(trash, storageContainerRole). affordsTask(trash, wasteDisposalTask).
}).
#pos(e1954@10, {}, {hasAffordance(trash_can, chop)}, {
  obj(trash_can). hasPhysicalQuality(trash_can, heavy). hasRole(trash_can, storageContainerRole). hasRole(trash_can, wasteRole). affordsTask(trash_can, wasteDisposalTask).
}).
#pos(e1955@10, {}, {hasAffordance(trash_can, support)}, {
  obj(trash_can). hasPhysicalQuality(trash_can, heavy). hasRole(trash_can, storageContainerRole). hasRole(trash_can, wasteRole). affordsTask(trash_can, wasteDisposalTask).
}).
#pos(e1956@10, {}, {hasAffordance(trash_container, carry)}, {
  obj(trash_container). hasPhysicalQuality(trash_container, hasContainer). hasPhysicalQuality(trash_container, heavy). hasRole(trash_container, storageContainerRole). affordsTask(trash_container, wasteDisposalTask).
}).
#pos(e1957@10, {}, {hasAffordance(trash_container, wrench)}, {
  obj(trash_container). hasPhysicalQuality(trash_container, hasContainer). hasPhysicalQuality(trash_container, heavy). hasRole(trash_container, storageContainerRole). affordsTask(trash_container, wasteDisposalTask).
}).
#pos(e1958@10, {}, {hasAffordance(tub, decorate)}, {
  obj(tub). hasPhysicalQuality(tub, hasContainer). hasPhysicalQuality(tub, heavy). hasRole(tub, storageContainerRole). affordsTask(tub, eatingDrinkingTask).
}).
#pos(e1959@10, {}, {hasAffordance(tub, strip)}, {
  obj(tub). hasPhysicalQuality(tub, hasContainer). hasPhysicalQuality(tub, heavy). hasRole(tub, storageContainerRole). affordsTask(tub, eatingDrinkingTask).
}).
#pos(e1960@10, {}, {hasAffordance(tv, clean)}, {
  obj(tv). hasPhysicalQuality(tv, electronic). hasPhysicalQuality(tv, heavy). hasRole(tv, applianceRole). affordsTask(tv, leisureTask).
}).
#pos(e1961@10, {}, {hasAffordance(tv, hold)}, {
  obj(tv). hasPhysicalQuality(tv, electronic). hasPhysicalQuality(tv, heavy). hasRole(tv, applianceRole). affordsTask(tv, leisureTask).
}).
#pos(e1962@10, {}, {hasAffordance(typewriter, cover)}, {
  obj(typewriter). hasPhysicalQuality(typewriter, heavy). hasPhysicalQuality(typewriter, rigid). hasRole(typewriter, toolRole). affordsTask(typewriter, workStudyTask).
}).
#pos(e1963@10, {}, {hasAffordance(typewriter, exercise)}, {
  obj(typewriter). hasPhysicalQuality(typewriter, heavy). hasPhysicalQuality(typewriter, rigid). hasRole(typewriter, toolRole). affordsTask(typewriter, workStudyTask).
}).
#pos(e1964@10, {}, {hasAffordance(umbrella, poke)}, {
  obj(umbrella). hasPhysicalQuality(umbrella, isFlexible). hasPhysicalQuality(umbrella, lightweight). hasRole(umbrella, toolRole).
}).
#pos(e1965@10, {}, {hasAffordance(umbrella, staple)}, {
  obj(umbrella). hasPhysicalQuality(umbrella, isFlexible). hasPhysicalQuality(umbrella, lightweight). hasRole(umbrella, toolRole).
}).
#pos(e1966@10, {}, {hasAffordance(upright_piano, tamp)}, {
  obj(upright_piano). hasPhysicalQuality(upright_piano, heavy). hasPhysicalQuality(upright_piano, rigid). hasRole(upright_piano, entertainmentRole). hasRole(upright_piano, musicalInstrumentRole). affordsTask(upright_piano, leisureTask). affordsTask(upright_piano, workStudyTask).
}).
#pos(e1967@10, {}, {hasAffordance(upright_piano, time)}, {
  obj(upright_piano). hasPhysicalQuality(upright_piano, heavy). hasPhysicalQuality(upright_piano, rigid). hasRole(upright_piano, entertainmentRole). hasRole(upright_piano, musicalInstrumentRole). affordsTask(upright_piano, leisureTask). affordsTask(upright_piano, workStudyTask).
}).
#pos(e1968@10, {}, {hasAffordance(utility_case, eat)}, {
  obj(utility_case). hasPhysicalQuality(utility_case, hasContainer). hasRole(utility_case, storageContainerRole). affordsTask(utility_case, storageTask).
}).
#pos(e1969@10, {}, {hasAffordance(utility_case, wash)}, {
  obj(utility_case). hasPhysicalQuality(utility_case, hasContainer). hasRole(utility_case, storageContainerRole). affordsTask(utility_case, storageTask).
}).
#pos(e1970@10, {}, {hasAffordance(vacuum, operate)}, {
  obj(vacuum). hasPhysicalQuality(vacuum, electronic). hasPhysicalQuality(vacuum, heavy). hasRole(vacuum, cleaningToolRole). affordsTask(vacuum, cleaningTask).
}).
#pos(e1971@10, {}, {hasAffordance(vacuum, shape)}, {
  obj(vacuum). hasPhysicalQuality(vacuum, electronic). hasPhysicalQuality(vacuum, heavy). hasRole(vacuum, cleaningToolRole). affordsTask(vacuum, cleaningTask).
}).
#pos(e1972@10, {}, {hasAffordance(vanity_case, press)}, {
  obj(vanity_case). hasPhysicalQuality(vanity_case, hasContainer). hasPhysicalQuality(vanity_case, lightweight). hasRole(vanity_case, storageContainerRole). affordsTask(vanity_case, leisureTask).
}).
#pos(e1973@10, {}, {hasAffordance(vanity_case, read)}, {
  obj(vanity_case). hasPhysicalQuality(vanity_case, hasContainer). hasPhysicalQuality(vanity_case, lightweight). hasRole(vanity_case, storageContainerRole). affordsTask(vanity_case, leisureTask).
}).
#pos(e1974@10, {}, {hasAffordance(vase, hammer)}, {
  obj(vase). hasPhysicalQuality(vase, fragile). hasPhysicalQuality(vase, rigid). hasRole(vase, decorationRole).
}).
#pos(e1975@10, {}, {hasAffordance(vase, strip)}, {
  obj(vase). hasPhysicalQuality(vase, fragile). hasPhysicalQuality(vase, rigid). hasRole(vase, decorationRole).
}).
#pos(e1976@10, {}, {hasAffordance(vegetables, handle)}, {
  obj(vegetables). hasPhysicalQuality(vegetables, granular). hasPhysicalQuality(vegetables, perishable). hasRole(vegetables, consumableRole). affordsTask(vegetables, eatingDrinkingTask). affordsTask(vegetables, foodPreparationTask).
}).
#pos(e1977@10, {}, {hasAffordance(vegetables, poke)}, {
  obj(vegetables). hasPhysicalQuality(vegetables, granular). hasPhysicalQuality(vegetables, perishable). hasRole(vegetables, consumableRole). affordsTask(vegetables, eatingDrinkingTask). affordsTask(vegetables, foodPreparationTask).
}).
#pos(e1978@10, {}, {hasAffordance(vent_brush, staple)}, {
  obj(vent_brush). hasPhysicalQuality(vent_brush, lightweight). hasPhysicalQuality(vent_brush, soft_Deformable). hasRole(vent_brush, cleaningToolRole). affordsTask(vent_brush, cleaningTask).
}).
#pos(e1979@10, {}, {hasAffordance(vent_brush, unclog)}, {
  obj(vent_brush). hasPhysicalQuality(vent_brush, lightweight). hasPhysicalQuality(vent_brush, soft_Deformable). hasRole(vent_brush, cleaningToolRole). affordsTask(vent_brush, cleaningTask).
}).
#pos(e1980@10, {}, {hasAffordance(ventilation_system, carve)}, {
  obj(ventilation_system). hasPhysicalQuality(ventilation_system, electronic). hasPhysicalQuality(ventilation_system, heavy). hasRole(ventilation_system, applianceRole). affordsTask(ventilation_system, maintenanceTask).
}).
#pos(e1981@10, {}, {hasAffordance(ventilation_system, time)}, {
  obj(ventilation_system). hasPhysicalQuality(ventilation_system, electronic). hasPhysicalQuality(ventilation_system, heavy). hasRole(ventilation_system, applianceRole). affordsTask(ventilation_system, maintenanceTask).
}).
#pos(e1982@10, {}, {hasAffordance(vice, compress)}, {
  obj(vice). hasPhysicalQuality(vice, heavy). hasPhysicalQuality(vice, rigid). hasRole(vice, toolRole). affordsTask(vice, maintenanceTask).
}).
#pos(e1983@10, {}, {hasAffordance(vice, dispose)}, {
  obj(vice). hasPhysicalQuality(vice, heavy). hasPhysicalQuality(vice, rigid). hasRole(vice, toolRole). affordsTask(vice, maintenanceTask).
}).
#pos(e1984@10, {}, {hasAffordance(vinyl, dry)}, {
  obj(vinyl). hasPhysicalQuality(vinyl, granular). hasRole(vinyl, consumableRole).
}).
#pos(e1985@10, {}, {hasAffordance(vinyl, wash)}, {
  obj(vinyl). hasPhysicalQuality(vinyl, granular). hasRole(vinyl, consumableRole).
}).
#pos(e1986@10, {}, {hasAffordance(violin, fix)}, {
  obj(violin). hasPhysicalQuality(violin, electronic). hasPhysicalQuality(violin, rigid). hasRole(violin, musicalInstrumentRole). affordsTask(violin, leisureTask).
}).
#pos(e1987@10, {}, {hasAffordance(violin, write)}, {
  obj(violin). hasPhysicalQuality(violin, electronic). hasPhysicalQuality(violin, rigid). hasRole(violin, musicalInstrumentRole). affordsTask(violin, leisureTask).
}).
#pos(e1988@10, {}, {hasAffordance(wall, clean)}, {
  obj(wall). hasPhysicalQuality(wall, rigid). hasRole(wall, furnitureRole).
}).
#pos(e1989@10, {}, {hasAffordance(wall, decorate)}, {
  obj(wall). hasPhysicalQuality(wall, rigid). hasRole(wall, furnitureRole).
}).
#pos(e1990@10, {}, {hasAffordance(wash_cloth, dice)}, {
  obj(wash_cloth). hasPhysicalQuality(wash_cloth, soft_Deformable). hasPhysicalQuality(wash_cloth, washable). hasRole(wash_cloth, cleaningToolRole). affordsTask(wash_cloth, hygieneTask).
}).
#pos(e1991@10, {}, {hasAffordance(wash_cloth, entertain)}, {
  obj(wash_cloth). hasPhysicalQuality(wash_cloth, soft_Deformable). hasPhysicalQuality(wash_cloth, washable). hasRole(wash_cloth, cleaningToolRole). affordsTask(wash_cloth, hygieneTask).
}).
#pos(e1992@10, {}, {hasAffordance(washcloth, chop)}, {
  obj(washcloth). hasPhysicalQuality(washcloth, soft_Deformable). hasPhysicalQuality(washcloth, washable). hasRole(washcloth, cleaningToolRole). affordsTask(washcloth, hygieneTask).
}).
#pos(e1993@10, {}, {hasAffordance(washcloth, solder)}, {
  obj(washcloth). hasPhysicalQuality(washcloth, soft_Deformable). hasPhysicalQuality(washcloth, washable). hasRole(washcloth, cleaningToolRole). affordsTask(washcloth, hygieneTask).
}).
#pos(e1994@10, {}, {hasAffordance(washing_machine, absorb)}, {
  obj(washing_machine). hasPhysicalQuality(washing_machine, electronic). hasPhysicalQuality(washing_machine, heavy). hasRole(washing_machine, applianceRole). affordsTask(washing_machine, cleaningTask).
}).
#pos(e1995@10, {}, {hasAffordance(washing_machine, cut)}, {
  obj(washing_machine). hasPhysicalQuality(washing_machine, electronic). hasPhysicalQuality(washing_machine, heavy). hasRole(washing_machine, applianceRole). affordsTask(washing_machine, cleaningTask).
}).
#pos(e1996@10, {}, {hasAffordance(water, press)}, {
  obj(water). hasPhysicalQuality(water, liquid). hasRole(water, cleaningToolRole). hasRole(water, consumableRole). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e1997@10, {}, {hasAffordance(water, saw)}, {
  obj(water). hasPhysicalQuality(water, liquid). hasRole(water, cleaningToolRole). hasRole(water, consumableRole). affordsTask(water, eatingDrinkingTask). affordsTask(water, hygieneTask).
}).
#pos(e1998@10, {}, {hasAffordance(wax, roll)}, {
  obj(wax). hasPhysicalQuality(wax, liquid). hasPhysicalQuality(wax, perishable). hasRole(wax, consumableRole). affordsTask(wax, eatingDrinkingTask).
}).
#pos(e1999@10, {}, {hasAffordance(wax, support)}, {
  obj(wax). hasPhysicalQuality(wax, liquid). hasPhysicalQuality(wax, perishable). hasRole(wax, consumableRole). affordsTask(wax, eatingDrinkingTask).
}).
#pos(e2000@10, {}, {hasAffordance(wheel, bore)}, {
  obj(wheel). hasPhysicalQuality(wheel, lightweight). hasPhysicalQuality(wheel, rigid). hasRole(wheel, toolRole). affordsTask(wheel, maintenanceTask).
}).
#pos(e2001@10, {}, {hasAffordance(wheel, hammer)}, {
  obj(wheel). hasPhysicalQuality(wheel, lightweight). hasPhysicalQuality(wheel, rigid). hasRole(wheel, toolRole). affordsTask(wheel, maintenanceTask).
}).
#pos(e2002@10, {}, {hasAffordance(window, engrave)}, {
  obj(window). hasPhysicalQuality(window, lightweight). hasPhysicalQuality(window, rigid). hasRole(window, furnitureRole). affordsTask(window, leisureTask).
}).
#pos(e2003@10, {}, {hasAffordance(window, grind)}, {
  obj(window). hasPhysicalQuality(window, lightweight). hasPhysicalQuality(window, rigid). hasRole(window, furnitureRole). affordsTask(window, leisureTask).
}).
#pos(e2004@10, {}, {hasAffordance(window_curtain, grind)}, {
  obj(window_curtain). hasPhysicalQuality(window_curtain, lightweight). hasPhysicalQuality(window_curtain, soft_Deformable). hasRole(window_curtain, decorationRole). affordsTask(window_curtain, leisureTask).
}).
#pos(e2005@10, {}, {hasAffordance(window_curtain, repair)}, {
  obj(window_curtain). hasPhysicalQuality(window_curtain, lightweight). hasPhysicalQuality(window_curtain, soft_Deformable). hasRole(window_curtain, decorationRole). affordsTask(window_curtain, leisureTask).
}).
#pos(e2006@10, {}, {hasAffordance(wine, chop)}, {
  obj(wine). hasPhysicalQuality(wine, liquid). hasPhysicalQuality(wine, perishable). hasRole(wine, consumableRole). affordsTask(wine, eatingDrinkingTask).
}).
#pos(e2007@10, {}, {hasAffordance(wine, eat)}, {
  obj(wine). hasPhysicalQuality(wine, liquid). hasPhysicalQuality(wine, perishable). hasRole(wine, consumableRole). affordsTask(wine, eatingDrinkingTask).
}).
#pos(e2008@10, {}, {hasAffordance(wool, file)}, {
  obj(wool). hasPhysicalQuality(wool, soft_Deformable). hasPhysicalQuality(wool, washable). hasRole(wool, clothingRole). affordsTask(wool, dressingTask).
}).
#pos(e2009@10, {}, {hasAffordance(wool, wash)}, {
  obj(wool). hasPhysicalQuality(wool, soft_Deformable). hasPhysicalQuality(wool, washable). hasRole(wool, clothingRole). affordsTask(wool, dressingTask).
}).
#pos(e2010@10, {}, {hasAffordance(wrench, strip)}, {
  obj(wrench). hasPhysicalQuality(wrench, heavy). hasPhysicalQuality(wrench, rigid). hasRole(wrench, toolRole). affordsTask(wrench, maintenanceTask).
}).
#pos(e2011@10, {}, {hasAffordance(wrench, write)}, {
  obj(wrench). hasPhysicalQuality(wrench, heavy). hasPhysicalQuality(wrench, rigid). hasRole(wrench, toolRole). affordsTask(wrench, maintenanceTask).
}).
