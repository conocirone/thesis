% ==========================================
% BACKGROUND KNOWLEDGE FORMALE (SOMA)
% Generata da llama3.1:latest
% ==========================================

% --- clothing ---
obj(clothing).
hasPhysicalQuality(clothing, soft_Deformable).
hasPhysicalQuality(clothing, lightweight).
hasRole(clothing, clothingRole).
affordsTask(clothing, dressingTask).

% --- wheel ---
obj(wheel).
hasPhysicalQuality(wheel, rigid).
hasRole(wheel, toolRole).
affordsTask(wheel, maintenanceTask).

% --- salad spinner ---
obj(salad_spinner).
hasPhysicalQuality(salad_spinner, lightweight).
hasRole(salad_spinner, utensilRole).
affordsTask(salad_spinner, foodPreparationTask).

% --- electric blanket ---
obj(electric_blanket).
hasPhysicalQuality(electric_blanket, electronic).
hasPhysicalQuality(electric_blanket, soft_Deformable).
hasPhysicalQuality(electric_blanket, washable).
hasRole(electric_blanket, beddingRole).
affordsTask(electric_blanket, sleepingTask).

% --- led ---
obj(led).
hasPhysicalQuality(led, electronic).
hasPhysicalQuality(led, lightweight).
hasRole(led, lightingRole).
affordsTask(led, leisureTask).
affordsTask(led, workStudyTask).

% --- icebox ---
obj(icebox).
hasPhysicalQuality(icebox, requiresFreezing).
hasRole(icebox, applianceRole).
affordsTask(icebox, storageTask).

% --- cans of paint ---
obj(cans_of_paint).
hasPhysicalQuality(cans_of_paint, liquid).
hasPhysicalQuality(cans_of_paint, fragile).
hasPhysicalQuality(cans_of_paint, heavy).
hasRole(cans_of_paint, storageContainerRole).
affordsTask(cans_of_paint, maintenanceTask).

% --- hair care article ---
obj(hair_care_article).
hasPhysicalQuality(hair_care_article, lightweight).
hasRole(hair_care_article, cleaningToolRole).
affordsTask(hair_care_article, hygieneTask).

% --- clothing closet ---
obj(clothing_closet).
hasPhysicalQuality(clothing_closet, heavy).
hasRole(clothing_closet, storageContainerRole).
affordsTask(clothing_closet, storageTask).

% --- lock ---
obj(lock).
hasPhysicalQuality(lock, rigid).
hasRole(lock, toolRole).
affordsTask(lock, maintenanceTask).

% --- rock ---
obj(rock).
hasPhysicalQuality(rock, heavy).
hasRole(rock, toolRole).
affordsTask(rock, maintenanceTask).

% --- plastic ---
obj(plastic).
hasPhysicalQuality(plastic, rigid).
hasPhysicalQuality(plastic, granular).
hasRole(plastic, toolRole).

% --- stove ---
obj(stove).
hasPhysicalQuality(stove, heated).
hasRole(stove, cookwareRole).
affordsTask(stove, foodPreparationTask).

% --- chess knight ---
obj(chess_knight).
hasPhysicalQuality(chess_knight, rigid).
hasRole(chess_knight, toolRole).
affordsTask(chess_knight, leisureTask).

% --- chess queen ---
obj(chess_queen).
hasPhysicalQuality(chess_queen, rigid).
hasRole(chess_queen, entertainmentRole).
affordsTask(chess_queen, leisureTask).

% --- letter slot ---
obj(letter_slot).
hasPhysicalQuality(letter_slot, lightweight).
hasRole(letter_slot, storageContainerRole).
affordsTask(letter_slot, storageTask).

% --- board game ---
obj(board_game).
hasRole(board_game, entertainmentRole).
affordsTask(board_game, leisureTask).

% --- hanging rail ---
obj(hanging_rail).
hasPhysicalQuality(hanging_rail, rigid).
hasPhysicalQuality(hanging_rail, heavy).
hasRole(hanging_rail, furnitureRole).
affordsTask(hanging_rail, storageTask).

% --- shampoo and conditioner ---
obj(shampoo_and_conditioner).
hasPhysicalQuality(shampoo_and_conditioner, liquid).
hasRole(shampoo_and_conditioner, cleaningToolRole).
affordsTask(shampoo_and_conditioner, hygieneTask).

% --- television ---
obj(television).
hasPhysicalQuality(television, electronic).
hasPhysicalQuality(television, heavy).
hasRole(television, applianceRole).
affordsTask(television, leisureTask).

% --- stapler ---
obj(stapler).
hasPhysicalQuality(stapler, heavy).
hasPhysicalQuality(stapler, rigid).
hasRole(stapler, toolRole).
affordsTask(stapler, maintenanceTask).

% --- dictionary ---
obj(dictionary).
hasPhysicalQuality(dictionary, electronic).
hasRole(dictionary, toolRole).
affordsTask(dictionary, workStudyTask).

% --- appointment book ---
obj(appointment_book).
hasPhysicalQuality(appointment_book, lightweight).
hasRole(appointment_book, documentRole).
affordsTask(appointment_book, workStudyTask).

% --- knife ---
obj(knife).
hasPhysicalQuality(knife, sharp).
hasPhysicalQuality(knife, rigid).
hasRole(knife, utensilRole).
affordsTask(knife, foodPreparationTask).

% --- storage furniture ---
obj(storage_furniture).
hasPhysicalQuality(storage_furniture, heavy).
hasPhysicalQuality(storage_furniture, rigid).
hasRole(storage_furniture, furnitureRole).
affordsTask(storage_furniture, storageTask).

% --- bean bag chair ---
obj(bean_bag_chair).
hasPhysicalQuality(bean_bag_chair, soft_Deformable).
hasPhysicalQuality(bean_bag_chair, lightweight).
hasRole(bean_bag_chair, furnitureRole).
affordsTask(bean_bag_chair, leisureTask).

% --- shrimp ---
obj(shrimp).
hasPhysicalQuality(shrimp, perishable).
hasRole(shrimp, consumableRole).
affordsTask(shrimp, eatingDrinkingTask).

% --- chess set ---
obj(chess_set).
hasPhysicalQuality(chess_set, rigid).
hasRole(chess_set, entertainmentRole).
affordsTask(chess_set, leisureTask).

% --- stacking chairs ---
obj(stacking_chairs).
hasPhysicalQuality(stacking_chairs, lightweight).
hasRole(stacking_chairs, furnitureRole).
affordsTask(stacking_chairs, storageTask).

% --- shirt ---
obj(shirt).
hasPhysicalQuality(shirt, soft_Deformable).
hasPhysicalQuality(shirt, lightweight).
hasRole(shirt, clothingRole).
affordsTask(shirt, dressingTask).

% --- bowl ---
obj(bowl).
hasPhysicalQuality(bowl, lightweight).
hasPhysicalQuality(bowl, rigid).
hasRole(bowl, utensilRole).
affordsTask(bowl, eatingDrinkingTask).

% --- light bulb ---
obj(light_bulb).
hasPhysicalQuality(light_bulb, lightweight).
hasPhysicalQuality(light_bulb, rigid).
hasRole(light_bulb, lightingRole).
affordsTask(light_bulb, leisureTask).

% --- foundation ---
obj(foundation).
hasPhysicalQuality(foundation, heavy).
hasRole(foundation, furnitureRole).
affordsTask(foundation, maintenanceTask).

% --- pan ---
obj(pan).
hasPhysicalQuality(pan, heated).
hasPhysicalQuality(pan, rigid).
hasRole(pan, cookwareRole).
affordsTask(pan, foodPreparationTask).

% --- toilet ---
obj(toilet).
hasPhysicalQuality(toilet, heavy).
hasRole(toilet, furnitureRole).
affordsTask(toilet, wasteDisposalTask).

% --- carpeting ---
obj(carpeting).
hasPhysicalQuality(carpeting, soft_Deformable).
hasPhysicalQuality(carpeting, washable).
hasRole(carpeting, furnitureRole).
affordsTask(carpeting, leisureTask).

% --- plates ---
obj(plates).
hasPhysicalQuality(plates, rigid).
hasPhysicalQuality(plates, lightweight).
hasRole(plates, utensilRole).
affordsTask(plates, eatingDrinkingTask).

% --- electric socket ---
obj(electric_socket).
hasPhysicalQuality(electric_socket, electronic).
hasPhysicalQuality(electric_socket, heavy).
hasRole(electric_socket, applianceRole).
affordsTask(electric_socket, workStudyTask).

% --- windows ---
obj(windows).
hasPhysicalQuality(windows, rigid).
hasRole(windows, furnitureRole).

% --- bullet ---
obj(bullet).
hasPhysicalQuality(bullet, sharp).
hasRole(bullet, toolRole).
affordsTask(bullet, maintenanceTask).

% --- handbag ---
obj(handbag).
hasPhysicalQuality(handbag, soft_Deformable).
hasPhysicalQuality(handbag, lightweight).
hasRole(handbag, storageContainerRole).
affordsTask(handbag, storageTask).

% --- reading glasses ---
obj(reading_glasses).
hasPhysicalQuality(reading_glasses, lightweight).
hasPhysicalQuality(reading_glasses, rigid).
hasRole(reading_glasses, toolRole).
affordsTask(reading_glasses, workStudyTask).

% --- cookies ---
obj(cookies).
hasPhysicalQuality(cookies, granular).
hasRole(cookies, consumableRole).
affordsTask(cookies, eatingDrinkingTask).

% --- bike ---
obj(bike).
hasPhysicalQuality(bike, heavy).
hasPhysicalQuality(bike, rigid).
hasRole(bike, furnitureRole).
affordsTask(bike, leisureTask).
affordsTask(bike, workStudyTask).

% --- corner cupboard ---
obj(corner_cupboard).
hasPhysicalQuality(corner_cupboard, heavy).
hasPhysicalQuality(corner_cupboard, rigid).
hasRole(corner_cupboard, storageContainerRole).
affordsTask(corner_cupboard, storageTask).

% --- love seat ---
obj(love_seat).
hasPhysicalQuality(love_seat, fragile).
hasPhysicalQuality(love_seat, heavy).
hasRole(love_seat, furnitureRole).
affordsTask(love_seat, leisureTask).
affordsTask(love_seat, storageTask).

% --- plumbing ---
obj(plumbing).
hasPhysicalQuality(plumbing, heavy).
hasRole(plumbing, toolRole).
affordsTask(plumbing, maintenanceTask).

% --- duvet ---
obj(duvet).
hasPhysicalQuality(duvet, soft_Deformable).
hasPhysicalQuality(duvet, washable).
hasRole(duvet, beddingRole).
affordsTask(duvet, sleepingTask).

% --- hammer ---
obj(hammer).
hasPhysicalQuality(hammer, heavy).
hasPhysicalQuality(hammer, rigid).
hasRole(hammer, toolRole).
affordsTask(hammer, maintenanceTask).

% --- shellac ---
obj(shellac).
hasPhysicalQuality(shellac, liquid).
hasRole(shellac, toolRole).
affordsTask(shellac, maintenanceTask).

% --- broom ---
obj(broom).
hasPhysicalQuality(broom, lightweight).
hasPhysicalQuality(broom, fragile).
hasPhysicalQuality(broom, rigid).
hasRole(broom, cleaningToolRole).
affordsTask(broom, cleaningTask).

% --- spatula ---
obj(spatula).
hasPhysicalQuality(spatula, rigid).
hasPhysicalQuality(spatula, lightweight).
hasPhysicalQuality(spatula, sharp).
hasRole(spatula, utensilRole).
affordsTask(spatula, foodPreparationTask).

% --- drawer ---
obj(drawer).
hasPhysicalQuality(drawer, heavy).
hasRole(drawer, storageContainerRole).
affordsTask(drawer, storageTask).

% --- thumbtacks ---
obj(thumbtacks).
hasPhysicalQuality(thumbtacks, sharp).
hasPhysicalQuality(thumbtacks, fragile).
hasRole(thumbtacks, toolRole).
affordsTask(thumbtacks, maintenanceTask).

% --- honey ---
obj(honey).
hasPhysicalQuality(honey, perishable).
hasPhysicalQuality(honey, liquid).
hasRole(honey, consumableRole).
affordsTask(honey, eatingDrinkingTask).

% --- light ---
obj(light).
hasRole(light, consumableRole).
affordsTask(light, leisureTask).

% --- picture ---
obj(picture).
hasRole(picture, decorationRole).

% --- onions ---
obj(onions).
hasPhysicalQuality(onions, perishable).
hasRole(onions, consumableRole).
affordsTask(onions, foodPreparationTask).

% --- limes ---
obj(limes).
hasPhysicalQuality(limes, perishable).
hasRole(limes, consumableRole).
affordsTask(limes, eatingDrinkingTask).

% --- table ---
obj(table).
hasPhysicalQuality(table, rigid).
hasRole(table, furnitureRole).
affordsTask(table, foodPreparationTask).
affordsTask(table, eatingDrinkingTask).
affordsTask(table, workStudyTask).
affordsTask(table, leisureTask).

% --- chips ---
obj(chips).
hasPhysicalQuality(chips, perishable).
hasRole(chips, consumableRole).
affordsTask(chips, eatingDrinkingTask).

% --- net ---
obj(net).
hasPhysicalQuality(net, lightweight).
hasRole(net, toolRole).
affordsTask(net, maintenanceTask).

% --- ruler ---
obj(ruler).
hasPhysicalQuality(ruler, rigid).
hasRole(ruler, toolRole).
affordsTask(ruler, maintenanceTask).

% --- beds ---
obj(beds).
hasPhysicalQuality(beds, soft_Deformable).
hasPhysicalQuality(beds, heavy).
hasRole(beds, furnitureRole).
affordsTask(beds, sleepingTask).

% --- saucepan ---
obj(saucepan).
hasPhysicalQuality(saucepan, heated).
hasPhysicalQuality(saucepan, rigid).
hasPhysicalQuality(saucepan, heavy).
hasRole(saucepan, cookwareRole).
affordsTask(saucepan, foodPreparationTask).

% --- books ---
obj(books).
hasPhysicalQuality(books, lightweight).
hasPhysicalQuality(books, washable).
hasRole(books, documentRole).
affordsTask(books, leisureTask).
affordsTask(books, workStudyTask).

% --- lip ---
obj(lip).
hasPhysicalQuality(lip, lightweight).
hasPhysicalQuality(lip, fragile).
hasRole(lip, utensilRole).
affordsTask(lip, eatingDrinkingTask).

% --- mirror ---
obj(mirror).
hasPhysicalQuality(mirror, rigid).
hasRole(mirror, decorationRole).
affordsTask(mirror, leisureTask).

% --- sock ---
obj(sock).
hasPhysicalQuality(sock, soft_Deformable).
hasPhysicalQuality(sock, lightweight).
hasRole(sock, clothingRole).
affordsTask(sock, dressingTask).

% --- jars ---
obj(jars).
hasRole(jars, storageContainerRole).
affordsTask(jars, storageTask).

% --- feather ---
obj(feather).
hasPhysicalQuality(feather, lightweight).
hasPhysicalQuality(feather, soft_Deformable).
hasRole(feather, consumableRole).
affordsTask(feather, leisureTask).

% --- umbrella ---
obj(umbrella).
hasPhysicalQuality(umbrella, lightweight).
hasRole(umbrella, toolRole).
affordsTask(umbrella, leisureTask).

% --- salad ---
obj(salad).
hasPhysicalQuality(salad, perishable).
hasRole(salad, consumableRole).
affordsTask(salad, eatingDrinkingTask).

% --- bottled water ---
obj(bottled_water).
hasPhysicalQuality(bottled_water, liquid).
hasRole(bottled_water, consumableRole).
affordsTask(bottled_water, eatingDrinkingTask).

% --- beets ---
obj(beets).
hasPhysicalQuality(beets, perishable).
hasRole(beets, consumableRole).
affordsTask(beets, eatingDrinkingTask).

% --- chairs ---
obj(chairs).
hasPhysicalQuality(chairs, heavy).
hasRole(chairs, furnitureRole).
affordsTask(chairs, leisureTask).

% --- skylight ---
obj(skylight).
hasPhysicalQuality(skylight, lightweight).
hasRole(skylight, furnitureRole).
affordsTask(skylight, leisureTask).

% --- monitor ---
obj(monitor).
hasPhysicalQuality(monitor, electronic).
hasPhysicalQuality(monitor, rigid).
hasRole(monitor, applianceRole).
affordsTask(monitor, leisureTask).

% --- armchair ---
obj(armchair).
hasPhysicalQuality(armchair, heavy).
hasRole(armchair, furnitureRole).
affordsTask(armchair, leisureTask).

% --- glasses case ---
obj(glasses_case).
hasPhysicalQuality(glasses_case, lightweight).
hasPhysicalQuality(glasses_case, soft_Deformable).
hasRole(glasses_case, storageContainerRole).
affordsTask(glasses_case, storageTask).

% --- checkbook holder ---
obj(checkbook_holder).
hasPhysicalQuality(checkbook_holder, lightweight).
hasPhysicalQuality(checkbook_holder, rigid).
hasRole(checkbook_holder, storageContainerRole).
affordsTask(checkbook_holder, storageTask).

% --- sweater ---
obj(sweater).
hasPhysicalQuality(sweater, soft_Deformable).
hasPhysicalQuality(sweater, washable).
hasRole(sweater, clothingRole).
affordsTask(sweater, dressingTask).

% --- mint ---
obj(mint).
hasPhysicalQuality(mint, perishable).
hasPhysicalQuality(mint, granular).
hasRole(mint, consumableRole).
affordsTask(mint, eatingDrinkingTask).

% --- smoothie ---
obj(smoothie).
hasPhysicalQuality(smoothie, perishable).
hasPhysicalQuality(smoothie, liquid).
hasRole(smoothie, consumableRole).
affordsTask(smoothie, eatingDrinkingTask).

% --- fruit ---
obj(fruit).
hasPhysicalQuality(fruit, perishable).
hasRole(fruit, consumableRole).
affordsTask(fruit, eatingDrinkingTask).

% --- patio door ---
obj(patio_door).
hasPhysicalQuality(patio_door, heavy).
hasRole(patio_door, furnitureRole).
affordsTask(patio_door, leisureTask).

% --- turtle ---
obj(turtle).
hasPhysicalQuality(turtle, fragile).
hasPhysicalQuality(turtle, rigid).
affordsTask(turtle, leisureTask).

% --- furnace ---
obj(furnace).
hasPhysicalQuality(furnace, heated).
hasRole(furnace, applianceRole).
affordsTask(furnace, maintenanceTask).

% --- trash ---
obj(trash).
hasRole(trash, storageContainerRole).
affordsTask(trash, wasteDisposalTask).

% --- oven ---
obj(oven).
hasPhysicalQuality(oven, heated).
hasRole(oven, cookwareRole).
affordsTask(oven, foodPreparationTask).

% --- cans ---
obj(cans).
hasPhysicalQuality(cans, heavy).
hasRole(cans, storageContainerRole).
affordsTask(cans, storageTask).

% --- jeans ---
obj(jeans).
hasPhysicalQuality(jeans, soft_Deformable).
hasPhysicalQuality(jeans, washable).
hasRole(jeans, clothingRole).
affordsTask(jeans, dressingTask).

% --- kettle ---
obj(kettle).
hasPhysicalQuality(kettle, heated).
hasPhysicalQuality(kettle, heavy).
hasRole(kettle, cookwareRole).
affordsTask(kettle, foodPreparationTask).

% --- egg shells ---
obj(egg_shells).
hasPhysicalQuality(egg_shells, fragile).
hasRole(egg_shells, wasteRole).

% --- salt ---
obj(salt).
hasPhysicalQuality(salt, granular).
hasRole(salt, consumableRole).
affordsTask(salt, foodPreparationTask).

% --- faucet ---
obj(faucet).
hasPhysicalQuality(faucet, liquid).
hasRole(faucet, toolRole).
affordsTask(faucet, eatingDrinkingTask).
affordsTask(faucet, hygieneTask).

% --- sofa hide bed ---
obj(sofa_hide_bed).
hasPhysicalQuality(sofa_hide_bed, soft_Deformable).
hasPhysicalQuality(sofa_hide_bed, heavy).
hasRole(sofa_hide_bed, furnitureRole).
affordsTask(sofa_hide_bed, sleepingTask).

% --- vice ---
obj(vice).
hasPhysicalQuality(vice, heavy).
hasPhysicalQuality(vice, rigid).
hasRole(vice, toolRole).
affordsTask(vice, maintenanceTask).

% --- forks ---
obj(forks).
hasPhysicalQuality(forks, sharp).
hasPhysicalQuality(forks, rigid).
hasRole(forks, utensilRole).
affordsTask(forks, foodPreparationTask).
affordsTask(forks, eatingDrinkingTask).

% --- bandaids ---
obj(bandaids).
hasPhysicalQuality(bandaids, lightweight).
hasPhysicalQuality(bandaids, fragile).
hasRole(bandaids, safetyEquipmentRole).
hasRole(bandaids, consumableRole).
affordsTask(bandaids, hygieneTask).
affordsTask(bandaids, wasteDisposalTask).

% --- revolving door ---
obj(revolving_door).
hasPhysicalQuality(revolving_door, heavy).
hasRole(revolving_door, furnitureRole).
affordsTask(revolving_door, leisureTask).

% --- cds ---
obj(cds).
hasPhysicalQuality(cds, rigid).
hasPhysicalQuality(cds, lightweight).
hasRole(cds, storageContainerRole).
affordsTask(cds, leisureTask).

% --- fridge ---
obj(fridge).
hasPhysicalQuality(fridge, electronic).
hasPhysicalQuality(fridge, heavy).
hasRole(fridge, applianceRole).
affordsTask(fridge, storageTask).

% --- mayonnaise ---
obj(mayonnaise).
hasPhysicalQuality(mayonnaise, perishable).
hasPhysicalQuality(mayonnaise, liquid).
hasRole(mayonnaise, consumableRole).
affordsTask(mayonnaise, eatingDrinkingTask).

% --- hose ---
obj(hose).
hasPhysicalQuality(hose, lightweight).
hasRole(hose, toolRole).
affordsTask(hose, cleaningTask).
affordsTask(hose, gardeningTask).

% --- telephone index ---
obj(telephone_index).
hasPhysicalQuality(telephone_index, electronic).
hasPhysicalQuality(telephone_index, lightweight).
hasRole(telephone_index, toolRole).
affordsTask(telephone_index, workStudyTask).

% --- holdall ---
obj(holdall).
hasPhysicalQuality(holdall, soft_Deformable).
hasPhysicalQuality(holdall, lightweight).
hasRole(holdall, storageContainerRole).
affordsTask(holdall, storageTask).

% --- stick of butter ---
obj(stick_of_butter).
hasPhysicalQuality(stick_of_butter, perishable).
hasPhysicalQuality(stick_of_butter, rigid).
hasRole(stick_of_butter, consumableRole).
affordsTask(stick_of_butter, foodPreparationTask).

% --- vent brush ---
obj(vent_brush).
hasPhysicalQuality(vent_brush, lightweight).
hasPhysicalQuality(vent_brush, fragile).
hasRole(vent_brush, cleaningToolRole).
affordsTask(vent_brush, cleaningTask).

% --- change ---
obj(change).
hasPhysicalQuality(change, fragile).
hasRole(change, entertainmentRole).
affordsTask(change, leisureTask).

% --- clip ---
obj(clip).
hasPhysicalQuality(clip, lightweight).
hasRole(clip, toolRole).
affordsTask(clip, maintenanceTask).

% --- hairbrush ---
obj(hairbrush).
hasPhysicalQuality(hairbrush, lightweight).
hasPhysicalQuality(hairbrush, rigid).
hasRole(hairbrush, toolRole).
affordsTask(hairbrush, hygieneTask).

% --- folder ---
obj(folder).
hasPhysicalQuality(folder, lightweight).
hasRole(folder, storageContainerRole).
affordsTask(folder, storageTask).

% --- furniture ---
obj(furniture).
hasPhysicalQuality(furniture, heavy).
hasPhysicalQuality(furniture, rigid).
hasRole(furniture, furnitureRole).
affordsTask(furniture, storageTask).

% --- post notes ---
obj(post_notes).
hasPhysicalQuality(post_notes, lightweight).
hasPhysicalQuality(post_notes, fragile).
hasRole(post_notes, consumableRole).
affordsTask(post_notes, leisureTask).

% --- toilet tank ---
obj(toilet_tank).
hasPhysicalQuality(toilet_tank, heavy).
hasRole(toilet_tank, storageContainerRole).
affordsTask(toilet_tank, wasteDisposalTask).

% --- mushrooms ---
obj(mushrooms).
hasPhysicalQuality(mushrooms, perishable).
hasRole(mushrooms, consumableRole).
affordsTask(mushrooms, eatingDrinkingTask).

% --- teddy bear ---
obj(teddy_bear).
hasPhysicalQuality(teddy_bear, soft_Deformable).
hasPhysicalQuality(teddy_bear, lightweight).
hasRole(teddy_bear, entertainmentRole).
affordsTask(teddy_bear, leisureTask).

% --- desk ---
obj(desk).
hasPhysicalQuality(desk, rigid).
hasPhysicalQuality(desk, heavy).
hasRole(desk, furnitureRole).
affordsTask(desk, workStudyTask).

% --- garbage can ---
obj(garbage_can).
hasPhysicalQuality(garbage_can, heavy).
hasRole(garbage_can, storageContainerRole).
affordsTask(garbage_can, wasteDisposalTask).

% --- stuffed animal ---
obj(stuffed_animal).
hasPhysicalQuality(stuffed_animal, soft_Deformable).
hasPhysicalQuality(stuffed_animal, lightweight).
hasRole(stuffed_animal, entertainmentRole).
affordsTask(stuffed_animal, leisureTask).

% --- chocolate ---
obj(chocolate).
hasPhysicalQuality(chocolate, perishable).
hasRole(chocolate, consumableRole).
affordsTask(chocolate, eatingDrinkingTask).

% --- birth control pill ---
obj(birth_control_pill).
hasPhysicalQuality(birth_control_pill, perishable).
hasRole(birth_control_pill, consumableRole).
affordsTask(birth_control_pill, eatingDrinkingTask).

% --- air conditioning ---
obj(air_conditioning).
hasPhysicalQuality(air_conditioning, electronic).
hasPhysicalQuality(air_conditioning, heavy).
hasRole(air_conditioning, applianceRole).
affordsTask(air_conditioning, storageTask).

