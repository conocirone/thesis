hasAffordance(X, cut) :- obj(X), hasRole(X, utensilRole).
hasAffordance(X, cut) :- obj(X), hasRole(X, toolRole).
hasAffordance(X, cut) :- obj(X), hasRole(X, consumableRole).
hasAffordance(X, eat) :- obj(X), hasRole(X, consumableRole).
hasAffordance(X, pick) :- obj(X), affordsTask(X, foodPreparationTask).
hasAffordance(X, pick) :- obj(X), affordsTask(X, hygieneTask).
hasAffordance(X, pick) :- obj(X), affordsTask(X, eatingDrinkingTask).
hasAffordance(X, pick) :- obj(X), hasPhysicalQuality(X, soft_Deformable).
hasAffordance(X, pick) :- obj(X), affordsTask(X, workStudyTask).
hasAffordance(X, pick) :- obj(X), affordsTask(X, leisureTask).
hasAffordance(X, pick) :- obj(X), affordsTask(X, storageTask).
hasAffordance(X, pick) :- obj(X), hasRole(X, decorationRole).
hasAffordance(X, pick) :- obj(X), hasRole(X, toolRole).
hasAffordance(X, contain) :- obj(X), hasPhysicalQuality(X, hasContainer).
hasAffordance(X, contain) :- obj(X), hasPhysicalQuality(X, soft_Deformable), hasRole(X, furnitureRole).
hasAffordance(X, contain) :- obj(X), hasPhysicalQuality(X, heavy).
hasAffordance(X, contain) :- obj(X), affordsTask(X, foodPreparationTask).
hasAffordance(X, contain) :- obj(X), hasRole(X, documentRole).
hasAffordance(X, comfort) :- obj(X), hasPhysicalQuality(X, soft_Deformable), hasRole(X, furnitureRole).
hasAffordance(X, comfort) :- obj(X), hasPhysicalQuality(X, rigid), hasRole(X, furnitureRole).
hasAffordance(X, increase) :- obj(X), affordsTask(X, leisureTask).
hasAffordance(X, increase) :- obj(X), hasRole(X, furnitureRole).
hasAffordance(X, support) :- obj(X), hasRole(X, furnitureRole).
hasAffordance(X, support) :- obj(X), hasRole(X, utensilRole).
hasAffordance(X, support) :- obj(X), hasRole(X, storageContainerRole).
hasAffordance(X, grasp) :- obj(X), hasPhysicalQuality(X, sharp).
hasAffordance(X, grasp) :- obj(X), hasRole(X, toolRole).
hasAffordance(X, grasp) :- obj(X), hasPhysicalQuality(X, toxic_Hazardous).
hasAffordance(X, grasp) :- obj(X), hasRole(X, utensilRole).
hasAffordance(X, grasp) :- obj(X), hasRole(X, storageContainerRole).
hasAffordance(X, grasp) :- obj(X), affordsTask(X, workStudyTask).
hasAffordance(X, grasp) :- obj(X), hasRole(X, documentRole).
hasAffordance(X, grasp) :- obj(X), hasPhysicalQuality(X, lightweight).
hasAffordance(X, read) :- obj(X), hasRole(X, documentRole).
hasAffordance(X, break) :- obj(X), hasRole(X, utensilRole).
hasAffordance(X, break) :- obj(X), hasRole(X, decorationRole).
hasAffordance(X, break) :- obj(X), hasPhysicalQuality(X, fragile).
hasAffordance(X, break) :- obj(X), affordsTask(X, leisureTask).
hasAffordance(X, break) :- obj(X), hasRole(X, toolRole).
hasAffordance(X, break) :- obj(X), hasRole(X, storageContainerRole).
hasAffordance(X, carry) :- obj(X), hasRole(X, utensilRole).
hasAffordance(X, carry) :- obj(X), hasRole(X, cookwareRole).
hasAffordance(X, carry) :- obj(X), hasRole(X, storageContainerRole).
hasAffordance(X, carry) :- obj(X), hasRole(X, decorationRole).
hasAffordance(X, be_heated) :- obj(X), hasRole(X, cookwareRole).
hasAffordance(X, be_heated) :- obj(X), hasRole(X, utensilRole).
hasAffordance(X, be_heated) :- obj(X), hasRole(X, storageContainerRole).
hasAffordance(X, wrap) :- obj(X), hasRole(X, utensilRole).
hasAffordance(X, wrap) :- obj(X), hasRole(X, storageContainerRole).
hasAffordance(X, store) :- obj(X), affordsTask(X, storageTask).
hasAffordance(X, store) :- obj(X), affordsTask(X, workStudyTask).
hasAffordance(X, display) :- obj(X), hasPhysicalQuality(X, electronic), hasPhysicalQuality(X, lightweight), hasRole(X, toolRole), affordsTask(X, workStudyTask).
hasAffordance(X, change) :- obj(X), hasRole(X, utensilRole).
hasAffordance(X, change) :- obj(X), hasRole(X, toolRole).
hasAffordance(X, change) :- obj(X), hasRole(X, documentRole).
hasAffordance(X, fix) :- obj(X), hasRole(X, utensilRole).
hasAffordance(X, fix) :- obj(X), hasPhysicalQuality(X, rigid), hasRole(X, toolRole).
hasAffordance(X, fix) :- obj(X), hasPhysicalQuality(X, heavy), hasRole(X, toolRole).
hasAffordance(X, fix) :- obj(X), hasRole(X, documentRole).
hasAffordance(X, hold) :- obj(X), hasPhysicalQuality(X, sharp).
hasAffordance(X, hold) :- obj(X), affordsTask(X, maintenanceTask).
hasAffordance(X, hold) :- obj(X), hasRole(X, toolRole).
hasAffordance(X, hold) :- obj(X), affordsTask(X, storageTask).
hasAffordance(X, repair) :- obj(X), hasRole(X, utensilRole).
hasAffordance(X, repair) :- obj(X), hasRole(X, toolRole).
hasAffordance(X, repair) :- obj(X), hasRole(X, documentRole).
hasAffordance(X, decorate) :- obj(X), hasRole(X, decorationRole).
hasAffordance(X, decorate) :- obj(X), hasRole(X, furnitureRole).
hasAffordance(X, decorate) :- obj(X), hasRole(X, lightingRole).
hasAffordance(X, heat) :- obj(X), hasRole(X, applianceRole).
hasAffordance(X, heat) :- obj(X), hasRole(X, lightingRole).
hasAffordance(X, heat) :- obj(X), hasRole(X, cookwareRole).
hasAffordance(X, illuminate) :- obj(X), affordsTask(X, leisureTask).
hasAffordance(X, operate) :- obj(X), hasPhysicalQuality(X, electronic).
hasAffordance(X, operate) :- obj(X), hasPhysicalQuality(X, rigid).
hasAffordance(X, operate) :- obj(X), hasRole(X, lightingRole).
hasAffordance(X, clean) :- obj(X), hasRole(X, cleaningToolRole).
hasAffordance(X, clean) :- obj(X), hasRole(X, consumableRole).
hasAffordance(X, clean) :- obj(X), affordsTask(X, maintenanceTask).
hasAffordance(X, clean) :- obj(X), hasPhysicalQuality(X, washable).
hasAffordance(X, pour) :- obj(X), hasPhysicalQuality(X, liquid).
hasAffordance(X, bore) :- obj(X), hasRole(X, toolRole).
hasAffordance(X, drill) :- obj(X), hasPhysicalQuality(X, isRotary).
hasAffordance(X, separate) :- obj(X), hasRole(X, toolRole).
hasAffordance(X, separate) :- obj(X), hasPhysicalQuality(X, sharp).
hasAffordance(X, beautify) :- obj(X), hasRole(X, documentRole).
hasAffordance(X, file) :- obj(X), affordsTask(X, storageTask).
hasAffordance(X, polish) :- obj(X), affordsTask(X, storageTask).
hasAffordance(X, mix) :- obj(X), affordsTask(X, foodPreparationTask).
hasAffordance(X, cool) :- obj(X), affordsTask(X, storageTask).
hasAffordance(X, dispose) :- obj(X), hasRole(X, storageContainerRole).
hasAffordance(X, control) :- obj(X), hasRole(X, toolRole).
hasAffordance(X, hammer) :- obj(X), hasPhysicalQuality(X, heavy), hasPhysicalQuality(X, rigid), hasRole(X, toolRole).
hasAffordance(X, handle) :- obj(X), hasPhysicalQuality(X, heavy).
hasAffordance(X, install) :- obj(X), hasRole(X, toolRole).
hasAffordance(X, plug) :- obj(X), hasPhysicalQuality(X, rigid).
hasAffordance(X, wash) :- obj(X), hasRole(X, toolRole).
hasAffordance(X, dry) :- obj(X), hasPhysicalQuality(X, soft_Deformable).
hasAffordance(X, carve) :- obj(X), hasRole(X, utensilRole).
hasAffordance(X, crack) :- obj(X), hasPhysicalQuality(X, sharp).
hasAffordance(X, cube) :- obj(X), hasPhysicalQuality(X, sharp).
hasAffordance(X, dice) :- obj(X), hasRole(X, utensilRole).
hasAffordance(X, peel) :- obj(X), hasPhysicalQuality(X, sharp).
hasAffordance(X, skin) :- obj(X), hasPhysicalQuality(X, sharp).
hasAffordance(X, write) :- obj(X), hasRole(X, toolRole).
hasAffordance(X, poke) :- obj(X), hasRole(X, toolRole).
hasAffordance(X, screw) :- obj(X), affordsTask(X, maintenanceTask).
hasAffordance(X, spread) :- obj(X), hasRole(X, utensilRole).
hasAffordance(X, staple) :- obj(X), hasRole(X, toolRole).
hasAffordance(X, entertain) :- obj(X), affordsTask(X, leisureTask).
hasAffordance(X, wrench) :- obj(X), hasPhysicalQuality(X, heavy).
hasAffordance(X, absorb) :- obj(X), hasPhysicalQuality(X, soft_Deformable), hasPhysicalQuality(X, washable).
hasAffordance(X, absorb) :- obj(X), hasRole(X, cleaningToolRole), hasPhysicalQuality(X, soft_Deformable).
hasAffordance(X, bend) :- obj(X), hasPhysicalQuality(X, isFlexible).
hasAffordance(X, bend) :- obj(X), hasRole(X, toolRole), hasPhysicalQuality(X, isFlexible).
hasAffordance(X, cover) :- obj(X), hasPhysicalQuality(X, soft_Deformable), hasPhysicalQuality(X, isFlexible).
hasAffordance(X, cover) :- obj(X), hasRole(X, beddingRole).
hasAffordance(X, dig) :- obj(X), affordsTask(X, gardeningTask).
hasAffordance(X, dig) :- obj(X), hasRole(X, toolRole), hasPhysicalQuality(X, rigid), hasPhysicalQuality(X, hasPointedTip).
hasAffordance(X, exercise) :- obj(X), hasRole(X, entertainmentRole), hasPhysicalQuality(X, heavy).
hasAffordance(X, exercise) :- obj(X), hasRole(X, toolRole), affordsTask(X, leisureTask).
hasAffordance(X, flex) :- obj(X), hasPhysicalQuality(X, isFlexible), hasRole(X, toolRole).
hasAffordance(X, flex) :- obj(X), hasPhysicalQuality(X, isFlexible), hasPhysicalQuality(X, rigid).
hasAffordance(X, grind) :- obj(X), hasPhysicalQuality(X, hasAbrasiveSurface).
hasAffordance(X, grind) :- obj(X), hasPhysicalQuality(X, heavy), affordsTask(X, foodPreparationTask).
hasAffordance(X, lift) :- obj(X), hasRole(X, furnitureRole), hasPhysicalQuality(X, heavy).
hasAffordance(X, lift) :- obj(X), hasRole(X, toolRole), hasPhysicalQuality(X, heavy).
hasAffordance(X, mark) :- obj(X), affordsTask(X, workStudyTask), hasPhysicalQuality(X, hasPointedTip).
hasAffordance(X, mark) :- obj(X), hasRole(X, documentRole).
hasAffordance(X, melt) :- obj(X), hasPhysicalQuality(X, hasHeatElement).
hasAffordance(X, melt) :- obj(X), hasPhysicalQuality(X, heated), hasRole(X, toolRole).
hasAffordance(X, pierce) :- obj(X), hasPhysicalQuality(X, hasPointedTip).
hasAffordance(X, pierce) :- obj(X), hasPhysicalQuality(X, sharp), hasPhysicalQuality(X, hasPointedTip).
hasAffordance(X, plow) :- obj(X), affordsTask(X, gardeningTask), hasPhysicalQuality(X, heavy).
hasAffordance(X, plow) :- obj(X), hasRole(X, toolRole), hasPhysicalQuality(X, hasBlade), hasPhysicalQuality(X, heavy).
hasAffordance(X, roll) :- obj(X), hasRole(X, toolRole), hasPhysicalQuality(X, isRotary).
hasAffordance(X, roll) :- obj(X), hasPhysicalQuality(X, rigid), affordsTask(X, foodPreparationTask), hasPhysicalQuality(X, heavy).
hasAffordance(X, rub) :- obj(X), hasPhysicalQuality(X, hasAbrasiveSurface).
hasAffordance(X, rub) :- obj(X), hasRole(X, cleaningToolRole), hasPhysicalQuality(X, soft_Deformable).
hasAffordance(X, saw) :- obj(X), hasPhysicalQuality(X, hasBlade), hasPhysicalQuality(X, hasTeeth).
hasAffordance(X, saw) :- obj(X), hasPhysicalQuality(X, hasBlade), hasRole(X, toolRole), hasPhysicalQuality(X, heavy).
hasAffordance(X, scoop) :- obj(X), hasPhysicalQuality(X, hasContainer), affordsTask(X, foodPreparationTask).
hasAffordance(X, scoop) :- obj(X), hasPhysicalQuality(X, hasContainer), affordsTask(X, gardeningTask).
hasAffordance(X, shape) :- obj(X), hasPhysicalQuality(X, hasAbrasiveSurface), hasRole(X, toolRole).
hasAffordance(X, shape) :- obj(X), hasRole(X, toolRole), affordsTask(X, maintenanceTask), hasPhysicalQuality(X, rigid).
hasAffordance(X, slit) :- obj(X), hasPhysicalQuality(X, hasBlade), hasPhysicalQuality(X, sharp).
hasAffordance(X, slit) :- obj(X), hasPhysicalQuality(X, hasBlade), hasRole(X, utensilRole).
hasAffordance(X, solder) :- obj(X), hasPhysicalQuality(X, hasHeatElement).
hasAffordance(X, solder) :- obj(X), hasPhysicalQuality(X, heated), hasPhysicalQuality(X, electronic).
hasAffordance(X, stick) :- obj(X), hasPhysicalQuality(X, hasPointedTip), hasPhysicalQuality(X, lightweight).
hasAffordance(X, strip) :- obj(X), hasPhysicalQuality(X, hasBlade), hasRole(X, toolRole).
hasAffordance(X, tamp) :- obj(X), hasRole(X, toolRole), hasPhysicalQuality(X, rigid), hasPhysicalQuality(X, heavy).
hasAffordance(X, tamp) :- obj(X), hasPhysicalQuality(X, hasPointedTip), hasPhysicalQuality(X, rigid).
hasAffordance(X, time) :- obj(X), hasPhysicalQuality(X, electronic), affordsTask(X, workStudyTask).
hasAffordance(X, time) :- obj(X), hasPhysicalQuality(X, electronic), affordsTask(X, leisureTask).
hasAffordance(X, unclog) :- obj(X), hasRole(X, cleaningToolRole), hasPhysicalQuality(X, isFlexible).
hasAffordance(X, unclog) :- obj(X), hasRole(X, cleaningToolRole), hasPhysicalQuality(X, hasContainer).
hasAffordance(X, unclog) :- obj(X), hasRole(X, toolRole), hasPhysicalQuality(X, isFlexible), hasPhysicalQuality(X, isRotary).
hasAffordance(X, wipe) :- obj(X), hasRole(X, cleaningToolRole).
hasAffordance(X, wipe) :- obj(X), hasPhysicalQuality(X, soft_Deformable), hasPhysicalQuality(X, washable).

#show hasAffordance/2.
