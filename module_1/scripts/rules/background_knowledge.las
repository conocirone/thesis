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