% --- egg ---
obj(egg).
hasPhysicalQuality(egg, fragile).
hasPhysicalQuality(egg, lightweight).
hasRole(egg, consumableRole).
affordsTask(egg, foodPreparationTask).
affordsTask(egg, eatingDrinkingTask).

% --- cotton ---
obj(cotton).
hasPhysicalQuality(cotton, soft_Deformable).
hasPhysicalQuality(cotton, washable).
hasRole(cotton, consumableRole).
affordsTask(cotton, dressingTask).
affordsTask(cotton, storageTask).

% --- linoleum ---
obj(linoleum).
hasPhysicalQuality(linoleum, fragile).
hasPhysicalQuality(linoleum, liquid).
hasRole(linoleum, furnitureRole).
affordsTask(linoleum, cleaningTask).

% --- microwave ---
obj(microwave).
hasPhysicalQuality(microwave, heated).
hasPhysicalQuality(microwave, electronic).
hasPhysicalQuality(microwave, heavy).
hasRole(microwave, applianceRole).
affordsTask(microwave, foodPreparationTask).

% --- channel ---
obj(channel).
hasRole(channel, storageContainerRole).
affordsTask(channel, leisureTask).

% --- sheet ---
obj(sheet).
hasPhysicalQuality(sheet, soft_Deformable).
hasPhysicalQuality(sheet, washable).
hasRole(sheet, beddingRole).
affordsTask(sheet, sleepingTask).

% --- bureau ---
obj(bureau).
hasPhysicalQuality(bureau, heavy).
hasPhysicalQuality(bureau, rigid).
hasRole(bureau, furnitureRole).
affordsTask(bureau, storageTask).

% --- trash can ---
obj(trash_can).
hasPhysicalQuality(trash_can, heavy).
hasRole(trash_can, storageContainerRole).
hasRole(trash_can, wasteRole).
affordsTask(trash_can, wasteDisposalTask).

% --- slipper ---
obj(slipper).
hasPhysicalQuality(slipper, soft_Deformable).
hasPhysicalQuality(slipper, lightweight).
hasRole(slipper, clothingRole).
affordsTask(slipper, dressingTask).

% --- cookie ---
obj(cookie).
hasPhysicalQuality(cookie, granular).
hasRole(cookie, consumableRole).
affordsTask(cookie, eatingDrinkingTask).

% --- soda ---
obj(soda).
hasPhysicalQuality(soda, liquid).
hasPhysicalQuality(soda, perishable).
hasRole(soda, consumableRole).
affordsTask(soda, eatingDrinkingTask).

% --- coffee ---
obj(coffee).
hasPhysicalQuality(coffee, perishable).
hasPhysicalQuality(coffee, liquid).
hasPhysicalQuality(coffee, heated).
hasRole(coffee, consumableRole).
affordsTask(coffee, eatingDrinkingTask).

% --- cardboard ---
obj(cardboard).
hasPhysicalQuality(cardboard, granular).
hasRole(cardboard, storageContainerRole).
affordsTask(cardboard, storageTask).

% --- good book ---
obj(good_book).
hasRole(good_book, documentRole).
affordsTask(good_book, leisureTask).

% --- paint ---
obj(paint).
hasPhysicalQuality(paint, liquid).
hasPhysicalQuality(paint, toxic_Hazardous).
hasRole(paint, toolRole).
affordsTask(paint, maintenanceTask).

% --- account book ---
obj(account_book).
hasPhysicalQuality(account_book, lightweight).
hasRole(account_book, documentRole).
affordsTask(account_book, workStudyTask).

% --- notebook ---
obj(notebook).
hasPhysicalQuality(notebook, lightweight).
hasPhysicalQuality(notebook, washable).
hasRole(notebook, documentRole).
affordsTask(notebook, workStudyTask).

% --- peanuts ---
obj(peanuts).
hasPhysicalQuality(peanuts, granular).
hasRole(peanuts, consumableRole).
affordsTask(peanuts, eatingDrinkingTask).

% --- washcloth ---
obj(washcloth).
hasPhysicalQuality(washcloth, soft_Deformable).
hasPhysicalQuality(washcloth, washable).
hasRole(washcloth, cleaningToolRole).
affordsTask(washcloth, hygieneTask).
affordsTask(washcloth, cleaningTask).

% --- store shelf ---
obj(store_shelf).
hasPhysicalQuality(store_shelf, rigid).
hasPhysicalQuality(store_shelf, heavy).
hasRole(store_shelf, storageContainerRole).
affordsTask(store_shelf, storageTask).

% --- rug ---
obj(rug).
hasPhysicalQuality(rug, soft_Deformable).
hasPhysicalQuality(rug, fragile).
hasRole(rug, furnitureRole).
affordsTask(rug, leisureTask).

% --- refuse ---
obj(refuse).
hasRole(refuse, wasteRole).
affordsTask(refuse, wasteDisposalTask).

% --- basket with handle ---
obj(basket_with_handle).
hasPhysicalQuality(basket_with_handle, lightweight).
hasPhysicalQuality(basket_with_handle, rigid).
hasRole(basket_with_handle, storageContainerRole).
affordsTask(basket_with_handle, storageTask).

% --- bicycle storage area ---
obj(bicycle_storage_area).
hasRole(bicycle_storage_area, storageContainerRole).
affordsTask(bicycle_storage_area, storageTask).

% --- electric pencil sharpener ---
obj(electric_pencil_sharpener).
hasPhysicalQuality(electric_pencil_sharpener, electronic).
hasPhysicalQuality(electric_pencil_sharpener, heavy).
hasRole(electric_pencil_sharpener, toolRole).
affordsTask(electric_pencil_sharpener, maintenanceTask).

% --- marble ---
obj(marble).
hasPhysicalQuality(marble, rigid).
hasPhysicalQuality(marble, lightweight).
hasRole(marble, decorationRole).
affordsTask(marble, leisureTask).

% --- bath ---
obj(bath).
hasPhysicalQuality(bath, liquid).
hasPhysicalQuality(bath, washable).
hasRole(bath, cleaningToolRole).
affordsTask(bath, hygieneTask).
affordsTask(bath, leisureTask).

% --- glass fronted display cabinet ---
obj(glass_fronted_display_cabinet).
hasPhysicalQuality(glass_fronted_display_cabinet, rigid).
hasPhysicalQuality(glass_fronted_display_cabinet, heavy).
hasRole(glass_fronted_display_cabinet, storageContainerRole).
affordsTask(glass_fronted_display_cabinet, storageTask).

% --- legs ---
obj(legs).
hasPhysicalQuality(legs, lightweight).
hasPhysicalQuality(legs, rigid).
hasRole(legs, furnitureRole).
affordsTask(legs, leisureTask).

% --- silk ---
obj(silk).
hasPhysicalQuality(silk, soft_Deformable).
hasPhysicalQuality(silk, washable).
hasRole(silk, clothingRole).
affordsTask(silk, dressingTask).

% --- tapestry ---
obj(tapestry).
hasPhysicalQuality(tapestry, soft_Deformable).
hasPhysicalQuality(tapestry, lightweight).
hasRole(tapestry, decorationRole).
affordsTask(tapestry, leisureTask).

% --- brush ---
obj(brush).
hasPhysicalQuality(brush, lightweight).
hasPhysicalQuality(brush, fragile).
hasRole(brush, toolRole).
affordsTask(brush, cleaningTask).

% --- telephone book ---
obj(telephone_book).
hasPhysicalQuality(telephone_book, heavy).
hasPhysicalQuality(telephone_book, rigid).
hasRole(telephone_book, documentRole).
affordsTask(telephone_book, workStudyTask).

% --- maps ---
obj(maps).
hasPhysicalQuality(maps, lightweight).
hasRole(maps, toolRole).
affordsTask(maps, leisureTask).

% --- freezer ---
obj(freezer).
hasPhysicalQuality(freezer, requiresFreezing).
hasRole(freezer, applianceRole).
affordsTask(freezer, storageTask).

% --- beverage ---
obj(beverage).
hasPhysicalQuality(beverage, liquid).
hasRole(beverage, consumableRole).
affordsTask(beverage, eatingDrinkingTask).

% --- vegemite ---
obj(vegemite).
hasPhysicalQuality(vegemite, perishable).
hasRole(vegemite, consumableRole).
affordsTask(vegemite, eatingDrinkingTask).

% --- pouch ---
obj(pouch).
hasPhysicalQuality(pouch, lightweight).
hasPhysicalQuality(pouch, soft_Deformable).
hasRole(pouch, storageContainerRole).
affordsTask(pouch, storageTask).

% --- coats ---
obj(coats).
hasPhysicalQuality(coats, soft_Deformable).
hasPhysicalQuality(coats, washable).
hasRole(coats, clothingRole).
affordsTask(coats, dressingTask).

% --- steel ---
obj(steel).
hasPhysicalQuality(steel, rigid).
hasPhysicalQuality(steel, heavy).
hasRole(steel, toolRole).
affordsTask(steel, maintenanceTask).

% --- utility case ---
obj(utility_case).
hasPhysicalQuality(utility_case, lightweight).
hasPhysicalQuality(utility_case, rigid).
hasRole(utility_case, storageContainerRole).
affordsTask(utility_case, storageTask).

% --- cooling device ---
obj(cooling_device).
hasPhysicalQuality(cooling_device, requiresCooling).
hasRole(cooling_device, applianceRole).
affordsTask(cooling_device, storageTask).

% --- card ---
obj(card).
hasPhysicalQuality(card, lightweight).
hasRole(card, consumableRole).
affordsTask(card, eatingDrinkingTask).

% --- post note ---
obj(post_note).
hasPhysicalQuality(post_note, lightweight).
hasPhysicalQuality(post_note, washable).
hasRole(post_note, documentRole).
affordsTask(post_note, workStudyTask).

% --- duvet cover ---
obj(duvet_cover).
hasPhysicalQuality(duvet_cover, soft_Deformable).
hasPhysicalQuality(duvet_cover, washable).
hasRole(duvet_cover, beddingRole).
affordsTask(duvet_cover, sleepingTask).

% --- ink ---
obj(ink).
hasPhysicalQuality(ink, liquid).
hasPhysicalQuality(ink, toxic_Hazardous).
hasRole(ink, consumableRole).
affordsTask(ink, foodPreparationTask).

% --- torch ---
obj(torch).
hasPhysicalQuality(torch, electronic).
hasPhysicalQuality(torch, lightweight).
hasRole(torch, lightingRole).
affordsTask(torch, leisureTask).

% --- poker chips ---
obj(poker_chips).
hasPhysicalQuality(poker_chips, lightweight).
hasPhysicalQuality(poker_chips, rigid).
hasPhysicalQuality(poker_chips, fragile).
hasRole(poker_chips, entertainmentRole).
affordsTask(poker_chips, leisureTask).

% --- tofu ---
obj(tofu).
hasPhysicalQuality(tofu, perishable).
hasRole(tofu, consumableRole).
affordsTask(tofu, eatingDrinkingTask).

% --- apple ---
obj(apple).
hasPhysicalQuality(apple, perishable).
hasPhysicalQuality(apple, fragile).
hasRole(apple, consumableRole).
affordsTask(apple, eatingDrinkingTask).

% --- dustbin ---
obj(dustbin).
hasPhysicalQuality(dustbin, heavy).
hasRole(dustbin, storageContainerRole).
hasRole(dustbin, wasteRole).
affordsTask(dustbin, wasteDisposalTask).

% --- mail ---
obj(mail).
hasPhysicalQuality(mail, lightweight).
hasPhysicalQuality(mail, fragile).
hasRole(mail, documentRole).
affordsTask(mail, workStudyTask).

% --- old things ---
obj(old_things).
hasPhysicalQuality(old_things, fragile).
hasRole(old_things, furnitureRole).
affordsTask(old_things, storageTask).

% --- stairs ---
obj(stairs).
hasPhysicalQuality(stairs, rigid).
hasRole(stairs, furnitureRole).

% --- pad ---
obj(pad).
hasPhysicalQuality(pad, soft_Deformable).
hasPhysicalQuality(pad, lightweight).
hasRole(pad, beddingRole).
affordsTask(pad, sleepingTask).

% --- tomato ---
obj(tomato).
hasPhysicalQuality(tomato, perishable).
hasRole(tomato, consumableRole).
affordsTask(tomato, eatingDrinkingTask).

% --- water ---
obj(water).
hasPhysicalQuality(water, liquid).
hasRole(water, consumableRole).
affordsTask(water, eatingDrinkingTask).
affordsTask(water, hygieneTask).
affordsTask(water, cleaningTask).

% --- rafter ---
obj(rafter).
hasPhysicalQuality(rafter, rigid).
hasPhysicalQuality(rafter, heavy).
hasRole(rafter, furnitureRole).
affordsTask(rafter, maintenanceTask).

% --- violin ---
obj(violin).
hasPhysicalQuality(violin, rigid).
hasPhysicalQuality(violin, electronic).
hasRole(violin, musicalInstrumentRole).
affordsTask(violin, leisureTask).

% --- scissors ---
obj(scissors).
hasPhysicalQuality(scissors, sharp).
hasPhysicalQuality(scissors, rigid).
hasRole(scissors, toolRole).
affordsTask(scissors, foodPreparationTask).

% --- kitchenette ---
obj(kitchenette).
hasPhysicalQuality(kitchenette, heavy).
hasRole(kitchenette, cookwareRole).
hasRole(kitchenette, storageContainerRole).
affordsTask(kitchenette, foodPreparationTask).
affordsTask(kitchenette, eatingDrinkingTask).
affordsTask(kitchenette, storageTask).

% --- compost ---
obj(compost).
hasPhysicalQuality(compost, perishable).
hasRole(compost, wasteRole).
affordsTask(compost, wasteDisposalTask).

% --- pasta ---
obj(pasta).
hasPhysicalQuality(pasta, perishable).
hasRole(pasta, consumableRole).
affordsTask(pasta, foodPreparationTask).
affordsTask(pasta, eatingDrinkingTask).

% --- cellar ---
obj(cellar).
hasPhysicalQuality(cellar, heavy).
hasRole(cellar, storageContainerRole).
affordsTask(cellar, storageTask).

% --- stairs railing ---
obj(stairs_railing).
hasPhysicalQuality(stairs_railing, rigid).
hasPhysicalQuality(stairs_railing, heavy).
hasRole(stairs_railing, furnitureRole).
affordsTask(stairs_railing, maintenanceTask).

% --- old newspapers ---
obj(old_newspapers).
hasPhysicalQuality(old_newspapers, perishable).
hasRole(old_newspapers, wasteRole).
affordsTask(old_newspapers, wasteDisposalTask).

% --- fan ---
obj(fan).
hasPhysicalQuality(fan, electronic).
hasPhysicalQuality(fan, lightweight).
hasRole(fan, applianceRole).
affordsTask(fan, leisureTask).

% --- ferret ---
obj(ferret).
hasPhysicalQuality(ferret, fragile).
hasPhysicalQuality(ferret, lightweight).
hasRole(ferret, entertainmentRole).
affordsTask(ferret, leisureTask).

% --- seeds ---
obj(seeds).
hasPhysicalQuality(seeds, granular).
hasRole(seeds, consumableRole).
affordsTask(seeds, gardeningTask).

% --- pepper ---
obj(pepper).
hasPhysicalQuality(pepper, granular).
hasRole(pepper, consumableRole).
affordsTask(pepper, foodPreparationTask).

% --- container cup ---
obj(container_cup).
hasPhysicalQuality(container_cup, lightweight).
hasPhysicalQuality(container_cup, rigid).
hasRole(container_cup, utensilRole).
affordsTask(container_cup, eatingDrinkingTask).

% --- fans ---
obj(fans).
hasPhysicalQuality(fans, lightweight).
hasPhysicalQuality(fans, rigid).
hasRole(fans, applianceRole).
affordsTask(fans, leisureTask).

% --- lemon juice ---
obj(lemon_juice).
hasPhysicalQuality(lemon_juice, liquid).
hasPhysicalQuality(lemon_juice, perishable).
hasRole(lemon_juice, consumableRole).
affordsTask(lemon_juice, eatingDrinkingTask).

% --- radio ---
obj(radio).
hasPhysicalQuality(radio, electronic).
hasPhysicalQuality(radio, lightweight).
hasRole(radio, applianceRole).
affordsTask(radio, leisureTask).

% --- dishes ---
obj(dishes).
hasPhysicalQuality(dishes, rigid).
hasRole(dishes, utensilRole).
affordsTask(dishes, foodPreparationTask).
affordsTask(dishes, eatingDrinkingTask).

% --- quill brush ---
obj(quill_brush).
hasPhysicalQuality(quill_brush, lightweight).
hasPhysicalQuality(quill_brush, soft_Deformable).
hasRole(quill_brush, toolRole).

% --- birds ---
obj(birds).
hasPhysicalQuality(birds, lightweight).
hasPhysicalQuality(birds, rigid).
hasRole(birds, consumableRole).
affordsTask(birds, eatingDrinkingTask).

% --- hot sauce ---
obj(hot_sauce).
hasPhysicalQuality(hot_sauce, liquid).
hasPhysicalQuality(hot_sauce, perishable).
hasPhysicalQuality(hot_sauce, toxic_Hazardous).
hasRole(hot_sauce, consumableRole).
affordsTask(hot_sauce, eatingDrinkingTask).

% --- matches ---
obj(matches).
hasRole(matches, toolRole).
affordsTask(matches, leisureTask).

% --- couch ---
obj(couch).
hasPhysicalQuality(couch, heavy).
hasPhysicalQuality(couch, rigid).
hasRole(couch, furnitureRole).
affordsTask(couch, leisureTask).
affordsTask(couch, sleepingTask).

% --- kleenex ---
obj(kleenex).
hasPhysicalQuality(kleenex, soft_Deformable).
hasPhysicalQuality(kleenex, lightweight).
hasPhysicalQuality(kleenex, washable).
hasRole(kleenex, consumableRole).
affordsTask(kleenex, hygieneTask).

% --- pencil sharpener ---
obj(pencil_sharpener).
hasPhysicalQuality(pencil_sharpener, heavy).
hasPhysicalQuality(pencil_sharpener, rigid).
hasRole(pencil_sharpener, toolRole).
affordsTask(pencil_sharpener, foodPreparationTask).

% --- tables ---
obj(tables).
hasPhysicalQuality(tables, rigid).
hasPhysicalQuality(tables, heavy).
hasRole(tables, furnitureRole).
affordsTask(tables, storageTask).

% --- spray hose ---
obj(spray_hose).
hasPhysicalQuality(spray_hose, liquid).
hasPhysicalQuality(spray_hose, gas_Aerosol).
hasPhysicalQuality(spray_hose, heavy).
hasRole(spray_hose, toolRole).
affordsTask(spray_hose, gardeningTask).
affordsTask(spray_hose, cleaningTask).

% --- binder ---
obj(binder).
hasPhysicalQuality(binder, lightweight).
hasPhysicalQuality(binder, rigid).
hasRole(binder, storageContainerRole).
affordsTask(binder, storageTask).

% --- counter ---
obj(counter).
hasPhysicalQuality(counter, rigid).
hasPhysicalQuality(counter, heavy).
hasRole(counter, furnitureRole).
affordsTask(counter, workStudyTask).

% --- container can ---
obj(container_can).
hasRole(container_can, storageContainerRole).
affordsTask(container_can, storageTask).

% --- coast ---
obj(coast).
hasPhysicalQuality(coast, lightweight).
hasRole(coast, toolRole).
affordsTask(coast, maintenanceTask).

% --- knob ---
obj(knob).
hasPhysicalQuality(knob, rigid).
hasPhysicalQuality(knob, lightweight).
hasRole(knob, toolRole).
affordsTask(knob, maintenanceTask).

% --- mechanical pencil ---
obj(mechanical_pencil).
hasPhysicalQuality(mechanical_pencil, lightweight).
hasPhysicalQuality(mechanical_pencil, rigid).
hasRole(mechanical_pencil, toolRole).

% --- shampoo ---
obj(shampoo).
hasPhysicalQuality(shampoo, liquid).
hasRole(shampoo, cleaningToolRole).
affordsTask(shampoo, hygieneTask).

% --- buttons ---
obj(buttons).
hasPhysicalQuality(buttons, lightweight).
hasPhysicalQuality(buttons, rigid).
hasRole(buttons, toolRole).
affordsTask(buttons, maintenanceTask).

% --- musical instrument ---
obj(musical_instrument).
hasPhysicalQuality(musical_instrument, rigid).
hasRole(musical_instrument, musicalInstrumentRole).
affordsTask(musical_instrument, leisureTask).

% --- wooden rod ---
obj(wooden_rod).
hasPhysicalQuality(wooden_rod, rigid).
hasPhysicalQuality(wooden_rod, heavy).
hasRole(wooden_rod, toolRole).
affordsTask(wooden_rod, maintenanceTask).

% --- keys ---
obj(keys).
hasPhysicalQuality(keys, lightweight).
hasPhysicalQuality(keys, rigid).
hasRole(keys, toolRole).
affordsTask(keys, maintenanceTask).

% --- hanger ---
obj(hanger).
hasPhysicalQuality(hanger, lightweight).
hasPhysicalQuality(hanger, rigid).
hasRole(hanger, storageContainerRole).
affordsTask(hanger, dressingTask).

% --- hot table ---
obj(hot_table).
hasPhysicalQuality(hot_table, heated).
hasRole(hot_table, cookwareRole).
affordsTask(hot_table, foodPreparationTask).

% --- hoist ---
obj(hoist).
hasPhysicalQuality(hoist, heavy).
hasPhysicalQuality(hoist, rigid).
hasRole(hoist, toolRole).
affordsTask(hoist, maintenanceTask).

% --- frisbee ---
obj(frisbee).
hasPhysicalQuality(frisbee, lightweight).
hasPhysicalQuality(frisbee, rigid).
hasRole(frisbee, entertainmentRole).
affordsTask(frisbee, leisureTask).

% --- bed ---
obj(bed).
hasPhysicalQuality(bed, soft_Deformable).
hasPhysicalQuality(bed, heavy).
hasRole(bed, furnitureRole).
affordsTask(bed, sleepingTask).

% --- silverware ---
obj(silverware).
hasPhysicalQuality(silverware, sharp).
hasPhysicalQuality(silverware, rigid).
hasRole(silverware, utensilRole).
affordsTask(silverware, eatingDrinkingTask).

% --- steak ---
obj(steak).
hasPhysicalQuality(steak, perishable).
hasPhysicalQuality(steak, fragile).
hasPhysicalQuality(steak, rigid).
hasPhysicalQuality(steak, heavy).
hasRole(steak, consumableRole).
hasRole(steak, utensilRole).
affordsTask(steak, foodPreparationTask).
affordsTask(steak, eatingDrinkingTask).

% --- chest ---
obj(chest).
hasPhysicalQuality(chest, heavy).
hasRole(chest, storageContainerRole).
affordsTask(chest, storageTask).

% --- baby ---
obj(baby).
hasPhysicalQuality(baby, lightweight).
hasRole(baby, entertainmentRole).
affordsTask(baby, leisureTask).

% --- skirts ---
obj(skirts).
hasPhysicalQuality(skirts, soft_Deformable).
hasPhysicalQuality(skirts, lightweight).
hasPhysicalQuality(skirts, washable).
hasRole(skirts, clothingRole).
affordsTask(skirts, dressingTask).

% --- camera ---
obj(camera).
hasPhysicalQuality(camera, electronic).
hasPhysicalQuality(camera, lightweight).
hasRole(camera, toolRole).
affordsTask(camera, leisureTask).
affordsTask(camera, workStudyTask).

% --- floor ---
obj(floor).
hasPhysicalQuality(floor, rigid).
hasPhysicalQuality(floor, heavy).
hasRole(floor, furnitureRole).
affordsTask(floor, storageTask).
affordsTask(floor, leisureTask).

% --- cookie jar ---
obj(cookie_jar).
hasPhysicalQuality(cookie_jar, heavy).
hasPhysicalQuality(cookie_jar, rigid).
hasRole(cookie_jar, storageContainerRole).
affordsTask(cookie_jar, storageTask).

% --- mat ---
obj(mat).
hasPhysicalQuality(mat, soft_Deformable).
hasRole(mat, storageContainerRole).
affordsTask(mat, storageTask).

% --- peas ---
obj(peas).
hasPhysicalQuality(peas, perishable).
hasRole(peas, consumableRole).
affordsTask(peas, eatingDrinkingTask).

% --- side chair ---
obj(side_chair).
hasPhysicalQuality(side_chair, rigid).
hasPhysicalQuality(side_chair, heavy).
hasRole(side_chair, furnitureRole).
affordsTask(side_chair, leisureTask).

% --- bandages ---
obj(bandages).
hasPhysicalQuality(bandages, lightweight).
hasPhysicalQuality(bandages, washable).
hasPhysicalQuality(bandages, fragile).
hasRole(bandages, safetyEquipmentRole).
affordsTask(bandages, hygieneTask).

% --- pictures ---
obj(pictures).
hasPhysicalQuality(pictures, lightweight).
hasRole(pictures, decorationRole).
affordsTask(pictures, leisureTask).

% --- tar ---
obj(tar).
hasPhysicalQuality(tar, granular).
hasPhysicalQuality(tar, heavy).
hasRole(tar, consumableRole).
affordsTask(tar, wasteDisposalTask).

% --- varnish ---
obj(varnish).
hasPhysicalQuality(varnish, liquid).
hasPhysicalQuality(varnish, toxic_Hazardous).
hasRole(varnish, toolRole).
affordsTask(varnish, maintenanceTask).

% --- candle ---
obj(candle).
hasPhysicalQuality(candle, heated).
hasPhysicalQuality(candle, fragile).
hasRole(candle, lightingRole).
affordsTask(candle, leisureTask).

% --- cold storage ---
obj(cold_storage).
hasPhysicalQuality(cold_storage, requiresCooling).
hasRole(cold_storage, applianceRole).
affordsTask(cold_storage, storageTask).

% --- gasoline ---
obj(gasoline).
hasPhysicalQuality(gasoline, flammable).
hasRole(gasoline, consumableRole).
affordsTask(gasoline, leisureTask).
affordsTask(gasoline, workStudyTask).

