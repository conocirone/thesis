% ==========================================================
% ILASP Input: hasAffordance(Object, Affordance) rule learning
% Context-dependent examples (each carries its own BK)
% Generated from Robo-CSK-Benchmark + SOMA background knowledge
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
#constant(quality, heated).
#constant(quality, heavy).
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
#pos(e1@100, {hasAffordance(apple, cut)}, {}, {
  obj(apple). hasPhysicalQuality(apple, fragile). hasPhysicalQuality(apple, perishable). hasRole(apple, consumableRole). affordsTask(apple, eatingDrinkingTask).
}).
#pos(e2@100, {hasAffordance(apple, eat)}, {}, {
  obj(apple). hasPhysicalQuality(apple, fragile). hasPhysicalQuality(apple, perishable). hasRole(apple, consumableRole). affordsTask(apple, eatingDrinkingTask).
}).
#pos(e3@100, {hasAffordance(apple, pick)}, {}, {
  obj(apple). hasPhysicalQuality(apple, fragile). hasPhysicalQuality(apple, perishable). hasRole(apple, consumableRole). affordsTask(apple, eatingDrinkingTask).
}).
#pos(e4@100, {hasAffordance(armchair, contain)}, {}, {
  obj(armchair). hasPhysicalQuality(armchair, heavy). hasRole(armchair, furnitureRole). affordsTask(armchair, leisureTask).
}).
#pos(e5@100, {hasAffordance(bed, comfort)}, {}, {
  obj(bed). hasPhysicalQuality(bed, heavy). hasPhysicalQuality(bed, soft_Deformable). hasRole(bed, furnitureRole). affordsTask(bed, sleepingTask).
}).
#pos(e6@100, {hasAffordance(bed, contain)}, {}, {
  obj(bed). hasPhysicalQuality(bed, heavy). hasPhysicalQuality(bed, soft_Deformable). hasRole(bed, furnitureRole). affordsTask(bed, sleepingTask).
}).
#pos(e7@100, {hasAffordance(bed, increase)}, {}, {
  obj(bed). hasPhysicalQuality(bed, heavy). hasPhysicalQuality(bed, soft_Deformable). hasRole(bed, furnitureRole). affordsTask(bed, sleepingTask).
}).
#pos(e8@100, {hasAffordance(bed, support)}, {}, {
  obj(bed). hasPhysicalQuality(bed, heavy). hasPhysicalQuality(bed, soft_Deformable). hasRole(bed, furnitureRole). affordsTask(bed, sleepingTask).
}).
#pos(e9@100, {hasAffordance(bill, change)}, {}, {
  obj(bill). hasPhysicalQuality(bill, lightweight). hasRole(bill, documentRole). affordsTask(bill, leisureTask).
}).
#pos(e10@100, {hasAffordance(bill, cut)}, {}, {
  obj(bill). hasPhysicalQuality(bill, lightweight). hasRole(bill, documentRole). affordsTask(bill, leisureTask).
}).
#pos(e11@100, {hasAffordance(bill, fix)}, {}, {
  obj(bill). hasPhysicalQuality(bill, lightweight). hasRole(bill, documentRole). affordsTask(bill, leisureTask).
}).
#pos(e12@100, {hasAffordance(bill, grasp)}, {}, {
  obj(bill). hasPhysicalQuality(bill, lightweight). hasRole(bill, documentRole). affordsTask(bill, leisureTask).
}).
#pos(e13@100, {hasAffordance(bill, hold)}, {}, {
  obj(bill). hasPhysicalQuality(bill, lightweight). hasRole(bill, documentRole). affordsTask(bill, leisureTask).
}).
#pos(e14@100, {hasAffordance(bill, repair)}, {}, {
  obj(bill). hasPhysicalQuality(bill, lightweight). hasRole(bill, documentRole). affordsTask(bill, leisureTask).
}).
#pos(e15@100, {hasAffordance(bill, separate)}, {}, {
  obj(bill). hasPhysicalQuality(bill, lightweight). hasRole(bill, documentRole). affordsTask(bill, leisureTask).
}).
#pos(e16@100, {hasAffordance(binder, grasp)}, {}, {
  obj(binder). hasPhysicalQuality(binder, lightweight). hasPhysicalQuality(binder, rigid). hasRole(binder, storageContainerRole). affordsTask(binder, storageTask).
}).
#pos(e17@100, {hasAffordance(book, contain)}, {}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask). affordsTask(book, workStudyTask).
}).
#pos(e18@100, {hasAffordance(book, pick)}, {}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask). affordsTask(book, workStudyTask).
}).
#pos(e19@100, {hasAffordance(book, read)}, {}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask). affordsTask(book, workStudyTask).
}).
#pos(e20@100, {hasAffordance(bottle, break)}, {}, {
  obj(bottle). hasPhysicalQuality(bottle, lightweight). hasRole(bottle, storageContainerRole). affordsTask(bottle, eatingDrinkingTask).
}).
#pos(e21@100, {hasAffordance(bottle, carry)}, {}, {
  obj(bottle). hasPhysicalQuality(bottle, lightweight). hasRole(bottle, storageContainerRole). affordsTask(bottle, eatingDrinkingTask).
}).
#pos(e22@100, {hasAffordance(bottle, contain)}, {}, {
  obj(bottle). hasPhysicalQuality(bottle, lightweight). hasRole(bottle, storageContainerRole). affordsTask(bottle, eatingDrinkingTask).
}).
#pos(e23@100, {hasAffordance(bottle, pick)}, {}, {
  obj(bottle). hasPhysicalQuality(bottle, lightweight). hasRole(bottle, storageContainerRole). affordsTask(bottle, eatingDrinkingTask).
}).
#pos(e24@100, {hasAffordance(bowl, be_heated)}, {}, {
  obj(bowl). hasPhysicalQuality(bowl, lightweight). hasPhysicalQuality(bowl, rigid). hasRole(bowl, utensilRole). affordsTask(bowl, eatingDrinkingTask).
}).
#pos(e25@100, {hasAffordance(bowl, break)}, {}, {
  obj(bowl). hasPhysicalQuality(bowl, lightweight). hasPhysicalQuality(bowl, rigid). hasRole(bowl, utensilRole). affordsTask(bowl, eatingDrinkingTask).
}).
#pos(e26@100, {hasAffordance(bowl, carry)}, {}, {
  obj(bowl). hasPhysicalQuality(bowl, lightweight). hasPhysicalQuality(bowl, rigid). hasRole(bowl, utensilRole). affordsTask(bowl, eatingDrinkingTask).
}).
#pos(e27@100, {hasAffordance(bowl, contain)}, {}, {
  obj(bowl). hasPhysicalQuality(bowl, lightweight). hasPhysicalQuality(bowl, rigid). hasRole(bowl, utensilRole). affordsTask(bowl, eatingDrinkingTask).
}).
#pos(e28@100, {hasAffordance(bowl, pick)}, {}, {
  obj(bowl). hasPhysicalQuality(bowl, lightweight). hasPhysicalQuality(bowl, rigid). hasRole(bowl, utensilRole). affordsTask(bowl, eatingDrinkingTask).
}).
#pos(e29@100, {hasAffordance(bowl, support)}, {}, {
  obj(bowl). hasPhysicalQuality(bowl, lightweight). hasPhysicalQuality(bowl, rigid). hasRole(bowl, utensilRole). affordsTask(bowl, eatingDrinkingTask).
}).
#pos(e30@100, {hasAffordance(bowl, wrap)}, {}, {
  obj(bowl). hasPhysicalQuality(bowl, lightweight). hasPhysicalQuality(bowl, rigid). hasRole(bowl, utensilRole). affordsTask(bowl, eatingDrinkingTask).
}).
#pos(e31@100, {hasAffordance(box, contain)}, {}, {
  obj(box). hasPhysicalQuality(box, heavy). hasPhysicalQuality(box, rigid). hasRole(box, storageContainerRole). affordsTask(box, storageTask).
}).
#pos(e32@100, {hasAffordance(box, pick)}, {}, {
  obj(box). hasPhysicalQuality(box, heavy). hasPhysicalQuality(box, rigid). hasRole(box, storageContainerRole). affordsTask(box, storageTask).
}).
#pos(e33@100, {hasAffordance(box, store)}, {}, {
  obj(box). hasPhysicalQuality(box, heavy). hasPhysicalQuality(box, rigid). hasRole(box, storageContainerRole). affordsTask(box, storageTask).
}).
#pos(e34@100, {hasAffordance(bread, cut)}, {}, {
  obj(bread). hasPhysicalQuality(bread, granular). hasPhysicalQuality(bread, perishable). hasRole(bread, consumableRole). affordsTask(bread, eatingDrinkingTask). affordsTask(bread, foodPreparationTask).
}).
#pos(e35@100, {hasAffordance(bread, eat)}, {}, {
  obj(bread). hasPhysicalQuality(bread, granular). hasPhysicalQuality(bread, perishable). hasRole(bread, consumableRole). affordsTask(bread, eatingDrinkingTask). affordsTask(bread, foodPreparationTask).
}).
#pos(e36@100, {hasAffordance(bread, pick)}, {}, {
  obj(bread). hasPhysicalQuality(bread, granular). hasPhysicalQuality(bread, perishable). hasRole(bread, consumableRole). affordsTask(bread, eatingDrinkingTask). affordsTask(bread, foodPreparationTask).
}).
#pos(e37@100, {hasAffordance(calculator, display)}, {}, {
  obj(calculator). hasPhysicalQuality(calculator, electronic). hasPhysicalQuality(calculator, lightweight). hasRole(calculator, toolRole). affordsTask(calculator, workStudyTask).
}).
#pos(e38@100, {hasAffordance(calculator, grasp)}, {}, {
  obj(calculator). hasPhysicalQuality(calculator, electronic). hasPhysicalQuality(calculator, lightweight). hasRole(calculator, toolRole). affordsTask(calculator, workStudyTask).
}).
#pos(e39@100, {hasAffordance(camera, grasp)}, {}, {
  obj(camera). hasPhysicalQuality(camera, electronic). hasPhysicalQuality(camera, lightweight). hasRole(camera, toolRole). affordsTask(camera, leisureTask). affordsTask(camera, workStudyTask).
}).
#pos(e40@100, {hasAffordance(can_opener, change)}, {}, {
  obj(can_opener). hasPhysicalQuality(can_opener, electronic). hasPhysicalQuality(can_opener, heavy). hasRole(can_opener, toolRole). affordsTask(can_opener, foodPreparationTask).
}).
#pos(e41@100, {hasAffordance(can_opener, fix)}, {}, {
  obj(can_opener). hasPhysicalQuality(can_opener, electronic). hasPhysicalQuality(can_opener, heavy). hasRole(can_opener, toolRole). affordsTask(can_opener, foodPreparationTask).
}).
#pos(e42@100, {hasAffordance(can_opener, grasp)}, {}, {
  obj(can_opener). hasPhysicalQuality(can_opener, electronic). hasPhysicalQuality(can_opener, heavy). hasRole(can_opener, toolRole). affordsTask(can_opener, foodPreparationTask).
}).
#pos(e43@100, {hasAffordance(can_opener, hold)}, {}, {
  obj(can_opener). hasPhysicalQuality(can_opener, electronic). hasPhysicalQuality(can_opener, heavy). hasRole(can_opener, toolRole). affordsTask(can_opener, foodPreparationTask).
}).
#pos(e44@100, {hasAffordance(can_opener, repair)}, {}, {
  obj(can_opener). hasPhysicalQuality(can_opener, electronic). hasPhysicalQuality(can_opener, heavy). hasRole(can_opener, toolRole). affordsTask(can_opener, foodPreparationTask).
}).
#pos(e45@100, {hasAffordance(candle, decorate)}, {}, {
  obj(candle). hasPhysicalQuality(candle, fragile). hasPhysicalQuality(candle, heated). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e46@100, {hasAffordance(candle, heat)}, {}, {
  obj(candle). hasPhysicalQuality(candle, fragile). hasPhysicalQuality(candle, heated). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e47@100, {hasAffordance(candle, illuminate)}, {}, {
  obj(candle). hasPhysicalQuality(candle, fragile). hasPhysicalQuality(candle, heated). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e48@100, {hasAffordance(candle, operate)}, {}, {
  obj(candle). hasPhysicalQuality(candle, fragile). hasPhysicalQuality(candle, heated). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e49@100, {hasAffordance(candle, pick)}, {}, {
  obj(candle). hasPhysicalQuality(candle, fragile). hasPhysicalQuality(candle, heated). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e50@100, {hasAffordance(chair, comfort)}, {}, {
  obj(chair). hasPhysicalQuality(chair, heavy). hasPhysicalQuality(chair, rigid). hasRole(chair, furnitureRole). affordsTask(chair, leisureTask). affordsTask(chair, storageTask).
}).
#pos(e51@100, {hasAffordance(chair, contain)}, {}, {
  obj(chair). hasPhysicalQuality(chair, heavy). hasPhysicalQuality(chair, rigid). hasRole(chair, furnitureRole). affordsTask(chair, leisureTask). affordsTask(chair, storageTask).
}).
#pos(e52@100, {hasAffordance(chair, increase)}, {}, {
  obj(chair). hasPhysicalQuality(chair, heavy). hasPhysicalQuality(chair, rigid). hasRole(chair, furnitureRole). affordsTask(chair, leisureTask). affordsTask(chair, storageTask).
}).
#pos(e53@100, {hasAffordance(chair, support)}, {}, {
  obj(chair). hasPhysicalQuality(chair, heavy). hasPhysicalQuality(chair, rigid). hasRole(chair, furnitureRole). affordsTask(chair, leisureTask). affordsTask(chair, storageTask).
}).
#pos(e54@100, {hasAffordance(cloth, clean)}, {}, {
  obj(cloth). hasPhysicalQuality(cloth, soft_Deformable). hasPhysicalQuality(cloth, washable). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask). affordsTask(cloth, storageTask).
}).
#pos(e55@100, {hasAffordance(cloth, pick)}, {}, {
  obj(cloth). hasPhysicalQuality(cloth, soft_Deformable). hasPhysicalQuality(cloth, washable). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask). affordsTask(cloth, storageTask).
}).
#pos(e56@100, {hasAffordance(coffee, eat)}, {}, {
  obj(coffee). hasPhysicalQuality(coffee, heated). hasPhysicalQuality(coffee, liquid). hasPhysicalQuality(coffee, perishable). hasRole(coffee, consumableRole). affordsTask(coffee, eatingDrinkingTask).
}).
#pos(e57@100, {hasAffordance(coffee_mug, contain)}, {}, {
  obj(coffee_mug). hasPhysicalQuality(coffee_mug, lightweight). hasPhysicalQuality(coffee_mug, rigid). hasPhysicalQuality(coffee_mug, washable). hasRole(coffee_mug, utensilRole). affordsTask(coffee_mug, eatingDrinkingTask).
}).
#pos(e58@100, {hasAffordance(coffee_mug, grasp)}, {}, {
  obj(coffee_mug). hasPhysicalQuality(coffee_mug, lightweight). hasPhysicalQuality(coffee_mug, rigid). hasPhysicalQuality(coffee_mug, washable). hasRole(coffee_mug, utensilRole). affordsTask(coffee_mug, eatingDrinkingTask).
}).
#pos(e59@100, {hasAffordance(coffee_mug, pour)}, {}, {
  obj(coffee_mug). hasPhysicalQuality(coffee_mug, lightweight). hasPhysicalQuality(coffee_mug, rigid). hasPhysicalQuality(coffee_mug, washable). hasRole(coffee_mug, utensilRole). affordsTask(coffee_mug, eatingDrinkingTask).
}).
#pos(e60@100, {hasAffordance(coffee_mug, wrap)}, {}, {
  obj(coffee_mug). hasPhysicalQuality(coffee_mug, lightweight). hasPhysicalQuality(coffee_mug, rigid). hasPhysicalQuality(coffee_mug, washable). hasRole(coffee_mug, utensilRole). affordsTask(coffee_mug, eatingDrinkingTask).
}).
#pos(e61@100, {hasAffordance(coffee_table, increase)}, {}, {
  obj(coffee_table). hasPhysicalQuality(coffee_table, heavy). hasPhysicalQuality(coffee_table, rigid). hasRole(coffee_table, furnitureRole). affordsTask(coffee_table, leisureTask). affordsTask(coffee_table, storageTask).
}).
#pos(e62@100, {hasAffordance(coffee_table, support)}, {}, {
  obj(coffee_table). hasPhysicalQuality(coffee_table, heavy). hasPhysicalQuality(coffee_table, rigid). hasRole(coffee_table, furnitureRole). affordsTask(coffee_table, leisureTask). affordsTask(coffee_table, storageTask).
}).
#pos(e63@100, {hasAffordance(cup, be_heated)}, {}, {
  obj(cup). hasPhysicalQuality(cup, lightweight). hasPhysicalQuality(cup, liquid). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e64@100, {hasAffordance(cup, break)}, {}, {
  obj(cup). hasPhysicalQuality(cup, lightweight). hasPhysicalQuality(cup, liquid). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e65@100, {hasAffordance(cup, carry)}, {}, {
  obj(cup). hasPhysicalQuality(cup, lightweight). hasPhysicalQuality(cup, liquid). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e66@100, {hasAffordance(cup, contain)}, {}, {
  obj(cup). hasPhysicalQuality(cup, lightweight). hasPhysicalQuality(cup, liquid). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e67@100, {hasAffordance(cup, pick)}, {}, {
  obj(cup). hasPhysicalQuality(cup, lightweight). hasPhysicalQuality(cup, liquid). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e68@100, {hasAffordance(cup, support)}, {}, {
  obj(cup). hasPhysicalQuality(cup, lightweight). hasPhysicalQuality(cup, liquid). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e69@100, {hasAffordance(curtain, decorate)}, {}, {
  obj(curtain). hasPhysicalQuality(curtain, lightweight). hasPhysicalQuality(curtain, soft_Deformable). hasRole(curtain, furnitureRole). affordsTask(curtain, leisureTask).
}).
#pos(e70@100, {hasAffordance(curtain, illuminate)}, {}, {
  obj(curtain). hasPhysicalQuality(curtain, lightweight). hasPhysicalQuality(curtain, soft_Deformable). hasRole(curtain, furnitureRole). affordsTask(curtain, leisureTask).
}).
#pos(e71@100, {hasAffordance(desk, contain)}, {}, {
  obj(desk). hasPhysicalQuality(desk, heavy). hasPhysicalQuality(desk, rigid). hasRole(desk, furnitureRole). affordsTask(desk, workStudyTask).
}).
#pos(e72@100, {hasAffordance(desk, increase)}, {}, {
  obj(desk). hasPhysicalQuality(desk, heavy). hasPhysicalQuality(desk, rigid). hasRole(desk, furnitureRole). affordsTask(desk, workStudyTask).
}).
#pos(e73@100, {hasAffordance(desk, store)}, {}, {
  obj(desk). hasPhysicalQuality(desk, heavy). hasPhysicalQuality(desk, rigid). hasRole(desk, furnitureRole). affordsTask(desk, workStudyTask).
}).
#pos(e74@100, {hasAffordance(desk, support)}, {}, {
  obj(desk). hasPhysicalQuality(desk, heavy). hasPhysicalQuality(desk, rigid). hasRole(desk, furnitureRole). affordsTask(desk, workStudyTask).
}).
#pos(e75@100, {hasAffordance(dining_table, increase)}, {}, {
  obj(dining_table). hasPhysicalQuality(dining_table, heavy). hasPhysicalQuality(dining_table, rigid). hasRole(dining_table, furnitureRole). affordsTask(dining_table, eatingDrinkingTask). affordsTask(dining_table, leisureTask). affordsTask(dining_table, storageTask).
}).
#pos(e76@100, {hasAffordance(dining_table, support)}, {}, {
  obj(dining_table). hasPhysicalQuality(dining_table, heavy). hasPhysicalQuality(dining_table, rigid). hasRole(dining_table, furnitureRole). affordsTask(dining_table, eatingDrinkingTask). affordsTask(dining_table, leisureTask). affordsTask(dining_table, storageTask).
}).
#pos(e77@100, {hasAffordance(drawer, contain)}, {}, {
  obj(drawer). hasPhysicalQuality(drawer, heavy). hasRole(drawer, storageContainerRole). affordsTask(drawer, storageTask).
}).
#pos(e78@100, {hasAffordance(drawer, store)}, {}, {
  obj(drawer). hasPhysicalQuality(drawer, heavy). hasRole(drawer, storageContainerRole). affordsTask(drawer, storageTask).
}).
#pos(e79@100, {hasAffordance(dresser, contain)}, {}, {
  obj(dresser). hasPhysicalQuality(dresser, heavy). hasPhysicalQuality(dresser, rigid). hasRole(dresser, furnitureRole). affordsTask(dresser, storageTask).
}).
#pos(e80@100, {hasAffordance(dresser, increase)}, {}, {
  obj(dresser). hasPhysicalQuality(dresser, heavy). hasPhysicalQuality(dresser, rigid). hasRole(dresser, furnitureRole). affordsTask(dresser, storageTask).
}).
#pos(e81@100, {hasAffordance(dresser, store)}, {}, {
  obj(dresser). hasPhysicalQuality(dresser, heavy). hasPhysicalQuality(dresser, rigid). hasRole(dresser, furnitureRole). affordsTask(dresser, storageTask).
}).
#pos(e82@100, {hasAffordance(dresser, support)}, {}, {
  obj(dresser). hasPhysicalQuality(dresser, heavy). hasPhysicalQuality(dresser, rigid). hasRole(dresser, furnitureRole). affordsTask(dresser, storageTask).
}).
#pos(e83@100, {hasAffordance(drill, bore)}, {}, {
  obj(drill). hasPhysicalQuality(drill, heavy). hasPhysicalQuality(drill, rigid). hasRole(drill, toolRole). affordsTask(drill, maintenanceTask).
}).
#pos(e84@100, {hasAffordance(drill, change)}, {}, {
  obj(drill). hasPhysicalQuality(drill, heavy). hasPhysicalQuality(drill, rigid). hasRole(drill, toolRole). affordsTask(drill, maintenanceTask).
}).
#pos(e85@100, {hasAffordance(drill, cut)}, {}, {
  obj(drill). hasPhysicalQuality(drill, heavy). hasPhysicalQuality(drill, rigid). hasRole(drill, toolRole). affordsTask(drill, maintenanceTask).
}).
#pos(e86@100, {hasAffordance(drill, drill)}, {}, {
  obj(drill). hasPhysicalQuality(drill, heavy). hasPhysicalQuality(drill, rigid). hasRole(drill, toolRole). affordsTask(drill, maintenanceTask).
}).
#pos(e87@100, {hasAffordance(drill, fix)}, {}, {
  obj(drill). hasPhysicalQuality(drill, heavy). hasPhysicalQuality(drill, rigid). hasRole(drill, toolRole). affordsTask(drill, maintenanceTask).
}).
#pos(e88@100, {hasAffordance(drill, repair)}, {}, {
  obj(drill). hasPhysicalQuality(drill, heavy). hasPhysicalQuality(drill, rigid). hasRole(drill, toolRole). affordsTask(drill, maintenanceTask).
}).
#pos(e89@100, {hasAffordance(drill, separate)}, {}, {
  obj(drill). hasPhysicalQuality(drill, heavy). hasPhysicalQuality(drill, rigid). hasRole(drill, toolRole). affordsTask(drill, maintenanceTask).
}).
#pos(e90@100, {hasAffordance(egg, break)}, {}, {
  obj(egg). hasPhysicalQuality(egg, fragile). hasPhysicalQuality(egg, lightweight). hasRole(egg, consumableRole). affordsTask(egg, eatingDrinkingTask). affordsTask(egg, foodPreparationTask).
}).
#pos(e91@100, {hasAffordance(egg, cut)}, {}, {
  obj(egg). hasPhysicalQuality(egg, fragile). hasPhysicalQuality(egg, lightweight). hasRole(egg, consumableRole). affordsTask(egg, eatingDrinkingTask). affordsTask(egg, foodPreparationTask).
}).
#pos(e92@100, {hasAffordance(egg, eat)}, {}, {
  obj(egg). hasPhysicalQuality(egg, fragile). hasPhysicalQuality(egg, lightweight). hasRole(egg, consumableRole). affordsTask(egg, eatingDrinkingTask). affordsTask(egg, foodPreparationTask).
}).
#pos(e93@100, {hasAffordance(egg, pick)}, {}, {
  obj(egg). hasPhysicalQuality(egg, fragile). hasPhysicalQuality(egg, lightweight). hasRole(egg, consumableRole). affordsTask(egg, eatingDrinkingTask). affordsTask(egg, foodPreparationTask).
}).
#pos(e94@100, {hasAffordance(faucet, operate)}, {}, {
  obj(faucet). hasPhysicalQuality(faucet, liquid). hasRole(faucet, toolRole). affordsTask(faucet, eatingDrinkingTask). affordsTask(faucet, hygieneTask).
}).
#pos(e95@100, {hasAffordance(file, beautify)}, {}, {
  obj(file). hasPhysicalQuality(file, lightweight). hasRole(file, storageContainerRole). affordsTask(file, storageTask).
}).
#pos(e96@100, {hasAffordance(file, change)}, {}, {
  obj(file). hasPhysicalQuality(file, lightweight). hasRole(file, storageContainerRole). affordsTask(file, storageTask).
}).
#pos(e97@100, {hasAffordance(file, file)}, {}, {
  obj(file). hasPhysicalQuality(file, lightweight). hasRole(file, storageContainerRole). affordsTask(file, storageTask).
}).
#pos(e98@100, {hasAffordance(file, fix)}, {}, {
  obj(file). hasPhysicalQuality(file, lightweight). hasRole(file, storageContainerRole). affordsTask(file, storageTask).
}).
#pos(e99@100, {hasAffordance(file, grasp)}, {}, {
  obj(file). hasPhysicalQuality(file, lightweight). hasRole(file, storageContainerRole). affordsTask(file, storageTask).
}).
#pos(e100@100, {hasAffordance(file, hold)}, {}, {
  obj(file). hasPhysicalQuality(file, lightweight). hasRole(file, storageContainerRole). affordsTask(file, storageTask).
}).
#pos(e101@100, {hasAffordance(file, polish)}, {}, {
  obj(file). hasPhysicalQuality(file, lightweight). hasRole(file, storageContainerRole). affordsTask(file, storageTask).
}).
#pos(e102@100, {hasAffordance(file, repair)}, {}, {
  obj(file). hasPhysicalQuality(file, lightweight). hasRole(file, storageContainerRole). affordsTask(file, storageTask).
}).
#pos(e103@100, {hasAffordance(floor, contain)}, {}, {
  obj(floor). hasPhysicalQuality(floor, heavy). hasPhysicalQuality(floor, rigid). hasRole(floor, furnitureRole). affordsTask(floor, leisureTask). affordsTask(floor, storageTask).
}).
#pos(e104@100, {hasAffordance(floor, support)}, {}, {
  obj(floor). hasPhysicalQuality(floor, heavy). hasPhysicalQuality(floor, rigid). hasRole(floor, furnitureRole). affordsTask(floor, leisureTask). affordsTask(floor, storageTask).
}).
#pos(e105@100, {hasAffordance(food_can, roll)}, {}, {
  obj(food_can). hasRole(food_can, storageContainerRole). affordsTask(food_can, storageTask).
}).
#pos(e106@100, {hasAffordance(food_can, wrap)}, {}, {
  obj(food_can). hasRole(food_can, storageContainerRole). affordsTask(food_can, storageTask).
}).
#pos(e107@100, {hasAffordance(footstool, contain)}, {}, {
  obj(footstool). hasPhysicalQuality(footstool, fragile). hasPhysicalQuality(footstool, rigid). hasRole(footstool, furnitureRole). affordsTask(footstool, leisureTask). affordsTask(footstool, storageTask).
}).
#pos(e108@100, {hasAffordance(footstool, increase)}, {}, {
  obj(footstool). hasPhysicalQuality(footstool, fragile). hasPhysicalQuality(footstool, rigid). hasRole(footstool, furnitureRole). affordsTask(footstool, leisureTask). affordsTask(footstool, storageTask).
}).
#pos(e109@100, {hasAffordance(footstool, pick)}, {}, {
  obj(footstool). hasPhysicalQuality(footstool, fragile). hasPhysicalQuality(footstool, rigid). hasRole(footstool, furnitureRole). affordsTask(footstool, leisureTask). affordsTask(footstool, storageTask).
}).
#pos(e110@100, {hasAffordance(footstool, support)}, {}, {
  obj(footstool). hasPhysicalQuality(footstool, fragile). hasPhysicalQuality(footstool, rigid). hasRole(footstool, furnitureRole). affordsTask(footstool, leisureTask). affordsTask(footstool, storageTask).
}).
#pos(e111@100, {hasAffordance(fork, break)}, {}, {
  obj(fork). hasPhysicalQuality(fork, rigid). hasPhysicalQuality(fork, sharp). hasRole(fork, utensilRole). affordsTask(fork, eatingDrinkingTask). affordsTask(fork, foodPreparationTask).
}).
#pos(e112@100, {hasAffordance(fork, change)}, {}, {
  obj(fork). hasPhysicalQuality(fork, rigid). hasPhysicalQuality(fork, sharp). hasRole(fork, utensilRole). affordsTask(fork, eatingDrinkingTask). affordsTask(fork, foodPreparationTask).
}).
#pos(e113@100, {hasAffordance(fork, cut)}, {}, {
  obj(fork). hasPhysicalQuality(fork, rigid). hasPhysicalQuality(fork, sharp). hasRole(fork, utensilRole). affordsTask(fork, eatingDrinkingTask). affordsTask(fork, foodPreparationTask).
}).
#pos(e114@100, {hasAffordance(fork, fix)}, {}, {
  obj(fork). hasPhysicalQuality(fork, rigid). hasPhysicalQuality(fork, sharp). hasRole(fork, utensilRole). affordsTask(fork, eatingDrinkingTask). affordsTask(fork, foodPreparationTask).
}).
#pos(e115@100, {hasAffordance(fork, mix)}, {}, {
  obj(fork). hasPhysicalQuality(fork, rigid). hasPhysicalQuality(fork, sharp). hasRole(fork, utensilRole). affordsTask(fork, eatingDrinkingTask). affordsTask(fork, foodPreparationTask).
}).
#pos(e116@100, {hasAffordance(fork, pick)}, {}, {
  obj(fork). hasPhysicalQuality(fork, rigid). hasPhysicalQuality(fork, sharp). hasRole(fork, utensilRole). affordsTask(fork, eatingDrinkingTask). affordsTask(fork, foodPreparationTask).
}).
#pos(e117@100, {hasAffordance(fork, repair)}, {}, {
  obj(fork). hasPhysicalQuality(fork, rigid). hasPhysicalQuality(fork, sharp). hasRole(fork, utensilRole). affordsTask(fork, eatingDrinkingTask). affordsTask(fork, foodPreparationTask).
}).
#pos(e118@100, {hasAffordance(fridge, contain)}, {}, {
  obj(fridge). hasPhysicalQuality(fridge, electronic). hasPhysicalQuality(fridge, heavy). hasRole(fridge, applianceRole). affordsTask(fridge, storageTask).
}).
#pos(e119@100, {hasAffordance(fridge, cool)}, {}, {
  obj(fridge). hasPhysicalQuality(fridge, electronic). hasPhysicalQuality(fridge, heavy). hasRole(fridge, applianceRole). affordsTask(fridge, storageTask).
}).
#pos(e120@100, {hasAffordance(fridge, store)}, {}, {
  obj(fridge). hasPhysicalQuality(fridge, electronic). hasPhysicalQuality(fridge, heavy). hasRole(fridge, applianceRole). affordsTask(fridge, storageTask).
}).
#pos(e121@100, {hasAffordance(garbage_can, dispose)}, {}, {
  obj(garbage_can). hasPhysicalQuality(garbage_can, heavy). hasRole(garbage_can, storageContainerRole). affordsTask(garbage_can, wasteDisposalTask).
}).
#pos(e122@100, {hasAffordance(glue_stick, grasp)}, {}, {
  obj(glue_stick). hasPhysicalQuality(glue_stick, fragile). hasPhysicalQuality(glue_stick, liquid). hasRole(glue_stick, toolRole). affordsTask(glue_stick, maintenanceTask).
}).
#pos(e123@100, {hasAffordance(gutter, change)}, {}, {
  obj(gutter). hasPhysicalQuality(gutter, heavy). hasPhysicalQuality(gutter, rigid). hasRole(gutter, toolRole). affordsTask(gutter, maintenanceTask).
}).
#pos(e124@100, {hasAffordance(gutter, fix)}, {}, {
  obj(gutter). hasPhysicalQuality(gutter, heavy). hasPhysicalQuality(gutter, rigid). hasRole(gutter, toolRole). affordsTask(gutter, maintenanceTask).
}).
#pos(e125@100, {hasAffordance(gutter, grasp)}, {}, {
  obj(gutter). hasPhysicalQuality(gutter, heavy). hasPhysicalQuality(gutter, rigid). hasRole(gutter, toolRole). affordsTask(gutter, maintenanceTask).
}).
#pos(e126@100, {hasAffordance(gutter, hold)}, {}, {
  obj(gutter). hasPhysicalQuality(gutter, heavy). hasPhysicalQuality(gutter, rigid). hasRole(gutter, toolRole). affordsTask(gutter, maintenanceTask).
}).
#pos(e127@100, {hasAffordance(gutter, repair)}, {}, {
  obj(gutter). hasPhysicalQuality(gutter, heavy). hasPhysicalQuality(gutter, rigid). hasRole(gutter, toolRole). affordsTask(gutter, maintenanceTask).
}).
#pos(e128@100, {hasAffordance(hammer, break)}, {}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e129@100, {hasAffordance(hammer, change)}, {}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e130@100, {hasAffordance(hammer, clean)}, {}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e131@100, {hasAffordance(hammer, control)}, {}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e132@100, {hasAffordance(hammer, fix)}, {}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e133@100, {hasAffordance(hammer, hammer)}, {}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e134@100, {hasAffordance(hammer, handle)}, {}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e135@100, {hasAffordance(hammer, install)}, {}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e136@100, {hasAffordance(hammer, operate)}, {}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e137@100, {hasAffordance(hammer, plug)}, {}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e138@100, {hasAffordance(hammer, repair)}, {}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e139@100, {hasAffordance(hammer, wash)}, {}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e140@100, {hasAffordance(jack, break)}, {}, {
  obj(jack). hasPhysicalQuality(jack, heavy). hasPhysicalQuality(jack, rigid). hasRole(jack, toolRole). affordsTask(jack, maintenanceTask).
}).
#pos(e141@100, {hasAffordance(jack, change)}, {}, {
  obj(jack). hasPhysicalQuality(jack, heavy). hasPhysicalQuality(jack, rigid). hasRole(jack, toolRole). affordsTask(jack, maintenanceTask).
}).
#pos(e142@100, {hasAffordance(jack, control)}, {}, {
  obj(jack). hasPhysicalQuality(jack, heavy). hasPhysicalQuality(jack, rigid). hasRole(jack, toolRole). affordsTask(jack, maintenanceTask).
}).
#pos(e143@100, {hasAffordance(jack, fix)}, {}, {
  obj(jack). hasPhysicalQuality(jack, heavy). hasPhysicalQuality(jack, rigid). hasRole(jack, toolRole). affordsTask(jack, maintenanceTask).
}).
#pos(e144@100, {hasAffordance(jack, handle)}, {}, {
  obj(jack). hasPhysicalQuality(jack, heavy). hasPhysicalQuality(jack, rigid). hasRole(jack, toolRole). affordsTask(jack, maintenanceTask).
}).
#pos(e145@100, {hasAffordance(jack, lift)}, {}, {
  obj(jack). hasPhysicalQuality(jack, heavy). hasPhysicalQuality(jack, rigid). hasRole(jack, toolRole). affordsTask(jack, maintenanceTask).
}).
#pos(e146@100, {hasAffordance(jack, operate)}, {}, {
  obj(jack). hasPhysicalQuality(jack, heavy). hasPhysicalQuality(jack, rigid). hasRole(jack, toolRole). affordsTask(jack, maintenanceTask).
}).
#pos(e147@100, {hasAffordance(jack, repair)}, {}, {
  obj(jack). hasPhysicalQuality(jack, heavy). hasPhysicalQuality(jack, rigid). hasRole(jack, toolRole). affordsTask(jack, maintenanceTask).
}).
#pos(e148@100, {hasAffordance(kettle, be_heated)}, {}, {
  obj(kettle). hasPhysicalQuality(kettle, heated). hasPhysicalQuality(kettle, heavy). hasRole(kettle, cookwareRole). affordsTask(kettle, foodPreparationTask).
}).
#pos(e149@100, {hasAffordance(kettle, carry)}, {}, {
  obj(kettle). hasPhysicalQuality(kettle, heated). hasPhysicalQuality(kettle, heavy). hasRole(kettle, cookwareRole). affordsTask(kettle, foodPreparationTask).
}).
#pos(e150@100, {hasAffordance(kettle, contain)}, {}, {
  obj(kettle). hasPhysicalQuality(kettle, heated). hasPhysicalQuality(kettle, heavy). hasRole(kettle, cookwareRole). affordsTask(kettle, foodPreparationTask).
}).
#pos(e151@100, {hasAffordance(kettle, pick)}, {}, {
  obj(kettle). hasPhysicalQuality(kettle, heated). hasPhysicalQuality(kettle, heavy). hasRole(kettle, cookwareRole). affordsTask(kettle, foodPreparationTask).
}).
#pos(e152@100, {hasAffordance(keyboard, grasp)}, {}, {
  obj(keyboard). hasPhysicalQuality(keyboard, electronic). hasPhysicalQuality(keyboard, lightweight). hasRole(keyboard, toolRole). affordsTask(keyboard, workStudyTask).
}).
#pos(e153@100, {hasAffordance(kleenex, dry)}, {}, {
  obj(kleenex). hasPhysicalQuality(kleenex, lightweight). hasPhysicalQuality(kleenex, soft_Deformable). hasPhysicalQuality(kleenex, washable). hasRole(kleenex, consumableRole). affordsTask(kleenex, hygieneTask).
}).
#pos(e154@100, {hasAffordance(kleenex, grasp)}, {}, {
  obj(kleenex). hasPhysicalQuality(kleenex, lightweight). hasPhysicalQuality(kleenex, soft_Deformable). hasPhysicalQuality(kleenex, washable). hasRole(kleenex, consumableRole). affordsTask(kleenex, hygieneTask).
}).
#pos(e155@100, {hasAffordance(knife, break)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e156@100, {hasAffordance(knife, carve)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e157@100, {hasAffordance(knife, change)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e158@100, {hasAffordance(knife, crack)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e159@100, {hasAffordance(knife, cube)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e160@100, {hasAffordance(knife, cut)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e161@100, {hasAffordance(knife, dice)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e162@100, {hasAffordance(knife, fix)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e163@100, {hasAffordance(knife, mix)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e164@100, {hasAffordance(knife, peel)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e165@100, {hasAffordance(knife, pick)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e166@100, {hasAffordance(knife, repair)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e167@100, {hasAffordance(knife, separate)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e168@100, {hasAffordance(knife, skin)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e169@100, {hasAffordance(lawn_mower, change)}, {}, {
  obj(lawn_mower). hasPhysicalQuality(lawn_mower, heavy). hasPhysicalQuality(lawn_mower, rigid). hasRole(lawn_mower, toolRole). affordsTask(lawn_mower, maintenanceTask).
}).
#pos(e170@100, {hasAffordance(lawn_mower, fix)}, {}, {
  obj(lawn_mower). hasPhysicalQuality(lawn_mower, heavy). hasPhysicalQuality(lawn_mower, rigid). hasRole(lawn_mower, toolRole). affordsTask(lawn_mower, maintenanceTask).
}).
#pos(e171@100, {hasAffordance(lawn_mower, repair)}, {}, {
  obj(lawn_mower). hasPhysicalQuality(lawn_mower, heavy). hasPhysicalQuality(lawn_mower, rigid). hasRole(lawn_mower, toolRole). affordsTask(lawn_mower, maintenanceTask).
}).
#pos(e172@100, {hasAffordance(lettuce, cut)}, {}, {
  obj(lettuce). hasPhysicalQuality(lettuce, perishable). hasRole(lettuce, consumableRole). affordsTask(lettuce, eatingDrinkingTask).
}).
#pos(e173@100, {hasAffordance(lettuce, eat)}, {}, {
  obj(lettuce). hasPhysicalQuality(lettuce, perishable). hasRole(lettuce, consumableRole). affordsTask(lettuce, eatingDrinkingTask).
}).
#pos(e174@100, {hasAffordance(lettuce, pick)}, {}, {
  obj(lettuce). hasPhysicalQuality(lettuce, perishable). hasRole(lettuce, consumableRole). affordsTask(lettuce, eatingDrinkingTask).
}).
#pos(e175@100, {hasAffordance(lightbulb, grasp)}, {}, {
  obj(lightbulb). hasPhysicalQuality(lightbulb, electronic). hasPhysicalQuality(lightbulb, lightweight). hasRole(lightbulb, lightingRole). affordsTask(lightbulb, leisureTask).
}).
#pos(e176@100, {hasAffordance(lightbulb, illuminate)}, {}, {
  obj(lightbulb). hasPhysicalQuality(lightbulb, electronic). hasPhysicalQuality(lightbulb, lightweight). hasRole(lightbulb, lightingRole). affordsTask(lightbulb, leisureTask).
}).
#pos(e177@100, {hasAffordance(marker, grasp)}, {}, {
  obj(marker). hasPhysicalQuality(marker, lightweight). hasRole(marker, toolRole).
}).
#pos(e178@100, {hasAffordance(microwave, contain)}, {}, {
  obj(microwave). hasPhysicalQuality(microwave, electronic). hasPhysicalQuality(microwave, heated). hasPhysicalQuality(microwave, heavy). hasRole(microwave, applianceRole). affordsTask(microwave, foodPreparationTask).
}).
#pos(e179@100, {hasAffordance(microwave, heat)}, {}, {
  obj(microwave). hasPhysicalQuality(microwave, electronic). hasPhysicalQuality(microwave, heated). hasPhysicalQuality(microwave, heavy). hasRole(microwave, applianceRole). affordsTask(microwave, foodPreparationTask).
}).
#pos(e180@100, {hasAffordance(microwave, operate)}, {}, {
  obj(microwave). hasPhysicalQuality(microwave, electronic). hasPhysicalQuality(microwave, heated). hasPhysicalQuality(microwave, heavy). hasRole(microwave, applianceRole). affordsTask(microwave, foodPreparationTask).
}).
#pos(e181@100, {hasAffordance(mirror, break)}, {}, {
  obj(mirror). hasPhysicalQuality(mirror, rigid). hasRole(mirror, decorationRole). affordsTask(mirror, leisureTask).
}).
#pos(e182@100, {hasAffordance(mug, be_heated)}, {}, {
  obj(mug). hasPhysicalQuality(mug, lightweight). hasPhysicalQuality(mug, liquid). hasRole(mug, utensilRole). affordsTask(mug, eatingDrinkingTask).
}).
#pos(e183@100, {hasAffordance(mug, break)}, {}, {
  obj(mug). hasPhysicalQuality(mug, lightweight). hasPhysicalQuality(mug, liquid). hasRole(mug, utensilRole). affordsTask(mug, eatingDrinkingTask).
}).
#pos(e184@100, {hasAffordance(mug, carry)}, {}, {
  obj(mug). hasPhysicalQuality(mug, lightweight). hasPhysicalQuality(mug, liquid). hasRole(mug, utensilRole). affordsTask(mug, eatingDrinkingTask).
}).
#pos(e185@100, {hasAffordance(mug, contain)}, {}, {
  obj(mug). hasPhysicalQuality(mug, lightweight). hasPhysicalQuality(mug, liquid). hasRole(mug, utensilRole). affordsTask(mug, eatingDrinkingTask).
}).
#pos(e186@100, {hasAffordance(mug, pick)}, {}, {
  obj(mug). hasPhysicalQuality(mug, lightweight). hasPhysicalQuality(mug, liquid). hasRole(mug, utensilRole). affordsTask(mug, eatingDrinkingTask).
}).
#pos(e187@100, {hasAffordance(newspaper, clean)}, {}, {
  obj(newspaper). hasPhysicalQuality(newspaper, lightweight). hasRole(newspaper, documentRole).
}).
#pos(e188@100, {hasAffordance(newspaper, pick)}, {}, {
  obj(newspaper). hasPhysicalQuality(newspaper, lightweight). hasRole(newspaper, documentRole).
}).
#pos(e189@100, {hasAffordance(newspaper, read)}, {}, {
  obj(newspaper). hasPhysicalQuality(newspaper, lightweight). hasRole(newspaper, documentRole).
}).
#pos(e190@100, {hasAffordance(notebook, grasp)}, {}, {
  obj(notebook). hasPhysicalQuality(notebook, lightweight). hasPhysicalQuality(notebook, washable). hasRole(notebook, documentRole). affordsTask(notebook, workStudyTask).
}).
#pos(e191@100, {hasAffordance(ottoman, comfort)}, {}, {
  obj(ottoman). hasPhysicalQuality(ottoman, heavy). hasPhysicalQuality(ottoman, soft_Deformable). hasRole(ottoman, furnitureRole). affordsTask(ottoman, leisureTask).
}).
#pos(e192@100, {hasAffordance(ottoman, contain)}, {}, {
  obj(ottoman). hasPhysicalQuality(ottoman, heavy). hasPhysicalQuality(ottoman, soft_Deformable). hasRole(ottoman, furnitureRole). affordsTask(ottoman, leisureTask).
}).
#pos(e193@100, {hasAffordance(ottoman, increase)}, {}, {
  obj(ottoman). hasPhysicalQuality(ottoman, heavy). hasPhysicalQuality(ottoman, soft_Deformable). hasRole(ottoman, furnitureRole). affordsTask(ottoman, leisureTask).
}).
#pos(e194@100, {hasAffordance(ottoman, support)}, {}, {
  obj(ottoman). hasPhysicalQuality(ottoman, heavy). hasPhysicalQuality(ottoman, soft_Deformable). hasRole(ottoman, furnitureRole). affordsTask(ottoman, leisureTask).
}).
#pos(e195@100, {hasAffordance(oven, heat)}, {}, {
  obj(oven). hasPhysicalQuality(oven, heated). hasRole(oven, cookwareRole). affordsTask(oven, foodPreparationTask).
}).
#pos(e196@100, {hasAffordance(painting, decorate)}, {}, {
  obj(painting). hasPhysicalQuality(painting, lightweight). hasRole(painting, decorationRole). affordsTask(painting, leisureTask).
}).
#pos(e197@100, {hasAffordance(pan, be_heated)}, {}, {
  obj(pan). hasPhysicalQuality(pan, heated). hasPhysicalQuality(pan, rigid). hasRole(pan, cookwareRole). affordsTask(pan, foodPreparationTask).
}).
#pos(e198@100, {hasAffordance(pan, carry)}, {}, {
  obj(pan). hasPhysicalQuality(pan, heated). hasPhysicalQuality(pan, rigid). hasRole(pan, cookwareRole). affordsTask(pan, foodPreparationTask).
}).
#pos(e199@100, {hasAffordance(pan, contain)}, {}, {
  obj(pan). hasPhysicalQuality(pan, heated). hasPhysicalQuality(pan, rigid). hasRole(pan, cookwareRole). affordsTask(pan, foodPreparationTask).
}).
#pos(e200@100, {hasAffordance(pan, pick)}, {}, {
  obj(pan). hasPhysicalQuality(pan, heated). hasPhysicalQuality(pan, rigid). hasRole(pan, cookwareRole). affordsTask(pan, foodPreparationTask).
}).
#pos(e201@100, {hasAffordance(pen, pick)}, {}, {
  obj(pen). hasPhysicalQuality(pen, lightweight). hasPhysicalQuality(pen, rigid). hasRole(pen, toolRole).
}).
#pos(e202@100, {hasAffordance(pen, write)}, {}, {
  obj(pen). hasPhysicalQuality(pen, lightweight). hasPhysicalQuality(pen, rigid). hasRole(pen, toolRole).
}).
#pos(e203@100, {hasAffordance(pencil, pick)}, {}, {
  obj(pencil). hasPhysicalQuality(pencil, lightweight). hasPhysicalQuality(pencil, rigid). hasRole(pencil, toolRole).
}).
#pos(e204@100, {hasAffordance(pencil, write)}, {}, {
  obj(pencil). hasPhysicalQuality(pencil, lightweight). hasPhysicalQuality(pencil, rigid). hasRole(pencil, toolRole).
}).
#pos(e205@100, {hasAffordance(phillips_screwdriver, change)}, {}, {
  obj(phillips_screwdriver). hasPhysicalQuality(phillips_screwdriver, heavy). hasPhysicalQuality(phillips_screwdriver, rigid). hasRole(phillips_screwdriver, toolRole). affordsTask(phillips_screwdriver, maintenanceTask).
}).
#pos(e206@100, {hasAffordance(phillips_screwdriver, fix)}, {}, {
  obj(phillips_screwdriver). hasPhysicalQuality(phillips_screwdriver, heavy). hasPhysicalQuality(phillips_screwdriver, rigid). hasRole(phillips_screwdriver, toolRole). affordsTask(phillips_screwdriver, maintenanceTask).
}).
#pos(e207@100, {hasAffordance(phillips_screwdriver, grasp)}, {}, {
  obj(phillips_screwdriver). hasPhysicalQuality(phillips_screwdriver, heavy). hasPhysicalQuality(phillips_screwdriver, rigid). hasRole(phillips_screwdriver, toolRole). affordsTask(phillips_screwdriver, maintenanceTask).
}).
#pos(e208@100, {hasAffordance(phillips_screwdriver, hold)}, {}, {
  obj(phillips_screwdriver). hasPhysicalQuality(phillips_screwdriver, heavy). hasPhysicalQuality(phillips_screwdriver, rigid). hasRole(phillips_screwdriver, toolRole). affordsTask(phillips_screwdriver, maintenanceTask).
}).
#pos(e209@100, {hasAffordance(phillips_screwdriver, poke)}, {}, {
  obj(phillips_screwdriver). hasPhysicalQuality(phillips_screwdriver, heavy). hasPhysicalQuality(phillips_screwdriver, rigid). hasRole(phillips_screwdriver, toolRole). affordsTask(phillips_screwdriver, maintenanceTask).
}).
#pos(e210@100, {hasAffordance(phillips_screwdriver, repair)}, {}, {
  obj(phillips_screwdriver). hasPhysicalQuality(phillips_screwdriver, heavy). hasPhysicalQuality(phillips_screwdriver, rigid). hasRole(phillips_screwdriver, toolRole). affordsTask(phillips_screwdriver, maintenanceTask).
}).
#pos(e211@100, {hasAffordance(phillips_screwdriver, screw)}, {}, {
  obj(phillips_screwdriver). hasPhysicalQuality(phillips_screwdriver, heavy). hasPhysicalQuality(phillips_screwdriver, rigid). hasRole(phillips_screwdriver, toolRole). affordsTask(phillips_screwdriver, maintenanceTask).
}).
#pos(e212@100, {hasAffordance(pillow, pick)}, {}, {
  obj(pillow). hasPhysicalQuality(pillow, lightweight). hasPhysicalQuality(pillow, soft_Deformable). hasRole(pillow, beddingRole). affordsTask(pillow, sleepingTask).
}).
#pos(e213@100, {hasAffordance(plate, be_heated)}, {}, {
  obj(plate). hasPhysicalQuality(plate, lightweight). hasPhysicalQuality(plate, rigid). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e214@100, {hasAffordance(plate, break)}, {}, {
  obj(plate). hasPhysicalQuality(plate, lightweight). hasPhysicalQuality(plate, rigid). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e215@100, {hasAffordance(plate, carry)}, {}, {
  obj(plate). hasPhysicalQuality(plate, lightweight). hasPhysicalQuality(plate, rigid). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e216@100, {hasAffordance(plate, contain)}, {}, {
  obj(plate). hasPhysicalQuality(plate, lightweight). hasPhysicalQuality(plate, rigid). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e217@100, {hasAffordance(plate, grasp)}, {}, {
  obj(plate). hasPhysicalQuality(plate, lightweight). hasPhysicalQuality(plate, rigid). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e218@100, {hasAffordance(plate, pick)}, {}, {
  obj(plate). hasPhysicalQuality(plate, lightweight). hasPhysicalQuality(plate, rigid). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e219@100, {hasAffordance(plate, support)}, {}, {
  obj(plate). hasPhysicalQuality(plate, lightweight). hasPhysicalQuality(plate, rigid). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e220@100, {hasAffordance(poster, decorate)}, {}, {
  obj(poster). hasPhysicalQuality(poster, lightweight). hasPhysicalQuality(poster, rigid). hasRole(poster, decorationRole). affordsTask(poster, leisureTask).
}).
#pos(e221@100, {hasAffordance(pot, be_heated)}, {}, {
  obj(pot). hasPhysicalQuality(pot, heated). hasPhysicalQuality(pot, heavy). hasPhysicalQuality(pot, rigid). hasRole(pot, cookwareRole). affordsTask(pot, foodPreparationTask).
}).
#pos(e222@100, {hasAffordance(pot, carry)}, {}, {
  obj(pot). hasPhysicalQuality(pot, heated). hasPhysicalQuality(pot, heavy). hasPhysicalQuality(pot, rigid). hasRole(pot, cookwareRole). affordsTask(pot, foodPreparationTask).
}).
#pos(e223@100, {hasAffordance(pot, contain)}, {}, {
  obj(pot). hasPhysicalQuality(pot, heated). hasPhysicalQuality(pot, heavy). hasPhysicalQuality(pot, rigid). hasRole(pot, cookwareRole). affordsTask(pot, foodPreparationTask).
}).
#pos(e224@100, {hasAffordance(pot, pick)}, {}, {
  obj(pot). hasPhysicalQuality(pot, heated). hasPhysicalQuality(pot, heavy). hasPhysicalQuality(pot, rigid). hasRole(pot, cookwareRole). affordsTask(pot, foodPreparationTask).
}).
#pos(e225@100, {hasAffordance(potato, cut)}, {}, {
  obj(potato). hasPhysicalQuality(potato, perishable). hasRole(potato, consumableRole). affordsTask(potato, eatingDrinkingTask).
}).
#pos(e226@100, {hasAffordance(potato, eat)}, {}, {
  obj(potato). hasPhysicalQuality(potato, perishable). hasRole(potato, consumableRole). affordsTask(potato, eatingDrinkingTask).
}).
#pos(e227@100, {hasAffordance(potato, pick)}, {}, {
  obj(potato). hasPhysicalQuality(potato, perishable). hasRole(potato, consumableRole). affordsTask(potato, eatingDrinkingTask).
}).
#pos(e228@100, {hasAffordance(remote_control, break)}, {}, {
  obj(remote_control). hasPhysicalQuality(remote_control, electronic). hasPhysicalQuality(remote_control, lightweight). hasRole(remote_control, toolRole). affordsTask(remote_control, leisureTask).
}).
#pos(e229@100, {hasAffordance(safe, contain)}, {}, {
  obj(safe). hasPhysicalQuality(safe, heavy). hasPhysicalQuality(safe, rigid). hasRole(safe, safetyEquipmentRole). affordsTask(safe, maintenanceTask).
}).
#pos(e230@100, {hasAffordance(safe, store)}, {}, {
  obj(safe). hasPhysicalQuality(safe, heavy). hasPhysicalQuality(safe, rigid). hasRole(safe, safetyEquipmentRole). affordsTask(safe, maintenanceTask).
}).
#pos(e231@100, {hasAffordance(salt, eat)}, {}, {
  obj(salt). hasPhysicalQuality(salt, granular). hasRole(salt, consumableRole). affordsTask(salt, foodPreparationTask).
}).
#pos(e232@100, {hasAffordance(saltshaker, pick)}, {}, {
  obj(saltshaker). hasPhysicalQuality(saltshaker, granular). hasRole(saltshaker, utensilRole). affordsTask(saltshaker, foodPreparationTask).
}).
#pos(e233@100, {hasAffordance(saw, change)}, {}, {
  obj(saw). hasPhysicalQuality(saw, heavy). hasPhysicalQuality(saw, rigid). hasRole(saw, toolRole). affordsTask(saw, maintenanceTask).
}).
#pos(e234@100, {hasAffordance(saw, cut)}, {}, {
  obj(saw). hasPhysicalQuality(saw, heavy). hasPhysicalQuality(saw, rigid). hasRole(saw, toolRole). affordsTask(saw, maintenanceTask).
}).
#pos(e235@100, {hasAffordance(saw, fix)}, {}, {
  obj(saw). hasPhysicalQuality(saw, heavy). hasPhysicalQuality(saw, rigid). hasRole(saw, toolRole). affordsTask(saw, maintenanceTask).
}).
#pos(e236@100, {hasAffordance(saw, grasp)}, {}, {
  obj(saw). hasPhysicalQuality(saw, heavy). hasPhysicalQuality(saw, rigid). hasRole(saw, toolRole). affordsTask(saw, maintenanceTask).
}).
#pos(e237@100, {hasAffordance(saw, hold)}, {}, {
  obj(saw). hasPhysicalQuality(saw, heavy). hasPhysicalQuality(saw, rigid). hasRole(saw, toolRole). affordsTask(saw, maintenanceTask).
}).
#pos(e238@100, {hasAffordance(saw, repair)}, {}, {
  obj(saw). hasPhysicalQuality(saw, heavy). hasPhysicalQuality(saw, rigid). hasRole(saw, toolRole). affordsTask(saw, maintenanceTask).
}).
#pos(e239@100, {hasAffordance(saw, saw)}, {}, {
  obj(saw). hasPhysicalQuality(saw, heavy). hasPhysicalQuality(saw, rigid). hasRole(saw, toolRole). affordsTask(saw, maintenanceTask).
}).
#pos(e240@100, {hasAffordance(saw, separate)}, {}, {
  obj(saw). hasPhysicalQuality(saw, heavy). hasPhysicalQuality(saw, rigid). hasRole(saw, toolRole). affordsTask(saw, maintenanceTask).
}).
#pos(e241@100, {hasAffordance(scissors, change)}, {}, {
  obj(scissors). hasPhysicalQuality(scissors, rigid). hasPhysicalQuality(scissors, sharp). hasRole(scissors, toolRole). affordsTask(scissors, foodPreparationTask).
}).
#pos(e242@100, {hasAffordance(scissors, cut)}, {}, {
  obj(scissors). hasPhysicalQuality(scissors, rigid). hasPhysicalQuality(scissors, sharp). hasRole(scissors, toolRole). affordsTask(scissors, foodPreparationTask).
}).
#pos(e243@100, {hasAffordance(scissors, fix)}, {}, {
  obj(scissors). hasPhysicalQuality(scissors, rigid). hasPhysicalQuality(scissors, sharp). hasRole(scissors, toolRole). affordsTask(scissors, foodPreparationTask).
}).
#pos(e244@100, {hasAffordance(scissors, grasp)}, {}, {
  obj(scissors). hasPhysicalQuality(scissors, rigid). hasPhysicalQuality(scissors, sharp). hasRole(scissors, toolRole). affordsTask(scissors, foodPreparationTask).
}).
#pos(e245@100, {hasAffordance(scissors, hold)}, {}, {
  obj(scissors). hasPhysicalQuality(scissors, rigid). hasPhysicalQuality(scissors, sharp). hasRole(scissors, toolRole). affordsTask(scissors, foodPreparationTask).
}).
#pos(e246@100, {hasAffordance(scissors, peel)}, {}, {
  obj(scissors). hasPhysicalQuality(scissors, rigid). hasPhysicalQuality(scissors, sharp). hasRole(scissors, toolRole). affordsTask(scissors, foodPreparationTask).
}).
#pos(e247@100, {hasAffordance(scissors, repair)}, {}, {
  obj(scissors). hasPhysicalQuality(scissors, rigid). hasPhysicalQuality(scissors, sharp). hasRole(scissors, toolRole). affordsTask(scissors, foodPreparationTask).
}).
#pos(e248@100, {hasAffordance(scissors, separate)}, {}, {
  obj(scissors). hasPhysicalQuality(scissors, rigid). hasPhysicalQuality(scissors, sharp). hasRole(scissors, toolRole). affordsTask(scissors, foodPreparationTask).
}).
#pos(e249@100, {hasAffordance(scissors, skin)}, {}, {
  obj(scissors). hasPhysicalQuality(scissors, rigid). hasPhysicalQuality(scissors, sharp). hasRole(scissors, toolRole). affordsTask(scissors, foodPreparationTask).
}).
#pos(e250@100, {hasAffordance(screwdriver, change)}, {}, {
  obj(screwdriver). hasPhysicalQuality(screwdriver, heavy). hasPhysicalQuality(screwdriver, rigid). hasRole(screwdriver, toolRole). affordsTask(screwdriver, maintenanceTask).
}).
#pos(e251@100, {hasAffordance(screwdriver, fix)}, {}, {
  obj(screwdriver). hasPhysicalQuality(screwdriver, heavy). hasPhysicalQuality(screwdriver, rigid). hasRole(screwdriver, toolRole). affordsTask(screwdriver, maintenanceTask).
}).
#pos(e252@100, {hasAffordance(screwdriver, grasp)}, {}, {
  obj(screwdriver). hasPhysicalQuality(screwdriver, heavy). hasPhysicalQuality(screwdriver, rigid). hasRole(screwdriver, toolRole). affordsTask(screwdriver, maintenanceTask).
}).
#pos(e253@100, {hasAffordance(screwdriver, hold)}, {}, {
  obj(screwdriver). hasPhysicalQuality(screwdriver, heavy). hasPhysicalQuality(screwdriver, rigid). hasRole(screwdriver, toolRole). affordsTask(screwdriver, maintenanceTask).
}).
#pos(e254@100, {hasAffordance(screwdriver, poke)}, {}, {
  obj(screwdriver). hasPhysicalQuality(screwdriver, heavy). hasPhysicalQuality(screwdriver, rigid). hasRole(screwdriver, toolRole). affordsTask(screwdriver, maintenanceTask).
}).
#pos(e255@100, {hasAffordance(screwdriver, repair)}, {}, {
  obj(screwdriver). hasPhysicalQuality(screwdriver, heavy). hasPhysicalQuality(screwdriver, rigid). hasRole(screwdriver, toolRole). affordsTask(screwdriver, maintenanceTask).
}).
#pos(e256@100, {hasAffordance(screwdriver, screw)}, {}, {
  obj(screwdriver). hasPhysicalQuality(screwdriver, heavy). hasPhysicalQuality(screwdriver, rigid). hasRole(screwdriver, toolRole). affordsTask(screwdriver, maintenanceTask).
}).
#pos(e257@100, {hasAffordance(shampoo, wrap)}, {}, {
  obj(shampoo). hasPhysicalQuality(shampoo, liquid). hasRole(shampoo, cleaningToolRole). affordsTask(shampoo, hygieneTask).
}).
#pos(e258@100, {hasAffordance(shelf, contain)}, {}, {
  obj(shelf). hasPhysicalQuality(shelf, heavy). hasPhysicalQuality(shelf, rigid). hasRole(shelf, storageContainerRole). affordsTask(shelf, storageTask).
}).
#pos(e259@100, {hasAffordance(shelf, store)}, {}, {
  obj(shelf). hasPhysicalQuality(shelf, heavy). hasPhysicalQuality(shelf, rigid). hasRole(shelf, storageContainerRole). affordsTask(shelf, storageTask).
}).
#pos(e260@100, {hasAffordance(sink, contain)}, {}, {
  obj(sink). hasPhysicalQuality(sink, heavy). hasRole(sink, utensilRole). affordsTask(sink, cleaningTask). affordsTask(sink, eatingDrinkingTask). affordsTask(sink, hygieneTask).
}).
#pos(e261@100, {hasAffordance(sofa, comfort)}, {}, {
  obj(sofa). hasPhysicalQuality(sofa, heavy). hasPhysicalQuality(sofa, soft_Deformable). hasRole(sofa, furnitureRole). affordsTask(sofa, leisureTask). affordsTask(sofa, sleepingTask).
}).
#pos(e262@100, {hasAffordance(sofa, contain)}, {}, {
  obj(sofa). hasPhysicalQuality(sofa, heavy). hasPhysicalQuality(sofa, soft_Deformable). hasRole(sofa, furnitureRole). affordsTask(sofa, leisureTask). affordsTask(sofa, sleepingTask).
}).
#pos(e263@100, {hasAffordance(sofa, increase)}, {}, {
  obj(sofa). hasPhysicalQuality(sofa, heavy). hasPhysicalQuality(sofa, soft_Deformable). hasRole(sofa, furnitureRole). affordsTask(sofa, leisureTask). affordsTask(sofa, sleepingTask).
}).
#pos(e264@100, {hasAffordance(sofa, support)}, {}, {
  obj(sofa). hasPhysicalQuality(sofa, heavy). hasPhysicalQuality(sofa, soft_Deformable). hasRole(sofa, furnitureRole). affordsTask(sofa, leisureTask). affordsTask(sofa, sleepingTask).
}).
#pos(e265@100, {hasAffordance(spatula, break)}, {}, {
  obj(spatula). hasPhysicalQuality(spatula, lightweight). hasPhysicalQuality(spatula, rigid). hasPhysicalQuality(spatula, sharp). hasRole(spatula, utensilRole). affordsTask(spatula, foodPreparationTask).
}).
#pos(e266@100, {hasAffordance(spatula, change)}, {}, {
  obj(spatula). hasPhysicalQuality(spatula, lightweight). hasPhysicalQuality(spatula, rigid). hasPhysicalQuality(spatula, sharp). hasRole(spatula, utensilRole). affordsTask(spatula, foodPreparationTask).
}).
#pos(e267@100, {hasAffordance(spatula, cut)}, {}, {
  obj(spatula). hasPhysicalQuality(spatula, lightweight). hasPhysicalQuality(spatula, rigid). hasPhysicalQuality(spatula, sharp). hasRole(spatula, utensilRole). affordsTask(spatula, foodPreparationTask).
}).
#pos(e268@100, {hasAffordance(spatula, fix)}, {}, {
  obj(spatula). hasPhysicalQuality(spatula, lightweight). hasPhysicalQuality(spatula, rigid). hasPhysicalQuality(spatula, sharp). hasRole(spatula, utensilRole). affordsTask(spatula, foodPreparationTask).
}).
#pos(e269@100, {hasAffordance(spatula, grasp)}, {}, {
  obj(spatula). hasPhysicalQuality(spatula, lightweight). hasPhysicalQuality(spatula, rigid). hasPhysicalQuality(spatula, sharp). hasRole(spatula, utensilRole). affordsTask(spatula, foodPreparationTask).
}).
#pos(e270@100, {hasAffordance(spatula, hold)}, {}, {
  obj(spatula). hasPhysicalQuality(spatula, lightweight). hasPhysicalQuality(spatula, rigid). hasPhysicalQuality(spatula, sharp). hasRole(spatula, utensilRole). affordsTask(spatula, foodPreparationTask).
}).
#pos(e271@100, {hasAffordance(spatula, mix)}, {}, {
  obj(spatula). hasPhysicalQuality(spatula, lightweight). hasPhysicalQuality(spatula, rigid). hasPhysicalQuality(spatula, sharp). hasRole(spatula, utensilRole). affordsTask(spatula, foodPreparationTask).
}).
#pos(e272@100, {hasAffordance(spatula, pick)}, {}, {
  obj(spatula). hasPhysicalQuality(spatula, lightweight). hasPhysicalQuality(spatula, rigid). hasPhysicalQuality(spatula, sharp). hasRole(spatula, utensilRole). affordsTask(spatula, foodPreparationTask).
}).
#pos(e273@100, {hasAffordance(spatula, repair)}, {}, {
  obj(spatula). hasPhysicalQuality(spatula, lightweight). hasPhysicalQuality(spatula, rigid). hasPhysicalQuality(spatula, sharp). hasRole(spatula, utensilRole). affordsTask(spatula, foodPreparationTask).
}).
#pos(e274@100, {hasAffordance(spatula, spread)}, {}, {
  obj(spatula). hasPhysicalQuality(spatula, lightweight). hasPhysicalQuality(spatula, rigid). hasPhysicalQuality(spatula, sharp). hasRole(spatula, utensilRole). affordsTask(spatula, foodPreparationTask).
}).
#pos(e275@100, {hasAffordance(spoon, break)}, {}, {
  obj(spoon). hasPhysicalQuality(spoon, lightweight). hasPhysicalQuality(spoon, rigid). hasPhysicalQuality(spoon, sharp). hasRole(spoon, utensilRole). affordsTask(spoon, eatingDrinkingTask). affordsTask(spoon, foodPreparationTask).
}).
#pos(e276@100, {hasAffordance(spoon, cut)}, {}, {
  obj(spoon). hasPhysicalQuality(spoon, lightweight). hasPhysicalQuality(spoon, rigid). hasPhysicalQuality(spoon, sharp). hasRole(spoon, utensilRole). affordsTask(spoon, eatingDrinkingTask). affordsTask(spoon, foodPreparationTask).
}).
#pos(e277@100, {hasAffordance(spoon, mix)}, {}, {
  obj(spoon). hasPhysicalQuality(spoon, lightweight). hasPhysicalQuality(spoon, rigid). hasPhysicalQuality(spoon, sharp). hasRole(spoon, utensilRole). affordsTask(spoon, eatingDrinkingTask). affordsTask(spoon, foodPreparationTask).
}).
#pos(e278@100, {hasAffordance(spoon, pick)}, {}, {
  obj(spoon). hasPhysicalQuality(spoon, lightweight). hasPhysicalQuality(spoon, rigid). hasPhysicalQuality(spoon, sharp). hasRole(spoon, utensilRole). affordsTask(spoon, eatingDrinkingTask). affordsTask(spoon, foodPreparationTask).
}).
#pos(e279@100, {hasAffordance(stapler, grasp)}, {}, {
  obj(stapler). hasPhysicalQuality(stapler, heavy). hasPhysicalQuality(stapler, rigid). hasRole(stapler, toolRole). affordsTask(stapler, maintenanceTask).
}).
#pos(e280@100, {hasAffordance(stapler, staple)}, {}, {
  obj(stapler). hasPhysicalQuality(stapler, heavy). hasPhysicalQuality(stapler, rigid). hasRole(stapler, toolRole). affordsTask(stapler, maintenanceTask).
}).
#pos(e281@100, {hasAffordance(statue, break)}, {}, {
  obj(statue). hasPhysicalQuality(statue, rigid). hasRole(statue, decorationRole).
}).
#pos(e282@100, {hasAffordance(statue, decorate)}, {}, {
  obj(statue). hasPhysicalQuality(statue, rigid). hasRole(statue, decorationRole).
}).
#pos(e283@100, {hasAffordance(statue, pick)}, {}, {
  obj(statue). hasPhysicalQuality(statue, rigid). hasRole(statue, decorationRole).
}).
#pos(e284@100, {hasAffordance(tap, change)}, {}, {
  obj(tap). hasPhysicalQuality(tap, lightweight). hasPhysicalQuality(tap, soft_Deformable). hasRole(tap, toolRole). affordsTask(tap, hygieneTask). affordsTask(tap, leisureTask).
}).
#pos(e285@100, {hasAffordance(tap, cut)}, {}, {
  obj(tap). hasPhysicalQuality(tap, lightweight). hasPhysicalQuality(tap, soft_Deformable). hasRole(tap, toolRole). affordsTask(tap, hygieneTask). affordsTask(tap, leisureTask).
}).
#pos(e286@100, {hasAffordance(tap, fix)}, {}, {
  obj(tap). hasPhysicalQuality(tap, lightweight). hasPhysicalQuality(tap, soft_Deformable). hasRole(tap, toolRole). affordsTask(tap, hygieneTask). affordsTask(tap, leisureTask).
}).
#pos(e287@100, {hasAffordance(tap, repair)}, {}, {
  obj(tap). hasPhysicalQuality(tap, lightweight). hasPhysicalQuality(tap, soft_Deformable). hasRole(tap, toolRole). affordsTask(tap, hygieneTask). affordsTask(tap, leisureTask).
}).
#pos(e288@100, {hasAffordance(tap, separate)}, {}, {
  obj(tap). hasPhysicalQuality(tap, lightweight). hasPhysicalQuality(tap, soft_Deformable). hasRole(tap, toolRole). affordsTask(tap, hygieneTask). affordsTask(tap, leisureTask).
}).
#pos(e289@100, {hasAffordance(teddy_bear, decorate)}, {}, {
  obj(teddy_bear). hasPhysicalQuality(teddy_bear, lightweight). hasPhysicalQuality(teddy_bear, soft_Deformable). hasRole(teddy_bear, entertainmentRole). affordsTask(teddy_bear, leisureTask).
}).
#pos(e290@100, {hasAffordance(television, break)}, {}, {
  obj(television). hasPhysicalQuality(television, electronic). hasPhysicalQuality(television, heavy). hasRole(television, applianceRole). affordsTask(television, leisureTask).
}).
#pos(e291@100, {hasAffordance(television, entertain)}, {}, {
  obj(television). hasPhysicalQuality(television, electronic). hasPhysicalQuality(television, heavy). hasRole(television, applianceRole). affordsTask(television, leisureTask).
}).
#pos(e292@100, {hasAffordance(television, operate)}, {}, {
  obj(television). hasPhysicalQuality(television, electronic). hasPhysicalQuality(television, heavy). hasRole(television, applianceRole). affordsTask(television, leisureTask).
}).
#pos(e293@100, {hasAffordance(tire_iron, change)}, {}, {
  obj(tire_iron). hasPhysicalQuality(tire_iron, heavy). hasPhysicalQuality(tire_iron, rigid). hasRole(tire_iron, toolRole). affordsTask(tire_iron, maintenanceTask).
}).
#pos(e294@100, {hasAffordance(tire_iron, fix)}, {}, {
  obj(tire_iron). hasPhysicalQuality(tire_iron, heavy). hasPhysicalQuality(tire_iron, rigid). hasRole(tire_iron, toolRole). affordsTask(tire_iron, maintenanceTask).
}).
#pos(e295@100, {hasAffordance(tire_iron, grasp)}, {}, {
  obj(tire_iron). hasPhysicalQuality(tire_iron, heavy). hasPhysicalQuality(tire_iron, rigid). hasRole(tire_iron, toolRole). affordsTask(tire_iron, maintenanceTask).
}).
#pos(e296@100, {hasAffordance(tire_iron, hold)}, {}, {
  obj(tire_iron). hasPhysicalQuality(tire_iron, heavy). hasPhysicalQuality(tire_iron, rigid). hasRole(tire_iron, toolRole). affordsTask(tire_iron, maintenanceTask).
}).
#pos(e297@100, {hasAffordance(tire_iron, repair)}, {}, {
  obj(tire_iron). hasPhysicalQuality(tire_iron, heavy). hasPhysicalQuality(tire_iron, rigid). hasRole(tire_iron, toolRole). affordsTask(tire_iron, maintenanceTask).
}).
#pos(e298@100, {hasAffordance(toilet, contain)}, {}, {
  obj(toilet). hasPhysicalQuality(toilet, heavy). hasRole(toilet, furnitureRole). affordsTask(toilet, wasteDisposalTask).
}).
#pos(e299@100, {hasAffordance(toilet, dispose)}, {}, {
  obj(toilet). hasPhysicalQuality(toilet, heavy). hasRole(toilet, furnitureRole). affordsTask(toilet, wasteDisposalTask).
}).
#pos(e300@100, {hasAffordance(toilet, wash)}, {}, {
  obj(toilet). hasPhysicalQuality(toilet, heavy). hasRole(toilet, furnitureRole). affordsTask(toilet, wasteDisposalTask).
}).
#pos(e301@100, {hasAffordance(toilet_paper, clean)}, {}, {
  obj(toilet_paper). hasPhysicalQuality(toilet_paper, soft_Deformable). hasPhysicalQuality(toilet_paper, washable). hasRole(toilet_paper, consumableRole). affordsTask(toilet_paper, hygieneTask).
}).
#pos(e302@100, {hasAffordance(tomato, cut)}, {}, {
  obj(tomato). hasPhysicalQuality(tomato, perishable). hasRole(tomato, consumableRole). affordsTask(tomato, eatingDrinkingTask).
}).
#pos(e303@100, {hasAffordance(tomato, eat)}, {}, {
  obj(tomato). hasPhysicalQuality(tomato, perishable). hasRole(tomato, consumableRole). affordsTask(tomato, eatingDrinkingTask).
}).
#pos(e304@100, {hasAffordance(tomato, pick)}, {}, {
  obj(tomato). hasPhysicalQuality(tomato, perishable). hasRole(tomato, consumableRole). affordsTask(tomato, eatingDrinkingTask).
}).
#pos(e305@100, {hasAffordance(toothbrush, grasp)}, {}, {
  obj(toothbrush). hasPhysicalQuality(toothbrush, fragile). hasPhysicalQuality(toothbrush, lightweight). affordsTask(toothbrush, hygieneTask).
}).
#pos(e306@100, {hasAffordance(toothpaste, grasp)}, {}, {
  obj(toothpaste). hasPhysicalQuality(toothpaste, liquid). hasPhysicalQuality(toothpaste, toxic_Hazardous). hasRole(toothpaste, cleaningToolRole). affordsTask(toothpaste, hygieneTask).
}).
#pos(e307@100, {hasAffordance(toothpick, change)}, {}, {
  obj(toothpick). hasPhysicalQuality(toothpick, rigid). hasPhysicalQuality(toothpick, sharp). hasRole(toothpick, utensilRole). affordsTask(toothpick, eatingDrinkingTask). affordsTask(toothpick, foodPreparationTask).
}).
#pos(e308@100, {hasAffordance(toothpick, clean)}, {}, {
  obj(toothpick). hasPhysicalQuality(toothpick, rigid). hasPhysicalQuality(toothpick, sharp). hasRole(toothpick, utensilRole). affordsTask(toothpick, eatingDrinkingTask). affordsTask(toothpick, foodPreparationTask).
}).
#pos(e309@100, {hasAffordance(toothpick, fix)}, {}, {
  obj(toothpick). hasPhysicalQuality(toothpick, rigid). hasPhysicalQuality(toothpick, sharp). hasRole(toothpick, utensilRole). affordsTask(toothpick, eatingDrinkingTask). affordsTask(toothpick, foodPreparationTask).
}).
#pos(e310@100, {hasAffordance(toothpick, grasp)}, {}, {
  obj(toothpick). hasPhysicalQuality(toothpick, rigid). hasPhysicalQuality(toothpick, sharp). hasRole(toothpick, utensilRole). affordsTask(toothpick, eatingDrinkingTask). affordsTask(toothpick, foodPreparationTask).
}).
#pos(e311@100, {hasAffordance(toothpick, hold)}, {}, {
  obj(toothpick). hasPhysicalQuality(toothpick, rigid). hasPhysicalQuality(toothpick, sharp). hasRole(toothpick, utensilRole). affordsTask(toothpick, eatingDrinkingTask). affordsTask(toothpick, foodPreparationTask).
}).
#pos(e312@100, {hasAffordance(toothpick, pick)}, {}, {
  obj(toothpick). hasPhysicalQuality(toothpick, rigid). hasPhysicalQuality(toothpick, sharp). hasRole(toothpick, utensilRole). affordsTask(toothpick, eatingDrinkingTask). affordsTask(toothpick, foodPreparationTask).
}).
#pos(e313@100, {hasAffordance(toothpick, pierce)}, {}, {
  obj(toothpick). hasPhysicalQuality(toothpick, rigid). hasPhysicalQuality(toothpick, sharp). hasRole(toothpick, utensilRole). affordsTask(toothpick, eatingDrinkingTask). affordsTask(toothpick, foodPreparationTask).
}).
#pos(e314@100, {hasAffordance(toothpick, repair)}, {}, {
  obj(toothpick). hasPhysicalQuality(toothpick, rigid). hasPhysicalQuality(toothpick, sharp). hasRole(toothpick, utensilRole). affordsTask(toothpick, eatingDrinkingTask). affordsTask(toothpick, foodPreparationTask).
}).
#pos(e315@100, {hasAffordance(toothpick, stick)}, {}, {
  obj(toothpick). hasPhysicalQuality(toothpick, rigid). hasPhysicalQuality(toothpick, sharp). hasRole(toothpick, utensilRole). affordsTask(toothpick, eatingDrinkingTask). affordsTask(toothpick, foodPreparationTask).
}).
#pos(e316@100, {hasAffordance(towel, clean)}, {}, {
  obj(towel). hasPhysicalQuality(towel, soft_Deformable). hasPhysicalQuality(towel, washable). hasRole(towel, cleaningToolRole). affordsTask(towel, cleaningTask).
}).
#pos(e317@100, {hasAffordance(towel, pick)}, {}, {
  obj(towel). hasPhysicalQuality(towel, soft_Deformable). hasPhysicalQuality(towel, washable). hasRole(towel, cleaningToolRole). affordsTask(towel, cleaningTask).
}).
#pos(e318@100, {hasAffordance(vase, break)}, {}, {
  obj(vase). hasPhysicalQuality(vase, fragile). hasPhysicalQuality(vase, rigid). hasRole(vase, decorationRole). affordsTask(vase, storageTask).
}).
#pos(e319@100, {hasAffordance(vase, carry)}, {}, {
  obj(vase). hasPhysicalQuality(vase, fragile). hasPhysicalQuality(vase, rigid). hasRole(vase, decorationRole). affordsTask(vase, storageTask).
}).
#pos(e320@100, {hasAffordance(vase, pick)}, {}, {
  obj(vase). hasPhysicalQuality(vase, fragile). hasPhysicalQuality(vase, rigid). hasRole(vase, decorationRole). affordsTask(vase, storageTask).
}).
#pos(e321@100, {hasAffordance(window, break)}, {}, {
  obj(window). hasPhysicalQuality(window, rigid). hasRole(window, furnitureRole). affordsTask(window, leisureTask).
}).
#pos(e322@100, {hasAffordance(window, illuminate)}, {}, {
  obj(window). hasPhysicalQuality(window, rigid). hasRole(window, furnitureRole). affordsTask(window, leisureTask).
}).
#pos(e323@100, {hasAffordance(wrench, change)}, {}, {
  obj(wrench). hasPhysicalQuality(wrench, heavy). hasPhysicalQuality(wrench, rigid). hasRole(wrench, toolRole). affordsTask(wrench, maintenanceTask).
}).
#pos(e324@100, {hasAffordance(wrench, fix)}, {}, {
  obj(wrench). hasPhysicalQuality(wrench, heavy). hasPhysicalQuality(wrench, rigid). hasRole(wrench, toolRole). affordsTask(wrench, maintenanceTask).
}).
#pos(e325@100, {hasAffordance(wrench, grasp)}, {}, {
  obj(wrench). hasPhysicalQuality(wrench, heavy). hasPhysicalQuality(wrench, rigid). hasRole(wrench, toolRole). affordsTask(wrench, maintenanceTask).
}).
#pos(e326@100, {hasAffordance(wrench, hold)}, {}, {
  obj(wrench). hasPhysicalQuality(wrench, heavy). hasPhysicalQuality(wrench, rigid). hasRole(wrench, toolRole). affordsTask(wrench, maintenanceTask).
}).
#pos(e327@100, {hasAffordance(wrench, repair)}, {}, {
  obj(wrench). hasPhysicalQuality(wrench, heavy). hasPhysicalQuality(wrench, rigid). hasRole(wrench, toolRole). affordsTask(wrench, maintenanceTask).
}).
#pos(e328@100, {hasAffordance(wrench, wrench)}, {}, {
  obj(wrench). hasPhysicalQuality(wrench, heavy). hasPhysicalQuality(wrench, rigid). hasRole(wrench, toolRole). affordsTask(wrench, maintenanceTask).
}).

