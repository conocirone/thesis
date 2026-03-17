% Learned hasAffordance rules extracted from LLM induction
hasAffordance(X, carry) :- obj(X), hasPhysicalQuality(X, rigid), hasPhysicalQuality(X, heavy), hasRole(X, cookwareRole).
hasAffordance(X, carry) :- obj(X), hasPhysicalQuality(X, lightweight), hasPhysicalQuality(X, rigid), hasRole(X, utensilRole), affordsTask(X, eatingDrinkingTask).
hasAffordance(X, be_heated) :- obj(X), hasPhysicalQuality(X, heated), hasRole(X, cookwareRole), affordsTask(X, foodPreparationTask).
hasAffordance(X, be_heated) :- obj(X), hasPhysicalQuality(X, rigid), hasRole(X, utensilRole), affordsTask(X, eatingDrinkingTask).
hasAffordance(X, be_heated) :- obj(X), hasPhysicalQuality(X, liquid), hasRole(X, utensilRole), affordsTask(X, eatingDrinkingTask).
hasAffordance(X, beautify) :- obj(X), hasPhysicalQuality(X, lightweight), hasRole(X, storageContainerRole), affordsTask(X, storageTask).
hasAffordance(X, bore) :- obj(X), hasPhysicalQuality(X, rigid), hasRole(X, toolRole), affordsTask(X, maintenanceTask).
hasAffordance(X, break) :- obj(X), hasPhysicalQuality(X, sharp), hasRole(X, utensilRole), affordsTask(X, foodPreparationTask).
hasAffordance(X, break) :- obj(X), hasPhysicalQuality(X, heavy), hasPhysicalQuality(X, rigid), hasRole(X, toolRole), affordsTask(X, maintenanceTask).
hasAffordance(X, break) :- obj(X), hasPhysicalQuality(X, lightweight), hasPhysicalQuality(X, liquid), hasRole(X, utensilRole), affordsTask(X, eatingDrinkingTask).
hasAffordance(X, cut) :- obj(X), hasPhysicalQuality(X, sharp), hasRole(X, utensilRole), affordsTask(X, foodPreparationTask).
hasAffordance(X, cut) :- obj(X), hasPhysicalQuality(X, sharp), hasRole(X, toolRole), affordsTask(X, foodPreparationTask).
hasAffordance(X, cut) :- obj(X), hasPhysicalQuality(X, soft_Deformable), hasRole(X, toolRole), affordsTask(X, hygieneTask), affordsTask(X, leisureTask).
hasAffordance(X, cut) :- obj(X), hasPhysicalQuality(X, fragile), hasPhysicalQuality(X, lightweight), hasRole(X, consumableRole), affordsTask(X, eatingDrinkingTask), affordsTask(X, foodPreparationTask).
hasAffordance(X, cut) :- obj(X), hasPhysicalQuality(X, granular), hasRole(X, consumableRole), affordsTask(X, eatingDrinkingTask).
hasAffordance(X, cut) :- obj(X), hasPhysicalQuality(X, rigid), hasRole(X, toolRole), affordsTask(X, maintenanceTask).
hasAffordance(X, cut) :- obj(X), hasPhysicalQuality(X, perishable), hasRole(X, consumableRole), affordsTask(X, eatingDrinkingTask).
hasAffordance(X, cut) :- obj(X), hasPhysicalQuality(X, lightweight), hasRole(X, documentRole), affordsTask(X, leisureTask).
hasAffordance(X, eat) :- obj(X), hasPhysicalQuality(X, fragile), hasPhysicalQuality(X, lightweight), hasRole(X, consumableRole), affordsTask(X, eatingDrinkingTask).
hasAffordance(X, eat) :- obj(X), hasPhysicalQuality(X, heated), hasPhysicalQuality(X, liquid), hasPhysicalQuality(X, perishable), hasRole(X, consumableRole).
hasAffordance(X, eat) :- obj(X), hasPhysicalQuality(X, granular), hasPhysicalQuality(X, perishable), hasRole(X, consumableRole), affordsTask(X, eatingDrinkingTask).
hasAffordance(X, eat) :- obj(X), hasPhysicalQuality(X, perishable), hasRole(X, consumableRole), affordsTask(X, eatingDrinkingTask).
hasAffordance(X, eat) :- obj(X), hasPhysicalQuality(X, granular), hasRole(X, consumableRole), affordsTask(X, foodPreparationTask).
hasAffordance(X, pick) :- obj(X), hasPhysicalQuality(X, sharp), hasRole(X, utensilRole), affordsTask(X, eatingDrinkingTask).
hasAffordance(X, pick) :- obj(X), hasPhysicalQuality(X, sharp), hasRole(X, utensilRole), affordsTask(X, foodPreparationTask).
hasAffordance(X, pick) :- obj(X), hasPhysicalQuality(X, rigid), hasRole(X, utensilRole), affordsTask(X, eatingDrinkingTask).
hasAffordance(X, pick) :- obj(X), hasPhysicalQuality(X, rigid), hasRole(X, toolRole).
hasAffordance(X, pick) :- obj(X), hasPhysicalQuality(X, fragile), hasRole(X, consumableRole), affordsTask(X, eatingDrinkingTask).
hasAffordance(X, pick) :- obj(X), hasPhysicalQuality(X, rigid), hasRole(X, cookwareRole).
hasAffordance(X, pick) :- obj(X), hasPhysicalQuality(X, fragile), hasRole(X, furnitureRole), affordsTask(X, storageTask).
hasAffordance(X, pick) :- obj(X), hasPhysicalQuality(X, soft_Deformable), hasRole(X, clothingRole), affordsTask(X, dressingTask).
hasAffordance(X, pick) :- obj(X), hasPhysicalQuality(X, granular), hasRole(X, consumableRole), affordsTask(X, eatingDrinkingTask).
hasAffordance(X, pick) :- obj(X), hasPhysicalQuality(X, lightweight), hasPhysicalQuality(X, washable), hasRole(X, documentRole), affordsTask(X, leisureTask), affordsTask(X, workStudyTask).
hasAffordance(X, pick) :- obj(X), hasPhysicalQuality(X, fragile), hasRole(X, decorationRole), affordsTask(X, storageTask).
hasAffordance(X, pick) :- obj(X), hasPhysicalQuality(X, soft_Deformable), hasRole(X, cleaningToolRole), affordsTask(X, cleaningTask).
hasAffordance(X, pick) :- obj(X), hasPhysicalQuality(X, soft_Deformable), hasRole(X, beddingRole), affordsTask(X, sleepingTask).
hasAffordance(X, pick) :- obj(X), hasPhysicalQuality(X, lightweight), hasRole(X, utensilRole), affordsTask(X, eatingDrinkingTask).
hasAffordance(X, pick) :- obj(X), hasPhysicalQuality(X, heavy), hasRole(X, cookwareRole), affordsTask(X, foodPreparationTask).
hasAffordance(X, pick) :- obj(X), hasPhysicalQuality(X, fragile), hasRole(X, lightingRole), affordsTask(X, leisureTask).
hasAffordance(X, pick) :- obj(X), hasPhysicalQuality(X, rigid), hasRole(X, storageContainerRole), affordsTask(X, storageTask).
hasAffordance(X, pick) :- obj(X), hasPhysicalQuality(X, perishable), hasRole(X, consumableRole), affordsTask(X, eatingDrinkingTask).
hasAffordance(X, pick) :- obj(X), hasPhysicalQuality(X, granular), hasRole(X, utensilRole), affordsTask(X, foodPreparationTask).
hasAffordance(X, pick) :- obj(X), hasPhysicalQuality(X, lightweight), hasRole(X, storageContainerRole), affordsTask(X, eatingDrinkingTask).
hasAffordance(X, pick) :- obj(X), hasPhysicalQuality(X, rigid), hasRole(X, decorationRole).
hasAffordance(X, pick) :- obj(X), hasPhysicalQuality(X, lightweight), hasRole(X, documentRole).
hasAffordance(X, contain) :- obj(X), hasPhysicalQuality(X, soft_Deformable), hasRole(X, furnitureRole), affordsTask(X, leisureTask).
hasAffordance(X, contain) :- obj(X), hasRole(X, utensilRole), affordsTask(X, eatingDrinkingTask).
hasAffordance(X, contain) :- obj(X), hasPhysicalQuality(X, rigid), hasRole(X, storageContainerRole), affordsTask(X, storageTask).
hasAffordance(X, contain) :- obj(X), hasRole(X, storageContainerRole).
hasAffordance(X, contain) :- obj(X), hasPhysicalQuality(X, rigid), hasRole(X, furnitureRole), affordsTask(X, storageTask).
hasAffordance(X, contain) :- obj(X), hasPhysicalQuality(X, lightweight), hasPhysicalQuality(X, washable), hasRole(X, documentRole), affordsTask(X, leisureTask), affordsTask(X, workStudyTask).
hasAffordance(X, contain) :- obj(X), hasPhysicalQuality(X, electronic), hasPhysicalQuality(X, heavy), hasRole(X, applianceRole), affordsTask(X, storageTask).
hasAffordance(X, contain) :- obj(X), hasPhysicalQuality(X, rigid), hasRole(X, furnitureRole), affordsTask(X, workStudyTask).
hasAffordance(X, contain) :- obj(X), hasPhysicalQuality(X, soft_Deformable), hasRole(X, furnitureRole), affordsTask(X, sleepingTask).
hasAffordance(X, comfort) :- obj(X), hasPhysicalQuality(X, soft_Deformable), hasRole(X, furnitureRole).
hasAffordance(X, comfort) :- obj(X), hasPhysicalQuality(X, rigid), hasRole(X, furnitureRole), affordsTask(X, leisureTask).
hasAffordance(X, increase) :- obj(X), hasPhysicalQuality(X, heavy), hasPhysicalQuality(X, rigid), hasRole(X, furnitureRole), affordsTask(X, eatingDrinkingTask), affordsTask(X, leisureTask), affordsTask(X, storageTask).
hasAffordance(X, increase) :- obj(X), hasPhysicalQuality(X, soft_Deformable), hasRole(X, furnitureRole), affordsTask(X, leisureTask).
hasAffordance(X, increase) :- obj(X), hasPhysicalQuality(X, fragile), hasPhysicalQuality(X, rigid), hasRole(X, furnitureRole), affordsTask(X, leisureTask).
hasAffordance(X, increase) :- obj(X), hasPhysicalQuality(X, heavy), hasPhysicalQuality(X, rigid), hasRole(X, furnitureRole), affordsTask(X, leisureTask).
hasAffordance(X, increase) :- obj(X), hasPhysicalQuality(X, heavy), hasPhysicalQuality(X, rigid), hasRole(X, furnitureRole), affordsTask(X, storageTask).
hasAffordance(X, increase) :- obj(X), hasPhysicalQuality(X, heavy), hasPhysicalQuality(X, rigid), hasRole(X, furnitureRole), affordsTask(X, workStudyTask).
hasAffordance(X, increase) :- obj(X), hasPhysicalQuality(X, soft_Deformable), hasRole(X, furnitureRole), affordsTask(X, sleepingTask).
hasAffordance(X, support) :- obj(X), hasPhysicalQuality(X, rigid), hasRole(X, furnitureRole), affordsTask(X, storageTask).
hasAffordance(X, support) :- obj(X), hasPhysicalQuality(X, soft_Deformable), hasRole(X, furnitureRole), affordsTask(X, sleepingTask).
hasAffordance(X, support) :- obj(X), hasPhysicalQuality(X, lightweight), hasPhysicalQuality(X, rigid), hasRole(X, utensilRole), affordsTask(X, eatingDrinkingTask).
hasAffordance(X, support) :- obj(X), hasPhysicalQuality(X, soft_Deformable), hasRole(X, furnitureRole), affordsTask(X, leisureTask).
hasAffordance(X, support) :- obj(X), hasPhysicalQuality(X, rigid), hasRole(X, furnitureRole), affordsTask(X, workStudyTask).
hasAffordance(X, support) :- obj(X), hasPhysicalQuality(X, lightweight), hasPhysicalQuality(X, liquid), hasRole(X, utensilRole), affordsTask(X, eatingDrinkingTask).
hasAffordance(X, change) :- obj(X), hasPhysicalQuality(X, sharp), hasRole(X, utensilRole), affordsTask(X, eatingDrinkingTask), affordsTask(X, foodPreparationTask).
hasAffordance(X, change) :- obj(X), hasPhysicalQuality(X, soft_Deformable), hasRole(X, toolRole), affordsTask(X, hygieneTask), affordsTask(X, leisureTask).
hasAffordance(X, change) :- obj(X), hasPhysicalQuality(X, sharp), hasRole(X, utensilRole), affordsTask(X, foodPreparationTask).
hasAffordance(X, change) :- obj(X), hasPhysicalQuality(X, rigid), hasRole(X, toolRole), affordsTask(X, maintenanceTask).
hasAffordance(X, change) :- obj(X), hasRole(X, toolRole), affordsTask(X, foodPreparationTask).
hasAffordance(X, change) :- obj(X), hasPhysicalQuality(X, lightweight), hasRole(X, storageContainerRole), affordsTask(X, storageTask).
hasAffordance(X, change) :- obj(X), hasPhysicalQuality(X, lightweight), hasRole(X, documentRole), affordsTask(X, leisureTask).
hasAffordance(X, fix) :- obj(X), hasPhysicalQuality(X, rigid), hasRole(X, toolRole), affordsTask(X, maintenanceTask).
hasAffordance(X, fix) :- obj(X), hasPhysicalQuality(X, sharp), hasRole(X, toolRole), affordsTask(X, foodPreparationTask).
hasAffordance(X, fix) :- obj(X), hasPhysicalQuality(X, lightweight), hasPhysicalQuality(X, soft_Deformable), hasRole(X, toolRole), affordsTask(X, hygieneTask), affordsTask(X, leisureTask).
hasAffordance(X, fix) :- obj(X), hasPhysicalQuality(X, lightweight), hasRole(X, storageContainerRole), affordsTask(X, storageTask).
hasAffordance(X, grasp) :- obj(X), hasPhysicalQuality(X, rigid), hasPhysicalQuality(X, sharp).
hasAffordance(X, grasp) :- obj(X), hasPhysicalQuality(X, lightweight), hasPhysicalQuality(X, soft_Deformable), hasPhysicalQuality(X, washable), hasRole(X, consumableRole), affordsTask(X, hygieneTask).
hasAffordance(X, grasp) :- obj(X), hasPhysicalQuality(X, lightweight), hasRole(X, utensilRole), affordsTask(X, eatingDrinkingTask).
hasAffordance(X, grasp) :- obj(X), hasPhysicalQuality(X, lightweight), hasRole(X, toolRole), affordsTask(X, workStudyTask).
hasAffordance(X, grasp) :- obj(X), hasPhysicalQuality(X, heavy), hasPhysicalQuality(X, rigid), hasRole(X, toolRole), affordsTask(X, maintenanceTask).
hasAffordance(X, grasp) :- obj(X), hasPhysicalQuality(X, liquid), hasRole(X, cleaningToolRole), affordsTask(X, hygieneTask).
hasAffordance(X, grasp) :- obj(X), hasPhysicalQuality(X, lightweight), hasRole(X, documentRole), affordsTask(X, workStudyTask).
hasAffordance(X, grasp) :- obj(X), hasPhysicalQuality(X, lightweight), hasRole(X, storageContainerRole), affordsTask(X, storageTask).
hasAffordance(X, grasp) :- obj(X), hasPhysicalQuality(X, electronic), hasPhysicalQuality(X, lightweight), hasRole(X, lightingRole), affordsTask(X, leisureTask).
hasAffordance(X, grasp) :- obj(X), hasPhysicalQuality(X, liquid), hasRole(X, toolRole), affordsTask(X, maintenanceTask).
hasAffordance(X, grasp) :- obj(X), hasPhysicalQuality(X, electronic), hasPhysicalQuality(X, heavy), hasRole(X, toolRole), affordsTask(X, foodPreparationTask).
hasAffordance(X, grasp) :- obj(X), hasPhysicalQuality(X, fragile), hasPhysicalQuality(X, lightweight), affordsTask(X, hygieneTask).
hasAffordance(X, grasp) :- obj(X), hasPhysicalQuality(X, lightweight), hasRole(X, documentRole), affordsTask(X, leisureTask).
hasAffordance(X, grasp) :- obj(X), hasPhysicalQuality(X, lightweight), hasRole(X, toolRole).
hasAffordance(X, hold) :- obj(X), hasPhysicalQuality(X, rigid), hasPhysicalQuality(X, sharp).
hasAffordance(X, hold) :- obj(X), hasPhysicalQuality(X, rigid), hasRole(X, toolRole), affordsTask(X, maintenanceTask).
hasAffordance(X, hold) :- obj(X), hasPhysicalQuality(X, heavy), hasRole(X, toolRole), affordsTask(X, foodPreparationTask).
hasAffordance(X, hold) :- obj(X), hasPhysicalQuality(X, lightweight), hasRole(X, storageContainerRole), affordsTask(X, storageTask).
hasAffordance(X, hold) :- obj(X), hasPhysicalQuality(X, lightweight), hasRole(X, documentRole), affordsTask(X, leisureTask).
hasAffordance(X, repair) :- obj(X), hasPhysicalQuality(X, sharp), hasRole(X, utensilRole).
hasAffordance(X, repair) :- obj(X), hasPhysicalQuality(X, heavy), hasPhysicalQuality(X, rigid), hasRole(X, toolRole), affordsTask(X, maintenanceTask).
hasAffordance(X, repair) :- obj(X), hasPhysicalQuality(X, sharp), hasRole(X, toolRole), affordsTask(X, foodPreparationTask).
hasAffordance(X, repair) :- obj(X), hasPhysicalQuality(X, electronic), hasRole(X, toolRole), affordsTask(X, foodPreparationTask).
hasAffordance(X, repair) :- obj(X), hasPhysicalQuality(X, lightweight), hasRole(X, storageContainerRole), affordsTask(X, storageTask).
hasAffordance(X, separate) :- obj(X), hasPhysicalQuality(X, lightweight), hasRole(X, documentRole), affordsTask(X, leisureTask).
hasAffordance(X, separate) :- obj(X), hasRole(X, toolRole), affordsTask(X, hygieneTask), affordsTask(X, leisureTask).
hasAffordance(X, separate) :- obj(X), hasPhysicalQuality(X, sharp), hasRole(X, toolRole), affordsTask(X, foodPreparationTask).
hasAffordance(X, separate) :- obj(X), hasPhysicalQuality(X, rigid), hasRole(X, toolRole), affordsTask(X, maintenanceTask).
hasAffordance(X, separate) :- obj(X), hasPhysicalQuality(X, sharp), hasRole(X, utensilRole), affordsTask(X, foodPreparationTask).
hasAffordance(X, read) :- obj(X), hasPhysicalQuality(X, lightweight), hasRole(X, documentRole).
hasAffordance(X, wrap) :- obj(X), hasPhysicalQuality(X, lightweight), hasPhysicalQuality(X, rigid), hasPhysicalQuality(X, washable), hasRole(X, utensilRole), affordsTask(X, eatingDrinkingTask).
hasAffordance(X, wrap) :- obj(X), hasPhysicalQuality(X, lightweight), hasPhysicalQuality(X, rigid), hasRole(X, utensilRole), affordsTask(X, eatingDrinkingTask).
hasAffordance(X, wrap) :- obj(X), hasPhysicalQuality(X, liquid), hasRole(X, cleaningToolRole), affordsTask(X, hygieneTask).
hasAffordance(X, wrap) :- obj(X), hasRole(X, storageContainerRole), affordsTask(X, storageTask).
hasAffordance(X, store) :- obj(X), hasPhysicalQuality(X, heavy), hasPhysicalQuality(X, rigid), hasRole(X, storageContainerRole), affordsTask(X, storageTask).
hasAffordance(X, store) :- obj(X), hasPhysicalQuality(X, heavy), hasRole(X, storageContainerRole), affordsTask(X, storageTask).
hasAffordance(X, store) :- obj(X), hasPhysicalQuality(X, heavy), hasPhysicalQuality(X, rigid), hasRole(X, furnitureRole), affordsTask(X, storageTask).
hasAffordance(X, store) :- obj(X), hasPhysicalQuality(X, electronic), hasPhysicalQuality(X, heavy), hasRole(X, applianceRole), affordsTask(X, storageTask).
hasAffordance(X, store) :- obj(X), hasPhysicalQuality(X, heavy), hasPhysicalQuality(X, rigid), hasRole(X, furnitureRole), affordsTask(X, workStudyTask).
hasAffordance(X, display) :- obj(X), hasPhysicalQuality(X, electronic), hasPhysicalQuality(X, lightweight), hasRole(X, toolRole), affordsTask(X, workStudyTask).
hasAffordance(X, decorate) :- obj(X), hasPhysicalQuality(X, lightweight), hasPhysicalQuality(X, rigid), hasRole(X, decorationRole), affordsTask(X, leisureTask).
hasAffordance(X, decorate) :- obj(X), hasPhysicalQuality(X, rigid), hasRole(X, decorationRole).
hasAffordance(X, decorate) :- obj(X), hasRole(X, decorationRole), affordsTask(X, leisureTask).
hasAffordance(X, decorate) :- obj(X), hasPhysicalQuality(X, fragile), hasPhysicalQuality(X, heated), hasRole(X, lightingRole), affordsTask(X, leisureTask).
hasAffordance(X, heat) :- obj(X), hasPhysicalQuality(X, heated), affordsTask(X, foodPreparationTask).
hasAffordance(X, heat) :- obj(X), hasPhysicalQuality(X, heated), hasRole(X, lightingRole), affordsTask(X, leisureTask).
hasAffordance(X, illuminate) :- obj(X), hasPhysicalQuality(X, electronic), hasPhysicalQuality(X, lightweight), hasRole(X, lightingRole), affordsTask(X, leisureTask).
hasAffordance(X, illuminate) :- obj(X), hasPhysicalQuality(X, soft_Deformable), hasRole(X, furnitureRole), affordsTask(X, leisureTask).
hasAffordance(X, illuminate) :- obj(X), hasPhysicalQuality(X, heated), hasRole(X, lightingRole), affordsTask(X, leisureTask).
hasAffordance(X, illuminate) :- obj(X), hasPhysicalQuality(X, rigid), hasRole(X, furnitureRole), affordsTask(X, leisureTask).
hasAffordance(X, operate) :- obj(X), hasPhysicalQuality(X, electronic), hasPhysicalQuality(X, heated), hasRole(X, applianceRole), affordsTask(X, foodPreparationTask).
hasAffordance(X, operate) :- obj(X), hasPhysicalQuality(X, electronic), hasRole(X, applianceRole), affordsTask(X, leisureTask).
hasAffordance(X, operate) :- obj(X), hasPhysicalQuality(X, heavy), hasPhysicalQuality(X, rigid), hasRole(X, toolRole), affordsTask(X, maintenanceTask).
hasAffordance(X, operate) :- obj(X), hasPhysicalQuality(X, liquid), hasRole(X, toolRole), affordsTask(X, eatingDrinkingTask), affordsTask(X, hygieneTask).
hasAffordance(X, operate) :- obj(X), hasPhysicalQuality(X, fragile), hasPhysicalQuality(X, heated), hasRole(X, lightingRole), affordsTask(X, leisureTask).
hasAffordance(X, clean) :- obj(X), hasPhysicalQuality(X, soft_Deformable), hasPhysicalQuality(X, washable), hasRole(X, cleaningToolRole), affordsTask(X, cleaningTask).
hasAffordance(X, clean) :- obj(X), hasPhysicalQuality(X, rigid), hasPhysicalQuality(X, sharp), hasRole(X, utensilRole), affordsTask(X, eatingDrinkingTask), affordsTask(X, foodPreparationTask).
hasAffordance(X, clean) :- obj(X), hasPhysicalQuality(X, washable), hasRole(X, clothingRole), affordsTask(X, dressingTask), affordsTask(X, storageTask).
hasAffordance(X, clean) :- obj(X), hasPhysicalQuality(X, washable), affordsTask(X, hygieneTask).
hasAffordance(X, clean) :- obj(X), hasPhysicalQuality(X, rigid), hasRole(X, toolRole), affordsTask(X, maintenanceTask).
hasAffordance(X, clean) :- obj(X), hasPhysicalQuality(X, lightweight), hasRole(X, documentRole).
hasAffordance(X, pour) :- obj(X), hasPhysicalQuality(X, lightweight), hasPhysicalQuality(X, rigid), hasPhysicalQuality(X, washable), hasRole(X, utensilRole), affordsTask(X, eatingDrinkingTask).
hasAffordance(X, drill) :- obj(X), hasPhysicalQuality(X, heavy), hasPhysicalQuality(X, rigid), hasRole(X, toolRole), affordsTask(X, maintenanceTask).
hasAffordance(X, file) :- obj(X), hasPhysicalQuality(X, lightweight), hasRole(X, storageContainerRole), affordsTask(X, storageTask).
hasAffordance(X, polish) :- obj(X), hasPhysicalQuality(X, lightweight), hasRole(X, storageContainerRole), affordsTask(X, storageTask).
hasAffordance(X, roll) :- obj(X), hasRole(X, storageContainerRole), affordsTask(X, storageTask).
hasAffordance(X, mix) :- obj(X), hasPhysicalQuality(X, rigid), hasPhysicalQuality(X, sharp), hasRole(X, utensilRole), affordsTask(X, foodPreparationTask).
hasAffordance(X, cool) :- obj(X), hasPhysicalQuality(X, electronic), hasPhysicalQuality(X, heavy), hasRole(X, applianceRole), affordsTask(X, storageTask).
hasAffordance(X, dispose) :- obj(X), hasPhysicalQuality(X, heavy), hasRole(X, storageContainerRole), affordsTask(X, wasteDisposalTask).
hasAffordance(X, dispose) :- obj(X), hasPhysicalQuality(X, heavy), hasRole(X, furnitureRole), affordsTask(X, wasteDisposalTask).
hasAffordance(X, control) :- obj(X), hasPhysicalQuality(X, heavy), hasPhysicalQuality(X, rigid), hasRole(X, toolRole), affordsTask(X, maintenanceTask).
hasAffordance(X, hammer) :- obj(X), hasPhysicalQuality(X, heavy), hasPhysicalQuality(X, rigid), hasRole(X, toolRole), affordsTask(X, maintenanceTask).
hasAffordance(X, handle) :- obj(X), hasPhysicalQuality(X, heavy), hasPhysicalQuality(X, rigid), hasRole(X, toolRole), affordsTask(X, maintenanceTask).
hasAffordance(X, install) :- obj(X), hasPhysicalQuality(X, heavy), hasPhysicalQuality(X, rigid), hasRole(X, toolRole), affordsTask(X, maintenanceTask).
hasAffordance(X, plug) :- obj(X), hasPhysicalQuality(X, rigid), hasRole(X, toolRole), affordsTask(X, maintenanceTask).
hasAffordance(X, lift) :- obj(X), hasPhysicalQuality(X, heavy), hasPhysicalQuality(X, rigid), hasRole(X, toolRole), affordsTask(X, maintenanceTask).
hasAffordance(X, dry) :- obj(X), hasPhysicalQuality(X, soft_Deformable), hasPhysicalQuality(X, washable), hasRole(X, consumableRole).
hasAffordance(X, carve) :- obj(X), hasPhysicalQuality(X, sharp), hasRole(X, utensilRole), affordsTask(X, foodPreparationTask).
hasAffordance(X, crack) :- obj(X), hasPhysicalQuality(X, sharp), hasRole(X, utensilRole), affordsTask(X, foodPreparationTask).
hasAffordance(X, cube) :- obj(X), hasPhysicalQuality(X, rigid), hasPhysicalQuality(X, sharp), hasRole(X, utensilRole), affordsTask(X, foodPreparationTask).
hasAffordance(X, dice) :- obj(X), hasPhysicalQuality(X, rigid), hasPhysicalQuality(X, sharp), hasRole(X, utensilRole), affordsTask(X, foodPreparationTask).
hasAffordance(X, peel) :- obj(X), hasPhysicalQuality(X, sharp), hasRole(X, toolRole), affordsTask(X, foodPreparationTask).
hasAffordance(X, peel) :- obj(X), hasPhysicalQuality(X, sharp), hasRole(X, utensilRole), affordsTask(X, foodPreparationTask).
hasAffordance(X, skin) :- obj(X), hasPhysicalQuality(X, sharp), hasRole(X, toolRole), affordsTask(X, foodPreparationTask).
hasAffordance(X, skin) :- obj(X), hasPhysicalQuality(X, sharp), hasRole(X, utensilRole), affordsTask(X, foodPreparationTask).
hasAffordance(X, write) :- obj(X), hasPhysicalQuality(X, lightweight), hasPhysicalQuality(X, rigid), hasRole(X, toolRole).
hasAffordance(X, poke) :- obj(X), hasPhysicalQuality(X, rigid), affordsTask(X, maintenanceTask).
hasAffordance(X, screw) :- obj(X), hasPhysicalQuality(X, heavy), hasPhysicalQuality(X, rigid), hasRole(X, toolRole), affordsTask(X, maintenanceTask).
hasAffordance(X, saw) :- obj(X), hasPhysicalQuality(X, heavy), hasPhysicalQuality(X, rigid), hasRole(X, toolRole), affordsTask(X, maintenanceTask).
hasAffordance(X, spread) :- obj(X), hasPhysicalQuality(X, lightweight), hasPhysicalQuality(X, rigid), hasPhysicalQuality(X, sharp), hasRole(X, utensilRole).
hasAffordance(X, staple) :- obj(X), hasPhysicalQuality(X, heavy), hasPhysicalQuality(X, rigid), hasRole(X, toolRole), affordsTask(X, maintenanceTask).
hasAffordance(X, entertain) :- obj(X), hasPhysicalQuality(X, electronic), hasPhysicalQuality(X, heavy), hasRole(X, applianceRole), affordsTask(X, leisureTask).
hasAffordance(X, pierce) :- obj(X), hasPhysicalQuality(X, rigid), hasPhysicalQuality(X, sharp), hasRole(X, utensilRole), affordsTask(X, eatingDrinkingTask).
hasAffordance(X, stick) :- obj(X), hasPhysicalQuality(X, rigid), hasPhysicalQuality(X, sharp), hasRole(X, utensilRole), affordsTask(X, eatingDrinkingTask), affordsTask(X, foodPreparationTask).
hasAffordance(X, wrench) :- obj(X), hasPhysicalQuality(X, heavy), hasPhysicalQuality(X, rigid), hasRole(X, toolRole), affordsTask(X, maintenanceTask).

#show hasAffordance/2.