% --- drill ---
obj(drill).
hasPhysicalQuality(drill, heavy).
hasPhysicalQuality(drill, rigid).
hasRole(drill, toolRole).
affordsTask(drill, maintenanceTask).

% --- phone ---
obj(phone).
hasPhysicalQuality(phone, electronic).
hasPhysicalQuality(phone, lightweight).
hasRole(phone, toolRole).
affordsTask(phone, workStudyTask).

% --- pot ---
obj(pot).
hasPhysicalQuality(pot, heated).
hasPhysicalQuality(pot, heavy).
hasPhysicalQuality(pot, rigid).
hasRole(pot, cookwareRole).
affordsTask(pot, foodPreparationTask).

% --- hair shaping gel ---
obj(hair_shaping_gel).
hasPhysicalQuality(hair_shaping_gel, liquid).
hasPhysicalQuality(hair_shaping_gel, washable).
hasRole(hair_shaping_gel, cleaningToolRole).
affordsTask(hair_shaping_gel, hygieneTask).

% --- glass fronted cupboard ---
obj(glass_fronted_cupboard).
hasPhysicalQuality(glass_fronted_cupboard, rigid).
hasPhysicalQuality(glass_fronted_cupboard, heavy).
hasRole(glass_fronted_cupboard, storageContainerRole).
affordsTask(glass_fronted_cupboard, storageTask).

% --- dice ---
obj(dice).
hasPhysicalQuality(dice, granular).
hasRole(dice, toolRole).
affordsTask(dice, leisureTask).

% --- hairdresser chair ---
obj(hairdresser_chair).
hasPhysicalQuality(hairdresser_chair, rigid).
hasPhysicalQuality(hairdresser_chair, heavy).
hasRole(hairdresser_chair, furnitureRole).
affordsTask(hairdresser_chair, leisureTask).

% --- saw ---
obj(saw).
hasPhysicalQuality(saw, heavy).
hasPhysicalQuality(saw, rigid).
hasRole(saw, toolRole).
affordsTask(saw, maintenanceTask).

% --- chesspiece ---
obj(chesspiece).
hasPhysicalQuality(chesspiece, rigid).
hasRole(chesspiece, entertainmentRole).
affordsTask(chesspiece, leisureTask).

% --- container ---
obj(container).
hasRole(container, storageContainerRole).
affordsTask(container, storageTask).

% --- toilet seat ---
obj(toilet_seat).
hasPhysicalQuality(toilet_seat, fragile).
hasRole(toilet_seat, furnitureRole).
affordsTask(toilet_seat, wasteDisposalTask).

% --- door ---
obj(door).
hasPhysicalQuality(door, rigid).
hasRole(door, furnitureRole).
affordsTask(door, storageTask).

% --- paper towels ---
obj(paper_towels).
hasPhysicalQuality(paper_towels, lightweight).
hasPhysicalQuality(paper_towels, soft_Deformable).
hasPhysicalQuality(paper_towels, washable).
hasRole(paper_towels, cleaningToolRole).
affordsTask(paper_towels, cleaningTask).

% --- hook ---
obj(hook).
hasPhysicalQuality(hook, rigid).
hasPhysicalQuality(hook, lightweight).
hasRole(hook, toolRole).

% --- shirts ---
obj(shirts).
hasPhysicalQuality(shirts, soft_Deformable).
hasPhysicalQuality(shirts, lightweight).
hasRole(shirts, clothingRole).
affordsTask(shirts, dressingTask).

% --- cottage cheese ---
obj(cottage_cheese).
hasPhysicalQuality(cottage_cheese, perishable).
hasRole(cottage_cheese, consumableRole).
affordsTask(cottage_cheese, eatingDrinkingTask).

% --- eyeglasses case ---
obj(eyeglasses_case).
hasPhysicalQuality(eyeglasses_case, lightweight).
hasPhysicalQuality(eyeglasses_case, soft_Deformable).
hasRole(eyeglasses_case, storageContainerRole).
affordsTask(eyeglasses_case, storageTask).

% --- polish ---
obj(polish).
hasPhysicalQuality(polish, liquid).
hasRole(polish, cleaningToolRole).
affordsTask(polish, cleaningTask).

% --- cup ---
obj(cup).
hasPhysicalQuality(cup, lightweight).
hasPhysicalQuality(cup, liquid).
hasRole(cup, utensilRole).
affordsTask(cup, eatingDrinkingTask).

% --- oil ---
obj(oil).
hasPhysicalQuality(oil, liquid).
hasRole(oil, consumableRole).
affordsTask(oil, foodPreparationTask).

% --- pork ---
obj(pork).
hasPhysicalQuality(pork, perishable).
hasRole(pork, consumableRole).
affordsTask(pork, eatingDrinkingTask).

% --- tabby cat ---
obj(tabby_cat).
hasPhysicalQuality(tabby_cat, fragile).
hasPhysicalQuality(tabby_cat, soft_Deformable).
affordsTask(tabby_cat, leisureTask).

% --- bay ---
obj(bay).
hasPhysicalQuality(bay, heavy).
hasRole(bay, storageContainerRole).
affordsTask(bay, storageTask).

% --- hard drive ---
obj(hard_drive).
hasPhysicalQuality(hard_drive, electronic).
hasPhysicalQuality(hard_drive, heavy).
hasRole(hard_drive, applianceRole).
affordsTask(hard_drive, workStudyTask).

% --- jello ---
obj(jello).
hasPhysicalQuality(jello, soft_Deformable).
hasPhysicalQuality(jello, perishable).
hasRole(jello, consumableRole).
affordsTask(jello, eatingDrinkingTask).

% --- sheets ---
obj(sheets).
hasPhysicalQuality(sheets, soft_Deformable).
hasPhysicalQuality(sheets, lightweight).
hasPhysicalQuality(sheets, washable).
hasRole(sheets, beddingRole).
affordsTask(sheets, sleepingTask).

% --- bricks ---
obj(bricks).
hasPhysicalQuality(bricks, rigid).
hasPhysicalQuality(bricks, heavy).
hasRole(bricks, toolRole).
affordsTask(bricks, maintenanceTask).

% --- placemat ---
obj(placemat).
hasPhysicalQuality(placemat, soft_Deformable).
hasPhysicalQuality(placemat, lightweight).
hasRole(placemat, utensilRole).
affordsTask(placemat, eatingDrinkingTask).

% --- beer ---
obj(beer).
hasPhysicalQuality(beer, liquid).
hasPhysicalQuality(beer, perishable).
hasRole(beer, consumableRole).
affordsTask(beer, eatingDrinkingTask).

% --- acne medication ---
obj(acne_medication).
hasPhysicalQuality(acne_medication, perishable).
hasPhysicalQuality(acne_medication, toxic_Hazardous).
hasRole(acne_medication, consumableRole).
affordsTask(acne_medication, hygieneTask).

% --- tv ---
obj(tv).
hasPhysicalQuality(tv, electronic).
hasPhysicalQuality(tv, heavy).
hasRole(tv, applianceRole).
affordsTask(tv, leisureTask).

% --- fish ---
obj(fish).
hasPhysicalQuality(fish, perishable).
hasPhysicalQuality(fish, fragile).
hasRole(fish, consumableRole).
affordsTask(fish, eatingDrinkingTask).

% --- note ---
obj(note).
hasPhysicalQuality(note, lightweight).
hasRole(note, documentRole).
affordsTask(note, workStudyTask).

% --- glue stick ---
obj(glue_stick).
hasPhysicalQuality(glue_stick, liquid).
hasPhysicalQuality(glue_stick, fragile).
hasRole(glue_stick, toolRole).
affordsTask(glue_stick, maintenanceTask).

% --- linen ---
obj(linen).
hasPhysicalQuality(linen, soft_Deformable).
hasPhysicalQuality(linen, washable).
hasRole(linen, beddingRole).
hasRole(linen, clothingRole).
affordsTask(linen, sleepingTask).
affordsTask(linen, dressingTask).

% --- seat ---
obj(seat).
hasPhysicalQuality(seat, rigid).
hasPhysicalQuality(seat, heavy).
hasRole(seat, furnitureRole).
affordsTask(seat, leisureTask).
affordsTask(seat, sleepingTask).

% --- heater ---
obj(heater).
hasPhysicalQuality(heater, heated).
hasRole(heater, applianceRole).
affordsTask(heater, maintenanceTask).

% --- aluminum foil ---
obj(aluminum_foil).
hasPhysicalQuality(aluminum_foil, lightweight).
hasPhysicalQuality(aluminum_foil, rigid).
hasPhysicalQuality(aluminum_foil, fragile).
hasRole(aluminum_foil, cookwareRole).
affordsTask(aluminum_foil, foodPreparationTask).

% --- butter ---
obj(butter).
hasPhysicalQuality(butter, perishable).
hasPhysicalQuality(butter, soft_Deformable).
hasPhysicalQuality(butter, lightweight).
hasRole(butter, consumableRole).
affordsTask(butter, eatingDrinkingTask).

% --- leg ---
obj(leg).
hasPhysicalQuality(leg, rigid).
hasRole(leg, furnitureRole).
affordsTask(leg, leisureTask).

% --- dishwasher ---
obj(dishwasher).
hasPhysicalQuality(dishwasher, electronic).
hasPhysicalQuality(dishwasher, heavy).
hasRole(dishwasher, applianceRole).
affordsTask(dishwasher, cleaningTask).

% --- gate leg table ---
obj(gate_leg_table).
hasPhysicalQuality(gate_leg_table, heavy).
hasPhysicalQuality(gate_leg_table, rigid).
hasRole(gate_leg_table, furnitureRole).
affordsTask(gate_leg_table, workStudyTask).
affordsTask(gate_leg_table, leisureTask).

% --- bathroom ---
obj(bathroom).
hasPhysicalQuality(bathroom, fragile).
hasPhysicalQuality(bathroom, electronic).
hasRole(bathroom, furnitureRole).
affordsTask(bathroom, hygieneTask).
affordsTask(bathroom, leisureTask).

% --- pillow ---
obj(pillow).
hasPhysicalQuality(pillow, soft_Deformable).
hasPhysicalQuality(pillow, lightweight).
hasRole(pillow, beddingRole).
affordsTask(pillow, sleepingTask).

% --- strawberries ---
obj(strawberries).
hasPhysicalQuality(strawberries, perishable).
hasRole(strawberries, consumableRole).
affordsTask(strawberries, eatingDrinkingTask).

% --- ceiling ---
obj(ceiling).
hasPhysicalQuality(ceiling, rigid).
hasRole(ceiling, furnitureRole).
affordsTask(ceiling, storageTask).

% --- shower ---
obj(shower).
hasPhysicalQuality(shower, liquid).
hasPhysicalQuality(shower, heavy).
hasRole(shower, applianceRole).
affordsTask(shower, hygieneTask).
affordsTask(shower, cleaningTask).

% --- pepsi ---
obj(pepsi).
hasPhysicalQuality(pepsi, liquid).
hasRole(pepsi, consumableRole).
affordsTask(pepsi, eatingDrinkingTask).

% --- mouse ---
obj(mouse).
hasPhysicalQuality(mouse, lightweight).
hasRole(mouse, toolRole).
affordsTask(mouse, workStudyTask).

% --- potato ---
obj(potato).
hasPhysicalQuality(potato, perishable).
hasRole(potato, consumableRole).
affordsTask(potato, eatingDrinkingTask).

% --- pantry ---
obj(pantry).
hasRole(pantry, storageContainerRole).
affordsTask(pantry, storageTask).

% --- fire extinguisher ---
obj(fire_extinguisher).
hasPhysicalQuality(fire_extinguisher, heavy).
hasRole(fire_extinguisher, safetyEquipmentRole).
affordsTask(fire_extinguisher, maintenanceTask).

% --- dinner plate ---
obj(dinner_plate).
hasPhysicalQuality(dinner_plate, rigid).
hasPhysicalQuality(dinner_plate, lightweight).
hasRole(dinner_plate, utensilRole).
affordsTask(dinner_plate, eatingDrinkingTask).

% --- tin cans ---
obj(tin_cans).
hasPhysicalQuality(tin_cans, lightweight).
hasPhysicalQuality(tin_cans, rigid).
hasRole(tin_cans, storageContainerRole).
affordsTask(tin_cans, storageTask).

% --- felt ---
obj(felt).
hasPhysicalQuality(felt, soft_Deformable).
hasPhysicalQuality(felt, washable).
hasRole(felt, consumableRole).
affordsTask(felt, leisureTask).

% --- tote bag ---
obj(tote_bag).
hasPhysicalQuality(tote_bag, soft_Deformable).
hasPhysicalQuality(tote_bag, lightweight).
hasRole(tote_bag, storageContainerRole).
affordsTask(tote_bag, storageTask).

% --- recycling bin ---
obj(recycling_bin).
hasPhysicalQuality(recycling_bin, heavy).
hasPhysicalQuality(recycling_bin, rigid).
hasRole(recycling_bin, storageContainerRole).
affordsTask(recycling_bin, wasteDisposalTask).

% --- liquid ---
obj(liquid).
hasPhysicalQuality(liquid, liquid).
hasRole(liquid, consumableRole).
affordsTask(liquid, eatingDrinkingTask).

% --- soap ---
obj(soap).
hasPhysicalQuality(soap, liquid).
hasPhysicalQuality(soap, washable).
hasRole(soap, cleaningToolRole).
affordsTask(soap, hygieneTask).

% --- chess board ---
obj(chess_board).
hasPhysicalQuality(chess_board, rigid).
hasRole(chess_board, furnitureRole).
affordsTask(chess_board, leisureTask).

% --- linen chest ---
obj(linen_chest).
hasPhysicalQuality(linen_chest, heavy).
hasPhysicalQuality(linen_chest, rigid).
hasRole(linen_chest, storageContainerRole).
affordsTask(linen_chest, storageTask).

% --- oilcloth ---
obj(oilcloth).
hasPhysicalQuality(oilcloth, soft_Deformable).
hasPhysicalQuality(oilcloth, washable).
hasRole(oilcloth, cleaningToolRole).
affordsTask(oilcloth, cleaningTask).

% --- blanketing ---
obj(blanketing).
hasPhysicalQuality(blanketing, soft_Deformable).
hasPhysicalQuality(blanketing, washable).
hasRole(blanketing, beddingRole).
affordsTask(blanketing, sleepingTask).

% --- jar ---
obj(jar).
hasRole(jar, storageContainerRole).
affordsTask(jar, storageTask).

% --- nylon ---
obj(nylon).
hasPhysicalQuality(nylon, soft_Deformable).
hasPhysicalQuality(nylon, lightweight).
hasRole(nylon, clothingRole).
affordsTask(nylon, dressingTask).

% --- file ---
obj(file).
hasPhysicalQuality(file, lightweight).
hasRole(file, storageContainerRole).
affordsTask(file, storageTask).

% --- tissue holder ---
obj(tissue_holder).
hasPhysicalQuality(tissue_holder, lightweight).
hasPhysicalQuality(tissue_holder, rigid).
hasRole(tissue_holder, storageContainerRole).
affordsTask(tissue_holder, storageTask).

% --- page ---
obj(page).
hasRole(page, documentRole).

% --- batter ---
obj(batter).
hasPhysicalQuality(batter, liquid).
hasRole(batter, consumableRole).
affordsTask(batter, foodPreparationTask).

% --- window ---
obj(window).
hasPhysicalQuality(window, rigid).
hasRole(window, furnitureRole).
affordsTask(window, leisureTask).

% --- silver ---
obj(silver).
hasPhysicalQuality(silver, rigid).
hasRole(silver, toolRole).

% --- remote control ---
obj(remote_control).
hasPhysicalQuality(remote_control, electronic).
hasPhysicalQuality(remote_control, lightweight).
hasRole(remote_control, toolRole).
affordsTask(remote_control, leisureTask).

% --- column ---
obj(column).
hasPhysicalQuality(column, heavy).
hasPhysicalQuality(column, rigid).
hasRole(column, storageContainerRole).
affordsTask(column, storageTask).

% --- hinged door ---
obj(hinged_door).
hasPhysicalQuality(hinged_door, heavy).
hasPhysicalQuality(hinged_door, rigid).
hasRole(hinged_door, furnitureRole).
affordsTask(hinged_door, storageTask).
affordsTask(hinged_door, maintenanceTask).

% --- spices ---
obj(spices).
hasPhysicalQuality(spices, granular).
hasRole(spices, consumableRole).
affordsTask(spices, foodPreparationTask).

% --- purse ---
obj(purse).
hasPhysicalQuality(purse, soft_Deformable).
hasPhysicalQuality(purse, lightweight).
hasRole(purse, storageContainerRole).
affordsTask(purse, storageTask).

% --- cake ---
obj(cake).
hasPhysicalQuality(cake, perishable).
hasPhysicalQuality(cake, granular).
hasRole(cake, consumableRole).
affordsTask(cake, eatingDrinkingTask).

% --- railing ---
obj(railing).
hasPhysicalQuality(railing, rigid).
hasRole(railing, furnitureRole).

% --- rubber stamp ---
obj(rubber_stamp).
hasPhysicalQuality(rubber_stamp, rigid).
hasRole(rubber_stamp, toolRole).

% --- bill ---
obj(bill).
hasPhysicalQuality(bill, lightweight).
hasRole(bill, documentRole).
affordsTask(bill, leisureTask).

% --- book end ---
obj(book_end).
hasPhysicalQuality(book_end, heavy).
hasPhysicalQuality(book_end, rigid).
hasRole(book_end, furnitureRole).
affordsTask(book_end, storageTask).

% --- weather vane ---
obj(weather_vane).
hasPhysicalQuality(weather_vane, rigid).
hasPhysicalQuality(weather_vane, lightweight).
hasRole(weather_vane, decorationRole).

% --- picnic basket ---
obj(picnic_basket).
hasPhysicalQuality(picnic_basket, lightweight).
hasRole(picnic_basket, storageContainerRole).
affordsTask(picnic_basket, eatingDrinkingTask).
affordsTask(picnic_basket, storageTask).

% --- card case ---
obj(card_case).
hasPhysicalQuality(card_case, lightweight).
hasPhysicalQuality(card_case, rigid).
hasRole(card_case, storageContainerRole).
affordsTask(card_case, storageTask).

% --- map ---
obj(map).
hasRole(map, storageContainerRole).

% --- bay window ---
obj(bay_window).
hasPhysicalQuality(bay_window, fragile).
hasRole(bay_window, furnitureRole).
affordsTask(bay_window, leisureTask).

% --- heat source ---
obj(heat_source).
hasPhysicalQuality(heat_source, heated).
hasRole(heat_source, cookwareRole).
affordsTask(heat_source, foodPreparationTask).

% --- basket ---
obj(basket).
hasPhysicalQuality(basket, lightweight).
hasPhysicalQuality(basket, rigid).
hasRole(basket, storageContainerRole).
affordsTask(basket, storageTask).

% --- picture frame ---
obj(picture_frame).
hasPhysicalQuality(picture_frame, rigid).
hasPhysicalQuality(picture_frame, lightweight).
hasRole(picture_frame, decorationRole).

% --- blowdryer ---
obj(blowdryer).
hasPhysicalQuality(blowdryer, electronic).
hasPhysicalQuality(blowdryer, heavy).
hasRole(blowdryer, applianceRole).
affordsTask(blowdryer, leisureTask).

% --- eggs ---
obj(eggs).
hasPhysicalQuality(eggs, fragile).
hasPhysicalQuality(eggs, perishable).
hasRole(eggs, consumableRole).
affordsTask(eggs, eatingDrinkingTask).

% --- shelter ---
obj(shelter).
hasRole(shelter, furnitureRole).
affordsTask(shelter, storageTask).

% --- material ---
obj(material).
hasPhysicalQuality(material, granular).
affordsTask(material, maintenanceTask).

% --- apples ---
obj(apples).
hasPhysicalQuality(apples, perishable).
hasPhysicalQuality(apples, fragile).
hasRole(apples, consumableRole).
affordsTask(apples, eatingDrinkingTask).

% --- dandruff shampoo ---
obj(dandruff_shampoo).
hasPhysicalQuality(dandruff_shampoo, liquid).
hasPhysicalQuality(dandruff_shampoo, washable).
hasRole(dandruff_shampoo, cleaningToolRole).
affordsTask(dandruff_shampoo, hygieneTask).

% --- plants ---
obj(plants).
hasPhysicalQuality(plants, perishable).
hasPhysicalQuality(plants, lightweight).
hasPhysicalQuality(plants, soft_Deformable).
hasRole(plants, consumableRole).
affordsTask(plants, eatingDrinkingTask).

% --- gutter ---
obj(gutter).
hasPhysicalQuality(gutter, rigid).
hasPhysicalQuality(gutter, heavy).
hasRole(gutter, toolRole).
affordsTask(gutter, maintenanceTask).

% --- rubber ---
obj(rubber).
hasPhysicalQuality(rubber, soft_Deformable).
hasRole(rubber, toolRole).
affordsTask(rubber, maintenanceTask).

% --- coin ---
obj(coin).
hasPhysicalQuality(coin, lightweight).
hasPhysicalQuality(coin, fragile).
hasRole(coin, consumableRole).
affordsTask(coin, eatingDrinkingTask).
affordsTask(coin, leisureTask).

% --- piece ---
obj(piece).
hasPhysicalQuality(piece, lightweight).
hasRole(piece, toolRole).
affordsTask(piece, maintenanceTask).

% --- rose ---
obj(rose).
hasPhysicalQuality(rose, perishable).
hasRole(rose, consumableRole).
affordsTask(rose, eatingDrinkingTask).

% --- pail ---
obj(pail).
hasPhysicalQuality(pail, liquid).
hasPhysicalQuality(pail, heavy).
hasRole(pail, storageContainerRole).
affordsTask(pail, storageTask).

% --- lamp ---
obj(lamp).
hasRole(lamp, lightingRole).
affordsTask(lamp, leisureTask).

% --- vacuum ---
obj(vacuum).
hasPhysicalQuality(vacuum, electronic).
hasPhysicalQuality(vacuum, heavy).
hasRole(vacuum, cleaningToolRole).
affordsTask(vacuum, cleaningTask).

% --- storage pan ---
obj(storage_pan).
hasPhysicalQuality(storage_pan, heavy).
hasPhysicalQuality(storage_pan, rigid).
hasRole(storage_pan, cookwareRole).
affordsTask(storage_pan, foodPreparationTask).

% --- pump ---
obj(pump).
hasPhysicalQuality(pump, heavy).
hasRole(pump, toolRole).
affordsTask(pump, maintenanceTask).

% --- footstool ---
obj(footstool).
hasPhysicalQuality(footstool, fragile).
hasPhysicalQuality(footstool, rigid).
hasRole(footstool, furnitureRole).
affordsTask(footstool, leisureTask).
affordsTask(footstool, storageTask).

% --- ribbon ---
obj(ribbon).
hasPhysicalQuality(ribbon, soft_Deformable).
hasPhysicalQuality(ribbon, lightweight).
hasRole(ribbon, clothingRole).
affordsTask(ribbon, dressingTask).

% --- light source ---
obj(light_source).
hasPhysicalQuality(light_source, heated).
hasRole(light_source, lightingRole).
affordsTask(light_source, leisureTask).
affordsTask(light_source, workStudyTask).

% --- wheat ---
obj(wheat).
hasPhysicalQuality(wheat, granular).
hasRole(wheat, consumableRole).
affordsTask(wheat, foodPreparationTask).

% --- tuna ---
obj(tuna).
hasPhysicalQuality(tuna, perishable).
hasRole(tuna, consumableRole).
affordsTask(tuna, eatingDrinkingTask).

% --- screwdriver ---
obj(screwdriver).
hasPhysicalQuality(screwdriver, heavy).
hasPhysicalQuality(screwdriver, rigid).
hasRole(screwdriver, toolRole).
affordsTask(screwdriver, maintenanceTask).

% --- sushi ---
obj(sushi).
hasPhysicalQuality(sushi, perishable).
hasRole(sushi, consumableRole).
affordsTask(sushi, eatingDrinkingTask).

% --- poster ---
obj(poster).
hasPhysicalQuality(poster, lightweight).
hasPhysicalQuality(poster, rigid).
hasRole(poster, decorationRole).
affordsTask(poster, leisureTask).

% --- mailbox ---
obj(mailbox).
hasPhysicalQuality(mailbox, heavy).
hasRole(mailbox, storageContainerRole).
affordsTask(mailbox, storageTask).

% --- bird ---
obj(bird).
hasPhysicalQuality(bird, lightweight).
hasPhysicalQuality(bird, fragile).
hasRole(bird, entertainmentRole).
affordsTask(bird, leisureTask).
affordsTask(bird, gardeningTask).

% --- bottle ---
obj(bottle).
hasPhysicalQuality(bottle, liquid).
hasPhysicalQuality(bottle, lightweight).
hasRole(bottle, storageContainerRole).
affordsTask(bottle, eatingDrinkingTask).

% --- lettuce ---
obj(lettuce).
hasPhysicalQuality(lettuce, perishable).
hasRole(lettuce, consumableRole).
affordsTask(lettuce, eatingDrinkingTask).

% --- phillips head screwdriver ---
obj(phillips_head_screwdriver).
hasPhysicalQuality(phillips_head_screwdriver, heavy).
hasPhysicalQuality(phillips_head_screwdriver, rigid).
hasRole(phillips_head_screwdriver, toolRole).
affordsTask(phillips_head_screwdriver, maintenanceTask).

% --- dining room table ---
obj(dining_room_table).
hasPhysicalQuality(dining_room_table, heavy).
hasPhysicalQuality(dining_room_table, rigid).
hasRole(dining_room_table, furnitureRole).
affordsTask(dining_room_table, eatingDrinkingTask).
affordsTask(dining_room_table, leisureTask).

% --- beer mug ---
obj(beer_mug).
hasPhysicalQuality(beer_mug, liquid).
hasPhysicalQuality(beer_mug, heavy).
hasRole(beer_mug, utensilRole).
affordsTask(beer_mug, eatingDrinkingTask).

% --- staples ---
obj(staples).
hasPhysicalQuality(staples, sharp).
hasRole(staples, toolRole).
affordsTask(staples, foodPreparationTask).

% --- cabbage ---
obj(cabbage).
hasPhysicalQuality(cabbage, perishable).
hasPhysicalQuality(cabbage, granular).
hasRole(cabbage, consumableRole).
affordsTask(cabbage, eatingDrinkingTask).