% --- Negative examples (weight 10) ---
#pos(e329@10, {}, {hasAffordance(apple, control)}, {
  obj(apple). hasPhysicalQuality(apple, fragile). hasPhysicalQuality(apple, perishable). hasRole(apple, consumableRole). affordsTask(apple, eatingDrinkingTask).
}).
#pos(e330@10, {}, {hasAffordance(apple, wrench)}, {
  obj(apple). hasPhysicalQuality(apple, fragile). hasPhysicalQuality(apple, perishable). hasRole(apple, consumableRole). affordsTask(apple, eatingDrinkingTask).
}).
#pos(e331@10, {}, {hasAffordance(armchair, bend)}, {
  obj(armchair). hasPhysicalQuality(armchair, heavy). hasRole(armchair, furnitureRole). affordsTask(armchair, leisureTask).
}).
#pos(e332@10, {}, {hasAffordance(armchair, grasp)}, {
  obj(armchair). hasPhysicalQuality(armchair, heavy). hasRole(armchair, furnitureRole). affordsTask(armchair, leisureTask).
}).
#pos(e333@10, {}, {hasAffordance(bed, engrave)}, {
  obj(bed). hasPhysicalQuality(bed, heavy). hasPhysicalQuality(bed, soft_Deformable). hasRole(bed, furnitureRole). affordsTask(bed, sleepingTask).
}).
#pos(e334@10, {}, {hasAffordance(bed, file)}, {
  obj(bed). hasPhysicalQuality(bed, heavy). hasPhysicalQuality(bed, soft_Deformable). hasRole(bed, furnitureRole). affordsTask(bed, sleepingTask).
}).
#pos(e335@10, {}, {hasAffordance(bill, control)}, {
  obj(bill). hasPhysicalQuality(bill, lightweight). hasRole(bill, documentRole). affordsTask(bill, leisureTask).
}).
#pos(e336@10, {}, {hasAffordance(bill, crumble)}, {
  obj(bill). hasPhysicalQuality(bill, lightweight). hasRole(bill, documentRole). affordsTask(bill, leisureTask).
}).
#pos(e337@10, {}, {hasAffordance(binder, comfort)}, {
  obj(binder). hasPhysicalQuality(binder, lightweight). hasPhysicalQuality(binder, rigid). hasRole(binder, storageContainerRole). affordsTask(binder, storageTask).
}).
#pos(e338@10, {}, {hasAffordance(binder, smoothen)}, {
  obj(binder). hasPhysicalQuality(binder, lightweight). hasPhysicalQuality(binder, rigid). hasRole(binder, storageContainerRole). affordsTask(binder, storageTask).
}).
#pos(e339@10, {}, {hasAffordance(book, polish)}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask). affordsTask(book, workStudyTask).
}).
#pos(e340@10, {}, {hasAffordance(book, tamp)}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask). affordsTask(book, workStudyTask).
}).
#pos(e341@10, {}, {hasAffordance(bottle, bend)}, {
  obj(bottle). hasPhysicalQuality(bottle, lightweight). hasRole(bottle, storageContainerRole). affordsTask(bottle, eatingDrinkingTask).
}).
#pos(e342@10, {}, {hasAffordance(bottle, bore)}, {
  obj(bottle). hasPhysicalQuality(bottle, lightweight). hasRole(bottle, storageContainerRole). affordsTask(bottle, eatingDrinkingTask).
}).
#pos(e343@10, {}, {hasAffordance(bowl, cool)}, {
  obj(bowl). hasPhysicalQuality(bowl, lightweight). hasPhysicalQuality(bowl, rigid). hasRole(bowl, utensilRole). affordsTask(bowl, eatingDrinkingTask).
}).
#pos(e344@10, {}, {hasAffordance(bowl, entertain)}, {
  obj(bowl). hasPhysicalQuality(bowl, lightweight). hasPhysicalQuality(bowl, rigid). hasRole(bowl, utensilRole). affordsTask(bowl, eatingDrinkingTask).
}).
#pos(e345@10, {}, {hasAffordance(box, engrave)}, {
  obj(box). hasPhysicalQuality(box, heavy). hasPhysicalQuality(box, rigid). hasRole(box, storageContainerRole). affordsTask(box, storageTask).
}).
#pos(e346@10, {}, {hasAffordance(box, separate)}, {
  obj(box). hasPhysicalQuality(box, heavy). hasPhysicalQuality(box, rigid). hasRole(box, storageContainerRole). affordsTask(box, storageTask).
}).
#pos(e347@10, {}, {hasAffordance(bread, bend)}, {
  obj(bread). hasPhysicalQuality(bread, granular). hasPhysicalQuality(bread, perishable). hasRole(bread, consumableRole). affordsTask(bread, eatingDrinkingTask). affordsTask(bread, foodPreparationTask).
}).
#pos(e348@10, {}, {hasAffordance(bread, unclog)}, {
  obj(bread). hasPhysicalQuality(bread, granular). hasPhysicalQuality(bread, perishable). hasRole(bread, consumableRole). affordsTask(bread, eatingDrinkingTask). affordsTask(bread, foodPreparationTask).
}).
#pos(e349@10, {}, {hasAffordance(calculator, dispose)}, {
  obj(calculator). hasPhysicalQuality(calculator, electronic). hasPhysicalQuality(calculator, lightweight). hasRole(calculator, toolRole). affordsTask(calculator, workStudyTask).
}).
#pos(e350@10, {}, {hasAffordance(calculator, staple)}, {
  obj(calculator). hasPhysicalQuality(calculator, electronic). hasPhysicalQuality(calculator, lightweight). hasRole(calculator, toolRole). affordsTask(calculator, workStudyTask).
}).
#pos(e351@10, {}, {hasAffordance(camera, smoothen)}, {
  obj(camera). hasPhysicalQuality(camera, electronic). hasPhysicalQuality(camera, lightweight). hasRole(camera, toolRole). affordsTask(camera, leisureTask). affordsTask(camera, workStudyTask).
}).
#pos(e352@10, {}, {hasAffordance(camera, wrench)}, {
  obj(camera). hasPhysicalQuality(camera, electronic). hasPhysicalQuality(camera, lightweight). hasRole(camera, toolRole). affordsTask(camera, leisureTask). affordsTask(camera, workStudyTask).
}).
#pos(e353@10, {}, {hasAffordance(can_opener, eat)}, {
  obj(can_opener). hasPhysicalQuality(can_opener, electronic). hasPhysicalQuality(can_opener, heavy). hasRole(can_opener, toolRole). affordsTask(can_opener, foodPreparationTask).
}).
#pos(e354@10, {}, {hasAffordance(can_opener, pour)}, {
  obj(can_opener). hasPhysicalQuality(can_opener, electronic). hasPhysicalQuality(can_opener, heavy). hasRole(can_opener, toolRole). affordsTask(can_opener, foodPreparationTask).
}).
#pos(e355@10, {}, {hasAffordance(candle, rub)}, {
  obj(candle). hasPhysicalQuality(candle, fragile). hasPhysicalQuality(candle, heated). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e356@10, {}, {hasAffordance(candle, unclog)}, {
  obj(candle). hasPhysicalQuality(candle, fragile). hasPhysicalQuality(candle, heated). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e357@10, {}, {hasAffordance(chair, absorb)}, {
  obj(chair). hasPhysicalQuality(chair, heavy). hasPhysicalQuality(chair, rigid). hasRole(chair, furnitureRole). affordsTask(chair, leisureTask). affordsTask(chair, storageTask).
}).
#pos(e358@10, {}, {hasAffordance(chair, grind)}, {
  obj(chair). hasPhysicalQuality(chair, heavy). hasPhysicalQuality(chair, rigid). hasRole(chair, furnitureRole). affordsTask(chair, leisureTask). affordsTask(chair, storageTask).
}).
#pos(e359@10, {}, {hasAffordance(cloth, cut)}, {
  obj(cloth). hasPhysicalQuality(cloth, soft_Deformable). hasPhysicalQuality(cloth, washable). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask). affordsTask(cloth, storageTask).
}).
#pos(e360@10, {}, {hasAffordance(cloth, polish)}, {
  obj(cloth). hasPhysicalQuality(cloth, soft_Deformable). hasPhysicalQuality(cloth, washable). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask). affordsTask(cloth, storageTask).
}).
#pos(e361@10, {}, {hasAffordance(coffee, grasp)}, {
  obj(coffee). hasPhysicalQuality(coffee, heated). hasPhysicalQuality(coffee, liquid). hasPhysicalQuality(coffee, perishable). hasRole(coffee, consumableRole). affordsTask(coffee, eatingDrinkingTask).
}).
#pos(e362@10, {}, {hasAffordance(coffee, install)}, {
  obj(coffee). hasPhysicalQuality(coffee, heated). hasPhysicalQuality(coffee, liquid). hasPhysicalQuality(coffee, perishable). hasRole(coffee, consumableRole). affordsTask(coffee, eatingDrinkingTask).
}).
#pos(e363@10, {}, {hasAffordance(coffee_mug, cube)}, {
  obj(coffee_mug). hasPhysicalQuality(coffee_mug, lightweight). hasPhysicalQuality(coffee_mug, rigid). hasPhysicalQuality(coffee_mug, washable). hasRole(coffee_mug, utensilRole). affordsTask(coffee_mug, eatingDrinkingTask).
}).
#pos(e364@10, {}, {hasAffordance(coffee_mug, dry)}, {
  obj(coffee_mug). hasPhysicalQuality(coffee_mug, lightweight). hasPhysicalQuality(coffee_mug, rigid). hasPhysicalQuality(coffee_mug, washable). hasRole(coffee_mug, utensilRole). affordsTask(coffee_mug, eatingDrinkingTask).
}).
#pos(e365@10, {}, {hasAffordance(coffee_table, contain)}, {
  obj(coffee_table). hasPhysicalQuality(coffee_table, heavy). hasPhysicalQuality(coffee_table, rigid). hasRole(coffee_table, furnitureRole). affordsTask(coffee_table, leisureTask). affordsTask(coffee_table, storageTask).
}).
#pos(e366@10, {}, {hasAffordance(coffee_table, install)}, {
  obj(coffee_table). hasPhysicalQuality(coffee_table, heavy). hasPhysicalQuality(coffee_table, rigid). hasRole(coffee_table, furnitureRole). affordsTask(coffee_table, leisureTask). affordsTask(coffee_table, storageTask).
}).
#pos(e367@10, {}, {hasAffordance(cup, cool)}, {
  obj(cup). hasPhysicalQuality(cup, lightweight). hasPhysicalQuality(cup, liquid). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e368@10, {}, {hasAffordance(cup, plow)}, {
  obj(cup). hasPhysicalQuality(cup, lightweight). hasPhysicalQuality(cup, liquid). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e369@10, {}, {hasAffordance(curtain, compress)}, {
  obj(curtain). hasPhysicalQuality(curtain, lightweight). hasPhysicalQuality(curtain, soft_Deformable). hasRole(curtain, furnitureRole). affordsTask(curtain, leisureTask).
}).
#pos(e370@10, {}, {hasAffordance(curtain, melt)}, {
  obj(curtain). hasPhysicalQuality(curtain, lightweight). hasPhysicalQuality(curtain, soft_Deformable). hasRole(curtain, furnitureRole). affordsTask(curtain, leisureTask).
}).
#pos(e371@10, {}, {hasAffordance(desk, mark)}, {
  obj(desk). hasPhysicalQuality(desk, heavy). hasPhysicalQuality(desk, rigid). hasRole(desk, furnitureRole). affordsTask(desk, workStudyTask).
}).
#pos(e372@10, {}, {hasAffordance(desk, wash)}, {
  obj(desk). hasPhysicalQuality(desk, heavy). hasPhysicalQuality(desk, rigid). hasRole(desk, furnitureRole). affordsTask(desk, workStudyTask).
}).
#pos(e373@10, {}, {hasAffordance(dining_table, break)}, {
  obj(dining_table). hasPhysicalQuality(dining_table, heavy). hasPhysicalQuality(dining_table, rigid). hasRole(dining_table, furnitureRole). affordsTask(dining_table, eatingDrinkingTask). affordsTask(dining_table, leisureTask). affordsTask(dining_table, storageTask).
}).
#pos(e374@10, {}, {hasAffordance(dining_table, file)}, {
  obj(dining_table). hasPhysicalQuality(dining_table, heavy). hasPhysicalQuality(dining_table, rigid). hasRole(dining_table, furnitureRole). affordsTask(dining_table, eatingDrinkingTask). affordsTask(dining_table, leisureTask). affordsTask(dining_table, storageTask).
}).
#pos(e375@10, {}, {hasAffordance(drawer, read)}, {
  obj(drawer). hasPhysicalQuality(drawer, heavy). hasRole(drawer, storageContainerRole). affordsTask(drawer, storageTask).
}).
#pos(e376@10, {}, {hasAffordance(drawer, slit)}, {
  obj(drawer). hasPhysicalQuality(drawer, heavy). hasRole(drawer, storageContainerRole). affordsTask(drawer, storageTask).
}).
#pos(e377@10, {}, {hasAffordance(dresser, cover)}, {
  obj(dresser). hasPhysicalQuality(dresser, heavy). hasPhysicalQuality(dresser, rigid). hasRole(dresser, furnitureRole). affordsTask(dresser, storageTask).
}).
#pos(e378@10, {}, {hasAffordance(dresser, peel)}, {
  obj(dresser). hasPhysicalQuality(dresser, heavy). hasPhysicalQuality(dresser, rigid). hasRole(dresser, furnitureRole). affordsTask(dresser, storageTask).
}).
#pos(e379@10, {}, {hasAffordance(drill, compress)}, {
  obj(drill). hasPhysicalQuality(drill, heavy). hasPhysicalQuality(drill, rigid). hasRole(drill, toolRole). affordsTask(drill, maintenanceTask).
}).
#pos(e380@10, {}, {hasAffordance(drill, support)}, {
  obj(drill). hasPhysicalQuality(drill, heavy). hasPhysicalQuality(drill, rigid). hasRole(drill, toolRole). affordsTask(drill, maintenanceTask).
}).
#pos(e381@10, {}, {hasAffordance(egg, heat)}, {
  obj(egg). hasPhysicalQuality(egg, fragile). hasPhysicalQuality(egg, lightweight). hasRole(egg, consumableRole). affordsTask(egg, eatingDrinkingTask). affordsTask(egg, foodPreparationTask).
}).
#pos(e382@10, {}, {hasAffordance(egg, wrench)}, {
  obj(egg). hasPhysicalQuality(egg, fragile). hasPhysicalQuality(egg, lightweight). hasRole(egg, consumableRole). affordsTask(egg, eatingDrinkingTask). affordsTask(egg, foodPreparationTask).
}).
#pos(e383@10, {}, {hasAffordance(faucet, mark)}, {
  obj(faucet). hasPhysicalQuality(faucet, liquid). hasRole(faucet, toolRole). affordsTask(faucet, eatingDrinkingTask). affordsTask(faucet, hygieneTask).
}).
#pos(e384@10, {}, {hasAffordance(faucet, unclog)}, {
  obj(faucet). hasPhysicalQuality(faucet, liquid). hasRole(faucet, toolRole). affordsTask(faucet, eatingDrinkingTask). affordsTask(faucet, hygieneTask).
}).
#pos(e385@10, {}, {hasAffordance(file, dispose)}, {
  obj(file). hasPhysicalQuality(file, lightweight). hasRole(file, storageContainerRole). affordsTask(file, storageTask).
}).
#pos(e386@10, {}, {hasAffordance(file, wash)}, {
  obj(file). hasPhysicalQuality(file, lightweight). hasRole(file, storageContainerRole). affordsTask(file, storageTask).
}).
#pos(e387@10, {}, {hasAffordance(floor, break)}, {
  obj(floor). hasPhysicalQuality(floor, heavy). hasPhysicalQuality(floor, rigid). hasRole(floor, furnitureRole). affordsTask(floor, leisureTask). affordsTask(floor, storageTask).
}).
#pos(e388@10, {}, {hasAffordance(floor, change)}, {
  obj(floor). hasPhysicalQuality(floor, heavy). hasPhysicalQuality(floor, rigid). hasRole(floor, furnitureRole). affordsTask(floor, leisureTask). affordsTask(floor, storageTask).
}).
#pos(e389@10, {}, {hasAffordance(food_can, eat)}, {
  obj(food_can). hasRole(food_can, storageContainerRole). affordsTask(food_can, storageTask).
}).
#pos(e390@10, {}, {hasAffordance(food_can, grind)}, {
  obj(food_can). hasRole(food_can, storageContainerRole). affordsTask(food_can, storageTask).
}).
#pos(e391@10, {}, {hasAffordance(footstool, clean)}, {
  obj(footstool). hasPhysicalQuality(footstool, fragile). hasPhysicalQuality(footstool, rigid). hasRole(footstool, furnitureRole). affordsTask(footstool, leisureTask). affordsTask(footstool, storageTask).
}).
#pos(e392@10, {}, {hasAffordance(footstool, engrave)}, {
  obj(footstool). hasPhysicalQuality(footstool, fragile). hasPhysicalQuality(footstool, rigid). hasRole(footstool, furnitureRole). affordsTask(footstool, leisureTask). affordsTask(footstool, storageTask).
}).
#pos(e393@10, {}, {hasAffordance(fork, control)}, {
  obj(fork). hasPhysicalQuality(fork, rigid). hasPhysicalQuality(fork, sharp). hasRole(fork, utensilRole). affordsTask(fork, eatingDrinkingTask). affordsTask(fork, foodPreparationTask).
}).
#pos(e394@10, {}, {hasAffordance(fork, plug)}, {
  obj(fork). hasPhysicalQuality(fork, rigid). hasPhysicalQuality(fork, sharp). hasRole(fork, utensilRole). affordsTask(fork, eatingDrinkingTask). affordsTask(fork, foodPreparationTask).
}).
#pos(e395@10, {}, {hasAffordance(fridge, grind)}, {
  obj(fridge). hasPhysicalQuality(fridge, electronic). hasPhysicalQuality(fridge, heavy). hasRole(fridge, applianceRole). affordsTask(fridge, storageTask).
}).
#pos(e396@10, {}, {hasAffordance(fridge, repair)}, {
  obj(fridge). hasPhysicalQuality(fridge, electronic). hasPhysicalQuality(fridge, heavy). hasRole(fridge, applianceRole). affordsTask(fridge, storageTask).
}).
#pos(e397@10, {}, {hasAffordance(garbage_can, melt)}, {
  obj(garbage_can). hasPhysicalQuality(garbage_can, heavy). hasRole(garbage_can, storageContainerRole). affordsTask(garbage_can, wasteDisposalTask).
}).
#pos(e398@10, {}, {hasAffordance(garbage_can, wipe)}, {
  obj(garbage_can). hasPhysicalQuality(garbage_can, heavy). hasRole(garbage_can, storageContainerRole). affordsTask(garbage_can, wasteDisposalTask).
}).
#pos(e399@10, {}, {hasAffordance(glue_stick, cube)}, {
  obj(glue_stick). hasPhysicalQuality(glue_stick, fragile). hasPhysicalQuality(glue_stick, liquid). hasRole(glue_stick, toolRole). affordsTask(glue_stick, maintenanceTask).
}).
#pos(e400@10, {}, {hasAffordance(glue_stick, mix)}, {
  obj(glue_stick). hasPhysicalQuality(glue_stick, fragile). hasPhysicalQuality(glue_stick, liquid). hasRole(glue_stick, toolRole). affordsTask(glue_stick, maintenanceTask).
}).
#pos(e401@10, {}, {hasAffordance(gutter, drill)}, {
  obj(gutter). hasPhysicalQuality(gutter, heavy). hasPhysicalQuality(gutter, rigid). hasRole(gutter, toolRole). affordsTask(gutter, maintenanceTask).
}).
#pos(e402@10, {}, {hasAffordance(gutter, operate)}, {
  obj(gutter). hasPhysicalQuality(gutter, heavy). hasPhysicalQuality(gutter, rigid). hasRole(gutter, toolRole). affordsTask(gutter, maintenanceTask).
}).
#pos(e403@10, {}, {hasAffordance(hammer, compress)}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e404@10, {}, {hasAffordance(hammer, hold)}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e405@10, {}, {hasAffordance(jack, dig)}, {
  obj(jack). hasPhysicalQuality(jack, heavy). hasPhysicalQuality(jack, rigid). hasRole(jack, toolRole). affordsTask(jack, maintenanceTask).
}).
#pos(e406@10, {}, {hasAffordance(jack, write)}, {
  obj(jack). hasPhysicalQuality(jack, heavy). hasPhysicalQuality(jack, rigid). hasRole(jack, toolRole). affordsTask(jack, maintenanceTask).
}).
#pos(e407@10, {}, {hasAffordance(kettle, fix)}, {
  obj(kettle). hasPhysicalQuality(kettle, heated). hasPhysicalQuality(kettle, heavy). hasRole(kettle, cookwareRole). affordsTask(kettle, foodPreparationTask).
}).
#pos(e408@10, {}, {hasAffordance(kettle, spread)}, {
  obj(kettle). hasPhysicalQuality(kettle, heated). hasPhysicalQuality(kettle, heavy). hasRole(kettle, cookwareRole). affordsTask(kettle, foodPreparationTask).
}).
#pos(e409@10, {}, {hasAffordance(keyboard, cube)}, {
  obj(keyboard). hasPhysicalQuality(keyboard, electronic). hasPhysicalQuality(keyboard, lightweight). hasRole(keyboard, toolRole). affordsTask(keyboard, workStudyTask).
}).
#pos(e410@10, {}, {hasAffordance(keyboard, repair)}, {
  obj(keyboard). hasPhysicalQuality(keyboard, electronic). hasPhysicalQuality(keyboard, lightweight). hasRole(keyboard, toolRole). affordsTask(keyboard, workStudyTask).
}).
#pos(e411@10, {}, {hasAffordance(kleenex, flex)}, {
  obj(kleenex). hasPhysicalQuality(kleenex, lightweight). hasPhysicalQuality(kleenex, soft_Deformable). hasPhysicalQuality(kleenex, washable). hasRole(kleenex, consumableRole). affordsTask(kleenex, hygieneTask).
}).
#pos(e412@10, {}, {hasAffordance(kleenex, peel)}, {
  obj(kleenex). hasPhysicalQuality(kleenex, lightweight). hasPhysicalQuality(kleenex, soft_Deformable). hasPhysicalQuality(kleenex, washable). hasRole(kleenex, consumableRole). affordsTask(kleenex, hygieneTask).
}).
#pos(e413@10, {}, {hasAffordance(knife, grasp)}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e414@10, {}, {hasAffordance(knife, write)}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e415@10, {}, {hasAffordance(lawn_mower, carve)}, {
  obj(lawn_mower). hasPhysicalQuality(lawn_mower, heavy). hasPhysicalQuality(lawn_mower, rigid). hasRole(lawn_mower, toolRole). affordsTask(lawn_mower, maintenanceTask).
}).
#pos(e416@10, {}, {hasAffordance(lawn_mower, increase)}, {
  obj(lawn_mower). hasPhysicalQuality(lawn_mower, heavy). hasPhysicalQuality(lawn_mower, rigid). hasRole(lawn_mower, toolRole). affordsTask(lawn_mower, maintenanceTask).
}).
#pos(e417@10, {}, {hasAffordance(lettuce, bore)}, {
  obj(lettuce). hasPhysicalQuality(lettuce, perishable). hasRole(lettuce, consumableRole). affordsTask(lettuce, eatingDrinkingTask).
}).
#pos(e418@10, {}, {hasAffordance(lettuce, entertain)}, {
  obj(lettuce). hasPhysicalQuality(lettuce, perishable). hasRole(lettuce, consumableRole). affordsTask(lettuce, eatingDrinkingTask).
}).
#pos(e419@10, {}, {hasAffordance(lightbulb, hold)}, {
  obj(lightbulb). hasPhysicalQuality(lightbulb, electronic). hasPhysicalQuality(lightbulb, lightweight). hasRole(lightbulb, lightingRole). affordsTask(lightbulb, leisureTask).
}).
#pos(e420@10, {}, {hasAffordance(lightbulb, plow)}, {
  obj(lightbulb). hasPhysicalQuality(lightbulb, electronic). hasPhysicalQuality(lightbulb, lightweight). hasRole(lightbulb, lightingRole). affordsTask(lightbulb, leisureTask).
}).
#pos(e421@10, {}, {hasAffordance(marker, change)}, {
  obj(marker). hasPhysicalQuality(marker, lightweight). hasRole(marker, toolRole).
}).
#pos(e422@10, {}, {hasAffordance(marker, fix)}, {
  obj(marker). hasPhysicalQuality(marker, lightweight). hasRole(marker, toolRole).
}).
#pos(e423@10, {}, {hasAffordance(microwave, dry)}, {
  obj(microwave). hasPhysicalQuality(microwave, electronic). hasPhysicalQuality(microwave, heated). hasPhysicalQuality(microwave, heavy). hasRole(microwave, applianceRole). affordsTask(microwave, foodPreparationTask).
}).
#pos(e424@10, {}, {hasAffordance(microwave, store)}, {
  obj(microwave). hasPhysicalQuality(microwave, electronic). hasPhysicalQuality(microwave, heated). hasPhysicalQuality(microwave, heavy). hasRole(microwave, applianceRole). affordsTask(microwave, foodPreparationTask).
}).
#pos(e425@10, {}, {hasAffordance(mirror, dry)}, {
  obj(mirror). hasPhysicalQuality(mirror, rigid). hasRole(mirror, decorationRole). affordsTask(mirror, leisureTask).
}).
#pos(e426@10, {}, {hasAffordance(mirror, hold)}, {
  obj(mirror). hasPhysicalQuality(mirror, rigid). hasRole(mirror, decorationRole). affordsTask(mirror, leisureTask).
}).
#pos(e427@10, {}, {hasAffordance(mug, poke)}, {
  obj(mug). hasPhysicalQuality(mug, lightweight). hasPhysicalQuality(mug, liquid). hasRole(mug, utensilRole). affordsTask(mug, eatingDrinkingTask).
}).
#pos(e428@10, {}, {hasAffordance(mug, skin)}, {
  obj(mug). hasPhysicalQuality(mug, lightweight). hasPhysicalQuality(mug, liquid). hasRole(mug, utensilRole). affordsTask(mug, eatingDrinkingTask).
}).
#pos(e429@10, {}, {hasAffordance(newspaper, roll)}, {
  obj(newspaper). hasPhysicalQuality(newspaper, lightweight). hasRole(newspaper, documentRole).
}).
#pos(e430@10, {}, {hasAffordance(newspaper, write)}, {
  obj(newspaper). hasPhysicalQuality(newspaper, lightweight). hasRole(newspaper, documentRole).
}).
#pos(e431@10, {}, {hasAffordance(notebook, crumble)}, {
  obj(notebook). hasPhysicalQuality(notebook, lightweight). hasPhysicalQuality(notebook, washable). hasRole(notebook, documentRole). affordsTask(notebook, workStudyTask).
}).
#pos(e432@10, {}, {hasAffordance(notebook, file)}, {
  obj(notebook). hasPhysicalQuality(notebook, lightweight). hasPhysicalQuality(notebook, washable). hasRole(notebook, documentRole). affordsTask(notebook, workStudyTask).
}).
#pos(e433@10, {}, {hasAffordance(ottoman, crunch)}, {
  obj(ottoman). hasPhysicalQuality(ottoman, heavy). hasPhysicalQuality(ottoman, soft_Deformable). hasRole(ottoman, furnitureRole). affordsTask(ottoman, leisureTask).
}).
#pos(e434@10, {}, {hasAffordance(ottoman, file)}, {
  obj(ottoman). hasPhysicalQuality(ottoman, heavy). hasPhysicalQuality(ottoman, soft_Deformable). hasRole(ottoman, furnitureRole). affordsTask(ottoman, leisureTask).
}).
#pos(e435@10, {}, {hasAffordance(oven, slit)}, {
  obj(oven). hasPhysicalQuality(oven, heated). hasRole(oven, cookwareRole). affordsTask(oven, foodPreparationTask).
}).
#pos(e436@10, {}, {hasAffordance(oven, spread)}, {
  obj(oven). hasPhysicalQuality(oven, heated). hasRole(oven, cookwareRole). affordsTask(oven, foodPreparationTask).
}).
#pos(e437@10, {}, {hasAffordance(painting, fix)}, {
  obj(painting). hasPhysicalQuality(painting, lightweight). hasRole(painting, decorationRole). affordsTask(painting, leisureTask).
}).
#pos(e438@10, {}, {hasAffordance(painting, store)}, {
  obj(painting). hasPhysicalQuality(painting, lightweight). hasRole(painting, decorationRole). affordsTask(painting, leisureTask).
}).
#pos(e439@10, {}, {hasAffordance(pan, press)}, {
  obj(pan). hasPhysicalQuality(pan, heated). hasPhysicalQuality(pan, rigid). hasRole(pan, cookwareRole). affordsTask(pan, foodPreparationTask).
}).
#pos(e440@10, {}, {hasAffordance(pan, tamp)}, {
  obj(pan). hasPhysicalQuality(pan, heated). hasPhysicalQuality(pan, rigid). hasRole(pan, cookwareRole). affordsTask(pan, foodPreparationTask).
}).
#pos(e441@10, {}, {hasAffordance(pen, mark)}, {
  obj(pen). hasPhysicalQuality(pen, lightweight). hasPhysicalQuality(pen, rigid). hasRole(pen, toolRole).
}).
#pos(e442@10, {}, {hasAffordance(pen, pierce)}, {
  obj(pen). hasPhysicalQuality(pen, lightweight). hasPhysicalQuality(pen, rigid). hasRole(pen, toolRole).
}).
#pos(e443@10, {}, {hasAffordance(pencil, crack)}, {
  obj(pencil). hasPhysicalQuality(pencil, lightweight). hasPhysicalQuality(pencil, rigid). hasRole(pencil, toolRole).
}).
#pos(e444@10, {}, {hasAffordance(pencil, dry)}, {
  obj(pencil). hasPhysicalQuality(pencil, lightweight). hasPhysicalQuality(pencil, rigid). hasRole(pencil, toolRole).
}).
#pos(e445@10, {}, {hasAffordance(phillips_screwdriver, smoothen)}, {
  obj(phillips_screwdriver). hasPhysicalQuality(phillips_screwdriver, heavy). hasPhysicalQuality(phillips_screwdriver, rigid). hasRole(phillips_screwdriver, toolRole). affordsTask(phillips_screwdriver, maintenanceTask).
}).
#pos(e446@10, {}, {hasAffordance(phillips_screwdriver, spread)}, {
  obj(phillips_screwdriver). hasPhysicalQuality(phillips_screwdriver, heavy). hasPhysicalQuality(phillips_screwdriver, rigid). hasRole(phillips_screwdriver, toolRole). affordsTask(phillips_screwdriver, maintenanceTask).
}).
#pos(e447@10, {}, {hasAffordance(pillow, carry)}, {
  obj(pillow). hasPhysicalQuality(pillow, lightweight). hasPhysicalQuality(pillow, soft_Deformable). hasRole(pillow, beddingRole). affordsTask(pillow, sleepingTask).
}).
#pos(e448@10, {}, {hasAffordance(pillow, comfort)}, {
  obj(pillow). hasPhysicalQuality(pillow, lightweight). hasPhysicalQuality(pillow, soft_Deformable). hasRole(pillow, beddingRole). affordsTask(pillow, sleepingTask).
}).
#pos(e449@10, {}, {hasAffordance(plate, crumble)}, {
  obj(plate). hasPhysicalQuality(plate, lightweight). hasPhysicalQuality(plate, rigid). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e450@10, {}, {hasAffordance(plate, dice)}, {
  obj(plate). hasPhysicalQuality(plate, lightweight). hasPhysicalQuality(plate, rigid). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e451@10, {}, {hasAffordance(poster, cube)}, {
  obj(poster). hasPhysicalQuality(poster, lightweight). hasPhysicalQuality(poster, rigid). hasRole(poster, decorationRole). affordsTask(poster, leisureTask).
}).
#pos(e452@10, {}, {hasAffordance(poster, wash)}, {
  obj(poster). hasPhysicalQuality(poster, lightweight). hasPhysicalQuality(poster, rigid). hasRole(poster, decorationRole). affordsTask(poster, leisureTask).
}).
#pos(e453@10, {}, {hasAffordance(pot, press)}, {
  obj(pot). hasPhysicalQuality(pot, heated). hasPhysicalQuality(pot, heavy). hasPhysicalQuality(pot, rigid). hasRole(pot, cookwareRole). affordsTask(pot, foodPreparationTask).
}).
#pos(e454@10, {}, {hasAffordance(pot, unclog)}, {
  obj(pot). hasPhysicalQuality(pot, heated). hasPhysicalQuality(pot, heavy). hasPhysicalQuality(pot, rigid). hasRole(pot, cookwareRole). affordsTask(pot, foodPreparationTask).
}).
#pos(e455@10, {}, {hasAffordance(potato, change)}, {
  obj(potato). hasPhysicalQuality(potato, perishable). hasRole(potato, consumableRole). affordsTask(potato, eatingDrinkingTask).
}).
#pos(e456@10, {}, {hasAffordance(potato, pierce)}, {
  obj(potato). hasPhysicalQuality(potato, perishable). hasRole(potato, consumableRole). affordsTask(potato, eatingDrinkingTask).
}).
#pos(e457@10, {}, {hasAffordance(remote_control, operate)}, {
  obj(remote_control). hasPhysicalQuality(remote_control, electronic). hasPhysicalQuality(remote_control, lightweight). hasRole(remote_control, toolRole). affordsTask(remote_control, leisureTask).
}).
#pos(e458@10, {}, {hasAffordance(remote_control, support)}, {
  obj(remote_control). hasPhysicalQuality(remote_control, electronic). hasPhysicalQuality(remote_control, lightweight). hasRole(remote_control, toolRole). affordsTask(remote_control, leisureTask).
}).
#pos(e459@10, {}, {hasAffordance(safe, repair)}, {
  obj(safe). hasPhysicalQuality(safe, heavy). hasPhysicalQuality(safe, rigid). hasRole(safe, safetyEquipmentRole). affordsTask(safe, maintenanceTask).
}).
#pos(e460@10, {}, {hasAffordance(safe, skin)}, {
  obj(safe). hasPhysicalQuality(safe, heavy). hasPhysicalQuality(safe, rigid). hasRole(safe, safetyEquipmentRole). affordsTask(safe, maintenanceTask).
}).
#pos(e461@10, {}, {hasAffordance(salt, file)}, {
  obj(salt). hasPhysicalQuality(salt, granular). hasRole(salt, consumableRole). affordsTask(salt, foodPreparationTask).
}).
#pos(e462@10, {}, {hasAffordance(salt, solder)}, {
  obj(salt). hasPhysicalQuality(salt, granular). hasRole(salt, consumableRole). affordsTask(salt, foodPreparationTask).
}).
#pos(e463@10, {}, {hasAffordance(saltshaker, be_heated)}, {
  obj(saltshaker). hasPhysicalQuality(saltshaker, granular). hasRole(saltshaker, utensilRole). affordsTask(saltshaker, foodPreparationTask).
}).
#pos(e464@10, {}, {hasAffordance(saltshaker, control)}, {
  obj(saltshaker). hasPhysicalQuality(saltshaker, granular). hasRole(saltshaker, utensilRole). affordsTask(saltshaker, foodPreparationTask).
}).
#pos(e465@10, {}, {hasAffordance(saw, hammer)}, {
  obj(saw). hasPhysicalQuality(saw, heavy). hasPhysicalQuality(saw, rigid). hasRole(saw, toolRole). affordsTask(saw, maintenanceTask).
}).
#pos(e466@10, {}, {hasAffordance(saw, strip)}, {
  obj(saw). hasPhysicalQuality(saw, heavy). hasPhysicalQuality(saw, rigid). hasRole(saw, toolRole). affordsTask(saw, maintenanceTask).
}).
#pos(e467@10, {}, {hasAffordance(scissors, cool)}, {
  obj(scissors). hasPhysicalQuality(scissors, rigid). hasPhysicalQuality(scissors, sharp). hasRole(scissors, toolRole). affordsTask(scissors, foodPreparationTask).
}).
#pos(e468@10, {}, {hasAffordance(scissors, mix)}, {
  obj(scissors). hasPhysicalQuality(scissors, rigid). hasPhysicalQuality(scissors, sharp). hasRole(scissors, toolRole). affordsTask(scissors, foodPreparationTask).
}).
#pos(e469@10, {}, {hasAffordance(screwdriver, heat)}, {
  obj(screwdriver). hasPhysicalQuality(screwdriver, heavy). hasPhysicalQuality(screwdriver, rigid). hasRole(screwdriver, toolRole). affordsTask(screwdriver, maintenanceTask).
}).
#pos(e470@10, {}, {hasAffordance(screwdriver, roll)}, {
  obj(screwdriver). hasPhysicalQuality(screwdriver, heavy). hasPhysicalQuality(screwdriver, rigid). hasRole(screwdriver, toolRole). affordsTask(screwdriver, maintenanceTask).
}).
#pos(e471@10, {}, {hasAffordance(shampoo, cube)}, {
  obj(shampoo). hasPhysicalQuality(shampoo, liquid). hasRole(shampoo, cleaningToolRole). affordsTask(shampoo, hygieneTask).
}).
#pos(e472@10, {}, {hasAffordance(shampoo, press)}, {
  obj(shampoo). hasPhysicalQuality(shampoo, liquid). hasRole(shampoo, cleaningToolRole). affordsTask(shampoo, hygieneTask).
}).
#pos(e473@10, {}, {hasAffordance(shelf, absorb)}, {
  obj(shelf). hasPhysicalQuality(shelf, heavy). hasPhysicalQuality(shelf, rigid). hasRole(shelf, storageContainerRole). affordsTask(shelf, storageTask).
}).
#pos(e474@10, {}, {hasAffordance(shelf, fix)}, {
  obj(shelf). hasPhysicalQuality(shelf, heavy). hasPhysicalQuality(shelf, rigid). hasRole(shelf, storageContainerRole). affordsTask(shelf, storageTask).
}).
#pos(e475@10, {}, {hasAffordance(sink, dice)}, {
  obj(sink). hasPhysicalQuality(sink, heavy). hasRole(sink, utensilRole). affordsTask(sink, cleaningTask). affordsTask(sink, eatingDrinkingTask). affordsTask(sink, hygieneTask).
}).
#pos(e476@10, {}, {hasAffordance(sink, screw)}, {
  obj(sink). hasPhysicalQuality(sink, heavy). hasRole(sink, utensilRole). affordsTask(sink, cleaningTask). affordsTask(sink, eatingDrinkingTask). affordsTask(sink, hygieneTask).
}).
#pos(e477@10, {}, {hasAffordance(sofa, cool)}, {
  obj(sofa). hasPhysicalQuality(sofa, heavy). hasPhysicalQuality(sofa, soft_Deformable). hasRole(sofa, furnitureRole). affordsTask(sofa, leisureTask). affordsTask(sofa, sleepingTask).
}).
#pos(e478@10, {}, {hasAffordance(sofa, shape)}, {
  obj(sofa). hasPhysicalQuality(sofa, heavy). hasPhysicalQuality(sofa, soft_Deformable). hasRole(sofa, furnitureRole). affordsTask(sofa, leisureTask). affordsTask(sofa, sleepingTask).
}).
#pos(e479@10, {}, {hasAffordance(spatula, install)}, {
  obj(spatula). hasPhysicalQuality(spatula, lightweight). hasPhysicalQuality(spatula, rigid). hasPhysicalQuality(spatula, sharp). hasRole(spatula, utensilRole). affordsTask(spatula, foodPreparationTask).
}).
#pos(e480@10, {}, {hasAffordance(spatula, stick)}, {
  obj(spatula). hasPhysicalQuality(spatula, lightweight). hasPhysicalQuality(spatula, rigid). hasPhysicalQuality(spatula, sharp). hasRole(spatula, utensilRole). affordsTask(spatula, foodPreparationTask).
}).
#pos(e481@10, {}, {hasAffordance(spoon, drill)}, {
  obj(spoon). hasPhysicalQuality(spoon, lightweight). hasPhysicalQuality(spoon, rigid). hasPhysicalQuality(spoon, sharp). hasRole(spoon, utensilRole). affordsTask(spoon, eatingDrinkingTask). affordsTask(spoon, foodPreparationTask).
}).
#pos(e482@10, {}, {hasAffordance(spoon, wash)}, {
  obj(spoon). hasPhysicalQuality(spoon, lightweight). hasPhysicalQuality(spoon, rigid). hasPhysicalQuality(spoon, sharp). hasRole(spoon, utensilRole). affordsTask(spoon, eatingDrinkingTask). affordsTask(spoon, foodPreparationTask).
}).
#pos(e483@10, {}, {hasAffordance(stapler, crunch)}, {
  obj(stapler). hasPhysicalQuality(stapler, heavy). hasPhysicalQuality(stapler, rigid). hasRole(stapler, toolRole). affordsTask(stapler, maintenanceTask).
}).
#pos(e484@10, {}, {hasAffordance(stapler, mix)}, {
  obj(stapler). hasPhysicalQuality(stapler, heavy). hasPhysicalQuality(stapler, rigid). hasRole(stapler, toolRole). affordsTask(stapler, maintenanceTask).
}).
#pos(e485@10, {}, {hasAffordance(statue, cut)}, {
  obj(statue). hasPhysicalQuality(statue, rigid). hasRole(statue, decorationRole).
}).
#pos(e486@10, {}, {hasAffordance(statue, spread)}, {
  obj(statue). hasPhysicalQuality(statue, rigid). hasRole(statue, decorationRole).
}).
#pos(e487@10, {}, {hasAffordance(tap, absorb)}, {
  obj(tap). hasPhysicalQuality(tap, lightweight). hasPhysicalQuality(tap, soft_Deformable). hasRole(tap, toolRole). affordsTask(tap, hygieneTask). affordsTask(tap, leisureTask).
}).
#pos(e488@10, {}, {hasAffordance(tap, spread)}, {
  obj(tap). hasPhysicalQuality(tap, lightweight). hasPhysicalQuality(tap, soft_Deformable). hasRole(tap, toolRole). affordsTask(tap, hygieneTask). affordsTask(tap, leisureTask).
}).
#pos(e489@10, {}, {hasAffordance(teddy_bear, illuminate)}, {
  obj(teddy_bear). hasPhysicalQuality(teddy_bear, lightweight). hasPhysicalQuality(teddy_bear, soft_Deformable). hasRole(teddy_bear, entertainmentRole). affordsTask(teddy_bear, leisureTask).
}).
#pos(e490@10, {}, {hasAffordance(teddy_bear, support)}, {
  obj(teddy_bear). hasPhysicalQuality(teddy_bear, lightweight). hasPhysicalQuality(teddy_bear, soft_Deformable). hasRole(teddy_bear, entertainmentRole). affordsTask(teddy_bear, leisureTask).
}).
#pos(e491@10, {}, {hasAffordance(television, beautify)}, {
  obj(television). hasPhysicalQuality(television, electronic). hasPhysicalQuality(television, heavy). hasRole(television, applianceRole). affordsTask(television, leisureTask).
}).
#pos(e492@10, {}, {hasAffordance(television, screw)}, {
  obj(television). hasPhysicalQuality(television, electronic). hasPhysicalQuality(television, heavy). hasRole(television, applianceRole). affordsTask(television, leisureTask).
}).
#pos(e493@10, {}, {hasAffordance(tire_iron, cool)}, {
  obj(tire_iron). hasPhysicalQuality(tire_iron, heavy). hasPhysicalQuality(tire_iron, rigid). hasRole(tire_iron, toolRole). affordsTask(tire_iron, maintenanceTask).
}).
#pos(e494@10, {}, {hasAffordance(tire_iron, peel)}, {
  obj(tire_iron). hasPhysicalQuality(tire_iron, heavy). hasPhysicalQuality(tire_iron, rigid). hasRole(tire_iron, toolRole). affordsTask(tire_iron, maintenanceTask).
}).
#pos(e495@10, {}, {hasAffordance(toilet, exercise)}, {
  obj(toilet). hasPhysicalQuality(toilet, heavy). hasRole(toilet, furnitureRole). affordsTask(toilet, wasteDisposalTask).
}).
#pos(e496@10, {}, {hasAffordance(toilet, hold)}, {
  obj(toilet). hasPhysicalQuality(toilet, heavy). hasRole(toilet, furnitureRole). affordsTask(toilet, wasteDisposalTask).
}).
#pos(e497@10, {}, {hasAffordance(toilet_paper, carve)}, {
  obj(toilet_paper). hasPhysicalQuality(toilet_paper, soft_Deformable). hasPhysicalQuality(toilet_paper, washable). hasRole(toilet_paper, consumableRole). affordsTask(toilet_paper, hygieneTask).
}).
#pos(e498@10, {}, {hasAffordance(toilet_paper, entertain)}, {
  obj(toilet_paper). hasPhysicalQuality(toilet_paper, soft_Deformable). hasPhysicalQuality(toilet_paper, washable). hasRole(toilet_paper, consumableRole). affordsTask(toilet_paper, hygieneTask).
}).
#pos(e499@10, {}, {hasAffordance(tomato, clean)}, {
  obj(tomato). hasPhysicalQuality(tomato, perishable). hasRole(tomato, consumableRole). affordsTask(tomato, eatingDrinkingTask).
}).
#pos(e500@10, {}, {hasAffordance(tomato, store)}, {
  obj(tomato). hasPhysicalQuality(tomato, perishable). hasRole(tomato, consumableRole). affordsTask(tomato, eatingDrinkingTask).
}).
#pos(e501@10, {}, {hasAffordance(toothbrush, clean)}, {
  obj(toothbrush). hasPhysicalQuality(toothbrush, fragile). hasPhysicalQuality(toothbrush, lightweight). affordsTask(toothbrush, hygieneTask).
}).
#pos(e502@10, {}, {hasAffordance(toothbrush, saw)}, {
  obj(toothbrush). hasPhysicalQuality(toothbrush, fragile). hasPhysicalQuality(toothbrush, lightweight). affordsTask(toothbrush, hygieneTask).
}).
#pos(e503@10, {}, {hasAffordance(toothpaste, change)}, {
  obj(toothpaste). hasPhysicalQuality(toothpaste, liquid). hasPhysicalQuality(toothpaste, toxic_Hazardous). hasRole(toothpaste, cleaningToolRole). affordsTask(toothpaste, hygieneTask).
}).
#pos(e504@10, {}, {hasAffordance(toothpaste, slit)}, {
  obj(toothpaste). hasPhysicalQuality(toothpaste, liquid). hasPhysicalQuality(toothpaste, toxic_Hazardous). hasRole(toothpaste, cleaningToolRole). affordsTask(toothpaste, hygieneTask).
}).
#pos(e505@10, {}, {hasAffordance(toothpick, crumble)}, {
  obj(toothpick). hasPhysicalQuality(toothpick, rigid). hasPhysicalQuality(toothpick, sharp). hasRole(toothpick, utensilRole). affordsTask(toothpick, eatingDrinkingTask). affordsTask(toothpick, foodPreparationTask).
}).
#pos(e506@10, {}, {hasAffordance(toothpick, skin)}, {
  obj(toothpick). hasPhysicalQuality(toothpick, rigid). hasPhysicalQuality(toothpick, sharp). hasRole(toothpick, utensilRole). affordsTask(toothpick, eatingDrinkingTask). affordsTask(toothpick, foodPreparationTask).
}).
#pos(e507@10, {}, {hasAffordance(towel, decorate)}, {
  obj(towel). hasPhysicalQuality(towel, soft_Deformable). hasPhysicalQuality(towel, washable). hasRole(towel, cleaningToolRole). affordsTask(towel, cleaningTask).
}).
#pos(e508@10, {}, {hasAffordance(towel, spread)}, {
  obj(towel). hasPhysicalQuality(towel, soft_Deformable). hasPhysicalQuality(towel, washable). hasRole(towel, cleaningToolRole). affordsTask(towel, cleaningTask).
}).
#pos(e509@10, {}, {hasAffordance(vase, flex)}, {
  obj(vase). hasPhysicalQuality(vase, fragile). hasPhysicalQuality(vase, rigid). hasRole(vase, decorationRole). affordsTask(vase, storageTask).
}).
#pos(e510@10, {}, {hasAffordance(vase, smoothen)}, {
  obj(vase). hasPhysicalQuality(vase, fragile). hasPhysicalQuality(vase, rigid). hasRole(vase, decorationRole). affordsTask(vase, storageTask).
}).
#pos(e511@10, {}, {hasAffordance(window, polish)}, {
  obj(window). hasPhysicalQuality(window, rigid). hasRole(window, furnitureRole). affordsTask(window, leisureTask).
}).
#pos(e512@10, {}, {hasAffordance(window, time)}, {
  obj(window). hasPhysicalQuality(window, rigid). hasRole(window, furnitureRole). affordsTask(window, leisureTask).
}).
#pos(e513@10, {}, {hasAffordance(wrench, dry)}, {
  obj(wrench). hasPhysicalQuality(wrench, heavy). hasPhysicalQuality(wrench, rigid). hasRole(wrench, toolRole). affordsTask(wrench, maintenanceTask).
}).
#pos(e514@10, {}, {hasAffordance(wrench, stick)}, {
  obj(wrench). hasPhysicalQuality(wrench, heavy). hasPhysicalQuality(wrench, rigid). hasRole(wrench, toolRole). affordsTask(wrench, maintenanceTask).
}).
