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
#pos(e9@100, {hasAffordance(binder, grasp)}, {}, {
  obj(binder). hasPhysicalQuality(binder, lightweight). hasPhysicalQuality(binder, rigid). hasRole(binder, storageContainerRole). affordsTask(binder, storageTask).
}).
#pos(e10@100, {hasAffordance(book, contain)}, {}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask).
}).
#pos(e11@100, {hasAffordance(book, pick)}, {}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask).
}).
#pos(e12@100, {hasAffordance(book, read)}, {}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask).
}).
#pos(e13@100, {hasAffordance(bottle, break)}, {}, {
  obj(bottle). hasPhysicalQuality(bottle, hasContainer). hasRole(bottle, storageContainerRole). affordsTask(bottle, eatingDrinkingTask).
}).
#pos(e14@100, {hasAffordance(bottle, carry)}, {}, {
  obj(bottle). hasPhysicalQuality(bottle, hasContainer). hasRole(bottle, storageContainerRole). affordsTask(bottle, eatingDrinkingTask).
}).
#pos(e15@100, {hasAffordance(bottle, contain)}, {}, {
  obj(bottle). hasPhysicalQuality(bottle, hasContainer). hasRole(bottle, storageContainerRole). affordsTask(bottle, eatingDrinkingTask).
}).
#pos(e16@100, {hasAffordance(bottle, pick)}, {}, {
  obj(bottle). hasPhysicalQuality(bottle, hasContainer). hasRole(bottle, storageContainerRole). affordsTask(bottle, eatingDrinkingTask).
}).
#pos(e17@100, {hasAffordance(bowl, be_heated)}, {}, {
  obj(bowl). hasPhysicalQuality(bowl, hasContainer). hasRole(bowl, storageContainerRole). affordsTask(bowl, eatingDrinkingTask). affordsTask(bowl, foodPreparationTask).
}).
#pos(e18@100, {hasAffordance(bowl, break)}, {}, {
  obj(bowl). hasPhysicalQuality(bowl, hasContainer). hasRole(bowl, storageContainerRole). affordsTask(bowl, eatingDrinkingTask). affordsTask(bowl, foodPreparationTask).
}).
#pos(e19@100, {hasAffordance(bowl, carry)}, {}, {
  obj(bowl). hasPhysicalQuality(bowl, hasContainer). hasRole(bowl, storageContainerRole). affordsTask(bowl, eatingDrinkingTask). affordsTask(bowl, foodPreparationTask).
}).
#pos(e20@100, {hasAffordance(bowl, contain)}, {}, {
  obj(bowl). hasPhysicalQuality(bowl, hasContainer). hasRole(bowl, storageContainerRole). affordsTask(bowl, eatingDrinkingTask). affordsTask(bowl, foodPreparationTask).
}).
#pos(e21@100, {hasAffordance(bowl, pick)}, {}, {
  obj(bowl). hasPhysicalQuality(bowl, hasContainer). hasRole(bowl, storageContainerRole). affordsTask(bowl, eatingDrinkingTask). affordsTask(bowl, foodPreparationTask).
}).
#pos(e22@100, {hasAffordance(bowl, support)}, {}, {
  obj(bowl). hasPhysicalQuality(bowl, hasContainer). hasRole(bowl, storageContainerRole). affordsTask(bowl, eatingDrinkingTask). affordsTask(bowl, foodPreparationTask).
}).
#pos(e23@100, {hasAffordance(bowl, wrap)}, {}, {
  obj(bowl). hasPhysicalQuality(bowl, hasContainer). hasRole(bowl, storageContainerRole). affordsTask(bowl, eatingDrinkingTask). affordsTask(bowl, foodPreparationTask).
}).
#pos(e24@100, {hasAffordance(box, contain)}, {}, {
  obj(box). hasPhysicalQuality(box, heavy). hasPhysicalQuality(box, rigid). hasRole(box, storageContainerRole). affordsTask(box, storageTask).
}).
#pos(e25@100, {hasAffordance(box, pick)}, {}, {
  obj(box). hasPhysicalQuality(box, heavy). hasPhysicalQuality(box, rigid). hasRole(box, storageContainerRole). affordsTask(box, storageTask).
}).
#pos(e26@100, {hasAffordance(box, store)}, {}, {
  obj(box). hasPhysicalQuality(box, heavy). hasPhysicalQuality(box, rigid). hasRole(box, storageContainerRole). affordsTask(box, storageTask).
}).
#pos(e27@100, {hasAffordance(bread, cut)}, {}, {
  obj(bread). hasPhysicalQuality(bread, granular). hasPhysicalQuality(bread, perishable). hasRole(bread, consumableRole). affordsTask(bread, eatingDrinkingTask). affordsTask(bread, foodPreparationTask).
}).
#pos(e28@100, {hasAffordance(bread, eat)}, {}, {
  obj(bread). hasPhysicalQuality(bread, granular). hasPhysicalQuality(bread, perishable). hasRole(bread, consumableRole). affordsTask(bread, eatingDrinkingTask). affordsTask(bread, foodPreparationTask).
}).
#pos(e29@100, {hasAffordance(bread, pick)}, {}, {
  obj(bread). hasPhysicalQuality(bread, granular). hasPhysicalQuality(bread, perishable). hasRole(bread, consumableRole). affordsTask(bread, eatingDrinkingTask). affordsTask(bread, foodPreparationTask).
}).
#pos(e30@100, {hasAffordance(calculator, display)}, {}, {
  obj(calculator). hasPhysicalQuality(calculator, electronic). hasPhysicalQuality(calculator, lightweight). hasRole(calculator, toolRole). affordsTask(calculator, workStudyTask).
}).
#pos(e31@100, {hasAffordance(calculator, grasp)}, {}, {
  obj(calculator). hasPhysicalQuality(calculator, electronic). hasPhysicalQuality(calculator, lightweight). hasRole(calculator, toolRole). affordsTask(calculator, workStudyTask).
}).
#pos(e32@100, {hasAffordance(camera, grasp)}, {}, {
  obj(camera). hasPhysicalQuality(camera, electronic). hasPhysicalQuality(camera, lightweight). hasRole(camera, toolRole). affordsTask(camera, workStudyTask).
}).
#pos(e33@100, {hasAffordance(can_opener, change)}, {}, {
  obj(can_opener). hasPhysicalQuality(can_opener, electronic). hasPhysicalQuality(can_opener, heavy). hasRole(can_opener, toolRole). affordsTask(can_opener, foodPreparationTask).
}).
#pos(e34@100, {hasAffordance(can_opener, fix)}, {}, {
  obj(can_opener). hasPhysicalQuality(can_opener, electronic). hasPhysicalQuality(can_opener, heavy). hasRole(can_opener, toolRole). affordsTask(can_opener, foodPreparationTask).
}).
#pos(e35@100, {hasAffordance(can_opener, grasp)}, {}, {
  obj(can_opener). hasPhysicalQuality(can_opener, electronic). hasPhysicalQuality(can_opener, heavy). hasRole(can_opener, toolRole). affordsTask(can_opener, foodPreparationTask).
}).
#pos(e36@100, {hasAffordance(can_opener, hold)}, {}, {
  obj(can_opener). hasPhysicalQuality(can_opener, electronic). hasPhysicalQuality(can_opener, heavy). hasRole(can_opener, toolRole). affordsTask(can_opener, foodPreparationTask).
}).
#pos(e37@100, {hasAffordance(can_opener, repair)}, {}, {
  obj(can_opener). hasPhysicalQuality(can_opener, electronic). hasPhysicalQuality(can_opener, heavy). hasRole(can_opener, toolRole). affordsTask(can_opener, foodPreparationTask).
}).
#pos(e38@100, {hasAffordance(candle, decorate)}, {}, {
  obj(candle). hasPhysicalQuality(candle, flammable). hasPhysicalQuality(candle, heated). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e39@100, {hasAffordance(candle, heat)}, {}, {
  obj(candle). hasPhysicalQuality(candle, flammable). hasPhysicalQuality(candle, heated). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e40@100, {hasAffordance(candle, illuminate)}, {}, {
  obj(candle). hasPhysicalQuality(candle, flammable). hasPhysicalQuality(candle, heated). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e41@100, {hasAffordance(candle, operate)}, {}, {
  obj(candle). hasPhysicalQuality(candle, flammable). hasPhysicalQuality(candle, heated). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e42@100, {hasAffordance(candle, pick)}, {}, {
  obj(candle). hasPhysicalQuality(candle, flammable). hasPhysicalQuality(candle, heated). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e43@100, {hasAffordance(chair, comfort)}, {}, {
  obj(chair). hasPhysicalQuality(chair, heavy). hasPhysicalQuality(chair, rigid). hasRole(chair, furnitureRole). affordsTask(chair, storageTask).
}).
#pos(e44@100, {hasAffordance(chair, contain)}, {}, {
  obj(chair). hasPhysicalQuality(chair, heavy). hasPhysicalQuality(chair, rigid). hasRole(chair, furnitureRole). affordsTask(chair, storageTask).
}).
#pos(e45@100, {hasAffordance(chair, increase)}, {}, {
  obj(chair). hasPhysicalQuality(chair, heavy). hasPhysicalQuality(chair, rigid). hasRole(chair, furnitureRole). affordsTask(chair, storageTask).
}).
#pos(e46@100, {hasAffordance(chair, support)}, {}, {
  obj(chair). hasPhysicalQuality(chair, heavy). hasPhysicalQuality(chair, rigid). hasRole(chair, furnitureRole). affordsTask(chair, storageTask).
}).
#pos(e47@100, {hasAffordance(cloth, clean)}, {}, {
  obj(cloth). hasPhysicalQuality(cloth, soft_Deformable). hasPhysicalQuality(cloth, washable). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask).
}).
#pos(e48@100, {hasAffordance(cloth, pick)}, {}, {
  obj(cloth). hasPhysicalQuality(cloth, soft_Deformable). hasPhysicalQuality(cloth, washable). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask).
}).
#pos(e49@100, {hasAffordance(coffee, eat)}, {}, {
  obj(coffee). hasPhysicalQuality(coffee, liquid). hasPhysicalQuality(coffee, perishable). hasRole(coffee, consumableRole). affordsTask(coffee, eatingDrinkingTask).
}).
#pos(e50@100, {hasAffordance(coffee_mug, contain)}, {}, {
  obj(coffee_mug). hasPhysicalQuality(coffee_mug, hasContainer). hasPhysicalQuality(coffee_mug, liquid). hasRole(coffee_mug, utensilRole). affordsTask(coffee_mug, eatingDrinkingTask).
}).
#pos(e51@100, {hasAffordance(coffee_mug, grasp)}, {}, {
  obj(coffee_mug). hasPhysicalQuality(coffee_mug, hasContainer). hasPhysicalQuality(coffee_mug, liquid). hasRole(coffee_mug, utensilRole). affordsTask(coffee_mug, eatingDrinkingTask).
}).
#pos(e52@100, {hasAffordance(coffee_mug, pour)}, {}, {
  obj(coffee_mug). hasPhysicalQuality(coffee_mug, hasContainer). hasPhysicalQuality(coffee_mug, liquid). hasRole(coffee_mug, utensilRole). affordsTask(coffee_mug, eatingDrinkingTask).
}).
#pos(e53@100, {hasAffordance(coffee_mug, wrap)}, {}, {
  obj(coffee_mug). hasPhysicalQuality(coffee_mug, hasContainer). hasPhysicalQuality(coffee_mug, liquid). hasRole(coffee_mug, utensilRole). affordsTask(coffee_mug, eatingDrinkingTask).
}).
#pos(e54@100, {hasAffordance(cup, be_heated)}, {}, {
  obj(cup). hasPhysicalQuality(cup, hasContainer). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e55@100, {hasAffordance(cup, break)}, {}, {
  obj(cup). hasPhysicalQuality(cup, hasContainer). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e56@100, {hasAffordance(cup, carry)}, {}, {
  obj(cup). hasPhysicalQuality(cup, hasContainer). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e57@100, {hasAffordance(cup, contain)}, {}, {
  obj(cup). hasPhysicalQuality(cup, hasContainer). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e58@100, {hasAffordance(cup, pick)}, {}, {
  obj(cup). hasPhysicalQuality(cup, hasContainer). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e59@100, {hasAffordance(cup, support)}, {}, {
  obj(cup). hasPhysicalQuality(cup, hasContainer). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e60@100, {hasAffordance(curtain, decorate)}, {}, {
  obj(curtain). hasPhysicalQuality(curtain, lightweight). hasPhysicalQuality(curtain, soft_Deformable). hasRole(curtain, furnitureRole). affordsTask(curtain, leisureTask).
}).
#pos(e61@100, {hasAffordance(curtain, illuminate)}, {}, {
  obj(curtain). hasPhysicalQuality(curtain, lightweight). hasPhysicalQuality(curtain, soft_Deformable). hasRole(curtain, furnitureRole). affordsTask(curtain, leisureTask).
}).
#pos(e62@100, {hasAffordance(desk, contain)}, {}, {
  obj(desk). hasPhysicalQuality(desk, heavy). hasPhysicalQuality(desk, rigid). hasRole(desk, furnitureRole). affordsTask(desk, workStudyTask).
}).
#pos(e63@100, {hasAffordance(desk, increase)}, {}, {
  obj(desk). hasPhysicalQuality(desk, heavy). hasPhysicalQuality(desk, rigid). hasRole(desk, furnitureRole). affordsTask(desk, workStudyTask).
}).
#pos(e64@100, {hasAffordance(desk, store)}, {}, {
  obj(desk). hasPhysicalQuality(desk, heavy). hasPhysicalQuality(desk, rigid). hasRole(desk, furnitureRole). affordsTask(desk, workStudyTask).
}).
#pos(e65@100, {hasAffordance(desk, support)}, {}, {
  obj(desk). hasPhysicalQuality(desk, heavy). hasPhysicalQuality(desk, rigid). hasRole(desk, furnitureRole). affordsTask(desk, workStudyTask).
}).
#pos(e66@100, {hasAffordance(drawer, contain)}, {}, {
  obj(drawer). hasPhysicalQuality(drawer, hasContainer). hasRole(drawer, furnitureRole). hasRole(drawer, storageContainerRole). affordsTask(drawer, storageTask).
}).
#pos(e67@100, {hasAffordance(drawer, store)}, {}, {
  obj(drawer). hasPhysicalQuality(drawer, hasContainer). hasRole(drawer, furnitureRole). hasRole(drawer, storageContainerRole). affordsTask(drawer, storageTask).
}).
#pos(e68@100, {hasAffordance(dresser, contain)}, {}, {
  obj(dresser). hasPhysicalQuality(dresser, heavy). hasPhysicalQuality(dresser, rigid). hasRole(dresser, furnitureRole). affordsTask(dresser, storageTask).
}).
#pos(e69@100, {hasAffordance(dresser, increase)}, {}, {
  obj(dresser). hasPhysicalQuality(dresser, heavy). hasPhysicalQuality(dresser, rigid). hasRole(dresser, furnitureRole). affordsTask(dresser, storageTask).
}).
#pos(e70@100, {hasAffordance(dresser, store)}, {}, {
  obj(dresser). hasPhysicalQuality(dresser, heavy). hasPhysicalQuality(dresser, rigid). hasRole(dresser, furnitureRole). affordsTask(dresser, storageTask).
}).
#pos(e71@100, {hasAffordance(dresser, support)}, {}, {
  obj(dresser). hasPhysicalQuality(dresser, heavy). hasPhysicalQuality(dresser, rigid). hasRole(dresser, furnitureRole). affordsTask(dresser, storageTask).
}).
#pos(e72@100, {hasAffordance(drill, bore)}, {}, {
  obj(drill). hasPhysicalQuality(drill, heavy). hasPhysicalQuality(drill, isRotary). hasPhysicalQuality(drill, rigid). hasRole(drill, toolRole). affordsTask(drill, maintenanceTask).
}).
#pos(e73@100, {hasAffordance(drill, change)}, {}, {
  obj(drill). hasPhysicalQuality(drill, heavy). hasPhysicalQuality(drill, isRotary). hasPhysicalQuality(drill, rigid). hasRole(drill, toolRole). affordsTask(drill, maintenanceTask).
}).
#pos(e74@100, {hasAffordance(drill, cut)}, {}, {
  obj(drill). hasPhysicalQuality(drill, heavy). hasPhysicalQuality(drill, isRotary). hasPhysicalQuality(drill, rigid). hasRole(drill, toolRole). affordsTask(drill, maintenanceTask).
}).
#pos(e75@100, {hasAffordance(drill, drill)}, {}, {
  obj(drill). hasPhysicalQuality(drill, heavy). hasPhysicalQuality(drill, isRotary). hasPhysicalQuality(drill, rigid). hasRole(drill, toolRole). affordsTask(drill, maintenanceTask).
}).
#pos(e76@100, {hasAffordance(drill, fix)}, {}, {
  obj(drill). hasPhysicalQuality(drill, heavy). hasPhysicalQuality(drill, isRotary). hasPhysicalQuality(drill, rigid). hasRole(drill, toolRole). affordsTask(drill, maintenanceTask).
}).
#pos(e77@100, {hasAffordance(drill, repair)}, {}, {
  obj(drill). hasPhysicalQuality(drill, heavy). hasPhysicalQuality(drill, isRotary). hasPhysicalQuality(drill, rigid). hasRole(drill, toolRole). affordsTask(drill, maintenanceTask).
}).
#pos(e78@100, {hasAffordance(drill, separate)}, {}, {
  obj(drill). hasPhysicalQuality(drill, heavy). hasPhysicalQuality(drill, isRotary). hasPhysicalQuality(drill, rigid). hasRole(drill, toolRole). affordsTask(drill, maintenanceTask).
}).
#pos(e79@100, {hasAffordance(egg, break)}, {}, {
  obj(egg). hasPhysicalQuality(egg, fragile). hasPhysicalQuality(egg, perishable). hasRole(egg, consumableRole). affordsTask(egg, foodPreparationTask).
}).
#pos(e80@100, {hasAffordance(egg, cut)}, {}, {
  obj(egg). hasPhysicalQuality(egg, fragile). hasPhysicalQuality(egg, perishable). hasRole(egg, consumableRole). affordsTask(egg, foodPreparationTask).
}).
#pos(e81@100, {hasAffordance(egg, eat)}, {}, {
  obj(egg). hasPhysicalQuality(egg, fragile). hasPhysicalQuality(egg, perishable). hasRole(egg, consumableRole). affordsTask(egg, foodPreparationTask).
}).
#pos(e82@100, {hasAffordance(egg, pick)}, {}, {
  obj(egg). hasPhysicalQuality(egg, fragile). hasPhysicalQuality(egg, perishable). hasRole(egg, consumableRole). affordsTask(egg, foodPreparationTask).
}).
#pos(e83@100, {hasAffordance(faucet, operate)}, {}, {
  obj(faucet). hasPhysicalQuality(faucet, electronic). hasPhysicalQuality(faucet, liquid). hasRole(faucet, toolRole). affordsTask(faucet, hygieneTask).
}).
#pos(e84@100, {hasAffordance(file, beautify)}, {}, {
  obj(file). hasPhysicalQuality(file, lightweight). hasRole(file, documentRole). affordsTask(file, storageTask).
}).
#pos(e85@100, {hasAffordance(file, change)}, {}, {
  obj(file). hasPhysicalQuality(file, lightweight). hasRole(file, documentRole). affordsTask(file, storageTask).
}).
#pos(e86@100, {hasAffordance(file, file)}, {}, {
  obj(file). hasPhysicalQuality(file, lightweight). hasRole(file, documentRole). affordsTask(file, storageTask).
}).
#pos(e87@100, {hasAffordance(file, fix)}, {}, {
  obj(file). hasPhysicalQuality(file, lightweight). hasRole(file, documentRole). affordsTask(file, storageTask).
}).
#pos(e88@100, {hasAffordance(file, grasp)}, {}, {
  obj(file). hasPhysicalQuality(file, lightweight). hasRole(file, documentRole). affordsTask(file, storageTask).
}).
#pos(e89@100, {hasAffordance(file, hold)}, {}, {
  obj(file). hasPhysicalQuality(file, lightweight). hasRole(file, documentRole). affordsTask(file, storageTask).
}).
#pos(e90@100, {hasAffordance(file, polish)}, {}, {
  obj(file). hasPhysicalQuality(file, lightweight). hasRole(file, documentRole). affordsTask(file, storageTask).
}).
#pos(e91@100, {hasAffordance(file, repair)}, {}, {
  obj(file). hasPhysicalQuality(file, lightweight). hasRole(file, documentRole). affordsTask(file, storageTask).
}).
#pos(e92@100, {hasAffordance(floor, contain)}, {}, {
  obj(floor). hasPhysicalQuality(floor, heavy). hasPhysicalQuality(floor, rigid). hasRole(floor, furnitureRole). affordsTask(floor, storageTask).
}).
#pos(e93@100, {hasAffordance(floor, support)}, {}, {
  obj(floor). hasPhysicalQuality(floor, heavy). hasPhysicalQuality(floor, rigid). hasRole(floor, furnitureRole). affordsTask(floor, storageTask).
}).
#pos(e94@100, {hasAffordance(footstool, contain)}, {}, {
  obj(footstool). hasPhysicalQuality(footstool, heavy). hasPhysicalQuality(footstool, rigid). hasRole(footstool, furnitureRole). affordsTask(footstool, leisureTask).
}).
#pos(e95@100, {hasAffordance(footstool, increase)}, {}, {
  obj(footstool). hasPhysicalQuality(footstool, heavy). hasPhysicalQuality(footstool, rigid). hasRole(footstool, furnitureRole). affordsTask(footstool, leisureTask).
}).
#pos(e96@100, {hasAffordance(footstool, pick)}, {}, {
  obj(footstool). hasPhysicalQuality(footstool, heavy). hasPhysicalQuality(footstool, rigid). hasRole(footstool, furnitureRole). affordsTask(footstool, leisureTask).
}).
#pos(e97@100, {hasAffordance(footstool, support)}, {}, {
  obj(footstool). hasPhysicalQuality(footstool, heavy). hasPhysicalQuality(footstool, rigid). hasRole(footstool, furnitureRole). affordsTask(footstool, leisureTask).
}).
#pos(e98@100, {hasAffordance(fork, break)}, {}, {
  obj(fork). hasPhysicalQuality(fork, rigid). hasPhysicalQuality(fork, sharp). hasRole(fork, utensilRole). affordsTask(fork, foodPreparationTask).
}).
#pos(e99@100, {hasAffordance(fork, change)}, {}, {
  obj(fork). hasPhysicalQuality(fork, rigid). hasPhysicalQuality(fork, sharp). hasRole(fork, utensilRole). affordsTask(fork, foodPreparationTask).
}).
#pos(e100@100, {hasAffordance(fork, cut)}, {}, {
  obj(fork). hasPhysicalQuality(fork, rigid). hasPhysicalQuality(fork, sharp). hasRole(fork, utensilRole). affordsTask(fork, foodPreparationTask).
}).
#pos(e101@100, {hasAffordance(fork, fix)}, {}, {
  obj(fork). hasPhysicalQuality(fork, rigid). hasPhysicalQuality(fork, sharp). hasRole(fork, utensilRole). affordsTask(fork, foodPreparationTask).
}).
#pos(e102@100, {hasAffordance(fork, mix)}, {}, {
  obj(fork). hasPhysicalQuality(fork, rigid). hasPhysicalQuality(fork, sharp). hasRole(fork, utensilRole). affordsTask(fork, foodPreparationTask).
}).
#pos(e103@100, {hasAffordance(fork, pick)}, {}, {
  obj(fork). hasPhysicalQuality(fork, rigid). hasPhysicalQuality(fork, sharp). hasRole(fork, utensilRole). affordsTask(fork, foodPreparationTask).
}).
#pos(e104@100, {hasAffordance(fork, repair)}, {}, {
  obj(fork). hasPhysicalQuality(fork, rigid). hasPhysicalQuality(fork, sharp). hasRole(fork, utensilRole). affordsTask(fork, foodPreparationTask).
}).
#pos(e105@100, {hasAffordance(fridge, contain)}, {}, {
  obj(fridge). hasPhysicalQuality(fridge, electronic). hasPhysicalQuality(fridge, heavy). hasRole(fridge, applianceRole). affordsTask(fridge, storageTask).
}).
#pos(e106@100, {hasAffordance(fridge, cool)}, {}, {
  obj(fridge). hasPhysicalQuality(fridge, electronic). hasPhysicalQuality(fridge, heavy). hasRole(fridge, applianceRole). affordsTask(fridge, storageTask).
}).
#pos(e107@100, {hasAffordance(fridge, store)}, {}, {
  obj(fridge). hasPhysicalQuality(fridge, electronic). hasPhysicalQuality(fridge, heavy). hasRole(fridge, applianceRole). affordsTask(fridge, storageTask).
}).
#pos(e108@100, {hasAffordance(garbage_can, dispose)}, {}, {
  obj(garbage_can). hasPhysicalQuality(garbage_can, hasContainer). hasPhysicalQuality(garbage_can, heavy). hasRole(garbage_can, storageContainerRole). affordsTask(garbage_can, wasteDisposalTask).
}).
#pos(e109@100, {hasAffordance(glue_stick, grasp)}, {}, {
  obj(glue_stick). hasPhysicalQuality(glue_stick, fragile). hasPhysicalQuality(glue_stick, liquid). hasRole(glue_stick, toolRole). affordsTask(glue_stick, maintenanceTask).
}).
#pos(e110@100, {hasAffordance(gutter, change)}, {}, {
  obj(gutter). hasPhysicalQuality(gutter, heavy). hasPhysicalQuality(gutter, rigid). hasRole(gutter, toolRole). affordsTask(gutter, maintenanceTask).
}).
#pos(e111@100, {hasAffordance(gutter, fix)}, {}, {
  obj(gutter). hasPhysicalQuality(gutter, heavy). hasPhysicalQuality(gutter, rigid). hasRole(gutter, toolRole). affordsTask(gutter, maintenanceTask).
}).
#pos(e112@100, {hasAffordance(gutter, grasp)}, {}, {
  obj(gutter). hasPhysicalQuality(gutter, heavy). hasPhysicalQuality(gutter, rigid). hasRole(gutter, toolRole). affordsTask(gutter, maintenanceTask).
}).
#pos(e113@100, {hasAffordance(gutter, hold)}, {}, {
  obj(gutter). hasPhysicalQuality(gutter, heavy). hasPhysicalQuality(gutter, rigid). hasRole(gutter, toolRole). affordsTask(gutter, maintenanceTask).
}).
#pos(e114@100, {hasAffordance(gutter, repair)}, {}, {
  obj(gutter). hasPhysicalQuality(gutter, heavy). hasPhysicalQuality(gutter, rigid). hasRole(gutter, toolRole). affordsTask(gutter, maintenanceTask).
}).
#pos(e115@100, {hasAffordance(hammer, break)}, {}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e116@100, {hasAffordance(hammer, change)}, {}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e117@100, {hasAffordance(hammer, clean)}, {}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e118@100, {hasAffordance(hammer, control)}, {}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e119@100, {hasAffordance(hammer, fix)}, {}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e120@100, {hasAffordance(hammer, hammer)}, {}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e121@100, {hasAffordance(hammer, handle)}, {}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e122@100, {hasAffordance(hammer, install)}, {}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e123@100, {hasAffordance(hammer, operate)}, {}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e124@100, {hasAffordance(hammer, plug)}, {}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e125@100, {hasAffordance(hammer, repair)}, {}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e126@100, {hasAffordance(hammer, wash)}, {}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e127@100, {hasAffordance(kettle, be_heated)}, {}, {
  obj(kettle). hasPhysicalQuality(kettle, heated). hasPhysicalQuality(kettle, heavy). hasRole(kettle, cookwareRole). affordsTask(kettle, foodPreparationTask).
}).
#pos(e128@100, {hasAffordance(kettle, carry)}, {}, {
  obj(kettle). hasPhysicalQuality(kettle, heated). hasPhysicalQuality(kettle, heavy). hasRole(kettle, cookwareRole). affordsTask(kettle, foodPreparationTask).
}).
#pos(e129@100, {hasAffordance(kettle, contain)}, {}, {
  obj(kettle). hasPhysicalQuality(kettle, heated). hasPhysicalQuality(kettle, heavy). hasRole(kettle, cookwareRole). affordsTask(kettle, foodPreparationTask).
}).
#pos(e130@100, {hasAffordance(kettle, pick)}, {}, {
  obj(kettle). hasPhysicalQuality(kettle, heated). hasPhysicalQuality(kettle, heavy). hasRole(kettle, cookwareRole). affordsTask(kettle, foodPreparationTask).
}).
#pos(e131@100, {hasAffordance(keyboard, grasp)}, {}, {
  obj(keyboard). hasPhysicalQuality(keyboard, electronic). hasPhysicalQuality(keyboard, lightweight). hasRole(keyboard, toolRole). affordsTask(keyboard, workStudyTask).
}).
#pos(e132@100, {hasAffordance(kleenex, dry)}, {}, {
  obj(kleenex). hasPhysicalQuality(kleenex, lightweight). hasPhysicalQuality(kleenex, soft_Deformable). hasRole(kleenex, consumableRole). affordsTask(kleenex, hygieneTask).
}).
#pos(e133@100, {hasAffordance(kleenex, grasp)}, {}, {
  obj(kleenex). hasPhysicalQuality(kleenex, lightweight). hasPhysicalQuality(kleenex, soft_Deformable). hasRole(kleenex, consumableRole). affordsTask(kleenex, hygieneTask).
}).
#pos(e134@100, {hasAffordance(knife, break)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e135@100, {hasAffordance(knife, carve)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e136@100, {hasAffordance(knife, change)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e137@100, {hasAffordance(knife, crack)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e138@100, {hasAffordance(knife, cube)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e139@100, {hasAffordance(knife, cut)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e140@100, {hasAffordance(knife, dice)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e141@100, {hasAffordance(knife, fix)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e142@100, {hasAffordance(knife, mix)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e143@100, {hasAffordance(knife, peel)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e144@100, {hasAffordance(knife, pick)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e145@100, {hasAffordance(knife, repair)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e146@100, {hasAffordance(knife, separate)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e147@100, {hasAffordance(knife, skin)}, {}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e148@100, {hasAffordance(lettuce, cut)}, {}, {
  obj(lettuce). hasPhysicalQuality(lettuce, perishable). hasRole(lettuce, consumableRole). affordsTask(lettuce, foodPreparationTask).
}).
#pos(e149@100, {hasAffordance(lettuce, eat)}, {}, {
  obj(lettuce). hasPhysicalQuality(lettuce, perishable). hasRole(lettuce, consumableRole). affordsTask(lettuce, foodPreparationTask).
}).
#pos(e150@100, {hasAffordance(lettuce, pick)}, {}, {
  obj(lettuce). hasPhysicalQuality(lettuce, perishable). hasRole(lettuce, consumableRole). affordsTask(lettuce, foodPreparationTask).
}).
#pos(e151@100, {hasAffordance(lightbulb, grasp)}, {}, {
  obj(lightbulb). hasPhysicalQuality(lightbulb, electronic). hasPhysicalQuality(lightbulb, lightweight). hasRole(lightbulb, lightingRole). affordsTask(lightbulb, leisureTask).
}).
#pos(e152@100, {hasAffordance(lightbulb, illuminate)}, {}, {
  obj(lightbulb). hasPhysicalQuality(lightbulb, electronic). hasPhysicalQuality(lightbulb, lightweight). hasRole(lightbulb, lightingRole). affordsTask(lightbulb, leisureTask).
}).
#pos(e153@100, {hasAffordance(marker, grasp)}, {}, {
  obj(marker). hasPhysicalQuality(marker, lightweight). hasRole(marker, toolRole). affordsTask(marker, foodPreparationTask).
}).
#pos(e154@100, {hasAffordance(microwave, contain)}, {}, {
  obj(microwave). hasPhysicalQuality(microwave, electronic). hasPhysicalQuality(microwave, heated). hasRole(microwave, applianceRole). affordsTask(microwave, foodPreparationTask).
}).
#pos(e155@100, {hasAffordance(microwave, heat)}, {}, {
  obj(microwave). hasPhysicalQuality(microwave, electronic). hasPhysicalQuality(microwave, heated). hasRole(microwave, applianceRole). affordsTask(microwave, foodPreparationTask).
}).
#pos(e156@100, {hasAffordance(microwave, operate)}, {}, {
  obj(microwave). hasPhysicalQuality(microwave, electronic). hasPhysicalQuality(microwave, heated). hasRole(microwave, applianceRole). affordsTask(microwave, foodPreparationTask).
}).
#pos(e157@100, {hasAffordance(mirror, break)}, {}, {
  obj(mirror). hasPhysicalQuality(mirror, electronic). hasPhysicalQuality(mirror, rigid). hasRole(mirror, decorationRole).
}).
#pos(e158@100, {hasAffordance(mug, be_heated)}, {}, {
  obj(mug). hasPhysicalQuality(mug, hasContainer). hasPhysicalQuality(mug, liquid). hasRole(mug, utensilRole). affordsTask(mug, eatingDrinkingTask).
}).
#pos(e159@100, {hasAffordance(mug, break)}, {}, {
  obj(mug). hasPhysicalQuality(mug, hasContainer). hasPhysicalQuality(mug, liquid). hasRole(mug, utensilRole). affordsTask(mug, eatingDrinkingTask).
}).
#pos(e160@100, {hasAffordance(mug, carry)}, {}, {
  obj(mug). hasPhysicalQuality(mug, hasContainer). hasPhysicalQuality(mug, liquid). hasRole(mug, utensilRole). affordsTask(mug, eatingDrinkingTask).
}).
#pos(e161@100, {hasAffordance(mug, contain)}, {}, {
  obj(mug). hasPhysicalQuality(mug, hasContainer). hasPhysicalQuality(mug, liquid). hasRole(mug, utensilRole). affordsTask(mug, eatingDrinkingTask).
}).
#pos(e162@100, {hasAffordance(mug, pick)}, {}, {
  obj(mug). hasPhysicalQuality(mug, hasContainer). hasPhysicalQuality(mug, liquid). hasRole(mug, utensilRole). affordsTask(mug, eatingDrinkingTask).
}).
#pos(e163@100, {hasAffordance(notebook, grasp)}, {}, {
  obj(notebook). hasPhysicalQuality(notebook, lightweight). hasPhysicalQuality(notebook, rigid). hasRole(notebook, documentRole). affordsTask(notebook, workStudyTask).
}).
#pos(e164@100, {hasAffordance(ottoman, comfort)}, {}, {
  obj(ottoman). hasPhysicalQuality(ottoman, heavy). hasPhysicalQuality(ottoman, soft_Deformable). hasRole(ottoman, furnitureRole). affordsTask(ottoman, leisureTask).
}).
#pos(e165@100, {hasAffordance(ottoman, contain)}, {}, {
  obj(ottoman). hasPhysicalQuality(ottoman, heavy). hasPhysicalQuality(ottoman, soft_Deformable). hasRole(ottoman, furnitureRole). affordsTask(ottoman, leisureTask).
}).
#pos(e166@100, {hasAffordance(ottoman, increase)}, {}, {
  obj(ottoman). hasPhysicalQuality(ottoman, heavy). hasPhysicalQuality(ottoman, soft_Deformable). hasRole(ottoman, furnitureRole). affordsTask(ottoman, leisureTask).
}).
#pos(e167@100, {hasAffordance(ottoman, support)}, {}, {
  obj(ottoman). hasPhysicalQuality(ottoman, heavy). hasPhysicalQuality(ottoman, soft_Deformable). hasRole(ottoman, furnitureRole). affordsTask(ottoman, leisureTask).
}).
#pos(e168@100, {hasAffordance(oven, heat)}, {}, {
  obj(oven). hasPhysicalQuality(oven, heated). hasRole(oven, cookwareRole). affordsTask(oven, foodPreparationTask).
}).
#pos(e169@100, {hasAffordance(pan, be_heated)}, {}, {
  obj(pan). hasPhysicalQuality(pan, heated). hasPhysicalQuality(pan, rigid). hasRole(pan, cookwareRole). affordsTask(pan, foodPreparationTask).
}).
#pos(e170@100, {hasAffordance(pan, carry)}, {}, {
  obj(pan). hasPhysicalQuality(pan, heated). hasPhysicalQuality(pan, rigid). hasRole(pan, cookwareRole). affordsTask(pan, foodPreparationTask).
}).
#pos(e171@100, {hasAffordance(pan, contain)}, {}, {
  obj(pan). hasPhysicalQuality(pan, heated). hasPhysicalQuality(pan, rigid). hasRole(pan, cookwareRole). affordsTask(pan, foodPreparationTask).
}).
#pos(e172@100, {hasAffordance(pan, pick)}, {}, {
  obj(pan). hasPhysicalQuality(pan, heated). hasPhysicalQuality(pan, rigid). hasRole(pan, cookwareRole). affordsTask(pan, foodPreparationTask).
}).
#pos(e173@100, {hasAffordance(pen, pick)}, {}, {
  obj(pen). hasPhysicalQuality(pen, lightweight). hasPhysicalQuality(pen, rigid). hasRole(pen, toolRole). affordsTask(pen, workStudyTask).
}).
#pos(e174@100, {hasAffordance(pen, write)}, {}, {
  obj(pen). hasPhysicalQuality(pen, lightweight). hasPhysicalQuality(pen, rigid). hasRole(pen, toolRole). affordsTask(pen, workStudyTask).
}).
#pos(e175@100, {hasAffordance(pencil, pick)}, {}, {
  obj(pencil). hasPhysicalQuality(pencil, lightweight). hasPhysicalQuality(pencil, rigid). hasRole(pencil, toolRole).
}).
#pos(e176@100, {hasAffordance(pencil, write)}, {}, {
  obj(pencil). hasPhysicalQuality(pencil, lightweight). hasPhysicalQuality(pencil, rigid). hasRole(pencil, toolRole).
}).
#pos(e177@100, {hasAffordance(phillips_screwdriver, change)}, {}, {
  obj(phillips_screwdriver). hasPhysicalQuality(phillips_screwdriver, lightweight). hasPhysicalQuality(phillips_screwdriver, rigid). hasRole(phillips_screwdriver, toolRole). affordsTask(phillips_screwdriver, maintenanceTask).
}).
#pos(e178@100, {hasAffordance(phillips_screwdriver, fix)}, {}, {
  obj(phillips_screwdriver). hasPhysicalQuality(phillips_screwdriver, lightweight). hasPhysicalQuality(phillips_screwdriver, rigid). hasRole(phillips_screwdriver, toolRole). affordsTask(phillips_screwdriver, maintenanceTask).
}).
#pos(e179@100, {hasAffordance(phillips_screwdriver, grasp)}, {}, {
  obj(phillips_screwdriver). hasPhysicalQuality(phillips_screwdriver, lightweight). hasPhysicalQuality(phillips_screwdriver, rigid). hasRole(phillips_screwdriver, toolRole). affordsTask(phillips_screwdriver, maintenanceTask).
}).
#pos(e180@100, {hasAffordance(phillips_screwdriver, hold)}, {}, {
  obj(phillips_screwdriver). hasPhysicalQuality(phillips_screwdriver, lightweight). hasPhysicalQuality(phillips_screwdriver, rigid). hasRole(phillips_screwdriver, toolRole). affordsTask(phillips_screwdriver, maintenanceTask).
}).
#pos(e181@100, {hasAffordance(phillips_screwdriver, poke)}, {}, {
  obj(phillips_screwdriver). hasPhysicalQuality(phillips_screwdriver, lightweight). hasPhysicalQuality(phillips_screwdriver, rigid). hasRole(phillips_screwdriver, toolRole). affordsTask(phillips_screwdriver, maintenanceTask).
}).
#pos(e182@100, {hasAffordance(phillips_screwdriver, repair)}, {}, {
  obj(phillips_screwdriver). hasPhysicalQuality(phillips_screwdriver, lightweight). hasPhysicalQuality(phillips_screwdriver, rigid). hasRole(phillips_screwdriver, toolRole). affordsTask(phillips_screwdriver, maintenanceTask).
}).
#pos(e183@100, {hasAffordance(phillips_screwdriver, screw)}, {}, {
  obj(phillips_screwdriver). hasPhysicalQuality(phillips_screwdriver, lightweight). hasPhysicalQuality(phillips_screwdriver, rigid). hasRole(phillips_screwdriver, toolRole). affordsTask(phillips_screwdriver, maintenanceTask).
}).
#pos(e184@100, {hasAffordance(pillow, pick)}, {}, {
  obj(pillow). hasPhysicalQuality(pillow, lightweight). hasPhysicalQuality(pillow, soft_Deformable). hasRole(pillow, beddingRole). affordsTask(pillow, sleepingTask).
}).
#pos(e185@100, {hasAffordance(plate, be_heated)}, {}, {
  obj(plate). hasPhysicalQuality(plate, hasContainer). hasPhysicalQuality(plate, rigid). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e186@100, {hasAffordance(plate, break)}, {}, {
  obj(plate). hasPhysicalQuality(plate, hasContainer). hasPhysicalQuality(plate, rigid). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e187@100, {hasAffordance(plate, carry)}, {}, {
  obj(plate). hasPhysicalQuality(plate, hasContainer). hasPhysicalQuality(plate, rigid). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e188@100, {hasAffordance(plate, contain)}, {}, {
  obj(plate). hasPhysicalQuality(plate, hasContainer). hasPhysicalQuality(plate, rigid). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e189@100, {hasAffordance(plate, grasp)}, {}, {
  obj(plate). hasPhysicalQuality(plate, hasContainer). hasPhysicalQuality(plate, rigid). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e190@100, {hasAffordance(plate, pick)}, {}, {
  obj(plate). hasPhysicalQuality(plate, hasContainer). hasPhysicalQuality(plate, rigid). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e191@100, {hasAffordance(plate, support)}, {}, {
  obj(plate). hasPhysicalQuality(plate, hasContainer). hasPhysicalQuality(plate, rigid). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e192@100, {hasAffordance(poster, decorate)}, {}, {
  obj(poster). hasRole(poster, decorationRole).
}).
#pos(e193@100, {hasAffordance(pot, be_heated)}, {}, {
  obj(pot). hasPhysicalQuality(pot, heavy). hasPhysicalQuality(pot, rigid). hasRole(pot, cookwareRole). affordsTask(pot, foodPreparationTask).
}).
#pos(e194@100, {hasAffordance(pot, carry)}, {}, {
  obj(pot). hasPhysicalQuality(pot, heavy). hasPhysicalQuality(pot, rigid). hasRole(pot, cookwareRole). affordsTask(pot, foodPreparationTask).
}).
#pos(e195@100, {hasAffordance(pot, contain)}, {}, {
  obj(pot). hasPhysicalQuality(pot, heavy). hasPhysicalQuality(pot, rigid). hasRole(pot, cookwareRole). affordsTask(pot, foodPreparationTask).
}).
#pos(e196@100, {hasAffordance(pot, pick)}, {}, {
  obj(pot). hasPhysicalQuality(pot, heavy). hasPhysicalQuality(pot, rigid). hasRole(pot, cookwareRole). affordsTask(pot, foodPreparationTask).
}).
#pos(e197@100, {hasAffordance(remote_control, break)}, {}, {
  obj(remote_control). hasPhysicalQuality(remote_control, electronic). hasPhysicalQuality(remote_control, lightweight). hasRole(remote_control, toolRole). affordsTask(remote_control, leisureTask).
}).
#pos(e198@100, {hasAffordance(salt, eat)}, {}, {
  obj(salt). hasPhysicalQuality(salt, granular). hasRole(salt, consumableRole). affordsTask(salt, foodPreparationTask).
}).
#pos(e199@100, {hasAffordance(saltshaker, pick)}, {}, {
  obj(saltshaker). hasPhysicalQuality(saltshaker, granular). hasPhysicalQuality(saltshaker, lightweight). hasRole(saltshaker, utensilRole). affordsTask(saltshaker, foodPreparationTask).
}).
#pos(e200@100, {hasAffordance(scissors, change)}, {}, {
  obj(scissors). hasPhysicalQuality(scissors, rigid). hasPhysicalQuality(scissors, sharp). hasRole(scissors, toolRole). affordsTask(scissors, maintenanceTask).
}).
#pos(e201@100, {hasAffordance(scissors, cut)}, {}, {
  obj(scissors). hasPhysicalQuality(scissors, rigid). hasPhysicalQuality(scissors, sharp). hasRole(scissors, toolRole). affordsTask(scissors, maintenanceTask).
}).
#pos(e202@100, {hasAffordance(scissors, fix)}, {}, {
  obj(scissors). hasPhysicalQuality(scissors, rigid). hasPhysicalQuality(scissors, sharp). hasRole(scissors, toolRole). affordsTask(scissors, maintenanceTask).
}).
#pos(e203@100, {hasAffordance(scissors, grasp)}, {}, {
  obj(scissors). hasPhysicalQuality(scissors, rigid). hasPhysicalQuality(scissors, sharp). hasRole(scissors, toolRole). affordsTask(scissors, maintenanceTask).
}).
#pos(e204@100, {hasAffordance(scissors, hold)}, {}, {
  obj(scissors). hasPhysicalQuality(scissors, rigid). hasPhysicalQuality(scissors, sharp). hasRole(scissors, toolRole). affordsTask(scissors, maintenanceTask).
}).
#pos(e205@100, {hasAffordance(scissors, peel)}, {}, {
  obj(scissors). hasPhysicalQuality(scissors, rigid). hasPhysicalQuality(scissors, sharp). hasRole(scissors, toolRole). affordsTask(scissors, maintenanceTask).
}).
#pos(e206@100, {hasAffordance(scissors, repair)}, {}, {
  obj(scissors). hasPhysicalQuality(scissors, rigid). hasPhysicalQuality(scissors, sharp). hasRole(scissors, toolRole). affordsTask(scissors, maintenanceTask).
}).
#pos(e207@100, {hasAffordance(scissors, separate)}, {}, {
  obj(scissors). hasPhysicalQuality(scissors, rigid). hasPhysicalQuality(scissors, sharp). hasRole(scissors, toolRole). affordsTask(scissors, maintenanceTask).
}).
#pos(e208@100, {hasAffordance(scissors, skin)}, {}, {
  obj(scissors). hasPhysicalQuality(scissors, rigid). hasPhysicalQuality(scissors, sharp). hasRole(scissors, toolRole). affordsTask(scissors, maintenanceTask).
}).
#pos(e209@100, {hasAffordance(screwdriver, change)}, {}, {
  obj(screwdriver). hasPhysicalQuality(screwdriver, lightweight). hasPhysicalQuality(screwdriver, rigid). hasRole(screwdriver, toolRole). affordsTask(screwdriver, maintenanceTask).
}).
#pos(e210@100, {hasAffordance(screwdriver, fix)}, {}, {
  obj(screwdriver). hasPhysicalQuality(screwdriver, lightweight). hasPhysicalQuality(screwdriver, rigid). hasRole(screwdriver, toolRole). affordsTask(screwdriver, maintenanceTask).
}).
#pos(e211@100, {hasAffordance(screwdriver, grasp)}, {}, {
  obj(screwdriver). hasPhysicalQuality(screwdriver, lightweight). hasPhysicalQuality(screwdriver, rigid). hasRole(screwdriver, toolRole). affordsTask(screwdriver, maintenanceTask).
}).
#pos(e212@100, {hasAffordance(screwdriver, hold)}, {}, {
  obj(screwdriver). hasPhysicalQuality(screwdriver, lightweight). hasPhysicalQuality(screwdriver, rigid). hasRole(screwdriver, toolRole). affordsTask(screwdriver, maintenanceTask).
}).
#pos(e213@100, {hasAffordance(screwdriver, poke)}, {}, {
  obj(screwdriver). hasPhysicalQuality(screwdriver, lightweight). hasPhysicalQuality(screwdriver, rigid). hasRole(screwdriver, toolRole). affordsTask(screwdriver, maintenanceTask).
}).
#pos(e214@100, {hasAffordance(screwdriver, repair)}, {}, {
  obj(screwdriver). hasPhysicalQuality(screwdriver, lightweight). hasPhysicalQuality(screwdriver, rigid). hasRole(screwdriver, toolRole). affordsTask(screwdriver, maintenanceTask).
}).
#pos(e215@100, {hasAffordance(screwdriver, screw)}, {}, {
  obj(screwdriver). hasPhysicalQuality(screwdriver, lightweight). hasPhysicalQuality(screwdriver, rigid). hasRole(screwdriver, toolRole). affordsTask(screwdriver, maintenanceTask).
}).
#pos(e216@100, {hasAffordance(shelf, contain)}, {}, {
  obj(shelf). hasPhysicalQuality(shelf, heavy). hasPhysicalQuality(shelf, rigid). hasRole(shelf, storageContainerRole). affordsTask(shelf, storageTask).
}).
#pos(e217@100, {hasAffordance(shelf, store)}, {}, {
  obj(shelf). hasPhysicalQuality(shelf, heavy). hasPhysicalQuality(shelf, rigid). hasRole(shelf, storageContainerRole). affordsTask(shelf, storageTask).
}).
#pos(e218@100, {hasAffordance(sink, contain)}, {}, {
  obj(sink). hasPhysicalQuality(sink, hasContainer). hasPhysicalQuality(sink, heavy). hasRole(sink, cleaningToolRole). affordsTask(sink, cleaningTask). affordsTask(sink, hygieneTask).
}).
#pos(e219@100, {hasAffordance(sofa, comfort)}, {}, {
  obj(sofa). hasPhysicalQuality(sofa, heavy). hasPhysicalQuality(sofa, soft_Deformable). hasRole(sofa, furnitureRole). affordsTask(sofa, leisureTask).
}).
#pos(e220@100, {hasAffordance(sofa, contain)}, {}, {
  obj(sofa). hasPhysicalQuality(sofa, heavy). hasPhysicalQuality(sofa, soft_Deformable). hasRole(sofa, furnitureRole). affordsTask(sofa, leisureTask).
}).
#pos(e221@100, {hasAffordance(sofa, increase)}, {}, {
  obj(sofa). hasPhysicalQuality(sofa, heavy). hasPhysicalQuality(sofa, soft_Deformable). hasRole(sofa, furnitureRole). affordsTask(sofa, leisureTask).
}).
#pos(e222@100, {hasAffordance(sofa, support)}, {}, {
  obj(sofa). hasPhysicalQuality(sofa, heavy). hasPhysicalQuality(sofa, soft_Deformable). hasRole(sofa, furnitureRole). affordsTask(sofa, leisureTask).
}).
#pos(e223@100, {hasAffordance(spatula, break)}, {}, {
  obj(spatula). hasPhysicalQuality(spatula, hasBlade). hasPhysicalQuality(spatula, rigid). hasPhysicalQuality(spatula, sharp). hasRole(spatula, utensilRole). affordsTask(spatula, foodPreparationTask).
}).
#pos(e224@100, {hasAffordance(spatula, change)}, {}, {
  obj(spatula). hasPhysicalQuality(spatula, hasBlade). hasPhysicalQuality(spatula, rigid). hasPhysicalQuality(spatula, sharp). hasRole(spatula, utensilRole). affordsTask(spatula, foodPreparationTask).
}).
#pos(e225@100, {hasAffordance(spatula, cut)}, {}, {
  obj(spatula). hasPhysicalQuality(spatula, hasBlade). hasPhysicalQuality(spatula, rigid). hasPhysicalQuality(spatula, sharp). hasRole(spatula, utensilRole). affordsTask(spatula, foodPreparationTask).
}).
#pos(e226@100, {hasAffordance(spatula, fix)}, {}, {
  obj(spatula). hasPhysicalQuality(spatula, hasBlade). hasPhysicalQuality(spatula, rigid). hasPhysicalQuality(spatula, sharp). hasRole(spatula, utensilRole). affordsTask(spatula, foodPreparationTask).
}).
#pos(e227@100, {hasAffordance(spatula, grasp)}, {}, {
  obj(spatula). hasPhysicalQuality(spatula, hasBlade). hasPhysicalQuality(spatula, rigid). hasPhysicalQuality(spatula, sharp). hasRole(spatula, utensilRole). affordsTask(spatula, foodPreparationTask).
}).
#pos(e228@100, {hasAffordance(spatula, hold)}, {}, {
  obj(spatula). hasPhysicalQuality(spatula, hasBlade). hasPhysicalQuality(spatula, rigid). hasPhysicalQuality(spatula, sharp). hasRole(spatula, utensilRole). affordsTask(spatula, foodPreparationTask).
}).
#pos(e229@100, {hasAffordance(spatula, mix)}, {}, {
  obj(spatula). hasPhysicalQuality(spatula, hasBlade). hasPhysicalQuality(spatula, rigid). hasPhysicalQuality(spatula, sharp). hasRole(spatula, utensilRole). affordsTask(spatula, foodPreparationTask).
}).
#pos(e230@100, {hasAffordance(spatula, pick)}, {}, {
  obj(spatula). hasPhysicalQuality(spatula, hasBlade). hasPhysicalQuality(spatula, rigid). hasPhysicalQuality(spatula, sharp). hasRole(spatula, utensilRole). affordsTask(spatula, foodPreparationTask).
}).
#pos(e231@100, {hasAffordance(spatula, repair)}, {}, {
  obj(spatula). hasPhysicalQuality(spatula, hasBlade). hasPhysicalQuality(spatula, rigid). hasPhysicalQuality(spatula, sharp). hasRole(spatula, utensilRole). affordsTask(spatula, foodPreparationTask).
}).
#pos(e232@100, {hasAffordance(spatula, spread)}, {}, {
  obj(spatula). hasPhysicalQuality(spatula, hasBlade). hasPhysicalQuality(spatula, rigid). hasPhysicalQuality(spatula, sharp). hasRole(spatula, utensilRole). affordsTask(spatula, foodPreparationTask).
}).
#pos(e233@100, {hasAffordance(spoon, break)}, {}, {
  obj(spoon). hasPhysicalQuality(spoon, lightweight). hasPhysicalQuality(spoon, rigid). hasPhysicalQuality(spoon, sharp). hasRole(spoon, utensilRole). affordsTask(spoon, foodPreparationTask).
}).
#pos(e234@100, {hasAffordance(spoon, cut)}, {}, {
  obj(spoon). hasPhysicalQuality(spoon, lightweight). hasPhysicalQuality(spoon, rigid). hasPhysicalQuality(spoon, sharp). hasRole(spoon, utensilRole). affordsTask(spoon, foodPreparationTask).
}).
#pos(e235@100, {hasAffordance(spoon, mix)}, {}, {
  obj(spoon). hasPhysicalQuality(spoon, lightweight). hasPhysicalQuality(spoon, rigid). hasPhysicalQuality(spoon, sharp). hasRole(spoon, utensilRole). affordsTask(spoon, foodPreparationTask).
}).
#pos(e236@100, {hasAffordance(spoon, pick)}, {}, {
  obj(spoon). hasPhysicalQuality(spoon, lightweight). hasPhysicalQuality(spoon, rigid). hasPhysicalQuality(spoon, sharp). hasRole(spoon, utensilRole). affordsTask(spoon, foodPreparationTask).
}).
#pos(e237@100, {hasAffordance(stapler, grasp)}, {}, {
  obj(stapler). hasPhysicalQuality(stapler, heavy). hasPhysicalQuality(stapler, rigid). hasRole(stapler, toolRole). affordsTask(stapler, maintenanceTask).
}).
#pos(e238@100, {hasAffordance(stapler, staple)}, {}, {
  obj(stapler). hasPhysicalQuality(stapler, heavy). hasPhysicalQuality(stapler, rigid). hasRole(stapler, toolRole). affordsTask(stapler, maintenanceTask).
}).
#pos(e239@100, {hasAffordance(tap, change)}, {}, {
  obj(tap). hasPhysicalQuality(tap, lightweight). hasPhysicalQuality(tap, rigid). hasRole(tap, toolRole). affordsTask(tap, maintenanceTask).
}).
#pos(e240@100, {hasAffordance(tap, cut)}, {}, {
  obj(tap). hasPhysicalQuality(tap, lightweight). hasPhysicalQuality(tap, rigid). hasRole(tap, toolRole). affordsTask(tap, maintenanceTask).
}).
#pos(e241@100, {hasAffordance(tap, fix)}, {}, {
  obj(tap). hasPhysicalQuality(tap, lightweight). hasPhysicalQuality(tap, rigid). hasRole(tap, toolRole). affordsTask(tap, maintenanceTask).
}).
#pos(e242@100, {hasAffordance(tap, repair)}, {}, {
  obj(tap). hasPhysicalQuality(tap, lightweight). hasPhysicalQuality(tap, rigid). hasRole(tap, toolRole). affordsTask(tap, maintenanceTask).
}).
#pos(e243@100, {hasAffordance(tap, separate)}, {}, {
  obj(tap). hasPhysicalQuality(tap, lightweight). hasPhysicalQuality(tap, rigid). hasRole(tap, toolRole). affordsTask(tap, maintenanceTask).
}).
#pos(e244@100, {hasAffordance(teddy_bear, decorate)}, {}, {
  obj(teddy_bear). hasRole(teddy_bear, entertainmentRole). affordsTask(teddy_bear, leisureTask).
}).
#pos(e245@100, {hasAffordance(television, break)}, {}, {
  obj(television). hasPhysicalQuality(television, electronic). hasPhysicalQuality(television, heavy). hasRole(television, applianceRole). affordsTask(television, leisureTask).
}).
#pos(e246@100, {hasAffordance(television, entertain)}, {}, {
  obj(television). hasPhysicalQuality(television, electronic). hasPhysicalQuality(television, heavy). hasRole(television, applianceRole). affordsTask(television, leisureTask).
}).
#pos(e247@100, {hasAffordance(television, operate)}, {}, {
  obj(television). hasPhysicalQuality(television, electronic). hasPhysicalQuality(television, heavy). hasRole(television, applianceRole). affordsTask(television, leisureTask).
}).
#pos(e248@100, {hasAffordance(toilet_paper, clean)}, {}, {
  obj(toilet_paper). hasPhysicalQuality(toilet_paper, soft_Deformable). hasPhysicalQuality(toilet_paper, washable). hasRole(toilet_paper, consumableRole). affordsTask(toilet_paper, hygieneTask).
}).
#pos(e249@100, {hasAffordance(tomato, cut)}, {}, {
  obj(tomato). hasPhysicalQuality(tomato, fragile). hasPhysicalQuality(tomato, perishable). hasRole(tomato, consumableRole). affordsTask(tomato, eatingDrinkingTask).
}).
#pos(e250@100, {hasAffordance(tomato, eat)}, {}, {
  obj(tomato). hasPhysicalQuality(tomato, fragile). hasPhysicalQuality(tomato, perishable). hasRole(tomato, consumableRole). affordsTask(tomato, eatingDrinkingTask).
}).
#pos(e251@100, {hasAffordance(tomato, pick)}, {}, {
  obj(tomato). hasPhysicalQuality(tomato, fragile). hasPhysicalQuality(tomato, perishable). hasRole(tomato, consumableRole). affordsTask(tomato, eatingDrinkingTask).
}).
#pos(e252@100, {hasAffordance(toothbrush, grasp)}, {}, {
  obj(toothbrush). hasPhysicalQuality(toothbrush, fragile). hasPhysicalQuality(toothbrush, lightweight). affordsTask(toothbrush, hygieneTask).
}).
#pos(e253@100, {hasAffordance(toothpaste, grasp)}, {}, {
  obj(toothpaste). hasPhysicalQuality(toothpaste, liquid). hasPhysicalQuality(toothpaste, toxic_Hazardous). hasRole(toothpaste, cleaningToolRole). affordsTask(toothpaste, hygieneTask).
}).
#pos(e254@100, {hasAffordance(towel, clean)}, {}, {
  obj(towel). hasPhysicalQuality(towel, soft_Deformable). hasPhysicalQuality(towel, washable). hasRole(towel, cleaningToolRole). affordsTask(towel, hygieneTask).
}).
#pos(e255@100, {hasAffordance(towel, pick)}, {}, {
  obj(towel). hasPhysicalQuality(towel, soft_Deformable). hasPhysicalQuality(towel, washable). hasRole(towel, cleaningToolRole). affordsTask(towel, hygieneTask).
}).
#pos(e256@100, {hasAffordance(vase, break)}, {}, {
  obj(vase). hasPhysicalQuality(vase, fragile). hasPhysicalQuality(vase, rigid). hasRole(vase, decorationRole).
}).
#pos(e257@100, {hasAffordance(vase, carry)}, {}, {
  obj(vase). hasPhysicalQuality(vase, fragile). hasPhysicalQuality(vase, rigid). hasRole(vase, decorationRole).
}).
#pos(e258@100, {hasAffordance(vase, pick)}, {}, {
  obj(vase). hasPhysicalQuality(vase, fragile). hasPhysicalQuality(vase, rigid). hasRole(vase, decorationRole).
}).
#pos(e259@100, {hasAffordance(window, break)}, {}, {
  obj(window). hasPhysicalQuality(window, lightweight). hasPhysicalQuality(window, rigid). hasRole(window, furnitureRole). affordsTask(window, leisureTask).
}).
#pos(e260@100, {hasAffordance(window, illuminate)}, {}, {
  obj(window). hasPhysicalQuality(window, lightweight). hasPhysicalQuality(window, rigid). hasRole(window, furnitureRole). affordsTask(window, leisureTask).
}).
#pos(e261@100, {hasAffordance(wrench, change)}, {}, {
  obj(wrench). hasPhysicalQuality(wrench, heavy). hasPhysicalQuality(wrench, rigid). hasRole(wrench, toolRole). affordsTask(wrench, maintenanceTask).
}).
#pos(e262@100, {hasAffordance(wrench, fix)}, {}, {
  obj(wrench). hasPhysicalQuality(wrench, heavy). hasPhysicalQuality(wrench, rigid). hasRole(wrench, toolRole). affordsTask(wrench, maintenanceTask).
}).
#pos(e263@100, {hasAffordance(wrench, grasp)}, {}, {
  obj(wrench). hasPhysicalQuality(wrench, heavy). hasPhysicalQuality(wrench, rigid). hasRole(wrench, toolRole). affordsTask(wrench, maintenanceTask).
}).
#pos(e264@100, {hasAffordance(wrench, hold)}, {}, {
  obj(wrench). hasPhysicalQuality(wrench, heavy). hasPhysicalQuality(wrench, rigid). hasRole(wrench, toolRole). affordsTask(wrench, maintenanceTask).
}).
#pos(e265@100, {hasAffordance(wrench, repair)}, {}, {
  obj(wrench). hasPhysicalQuality(wrench, heavy). hasPhysicalQuality(wrench, rigid). hasRole(wrench, toolRole). affordsTask(wrench, maintenanceTask).
}).
#pos(e266@100, {hasAffordance(wrench, wrench)}, {}, {
  obj(wrench). hasPhysicalQuality(wrench, heavy). hasPhysicalQuality(wrench, rigid). hasRole(wrench, toolRole). affordsTask(wrench, maintenanceTask).
}).