% --- curling iron ---
obj(curling_iron).
hasPhysicalQuality(curling_iron, heated).
hasPhysicalQuality(curling_iron, heavy).
hasRole(curling_iron, toolRole).
affordsTask(curling_iron, hygieneTask).

% --- refrigerator ---
obj(refrigerator).
hasPhysicalQuality(refrigerator, requiresCooling).
hasRole(refrigerator, applianceRole).
affordsTask(refrigerator, storageTask).

% --- jelly ---
obj(jelly).
hasPhysicalQuality(jelly, soft_Deformable).
hasPhysicalQuality(jelly, liquid).
hasRole(jelly, consumableRole).
affordsTask(jelly, eatingDrinkingTask).

% --- electric fan ---
obj(electric_fan).
hasPhysicalQuality(electric_fan, electronic).
hasPhysicalQuality(electric_fan, heavy).
hasRole(electric_fan, applianceRole).
affordsTask(electric_fan, leisureTask).

% --- pair of scissors ---
obj(pair_of_scissors).
hasPhysicalQuality(pair_of_scissors, sharp).
hasPhysicalQuality(pair_of_scissors, rigid).
hasRole(pair_of_scissors, toolRole).
affordsTask(pair_of_scissors, maintenanceTask).

% --- index card cabinet ---
obj(index_card_cabinet).
hasPhysicalQuality(index_card_cabinet, heavy).
hasPhysicalQuality(index_card_cabinet, rigid).
hasRole(index_card_cabinet, storageContainerRole).
affordsTask(index_card_cabinet, storageTask).

% --- printer ---
obj(printer).
hasPhysicalQuality(printer, electronic).
hasPhysicalQuality(printer, heavy).
hasRole(printer, applianceRole).
affordsTask(printer, workStudyTask).

% --- shades ---
obj(shades).
hasPhysicalQuality(shades, lightweight).
hasRole(shades, furnitureRole).
affordsTask(shades, leisureTask).

% --- toothbrush bristle ---
obj(toothbrush_bristle).
hasPhysicalQuality(toothbrush_bristle, soft_Deformable).
hasPhysicalQuality(toothbrush_bristle, lightweight).
affordsTask(toothbrush_bristle, hygieneTask).

% --- fireplace ---
obj(fireplace).
hasPhysicalQuality(fireplace, heated).
hasRole(fireplace, cookwareRole).
affordsTask(fireplace, foodPreparationTask).

% --- checkbook ---
obj(checkbook).
hasPhysicalQuality(checkbook, lightweight).
hasRole(checkbook, documentRole).
affordsTask(checkbook, workStudyTask).

% --- files ---
obj(files).
hasRole(files, storageContainerRole).
affordsTask(files, storageTask).

% --- shopping basket ---
obj(shopping_basket).
hasPhysicalQuality(shopping_basket, lightweight).
hasRole(shopping_basket, storageContainerRole).

% --- baking oven ---
obj(baking_oven).
hasPhysicalQuality(baking_oven, heated).
hasRole(baking_oven, cookwareRole).
affordsTask(baking_oven, foodPreparationTask).

% --- key ---
obj(key).
hasPhysicalQuality(key, sharp).
hasRole(key, toolRole).
affordsTask(key, maintenanceTask).

% --- sauce ---
obj(sauce).
hasPhysicalQuality(sauce, liquid).
hasRole(sauce, consumableRole).
affordsTask(sauce, foodPreparationTask).

% --- concrete ---
obj(concrete).
hasPhysicalQuality(concrete, rigid).
hasPhysicalQuality(concrete, heavy).
hasRole(concrete, toolRole).
affordsTask(concrete, maintenanceTask).

% --- radiator ---
obj(radiator).
hasPhysicalQuality(radiator, heated).
hasRole(radiator, applianceRole).
affordsTask(radiator, maintenanceTask).

% --- calendar pad ---
obj(calendar_pad).
hasPhysicalQuality(calendar_pad, lightweight).
hasRole(calendar_pad, storageContainerRole).
affordsTask(calendar_pad, leisureTask).

% --- scale ---
obj(scale).
hasPhysicalQuality(scale, rigid).
hasRole(scale, toolRole).

% --- soap dish ---
obj(soap_dish).
hasPhysicalQuality(soap_dish, lightweight).
hasPhysicalQuality(soap_dish, rigid).
hasRole(soap_dish, storageContainerRole).
affordsTask(soap_dish, hygieneTask).

% --- towel ---
obj(towel).
hasPhysicalQuality(towel, soft_Deformable).
hasPhysicalQuality(towel, washable).
hasRole(towel, cleaningToolRole).
affordsTask(towel, cleaningTask).

% --- gum ---
obj(gum).
hasPhysicalQuality(gum, lightweight).
hasRole(gum, consumableRole).
affordsTask(gum, eatingDrinkingTask).

% --- bookshelf ---
obj(bookshelf).
hasPhysicalQuality(bookshelf, heavy).
hasPhysicalQuality(bookshelf, rigid).
hasRole(bookshelf, storageContainerRole).
affordsTask(bookshelf, storageTask).

% --- meat ---
obj(meat).
hasPhysicalQuality(meat, perishable).
hasRole(meat, consumableRole).
affordsTask(meat, foodPreparationTask).
affordsTask(meat, eatingDrinkingTask).

% --- potatoes ---
obj(potatoes).
hasPhysicalQuality(potatoes, perishable).
hasRole(potatoes, consumableRole).
affordsTask(potatoes, foodPreparationTask).

% --- file cabinet ---
obj(file_cabinet).
hasRole(file_cabinet, storageContainerRole).
affordsTask(file_cabinet, storageTask).

% --- trash container ---
obj(trash_container).
hasPhysicalQuality(trash_container, heavy).
hasRole(trash_container, storageContainerRole).
affordsTask(trash_container, wasteDisposalTask).

% --- bat ---
obj(bat).
hasPhysicalQuality(bat, lightweight).
hasPhysicalQuality(bat, fragile).
hasRole(bat, toolRole).
affordsTask(bat, leisureTask).

% --- marker ---
obj(marker).
hasPhysicalQuality(marker, lightweight).
hasRole(marker, toolRole).

% --- pepper and salt ---
obj(pepper_and_salt).
hasPhysicalQuality(pepper_and_salt, granular).
hasRole(pepper_and_salt, consumableRole).
affordsTask(pepper_and_salt, foodPreparationTask).

% --- folding door ---
obj(folding_door).
hasPhysicalQuality(folding_door, lightweight).
hasPhysicalQuality(folding_door, fragile).
hasRole(folding_door, furnitureRole).
affordsTask(folding_door, storageTask).

% --- bulb ---
obj(bulb).
hasPhysicalQuality(bulb, lightweight).
hasPhysicalQuality(bulb, rigid).
hasRole(bulb, lightingRole).
affordsTask(bulb, leisureTask).

% --- film ---
obj(film).
hasPhysicalQuality(film, fragile).
hasRole(film, consumableRole).
affordsTask(film, leisureTask).

% --- iron ---
obj(iron).
hasPhysicalQuality(iron, heated).
hasPhysicalQuality(iron, heavy).
hasPhysicalQuality(iron, rigid).
hasRole(iron, toolRole).
affordsTask(iron, foodPreparationTask).

% --- milk ---
obj(milk).
hasPhysicalQuality(milk, perishable).
hasRole(milk, consumableRole).
affordsTask(milk, eatingDrinkingTask).

% --- rolodex ---
obj(rolodex).
hasPhysicalQuality(rolodex, lightweight).
hasPhysicalQuality(rolodex, rigid).
hasRole(rolodex, storageContainerRole).
affordsTask(rolodex, workStudyTask).

% --- cabinets ---
obj(cabinets).
hasPhysicalQuality(cabinets, heavy).
hasPhysicalQuality(cabinets, rigid).
hasRole(cabinets, storageContainerRole).
affordsTask(cabinets, storageTask).

% --- ottoman ---
obj(ottoman).
hasPhysicalQuality(ottoman, soft_Deformable).
hasPhysicalQuality(ottoman, heavy).
hasRole(ottoman, furnitureRole).
affordsTask(ottoman, leisureTask).

% --- display cabinet ---
obj(display_cabinet).
hasPhysicalQuality(display_cabinet, heavy).
hasPhysicalQuality(display_cabinet, rigid).
hasRole(display_cabinet, storageContainerRole).
hasRole(display_cabinet, furnitureRole).
affordsTask(display_cabinet, storageTask).
affordsTask(display_cabinet, leisureTask).

% --- pineapple ---
obj(pineapple).
hasPhysicalQuality(pineapple, fragile).
hasRole(pineapple, consumableRole).
affordsTask(pineapple, eatingDrinkingTask).

% --- paperweight ---
obj(paperweight).
hasPhysicalQuality(paperweight, heavy).
hasRole(paperweight, toolRole).

% --- bar stool ---
obj(bar_stool).
hasPhysicalQuality(bar_stool, fragile).
hasPhysicalQuality(bar_stool, rigid).
hasRole(bar_stool, furnitureRole).
affordsTask(bar_stool, leisureTask).

% --- glue ---
obj(glue).
hasPhysicalQuality(glue, liquid).
hasPhysicalQuality(glue, fragile).
hasRole(glue, toolRole).
affordsTask(glue, maintenanceTask).

% --- electric razor ---
obj(electric_razor).
hasPhysicalQuality(electric_razor, electronic).
hasPhysicalQuality(electric_razor, heavy).
hasPhysicalQuality(electric_razor, sharp).
hasRole(electric_razor, toolRole).
affordsTask(electric_razor, foodPreparationTask).

% --- fork ---
obj(fork).
hasPhysicalQuality(fork, sharp).
hasPhysicalQuality(fork, rigid).
hasRole(fork, utensilRole).
affordsTask(fork, foodPreparationTask).
affordsTask(fork, eatingDrinkingTask).

% --- teakettle ---
obj(teakettle).
hasPhysicalQuality(teakettle, heated).
hasRole(teakettle, cookwareRole).
affordsTask(teakettle, foodPreparationTask).

% --- acoustic guitar ---
obj(acoustic_guitar).
hasPhysicalQuality(acoustic_guitar, rigid).
hasPhysicalQuality(acoustic_guitar, electronic).
hasRole(acoustic_guitar, musicalInstrumentRole).
affordsTask(acoustic_guitar, leisureTask).
affordsTask(acoustic_guitar, workStudyTask).

% --- tub ---
obj(tub).
hasPhysicalQuality(tub, liquid).
hasPhysicalQuality(tub, heavy).
hasRole(tub, storageContainerRole).
affordsTask(tub, eatingDrinkingTask).
affordsTask(tub, hygieneTask).
affordsTask(tub, leisureTask).

% --- pill ---
obj(pill).
hasPhysicalQuality(pill, perishable).
hasPhysicalQuality(pill, toxic_Hazardous).
hasRole(pill, consumableRole).
affordsTask(pill, eatingDrinkingTask).

% --- refill ---
obj(refill).
hasRole(refill, consumableRole).
affordsTask(refill, eatingDrinkingTask).

% --- artichoke hearts ---
obj(artichoke_hearts).
hasPhysicalQuality(artichoke_hearts, perishable).
hasRole(artichoke_hearts, consumableRole).
affordsTask(artichoke_hearts, eatingDrinkingTask).

% --- bench ---
obj(bench).
hasPhysicalQuality(bench, rigid).
hasPhysicalQuality(bench, heavy).
hasRole(bench, furnitureRole).
affordsTask(bench, leisureTask).
affordsTask(bench, storageTask).

% --- blankets ---
obj(blankets).
hasPhysicalQuality(blankets, soft_Deformable).
hasPhysicalQuality(blankets, washable).
hasRole(blankets, beddingRole).
affordsTask(blankets, sleepingTask).

% --- barbecue ---
obj(barbecue).
hasPhysicalQuality(barbecue, heated).
hasRole(barbecue, cookwareRole).
affordsTask(barbecue, foodPreparationTask).

% --- telephone ---
obj(telephone).
hasPhysicalQuality(telephone, electronic).
hasPhysicalQuality(telephone, lightweight).
hasRole(telephone, toolRole).

% --- moistener ---
obj(moistener).
hasPhysicalQuality(moistener, liquid).
hasRole(moistener, cleaningToolRole).
affordsTask(moistener, hygieneTask).

% --- pillowcase ---
obj(pillowcase).
hasPhysicalQuality(pillowcase, soft_Deformable).
hasPhysicalQuality(pillowcase, washable).
hasRole(pillowcase, beddingRole).
affordsTask(pillowcase, sleepingTask).

% --- sofa ---
obj(sofa).
hasPhysicalQuality(sofa, soft_Deformable).
hasPhysicalQuality(sofa, heavy).
hasRole(sofa, furnitureRole).
affordsTask(sofa, leisureTask).
affordsTask(sofa, sleepingTask).

% --- photograph ---
obj(photograph).
hasRole(photograph, documentRole).
affordsTask(photograph, leisureTask).

% --- electricity ---
obj(electricity).
hasPhysicalQuality(electricity, electronic).
hasPhysicalQuality(electricity, toxic_Hazardous).
hasRole(electricity, applianceRole).
affordsTask(electricity, leisureTask).
affordsTask(electricity, workStudyTask).

% --- cold water ---
obj(cold_water).
hasPhysicalQuality(cold_water, liquid).
hasPhysicalQuality(cold_water, perishable).
hasRole(cold_water, consumableRole).
affordsTask(cold_water, eatingDrinkingTask).

% --- pens and pencils ---
obj(pens_and_pencils).
hasPhysicalQuality(pens_and_pencils, lightweight).
hasRole(pens_and_pencils, toolRole).
affordsTask(pens_and_pencils, workStudyTask).

% --- bicycles ---
obj(bicycles).
hasPhysicalQuality(bicycles, lightweight).
hasPhysicalQuality(bicycles, rigid).

% --- horn ---
obj(horn).
hasPhysicalQuality(horn, lightweight).
hasRole(horn, musicalInstrumentRole).
affordsTask(horn, leisureTask).

% --- beanbag chair ---
obj(beanbag_chair).
hasPhysicalQuality(beanbag_chair, soft_Deformable).
hasPhysicalQuality(beanbag_chair, lightweight).
hasRole(beanbag_chair, furnitureRole).
affordsTask(beanbag_chair, leisureTask).
affordsTask(beanbag_chair, sleepingTask).

% --- kitten ---
obj(kitten).
hasPhysicalQuality(kitten, fragile).
hasPhysicalQuality(kitten, soft_Deformable).
hasPhysicalQuality(kitten, lightweight).
hasRole(kitten, entertainmentRole).
affordsTask(kitten, leisureTask).

% --- flask ---
obj(flask).
hasPhysicalQuality(flask, liquid).
hasPhysicalQuality(flask, lightweight).
hasRole(flask, storageContainerRole).
affordsTask(flask, eatingDrinkingTask).
affordsTask(flask, storageTask).

% --- chain ---
obj(chain).
hasPhysicalQuality(chain, rigid).
hasPhysicalQuality(chain, heavy).
hasRole(chain, toolRole).
affordsTask(chain, maintenanceTask).

% --- grape ---
obj(grape).
hasPhysicalQuality(grape, perishable).
hasPhysicalQuality(grape, fragile).
hasRole(grape, consumableRole).
affordsTask(grape, eatingDrinkingTask).

% --- filing box ---
obj(filing_box).
hasPhysicalQuality(filing_box, heavy).
hasPhysicalQuality(filing_box, rigid).
hasRole(filing_box, storageContainerRole).
affordsTask(filing_box, storageTask).

% --- cereal ---
obj(cereal).
hasPhysicalQuality(cereal, granular).
hasRole(cereal, consumableRole).
affordsTask(cereal, eatingDrinkingTask).

% --- candlestick ---
obj(candlestick).
hasPhysicalQuality(candlestick, rigid).
hasPhysicalQuality(candlestick, heavy).
hasRole(candlestick, utensilRole).
affordsTask(candlestick, leisureTask).

% --- speaker ---
obj(speaker).
hasPhysicalQuality(speaker, electronic).
hasPhysicalQuality(speaker, heavy).
hasRole(speaker, applianceRole).
affordsTask(speaker, leisureTask).

% --- velvet ---
obj(velvet).
hasPhysicalQuality(velvet, soft_Deformable).
hasPhysicalQuality(velvet, washable).
hasRole(velvet, clothingRole).
affordsTask(velvet, dressingTask).

% --- keyboard ---
obj(keyboard).
hasPhysicalQuality(keyboard, electronic).
hasPhysicalQuality(keyboard, lightweight).
hasRole(keyboard, toolRole).
affordsTask(keyboard, workStudyTask).

% --- upright piano ---
obj(upright_piano).
hasPhysicalQuality(upright_piano, heavy).
hasRole(upright_piano, entertainmentRole).
affordsTask(upright_piano, leisureTask).

% --- sideboard ---
obj(sideboard).
hasPhysicalQuality(sideboard, heavy).
hasPhysicalQuality(sideboard, rigid).
hasRole(sideboard, furnitureRole).
affordsTask(sideboard, storageTask).

% --- round brush ---
obj(round_brush).
hasPhysicalQuality(round_brush, lightweight).
hasPhysicalQuality(round_brush, soft_Deformable).
hasRole(round_brush, cleaningToolRole).
affordsTask(round_brush, cleaningTask).

% --- wine ---
obj(wine).
hasPhysicalQuality(wine, perishable).
hasPhysicalQuality(wine, liquid).
hasRole(wine, consumableRole).
affordsTask(wine, eatingDrinkingTask).

% --- robot ---
obj(robot).
hasPhysicalQuality(robot, electronic).
hasPhysicalQuality(robot, heavy).
hasRole(robot, applianceRole).
affordsTask(robot, maintenanceTask).
affordsTask(robot, workStudyTask).

% --- coins ---
obj(coins).
hasPhysicalQuality(coins, lightweight).
hasPhysicalQuality(coins, fragile).
hasRole(coins, consumableRole).
affordsTask(coins, eatingDrinkingTask).

% --- envelope ---
obj(envelope).
hasPhysicalQuality(envelope, lightweight).
hasRole(envelope, storageContainerRole).
affordsTask(envelope, storageTask).

% --- pocket ---
obj(pocket).
hasPhysicalQuality(pocket, lightweight).
hasPhysicalQuality(pocket, soft_Deformable).
hasPhysicalQuality(pocket, washable).
hasRole(pocket, storageContainerRole).
affordsTask(pocket, storageTask).

% --- chess pawn ---
obj(chess_pawn).
hasPhysicalQuality(chess_pawn, lightweight).
hasRole(chess_pawn, entertainmentRole).
affordsTask(chess_pawn, leisureTask).

% --- vcr ---
obj(vcr).
hasPhysicalQuality(vcr, electronic).
hasPhysicalQuality(vcr, heavy).
hasRole(vcr, applianceRole).
affordsTask(vcr, leisureTask).

% --- outfit ---
obj(outfit).
hasRole(outfit, clothingRole).
affordsTask(outfit, dressingTask).

% --- hole punch ---
obj(hole_punch).
hasPhysicalQuality(hole_punch, heavy).
hasPhysicalQuality(hole_punch, rigid).
hasRole(hole_punch, toolRole).
affordsTask(hole_punch, maintenanceTask).

% --- linen closet ---
obj(linen_closet).
hasPhysicalQuality(linen_closet, heavy).
hasPhysicalQuality(linen_closet, rigid).
hasRole(linen_closet, storageContainerRole).
affordsTask(linen_closet, storageTask).

% --- typewriter ---
obj(typewriter).
hasPhysicalQuality(typewriter, heavy).
hasRole(typewriter, toolRole).

% --- dresser ---
obj(dresser).
hasPhysicalQuality(dresser, heavy).
hasPhysicalQuality(dresser, rigid).
hasRole(dresser, furnitureRole).
affordsTask(dresser, storageTask).

% --- mold ---
obj(mold).
hasPhysicalQuality(mold, fragile).
hasRole(mold, toolRole).
affordsTask(mold, maintenanceTask).

% --- pig ---
obj(pig).
hasPhysicalQuality(pig, fragile).
hasRole(pig, consumableRole).
affordsTask(pig, foodPreparationTask).

% --- disposable razor ---
obj(disposable_razor).
hasPhysicalQuality(disposable_razor, sharp).
hasPhysicalQuality(disposable_razor, fragile).
hasRole(disposable_razor, utensilRole).
affordsTask(disposable_razor, foodPreparationTask).

% --- lemon ---
obj(lemon).
hasPhysicalQuality(lemon, perishable).
hasPhysicalQuality(lemon, fragile).
hasRole(lemon, consumableRole).
affordsTask(lemon, eatingDrinkingTask).

% --- plate ---
obj(plate).
hasPhysicalQuality(plate, rigid).
hasPhysicalQuality(plate, lightweight).
hasRole(plate, utensilRole).
affordsTask(plate, eatingDrinkingTask).

% --- air conditioner ---
obj(air_conditioner).
hasPhysicalQuality(air_conditioner, requiresCooling).
hasRole(air_conditioner, applianceRole).
affordsTask(air_conditioner, maintenanceTask).

% --- can ---
obj(can).
hasPhysicalQuality(can, lightweight).
hasPhysicalQuality(can, rigid).
hasRole(can, storageContainerRole).
affordsTask(can, storageTask).

% --- ties ---
obj(ties).
hasPhysicalQuality(ties, lightweight).
hasPhysicalQuality(ties, soft_Deformable).
hasPhysicalQuality(ties, washable).
hasRole(ties, clothingRole).
affordsTask(ties, dressingTask).

% --- underwear ---
obj(underwear).
hasPhysicalQuality(underwear, soft_Deformable).
hasPhysicalQuality(underwear, lightweight).
hasRole(underwear, clothingRole).
affordsTask(underwear, dressingTask).

% --- slippers ---
obj(slippers).
hasPhysicalQuality(slippers, soft_Deformable).
hasPhysicalQuality(slippers, lightweight).
hasRole(slippers, clothingRole).
affordsTask(slippers, dressingTask).

% --- arch ---
obj(arch).
hasPhysicalQuality(arch, rigid).
hasPhysicalQuality(arch, heavy).
hasRole(arch, furnitureRole).
affordsTask(arch, storageTask).

% --- dental floss ---
obj(dental_floss).
hasPhysicalQuality(dental_floss, lightweight).
hasPhysicalQuality(dental_floss, fragile).
hasRole(dental_floss, cleaningToolRole).
affordsTask(dental_floss, hygieneTask).

% --- beam ---
obj(beam).
hasPhysicalQuality(beam, rigid).
hasRole(beam, toolRole).
affordsTask(beam, maintenanceTask).

% --- refrigerator freezer ---
obj(refrigerator_freezer).
hasPhysicalQuality(refrigerator_freezer, requiresCooling).
hasPhysicalQuality(refrigerator_freezer, electronic).
hasPhysicalQuality(refrigerator_freezer, heavy).
hasRole(refrigerator_freezer, applianceRole).
affordsTask(refrigerator_freezer, storageTask).
affordsTask(refrigerator_freezer, foodPreparationTask).

% --- card catalog ---
obj(card_catalog).
hasPhysicalQuality(card_catalog, lightweight).
hasRole(card_catalog, storageContainerRole).
affordsTask(card_catalog, storageTask).

% --- sticking plaster ---
obj(sticking_plaster).
hasPhysicalQuality(sticking_plaster, lightweight).
hasPhysicalQuality(sticking_plaster, fragile).
hasRole(sticking_plaster, safetyEquipmentRole).
affordsTask(sticking_plaster, hygieneTask).

% --- toothpaste ---
obj(toothpaste).
hasPhysicalQuality(toothpaste, liquid).
hasPhysicalQuality(toothpaste, toxic_Hazardous).
hasRole(toothpaste, cleaningToolRole).
affordsTask(toothpaste, hygieneTask).

% --- rook ---
obj(rook).
hasPhysicalQuality(rook, rigid).
hasRole(rook, toolRole).
affordsTask(rook, leisureTask).

% --- attache case ---
obj(attache_case).
hasPhysicalQuality(attache_case, lightweight).
hasPhysicalQuality(attache_case, soft_Deformable).
hasRole(attache_case, storageContainerRole).
affordsTask(attache_case, storageTask).

% --- carpet ---
obj(carpet).
hasPhysicalQuality(carpet, soft_Deformable).
hasPhysicalQuality(carpet, washable).
hasRole(carpet, furnitureRole).
affordsTask(carpet, leisureTask).

% --- shelf ---
obj(shelf).
hasPhysicalQuality(shelf, rigid).
hasPhysicalQuality(shelf, heavy).
hasRole(shelf, storageContainerRole).
affordsTask(shelf, storageTask).

% --- cards ---
obj(cards).
hasRole(cards, entertainmentRole).
affordsTask(cards, leisureTask).

% --- self adhesive label ---
obj(self_adhesive_label).
hasPhysicalQuality(self_adhesive_label, soft_Deformable).
hasPhysicalQuality(self_adhesive_label, lightweight).
hasRole(self_adhesive_label, utensilRole).
affordsTask(self_adhesive_label, maintenanceTask).

% --- washing machine ---
obj(washing_machine).
hasPhysicalQuality(washing_machine, electronic).
hasPhysicalQuality(washing_machine, heavy).
hasRole(washing_machine, applianceRole).
affordsTask(washing_machine, cleaningTask).

% --- tablespoon ---
obj(tablespoon).
hasPhysicalQuality(tablespoon, lightweight).
hasPhysicalQuality(tablespoon, rigid).
hasRole(tablespoon, utensilRole).
affordsTask(tablespoon, foodPreparationTask).
affordsTask(tablespoon, eatingDrinkingTask).

% --- highlighter ---
obj(highlighter).
hasPhysicalQuality(highlighter, lightweight).
hasPhysicalQuality(highlighter, sharp).
hasRole(highlighter, toolRole).
affordsTask(highlighter, leisureTask).
affordsTask(highlighter, workStudyTask).

% --- mustard ---
obj(mustard).
hasPhysicalQuality(mustard, liquid).
hasRole(mustard, consumableRole).
affordsTask(mustard, eatingDrinkingTask).

% --- flower ---
obj(flower).
hasRole(flower, consumableRole).
affordsTask(flower, eatingDrinkingTask).

% --- socks ---
obj(socks).
hasPhysicalQuality(socks, soft_Deformable).
hasPhysicalQuality(socks, lightweight).
hasRole(socks, clothingRole).
affordsTask(socks, dressingTask).

% --- candy ---
obj(candy).
hasPhysicalQuality(candy, perishable).
hasRole(candy, consumableRole).
affordsTask(candy, eatingDrinkingTask).

% --- rotten food ---
obj(rotten_food).
hasPhysicalQuality(rotten_food, perishable).
hasPhysicalQuality(rotten_food, toxic_Hazardous).
hasRole(rotten_food, consumableRole).
affordsTask(rotten_food, eatingDrinkingTask).

% --- cook ---
obj(cook).
hasPhysicalQuality(cook, rigid).
hasRole(cook, cookwareRole).
affordsTask(cook, foodPreparationTask).

% --- pickle ---
obj(pickle).
hasPhysicalQuality(pickle, perishable).
hasPhysicalQuality(pickle, fragile).
hasRole(pickle, consumableRole).
affordsTask(pickle, eatingDrinkingTask).

% --- detergent ---
obj(detergent).
hasPhysicalQuality(detergent, liquid).
hasPhysicalQuality(detergent, toxic_Hazardous).
hasRole(detergent, cleaningToolRole).
affordsTask(detergent, cleaningTask).

% --- desk drawer ---
obj(desk_drawer).
hasPhysicalQuality(desk_drawer, lightweight).
hasPhysicalQuality(desk_drawer, rigid).
hasRole(desk_drawer, storageContainerRole).
affordsTask(desk_drawer, storageTask).

% --- ice cubes ---
obj(ice_cubes).
hasPhysicalQuality(ice_cubes, requiresFreezing).
hasPhysicalQuality(ice_cubes, lightweight).
hasPhysicalQuality(ice_cubes, fragile).
hasRole(ice_cubes, consumableRole).
affordsTask(ice_cubes, eatingDrinkingTask).

% --- sugar ---
obj(sugar).
hasPhysicalQuality(sugar, granular).
hasRole(sugar, consumableRole).
affordsTask(sugar, foodPreparationTask).

% --- serving trolley ---
obj(serving_trolley).
hasPhysicalQuality(serving_trolley, heavy).
hasPhysicalQuality(serving_trolley, rigid).
hasRole(serving_trolley, storageContainerRole).
hasRole(serving_trolley, furnitureRole).
affordsTask(serving_trolley, foodPreparationTask).
affordsTask(serving_trolley, eatingDrinkingTask).
affordsTask(serving_trolley, storageTask).

% --- phone book ---
obj(phone_book).
hasPhysicalQuality(phone_book, heavy).
hasRole(phone_book, documentRole).
affordsTask(phone_book, workStudyTask).

% --- calculator ---
obj(calculator).
hasPhysicalQuality(calculator, electronic).
hasPhysicalQuality(calculator, lightweight).
hasRole(calculator, toolRole).
affordsTask(calculator, workStudyTask).

% --- cat ---
obj(cat).
hasPhysicalQuality(cat, fragile).
hasPhysicalQuality(cat, soft_Deformable).
hasPhysicalQuality(cat, lightweight).
hasRole(cat, consumableRole).
affordsTask(cat, leisureTask).

% --- towel rack ---
obj(towel_rack).
hasPhysicalQuality(towel_rack, rigid).
hasPhysicalQuality(towel_rack, heavy).
hasRole(towel_rack, storageContainerRole).
affordsTask(towel_rack, storageTask).

% --- soda pop ---
obj(soda_pop).
hasPhysicalQuality(soda_pop, liquid).
hasRole(soda_pop, consumableRole).
affordsTask(soda_pop, eatingDrinkingTask).

% --- wool ---
obj(wool).
hasPhysicalQuality(wool, soft_Deformable).
hasPhysicalQuality(wool, washable).
hasRole(wool, consumableRole).
affordsTask(wool, dressingTask).

% --- olives ---
obj(olives).
hasPhysicalQuality(olives, perishable).
hasRole(olives, consumableRole).
affordsTask(olives, eatingDrinkingTask).

% --- nuts ---
obj(nuts).
hasPhysicalQuality(nuts, granular).
hasRole(nuts, consumableRole).
affordsTask(nuts, eatingDrinkingTask).

% --- garment bag ---
obj(garment_bag).
hasPhysicalQuality(garment_bag, soft_Deformable).
hasPhysicalQuality(garment_bag, lightweight).
hasRole(garment_bag, storageContainerRole).
affordsTask(garment_bag, storageTask).

% --- shower switch ---
obj(shower_switch).
hasPhysicalQuality(shower_switch, electronic).
hasPhysicalQuality(shower_switch, lightweight).
hasRole(shower_switch, toolRole).
affordsTask(shower_switch, maintenanceTask).

% --- telephone directory ---
obj(telephone_directory).
hasRole(telephone_directory, documentRole).
affordsTask(telephone_directory, workStudyTask).

% --- alcohol ---
obj(alcohol).
hasPhysicalQuality(alcohol, flammable).
hasRole(alcohol, consumableRole).
affordsTask(alcohol, leisureTask).

% --- vinyl ---
obj(vinyl).
hasPhysicalQuality(vinyl, fragile).
hasRole(vinyl, consumableRole).
affordsTask(vinyl, leisureTask).

% --- safety pins ---
obj(safety_pins).
hasPhysicalQuality(safety_pins, sharp).
hasPhysicalQuality(safety_pins, lightweight).
hasRole(safety_pins, toolRole).
affordsTask(safety_pins, maintenanceTask).

% --- tomatoes ---
obj(tomatoes).
hasPhysicalQuality(tomatoes, perishable).
hasRole(tomatoes, consumableRole).
affordsTask(tomatoes, eatingDrinkingTask).

% --- salt and pepper ---
obj(salt_and_pepper).
hasPhysicalQuality(salt_and_pepper, granular).
hasRole(salt_and_pepper, utensilRole).
affordsTask(salt_and_pepper, foodPreparationTask).

% --- microwave oven ---
obj(microwave_oven).
hasPhysicalQuality(microwave_oven, electronic).
hasPhysicalQuality(microwave_oven, heavy).
hasRole(microwave_oven, applianceRole).
affordsTask(microwave_oven, foodPreparationTask).

% --- battery charger ---
obj(battery_charger).
hasPhysicalQuality(battery_charger, electronic).
hasPhysicalQuality(battery_charger, heavy).
hasRole(battery_charger, toolRole).
affordsTask(battery_charger, maintenanceTask).

% --- cereal bowl ---
obj(cereal_bowl).
hasPhysicalQuality(cereal_bowl, lightweight).
hasPhysicalQuality(cereal_bowl, rigid).
hasRole(cereal_bowl, utensilRole).
affordsTask(cereal_bowl, eatingDrinkingTask).

% --- computer ---
obj(computer).
hasPhysicalQuality(computer, electronic).
hasPhysicalQuality(computer, heavy).
hasRole(computer, applianceRole).
affordsTask(computer, workStudyTask).
affordsTask(computer, leisureTask).

% --- cold faucet ---
obj(cold_faucet).
hasPhysicalQuality(cold_faucet, liquid).
hasPhysicalQuality(cold_faucet, heavy).
hasRole(cold_faucet, toolRole).
affordsTask(cold_faucet, eatingDrinkingTask).

% --- bag ---
obj(bag).
hasPhysicalQuality(bag, lightweight).
hasPhysicalQuality(bag, soft_Deformable).
hasPhysicalQuality(bag, washable).
hasRole(bag, storageContainerRole).
affordsTask(bag, storageTask).

% --- glasses ---
obj(glasses).
hasPhysicalQuality(glasses, lightweight).
hasRole(glasses, utensilRole).
affordsTask(glasses, eatingDrinkingTask).

% --- salad bowl ---
obj(salad_bowl).
hasPhysicalQuality(salad_bowl, lightweight).
hasPhysicalQuality(salad_bowl, rigid).
hasRole(salad_bowl, utensilRole).
affordsTask(salad_bowl, foodPreparationTask).
affordsTask(salad_bowl, eatingDrinkingTask).

% --- tape dispenser ---
obj(tape_dispenser).
hasPhysicalQuality(tape_dispenser, lightweight).
hasRole(tape_dispenser, toolRole).
affordsTask(tape_dispenser, maintenanceTask).

% --- paper clip ---
obj(paper_clip).
hasPhysicalQuality(paper_clip, lightweight).
hasPhysicalQuality(paper_clip, rigid).
hasRole(paper_clip, toolRole).
affordsTask(paper_clip, maintenanceTask).

% --- shopping list ---
obj(shopping_list).
hasRole(shopping_list, storageContainerRole).

% --- toilet paper ---
obj(toilet_paper).
hasPhysicalQuality(toilet_paper, soft_Deformable).
hasPhysicalQuality(toilet_paper, washable).
hasRole(toilet_paper, consumableRole).
affordsTask(toilet_paper, hygieneTask).

% --- window tab ---
obj(window_tab).
hasPhysicalQuality(window_tab, lightweight).
hasRole(window_tab, toolRole).
affordsTask(window_tab, maintenanceTask).

% --- pair of shoes ---
obj(pair_of_shoes).
hasPhysicalQuality(pair_of_shoes, lightweight).
hasPhysicalQuality(pair_of_shoes, soft_Deformable).
hasPhysicalQuality(pair_of_shoes, fragile).
hasRole(pair_of_shoes, clothingRole).
affordsTask(pair_of_shoes, dressingTask).

% --- blanket ---
obj(blanket).
hasPhysicalQuality(blanket, soft_Deformable).
hasPhysicalQuality(blanket, washable).
hasRole(blanket, beddingRole).
affordsTask(blanket, sleepingTask).

% --- bell ---
obj(bell).
hasPhysicalQuality(bell, rigid).
hasPhysicalQuality(bell, lightweight).
hasRole(bell, toolRole).
affordsTask(bell, maintenanceTask).

% --- bucket ---
obj(bucket).
hasPhysicalQuality(bucket, lightweight).
hasPhysicalQuality(bucket, rigid).
hasRole(bucket, storageContainerRole).
affordsTask(bucket, storageTask).

% --- studio pedestal ---
obj(studio_pedestal).
hasPhysicalQuality(studio_pedestal, heavy).
hasPhysicalQuality(studio_pedestal, rigid).
hasRole(studio_pedestal, furnitureRole).
affordsTask(studio_pedestal, storageTask).

% --- garage ---
obj(garage).
hasPhysicalQuality(garage, heavy).
hasRole(garage, storageContainerRole).
affordsTask(garage, storageTask).

% --- belt ---
obj(belt).
hasPhysicalQuality(belt, lightweight).
hasPhysicalQuality(belt, soft_Deformable).
hasRole(belt, clothingRole).
affordsTask(belt, dressingTask).

% --- wax ---
obj(wax).
hasPhysicalQuality(wax, liquid).
hasPhysicalQuality(wax, fragile).
hasRole(wax, consumableRole).
affordsTask(wax, maintenanceTask).

% --- fertilizer ---
obj(fertilizer).
hasPhysicalQuality(fertilizer, liquid).
hasPhysicalQuality(fertilizer, fragile).
hasRole(fertilizer, toolRole).
affordsTask(fertilizer, gardeningTask).

% --- oven mitts ---
obj(oven_mitts).
hasPhysicalQuality(oven_mitts, soft_Deformable).
hasPhysicalQuality(oven_mitts, lightweight).
hasRole(oven_mitts, utensilRole).
affordsTask(oven_mitts, foodPreparationTask).

% --- wall ---
obj(wall).
hasPhysicalQuality(wall, rigid).
hasRole(wall, furnitureRole).

% --- old dress ---
obj(old_dress).
hasPhysicalQuality(old_dress, soft_Deformable).
hasPhysicalQuality(old_dress, lightweight).
hasRole(old_dress, clothingRole).
affordsTask(old_dress, dressingTask).

% --- aspirin ---
obj(aspirin).
hasPhysicalQuality(aspirin, toxic_Hazardous).
hasRole(aspirin, consumableRole).
affordsTask(aspirin, eatingDrinkingTask).

% --- ice cream ---
obj(ice_cream).
hasPhysicalQuality(ice_cream, requiresFreezing).
hasPhysicalQuality(ice_cream, perishable).
hasPhysicalQuality(ice_cream, liquid).
hasRole(ice_cream, consumableRole).
affordsTask(ice_cream, eatingDrinkingTask).

% --- whisk ---
obj(whisk).
hasPhysicalQuality(whisk, lightweight).
hasPhysicalQuality(whisk, rigid).
hasPhysicalQuality(whisk, sharp).
hasRole(whisk, utensilRole).
affordsTask(whisk, foodPreparationTask).

% --- boxes ---
obj(boxes).
hasPhysicalQuality(boxes, rigid).
hasPhysicalQuality(boxes, heavy).
hasRole(boxes, storageContainerRole).
affordsTask(boxes, storageTask).

% --- pears ---
obj(pears).
hasPhysicalQuality(pears, perishable).
hasRole(pears, consumableRole).
affordsTask(pears, eatingDrinkingTask).

% --- faucet overflow ---
obj(faucet_overflow).
hasPhysicalQuality(faucet_overflow, liquid).
hasRole(faucet_overflow, toolRole).
affordsTask(faucet_overflow, maintenanceTask).

% --- toolbox ---
obj(toolbox).
hasPhysicalQuality(toolbox, heavy).
hasPhysicalQuality(toolbox, rigid).
hasRole(toolbox, toolRole).
affordsTask(toolbox, maintenanceTask).

% --- suit ---
obj(suit).
hasPhysicalQuality(suit, rigid).
hasPhysicalQuality(suit, fragile).
hasRole(suit, clothingRole).
affordsTask(suit, dressingTask).

% --- penny ---
obj(penny).
hasPhysicalQuality(penny, lightweight).
hasRole(penny, consumableRole).
affordsTask(penny, eatingDrinkingTask).

% --- hallway ---
obj(hallway).
hasPhysicalQuality(hallway, rigid).
hasRole(hallway, furnitureRole).
affordsTask(hallway, leisureTask).

% --- garden hose ---
obj(garden_hose).
hasPhysicalQuality(garden_hose, liquid).
hasPhysicalQuality(garden_hose, heavy).
hasRole(garden_hose, toolRole).
affordsTask(garden_hose, hygieneTask).
affordsTask(garden_hose, gardeningTask).

% --- folding chair ---
obj(folding_chair).
hasPhysicalQuality(folding_chair, lightweight).
hasPhysicalQuality(folding_chair, rigid).
hasRole(folding_chair, furnitureRole).
affordsTask(folding_chair, storageTask).
affordsTask(folding_chair, leisureTask).

% --- window curtain ---
obj(window_curtain).
hasPhysicalQuality(window_curtain, soft_Deformable).
hasPhysicalQuality(window_curtain, lightweight).
hasRole(window_curtain, decorationRole).
affordsTask(window_curtain, leisureTask).

% --- letters ---
obj(letters).
hasPhysicalQuality(letters, lightweight).
hasRole(letters, documentRole).
affordsTask(letters, workStudyTask).

% --- tablecloth ---
obj(tablecloth).
hasPhysicalQuality(tablecloth, soft_Deformable).
hasPhysicalQuality(tablecloth, washable).
hasRole(tablecloth, decorationRole).
affordsTask(tablecloth, leisureTask).

% --- sweat ---
obj(sweat).
hasPhysicalQuality(sweat, liquid).
affordsTask(sweat, hygieneTask).

% --- cold tap ---
obj(cold_tap).
hasPhysicalQuality(cold_tap, liquid).
hasPhysicalQuality(cold_tap, heavy).
hasRole(cold_tap, toolRole).
affordsTask(cold_tap, hygieneTask).
affordsTask(cold_tap, eatingDrinkingTask).

% --- textile ---
obj(textile).
hasPhysicalQuality(textile, soft_Deformable).
hasPhysicalQuality(textile, lightweight).
hasRole(textile, clothingRole).
affordsTask(textile, dressingTask).

% --- portable shower head ---
obj(portable_shower_head).
hasPhysicalQuality(portable_shower_head, lightweight).
hasPhysicalQuality(portable_shower_head, liquid).
hasRole(portable_shower_head, cleaningToolRole).
affordsTask(portable_shower_head, hygieneTask).

% --- garden ---
obj(garden).
hasPhysicalQuality(garden, fragile).
hasPhysicalQuality(garden, rigid).
hasRole(garden, furnitureRole).
affordsTask(garden, gardeningTask).

% --- vanity case ---
obj(vanity_case).
hasPhysicalQuality(vanity_case, lightweight).
hasPhysicalQuality(vanity_case, rigid).
hasRole(vanity_case, storageContainerRole).
affordsTask(vanity_case, storageTask).

% --- cardboard box ---
obj(cardboard_box).
hasPhysicalQuality(cardboard_box, lightweight).
hasPhysicalQuality(cardboard_box, rigid).
hasRole(cardboard_box, storageContainerRole).
affordsTask(cardboard_box, storageTask).

% --- sofa bed ---
obj(sofa_bed).
hasPhysicalQuality(sofa_bed, soft_Deformable).
hasPhysicalQuality(sofa_bed, heavy).
hasRole(sofa_bed, furnitureRole).
affordsTask(sofa_bed, sleepingTask).

% --- whisky ---
obj(whisky).
hasPhysicalQuality(whisky, liquid).
hasPhysicalQuality(whisky, perishable).
hasRole(whisky, consumableRole).
affordsTask(whisky, eatingDrinkingTask).

% --- album ---
obj(album).
hasPhysicalQuality(album, lightweight).
hasRole(album, storageContainerRole).
affordsTask(album, leisureTask).

% --- roof ---
obj(roof).
hasPhysicalQuality(roof, rigid).
hasRole(roof, furnitureRole).
affordsTask(roof, leisureTask).

% --- haircloth ---
obj(haircloth).
hasPhysicalQuality(haircloth, soft_Deformable).
hasPhysicalQuality(haircloth, washable).
hasRole(haircloth, clothingRole).
affordsTask(haircloth, dressingTask).

% --- cd rom ---
obj(cd_rom).
hasPhysicalQuality(cd_rom, electronic).
hasPhysicalQuality(cd_rom, lightweight).
hasRole(cd_rom, storageContainerRole).
affordsTask(cd_rom, storageTask).

% --- wrench ---
obj(wrench).
hasPhysicalQuality(wrench, heavy).
hasPhysicalQuality(wrench, rigid).
hasRole(wrench, toolRole).
affordsTask(wrench, maintenanceTask).

% --- ring ---
obj(ring).
hasPhysicalQuality(ring, lightweight).
hasPhysicalQuality(ring, rigid).
hasRole(ring, utensilRole).
affordsTask(ring, eatingDrinkingTask).

% --- calendar ---
obj(calendar).
hasRole(calendar, documentRole).
affordsTask(calendar, workStudyTask).

% --- cupboard ---
obj(cupboard).
hasPhysicalQuality(cupboard, heavy).
hasRole(cupboard, storageContainerRole).
affordsTask(cupboard, storageTask).

% --- music stand ---
obj(music_stand).
hasPhysicalQuality(music_stand, rigid).
hasPhysicalQuality(music_stand, lightweight).
hasRole(music_stand, furnitureRole).
affordsTask(music_stand, leisureTask).

% --- money ---
obj(money).
hasPhysicalQuality(money, lightweight).
hasRole(money, consumableRole).
affordsTask(money, eatingDrinkingTask).

% --- wooden floor ---
obj(wooden_floor).
hasPhysicalQuality(wooden_floor, rigid).
hasRole(wooden_floor, furnitureRole).
affordsTask(wooden_floor, leisureTask).

% --- sink ---
obj(sink).
hasPhysicalQuality(sink, heavy).
hasRole(sink, utensilRole).
affordsTask(sink, eatingDrinkingTask).
affordsTask(sink, hygieneTask).
affordsTask(sink, cleaningTask).

% --- storage ---
obj(storage).
hasPhysicalQuality(storage, heavy).
hasRole(storage, storageContainerRole).
affordsTask(storage, storageTask).

% --- mug ---
obj(mug).
hasPhysicalQuality(mug, liquid).
hasPhysicalQuality(mug, lightweight).
hasRole(mug, utensilRole).
affordsTask(mug, eatingDrinkingTask).

% --- screws ---
obj(screws).
hasPhysicalQuality(screws, sharp).
hasPhysicalQuality(screws, rigid).
hasRole(screws, toolRole).
affordsTask(screws, maintenanceTask).

% --- shower door ---
obj(shower_door).
hasPhysicalQuality(shower_door, fragile).
hasPhysicalQuality(shower_door, rigid).
hasRole(shower_door, furnitureRole).
affordsTask(shower_door, leisureTask).

% --- tuning fork ---
obj(tuning_fork).
hasPhysicalQuality(tuning_fork, rigid).
hasPhysicalQuality(tuning_fork, sharp).
hasRole(tuning_fork, toolRole).
affordsTask(tuning_fork, foodPreparationTask).

% --- saltshaker ---
obj(saltshaker).
hasPhysicalQuality(saltshaker, granular).
hasRole(saltshaker, utensilRole).
affordsTask(saltshaker, foodPreparationTask).

% --- yard ---
obj(yard).
hasPhysicalQuality(yard, fragile).
hasPhysicalQuality(yard, rigid).
hasRole(yard, furnitureRole).
affordsTask(yard, leisureTask).
affordsTask(yard, maintenanceTask).

% --- one person chair ---
obj(one_person_chair).
hasPhysicalQuality(one_person_chair, rigid).
hasPhysicalQuality(one_person_chair, heavy).
hasRole(one_person_chair, furnitureRole).
affordsTask(one_person_chair, leisureTask).
affordsTask(one_person_chair, workStudyTask).

% --- row ---
obj(row).
hasPhysicalQuality(row, lightweight).
hasRole(row, storageContainerRole).
affordsTask(row, storageTask).

% --- jewelry ---
obj(jewelry).
hasPhysicalQuality(jewelry, fragile).
hasRole(jewelry, decorationRole).
affordsTask(jewelry, leisureTask).

% --- dining area ---
obj(dining_area).
hasRole(dining_area, furnitureRole).
affordsTask(dining_area, eatingDrinkingTask).
affordsTask(dining_area, leisureTask).

% --- night table ---
obj(night_table).
hasRole(night_table, storageContainerRole).
affordsTask(night_table, storageTask).

% --- pebble ---
obj(pebble).
hasPhysicalQuality(pebble, granular).
hasPhysicalQuality(pebble, lightweight).
hasPhysicalQuality(pebble, fragile).
hasRole(pebble, toolRole).
affordsTask(pebble, maintenanceTask).

% --- closet ---
obj(closet).
hasPhysicalQuality(closet, heavy).
hasRole(closet, storageContainerRole).
affordsTask(closet, storageTask).

% --- dictionaries ---
obj(dictionaries).
hasPhysicalQuality(dictionaries, lightweight).
hasPhysicalQuality(dictionaries, soft_Deformable).
hasRole(dictionaries, toolRole).
affordsTask(dictionaries, workStudyTask).

% --- acrylic ---
obj(acrylic).
hasPhysicalQuality(acrylic, rigid).
hasPhysicalQuality(acrylic, lightweight).
hasRole(acrylic, toolRole).
affordsTask(acrylic, maintenanceTask).

% --- clothing shelf ---
obj(clothing_shelf).
hasPhysicalQuality(clothing_shelf, heavy).
hasPhysicalQuality(clothing_shelf, rigid).
hasRole(clothing_shelf, storageContainerRole).
affordsTask(clothing_shelf, storageTask).

% --- wardrobe ---
obj(wardrobe).
hasPhysicalQuality(wardrobe, heavy).
hasPhysicalQuality(wardrobe, rigid).
hasRole(wardrobe, furnitureRole).
affordsTask(wardrobe, storageTask).

% --- gel toothpaste ---
obj(gel_toothpaste).
hasPhysicalQuality(gel_toothpaste, liquid).
hasPhysicalQuality(gel_toothpaste, toxic_Hazardous).
hasRole(gel_toothpaste, cleaningToolRole).
affordsTask(gel_toothpaste, hygieneTask).

% --- glass ---
obj(glass).
hasPhysicalQuality(glass, fragile).
hasPhysicalQuality(glass, rigid).
hasRole(glass, utensilRole).
affordsTask(glass, eatingDrinkingTask).

% --- clothes ---
obj(clothes).
hasPhysicalQuality(clothes, soft_Deformable).
hasPhysicalQuality(clothes, washable).
hasRole(clothes, clothingRole).
affordsTask(clothes, dressingTask).

% --- pen ---
obj(pen).
hasPhysicalQuality(pen, lightweight).
hasPhysicalQuality(pen, rigid).
hasRole(pen, toolRole).

% --- safe ---
obj(safe).
hasPhysicalQuality(safe, heavy).
hasPhysicalQuality(safe, rigid).
hasRole(safe, safetyEquipmentRole).
affordsTask(safe, maintenanceTask).

% --- phillips screwdriver ---
obj(phillips_screwdriver).
hasPhysicalQuality(phillips_screwdriver, rigid).
hasPhysicalQuality(phillips_screwdriver, heavy).
hasRole(phillips_screwdriver, toolRole).
affordsTask(phillips_screwdriver, maintenanceTask).

% --- scotch tape ---
obj(scotch_tape).
hasPhysicalQuality(scotch_tape, lightweight).
hasPhysicalQuality(scotch_tape, fragile).
hasRole(scotch_tape, toolRole).
affordsTask(scotch_tape, maintenanceTask).

% --- kitchen utensil ---
obj(kitchen_utensil).
hasPhysicalQuality(kitchen_utensil, sharp).
hasPhysicalQuality(kitchen_utensil, rigid).
hasRole(kitchen_utensil, utensilRole).
affordsTask(kitchen_utensil, foodPreparationTask).

% --- old books ---
obj(old_books).
hasPhysicalQuality(old_books, fragile).
hasPhysicalQuality(old_books, lightweight).
hasRole(old_books, documentRole).
affordsTask(old_books, leisureTask).

% --- instrument triangle ---
obj(instrument_triangle).
hasPhysicalQuality(instrument_triangle, lightweight).
hasPhysicalQuality(instrument_triangle, rigid).
hasRole(instrument_triangle, musicalInstrumentRole).
affordsTask(instrument_triangle, leisureTask).
affordsTask(instrument_triangle, workStudyTask).

% --- ledger ---
obj(ledger).
hasPhysicalQuality(ledger, lightweight).
hasRole(ledger, documentRole).
affordsTask(ledger, workStudyTask).