% --- Negative examples (weight 10) ---
#pos(e267@10, {}, {hasAffordance(apple, control)}, {
  obj(apple). hasPhysicalQuality(apple, fragile). hasPhysicalQuality(apple, perishable). hasRole(apple, consumableRole). affordsTask(apple, eatingDrinkingTask).
}).
#pos(e268@10, {}, {hasAffordance(apple, wrench)}, {
  obj(apple). hasPhysicalQuality(apple, fragile). hasPhysicalQuality(apple, perishable). hasRole(apple, consumableRole). affordsTask(apple, eatingDrinkingTask).
}).
#pos(e269@10, {}, {hasAffordance(armchair, bend)}, {
  obj(armchair). hasPhysicalQuality(armchair, heavy). hasRole(armchair, furnitureRole). affordsTask(armchair, leisureTask).
}).
#pos(e270@10, {}, {hasAffordance(armchair, grasp)}, {
  obj(armchair). hasPhysicalQuality(armchair, heavy). hasRole(armchair, furnitureRole). affordsTask(armchair, leisureTask).
}).
#pos(e271@10, {}, {hasAffordance(bed, engrave)}, {
  obj(bed). hasPhysicalQuality(bed, heavy). hasPhysicalQuality(bed, soft_Deformable). hasRole(bed, furnitureRole). affordsTask(bed, sleepingTask).
}).
#pos(e272@10, {}, {hasAffordance(bed, file)}, {
  obj(bed). hasPhysicalQuality(bed, heavy). hasPhysicalQuality(bed, soft_Deformable). hasRole(bed, furnitureRole). affordsTask(bed, sleepingTask).
}).
#pos(e273@10, {}, {hasAffordance(binder, contain)}, {
  obj(binder). hasPhysicalQuality(binder, lightweight). hasPhysicalQuality(binder, rigid). hasRole(binder, storageContainerRole). affordsTask(binder, storageTask).
}).
#pos(e274@10, {}, {hasAffordance(binder, crack)}, {
  obj(binder). hasPhysicalQuality(binder, lightweight). hasPhysicalQuality(binder, rigid). hasRole(binder, storageContainerRole). affordsTask(binder, storageTask).
}).
#pos(e275@10, {}, {hasAffordance(book, comfort)}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask).
}).
#pos(e276@10, {}, {hasAffordance(book, spread)}, {
  obj(book). hasPhysicalQuality(book, lightweight). hasPhysicalQuality(book, washable). hasRole(book, documentRole). affordsTask(book, leisureTask).
}).
#pos(e277@10, {}, {hasAffordance(bottle, press)}, {
  obj(bottle). hasPhysicalQuality(bottle, hasContainer). hasRole(bottle, storageContainerRole). affordsTask(bottle, eatingDrinkingTask).
}).
#pos(e278@10, {}, {hasAffordance(bottle, time)}, {
  obj(bottle). hasPhysicalQuality(bottle, hasContainer). hasRole(bottle, storageContainerRole). affordsTask(bottle, eatingDrinkingTask).
}).
#pos(e279@10, {}, {hasAffordance(bowl, bore)}, {
  obj(bowl). hasPhysicalQuality(bowl, hasContainer). hasRole(bowl, storageContainerRole). affordsTask(bowl, eatingDrinkingTask). affordsTask(bowl, foodPreparationTask).
}).
#pos(e280@10, {}, {hasAffordance(bowl, carve)}, {
  obj(bowl). hasPhysicalQuality(bowl, hasContainer). hasRole(bowl, storageContainerRole). affordsTask(bowl, eatingDrinkingTask). affordsTask(bowl, foodPreparationTask).
}).
#pos(e281@10, {}, {hasAffordance(box, comfort)}, {
  obj(box). hasPhysicalQuality(box, heavy). hasPhysicalQuality(box, rigid). hasRole(box, storageContainerRole). affordsTask(box, storageTask).
}).
#pos(e282@10, {}, {hasAffordance(box, dry)}, {
  obj(box). hasPhysicalQuality(box, heavy). hasPhysicalQuality(box, rigid). hasRole(box, storageContainerRole). affordsTask(box, storageTask).
}).
#pos(e283@10, {}, {hasAffordance(bread, entertain)}, {
  obj(bread). hasPhysicalQuality(bread, granular). hasPhysicalQuality(bread, perishable). hasRole(bread, consumableRole). affordsTask(bread, eatingDrinkingTask). affordsTask(bread, foodPreparationTask).
}).
#pos(e284@10, {}, {hasAffordance(bread, shape)}, {
  obj(bread). hasPhysicalQuality(bread, granular). hasPhysicalQuality(bread, perishable). hasRole(bread, consumableRole). affordsTask(bread, eatingDrinkingTask). affordsTask(bread, foodPreparationTask).
}).
#pos(e285@10, {}, {hasAffordance(calculator, bend)}, {
  obj(calculator). hasPhysicalQuality(calculator, electronic). hasPhysicalQuality(calculator, lightweight). hasRole(calculator, toolRole). affordsTask(calculator, workStudyTask).
}).
#pos(e286@10, {}, {hasAffordance(calculator, time)}, {
  obj(calculator). hasPhysicalQuality(calculator, electronic). hasPhysicalQuality(calculator, lightweight). hasRole(calculator, toolRole). affordsTask(calculator, workStudyTask).
}).
#pos(e287@10, {}, {hasAffordance(camera, display)}, {
  obj(camera). hasPhysicalQuality(camera, electronic). hasPhysicalQuality(camera, lightweight). hasRole(camera, toolRole). affordsTask(camera, workStudyTask).
}).
#pos(e288@10, {}, {hasAffordance(camera, spread)}, {
  obj(camera). hasPhysicalQuality(camera, electronic). hasPhysicalQuality(camera, lightweight). hasRole(camera, toolRole). affordsTask(camera, workStudyTask).
}).
#pos(e289@10, {}, {hasAffordance(can_opener, pour)}, {
  obj(can_opener). hasPhysicalQuality(can_opener, electronic). hasPhysicalQuality(can_opener, heavy). hasRole(can_opener, toolRole). affordsTask(can_opener, foodPreparationTask).
}).
#pos(e290@10, {}, {hasAffordance(can_opener, stick)}, {
  obj(can_opener). hasPhysicalQuality(can_opener, electronic). hasPhysicalQuality(can_opener, heavy). hasRole(can_opener, toolRole). affordsTask(can_opener, foodPreparationTask).
}).
#pos(e291@10, {}, {hasAffordance(candle, eat)}, {
  obj(candle). hasPhysicalQuality(candle, flammable). hasPhysicalQuality(candle, heated). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e292@10, {}, {hasAffordance(candle, rub)}, {
  obj(candle). hasPhysicalQuality(candle, flammable). hasPhysicalQuality(candle, heated). hasRole(candle, lightingRole). affordsTask(candle, leisureTask).
}).
#pos(e293@10, {}, {hasAffordance(chair, grind)}, {
  obj(chair). hasPhysicalQuality(chair, heavy). hasPhysicalQuality(chair, rigid). hasRole(chair, furnitureRole). affordsTask(chair, storageTask).
}).
#pos(e294@10, {}, {hasAffordance(chair, time)}, {
  obj(chair). hasPhysicalQuality(chair, heavy). hasPhysicalQuality(chair, rigid). hasRole(chair, furnitureRole). affordsTask(chair, storageTask).
}).
#pos(e295@10, {}, {hasAffordance(cloth, absorb)}, {
  obj(cloth). hasPhysicalQuality(cloth, soft_Deformable). hasPhysicalQuality(cloth, washable). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask).
}).
#pos(e296@10, {}, {hasAffordance(cloth, cut)}, {
  obj(cloth). hasPhysicalQuality(cloth, soft_Deformable). hasPhysicalQuality(cloth, washable). hasRole(cloth, clothingRole). affordsTask(cloth, dressingTask).
}).
#pos(e297@10, {}, {hasAffordance(coffee, install)}, {
  obj(coffee). hasPhysicalQuality(coffee, liquid). hasPhysicalQuality(coffee, perishable). hasRole(coffee, consumableRole). affordsTask(coffee, eatingDrinkingTask).
}).
#pos(e298@10, {}, {hasAffordance(coffee, poke)}, {
  obj(coffee). hasPhysicalQuality(coffee, liquid). hasPhysicalQuality(coffee, perishable). hasRole(coffee, consumableRole). affordsTask(coffee, eatingDrinkingTask).
}).
#pos(e299@10, {}, {hasAffordance(coffee_mug, cube)}, {
  obj(coffee_mug). hasPhysicalQuality(coffee_mug, hasContainer). hasPhysicalQuality(coffee_mug, liquid). hasRole(coffee_mug, utensilRole). affordsTask(coffee_mug, eatingDrinkingTask).
}).
#pos(e300@10, {}, {hasAffordance(coffee_mug, grind)}, {
  obj(coffee_mug). hasPhysicalQuality(coffee_mug, hasContainer). hasPhysicalQuality(coffee_mug, liquid). hasRole(coffee_mug, utensilRole). affordsTask(coffee_mug, eatingDrinkingTask).
}).
#pos(e301@10, {}, {hasAffordance(cup, entertain)}, {
  obj(cup). hasPhysicalQuality(cup, hasContainer). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e302@10, {}, {hasAffordance(cup, melt)}, {
  obj(cup). hasPhysicalQuality(cup, hasContainer). hasRole(cup, utensilRole). affordsTask(cup, eatingDrinkingTask).
}).
#pos(e303@10, {}, {hasAffordance(curtain, comfort)}, {
  obj(curtain). hasPhysicalQuality(curtain, lightweight). hasPhysicalQuality(curtain, soft_Deformable). hasRole(curtain, furnitureRole). affordsTask(curtain, leisureTask).
}).
#pos(e304@10, {}, {hasAffordance(curtain, contain)}, {
  obj(curtain). hasPhysicalQuality(curtain, lightweight). hasPhysicalQuality(curtain, soft_Deformable). hasRole(curtain, furnitureRole). affordsTask(curtain, leisureTask).
}).
#pos(e305@10, {}, {hasAffordance(desk, compress)}, {
  obj(desk). hasPhysicalQuality(desk, heavy). hasPhysicalQuality(desk, rigid). hasRole(desk, furnitureRole). affordsTask(desk, workStudyTask).
}).
#pos(e306@10, {}, {hasAffordance(desk, peel)}, {
  obj(desk). hasPhysicalQuality(desk, heavy). hasPhysicalQuality(desk, rigid). hasRole(desk, furnitureRole). affordsTask(desk, workStudyTask).
}).
#pos(e307@10, {}, {hasAffordance(drawer, lift)}, {
  obj(drawer). hasPhysicalQuality(drawer, hasContainer). hasRole(drawer, furnitureRole). hasRole(drawer, storageContainerRole). affordsTask(drawer, storageTask).
}).
#pos(e308@10, {}, {hasAffordance(drawer, mark)}, {
  obj(drawer). hasPhysicalQuality(drawer, hasContainer). hasRole(drawer, furnitureRole). hasRole(drawer, storageContainerRole). affordsTask(drawer, storageTask).
}).
#pos(e309@10, {}, {hasAffordance(dresser, fix)}, {
  obj(dresser). hasPhysicalQuality(dresser, heavy). hasPhysicalQuality(dresser, rigid). hasRole(dresser, furnitureRole). affordsTask(dresser, storageTask).
}).
#pos(e310@10, {}, {hasAffordance(dresser, wash)}, {
  obj(dresser). hasPhysicalQuality(dresser, heavy). hasPhysicalQuality(dresser, rigid). hasRole(dresser, furnitureRole). affordsTask(dresser, storageTask).
}).
#pos(e311@10, {}, {hasAffordance(drill, carry)}, {
  obj(drill). hasPhysicalQuality(drill, heavy). hasPhysicalQuality(drill, isRotary). hasPhysicalQuality(drill, rigid). hasRole(drill, toolRole). affordsTask(drill, maintenanceTask).
}).
#pos(e312@10, {}, {hasAffordance(drill, scoop)}, {
  obj(drill). hasPhysicalQuality(drill, heavy). hasPhysicalQuality(drill, isRotary). hasPhysicalQuality(drill, rigid). hasRole(drill, toolRole). affordsTask(drill, maintenanceTask).
}).
#pos(e313@10, {}, {hasAffordance(egg, cover)}, {
  obj(egg). hasPhysicalQuality(egg, fragile). hasPhysicalQuality(egg, perishable). hasRole(egg, consumableRole). affordsTask(egg, foodPreparationTask).
}).
#pos(e314@10, {}, {hasAffordance(egg, spread)}, {
  obj(egg). hasPhysicalQuality(egg, fragile). hasPhysicalQuality(egg, perishable). hasRole(egg, consumableRole). affordsTask(egg, foodPreparationTask).
}).
#pos(e315@10, {}, {hasAffordance(faucet, clean)}, {
  obj(faucet). hasPhysicalQuality(faucet, electronic). hasPhysicalQuality(faucet, liquid). hasRole(faucet, toolRole). affordsTask(faucet, hygieneTask).
}).
#pos(e316@10, {}, {hasAffordance(faucet, mix)}, {
  obj(faucet). hasPhysicalQuality(faucet, electronic). hasPhysicalQuality(faucet, liquid). hasRole(faucet, toolRole). affordsTask(faucet, hygieneTask).
}).
#pos(e317@10, {}, {hasAffordance(file, increase)}, {
  obj(file). hasPhysicalQuality(file, lightweight). hasRole(file, documentRole). affordsTask(file, storageTask).
}).
#pos(e318@10, {}, {hasAffordance(file, tamp)}, {
  obj(file). hasPhysicalQuality(file, lightweight). hasRole(file, documentRole). affordsTask(file, storageTask).
}).
#pos(e319@10, {}, {hasAffordance(floor, wash)}, {
  obj(floor). hasPhysicalQuality(floor, heavy). hasPhysicalQuality(floor, rigid). hasRole(floor, furnitureRole). affordsTask(floor, storageTask).
}).
#pos(e320@10, {}, {hasAffordance(floor, wipe)}, {
  obj(floor). hasPhysicalQuality(floor, heavy). hasPhysicalQuality(floor, rigid). hasRole(floor, furnitureRole). affordsTask(floor, storageTask).
}).
#pos(e321@10, {}, {hasAffordance(footstool, mix)}, {
  obj(footstool). hasPhysicalQuality(footstool, heavy). hasPhysicalQuality(footstool, rigid). hasRole(footstool, furnitureRole). affordsTask(footstool, leisureTask).
}).
#pos(e322@10, {}, {hasAffordance(footstool, strip)}, {
  obj(footstool). hasPhysicalQuality(footstool, heavy). hasPhysicalQuality(footstool, rigid). hasRole(footstool, furnitureRole). affordsTask(footstool, leisureTask).
}).
#pos(e323@10, {}, {hasAffordance(fork, clean)}, {
  obj(fork). hasPhysicalQuality(fork, rigid). hasPhysicalQuality(fork, sharp). hasRole(fork, utensilRole). affordsTask(fork, foodPreparationTask).
}).
#pos(e324@10, {}, {hasAffordance(fork, drill)}, {
  obj(fork). hasPhysicalQuality(fork, rigid). hasPhysicalQuality(fork, sharp). hasRole(fork, utensilRole). affordsTask(fork, foodPreparationTask).
}).
#pos(e325@10, {}, {hasAffordance(fridge, break)}, {
  obj(fridge). hasPhysicalQuality(fridge, electronic). hasPhysicalQuality(fridge, heavy). hasRole(fridge, applianceRole). affordsTask(fridge, storageTask).
}).
#pos(e326@10, {}, {hasAffordance(fridge, entertain)}, {
  obj(fridge). hasPhysicalQuality(fridge, electronic). hasPhysicalQuality(fridge, heavy). hasRole(fridge, applianceRole). affordsTask(fridge, storageTask).
}).
#pos(e327@10, {}, {hasAffordance(garbage_can, clean)}, {
  obj(garbage_can). hasPhysicalQuality(garbage_can, hasContainer). hasPhysicalQuality(garbage_can, heavy). hasRole(garbage_can, storageContainerRole). affordsTask(garbage_can, wasteDisposalTask).
}).
#pos(e328@10, {}, {hasAffordance(garbage_can, hammer)}, {
  obj(garbage_can). hasPhysicalQuality(garbage_can, hasContainer). hasPhysicalQuality(garbage_can, heavy). hasRole(garbage_can, storageContainerRole). affordsTask(garbage_can, wasteDisposalTask).
}).
#pos(e329@10, {}, {hasAffordance(glue_stick, compress)}, {
  obj(glue_stick). hasPhysicalQuality(glue_stick, fragile). hasPhysicalQuality(glue_stick, liquid). hasRole(glue_stick, toolRole). affordsTask(glue_stick, maintenanceTask).
}).
#pos(e330@10, {}, {hasAffordance(glue_stick, eat)}, {
  obj(glue_stick). hasPhysicalQuality(glue_stick, fragile). hasPhysicalQuality(glue_stick, liquid). hasRole(glue_stick, toolRole). affordsTask(glue_stick, maintenanceTask).
}).
#pos(e331@10, {}, {hasAffordance(gutter, hammer)}, {
  obj(gutter). hasPhysicalQuality(gutter, heavy). hasPhysicalQuality(gutter, rigid). hasRole(gutter, toolRole). affordsTask(gutter, maintenanceTask).
}).
#pos(e332@10, {}, {hasAffordance(gutter, pierce)}, {
  obj(gutter). hasPhysicalQuality(gutter, heavy). hasPhysicalQuality(gutter, rigid). hasRole(gutter, toolRole). affordsTask(gutter, maintenanceTask).
}).
#pos(e333@10, {}, {hasAffordance(hammer, polish)}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e334@10, {}, {hasAffordance(hammer, slit)}, {
  obj(hammer). hasPhysicalQuality(hammer, heavy). hasPhysicalQuality(hammer, rigid). hasRole(hammer, toolRole). affordsTask(hammer, maintenanceTask).
}).
#pos(e335@10, {}, {hasAffordance(kettle, dice)}, {
  obj(kettle). hasPhysicalQuality(kettle, heated). hasPhysicalQuality(kettle, heavy). hasRole(kettle, cookwareRole). affordsTask(kettle, foodPreparationTask).
}).
#pos(e336@10, {}, {hasAffordance(kettle, peel)}, {
  obj(kettle). hasPhysicalQuality(kettle, heated). hasPhysicalQuality(kettle, heavy). hasRole(kettle, cookwareRole). affordsTask(kettle, foodPreparationTask).
}).
#pos(e337@10, {}, {hasAffordance(keyboard, dispose)}, {
  obj(keyboard). hasPhysicalQuality(keyboard, electronic). hasPhysicalQuality(keyboard, lightweight). hasRole(keyboard, toolRole). affordsTask(keyboard, workStudyTask).
}).
#pos(e338@10, {}, {hasAffordance(keyboard, mark)}, {
  obj(keyboard). hasPhysicalQuality(keyboard, electronic). hasPhysicalQuality(keyboard, lightweight). hasRole(keyboard, toolRole). affordsTask(keyboard, workStudyTask).
}).
#pos(e339@10, {}, {hasAffordance(kleenex, flex)}, {
  obj(kleenex). hasPhysicalQuality(kleenex, lightweight). hasPhysicalQuality(kleenex, soft_Deformable). hasRole(kleenex, consumableRole). affordsTask(kleenex, hygieneTask).
}).
#pos(e340@10, {}, {hasAffordance(kleenex, wrench)}, {
  obj(kleenex). hasPhysicalQuality(kleenex, lightweight). hasPhysicalQuality(kleenex, soft_Deformable). hasRole(kleenex, consumableRole). affordsTask(kleenex, hygieneTask).
}).
#pos(e341@10, {}, {hasAffordance(knife, compress)}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e342@10, {}, {hasAffordance(knife, dry)}, {
  obj(knife). hasPhysicalQuality(knife, rigid). hasPhysicalQuality(knife, sharp). hasRole(knife, utensilRole). affordsTask(knife, foodPreparationTask).
}).
#pos(e343@10, {}, {hasAffordance(lettuce, file)}, {
  obj(lettuce). hasPhysicalQuality(lettuce, perishable). hasRole(lettuce, consumableRole). affordsTask(lettuce, foodPreparationTask).
}).
#pos(e344@10, {}, {hasAffordance(lettuce, solder)}, {
  obj(lettuce). hasPhysicalQuality(lettuce, perishable). hasRole(lettuce, consumableRole). affordsTask(lettuce, foodPreparationTask).
}).
#pos(e345@10, {}, {hasAffordance(lightbulb, cube)}, {
  obj(lightbulb). hasPhysicalQuality(lightbulb, electronic). hasPhysicalQuality(lightbulb, lightweight). hasRole(lightbulb, lightingRole). affordsTask(lightbulb, leisureTask).
}).
#pos(e346@10, {}, {hasAffordance(lightbulb, roll)}, {
  obj(lightbulb). hasPhysicalQuality(lightbulb, electronic). hasPhysicalQuality(lightbulb, lightweight). hasRole(lightbulb, lightingRole). affordsTask(lightbulb, leisureTask).
}).
#pos(e347@10, {}, {hasAffordance(marker, fix)}, {
  obj(marker). hasPhysicalQuality(marker, lightweight). hasRole(marker, toolRole). affordsTask(marker, foodPreparationTask).
}).
#pos(e348@10, {}, {hasAffordance(marker, operate)}, {
  obj(marker). hasPhysicalQuality(marker, lightweight). hasRole(marker, toolRole). affordsTask(marker, foodPreparationTask).
}).
#pos(e349@10, {}, {hasAffordance(microwave, stick)}, {
  obj(microwave). hasPhysicalQuality(microwave, electronic). hasPhysicalQuality(microwave, heated). hasRole(microwave, applianceRole). affordsTask(microwave, foodPreparationTask).
}).
#pos(e350@10, {}, {hasAffordance(microwave, wrench)}, {
  obj(microwave). hasPhysicalQuality(microwave, electronic). hasPhysicalQuality(microwave, heated). hasRole(microwave, applianceRole). affordsTask(microwave, foodPreparationTask).
}).
#pos(e351@10, {}, {hasAffordance(mirror, eat)}, {
  obj(mirror). hasPhysicalQuality(mirror, electronic). hasPhysicalQuality(mirror, rigid). hasRole(mirror, decorationRole).
}).
#pos(e352@10, {}, {hasAffordance(mirror, illuminate)}, {
  obj(mirror). hasPhysicalQuality(mirror, electronic). hasPhysicalQuality(mirror, rigid). hasRole(mirror, decorationRole).
}).
#pos(e353@10, {}, {hasAffordance(mug, clean)}, {
  obj(mug). hasPhysicalQuality(mug, hasContainer). hasPhysicalQuality(mug, liquid). hasRole(mug, utensilRole). affordsTask(mug, eatingDrinkingTask).
}).
#pos(e354@10, {}, {hasAffordance(mug, file)}, {
  obj(mug). hasPhysicalQuality(mug, hasContainer). hasPhysicalQuality(mug, liquid). hasRole(mug, utensilRole). affordsTask(mug, eatingDrinkingTask).
}).
#pos(e355@10, {}, {hasAffordance(notebook, bore)}, {
  obj(notebook). hasPhysicalQuality(notebook, lightweight). hasPhysicalQuality(notebook, rigid). hasRole(notebook, documentRole). affordsTask(notebook, workStudyTask).
}).
#pos(e356@10, {}, {hasAffordance(notebook, hold)}, {
  obj(notebook). hasPhysicalQuality(notebook, lightweight). hasPhysicalQuality(notebook, rigid). hasRole(notebook, documentRole). affordsTask(notebook, workStudyTask).
}).
#pos(e357@10, {}, {hasAffordance(ottoman, grasp)}, {
  obj(ottoman). hasPhysicalQuality(ottoman, heavy). hasPhysicalQuality(ottoman, soft_Deformable). hasRole(ottoman, furnitureRole). affordsTask(ottoman, leisureTask).
}).
#pos(e358@10, {}, {hasAffordance(ottoman, plug)}, {
  obj(ottoman). hasPhysicalQuality(ottoman, heavy). hasPhysicalQuality(ottoman, soft_Deformable). hasRole(ottoman, furnitureRole). affordsTask(ottoman, leisureTask).
}).
#pos(e359@10, {}, {hasAffordance(oven, change)}, {
  obj(oven). hasPhysicalQuality(oven, heated). hasRole(oven, cookwareRole). affordsTask(oven, foodPreparationTask).
}).
#pos(e360@10, {}, {hasAffordance(oven, drill)}, {
  obj(oven). hasPhysicalQuality(oven, heated). hasRole(oven, cookwareRole). affordsTask(oven, foodPreparationTask).
}).
#pos(e361@10, {}, {hasAffordance(pan, increase)}, {
  obj(pan). hasPhysicalQuality(pan, heated). hasPhysicalQuality(pan, rigid). hasRole(pan, cookwareRole). affordsTask(pan, foodPreparationTask).
}).
#pos(e362@10, {}, {hasAffordance(pan, strip)}, {
  obj(pan). hasPhysicalQuality(pan, heated). hasPhysicalQuality(pan, rigid). hasRole(pan, cookwareRole). affordsTask(pan, foodPreparationTask).
}).
#pos(e363@10, {}, {hasAffordance(pen, drill)}, {
  obj(pen). hasPhysicalQuality(pen, lightweight). hasPhysicalQuality(pen, rigid). hasRole(pen, toolRole). affordsTask(pen, workStudyTask).
}).
#pos(e364@10, {}, {hasAffordance(pen, wrench)}, {
  obj(pen). hasPhysicalQuality(pen, lightweight). hasPhysicalQuality(pen, rigid). hasRole(pen, toolRole). affordsTask(pen, workStudyTask).
}).
#pos(e365@10, {}, {hasAffordance(pencil, peel)}, {
  obj(pencil). hasPhysicalQuality(pencil, lightweight). hasPhysicalQuality(pencil, rigid). hasRole(pencil, toolRole).
}).
#pos(e366@10, {}, {hasAffordance(pencil, scoop)}, {
  obj(pencil). hasPhysicalQuality(pencil, lightweight). hasPhysicalQuality(pencil, rigid). hasRole(pencil, toolRole).
}).
#pos(e367@10, {}, {hasAffordance(phillips_screwdriver, crunch)}, {
  obj(phillips_screwdriver). hasPhysicalQuality(phillips_screwdriver, lightweight). hasPhysicalQuality(phillips_screwdriver, rigid). hasRole(phillips_screwdriver, toolRole). affordsTask(phillips_screwdriver, maintenanceTask).
}).
#pos(e368@10, {}, {hasAffordance(phillips_screwdriver, scoop)}, {
  obj(phillips_screwdriver). hasPhysicalQuality(phillips_screwdriver, lightweight). hasPhysicalQuality(phillips_screwdriver, rigid). hasRole(phillips_screwdriver, toolRole). affordsTask(phillips_screwdriver, maintenanceTask).
}).
#pos(e369@10, {}, {hasAffordance(pillow, crack)}, {
  obj(pillow). hasPhysicalQuality(pillow, lightweight). hasPhysicalQuality(pillow, soft_Deformable). hasRole(pillow, beddingRole). affordsTask(pillow, sleepingTask).
}).
#pos(e370@10, {}, {hasAffordance(pillow, file)}, {
  obj(pillow). hasPhysicalQuality(pillow, lightweight). hasPhysicalQuality(pillow, soft_Deformable). hasRole(pillow, beddingRole). affordsTask(pillow, sleepingTask).
}).
#pos(e371@10, {}, {hasAffordance(plate, flex)}, {
  obj(plate). hasPhysicalQuality(plate, hasContainer). hasPhysicalQuality(plate, rigid). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e372@10, {}, {hasAffordance(plate, tamp)}, {
  obj(plate). hasPhysicalQuality(plate, hasContainer). hasPhysicalQuality(plate, rigid). hasRole(plate, utensilRole). affordsTask(plate, eatingDrinkingTask).
}).
#pos(e373@10, {}, {hasAffordance(poster, fix)}, {
  obj(poster). hasRole(poster, decorationRole).
}).
#pos(e374@10, {}, {hasAffordance(poster, slit)}, {
  obj(poster). hasRole(poster, decorationRole).
}).
#pos(e375@10, {}, {hasAffordance(pot, press)}, {
  obj(pot). hasPhysicalQuality(pot, heavy). hasPhysicalQuality(pot, rigid). hasRole(pot, cookwareRole). affordsTask(pot, foodPreparationTask).
}).
#pos(e376@10, {}, {hasAffordance(pot, tamp)}, {
  obj(pot). hasPhysicalQuality(pot, heavy). hasPhysicalQuality(pot, rigid). hasRole(pot, cookwareRole). affordsTask(pot, foodPreparationTask).
}).
#pos(e377@10, {}, {hasAffordance(remote_control, pierce)}, {
  obj(remote_control). hasPhysicalQuality(remote_control, electronic). hasPhysicalQuality(remote_control, lightweight). hasRole(remote_control, toolRole). affordsTask(remote_control, leisureTask).
}).
#pos(e378@10, {}, {hasAffordance(remote_control, store)}, {
  obj(remote_control). hasPhysicalQuality(remote_control, electronic). hasPhysicalQuality(remote_control, lightweight). hasRole(remote_control, toolRole). affordsTask(remote_control, leisureTask).
}).
#pos(e379@10, {}, {hasAffordance(salt, dry)}, {
  obj(salt). hasPhysicalQuality(salt, granular). hasRole(salt, consumableRole). affordsTask(salt, foodPreparationTask).
}).
#pos(e380@10, {}, {hasAffordance(salt, melt)}, {
  obj(salt). hasPhysicalQuality(salt, granular). hasRole(salt, consumableRole). affordsTask(salt, foodPreparationTask).
}).
#pos(e381@10, {}, {hasAffordance(saltshaker, crack)}, {
  obj(saltshaker). hasPhysicalQuality(saltshaker, granular). hasPhysicalQuality(saltshaker, lightweight). hasRole(saltshaker, utensilRole). affordsTask(saltshaker, foodPreparationTask).
}).
#pos(e382@10, {}, {hasAffordance(saltshaker, separate)}, {
  obj(saltshaker). hasPhysicalQuality(saltshaker, granular). hasPhysicalQuality(saltshaker, lightweight). hasRole(saltshaker, utensilRole). affordsTask(saltshaker, foodPreparationTask).
}).
#pos(e383@10, {}, {hasAffordance(scissors, compress)}, {
  obj(scissors). hasPhysicalQuality(scissors, rigid). hasPhysicalQuality(scissors, sharp). hasRole(scissors, toolRole). affordsTask(scissors, maintenanceTask).
}).
#pos(e384@10, {}, {hasAffordance(scissors, spread)}, {
  obj(scissors). hasPhysicalQuality(scissors, rigid). hasPhysicalQuality(scissors, sharp). hasRole(scissors, toolRole). affordsTask(scissors, maintenanceTask).
}).
#pos(e385@10, {}, {hasAffordance(screwdriver, carry)}, {
  obj(screwdriver). hasPhysicalQuality(screwdriver, lightweight). hasPhysicalQuality(screwdriver, rigid). hasRole(screwdriver, toolRole). affordsTask(screwdriver, maintenanceTask).
}).
#pos(e386@10, {}, {hasAffordance(screwdriver, cool)}, {
  obj(screwdriver). hasPhysicalQuality(screwdriver, lightweight). hasPhysicalQuality(screwdriver, rigid). hasRole(screwdriver, toolRole). affordsTask(screwdriver, maintenanceTask).
}).
#pos(e387@10, {}, {hasAffordance(shelf, cube)}, {
  obj(shelf). hasPhysicalQuality(shelf, heavy). hasPhysicalQuality(shelf, rigid). hasRole(shelf, storageContainerRole). affordsTask(shelf, storageTask).
}).
#pos(e388@10, {}, {hasAffordance(shelf, wipe)}, {
  obj(shelf). hasPhysicalQuality(shelf, heavy). hasPhysicalQuality(shelf, rigid). hasRole(shelf, storageContainerRole). affordsTask(shelf, storageTask).
}).
#pos(e389@10, {}, {hasAffordance(sink, cut)}, {
  obj(sink). hasPhysicalQuality(sink, hasContainer). hasPhysicalQuality(sink, heavy). hasRole(sink, cleaningToolRole). affordsTask(sink, cleaningTask). affordsTask(sink, hygieneTask).
}).
#pos(e390@10, {}, {hasAffordance(sink, poke)}, {
  obj(sink). hasPhysicalQuality(sink, hasContainer). hasPhysicalQuality(sink, heavy). hasRole(sink, cleaningToolRole). affordsTask(sink, cleaningTask). affordsTask(sink, hygieneTask).
}).
#pos(e391@10, {}, {hasAffordance(sofa, change)}, {
  obj(sofa). hasPhysicalQuality(sofa, heavy). hasPhysicalQuality(sofa, soft_Deformable). hasRole(sofa, furnitureRole). affordsTask(sofa, leisureTask).
}).
#pos(e392@10, {}, {hasAffordance(sofa, unclog)}, {
  obj(sofa). hasPhysicalQuality(sofa, heavy). hasPhysicalQuality(sofa, soft_Deformable). hasRole(sofa, furnitureRole). affordsTask(sofa, leisureTask).
}).
#pos(e393@10, {}, {hasAffordance(spatula, polish)}, {
  obj(spatula). hasPhysicalQuality(spatula, hasBlade). hasPhysicalQuality(spatula, rigid). hasPhysicalQuality(spatula, sharp). hasRole(spatula, utensilRole). affordsTask(spatula, foodPreparationTask).
}).
#pos(e394@10, {}, {hasAffordance(spatula, pour)}, {
  obj(spatula). hasPhysicalQuality(spatula, hasBlade). hasPhysicalQuality(spatula, rigid). hasPhysicalQuality(spatula, sharp). hasRole(spatula, utensilRole). affordsTask(spatula, foodPreparationTask).
}).
#pos(e395@10, {}, {hasAffordance(spoon, saw)}, {
  obj(spoon). hasPhysicalQuality(spoon, lightweight). hasPhysicalQuality(spoon, rigid). hasPhysicalQuality(spoon, sharp). hasRole(spoon, utensilRole). affordsTask(spoon, foodPreparationTask).
}).
#pos(e396@10, {}, {hasAffordance(spoon, unclog)}, {
  obj(spoon). hasPhysicalQuality(spoon, lightweight). hasPhysicalQuality(spoon, rigid). hasPhysicalQuality(spoon, sharp). hasRole(spoon, utensilRole). affordsTask(spoon, foodPreparationTask).
}).
#pos(e397@10, {}, {hasAffordance(stapler, exercise)}, {
  obj(stapler). hasPhysicalQuality(stapler, heavy). hasPhysicalQuality(stapler, rigid). hasRole(stapler, toolRole). affordsTask(stapler, maintenanceTask).
}).
#pos(e398@10, {}, {hasAffordance(stapler, skin)}, {
  obj(stapler). hasPhysicalQuality(stapler, heavy). hasPhysicalQuality(stapler, rigid). hasRole(stapler, toolRole). affordsTask(stapler, maintenanceTask).
}).
#pos(e399@10, {}, {hasAffordance(tap, be_heated)}, {
  obj(tap). hasPhysicalQuality(tap, lightweight). hasPhysicalQuality(tap, rigid). hasRole(tap, toolRole). affordsTask(tap, maintenanceTask).
}).
#pos(e400@10, {}, {hasAffordance(tap, store)}, {
  obj(tap). hasPhysicalQuality(tap, lightweight). hasPhysicalQuality(tap, rigid). hasRole(tap, toolRole). affordsTask(tap, maintenanceTask).
}).
#pos(e401@10, {}, {hasAffordance(teddy_bear, control)}, {
  obj(teddy_bear). hasRole(teddy_bear, entertainmentRole). affordsTask(teddy_bear, leisureTask).
}).
#pos(e402@10, {}, {hasAffordance(teddy_bear, slit)}, {
  obj(teddy_bear). hasRole(teddy_bear, entertainmentRole). affordsTask(teddy_bear, leisureTask).
}).
#pos(e403@10, {}, {hasAffordance(television, grasp)}, {
  obj(television). hasPhysicalQuality(television, electronic). hasPhysicalQuality(television, heavy). hasRole(television, applianceRole). affordsTask(television, leisureTask).
}).
#pos(e404@10, {}, {hasAffordance(television, write)}, {
  obj(television). hasPhysicalQuality(television, electronic). hasPhysicalQuality(television, heavy). hasRole(television, applianceRole). affordsTask(television, leisureTask).
}).
#pos(e405@10, {}, {hasAffordance(toilet_paper, cool)}, {
  obj(toilet_paper). hasPhysicalQuality(toilet_paper, soft_Deformable). hasPhysicalQuality(toilet_paper, washable). hasRole(toilet_paper, consumableRole). affordsTask(toilet_paper, hygieneTask).
}).
#pos(e406@10, {}, {hasAffordance(toilet_paper, install)}, {
  obj(toilet_paper). hasPhysicalQuality(toilet_paper, soft_Deformable). hasPhysicalQuality(toilet_paper, washable). hasRole(toilet_paper, consumableRole). affordsTask(toilet_paper, hygieneTask).
}).
#pos(e407@10, {}, {hasAffordance(tomato, handle)}, {
  obj(tomato). hasPhysicalQuality(tomato, fragile). hasPhysicalQuality(tomato, perishable). hasRole(tomato, consumableRole). affordsTask(tomato, eatingDrinkingTask).
}).
#pos(e408@10, {}, {hasAffordance(tomato, press)}, {
  obj(tomato). hasPhysicalQuality(tomato, fragile). hasPhysicalQuality(tomato, perishable). hasRole(tomato, consumableRole). affordsTask(tomato, eatingDrinkingTask).
}).
#pos(e409@10, {}, {hasAffordance(toothbrush, cube)}, {
  obj(toothbrush). hasPhysicalQuality(toothbrush, fragile). hasPhysicalQuality(toothbrush, lightweight). affordsTask(toothbrush, hygieneTask).
}).
#pos(e410@10, {}, {hasAffordance(toothbrush, read)}, {
  obj(toothbrush). hasPhysicalQuality(toothbrush, fragile). hasPhysicalQuality(toothbrush, lightweight). affordsTask(toothbrush, hygieneTask).
}).
#pos(e411@10, {}, {hasAffordance(toothpaste, absorb)}, {
  obj(toothpaste). hasPhysicalQuality(toothpaste, liquid). hasPhysicalQuality(toothpaste, toxic_Hazardous). hasRole(toothpaste, cleaningToolRole). affordsTask(toothpaste, hygieneTask).
}).
#pos(e412@10, {}, {hasAffordance(toothpaste, file)}, {
  obj(toothpaste). hasPhysicalQuality(toothpaste, liquid). hasPhysicalQuality(toothpaste, toxic_Hazardous). hasRole(toothpaste, cleaningToolRole). affordsTask(toothpaste, hygieneTask).
}).
#pos(e413@10, {}, {hasAffordance(towel, dice)}, {
  obj(towel). hasPhysicalQuality(towel, soft_Deformable). hasPhysicalQuality(towel, washable). hasRole(towel, cleaningToolRole). affordsTask(towel, hygieneTask).
}).
#pos(e414@10, {}, {hasAffordance(towel, separate)}, {
  obj(towel). hasPhysicalQuality(towel, soft_Deformable). hasPhysicalQuality(towel, washable). hasRole(towel, cleaningToolRole). affordsTask(towel, hygieneTask).
}).
#pos(e415@10, {}, {hasAffordance(vase, cool)}, {
  obj(vase). hasPhysicalQuality(vase, fragile). hasPhysicalQuality(vase, rigid). hasRole(vase, decorationRole).
}).
#pos(e416@10, {}, {hasAffordance(vase, shape)}, {
  obj(vase). hasPhysicalQuality(vase, fragile). hasPhysicalQuality(vase, rigid). hasRole(vase, decorationRole).
}).
#pos(e417@10, {}, {hasAffordance(window, handle)}, {
  obj(window). hasPhysicalQuality(window, lightweight). hasPhysicalQuality(window, rigid). hasRole(window, furnitureRole). affordsTask(window, leisureTask).
}).
#pos(e418@10, {}, {hasAffordance(window, wipe)}, {
  obj(window). hasPhysicalQuality(window, lightweight). hasPhysicalQuality(window, rigid). hasRole(window, furnitureRole). affordsTask(window, leisureTask).
}).
#pos(e419@10, {}, {hasAffordance(wrench, slit)}, {
  obj(wrench). hasPhysicalQuality(wrench, heavy). hasPhysicalQuality(wrench, rigid). hasRole(wrench, toolRole). affordsTask(wrench, maintenanceTask).
}).
#pos(e420@10, {}, {hasAffordance(wrench, wipe)}, {
  obj(wrench). hasPhysicalQuality(wrench, heavy). hasPhysicalQuality(wrench, rigid). hasRole(wrench, toolRole). affordsTask(wrench, maintenanceTask).
}).