% --- coffee cups ---
obj(coffee_cups).
hasPhysicalQuality(coffee_cups, lightweight).
hasPhysicalQuality(coffee_cups, fragile).
hasRole(coffee_cups, utensilRole).
affordsTask(coffee_cups, eatingDrinkingTask).

% --- toothpick ---
obj(toothpick).
hasPhysicalQuality(toothpick, sharp).
hasPhysicalQuality(toothpick, rigid).
hasRole(toothpick, utensilRole).
affordsTask(toothpick, foodPreparationTask).
affordsTask(toothpick, eatingDrinkingTask).

% --- route ---
obj(route).
hasRole(route, toolRole).
affordsTask(route, leisureTask).

% --- wood ---
obj(wood).
hasPhysicalQuality(wood, rigid).
hasPhysicalQuality(wood, granular).
hasRole(wood, toolRole).
affordsTask(wood, maintenanceTask).

% --- ice ---
obj(ice).
hasPhysicalQuality(ice, requiresFreezing).
hasRole(ice, consumableRole).
affordsTask(ice, eatingDrinkingTask).

% --- rope ---
obj(rope).
hasPhysicalQuality(rope, soft_Deformable).
hasPhysicalQuality(rope, lightweight).
hasRole(rope, toolRole).
affordsTask(rope, maintenanceTask).
affordsTask(rope, leisureTask).

% --- feathers ---
obj(feathers).
hasPhysicalQuality(feathers, lightweight).
hasPhysicalQuality(feathers, soft_Deformable).
hasRole(feathers, beddingRole).
affordsTask(feathers, leisureTask).

% --- skirt ---
obj(skirt).
hasPhysicalQuality(skirt, soft_Deformable).
hasPhysicalQuality(skirt, lightweight).
hasRole(skirt, clothingRole).
affordsTask(skirt, dressingTask).

% --- terrace railing ---
obj(terrace_railing).
hasPhysicalQuality(terrace_railing, rigid).
hasPhysicalQuality(terrace_railing, heavy).
hasRole(terrace_railing, furnitureRole).
affordsTask(terrace_railing, leisureTask).

% --- vegetables ---
obj(vegetables).
hasPhysicalQuality(vegetables, perishable).
hasRole(vegetables, consumableRole).
affordsTask(vegetables, eatingDrinkingTask).

% --- pair of pants ---
obj(pair_of_pants).
hasPhysicalQuality(pair_of_pants, soft_Deformable).
hasPhysicalQuality(pair_of_pants, lightweight).
hasRole(pair_of_pants, clothingRole).
affordsTask(pair_of_pants, dressingTask).

% --- chess bishop ---
obj(chess_bishop).
hasPhysicalQuality(chess_bishop, rigid).
hasRole(chess_bishop, toolRole).
affordsTask(chess_bishop, leisureTask).

% --- paper sign ---
obj(paper_sign).
hasPhysicalQuality(paper_sign, lightweight).
hasPhysicalQuality(paper_sign, fragile).
hasRole(paper_sign, decorationRole).
affordsTask(paper_sign, leisureTask).
affordsTask(paper_sign, workStudyTask).

% --- artichokes ---
obj(artichokes).
hasPhysicalQuality(artichokes, perishable).
hasRole(artichokes, consumableRole).
affordsTask(artichokes, eatingDrinkingTask).

% --- bill file ---
obj(bill_file).
hasPhysicalQuality(bill_file, lightweight).
hasRole(bill_file, storageContainerRole).
affordsTask(bill_file, storageTask).

% --- paper ---
obj(paper).
hasPhysicalQuality(paper, granular).
hasPhysicalQuality(paper, fragile).
hasPhysicalQuality(paper, flammable).
hasRole(paper, consumableRole).
affordsTask(paper, foodPreparationTask).
affordsTask(paper, eatingDrinkingTask).
affordsTask(paper, leisureTask).
affordsTask(paper, workStudyTask).

% --- dog ---
obj(dog).
hasPhysicalQuality(dog, fragile).
hasPhysicalQuality(dog, rigid).
hasRole(dog, consumableRole).
affordsTask(dog, eatingDrinkingTask).
affordsTask(dog, leisureTask).

% --- pizza ---
obj(pizza).
hasPhysicalQuality(pizza, perishable).
hasPhysicalQuality(pizza, heated).
hasRole(pizza, consumableRole).
affordsTask(pizza, eatingDrinkingTask).

% --- baggage trunk ---
obj(baggage_trunk).
hasPhysicalQuality(baggage_trunk, heavy).
hasPhysicalQuality(baggage_trunk, rigid).
hasRole(baggage_trunk, storageContainerRole).
affordsTask(baggage_trunk, storageTask).

% --- cinnamon ---
obj(cinnamon).
hasPhysicalQuality(cinnamon, granular).
hasRole(cinnamon, consumableRole).
affordsTask(cinnamon, foodPreparationTask).

% --- level ---
obj(level).
hasPhysicalQuality(level, rigid).
hasRole(level, toolRole).
affordsTask(level, maintenanceTask).

% --- clothes dryer ---
obj(clothes_dryer).
hasPhysicalQuality(clothes_dryer, electronic).
hasPhysicalQuality(clothes_dryer, heavy).
hasRole(clothes_dryer, applianceRole).
affordsTask(clothes_dryer, maintenanceTask).

% --- monkey ---
obj(monkey).
hasPhysicalQuality(monkey, fragile).
hasPhysicalQuality(monkey, lightweight).
hasRole(monkey, entertainmentRole).
affordsTask(monkey, leisureTask).

% --- nails ---
obj(nails).
hasPhysicalQuality(nails, sharp).
hasPhysicalQuality(nails, rigid).
hasRole(nails, toolRole).
affordsTask(nails, maintenanceTask).

% --- clipboard ---
obj(clipboard).
hasPhysicalQuality(clipboard, lightweight).
hasPhysicalQuality(clipboard, rigid).
hasRole(clipboard, toolRole).
affordsTask(clipboard, workStudyTask).

% --- ratchet screwdriver ---
obj(ratchet_screwdriver).
hasPhysicalQuality(ratchet_screwdriver, lightweight).
hasPhysicalQuality(ratchet_screwdriver, rigid).
hasRole(ratchet_screwdriver, toolRole).
affordsTask(ratchet_screwdriver, maintenanceTask).

% --- doormat ---
obj(doormat).
hasPhysicalQuality(doormat, soft_Deformable).
hasPhysicalQuality(doormat, lightweight).
hasRole(doormat, furnitureRole).
affordsTask(doormat, cleaningTask).

% --- wine cellar ---
obj(wine_cellar).
hasPhysicalQuality(wine_cellar, requiresCooling).
hasRole(wine_cellar, storageContainerRole).
affordsTask(wine_cellar, storageTask).

% --- hair gel ---
obj(hair_gel).
hasPhysicalQuality(hair_gel, liquid).
hasPhysicalQuality(hair_gel, fragile).
hasRole(hair_gel, toolRole).
affordsTask(hair_gel, leisureTask).

% --- orange juice ---
obj(orange_juice).
hasPhysicalQuality(orange_juice, perishable).
hasRole(orange_juice, consumableRole).
affordsTask(orange_juice, eatingDrinkingTask).

% --- teaspoon ---
obj(teaspoon).
hasPhysicalQuality(teaspoon, lightweight).
hasPhysicalQuality(teaspoon, rigid).
hasRole(teaspoon, utensilRole).
affordsTask(teaspoon, foodPreparationTask).

% --- denim ---
obj(denim).
hasPhysicalQuality(denim, soft_Deformable).
hasPhysicalQuality(denim, washable).
hasRole(denim, clothingRole).
affordsTask(denim, dressingTask).

% --- chess rook ---
obj(chess_rook).
hasPhysicalQuality(chess_rook, rigid).
hasRole(chess_rook, toolRole).
affordsTask(chess_rook, leisureTask).

% --- bed sheet ---
obj(bed_sheet).
hasPhysicalQuality(bed_sheet, soft_Deformable).
hasPhysicalQuality(bed_sheet, washable).
hasRole(bed_sheet, beddingRole).
affordsTask(bed_sheet, sleepingTask).

% --- roots ---
obj(roots).
hasPhysicalQuality(roots, perishable).
hasRole(roots, consumableRole).
affordsTask(roots, eatingDrinkingTask).

% --- plant ---
obj(plant).
hasPhysicalQuality(plant, perishable).
hasPhysicalQuality(plant, soft_Deformable).
hasPhysicalQuality(plant, lightweight).
hasRole(plant, consumableRole).
affordsTask(plant, maintenanceTask).

% --- shoes ---
obj(shoes).
hasPhysicalQuality(shoes, lightweight).
hasPhysicalQuality(shoes, soft_Deformable).
hasPhysicalQuality(shoes, washable).
hasRole(shoes, clothingRole).
affordsTask(shoes, dressingTask).

% --- flooring ---
obj(flooring).
hasPhysicalQuality(flooring, rigid).
hasRole(flooring, furnitureRole).
affordsTask(flooring, leisureTask).

% --- sofabed ---
obj(sofabed).
hasPhysicalQuality(sofabed, soft_Deformable).
hasPhysicalQuality(sofabed, fragile).
hasPhysicalQuality(sofabed, heavy).
hasRole(sofabed, furnitureRole).
affordsTask(sofabed, sleepingTask).

% --- vase ---
obj(vase).
hasPhysicalQuality(vase, fragile).
hasPhysicalQuality(vase, rigid).
hasRole(vase, decorationRole).
affordsTask(vase, storageTask).

% --- bread ---
obj(bread).
hasPhysicalQuality(bread, perishable).
hasPhysicalQuality(bread, granular).
hasRole(bread, consumableRole).
affordsTask(bread, foodPreparationTask).
affordsTask(bread, eatingDrinkingTask).

% --- glass of water ---
obj(glass_of_water).
hasPhysicalQuality(glass_of_water, liquid).
hasRole(glass_of_water, consumableRole).
affordsTask(glass_of_water, eatingDrinkingTask).

% --- rocks ---
obj(rocks).
hasPhysicalQuality(rocks, heavy).
hasPhysicalQuality(rocks, rigid).
hasRole(rocks, toolRole).
affordsTask(rocks, maintenanceTask).

% --- handle ---
obj(handle).
hasPhysicalQuality(handle, rigid).
hasPhysicalQuality(handle, fragile).
hasRole(handle, toolRole).
affordsTask(handle, maintenanceTask).

% --- piano ---
obj(piano).
hasPhysicalQuality(piano, rigid).
hasPhysicalQuality(piano, heavy).
hasRole(piano, musicalInstrumentRole).
affordsTask(piano, leisureTask).
affordsTask(piano, workStudyTask).

% --- flour ---
obj(flour).
hasPhysicalQuality(flour, granular).
hasRole(flour, consumableRole).
affordsTask(flour, foodPreparationTask).

% --- kitchen table ---
obj(kitchen_table).
hasPhysicalQuality(kitchen_table, rigid).
hasPhysicalQuality(kitchen_table, heavy).
hasRole(kitchen_table, furnitureRole).
affordsTask(kitchen_table, eatingDrinkingTask).
affordsTask(kitchen_table, foodPreparationTask).
affordsTask(kitchen_table, leisureTask).
affordsTask(kitchen_table, storageTask).

% --- ham ---
obj(ham).
hasPhysicalQuality(ham, perishable).
hasRole(ham, consumableRole).
affordsTask(ham, eatingDrinkingTask).

% --- nest of tables ---
obj(nest_of_tables).
hasPhysicalQuality(nest_of_tables, heavy).
hasPhysicalQuality(nest_of_tables, rigid).
hasRole(nest_of_tables, furnitureRole).
affordsTask(nest_of_tables, storageTask).

% --- saucer ---
obj(saucer).
hasPhysicalQuality(saucer, rigid).
hasPhysicalQuality(saucer, lightweight).
hasRole(saucer, utensilRole).
affordsTask(saucer, eatingDrinkingTask).

% --- tweed ---
obj(tweed).
hasPhysicalQuality(tweed, soft_Deformable).
hasPhysicalQuality(tweed, washable).
hasRole(tweed, clothingRole).
affordsTask(tweed, dressingTask).

% --- garbage waste ---
obj(garbage_waste).
hasRole(garbage_waste, consumableRole).
affordsTask(garbage_waste, wasteDisposalTask).

% --- steaks ---
obj(steaks).
hasPhysicalQuality(steaks, perishable).
hasRole(steaks, consumableRole).
affordsTask(steaks, foodPreparationTask).
affordsTask(steaks, eatingDrinkingTask).

% --- liquids ---
obj(liquids).
hasPhysicalQuality(liquids, liquid).
hasRole(liquids, consumableRole).
affordsTask(liquids, eatingDrinkingTask).

% --- box ---
obj(box).
hasPhysicalQuality(box, heavy).
hasPhysicalQuality(box, rigid).
hasRole(box, storageContainerRole).
affordsTask(box, storageTask).

% --- puzzle ---
obj(puzzle).
hasRole(puzzle, entertainmentRole).
affordsTask(puzzle, leisureTask).

% --- pipe ---
obj(pipe).
hasPhysicalQuality(pipe, rigid).
hasRole(pipe, toolRole).
affordsTask(pipe, maintenanceTask).

% --- hair accessory ---
obj(hair_accessory).
hasPhysicalQuality(hair_accessory, lightweight).
hasPhysicalQuality(hair_accessory, soft_Deformable).
hasRole(hair_accessory, toolRole).
affordsTask(hair_accessory, dressingTask).

% --- curtain ---
obj(curtain).
hasPhysicalQuality(curtain, soft_Deformable).
hasPhysicalQuality(curtain, lightweight).
hasRole(curtain, furnitureRole).
affordsTask(curtain, leisureTask).

% --- furniture secretary ---
obj(furniture_secretary).
hasPhysicalQuality(furniture_secretary, heavy).
hasPhysicalQuality(furniture_secretary, rigid).
hasRole(furniture_secretary, furnitureRole).
affordsTask(furniture_secretary, workStudyTask).

% --- frying pan ---
obj(frying_pan).
hasPhysicalQuality(frying_pan, heated).
hasPhysicalQuality(frying_pan, rigid).
hasRole(frying_pan, cookwareRole).
affordsTask(frying_pan, foodPreparationTask).

% --- house ---
obj(house).
hasPhysicalQuality(house, heavy).
hasRole(house, furnitureRole).
affordsTask(house, leisureTask).
affordsTask(house, storageTask).

% --- juice ---
obj(juice).
hasPhysicalQuality(juice, liquid).
hasPhysicalQuality(juice, perishable).
hasRole(juice, consumableRole).
affordsTask(juice, eatingDrinkingTask).

% --- liquor glass ---
obj(liquor_glass).
hasPhysicalQuality(liquor_glass, lightweight).
hasPhysicalQuality(liquor_glass, rigid).
hasRole(liquor_glass, utensilRole).
affordsTask(liquor_glass, eatingDrinkingTask).

% --- peanut butter ---
obj(peanut_butter).
hasPhysicalQuality(peanut_butter, liquid).
hasRole(peanut_butter, consumableRole).
affordsTask(peanut_butter, eatingDrinkingTask).

% --- desk tray ---
obj(desk_tray).
hasPhysicalQuality(desk_tray, lightweight).
hasPhysicalQuality(desk_tray, rigid).
hasRole(desk_tray, storageContainerRole).
affordsTask(desk_tray, storageTask).

% --- coke ---
obj(coke).
hasPhysicalQuality(coke, liquid).
hasRole(coke, consumableRole).
affordsTask(coke, eatingDrinkingTask).

% --- highlighter pen ---
obj(highlighter_pen).
hasPhysicalQuality(highlighter_pen, lightweight).
hasPhysicalQuality(highlighter_pen, sharp).
hasRole(highlighter_pen, utensilRole).
affordsTask(highlighter_pen, foodPreparationTask).

% --- virus ---
obj(virus).
hasPhysicalQuality(virus, toxic_Hazardous).
hasRole(virus, consumableRole).
affordsTask(virus, maintenanceTask).

% --- yogurt ---
obj(yogurt).
hasPhysicalQuality(yogurt, perishable).
hasRole(yogurt, consumableRole).
affordsTask(yogurt, eatingDrinkingTask).

% --- bookend ---
obj(bookend).
hasPhysicalQuality(bookend, heavy).
hasPhysicalQuality(bookend, rigid).
hasRole(bookend, furnitureRole).
affordsTask(bookend, storageTask).

% --- pennies ---
obj(pennies).
hasPhysicalQuality(pennies, lightweight).
hasPhysicalQuality(pennies, fragile).
hasRole(pennies, consumableRole).
affordsTask(pennies, eatingDrinkingTask).

% --- carrots ---
obj(carrots).
hasPhysicalQuality(carrots, perishable).
hasPhysicalQuality(carrots, granular).
hasRole(carrots, consumableRole).
affordsTask(carrots, foodPreparationTask).
affordsTask(carrots, eatingDrinkingTask).

% --- rice ---
obj(rice).
hasPhysicalQuality(rice, granular).
hasRole(rice, consumableRole).
affordsTask(rice, foodPreparationTask).
affordsTask(rice, eatingDrinkingTask).

% --- table cloth ---
obj(table_cloth).
hasPhysicalQuality(table_cloth, soft_Deformable).
hasPhysicalQuality(table_cloth, lightweight).
hasRole(table_cloth, beddingRole).
affordsTask(table_cloth, leisureTask).

% --- ladder ---
obj(ladder).
hasPhysicalQuality(ladder, heavy).
hasPhysicalQuality(ladder, rigid).
hasRole(ladder, toolRole).
affordsTask(ladder, maintenanceTask).

% --- separate shower ---
obj(separate_shower).
hasPhysicalQuality(separate_shower, lightweight).
hasPhysicalQuality(separate_shower, rigid).
hasRole(separate_shower, furnitureRole).
affordsTask(separate_shower, hygieneTask).

% --- can opener ---
obj(can_opener).
hasPhysicalQuality(can_opener, electronic).
hasPhysicalQuality(can_opener, heavy).
hasRole(can_opener, toolRole).
affordsTask(can_opener, foodPreparationTask).

% --- staircase ---
obj(staircase).
hasPhysicalQuality(staircase, rigid).
hasPhysicalQuality(staircase, heavy).
hasRole(staircase, furnitureRole).
affordsTask(staircase, leisureTask).
affordsTask(staircase, maintenanceTask).

% --- notepad ---
obj(notepad).
hasPhysicalQuality(notepad, lightweight).
hasRole(notepad, documentRole).
affordsTask(notepad, workStudyTask).

% --- tape ---
obj(tape).
hasRole(tape, toolRole).
affordsTask(tape, maintenanceTask).

% --- toothbrush ---
obj(toothbrush).
hasPhysicalQuality(toothbrush, lightweight).
hasPhysicalQuality(toothbrush, fragile).
affordsTask(toothbrush, hygieneTask).

% --- leaves ---
obj(leaves).
hasPhysicalQuality(leaves, perishable).
hasRole(leaves, wasteRole).
affordsTask(leaves, wasteDisposalTask).

% --- gate ---
obj(gate).
hasPhysicalQuality(gate, rigid).
hasRole(gate, furnitureRole).
affordsTask(gate, maintenanceTask).

% --- thumb tack ---
obj(thumb_tack).
hasPhysicalQuality(thumb_tack, sharp).
hasRole(thumb_tack, toolRole).
affordsTask(thumb_tack, maintenanceTask).

% --- fiberglass ---
obj(fiberglass).
hasPhysicalQuality(fiberglass, rigid).
hasRole(fiberglass, storageContainerRole).
affordsTask(fiberglass, maintenanceTask).

% --- cats ---
obj(cats).
hasPhysicalQuality(cats, fragile).
hasPhysicalQuality(cats, soft_Deformable).
hasPhysicalQuality(cats, lightweight).
hasRole(cats, consumableRole).
affordsTask(cats, eatingDrinkingTask).

% --- hats ---
obj(hats).
hasPhysicalQuality(hats, soft_Deformable).
hasPhysicalQuality(hats, washable).
hasRole(hats, clothingRole).
affordsTask(hats, leisureTask).

% --- mouthwash ---
obj(mouthwash).
hasPhysicalQuality(mouthwash, liquid).
hasRole(mouthwash, cleaningToolRole).
affordsTask(mouthwash, hygieneTask).

% --- roadway ---
obj(roadway).
hasPhysicalQuality(roadway, rigid).

% --- paper clips ---
obj(paper_clips).
hasPhysicalQuality(paper_clips, lightweight).
hasPhysicalQuality(paper_clips, rigid).
hasRole(paper_clips, toolRole).
affordsTask(paper_clips, workStudyTask).

% --- suntan lotion ---
obj(suntan_lotion).
hasPhysicalQuality(suntan_lotion, liquid).
hasPhysicalQuality(suntan_lotion, washable).
hasRole(suntan_lotion, cleaningToolRole).
affordsTask(suntan_lotion, hygieneTask).

% --- ketchup ---
obj(ketchup).
hasPhysicalQuality(ketchup, liquid).
hasRole(ketchup, consumableRole).
affordsTask(ketchup, eatingDrinkingTask).

% --- cash register ---
obj(cash_register).
hasPhysicalQuality(cash_register, electronic).
hasPhysicalQuality(cash_register, heavy).
hasRole(cash_register, applianceRole).
affordsTask(cash_register, workStudyTask).

% --- celery ---
obj(celery).
hasPhysicalQuality(celery, perishable).
hasPhysicalQuality(celery, fragile).
hasRole(celery, consumableRole).
affordsTask(celery, eatingDrinkingTask).

% --- hair conditioner ---
obj(hair_conditioner).
hasPhysicalQuality(hair_conditioner, liquid).
hasPhysicalQuality(hair_conditioner, washable).
hasRole(hair_conditioner, cleaningToolRole).
affordsTask(hair_conditioner, hygieneTask).

% --- steel pen ---
obj(steel_pen).
hasPhysicalQuality(steel_pen, rigid).
hasPhysicalQuality(steel_pen, fragile).
hasRole(steel_pen, toolRole).

% --- coffe table ---
obj(coffe_table).
hasPhysicalQuality(coffe_table, heavy).
hasPhysicalQuality(coffe_table, rigid).
hasRole(coffe_table, furnitureRole).
affordsTask(coffe_table, leisureTask).

% --- cocktail cabinet ---
obj(cocktail_cabinet).
hasRole(cocktail_cabinet, storageContainerRole).
affordsTask(cocktail_cabinet, storageTask).

% --- coal ---
obj(coal).
hasPhysicalQuality(coal, fragile).
hasPhysicalQuality(coal, granular).
hasRole(coal, consumableRole).
affordsTask(coal, leisureTask).

% --- tea ---
obj(tea).
hasPhysicalQuality(tea, perishable).
hasRole(tea, consumableRole).
affordsTask(tea, eatingDrinkingTask).

% --- tape measure ---
obj(tape_measure).
hasPhysicalQuality(tape_measure, rigid).
hasPhysicalQuality(tape_measure, lightweight).
hasRole(tape_measure, toolRole).
affordsTask(tape_measure, maintenanceTask).

% --- tap ---
obj(tap).
hasPhysicalQuality(tap, lightweight).
hasPhysicalQuality(tap, soft_Deformable).
hasRole(tap, toolRole).
affordsTask(tap, hygieneTask).
affordsTask(tap, leisureTask).

% --- pigeons ---
obj(pigeons).
hasRole(pigeons, consumableRole).
affordsTask(pigeons, eatingDrinkingTask).

% --- tiles ---
obj(tiles).
hasPhysicalQuality(tiles, rigid).
hasPhysicalQuality(tiles, granular).
hasRole(tiles, furnitureRole).
affordsTask(tiles, maintenanceTask).

% --- clock ---
obj(clock).
hasPhysicalQuality(clock, rigid).
hasRole(clock, decorationRole).
affordsTask(clock, leisureTask).

% --- book ---
obj(book).
hasPhysicalQuality(book, lightweight).
hasPhysicalQuality(book, washable).
hasRole(book, documentRole).
affordsTask(book, leisureTask).
affordsTask(book, workStudyTask).

% --- eraser ---
obj(eraser).
hasPhysicalQuality(eraser, soft_Deformable).
hasPhysicalQuality(eraser, lightweight).
hasRole(eraser, toolRole).
affordsTask(eraser, maintenanceTask).

% --- correction fluid ---
obj(correction_fluid).
hasPhysicalQuality(correction_fluid, liquid).
hasRole(correction_fluid, cleaningToolRole).
affordsTask(correction_fluid, maintenanceTask).

% --- hat ---
obj(hat).
hasPhysicalQuality(hat, lightweight).
hasPhysicalQuality(hat, soft_Deformable).
hasRole(hat, clothingRole).
affordsTask(hat, dressingTask).

% --- power screwdriver ---
obj(power_screwdriver).
hasPhysicalQuality(power_screwdriver, electronic).
hasPhysicalQuality(power_screwdriver, heavy).
hasPhysicalQuality(power_screwdriver, rigid).
hasRole(power_screwdriver, toolRole).
affordsTask(power_screwdriver, maintenanceTask).

% --- popcorn ---
obj(popcorn).
hasPhysicalQuality(popcorn, perishable).
hasPhysicalQuality(popcorn, granular).
hasRole(popcorn, consumableRole).
affordsTask(popcorn, eatingDrinkingTask).

% --- toilet brush ---
obj(toilet_brush).
hasPhysicalQuality(toilet_brush, lightweight).
hasPhysicalQuality(toilet_brush, fragile).
hasPhysicalQuality(toilet_brush, rigid).
hasRole(toilet_brush, cleaningToolRole).
affordsTask(toilet_brush, cleaningTask).

% --- paper punch ---
obj(paper_punch).
hasPhysicalQuality(paper_punch, sharp).
hasRole(paper_punch, toolRole).
affordsTask(paper_punch, maintenanceTask).

% --- label maker ---
obj(label_maker).
hasPhysicalQuality(label_maker, electronic).
hasPhysicalQuality(label_maker, lightweight).
hasRole(label_maker, toolRole).
affordsTask(label_maker, workStudyTask).

% --- coffee mug ---
obj(coffee_mug).
hasPhysicalQuality(coffee_mug, lightweight).
hasPhysicalQuality(coffee_mug, rigid).
hasPhysicalQuality(coffee_mug, washable).
hasRole(coffee_mug, utensilRole).
affordsTask(coffee_mug, eatingDrinkingTask).

% --- turkey ---
obj(turkey).
hasPhysicalQuality(turkey, perishable).
hasRole(turkey, consumableRole).
affordsTask(turkey, eatingDrinkingTask).

% --- grape juice ---
obj(grape_juice).
hasPhysicalQuality(grape_juice, liquid).
hasRole(grape_juice, consumableRole).
affordsTask(grape_juice, eatingDrinkingTask).

% --- cups ---
obj(cups).
hasPhysicalQuality(cups, lightweight).
hasPhysicalQuality(cups, liquid).
hasRole(cups, utensilRole).
affordsTask(cups, eatingDrinkingTask).

% --- heated towel rack ---
obj(heated_towel_rack).
hasPhysicalQuality(heated_towel_rack, heated).
hasRole(heated_towel_rack, storageContainerRole).
affordsTask(heated_towel_rack, eatingDrinkingTask).

% --- nail clippers ---
obj(nail_clippers).
hasPhysicalQuality(nail_clippers, sharp).
hasPhysicalQuality(nail_clippers, rigid).
hasRole(nail_clippers, toolRole).
affordsTask(nail_clippers, maintenanceTask).

% --- woolen fabric ---
obj(woolen_fabric).
hasPhysicalQuality(woolen_fabric, soft_Deformable).
hasPhysicalQuality(woolen_fabric, washable).
hasRole(woolen_fabric, clothingRole).
affordsTask(woolen_fabric, dressingTask).

% --- hair clip ---
obj(hair_clip).
hasPhysicalQuality(hair_clip, lightweight).
hasPhysicalQuality(hair_clip, rigid).
hasRole(hair_clip, utensilRole).
affordsTask(hair_clip, dressingTask).

% --- hair dryer ---
obj(hair_dryer).
hasPhysicalQuality(hair_dryer, electronic).
hasPhysicalQuality(hair_dryer, heavy).
hasRole(hair_dryer, applianceRole).
affordsTask(hair_dryer, leisureTask).
affordsTask(hair_dryer, hygieneTask).

% --- furniture dresser ---
obj(furniture_dresser).
hasPhysicalQuality(furniture_dresser, heavy).
hasPhysicalQuality(furniture_dresser, rigid).
hasRole(furniture_dresser, furnitureRole).
affordsTask(furniture_dresser, storageTask).

% --- bookcase ---
obj(bookcase).
hasPhysicalQuality(bookcase, heavy).
hasPhysicalQuality(bookcase, rigid).
hasRole(bookcase, storageContainerRole).
affordsTask(bookcase, storageTask).

% --- shoe ---
obj(shoe).
hasPhysicalQuality(shoe, lightweight).
hasPhysicalQuality(shoe, fragile).
hasRole(shoe, clothingRole).
affordsTask(shoe, dressingTask).

% --- beanbag ---
obj(beanbag).
hasPhysicalQuality(beanbag, soft_Deformable).
hasRole(beanbag, furnitureRole).
affordsTask(beanbag, leisureTask).

% --- cable ---
obj(cable).
hasPhysicalQuality(cable, rigid).
hasPhysicalQuality(cable, electronic).
hasPhysicalQuality(cable, heavy).
hasRole(cable, toolRole).
affordsTask(cable, maintenanceTask).

% --- utensils ---
obj(utensils).
hasRole(utensils, utensilRole).

% --- chess piece ---
obj(chess_piece).
hasPhysicalQuality(chess_piece, rigid).
hasRole(chess_piece, entertainmentRole).
affordsTask(chess_piece, leisureTask).

% --- pedestal ---
obj(pedestal).
hasPhysicalQuality(pedestal, heavy).
hasRole(pedestal, furnitureRole).
affordsTask(pedestal, storageTask).

% --- coil ---
obj(coil).
hasPhysicalQuality(coil, rigid).
hasRole(coil, toolRole).
affordsTask(coil, maintenanceTask).

% --- garbage ---
obj(garbage).
hasPhysicalQuality(garbage, heavy).
hasPhysicalQuality(garbage, fragile).
hasRole(garbage, storageContainerRole).
hasRole(garbage, wasteRole).
affordsTask(garbage, wasteDisposalTask).

% --- chair ---
obj(chair).
hasPhysicalQuality(chair, rigid).
hasPhysicalQuality(chair, heavy).
hasRole(chair, furnitureRole).
affordsTask(chair, leisureTask).
affordsTask(chair, storageTask).

% --- hall ---
obj(hall).
hasRole(hall, furnitureRole).
affordsTask(hall, leisureTask).
affordsTask(hall, workStudyTask).

% --- garlic ---
obj(garlic).
hasPhysicalQuality(garlic, perishable).
hasRole(garlic, consumableRole).
affordsTask(garlic, foodPreparationTask).

% --- tack ---
obj(tack).
hasPhysicalQuality(tack, sharp).
hasPhysicalQuality(tack, rigid).
hasRole(tack, utensilRole).
affordsTask(tack, foodPreparationTask).

% --- towel bar ---
obj(towel_bar).
hasPhysicalQuality(towel_bar, rigid).
hasPhysicalQuality(towel_bar, heavy).
hasRole(towel_bar, storageContainerRole).
affordsTask(towel_bar, storageTask).

% --- shopping bag ---
obj(shopping_bag).
hasPhysicalQuality(shopping_bag, lightweight).
hasPhysicalQuality(shopping_bag, soft_Deformable).
hasRole(shopping_bag, storageContainerRole).
affordsTask(shopping_bag, storageTask).

% --- coat hangers ---
obj(coat_hangers).
hasPhysicalQuality(coat_hangers, lightweight).
hasPhysicalQuality(coat_hangers, rigid).
hasRole(coat_hangers, storageContainerRole).
affordsTask(coat_hangers, storageTask).

% --- tile ---
obj(tile).
hasPhysicalQuality(tile, rigid).
hasRole(tile, furnitureRole).
affordsTask(tile, maintenanceTask).

% --- banana peels ---
obj(banana_peels).
hasPhysicalQuality(banana_peels, perishable).
hasRole(banana_peels, wasteRole).
affordsTask(banana_peels, wasteDisposalTask).

% --- coat ---
obj(coat).
hasPhysicalQuality(coat, soft_Deformable).
hasPhysicalQuality(coat, washable).
hasRole(coat, clothingRole).
affordsTask(coat, dressingTask).

% --- paper fastener ---
obj(paper_fastener).
hasPhysicalQuality(paper_fastener, lightweight).
hasPhysicalQuality(paper_fastener, rigid).
hasRole(paper_fastener, toolRole).
affordsTask(paper_fastener, maintenanceTask).

% --- cheese ---
obj(cheese).
hasPhysicalQuality(cheese, perishable).
hasRole(cheese, consumableRole).
affordsTask(cheese, eatingDrinkingTask).

% --- on off switch ---
obj(on_off_switch).
hasPhysicalQuality(on_off_switch, electronic).
hasPhysicalQuality(on_off_switch, lightweight).
hasRole(on_off_switch, toolRole).
affordsTask(on_off_switch, maintenanceTask).

% --- hearing aid ---
obj(hearing_aid).
hasPhysicalQuality(hearing_aid, electronic).
hasPhysicalQuality(hearing_aid, lightweight).
hasRole(hearing_aid, toolRole).
affordsTask(hearing_aid, workStudyTask).

% --- chess king ---
obj(chess_king).
hasPhysicalQuality(chess_king, rigid).
hasRole(chess_king, entertainmentRole).
affordsTask(chess_king, leisureTask).

% --- spoon ---
obj(spoon).
hasPhysicalQuality(spoon, lightweight).
hasPhysicalQuality(spoon, rigid).
hasPhysicalQuality(spoon, sharp).
hasRole(spoon, utensilRole).
affordsTask(spoon, foodPreparationTask).
affordsTask(spoon, eatingDrinkingTask).

% --- armoire ---
obj(armoire).
hasPhysicalQuality(armoire, heavy).
hasPhysicalQuality(armoire, rigid).
hasRole(armoire, furnitureRole).
affordsTask(armoire, storageTask).

% --- pencil ---
obj(pencil).
hasPhysicalQuality(pencil, lightweight).
hasPhysicalQuality(pencil, rigid).
hasRole(pencil, toolRole).

% --- folding shower door ---
obj(folding_shower_door).
hasPhysicalQuality(folding_shower_door, lightweight).
hasPhysicalQuality(folding_shower_door, rigid).
hasRole(folding_shower_door, furnitureRole).
affordsTask(folding_shower_door, leisureTask).

% --- toothbrush head ---
obj(toothbrush_head).
hasPhysicalQuality(toothbrush_head, lightweight).
hasPhysicalQuality(toothbrush_head, fragile).
affordsTask(toothbrush_head, hygieneTask).

% --- clippers ---
obj(clippers).
hasPhysicalQuality(clippers, sharp).
hasPhysicalQuality(clippers, rigid).
hasRole(clippers, toolRole).
affordsTask(clippers, maintenanceTask).

% --- dryer ---
obj(dryer).
hasPhysicalQuality(dryer, electronic).
hasPhysicalQuality(dryer, heavy).
hasRole(dryer, applianceRole).
affordsTask(dryer, maintenanceTask).

% --- bungalow ---
obj(bungalow).
hasRole(bungalow, furnitureRole).
affordsTask(bungalow, leisureTask).

% --- tomato plants ---
obj(tomato_plants).
hasPhysicalQuality(tomato_plants, perishable).
hasPhysicalQuality(tomato_plants, granular).
hasRole(tomato_plants, consumableRole).
affordsTask(tomato_plants, foodPreparationTask).
affordsTask(tomato_plants, gardeningTask).

% --- pots ---
obj(pots).
hasPhysicalQuality(pots, rigid).
hasRole(pots, cookwareRole).
affordsTask(pots, foodPreparationTask).

% --- lemon curd ---
obj(lemon_curd).
hasPhysicalQuality(lemon_curd, perishable).
hasRole(lemon_curd, consumableRole).
affordsTask(lemon_curd, eatingDrinkingTask).

% --- grapes ---
obj(grapes).
hasPhysicalQuality(grapes, perishable).
hasRole(grapes, consumableRole).
affordsTask(grapes, eatingDrinkingTask).

% --- wine glass ---
obj(wine_glass).
hasPhysicalQuality(wine_glass, lightweight).
hasPhysicalQuality(wine_glass, fragile).
hasRole(wine_glass, utensilRole).
affordsTask(wine_glass, eatingDrinkingTask).

% --- pillow case ---
obj(pillow_case).
hasPhysicalQuality(pillow_case, soft_Deformable).
hasPhysicalQuality(pillow_case, washable).
hasRole(pillow_case, beddingRole).
affordsTask(pillow_case, sleepingTask).

% --- broccoli ---
obj(broccoli).
hasPhysicalQuality(broccoli, perishable).
hasRole(broccoli, consumableRole).
affordsTask(broccoli, eatingDrinkingTask).

% --- bedroom ---
obj(bedroom).
hasRole(bedroom, furnitureRole).
affordsTask(bedroom, sleepingTask).

% --- hairpin ---
obj(hairpin).
hasPhysicalQuality(hairpin, lightweight).
hasPhysicalQuality(hairpin, rigid).
hasRole(hairpin, utensilRole).
affordsTask(hairpin, dressingTask).

% --- dining table ---
obj(dining_table).
hasPhysicalQuality(dining_table, heavy).
hasPhysicalQuality(dining_table, rigid).
hasRole(dining_table, furnitureRole).
affordsTask(dining_table, eatingDrinkingTask).
affordsTask(dining_table, leisureTask).
affordsTask(dining_table, storageTask).

% --- cloth ---
obj(cloth).
hasPhysicalQuality(cloth, soft_Deformable).
hasPhysicalQuality(cloth, washable).
hasRole(cloth, clothingRole).
affordsTask(cloth, dressingTask).
affordsTask(cloth, storageTask).

% --- index card ---
obj(index_card).
hasPhysicalQuality(index_card, lightweight).
hasPhysicalQuality(index_card, rigid).
hasRole(index_card, documentRole).
affordsTask(index_card, workStudyTask).

% --- grease ---
obj(grease).
hasPhysicalQuality(grease, liquid).
hasPhysicalQuality(grease, fragile).
hasRole(grease, cleaningToolRole).
affordsTask(grease, maintenanceTask).

% --- thermostat ---
obj(thermostat).
hasPhysicalQuality(thermostat, electronic).
hasPhysicalQuality(thermostat, heavy).
hasRole(thermostat, applianceRole).
affordsTask(thermostat, maintenanceTask).

% --- medicine ---
obj(medicine).
hasPhysicalQuality(medicine, perishable).
hasRole(medicine, consumableRole).
affordsTask(medicine, eatingDrinkingTask).

% --- ventilation system ---
obj(ventilation_system).
hasPhysicalQuality(ventilation_system, electronic).
hasPhysicalQuality(ventilation_system, heavy).
hasRole(ventilation_system, applianceRole).
affordsTask(ventilation_system, maintenanceTask).

% --- large container ---
obj(large_container).
hasPhysicalQuality(large_container, heavy).
hasRole(large_container, storageContainerRole).
affordsTask(large_container, storageTask).

% --- continental quilt ---
obj(continental_quilt).
hasPhysicalQuality(continental_quilt, soft_Deformable).
hasPhysicalQuality(continental_quilt, washable).
hasRole(continental_quilt, beddingRole).
affordsTask(continental_quilt, sleepingTask).

% --- pets ---
obj(pets).
hasPhysicalQuality(pets, soft_Deformable).
hasPhysicalQuality(pets, lightweight).
hasRole(pets, entertainmentRole).
affordsTask(pets, leisureTask).

% --- spiral binding ---
obj(spiral_binding).
hasPhysicalQuality(spiral_binding, lightweight).
hasRole(spiral_binding, toolRole).
affordsTask(spiral_binding, maintenanceTask).

% --- papers ---
obj(papers).
hasPhysicalQuality(papers, lightweight).
hasPhysicalQuality(papers, washable).
hasRole(papers, documentRole).
affordsTask(papers, cleaningTask).

% --- strings ---
obj(strings).
hasPhysicalQuality(strings, lightweight).
hasPhysicalQuality(strings, fragile).
hasRole(strings, toolRole).
affordsTask(strings, leisureTask).

% --- football ---
obj(football).
hasPhysicalQuality(football, rigid).
hasPhysicalQuality(football, lightweight).
hasRole(football, entertainmentRole).
affordsTask(football, leisureTask).

% --- newspapers ---
obj(newspapers).
hasPhysicalQuality(newspapers, lightweight).
hasPhysicalQuality(newspapers, fragile).
hasRole(newspapers, documentRole).

% --- cafe ---
obj(cafe).
hasPhysicalQuality(cafe, liquid).
hasRole(cafe, consumableRole).
affordsTask(cafe, eatingDrinkingTask).

% --- clavichord ---
obj(clavichord).
hasPhysicalQuality(clavichord, rigid).
hasRole(clavichord, musicalInstrumentRole).
affordsTask(clavichord, leisureTask).

% --- chicken ---
obj(chicken).
hasPhysicalQuality(chicken, perishable).
hasRole(chicken, consumableRole).
affordsTask(chicken, eatingDrinkingTask).

% --- stylus ---
obj(stylus).
hasPhysicalQuality(stylus, lightweight).
hasPhysicalQuality(stylus, rigid).
hasRole(stylus, toolRole).

% --- briefcase ---
obj(briefcase).
hasPhysicalQuality(briefcase, heavy).
hasPhysicalQuality(briefcase, rigid).
hasRole(briefcase, storageContainerRole).
affordsTask(briefcase, storageTask).

% --- paper page ---
obj(paper_page).
hasPhysicalQuality(paper_page, fragile).
hasPhysicalQuality(paper_page, flammable).
hasPhysicalQuality(paper_page, lightweight).
hasRole(paper_page, documentRole).
affordsTask(paper_page, leisureTask).
affordsTask(paper_page, workStudyTask).

% --- entrance ---
obj(entrance).
hasPhysicalQuality(entrance, rigid).
hasRole(entrance, furnitureRole).
affordsTask(entrance, leisureTask).

% --- dirty dishes ---
obj(dirty_dishes).
hasPhysicalQuality(dirty_dishes, fragile).
hasRole(dirty_dishes, utensilRole).
affordsTask(dirty_dishes, cleaningTask).

% --- hide bed ---
obj(hide_bed).
hasPhysicalQuality(hide_bed, soft_Deformable).
hasPhysicalQuality(hide_bed, heavy).
hasRole(hide_bed, furnitureRole).
affordsTask(hide_bed, sleepingTask).

% --- front yard ---
obj(front_yard).
hasRole(front_yard, furnitureRole).
affordsTask(front_yard, leisureTask).
affordsTask(front_yard, gardeningTask).

% --- library ---
obj(library).
hasPhysicalQuality(library, heavy).
hasRole(library, storageContainerRole).
affordsTask(library, leisureTask).
affordsTask(library, workStudyTask).

% --- spare tire ---
obj(spare_tire).
hasPhysicalQuality(spare_tire, heavy).
hasPhysicalQuality(spare_tire, rigid).
hasRole(spare_tire, toolRole).
affordsTask(spare_tire, maintenanceTask).

% --- lunch ---
obj(lunch).
hasPhysicalQuality(lunch, perishable).
hasRole(lunch, consumableRole).
affordsTask(lunch, eatingDrinkingTask).

% --- tanning lotion ---
obj(tanning_lotion).
hasPhysicalQuality(tanning_lotion, liquid).
hasRole(tanning_lotion, consumableRole).
affordsTask(tanning_lotion, hygieneTask).

% --- dish ---
obj(dish).
hasPhysicalQuality(dish, rigid).
hasRole(dish, utensilRole).
affordsTask(dish, eatingDrinkingTask).

% --- comforter ---
obj(comforter).
hasPhysicalQuality(comforter, soft_Deformable).
hasPhysicalQuality(comforter, washable).
hasRole(comforter, beddingRole).
affordsTask(comforter, sleepingTask).

% --- water fountain ---
obj(water_fountain).
hasPhysicalQuality(water_fountain, liquid).
hasPhysicalQuality(water_fountain, heavy).
hasRole(water_fountain, utensilRole).
affordsTask(water_fountain, eatingDrinkingTask).

% --- wallet ---
obj(wallet).
hasPhysicalQuality(wallet, lightweight).
hasPhysicalQuality(wallet, fragile).
hasRole(wallet, storageContainerRole).
affordsTask(wallet, storageTask).

% --- bath shower ---
obj(bath_shower).
hasPhysicalQuality(bath_shower, liquid).
hasPhysicalQuality(bath_shower, electronic).
hasRole(bath_shower, cleaningToolRole).
affordsTask(bath_shower, hygieneTask).

% --- stamps ---
obj(stamps).
hasPhysicalQuality(stamps, lightweight).
hasRole(stamps, consumableRole).
affordsTask(stamps, eatingDrinkingTask).

% --- brass ---
obj(brass).
hasPhysicalQuality(brass, rigid).
hasPhysicalQuality(brass, heavy).
hasRole(brass, decorationRole).

% --- guitar ---
obj(guitar).
hasPhysicalQuality(guitar, rigid).
hasRole(guitar, musicalInstrumentRole).
affordsTask(guitar, leisureTask).

% --- toy ---
obj(toy).
hasPhysicalQuality(toy, lightweight).
hasRole(toy, entertainmentRole).
affordsTask(toy, leisureTask).

% --- clam ---
obj(clam).
hasPhysicalQuality(clam, fragile).
hasPhysicalQuality(clam, rigid).
hasRole(clam, consumableRole).
affordsTask(clam, eatingDrinkingTask).

% --- double edged razor ---
obj(double_edged_razor).
hasPhysicalQuality(double_edged_razor, sharp).
hasRole(double_edged_razor, utensilRole).
affordsTask(double_edged_razor, foodPreparationTask).

% --- toilets ---
obj(toilets).
hasPhysicalQuality(toilets, heavy).
hasRole(toilets, furnitureRole).
affordsTask(toilets, wasteDisposalTask).

% --- study ---
obj(study).
hasRole(study, furnitureRole).
affordsTask(study, workStudyTask).

% --- second floor ---
obj(second_floor).
hasRole(second_floor, furnitureRole).

% --- drawstring bag ---
obj(drawstring_bag).
hasPhysicalQuality(drawstring_bag, soft_Deformable).
hasPhysicalQuality(drawstring_bag, lightweight).
hasRole(drawstring_bag, storageContainerRole).
affordsTask(drawstring_bag, storageTask).

% --- lantern ---
obj(lantern).
hasRole(lantern, decorationRole).
affordsTask(lantern, leisureTask).

% --- drinking water ---
obj(drinking_water).
hasPhysicalQuality(drinking_water, liquid).
hasRole(drinking_water, consumableRole).
affordsTask(drinking_water, eatingDrinkingTask).

% --- clothes closet ---
obj(clothes_closet).
hasPhysicalQuality(clothes_closet, heavy).
hasRole(clothes_closet, storageContainerRole).
affordsTask(clothes_closet, storageTask).

% --- dinner ---
obj(dinner).
hasPhysicalQuality(dinner, perishable).
hasRole(dinner, consumableRole).
affordsTask(dinner, eatingDrinkingTask).

% --- balcony railing ---
obj(balcony_railing).
hasPhysicalQuality(balcony_railing, rigid).
hasPhysicalQuality(balcony_railing, heavy).
hasRole(balcony_railing, furnitureRole).
affordsTask(balcony_railing, leisureTask).

% --- flight bag ---
obj(flight_bag).
hasPhysicalQuality(flight_bag, lightweight).
hasPhysicalQuality(flight_bag, rigid).
hasRole(flight_bag, storageContainerRole).

% --- fresh vegetables ---
obj(fresh_vegetables).
hasPhysicalQuality(fresh_vegetables, perishable).
hasRole(fresh_vegetables, consumableRole).
affordsTask(fresh_vegetables, eatingDrinkingTask).

% --- t shirt ---
obj(t_shirt).
hasPhysicalQuality(t_shirt, soft_Deformable).
hasPhysicalQuality(t_shirt, lightweight).
hasPhysicalQuality(t_shirt, washable).
hasRole(t_shirt, clothingRole).
affordsTask(t_shirt, dressingTask).

% --- foyer ---
obj(foyer).
hasPhysicalQuality(foyer, fragile).
hasRole(foyer, furnitureRole).
affordsTask(foyer, leisureTask).

% --- balcony seat ---
obj(balcony_seat).
hasPhysicalQuality(balcony_seat, fragile).
hasPhysicalQuality(balcony_seat, lightweight).
hasRole(balcony_seat, furnitureRole).
affordsTask(balcony_seat, leisureTask).

% --- vegetable garden ---
obj(vegetable_garden).
hasRole(vegetable_garden, furnitureRole).
affordsTask(vegetable_garden, gardeningTask).

% --- dress ---
obj(dress).
hasPhysicalQuality(dress, soft_Deformable).
hasPhysicalQuality(dress, lightweight).
hasRole(dress, clothingRole).
affordsTask(dress, dressingTask).

% --- ballpoint pen ---
obj(ballpoint_pen).
hasPhysicalQuality(ballpoint_pen, lightweight).
hasPhysicalQuality(ballpoint_pen, rigid).
hasRole(ballpoint_pen, toolRole).

% --- encyclopedia ---
obj(encyclopedia).
hasRole(encyclopedia, documentRole).
affordsTask(encyclopedia, workStudyTask).

% --- ingredients ---
obj(ingredients).
hasPhysicalQuality(ingredients, granular).
hasRole(ingredients, consumableRole).
affordsTask(ingredients, foodPreparationTask).

% --- dust ---
obj(dust).
hasPhysicalQuality(dust, granular).
hasRole(dust, wasteRole).
affordsTask(dust, cleaningTask).

% --- doorway ---
obj(doorway).
hasPhysicalQuality(doorway, heavy).
hasRole(doorway, furnitureRole).
affordsTask(doorway, leisureTask).

% --- weights ---
obj(weights).
hasPhysicalQuality(weights, heavy).
hasRole(weights, toolRole).
affordsTask(weights, workStudyTask).

% --- recipes ---
obj(recipes).
hasPhysicalQuality(recipes, perishable).
hasRole(recipes, consumableRole).
affordsTask(recipes, foodPreparationTask).

% --- tin ---
obj(tin).
hasPhysicalQuality(tin, heavy).
hasPhysicalQuality(tin, rigid).
hasRole(tin, storageContainerRole).
affordsTask(tin, storageTask).

% --- lightbulb ---
obj(lightbulb).
hasPhysicalQuality(lightbulb, electronic).
hasPhysicalQuality(lightbulb, lightweight).
hasRole(lightbulb, lightingRole).
affordsTask(lightbulb, leisureTask).

% --- wash cloth ---
obj(wash_cloth).
hasPhysicalQuality(wash_cloth, soft_Deformable).
hasPhysicalQuality(wash_cloth, washable).
hasRole(wash_cloth, cleaningToolRole).
affordsTask(wash_cloth, cleaningTask).

% --- food ---
obj(food).
hasPhysicalQuality(food, perishable).
hasPhysicalQuality(food, granular).
hasRole(food, consumableRole).
affordsTask(food, eatingDrinkingTask).

% --- switches ---
obj(switches).
hasPhysicalQuality(switches, electronic).
hasPhysicalQuality(switches, lightweight).
hasRole(switches, toolRole).
affordsTask(switches, workStudyTask).

% --- waffles ---
obj(waffles).
hasPhysicalQuality(waffles, perishable).
hasRole(waffles, consumableRole).
affordsTask(waffles, eatingDrinkingTask).

% --- icecream ---
obj(icecream).
hasPhysicalQuality(icecream, requiresFreezing).
hasPhysicalQuality(icecream, perishable).
hasPhysicalQuality(icecream, liquid).
hasRole(icecream, consumableRole).
affordsTask(icecream, eatingDrinkingTask).

% --- painting ---
obj(painting).
hasPhysicalQuality(painting, lightweight).
hasRole(painting, decorationRole).
affordsTask(painting, leisureTask).

% --- pants ---
obj(pants).
hasPhysicalQuality(pants, soft_Deformable).
hasPhysicalQuality(pants, lightweight).
hasRole(pants, clothingRole).
affordsTask(pants, dressingTask).

% --- coupon ---
obj(coupon).
hasRole(coupon, consumableRole).
affordsTask(coupon, leisureTask).

% --- back garden ---
obj(back_garden).
hasRole(back_garden, storageContainerRole).
affordsTask(back_garden, gardeningTask).

% --- mini bar ---
obj(mini_bar).
hasPhysicalQuality(mini_bar, liquid).
hasPhysicalQuality(mini_bar, fragile).
hasPhysicalQuality(mini_bar, electronic).
hasPhysicalQuality(mini_bar, heavy).
hasRole(mini_bar, storageContainerRole).
hasRole(mini_bar, applianceRole).
affordsTask(mini_bar, eatingDrinkingTask).
affordsTask(mini_bar, foodPreparationTask).
affordsTask(mini_bar, storageTask).

% --- fishes ---
obj(fishes).
hasPhysicalQuality(fishes, fragile).
hasRole(fishes, consumableRole).
affordsTask(fishes, eatingDrinkingTask).

% --- backyard ---
obj(backyard).
hasRole(backyard, furnitureRole).
affordsTask(backyard, leisureTask).
affordsTask(backyard, gardeningTask).

% --- magnet ---
obj(magnet).
hasPhysicalQuality(magnet, rigid).
hasRole(magnet, toolRole).
affordsTask(magnet, maintenanceTask).

% --- toys ---
obj(toys).
hasPhysicalQuality(toys, lightweight).
hasRole(toys, entertainmentRole).
affordsTask(toys, leisureTask).

% --- water spout ---
obj(water_spout).
hasPhysicalQuality(water_spout, liquid).
hasRole(water_spout, toolRole).
affordsTask(water_spout, eatingDrinkingTask).
affordsTask(water_spout, hygieneTask).
affordsTask(water_spout, maintenanceTask).

% --- wind instrument ---
obj(wind_instrument).
hasPhysicalQuality(wind_instrument, lightweight).
hasPhysicalQuality(wind_instrument, rigid).
hasRole(wind_instrument, musicalInstrumentRole).
affordsTask(wind_instrument, leisureTask).

% --- kitty ---
obj(kitty).
hasPhysicalQuality(kitty, fragile).
hasPhysicalQuality(kitty, lightweight).
affordsTask(kitty, leisureTask).

% --- hot faucet ---
obj(hot_faucet).
hasPhysicalQuality(hot_faucet, heated).
hasRole(hot_faucet, toolRole).
affordsTask(hot_faucet, hygieneTask).

% --- newspaper ---
obj(newspaper).
hasPhysicalQuality(newspaper, lightweight).
hasRole(newspaper, documentRole).

% --- fur ---
obj(fur).
hasPhysicalQuality(fur, soft_Deformable).
hasRole(fur, consumableRole).
affordsTask(fur, eatingDrinkingTask).

% --- pans ---
obj(pans).
hasPhysicalQuality(pans, rigid).
hasPhysicalQuality(pans, heated).
hasRole(pans, cookwareRole).
affordsTask(pans, foodPreparationTask).

% --- breakfast ---
obj(breakfast).
hasRole(breakfast, consumableRole).
affordsTask(breakfast, eatingDrinkingTask).

% --- labeler ---
obj(labeler).
hasPhysicalQuality(labeler, lightweight).
hasRole(labeler, toolRole).
affordsTask(labeler, storageTask).

% --- luggage ---
obj(luggage).
hasPhysicalQuality(luggage, lightweight).
hasRole(luggage, storageContainerRole).
affordsTask(luggage, storageTask).

% --- bicycle ---
obj(bicycle).
hasPhysicalQuality(bicycle, rigid).
hasPhysicalQuality(bicycle, heavy).
hasRole(bicycle, furnitureRole).
affordsTask(bicycle, leisureTask).
affordsTask(bicycle, workStudyTask).

% --- electronic appliance ---
obj(electronic_appliance).
hasPhysicalQuality(electronic_appliance, electronic).
hasPhysicalQuality(electronic_appliance, heavy).
hasRole(electronic_appliance, applianceRole).
affordsTask(electronic_appliance, workStudyTask).
affordsTask(electronic_appliance, leisureTask).

% --- heating room ---
obj(heating_room).
hasPhysicalQuality(heating_room, heated).
hasRole(heating_room, applianceRole).
affordsTask(heating_room, leisureTask).

% --- door with lock ---
obj(door_with_lock).
hasPhysicalQuality(door_with_lock, heavy).
hasRole(door_with_lock, furnitureRole).
affordsTask(door_with_lock, maintenanceTask).

% --- fountain ---
obj(fountain).
hasPhysicalQuality(fountain, liquid).
hasRole(fountain, storageContainerRole).
affordsTask(fountain, leisureTask).

% --- sculpting gel ---
obj(sculpting_gel).
hasPhysicalQuality(sculpting_gel, liquid).
hasPhysicalQuality(sculpting_gel, toxic_Hazardous).
hasRole(sculpting_gel, cleaningToolRole).
affordsTask(sculpting_gel, hygieneTask).

% --- tools ---
obj(tools).
hasPhysicalQuality(tools, heavy).
hasPhysicalQuality(tools, rigid).
hasRole(tools, toolRole).
affordsTask(tools, maintenanceTask).

% --- main entrance ---
obj(main_entrance).
hasRole(main_entrance, furnitureRole).
affordsTask(main_entrance, leisureTask).

% --- paper and pencil ---
obj(paper_and_pencil).
hasPhysicalQuality(paper_and_pencil, lightweight).
hasPhysicalQuality(paper_and_pencil, rigid).
hasRole(paper_and_pencil, toolRole).
affordsTask(paper_and_pencil, workStudyTask).

% --- bra ---
obj(bra).
hasPhysicalQuality(bra, soft_Deformable).
hasPhysicalQuality(bra, lightweight).
hasRole(bra, clothingRole).
affordsTask(bra, dressingTask).

% --- chine cotton ---
obj(chine_cotton).
hasPhysicalQuality(chine_cotton, soft_Deformable).
hasPhysicalQuality(chine_cotton, lightweight).
hasRole(chine_cotton, clothingRole).
affordsTask(chine_cotton, dressingTask).

% --- stairs down ---
obj(stairs_down).
hasPhysicalQuality(stairs_down, rigid).
hasRole(stairs_down, furnitureRole).

% --- tire iron ---
obj(tire_iron).
hasPhysicalQuality(tire_iron, heavy).
hasPhysicalQuality(tire_iron, rigid).
hasRole(tire_iron, toolRole).
affordsTask(tire_iron, maintenanceTask).

% --- wave clip ---
obj(wave_clip).
hasPhysicalQuality(wave_clip, lightweight).
hasRole(wave_clip, toolRole).
affordsTask(wave_clip, leisureTask).

% --- divider ---
obj(divider).
hasPhysicalQuality(divider, rigid).
hasRole(divider, furnitureRole).
affordsTask(divider, storageTask).

% --- needle ---
obj(needle).
hasPhysicalQuality(needle, sharp).
hasPhysicalQuality(needle, fragile).
hasRole(needle, utensilRole).
affordsTask(needle, foodPreparationTask).

% --- meal ---
obj(meal).
hasPhysicalQuality(meal, perishable).
hasRole(meal, consumableRole).
affordsTask(meal, eatingDrinkingTask).

% --- cloth linen ---
obj(cloth_linen).
hasPhysicalQuality(cloth_linen, soft_Deformable).
hasPhysicalQuality(cloth_linen, washable).
hasRole(cloth_linen, clothingRole).
affordsTask(cloth_linen, dressingTask).

% --- hair ---
obj(hair).
hasPhysicalQuality(hair, lightweight).
hasPhysicalQuality(hair, soft_Deformable).
hasRole(hair, toolRole).
affordsTask(hair, hygieneTask).

% --- groceries ---
obj(groceries).
hasPhysicalQuality(groceries, perishable).
hasRole(groceries, consumableRole).
affordsTask(groceries, eatingDrinkingTask).

% --- skin care article ---
obj(skin_care_article).
hasRole(skin_care_article, documentRole).
affordsTask(skin_care_article, leisureTask).

% --- balcony ---
obj(balcony).
hasPhysicalQuality(balcony, rigid).
hasRole(balcony, furnitureRole).
affordsTask(balcony, leisureTask).

% --- interior area ---
obj(interior_area).
hasPhysicalQuality(interior_area, rigid).
hasRole(interior_area, furnitureRole).
affordsTask(interior_area, leisureTask).
affordsTask(interior_area, workStudyTask).

% --- school book ---
obj(school_book).
hasPhysicalQuality(school_book, lightweight).
hasPhysicalQuality(school_book, rigid).
hasPhysicalQuality(school_book, washable).
hasRole(school_book, documentRole).
affordsTask(school_book, workStudyTask).

% --- entranceway ---
obj(entranceway).
hasRole(entranceway, furnitureRole).
affordsTask(entranceway, leisureTask).

% --- screw ---
obj(screw).
hasPhysicalQuality(screw, rigid).
hasPhysicalQuality(screw, heavy).
hasRole(screw, toolRole).
affordsTask(screw, maintenanceTask).

% --- dogs ---
obj(dogs).
hasPhysicalQuality(dogs, fragile).
hasPhysicalQuality(dogs, rigid).
hasRole(dogs, consumableRole).
affordsTask(dogs, eatingDrinkingTask).

% --- fire ---
obj(fire).
hasPhysicalQuality(fire, heated).
hasRole(fire, toolRole).
affordsTask(fire, maintenanceTask).
affordsTask(fire, leisureTask).

% --- magazines ---
obj(magazines).
hasPhysicalQuality(magazines, lightweight).
hasRole(magazines, documentRole).
affordsTask(magazines, leisureTask).

% --- magnets ---
obj(magnets).
hasRole(magnets, toolRole).
affordsTask(magnets, storageTask).

% --- front garden ---
obj(front_garden).
hasRole(front_garden, decorationRole).
affordsTask(front_garden, leisureTask).

% --- chimney ---
obj(chimney).
hasPhysicalQuality(chimney, rigid).
hasRole(chimney, furnitureRole).
affordsTask(chimney, maintenanceTask).

% --- place setting ---
obj(place_setting).
hasRole(place_setting, utensilRole).
affordsTask(place_setting, eatingDrinkingTask).

% --- science fiction books ---
obj(science_fiction_books).
hasRole(science_fiction_books, documentRole).
affordsTask(science_fiction_books, leisureTask).

% --- bass ---
obj(bass).
hasPhysicalQuality(bass, fragile).
hasRole(bass, consumableRole).
affordsTask(bass, eatingDrinkingTask).

% --- fountain pen ---
obj(fountain_pen).
hasPhysicalQuality(fountain_pen, lightweight).
hasPhysicalQuality(fountain_pen, rigid).
hasRole(fountain_pen, toolRole).

% --- laundry room ---
obj(laundry_room).
hasPhysicalQuality(laundry_room, heavy).
hasRole(laundry_room, storageContainerRole).
affordsTask(laundry_room, cleaningTask).

% --- sheet of paper ---
obj(sheet_of_paper).
hasPhysicalQuality(sheet_of_paper, lightweight).
hasPhysicalQuality(sheet_of_paper, rigid).
hasRole(sheet_of_paper, documentRole).

% --- hot tap ---
obj(hot_tap).
hasPhysicalQuality(hot_tap, electronic).
hasPhysicalQuality(hot_tap, heavy).
hasRole(hot_tap, applianceRole).
affordsTask(hot_tap, hygieneTask).
affordsTask(hot_tap, eatingDrinkingTask).

% --- boots ---
obj(boots).
hasPhysicalQuality(boots, heavy).
hasPhysicalQuality(boots, soft_Deformable).
hasPhysicalQuality(boots, washable).
hasRole(boots, clothingRole).
affordsTask(boots, dressingTask).

% --- flowers ---
obj(flowers).
hasPhysicalQuality(flowers, perishable).
hasPhysicalQuality(flowers, soft_Deformable).
hasRole(flowers, consumableRole).
affordsTask(flowers, leisureTask).
affordsTask(flowers, gardeningTask).

% --- spaghetti sauce ---
obj(spaghetti_sauce).
hasPhysicalQuality(spaghetti_sauce, liquid).
hasPhysicalQuality(spaghetti_sauce, perishable).
hasRole(spaghetti_sauce, consumableRole).
affordsTask(spaghetti_sauce, foodPreparationTask).

% --- grill ---
obj(grill).
hasPhysicalQuality(grill, heated).
hasRole(grill, cookwareRole).
affordsTask(grill, foodPreparationTask).

% --- beach towel ---
obj(beach_towel).
hasPhysicalQuality(beach_towel, soft_Deformable).
hasPhysicalQuality(beach_towel, washable).
hasPhysicalQuality(beach_towel, heavy).
hasRole(beach_towel, beddingRole).
affordsTask(beach_towel, leisureTask).

% --- fresh fruit ---
obj(fresh_fruit).
hasPhysicalQuality(fresh_fruit, perishable).
hasRole(fresh_fruit, consumableRole).
affordsTask(fresh_fruit, eatingDrinkingTask).

% --- crab ---
obj(crab).
hasPhysicalQuality(crab, fragile).
hasPhysicalQuality(crab, rigid).
hasRole(crab, consumableRole).
affordsTask(crab, eatingDrinkingTask).

% --- tool ---
obj(tool).
hasPhysicalQuality(tool, heavy).
hasPhysicalQuality(tool, rigid).
hasRole(tool, toolRole).
affordsTask(tool, maintenanceTask).

% --- gel ---
obj(gel).
hasPhysicalQuality(gel, liquid).
hasPhysicalQuality(gel, fragile).
hasPhysicalQuality(gel, soft_Deformable).
hasRole(gel, consumableRole).
affordsTask(gel, hygieneTask).
affordsTask(gel, leisureTask).

% --- hammers ---
obj(hammers).
hasPhysicalQuality(hammers, heavy).
hasPhysicalQuality(hammers, rigid).
hasRole(hammers, toolRole).
affordsTask(hammers, maintenanceTask).

% --- waxed dental floss ---
obj(waxed_dental_floss).
hasPhysicalQuality(waxed_dental_floss, lightweight).
hasPhysicalQuality(waxed_dental_floss, fragile).
hasRole(waxed_dental_floss, cleaningToolRole).
affordsTask(waxed_dental_floss, hygieneTask).

% --- lawn mower ---
obj(lawn_mower).
hasPhysicalQuality(lawn_mower, heavy).
hasPhysicalQuality(lawn_mower, rigid).
hasRole(lawn_mower, toolRole).
affordsTask(lawn_mower, maintenanceTask).

% --- game ---
obj(game).
hasRole(game, entertainmentRole).
affordsTask(game, leisureTask).

% --- front courtyard ---
obj(front_courtyard).
hasRole(front_courtyard, furnitureRole).
affordsTask(front_courtyard, leisureTask).
affordsTask(front_courtyard, gardeningTask).

% --- walls ---
obj(walls).
hasPhysicalQuality(walls, rigid).
hasRole(walls, furnitureRole).
affordsTask(walls, storageTask).

% --- stamp pad ---
obj(stamp_pad).
hasPhysicalQuality(stamp_pad, lightweight).
hasRole(stamp_pad, toolRole).
affordsTask(stamp_pad, foodPreparationTask).

% --- jacket ---
obj(jacket).
hasPhysicalQuality(jacket, soft_Deformable).
hasPhysicalQuality(jacket, washable).
hasRole(jacket, clothingRole).
affordsTask(jacket, dressingTask).

% --- cheque book ---
obj(cheque_book).
hasPhysicalQuality(cheque_book, lightweight).
hasRole(cheque_book, documentRole).
affordsTask(cheque_book, eatingDrinkingTask).

% --- lead pencil ---
obj(lead_pencil).
hasPhysicalQuality(lead_pencil, lightweight).
hasPhysicalQuality(lead_pencil, rigid).
hasRole(lead_pencil, toolRole).

% --- knives ---
obj(knives).
hasPhysicalQuality(knives, sharp).
hasPhysicalQuality(knives, rigid).
hasRole(knives, utensilRole).
affordsTask(knives, foodPreparationTask).

% --- cheque book holder ---
obj(cheque_book_holder).
hasPhysicalQuality(cheque_book_holder, lightweight).
hasPhysicalQuality(cheque_book_holder, rigid).
hasRole(cheque_book_holder, storageContainerRole).
affordsTask(cheque_book_holder, storageTask).

% --- entryway ---
obj(entryway).
hasRole(entryway, furnitureRole).
affordsTask(entryway, leisureTask).

% --- terrace ---
obj(terrace).
hasPhysicalQuality(terrace, rigid).
hasPhysicalQuality(terrace, heavy).
hasRole(terrace, furnitureRole).
affordsTask(terrace, leisureTask).
affordsTask(terrace, storageTask).

% --- neckwear ---
obj(neckwear).
hasPhysicalQuality(neckwear, soft_Deformable).
hasPhysicalQuality(neckwear, lightweight).
hasRole(neckwear, clothingRole).
affordsTask(neckwear, dressingTask).

% --- bottle of vodka ---
obj(bottle_of_vodka).
hasPhysicalQuality(bottle_of_vodka, liquid).
hasRole(bottle_of_vodka, consumableRole).
affordsTask(bottle_of_vodka, eatingDrinkingTask).

% --- swiss cheese ---
obj(swiss_cheese).
hasPhysicalQuality(swiss_cheese, perishable).
hasRole(swiss_cheese, consumableRole).
affordsTask(swiss_cheese, eatingDrinkingTask).

% --- paperclip ---
obj(paperclip).
hasPhysicalQuality(paperclip, lightweight).
hasPhysicalQuality(paperclip, rigid).
hasRole(paperclip, toolRole).
affordsTask(paperclip, workStudyTask).

% --- cup of coffee ---
obj(cup_of_coffee).
hasPhysicalQuality(cup_of_coffee, liquid).
hasRole(cup_of_coffee, consumableRole).
affordsTask(cup_of_coffee, eatingDrinkingTask).

% --- lawnmowers ---
obj(lawnmowers).
hasPhysicalQuality(lawnmowers, heavy).
hasRole(lawnmowers, toolRole).
affordsTask(lawnmowers, maintenanceTask).

% --- statue ---
obj(statue).
hasPhysicalQuality(statue, rigid).
hasRole(statue, decorationRole).

% --- desserts ---
obj(desserts).
hasPhysicalQuality(desserts, perishable).
hasRole(desserts, consumableRole).
affordsTask(desserts, eatingDrinkingTask).

% --- games ---
obj(games).
hasRole(games, entertainmentRole).
affordsTask(games, leisureTask).

% --- step chair ---
obj(step_chair).
hasPhysicalQuality(step_chair, rigid).
hasPhysicalQuality(step_chair, heavy).
hasRole(step_chair, furnitureRole).
affordsTask(step_chair, eatingDrinkingTask).
affordsTask(step_chair, storageTask).

% --- crash cymbal ---
obj(crash_cymbal).
hasPhysicalQuality(crash_cymbal, heavy).
hasPhysicalQuality(crash_cymbal, rigid).
hasRole(crash_cymbal, musicalInstrumentRole).
affordsTask(crash_cymbal, leisureTask).

% --- drinks ---
obj(drinks).
hasPhysicalQuality(drinks, liquid).
hasRole(drinks, consumableRole).
affordsTask(drinks, eatingDrinkingTask).

% --- room study ---
obj(room_study).
hasRole(room_study, furnitureRole).
affordsTask(room_study, workStudyTask).

% --- lawnmower ---
obj(lawnmower).
hasPhysicalQuality(lawnmower, heavy).
hasPhysicalQuality(lawnmower, rigid).
hasPhysicalQuality(lawnmower, electronic).
hasRole(lawnmower, toolRole).
affordsTask(lawnmower, maintenanceTask).

% --- pet ---
obj(pet).
hasPhysicalQuality(pet, soft_Deformable).
hasPhysicalQuality(pet, lightweight).
hasRole(pet, entertainmentRole).
affordsTask(pet, leisureTask).

% --- writing brush ---
obj(writing_brush).
hasPhysicalQuality(writing_brush, lightweight).
hasPhysicalQuality(writing_brush, rigid).
hasRole(writing_brush, toolRole).
affordsTask(writing_brush, leisureTask).
affordsTask(writing_brush, workStudyTask).

% --- food can ---
obj(food_can).
hasRole(food_can, storageContainerRole).
affordsTask(food_can, storageTask).

% --- fluoride mouthwash ---
obj(fluoride_mouthwash).
hasPhysicalQuality(fluoride_mouthwash, liquid).
hasPhysicalQuality(fluoride_mouthwash, toxic_Hazardous).
hasRole(fluoride_mouthwash, cleaningToolRole).
affordsTask(fluoride_mouthwash, hygieneTask).

% --- drawing room ---
obj(drawing_room).
hasPhysicalQuality(drawing_room, rigid).
hasRole(drawing_room, furnitureRole).
affordsTask(drawing_room, leisureTask).

% --- chinese food ---
obj(chinese_food).
hasPhysicalQuality(chinese_food, perishable).
hasRole(chinese_food, consumableRole).
affordsTask(chinese_food, eatingDrinkingTask).

% --- coffee table ---
obj(coffee_table).
hasPhysicalQuality(coffee_table, heavy).
hasPhysicalQuality(coffee_table, rigid).
hasRole(coffee_table, furnitureRole).
affordsTask(coffee_table, leisureTask).
affordsTask(coffee_table, storageTask).

% --- wedding ring ---
obj(wedding_ring).
hasPhysicalQuality(wedding_ring, fragile).
affordsTask(wedding_ring, leisureTask).

% --- stairwell ---
obj(stairwell).
hasRole(stairwell, furnitureRole).
affordsTask(stairwell, leisureTask).
affordsTask(stairwell, maintenanceTask).

% --- puppy ---
obj(puppy).
hasPhysicalQuality(puppy, soft_Deformable).
hasPhysicalQuality(puppy, lightweight).
affordsTask(puppy, leisureTask).

% --- corn ---
obj(corn).
hasPhysicalQuality(corn, perishable).
hasRole(corn, consumableRole).
affordsTask(corn, eatingDrinkingTask).

% --- magazine ---
obj(magazine).
hasPhysicalQuality(magazine, lightweight).
hasRole(magazine, documentRole).
affordsTask(magazine, leisureTask).

% --- disk ---
obj(disk).
hasRole(disk, storageContainerRole).
affordsTask(disk, storageTask).

% --- banana ---
obj(banana).
hasPhysicalQuality(banana, perishable).
hasRole(banana, consumableRole).
affordsTask(banana, eatingDrinkingTask).

% --- staple remover ---
obj(staple_remover).
hasPhysicalQuality(staple_remover, lightweight).
hasPhysicalQuality(staple_remover, rigid).
hasRole(staple_remover, toolRole).
affordsTask(staple_remover, maintenanceTask).

% --- trunk ---
obj(trunk).
hasPhysicalQuality(trunk, heavy).
hasRole(trunk, storageContainerRole).
affordsTask(trunk, storageTask).

% --- patio ---
obj(patio).
hasRole(patio, furnitureRole).
affordsTask(patio, leisureTask).

% --- cannabis ---
obj(cannabis).
hasPhysicalQuality(cannabis, perishable).
hasPhysicalQuality(cannabis, toxic_Hazardous).
hasRole(cannabis, consumableRole).
affordsTask(cannabis, leisureTask).

% --- parlor ---
obj(parlor).
hasRole(parlor, furnitureRole).
affordsTask(parlor, leisureTask).

% --- jack ---
obj(jack).
hasPhysicalQuality(jack, heavy).
hasPhysicalQuality(jack, rigid).
hasRole(jack, toolRole).
affordsTask(jack, maintenanceTask).

% --- hide bed sofa ---
obj(hide_bed_sofa).
hasPhysicalQuality(hide_bed_sofa, soft_Deformable).
hasPhysicalQuality(hide_bed_sofa, fragile).
hasRole(hide_bed_sofa, furnitureRole).
affordsTask(hide_bed_sofa, sleepingTask).
affordsTask(hide_bed_sofa, leisureTask).

% --- minibar ---
obj(minibar).
hasPhysicalQuality(minibar, heated).
hasPhysicalQuality(minibar, electronic).
hasPhysicalQuality(minibar, heavy).
hasRole(minibar, storageContainerRole).
affordsTask(minibar, eatingDrinkingTask).
affordsTask(minibar, storageTask).

% --- home office ---
obj(home_office).
hasRole(home_office, furnitureRole).
affordsTask(home_office, workStudyTask).

% --- acorns ---
obj(acorns).
hasPhysicalQuality(acorns, granular).
hasRole(acorns, consumableRole).
affordsTask(acorns, eatingDrinkingTask).

% --- batten ---
obj(batten).
hasPhysicalQuality(batten, rigid).
hasRole(batten, toolRole).
affordsTask(batten, maintenanceTask).

% --- basement ---
obj(basement).
hasPhysicalQuality(basement, heavy).
hasRole(basement, furnitureRole).
affordsTask(basement, storageTask).

% --- present ---
obj(present).
hasPhysicalQuality(present, lightweight).
hasRole(present, consumableRole).
affordsTask(present, eatingDrinkingTask).

% --- crackers ---
obj(crackers).
hasPhysicalQuality(crackers, rigid).
hasPhysicalQuality(crackers, granular).
hasRole(crackers, consumableRole).
affordsTask(crackers, eatingDrinkingTask).

% --- frame ---
obj(frame).
hasPhysicalQuality(frame, rigid).
hasRole(frame, furnitureRole).
affordsTask(frame, leisureTask).

% --- stairway ---
obj(stairway).
hasPhysicalQuality(stairway, rigid).
hasRole(stairway, furnitureRole).

% --- gift ---
obj(gift).
hasPhysicalQuality(gift, lightweight).
hasRole(gift, consumableRole).
affordsTask(gift, leisureTask).

% --- string ---
obj(string).
hasPhysicalQuality(string, lightweight).
hasRole(string, toolRole).
affordsTask(string, foodPreparationTask).
affordsTask(string, leisureTask).

% --- metronome ---
obj(metronome).
hasPhysicalQuality(metronome, electronic).
hasPhysicalQuality(metronome, lightweight).
hasRole(metronome, musicalInstrumentRole).
affordsTask(metronome, leisureTask).

% --- entrance hall ---
obj(entrance_hall).
hasRole(entrance_hall, furnitureRole).

% --- drink ---
obj(drink).
hasPhysicalQuality(drink, liquid).
hasRole(drink, consumableRole).
affordsTask(drink, eatingDrinkingTask).

