% ==========================================
% BACKGROUND KNOWLEDGE FORMALE (SOMA)
% Generata da llama3.1:latest
% ==========================================

% --- cup ---
obj(cup).
hasPhysicalQuality(cup, hasContainer).
hasRole(cup, utensilRole).
affordsTask(cup, eatingDrinkingTask).

% --- salad ---
obj(salad).
hasPhysicalQuality(salad, perishable).
hasRole(salad, consumableRole).
affordsTask(salad, eatingDrinkingTask).

% --- velvet ---
obj(velvet).
hasPhysicalQuality(velvet, soft_Deformable).
hasPhysicalQuality(velvet, washable).
hasRole(velvet, clothingRole).
affordsTask(velvet, dressingTask).

% --- book end ---
obj(book_end).
hasPhysicalQuality(book_end, heavy).
hasPhysicalQuality(book_end, rigid).
hasRole(book_end, furnitureRole).
affordsTask(book_end, storageTask).

% --- upright piano ---
obj(upright_piano).
hasPhysicalQuality(upright_piano, heavy).
hasPhysicalQuality(upright_piano, rigid).
hasRole(upright_piano, entertainmentRole).
hasRole(upright_piano, musicalInstrumentRole).
affordsTask(upright_piano, leisureTask).
affordsTask(upright_piano, workStudyTask).

% --- shoes ---
obj(shoes).
hasPhysicalQuality(shoes, lightweight).
hasPhysicalQuality(shoes, fragile).
hasRole(shoes, clothingRole).
affordsTask(shoes, dressingTask).

% --- teaspoon ---
obj(teaspoon).
hasPhysicalQuality(teaspoon, lightweight).
hasPhysicalQuality(teaspoon, rigid).
hasRole(teaspoon, utensilRole).
affordsTask(teaspoon, foodPreparationTask).

% --- swiss cheese ---
obj(swiss_cheese).
hasPhysicalQuality(swiss_cheese, perishable).
hasRole(swiss_cheese, consumableRole).
affordsTask(swiss_cheese, eatingDrinkingTask).

% --- skirt ---
obj(skirt).
hasPhysicalQuality(skirt, soft_Deformable).
hasPhysicalQuality(skirt, lightweight).
hasRole(skirt, clothingRole).
affordsTask(skirt, dressingTask).

% --- limes ---
obj(limes).
hasPhysicalQuality(limes, perishable).
hasRole(limes, consumableRole).
affordsTask(limes, eatingDrinkingTask).

% --- popcorn ---
obj(popcorn).
hasPhysicalQuality(popcorn, perishable).
hasRole(popcorn, consumableRole).
affordsTask(popcorn, eatingDrinkingTask).

% --- light source ---
obj(light_source).
hasPhysicalQuality(light_source, heated).
hasPhysicalQuality(light_source, electronic).
hasRole(light_source, lightingRole).
affordsTask(light_source, leisureTask).

% --- utensils ---
obj(utensils).
hasRole(utensils, utensilRole).

% --- rose ---
obj(rose).
hasPhysicalQuality(rose, perishable).
hasRole(rose, consumableRole).

% --- nuts ---
obj(nuts).
hasPhysicalQuality(nuts, perishable).
hasPhysicalQuality(nuts, granular).
hasRole(nuts, consumableRole).
affordsTask(nuts, eatingDrinkingTask).

% --- tables ---
obj(tables).
hasPhysicalQuality(tables, rigid).
hasPhysicalQuality(tables, heavy).
hasRole(tables, furnitureRole).
affordsTask(tables, storageTask).

% --- apple ---
obj(apple).
hasPhysicalQuality(apple, perishable).
hasPhysicalQuality(apple, fragile).
hasRole(apple, consumableRole).
affordsTask(apple, eatingDrinkingTask).

% --- cable ---
obj(cable).
hasPhysicalQuality(cable, electronic).
hasRole(cable, toolRole).
affordsTask(cable, maintenanceTask).

% --- ketchup ---
obj(ketchup).
hasPhysicalQuality(ketchup, liquid).
hasPhysicalQuality(ketchup, perishable).
hasRole(ketchup, consumableRole).
affordsTask(ketchup, eatingDrinkingTask).

% --- tissue holder ---
obj(tissue_holder).
hasPhysicalQuality(tissue_holder, lightweight).
hasPhysicalQuality(tissue_holder, rigid).
hasRole(tissue_holder, storageContainerRole).
affordsTask(tissue_holder, storageTask).

% --- weather vane ---
obj(weather_vane).
hasRole(weather_vane, toolRole).

% --- dishwasher ---
obj(dishwasher).
hasPhysicalQuality(dishwasher, electronic).
hasPhysicalQuality(dishwasher, heavy).
hasRole(dishwasher, applianceRole).
affordsTask(dishwasher, cleaningTask).

% --- attache case ---
obj(attache_case).
hasPhysicalQuality(attache_case, lightweight).
hasPhysicalQuality(attache_case, soft_Deformable).
hasRole(attache_case, storageContainerRole).
affordsTask(attache_case, workStudyTask).

% --- album ---
obj(album).
hasPhysicalQuality(album, lightweight).
hasRole(album, documentRole).
affordsTask(album, leisureTask).

% --- carpet ---
obj(carpet).
hasPhysicalQuality(carpet, soft_Deformable).
hasPhysicalQuality(carpet, washable).
hasRole(carpet, furnitureRole).
affordsTask(carpet, leisureTask).

% --- cookie ---
obj(cookie).
hasPhysicalQuality(cookie, granular).
hasRole(cookie, consumableRole).
affordsTask(cookie, eatingDrinkingTask).

% --- cold faucet ---
obj(cold_faucet).
hasPhysicalQuality(cold_faucet, liquid).
hasPhysicalQuality(cold_faucet, heavy).
hasRole(cold_faucet, utensilRole).
affordsTask(cold_faucet, eatingDrinkingTask).

% --- credit card wallet ---
obj(credit_card_wallet).
hasPhysicalQuality(credit_card_wallet, lightweight).
hasPhysicalQuality(credit_card_wallet, hasContainer).
hasRole(credit_card_wallet, storageContainerRole).
affordsTask(credit_card_wallet, leisureTask).

% --- dustbin ---
obj(dustbin).
hasPhysicalQuality(dustbin, heavy).
hasPhysicalQuality(dustbin, rigid).
hasRole(dustbin, storageContainerRole).
hasRole(dustbin, wasteRole).
affordsTask(dustbin, wasteDisposalTask).

% --- night table ---
obj(night_table).
hasPhysicalQuality(night_table, heavy).
hasPhysicalQuality(night_table, rigid).
hasRole(night_table, furnitureRole).
affordsTask(night_table, storageTask).

% --- rafter ---
obj(rafter).
hasPhysicalQuality(rafter, rigid).
hasPhysicalQuality(rafter, heavy).
hasRole(rafter, furnitureRole).

% --- thumb tack ---
obj(thumb_tack).
hasPhysicalQuality(thumb_tack, sharp).
hasPhysicalQuality(thumb_tack, lightweight).
hasRole(thumb_tack, toolRole).
affordsTask(thumb_tack, maintenanceTask).

% --- artichoke hearts ---
obj(artichoke_hearts).
hasPhysicalQuality(artichoke_hearts, perishable).
hasRole(artichoke_hearts, consumableRole).
affordsTask(artichoke_hearts, eatingDrinkingTask).

% --- freezer ---
obj(freezer).
hasPhysicalQuality(freezer, requiresFreezing).
hasRole(freezer, applianceRole).
affordsTask(freezer, storageTask).

% --- ice cubes ---
obj(ice_cubes).
hasPhysicalQuality(ice_cubes, requiresFreezing).
hasPhysicalQuality(ice_cubes, perishable).
hasRole(ice_cubes, consumableRole).
affordsTask(ice_cubes, eatingDrinkingTask).

% --- mug ---
obj(mug).
hasPhysicalQuality(mug, liquid).
hasPhysicalQuality(mug, hasContainer).
hasRole(mug, utensilRole).
affordsTask(mug, eatingDrinkingTask).

% --- tabby cat ---
obj(tabby_cat).
hasPhysicalQuality(tabby_cat, fragile).
hasPhysicalQuality(tabby_cat, soft_Deformable).
hasRole(tabby_cat, entertainmentRole).
affordsTask(tabby_cat, leisureTask).

% --- tin cans ---
obj(tin_cans).
hasPhysicalQuality(tin_cans, heavy).
hasPhysicalQuality(tin_cans, rigid).
hasRole(tin_cans, storageContainerRole).
affordsTask(tin_cans, storageTask).

% --- pan ---
obj(pan).
hasPhysicalQuality(pan, heated).
hasPhysicalQuality(pan, rigid).
hasRole(pan, cookwareRole).
affordsTask(pan, foodPreparationTask).

% --- coke ---
obj(coke).
hasPhysicalQuality(coke, liquid).
hasRole(coke, consumableRole).
affordsTask(coke, eatingDrinkingTask).

% --- stain ---
obj(stain).
hasRole(stain, cleaningToolRole).
affordsTask(stain, cleaningTask).

% --- old books ---
obj(old_books).
hasPhysicalQuality(old_books, fragile).
hasPhysicalQuality(old_books, lightweight).
hasRole(old_books, documentRole).
affordsTask(old_books, leisureTask).

% --- tape measure ---
obj(tape_measure).
hasPhysicalQuality(tape_measure, lightweight).
hasPhysicalQuality(tape_measure, rigid).
hasRole(tape_measure, toolRole).
affordsTask(tape_measure, maintenanceTask).

% --- spoon ---
obj(spoon).
hasPhysicalQuality(spoon, lightweight).
hasPhysicalQuality(spoon, rigid).
hasPhysicalQuality(spoon, sharp).
hasRole(spoon, utensilRole).
affordsTask(spoon, foodPreparationTask).

% --- phone book ---
obj(phone_book).
hasPhysicalQuality(phone_book, heavy).
hasRole(phone_book, documentRole).

% --- closet ---
obj(closet).
hasPhysicalQuality(closet, heavy).
hasPhysicalQuality(closet, rigid).
hasRole(closet, storageContainerRole).
affordsTask(closet, storageTask).

% --- smoothie ---
obj(smoothie).
hasPhysicalQuality(smoothie, perishable).
hasPhysicalQuality(smoothie, liquid).
hasRole(smoothie, consumableRole).
affordsTask(smoothie, eatingDrinkingTask).

% --- self adhesive label ---
obj(self_adhesive_label).
hasPhysicalQuality(self_adhesive_label, soft_Deformable).
hasPhysicalQuality(self_adhesive_label, lightweight).
hasRole(self_adhesive_label, toolRole).
affordsTask(self_adhesive_label, maintenanceTask).

% --- remote control ---
obj(remote_control).
hasPhysicalQuality(remote_control, electronic).
hasPhysicalQuality(remote_control, lightweight).
hasRole(remote_control, toolRole).
affordsTask(remote_control, leisureTask).

% --- horn ---
obj(horn).
hasPhysicalQuality(horn, lightweight).
hasPhysicalQuality(horn, rigid).
hasRole(horn, musicalInstrumentRole).
affordsTask(horn, leisureTask).

% --- mirror ---
obj(mirror).
hasPhysicalQuality(mirror, rigid).
hasPhysicalQuality(mirror, electronic).
hasRole(mirror, decorationRole).

% --- frying pan ---
obj(frying_pan).
hasPhysicalQuality(frying_pan, heated).
hasPhysicalQuality(frying_pan, rigid).
hasRole(frying_pan, cookwareRole).
affordsTask(frying_pan, foodPreparationTask).

% --- storage furniture ---
obj(storage_furniture).
hasPhysicalQuality(storage_furniture, heavy).
hasPhysicalQuality(storage_furniture, rigid).
hasRole(storage_furniture, furnitureRole).
affordsTask(storage_furniture, storageTask).

% --- bar stool ---
obj(bar_stool).
hasPhysicalQuality(bar_stool, heavy).
hasPhysicalQuality(bar_stool, rigid).
hasRole(bar_stool, furnitureRole).
affordsTask(bar_stool, leisureTask).

% --- key ---
obj(key).
hasPhysicalQuality(key, sharp).
hasRole(key, toolRole).
affordsTask(key, maintenanceTask).

% --- gate leg table ---
obj(gate_leg_table).
hasPhysicalQuality(gate_leg_table, heavy).
hasPhysicalQuality(gate_leg_table, rigid).
hasRole(gate_leg_table, furnitureRole).
affordsTask(gate_leg_table, storageTask).

% --- celery ---
obj(celery).
hasPhysicalQuality(celery, perishable).
hasPhysicalQuality(celery, granular).
hasRole(celery, consumableRole).
affordsTask(celery, eatingDrinkingTask).

% --- artichokes ---
obj(artichokes).
hasPhysicalQuality(artichokes, perishable).
hasRole(artichokes, consumableRole).
affordsTask(artichokes, eatingDrinkingTask).

% --- dictionary ---
obj(dictionary).
hasPhysicalQuality(dictionary, electronic).
hasPhysicalQuality(dictionary, lightweight).
hasRole(dictionary, toolRole).
affordsTask(dictionary, workStudyTask).

% --- rice ---
obj(rice).
hasPhysicalQuality(rice, granular).
hasRole(rice, consumableRole).
affordsTask(rice, foodPreparationTask).

% --- aluminum foil ---
obj(aluminum_foil).
hasPhysicalQuality(aluminum_foil, lightweight).
hasPhysicalQuality(aluminum_foil, rigid).
hasPhysicalQuality(aluminum_foil, fragile).
hasRole(aluminum_foil, cookwareRole).
affordsTask(aluminum_foil, foodPreparationTask).

% --- counter ---
obj(counter).
hasPhysicalQuality(counter, heavy).
hasPhysicalQuality(counter, rigid).
hasRole(counter, furnitureRole).
affordsTask(counter, workStudyTask).

% --- pillow ---
obj(pillow).
hasPhysicalQuality(pillow, soft_Deformable).
hasPhysicalQuality(pillow, lightweight).
hasRole(pillow, beddingRole).
affordsTask(pillow, sleepingTask).

% --- pickle ---
obj(pickle).
hasPhysicalQuality(pickle, perishable).
hasRole(pickle, consumableRole).
affordsTask(pickle, eatingDrinkingTask).

% --- bottled water ---
obj(bottled_water).
hasPhysicalQuality(bottled_water, liquid).
hasRole(bottled_water, consumableRole).
affordsTask(bottled_water, eatingDrinkingTask).

% --- gate ---
obj(gate).
hasPhysicalQuality(gate, heavy).
hasPhysicalQuality(gate, rigid).
hasRole(gate, furnitureRole).
affordsTask(gate, maintenanceTask).

% --- check ---
obj(check).
hasPhysicalQuality(check, electronic).
hasRole(check, toolRole).
affordsTask(check, maintenanceTask).

% --- orange juice ---
obj(orange_juice).
hasPhysicalQuality(orange_juice, perishable).
hasRole(orange_juice, consumableRole).
affordsTask(orange_juice, eatingDrinkingTask).

% --- cardboard ---
obj(cardboard).
hasPhysicalQuality(cardboard, granular).
hasRole(cardboard, storageContainerRole).
hasRole(cardboard, furnitureRole).
affordsTask(cardboard, maintenanceTask).

% --- bill file ---
obj(bill_file).
hasPhysicalQuality(bill_file, lightweight).
hasPhysicalQuality(bill_file, washable).
hasRole(bill_file, storageContainerRole).
affordsTask(bill_file, storageTask).

% --- fish ---
obj(fish).
hasPhysicalQuality(fish, perishable).
hasPhysicalQuality(fish, liquid).
hasRole(fish, consumableRole).
affordsTask(fish, eatingDrinkingTask).

% --- desk drawer ---
obj(desk_drawer).
hasPhysicalQuality(desk_drawer, lightweight).
hasPhysicalQuality(desk_drawer, rigid).
hasRole(desk_drawer, storageContainerRole).
affordsTask(desk_drawer, workStudyTask).

% --- card case ---
obj(card_case).
hasPhysicalQuality(card_case, lightweight).
hasPhysicalQuality(card_case, hasContainer).
hasRole(card_case, storageContainerRole).
affordsTask(card_case, storageTask).

% --- faucet overflow ---
obj(faucet_overflow).
hasPhysicalQuality(faucet_overflow, liquid).
hasRole(faucet_overflow, toolRole).
affordsTask(faucet_overflow, maintenanceTask).

% --- oilcloth ---
obj(oilcloth).
hasPhysicalQuality(oilcloth, soft_Deformable).
hasPhysicalQuality(oilcloth, washable).
hasRole(oilcloth, clothingRole).
affordsTask(oilcloth, leisureTask).

% --- roof ---
obj(roof).
hasPhysicalQuality(roof, rigid).
hasPhysicalQuality(roof, heavy).
hasRole(roof, furnitureRole).

% --- compost ---
obj(compost).
hasPhysicalQuality(compost, perishable).
hasRole(compost, wasteRole).
hasRole(compost, consumableRole).
affordsTask(compost, maintenanceTask).

% --- stairs ---
obj(stairs).
hasPhysicalQuality(stairs, rigid).
hasPhysicalQuality(stairs, heavy).
hasRole(stairs, furnitureRole).
affordsTask(stairs, maintenanceTask).

% --- denim ---
obj(denim).
hasPhysicalQuality(denim, soft_Deformable).
hasPhysicalQuality(denim, washable).
hasRole(denim, clothingRole).
affordsTask(denim, dressingTask).

% --- carrots ---
obj(carrots).
hasPhysicalQuality(carrots, perishable).
hasRole(carrots, consumableRole).
affordsTask(carrots, foodPreparationTask).

% --- bookend ---
obj(bookend).
hasPhysicalQuality(bookend, heavy).
hasPhysicalQuality(bookend, rigid).
hasRole(bookend, furnitureRole).
affordsTask(bookend, storageTask).

% --- film ---
obj(film).
hasPhysicalQuality(film, fragile).
hasRole(film, entertainmentRole).
affordsTask(film, leisureTask).

% --- pocket ---
obj(pocket).
hasPhysicalQuality(pocket, lightweight).
hasPhysicalQuality(pocket, soft_Deformable).
hasRole(pocket, storageContainerRole).
affordsTask(pocket, storageTask).

% --- hot sauce ---
obj(hot_sauce).
hasPhysicalQuality(hot_sauce, liquid).
hasPhysicalQuality(hot_sauce, perishable).
hasRole(hot_sauce, consumableRole).
affordsTask(hot_sauce, eatingDrinkingTask).

% --- slippers ---
obj(slippers).
hasPhysicalQuality(slippers, soft_Deformable).
hasPhysicalQuality(slippers, lightweight).
hasRole(slippers, clothingRole).
affordsTask(slippers, dressingTask).

% --- armchair ---
obj(armchair).
hasPhysicalQuality(armchair, heavy).
hasRole(armchair, furnitureRole).
affordsTask(armchair, leisureTask).

% --- bed sheet ---
obj(bed_sheet).
hasPhysicalQuality(bed_sheet, soft_Deformable).
hasPhysicalQuality(bed_sheet, washable).
hasRole(bed_sheet, beddingRole).
affordsTask(bed_sheet, sleepingTask).

% --- lamp ---
obj(lamp).
hasPhysicalQuality(lamp, electronic).
hasPhysicalQuality(lamp, lightweight).
hasRole(lamp, lightingRole).
affordsTask(lamp, leisureTask).

% --- cardboard box ---
obj(cardboard_box).
hasPhysicalQuality(cardboard_box, lightweight).
hasPhysicalQuality(cardboard_box, rigid).
hasRole(cardboard_box, storageContainerRole).
affordsTask(cardboard_box, storageTask).

% --- tiles ---
obj(tiles).
hasPhysicalQuality(tiles, rigid).
hasPhysicalQuality(tiles, granular).
hasRole(tiles, furnitureRole).

% --- lock ---
obj(lock).
hasPhysicalQuality(lock, heavy).
hasRole(lock, toolRole).
affordsTask(lock, maintenanceTask).

% --- wash cloth ---
obj(wash_cloth).
hasPhysicalQuality(wash_cloth, soft_Deformable).
hasPhysicalQuality(wash_cloth, washable).
hasRole(wash_cloth, cleaningToolRole).
affordsTask(wash_cloth, hygieneTask).

% --- shrimp ---
obj(shrimp).
hasPhysicalQuality(shrimp, perishable).
hasPhysicalQuality(shrimp, fragile).
hasRole(shrimp, consumableRole).
affordsTask(shrimp, eatingDrinkingTask).

% --- telephone book ---
obj(telephone_book).
hasPhysicalQuality(telephone_book, lightweight).
hasPhysicalQuality(telephone_book, fragile).
hasRole(telephone_book, documentRole).
affordsTask(telephone_book, workStudyTask).

% --- pencil sharpener ---
obj(pencil_sharpener).
hasPhysicalQuality(pencil_sharpener, heavy).
hasPhysicalQuality(pencil_sharpener, rigid).
hasRole(pencil_sharpener, toolRole).
affordsTask(pencil_sharpener, maintenanceTask).

% --- glasses case ---
obj(glasses_case).
hasPhysicalQuality(glasses_case, lightweight).
hasPhysicalQuality(glasses_case, soft_Deformable).
hasRole(glasses_case, storageContainerRole).
affordsTask(glasses_case, storageTask).

% --- one person chair ---
obj(one_person_chair).
hasPhysicalQuality(one_person_chair, rigid).
hasRole(one_person_chair, furnitureRole).
affordsTask(one_person_chair, leisureTask).

% --- bra ---
obj(bra).
hasPhysicalQuality(bra, soft_Deformable).
hasPhysicalQuality(bra, lightweight).
hasRole(bra, clothingRole).
affordsTask(bra, dressingTask).

% --- parlor ---
obj(parlor).
hasRole(parlor, furnitureRole).

% --- phillips screwdriver ---
obj(phillips_screwdriver).
hasPhysicalQuality(phillips_screwdriver, rigid).
hasPhysicalQuality(phillips_screwdriver, lightweight).
hasRole(phillips_screwdriver, toolRole).
affordsTask(phillips_screwdriver, maintenanceTask).

% --- poster ---
obj(poster).
hasRole(poster, decorationRole).

% --- drawer ---
obj(drawer).
hasPhysicalQuality(drawer, hasContainer).
hasRole(drawer, storageContainerRole).
hasRole(drawer, furnitureRole).
affordsTask(drawer, storageTask).

% --- phillips head screwdriver ---
obj(phillips_head_screwdriver).
hasPhysicalQuality(phillips_head_screwdriver, rigid).
hasPhysicalQuality(phillips_head_screwdriver, heavy).
hasRole(phillips_head_screwdriver, toolRole).
affordsTask(phillips_head_screwdriver, maintenanceTask).

% --- mustard ---
obj(mustard).
hasPhysicalQuality(mustard, liquid).
hasRole(mustard, consumableRole).
affordsTask(mustard, eatingDrinkingTask).

% --- acne medication ---
obj(acne_medication).
hasPhysicalQuality(acne_medication, perishable).
hasPhysicalQuality(acne_medication, toxic_Hazardous).
hasRole(acne_medication, consumableRole).
affordsTask(acne_medication, hygieneTask).

% --- disposable razor ---
obj(disposable_razor).
hasPhysicalQuality(disposable_razor, sharp).
hasPhysicalQuality(disposable_razor, fragile).
hasRole(disposable_razor, utensilRole).
affordsTask(disposable_razor, foodPreparationTask).

% --- pillow case ---
obj(pillow_case).
hasPhysicalQuality(pillow_case, soft_Deformable).
hasPhysicalQuality(pillow_case, washable).
hasRole(pillow_case, beddingRole).
affordsTask(pillow_case, sleepingTask).

% --- buttons ---
obj(buttons).
hasPhysicalQuality(buttons, lightweight).
hasPhysicalQuality(buttons, rigid).
hasRole(buttons, utensilRole).

% --- mayonnaise ---
obj(mayonnaise).
hasPhysicalQuality(mayonnaise, perishable).
hasPhysicalQuality(mayonnaise, liquid).
hasRole(mayonnaise, consumableRole).
affordsTask(mayonnaise, eatingDrinkingTask).

% --- table cloth ---
obj(table_cloth).
hasPhysicalQuality(table_cloth, soft_Deformable).
hasPhysicalQuality(table_cloth, lightweight).
hasRole(table_cloth, beddingRole).

% --- air conditioner ---
obj(air_conditioner).
hasPhysicalQuality(air_conditioner, requiresCooling).
hasPhysicalQuality(air_conditioner, electronic).
hasPhysicalQuality(air_conditioner, heavy).
hasRole(air_conditioner, applianceRole).

% --- calendar ---
obj(calendar).
hasRole(calendar, documentRole).
affordsTask(calendar, workStudyTask).

% --- cd rom ---
obj(cd_rom).
hasPhysicalQuality(cd_rom, electronic).
hasPhysicalQuality(cd_rom, lightweight).
hasRole(cd_rom, storageContainerRole).
affordsTask(cd_rom, workStudyTask).

% --- peas ---
obj(peas).
hasPhysicalQuality(peas, perishable).
hasRole(peas, consumableRole).
affordsTask(peas, eatingDrinkingTask).

% --- dinner plate ---
obj(dinner_plate).
hasPhysicalQuality(dinner_plate, rigid).
hasPhysicalQuality(dinner_plate, hasContainer).
hasRole(dinner_plate, utensilRole).
affordsTask(dinner_plate, eatingDrinkingTask).

% --- trash container ---
obj(trash_container).
hasPhysicalQuality(trash_container, heavy).
hasPhysicalQuality(trash_container, hasContainer).
hasRole(trash_container, storageContainerRole).
affordsTask(trash_container, wasteDisposalTask).

% --- checkbook ---
obj(checkbook).
hasRole(checkbook, documentRole).

% --- detergent ---
obj(detergent).
hasPhysicalQuality(detergent, liquid).
hasPhysicalQuality(detergent, toxic_Hazardous).
hasRole(detergent, cleaningToolRole).
affordsTask(detergent, cleaningTask).

% --- wardrobe ---
obj(wardrobe).
hasPhysicalQuality(wardrobe, heavy).
hasPhysicalQuality(wardrobe, rigid).
hasRole(wardrobe, furnitureRole).
affordsTask(wardrobe, storageTask).

% --- bucket ---
obj(bucket).
hasPhysicalQuality(bucket, hasContainer).
hasRole(bucket, storageContainerRole).
affordsTask(bucket, storageTask).

% --- salad spinner ---
obj(salad_spinner).
hasPhysicalQuality(salad_spinner, lightweight).
hasPhysicalQuality(salad_spinner, rigid).
hasRole(salad_spinner, utensilRole).
affordsTask(salad_spinner, foodPreparationTask).

% --- container ---
obj(container).
hasPhysicalQuality(container, hasContainer).
hasRole(container, storageContainerRole).
affordsTask(container, storageTask).

% --- barbecue ---
obj(barbecue).
hasPhysicalQuality(barbecue, heated).
hasRole(barbecue, cookwareRole).
hasRole(barbecue, toolRole).
affordsTask(barbecue, foodPreparationTask).

% --- drill ---
obj(drill).
hasPhysicalQuality(drill, heavy).
hasPhysicalQuality(drill, rigid).
hasPhysicalQuality(drill, isRotary).
hasRole(drill, toolRole).
affordsTask(drill, maintenanceTask).

% --- lemon ---
obj(lemon).
hasPhysicalQuality(lemon, perishable).
hasPhysicalQuality(lemon, fragile).
hasRole(lemon, consumableRole).
affordsTask(lemon, eatingDrinkingTask).

% --- dust ---
obj(dust).
hasPhysicalQuality(dust, fragile).
hasRole(dust, wasteRole).

% --- vcr ---
obj(vcr).
hasPhysicalQuality(vcr, electronic).
hasPhysicalQuality(vcr, heavy).
hasRole(vcr, applianceRole).
affordsTask(vcr, leisureTask).

% --- garlic ---
obj(garlic).
hasPhysicalQuality(garlic, perishable).
hasRole(garlic, consumableRole).
affordsTask(garlic, foodPreparationTask).

% --- pears ---
obj(pears).
hasPhysicalQuality(pears, perishable).
hasRole(pears, consumableRole).
affordsTask(pears, eatingDrinkingTask).

% --- bell ---
obj(bell).
hasPhysicalQuality(bell, rigid).
hasPhysicalQuality(bell, lightweight).
hasRole(bell, toolRole).
affordsTask(bell, maintenanceTask).

% --- knives ---
obj(knives).
hasPhysicalQuality(knives, sharp).
hasPhysicalQuality(knives, rigid).
hasRole(knives, utensilRole).
affordsTask(knives, foodPreparationTask).

% --- wine ---
obj(wine).
hasPhysicalQuality(wine, perishable).
hasPhysicalQuality(wine, liquid).
hasRole(wine, consumableRole).
affordsTask(wine, eatingDrinkingTask).

% --- container cup ---
obj(container_cup).
hasPhysicalQuality(container_cup, hasContainer).
hasRole(container_cup, utensilRole).
hasRole(container_cup, storageContainerRole).
affordsTask(container_cup, eatingDrinkingTask).
affordsTask(container_cup, storageTask).

% --- bath ---
obj(bath).
hasPhysicalQuality(bath, soft_Deformable).
hasPhysicalQuality(bath, washable).
hasRole(bath, cleaningToolRole).
affordsTask(bath, hygieneTask).

% --- ventilation system ---
obj(ventilation_system).
hasPhysicalQuality(ventilation_system, electronic).
hasPhysicalQuality(ventilation_system, heavy).
hasRole(ventilation_system, applianceRole).
affordsTask(ventilation_system, maintenanceTask).

% --- lemon curd ---
obj(lemon_curd).
hasPhysicalQuality(lemon_curd, perishable).
hasRole(lemon_curd, consumableRole).
affordsTask(lemon_curd, eatingDrinkingTask).

% --- luggage ---
obj(luggage).
hasPhysicalQuality(luggage, lightweight).
hasPhysicalQuality(luggage, hasContainer).
hasRole(luggage, storageContainerRole).

% --- wheel ---
obj(wheel).
hasPhysicalQuality(wheel, rigid).
hasPhysicalQuality(wheel, lightweight).
hasRole(wheel, toolRole).
affordsTask(wheel, maintenanceTask).

% --- toolbox ---
obj(toolbox).
hasPhysicalQuality(toolbox, heavy).
hasPhysicalQuality(toolbox, rigid).
hasRole(toolbox, toolRole).
affordsTask(toolbox, maintenanceTask).

% --- window curtain ---
obj(window_curtain).
hasPhysicalQuality(window_curtain, soft_Deformable).
hasPhysicalQuality(window_curtain, lightweight).
hasRole(window_curtain, decorationRole).
affordsTask(window_curtain, leisureTask).

% --- file ---
obj(file).
hasPhysicalQuality(file, lightweight).
hasRole(file, documentRole).
affordsTask(file, storageTask).

% --- shower switch ---
obj(shower_switch).
hasPhysicalQuality(shower_switch, electronic).
hasPhysicalQuality(shower_switch, lightweight).
hasRole(shower_switch, toolRole).
affordsTask(shower_switch, maintenanceTask).

% --- polish ---
obj(polish).
hasPhysicalQuality(polish, liquid).
hasRole(polish, cleaningToolRole).
affordsTask(polish, cleaningTask).

% --- computer ---
obj(computer).
hasPhysicalQuality(computer, electronic).
hasPhysicalQuality(computer, heavy).
hasRole(computer, applianceRole).
affordsTask(computer, workStudyTask).

% --- dog ---
obj(dog).
hasPhysicalQuality(dog, fragile).
hasPhysicalQuality(dog, soft_Deformable).
affordsTask(dog, leisureTask).

% --- staircase ---
obj(staircase).
hasPhysicalQuality(staircase, rigid).
hasPhysicalQuality(staircase, heavy).
hasRole(staircase, furnitureRole).
affordsTask(staircase, maintenanceTask).

% --- tar ---
obj(tar).
hasPhysicalQuality(tar, granular).
hasPhysicalQuality(tar, fragile).
hasRole(tar, consumableRole).

% --- dental floss ---
obj(dental_floss).
hasPhysicalQuality(dental_floss, lightweight).
hasPhysicalQuality(dental_floss, fragile).
hasRole(dental_floss, cleaningToolRole).
affordsTask(dental_floss, hygieneTask).

% --- butter ---
obj(butter).
hasPhysicalQuality(butter, perishable).
hasPhysicalQuality(butter, granular).
hasRole(butter, consumableRole).
affordsTask(butter, eatingDrinkingTask).

% --- refrigerator ---
obj(refrigerator).
hasPhysicalQuality(refrigerator, requiresCooling).
hasPhysicalQuality(refrigerator, electronic).
hasPhysicalQuality(refrigerator, heavy).
hasRole(refrigerator, applianceRole).
affordsTask(refrigerator, storageTask).

% --- love seat ---
obj(love_seat).
hasPhysicalQuality(love_seat, soft_Deformable).
hasPhysicalQuality(love_seat, heavy).
hasRole(love_seat, furnitureRole).
affordsTask(love_seat, storageTask).

% --- folder ---
obj(folder).
hasRole(folder, storageContainerRole).
affordsTask(folder, storageTask).

% --- spatula ---
obj(spatula).
hasPhysicalQuality(spatula, rigid).
hasPhysicalQuality(spatula, hasBlade).
hasRole(spatula, utensilRole).
affordsTask(spatula, foodPreparationTask).

% --- aspirin ---
obj(aspirin).
hasPhysicalQuality(aspirin, perishable).
hasPhysicalQuality(aspirin, toxic_Hazardous).
hasRole(aspirin, consumableRole).
affordsTask(aspirin, eatingDrinkingTask).

% --- pineapple ---
obj(pineapple).
hasPhysicalQuality(pineapple, perishable).
hasRole(pineapple, consumableRole).
affordsTask(pineapple, eatingDrinkingTask).

% --- whisky ---
obj(whisky).
hasPhysicalQuality(whisky, liquid).
hasPhysicalQuality(whisky, perishable).
hasRole(whisky, consumableRole).
affordsTask(whisky, eatingDrinkingTask).

% --- glasses ---
obj(glasses).
hasPhysicalQuality(glasses, lightweight).
hasRole(glasses, utensilRole).
affordsTask(glasses, eatingDrinkingTask).

% --- ladder ---
obj(ladder).
hasPhysicalQuality(ladder, heavy).
hasPhysicalQuality(ladder, rigid).
hasRole(ladder, toolRole).
affordsTask(ladder, maintenanceTask).

% --- stove ---
obj(stove).
hasPhysicalQuality(stove, heated).
hasRole(stove, cookwareRole).
affordsTask(stove, foodPreparationTask).

% --- bag ---
obj(bag).
hasPhysicalQuality(bag, hasContainer).
hasRole(bag, storageContainerRole).
affordsTask(bag, storageTask).

% --- thermostat ---
obj(thermostat).
hasPhysicalQuality(thermostat, electronic).
hasPhysicalQuality(thermostat, heavy).
hasRole(thermostat, applianceRole).

% --- utility case ---
obj(utility_case).
hasPhysicalQuality(utility_case, hasContainer).
hasRole(utility_case, storageContainerRole).
affordsTask(utility_case, storageTask).

% --- can opener ---
obj(can_opener).
hasPhysicalQuality(can_opener, electronic).
hasPhysicalQuality(can_opener, heavy).
hasRole(can_opener, toolRole).
affordsTask(can_opener, foodPreparationTask).

% --- cash register ---
obj(cash_register).
hasPhysicalQuality(cash_register, electronic).
hasPhysicalQuality(cash_register, heavy).
hasRole(cash_register, applianceRole).
affordsTask(cash_register, maintenanceTask).

% --- electric razor ---
obj(electric_razor).
hasPhysicalQuality(electric_razor, electronic).
hasPhysicalQuality(electric_razor, lightweight).
hasRole(electric_razor, toolRole).
affordsTask(electric_razor, hygieneTask).

% --- garbage waste ---
obj(garbage_waste).
hasRole(garbage_waste, consumableRole).
hasRole(garbage_waste, wasteRole).
affordsTask(garbage_waste, wasteDisposalTask).

% --- vice ---
obj(vice).
hasPhysicalQuality(vice, heavy).
hasPhysicalQuality(vice, rigid).
hasRole(vice, toolRole).
affordsTask(vice, maintenanceTask).

% --- forks ---
obj(forks).
hasPhysicalQuality(forks, rigid).
hasPhysicalQuality(forks, sharp).
hasRole(forks, utensilRole).
affordsTask(forks, foodPreparationTask).

% --- bicycle storage area ---
obj(bicycle_storage_area).
hasRole(bicycle_storage_area, storageContainerRole).
affordsTask(bicycle_storage_area, storageTask).

% --- led ---
obj(led).
hasPhysicalQuality(led, electronic).
hasPhysicalQuality(led, lightweight).
hasRole(led, toolRole).
affordsTask(led, maintenanceTask).

% --- credit cards ---
obj(credit_cards).
hasRole(credit_cards, consumableRole).

% --- varnish ---
obj(varnish).
hasPhysicalQuality(varnish, liquid).
hasPhysicalQuality(varnish, toxic_Hazardous).
hasRole(varnish, toolRole).
affordsTask(varnish, maintenanceTask).

% --- cold storage ---
obj(cold_storage).
hasPhysicalQuality(cold_storage, requiresCooling).
hasRole(cold_storage, applianceRole).
affordsTask(cold_storage, storageTask).

% --- battery charger ---
obj(battery_charger).
hasPhysicalQuality(battery_charger, electronic).
hasPhysicalQuality(battery_charger, heavy).
hasRole(battery_charger, toolRole).
affordsTask(battery_charger, maintenanceTask).

% --- old dress ---
obj(old_dress).
hasPhysicalQuality(old_dress, soft_Deformable).
hasPhysicalQuality(old_dress, lightweight).
hasRole(old_dress, clothingRole).
affordsTask(old_dress, dressingTask).

% --- bean bag chair ---
obj(bean_bag_chair).
hasPhysicalQuality(bean_bag_chair, soft_Deformable).
hasPhysicalQuality(bean_bag_chair, lightweight).
hasRole(bean_bag_chair, furnitureRole).
affordsTask(bean_bag_chair, leisureTask).

% --- corner cupboard ---
obj(corner_cupboard).
hasPhysicalQuality(corner_cupboard, heavy).
hasPhysicalQuality(corner_cupboard, rigid).
hasRole(corner_cupboard, storageContainerRole).
affordsTask(corner_cupboard, storageTask).

% --- coffee ---
obj(coffee).
hasPhysicalQuality(coffee, perishable).
hasPhysicalQuality(coffee, liquid).
hasRole(coffee, consumableRole).
affordsTask(coffee, eatingDrinkingTask).

% --- scissors ---
obj(scissors).
hasPhysicalQuality(scissors, sharp).
hasPhysicalQuality(scissors, rigid).
hasRole(scissors, toolRole).
affordsTask(scissors, maintenanceTask).

% --- tub ---
obj(tub).
hasPhysicalQuality(tub, hasContainer).
hasPhysicalQuality(tub, heavy).
hasRole(tub, storageContainerRole).
affordsTask(tub, eatingDrinkingTask).

% --- window ---
obj(window).
hasPhysicalQuality(window, rigid).
hasPhysicalQuality(window, lightweight).
hasRole(window, furnitureRole).
affordsTask(window, leisureTask).

% --- roots ---
obj(roots).
hasPhysicalQuality(roots, perishable).
hasRole(roots, consumableRole).

% --- coffee mug ---
obj(coffee_mug).
hasPhysicalQuality(coffee_mug, liquid).
hasPhysicalQuality(coffee_mug, hasContainer).
hasRole(coffee_mug, utensilRole).
affordsTask(coffee_mug, eatingDrinkingTask).

% --- radiator ---
obj(radiator).
hasPhysicalQuality(radiator, heated).
hasRole(radiator, applianceRole).
affordsTask(radiator, maintenanceTask).

% --- line ---
obj(line).
hasPhysicalQuality(line, rigid).
hasPhysicalQuality(line, lightweight).
hasRole(line, toolRole).
affordsTask(line, maintenanceTask).

% --- milk ---
obj(milk).
hasPhysicalQuality(milk, perishable).
hasRole(milk, consumableRole).
affordsTask(milk, eatingDrinkingTask).

% --- maps ---
obj(maps).
hasRole(maps, toolRole).
affordsTask(maps, leisureTask).

% --- rug ---
obj(rug).
hasPhysicalQuality(rug, soft_Deformable).
hasPhysicalQuality(rug, lightweight).
hasRole(rug, furnitureRole).
affordsTask(rug, leisureTask).

% --- account book ---
obj(account_book).
hasPhysicalQuality(account_book, lightweight).
hasRole(account_book, documentRole).
affordsTask(account_book, workStudyTask).

% --- board game ---
obj(board_game).
hasRole(board_game, entertainmentRole).
affordsTask(board_game, leisureTask).

% --- spices ---
obj(spices).
hasPhysicalQuality(spices, granular).
hasRole(spices, consumableRole).
affordsTask(spices, foodPreparationTask).

% --- comforter ---
obj(comforter).
hasPhysicalQuality(comforter, soft_Deformable).
hasPhysicalQuality(comforter, washable).
hasRole(comforter, beddingRole).
affordsTask(comforter, sleepingTask).

% --- chair ---
obj(chair).
hasPhysicalQuality(chair, rigid).
hasPhysicalQuality(chair, heavy).
hasRole(chair, furnitureRole).
affordsTask(chair, storageTask).

% --- faucet ---
obj(faucet).
hasPhysicalQuality(faucet, liquid).
hasPhysicalQuality(faucet, electronic).
hasRole(faucet, toolRole).
affordsTask(faucet, hygieneTask).

% --- candy ---
obj(candy).
hasPhysicalQuality(candy, perishable).
hasRole(candy, consumableRole).
affordsTask(candy, eatingDrinkingTask).

% --- candle ---
obj(candle).
hasPhysicalQuality(candle, heated).
hasPhysicalQuality(candle, flammable).
hasRole(candle, lightingRole).
affordsTask(candle, leisureTask).

% --- feathers ---
obj(feathers).
hasPhysicalQuality(feathers, lightweight).
hasPhysicalQuality(feathers, soft_Deformable).
hasRole(feathers, consumableRole).

% --- grill ---
obj(grill).
hasPhysicalQuality(grill, heated).
hasPhysicalQuality(grill, heavy).
hasRole(grill, cookwareRole).
affordsTask(grill, foodPreparationTask).

% --- tv ---
obj(tv).
hasPhysicalQuality(tv, electronic).
hasPhysicalQuality(tv, heavy).
hasRole(tv, applianceRole).
affordsTask(tv, leisureTask).

% --- iron ---
obj(iron).
hasPhysicalQuality(iron, heated).
hasPhysicalQuality(iron, heavy).
hasRole(iron, toolRole).
affordsTask(iron, maintenanceTask).

% --- dryer ---
obj(dryer).
hasPhysicalQuality(dryer, electronic).
hasPhysicalQuality(dryer, heavy).
hasRole(dryer, applianceRole).
affordsTask(dryer, maintenanceTask).

% --- ribbon ---
obj(ribbon).
hasPhysicalQuality(ribbon, soft_Deformable).
hasPhysicalQuality(ribbon, lightweight).
hasRole(ribbon, clothingRole).
affordsTask(ribbon, dressingTask).

% --- hide bed ---
obj(hide_bed).
hasPhysicalQuality(hide_bed, soft_Deformable).
hasPhysicalQuality(hide_bed, lightweight).
hasRole(hide_bed, furnitureRole).
affordsTask(hide_bed, sleepingTask).

% --- rotten food ---
obj(rotten_food).
hasPhysicalQuality(rotten_food, perishable).
hasPhysicalQuality(rotten_food, toxic_Hazardous).
hasRole(rotten_food, consumableRole).

% --- cover ---
obj(cover).
hasPhysicalQuality(cover, soft_Deformable).
hasPhysicalQuality(cover, lightweight).
hasRole(cover, beddingRole).
hasRole(cover, furnitureRole).
affordsTask(cover, sleepingTask).

% --- cookie jar ---
obj(cookie_jar).
hasPhysicalQuality(cookie_jar, heavy).
hasPhysicalQuality(cookie_jar, hasContainer).
hasRole(cookie_jar, storageContainerRole).
affordsTask(cookie_jar, storageTask).

% --- trash ---
obj(trash).
hasRole(trash, storageContainerRole).
affordsTask(trash, wasteDisposalTask).

% --- plumbing ---
obj(plumbing).
hasPhysicalQuality(plumbing, heavy).
hasPhysicalQuality(plumbing, rigid).
hasRole(plumbing, toolRole).
affordsTask(plumbing, maintenanceTask).

% --- shellac ---
obj(shellac).
hasPhysicalQuality(shellac, liquid).
hasRole(shellac, cleaningToolRole).
affordsTask(shellac, maintenanceTask).

% --- vase ---
obj(vase).
hasPhysicalQuality(vase, fragile).
hasPhysicalQuality(vase, rigid).
hasRole(vase, decorationRole).

% --- wine glass ---
obj(wine_glass).
hasPhysicalQuality(wine_glass, lightweight).
hasPhysicalQuality(wine_glass, fragile).
hasRole(wine_glass, utensilRole).
affordsTask(wine_glass, eatingDrinkingTask).

% --- baking oven ---
obj(baking_oven).
hasPhysicalQuality(baking_oven, heated).
hasRole(baking_oven, cookwareRole).
affordsTask(baking_oven, foodPreparationTask).

% --- jars ---
obj(jars).
hasPhysicalQuality(jars, hasContainer).
hasRole(jars, storageContainerRole).
affordsTask(jars, storageTask).

% --- boots ---
obj(boots).
hasPhysicalQuality(boots, heavy).
hasPhysicalQuality(boots, soft_Deformable).
hasRole(boots, clothingRole).
affordsTask(boots, dressingTask).

% --- material ---
obj(material).
hasPhysicalQuality(material, granular).
hasRole(material, consumableRole).

% --- toothbrush head ---
obj(toothbrush_head).
hasPhysicalQuality(toothbrush_head, lightweight).
hasPhysicalQuality(toothbrush_head, fragile).
affordsTask(toothbrush_head, eatingDrinkingTask).

% --- vanity case ---
obj(vanity_case).
hasPhysicalQuality(vanity_case, lightweight).
hasPhysicalQuality(vanity_case, hasContainer).
hasRole(vanity_case, storageContainerRole).
affordsTask(vanity_case, leisureTask).

% --- chine cotton ---
obj(chine_cotton).
hasPhysicalQuality(chine_cotton, soft_Deformable).
hasPhysicalQuality(chine_cotton, lightweight).
hasRole(chine_cotton, clothingRole).
affordsTask(chine_cotton, dressingTask).

% --- flask ---
obj(flask).
hasPhysicalQuality(flask, liquid).
hasPhysicalQuality(flask, hasContainer).
hasRole(flask, utensilRole).
affordsTask(flask, eatingDrinkingTask).

% --- waffles ---
obj(waffles).
hasPhysicalQuality(waffles, perishable).
hasPhysicalQuality(waffles, granular).
hasRole(waffles, consumableRole).
affordsTask(waffles, eatingDrinkingTask).

% --- signs ---
obj(signs).
hasRole(signs, decorationRole).

% --- strawberries ---
obj(strawberries).
hasPhysicalQuality(strawberries, perishable).
hasRole(strawberries, consumableRole).
affordsTask(strawberries, eatingDrinkingTask).

% --- kettle ---
obj(kettle).
hasPhysicalQuality(kettle, heated).
hasPhysicalQuality(kettle, heavy).
hasRole(kettle, cookwareRole).
affordsTask(kettle, foodPreparationTask).

% --- hammer ---
obj(hammer).
hasPhysicalQuality(hammer, heavy).
hasPhysicalQuality(hammer, rigid).
hasRole(hammer, toolRole).
affordsTask(hammer, maintenanceTask).

% --- bus seat ---
obj(bus_seat).
hasPhysicalQuality(bus_seat, soft_Deformable).
hasPhysicalQuality(bus_seat, lightweight).
hasRole(bus_seat, furnitureRole).
affordsTask(bus_seat, leisureTask).

% --- clipboard ---
obj(clipboard).
hasPhysicalQuality(clipboard, lightweight).
hasPhysicalQuality(clipboard, rigid).
hasRole(clipboard, utensilRole).
affordsTask(clipboard, foodPreparationTask).

% --- column ---
obj(column).
hasPhysicalQuality(column, heavy).
hasPhysicalQuality(column, rigid).
hasRole(column, furnitureRole).

% --- doorway ---
obj(doorway).
hasPhysicalQuality(doorway, rigid).
hasRole(doorway, furnitureRole).

% --- cold water ---
obj(cold_water).
hasPhysicalQuality(cold_water, liquid).
hasPhysicalQuality(cold_water, perishable).
hasRole(cold_water, consumableRole).
affordsTask(cold_water, eatingDrinkingTask).

% --- poker chips ---
obj(poker_chips).
hasPhysicalQuality(poker_chips, lightweight).
hasPhysicalQuality(poker_chips, rigid).
hasPhysicalQuality(poker_chips, fragile).
hasRole(poker_chips, entertainmentRole).
affordsTask(poker_chips, leisureTask).

% --- matches ---
obj(matches).
hasPhysicalQuality(matches, fragile).
hasPhysicalQuality(matches, lightweight).
hasRole(matches, toolRole).
affordsTask(matches, maintenanceTask).

% --- honey ---
obj(honey).
hasPhysicalQuality(honey, perishable).
hasRole(honey, consumableRole).
affordsTask(honey, eatingDrinkingTask).

% --- motherboard ---
obj(motherboard).
hasPhysicalQuality(motherboard, electronic).
hasPhysicalQuality(motherboard, rigid).
hasRole(motherboard, toolRole).

% --- cabinets ---
obj(cabinets).
hasPhysicalQuality(cabinets, heavy).
hasPhysicalQuality(cabinets, rigid).
hasRole(cabinets, storageContainerRole).
affordsTask(cabinets, storageTask).

% --- washing machine ---
obj(washing_machine).
hasPhysicalQuality(washing_machine, electronic).
hasPhysicalQuality(washing_machine, heavy).
hasRole(washing_machine, applianceRole).
affordsTask(washing_machine, cleaningTask).

% --- bookshelf ---
obj(bookshelf).
hasPhysicalQuality(bookshelf, heavy).
hasPhysicalQuality(bookshelf, rigid).
hasRole(bookshelf, storageContainerRole).
affordsTask(bookshelf, storageTask).

% --- coffee cups ---
obj(coffee_cups).
hasPhysicalQuality(coffee_cups, lightweight).
hasPhysicalQuality(coffee_cups, hasContainer).
hasRole(coffee_cups, utensilRole).
affordsTask(coffee_cups, eatingDrinkingTask).

% --- paper fastener ---
obj(paper_fastener).
hasPhysicalQuality(paper_fastener, lightweight).
hasPhysicalQuality(paper_fastener, rigid).
hasRole(paper_fastener, toolRole).
affordsTask(paper_fastener, maintenanceTask).

% --- linoleum ---
obj(linoleum).
hasPhysicalQuality(linoleum, liquid).
hasPhysicalQuality(linoleum, fragile).
hasRole(linoleum, furnitureRole).

% --- light bulb ---
obj(light_bulb).
hasPhysicalQuality(light_bulb, electronic).
hasPhysicalQuality(light_bulb, lightweight).
hasRole(light_bulb, lightingRole).
affordsTask(light_bulb, leisureTask).

% --- ink ---
obj(ink).
hasPhysicalQuality(ink, liquid).
hasPhysicalQuality(ink, toxic_Hazardous).
hasRole(ink, consumableRole).
affordsTask(ink, foodPreparationTask).

% --- wall ---
obj(wall).
hasPhysicalQuality(wall, rigid).
hasRole(wall, furnitureRole).

% --- sugar ---
obj(sugar).
hasPhysicalQuality(sugar, granular).
hasRole(sugar, consumableRole).
affordsTask(sugar, eatingDrinkingTask).

% --- good book ---
obj(good_book).
hasRole(good_book, documentRole).
affordsTask(good_book, leisureTask).

% --- lemon juice ---
obj(lemon_juice).
hasPhysicalQuality(lemon_juice, liquid).
hasPhysicalQuality(lemon_juice, perishable).
hasRole(lemon_juice, consumableRole).
affordsTask(lemon_juice, eatingDrinkingTask).

% --- power screwdriver ---
obj(power_screwdriver).
hasPhysicalQuality(power_screwdriver, electronic).
hasPhysicalQuality(power_screwdriver, heavy).
hasPhysicalQuality(power_screwdriver, rigid).
hasRole(power_screwdriver, toolRole).
affordsTask(power_screwdriver, maintenanceTask).

% --- ottoman ---
obj(ottoman).
hasPhysicalQuality(ottoman, soft_Deformable).
hasPhysicalQuality(ottoman, heavy).
hasRole(ottoman, furnitureRole).
affordsTask(ottoman, leisureTask).

% --- calculator ---
obj(calculator).
hasPhysicalQuality(calculator, electronic).
hasPhysicalQuality(calculator, lightweight).
hasRole(calculator, toolRole).
affordsTask(calculator, workStudyTask).

% --- clip ---
obj(clip).
hasPhysicalQuality(clip, lightweight).
hasRole(clip, toolRole).
affordsTask(clip, maintenanceTask).

% --- flooring ---
obj(flooring).
hasPhysicalQuality(flooring, rigid).
hasRole(flooring, furnitureRole).

% --- cds ---
obj(cds).
hasPhysicalQuality(cds, rigid).
hasPhysicalQuality(cds, lightweight).
hasRole(cds, storageContainerRole).
affordsTask(cds, leisureTask).

% --- glass of water ---
obj(glass_of_water).
hasPhysicalQuality(glass_of_water, liquid).
hasRole(glass_of_water, consumableRole).
hasRole(glass_of_water, utensilRole).
affordsTask(glass_of_water, eatingDrinkingTask).

% --- broom ---
obj(broom).
hasPhysicalQuality(broom, lightweight).
hasPhysicalQuality(broom, fragile).
hasRole(broom, cleaningToolRole).
affordsTask(broom, cleaningTask).

% --- medicine ---
obj(medicine).
hasPhysicalQuality(medicine, perishable).
hasRole(medicine, consumableRole).
affordsTask(medicine, eatingDrinkingTask).

% --- bird ---
obj(bird).
hasPhysicalQuality(bird, lightweight).
hasPhysicalQuality(bird, fragile).
hasRole(bird, entertainmentRole).
affordsTask(bird, leisureTask).

% --- portable shower head ---
obj(portable_shower_head).
hasPhysicalQuality(portable_shower_head, lightweight).
hasPhysicalQuality(portable_shower_head, liquid).
hasRole(portable_shower_head, cleaningToolRole).
affordsTask(portable_shower_head, hygieneTask).

% --- linen chest ---
obj(linen_chest).
hasPhysicalQuality(linen_chest, heavy).
hasPhysicalQuality(linen_chest, rigid).
hasRole(linen_chest, storageContainerRole).
affordsTask(linen_chest, storageTask).

% --- calendar pad ---
obj(calendar_pad).
hasPhysicalQuality(calendar_pad, lightweight).
hasRole(calendar_pad, documentRole).
affordsTask(calendar_pad, workStudyTask).

% --- grapes ---
obj(grapes).
hasPhysicalQuality(grapes, perishable).
hasRole(grapes, consumableRole).
affordsTask(grapes, eatingDrinkingTask).

% --- jar ---
obj(jar).
hasPhysicalQuality(jar, hasContainer).
hasRole(jar, storageContainerRole).
affordsTask(jar, storageTask).

% --- container can ---
obj(container_can).
hasPhysicalQuality(container_can, hasContainer).
hasRole(container_can, storageContainerRole).
affordsTask(container_can, storageTask).

% --- chess bishop ---
obj(chess_bishop).
hasPhysicalQuality(chess_bishop, rigid).
hasRole(chess_bishop, toolRole).
affordsTask(chess_bishop, leisureTask).

% --- electric fan ---
obj(electric_fan).
hasPhysicalQuality(electric_fan, electronic).
hasPhysicalQuality(electric_fan, lightweight).
hasRole(electric_fan, applianceRole).
affordsTask(electric_fan, leisureTask).

% --- second floor ---
obj(second_floor).
hasRole(second_floor, furnitureRole).

% --- sheet ---
obj(sheet).
hasPhysicalQuality(sheet, soft_Deformable).
hasPhysicalQuality(sheet, washable).
hasRole(sheet, beddingRole).
affordsTask(sheet, sleepingTask).

% --- grease ---
obj(grease).
hasPhysicalQuality(grease, liquid).
hasPhysicalQuality(grease, fragile).
hasRole(grease, cleaningToolRole).
affordsTask(grease, maintenanceTask).

% --- printer ---
obj(printer).
hasPhysicalQuality(printer, electronic).
hasPhysicalQuality(printer, heavy).
hasRole(printer, applianceRole).
affordsTask(printer, workStudyTask).

% --- knife ---
obj(knife).
hasPhysicalQuality(knife, sharp).
hasPhysicalQuality(knife, rigid).
hasRole(knife, utensilRole).
affordsTask(knife, foodPreparationTask).

% --- paper ---
obj(paper).
hasPhysicalQuality(paper, flammable).
hasPhysicalQuality(paper, fragile).
hasRole(paper, consumableRole).
affordsTask(paper, eatingDrinkingTask).

% --- salad bowl ---
obj(salad_bowl).
hasPhysicalQuality(salad_bowl, hasContainer).
hasRole(salad_bowl, storageContainerRole).
hasRole(salad_bowl, utensilRole).
affordsTask(salad_bowl, foodPreparationTask).

% --- tuna ---
obj(tuna).
hasPhysicalQuality(tuna, perishable).
hasRole(tuna, consumableRole).
affordsTask(tuna, eatingDrinkingTask).

% --- glue stick ---
obj(glue_stick).
hasPhysicalQuality(glue_stick, liquid).
hasPhysicalQuality(glue_stick, fragile).
hasRole(glue_stick, toolRole).
affordsTask(glue_stick, maintenanceTask).

% --- microwave ---
obj(microwave).
hasPhysicalQuality(microwave, electronic).
hasPhysicalQuality(microwave, heated).
hasRole(microwave, applianceRole).
affordsTask(microwave, foodPreparationTask).

% --- purse ---
obj(purse).
hasPhysicalQuality(purse, soft_Deformable).
hasPhysicalQuality(purse, lightweight).
hasRole(purse, storageContainerRole).
affordsTask(purse, storageTask).

% --- bench ---
obj(bench).
hasPhysicalQuality(bench, rigid).
hasPhysicalQuality(bench, heavy).
hasRole(bench, furnitureRole).
affordsTask(bench, storageTask).

% --- paper clips ---
obj(paper_clips).
hasPhysicalQuality(paper_clips, lightweight).
hasPhysicalQuality(paper_clips, rigid).
hasRole(paper_clips, toolRole).
affordsTask(paper_clips, maintenanceTask).

% --- pair of scissors ---
obj(pair_of_scissors).
hasPhysicalQuality(pair_of_scissors, sharp).
hasPhysicalQuality(pair_of_scissors, rigid).
hasRole(pair_of_scissors, toolRole).
affordsTask(pair_of_scissors, maintenanceTask).

% --- bedroom ---
obj(bedroom).
hasRole(bedroom, furnitureRole).
affordsTask(bedroom, sleepingTask).

% --- post note ---
obj(post_note).
hasRole(post_note, documentRole).

% --- tack ---
obj(tack).
hasPhysicalQuality(tack, sharp).
hasPhysicalQuality(tack, rigid).
hasRole(tack, utensilRole).
affordsTask(tack, foodPreparationTask).

% --- eraser ---
obj(eraser).
hasPhysicalQuality(eraser, soft_Deformable).
hasPhysicalQuality(eraser, lightweight).
hasRole(eraser, toolRole).
affordsTask(eraser, maintenanceTask).

% --- radio ---
obj(radio).
hasPhysicalQuality(radio, electronic).
hasPhysicalQuality(radio, lightweight).
hasRole(radio, applianceRole).
affordsTask(radio, leisureTask).

% --- beer mug ---
obj(beer_mug).
hasPhysicalQuality(beer_mug, liquid).
hasPhysicalQuality(beer_mug, heavy).
hasRole(beer_mug, utensilRole).
affordsTask(beer_mug, eatingDrinkingTask).

% --- appointment book ---
obj(appointment_book).
hasRole(appointment_book, documentRole).

% --- jeans ---
obj(jeans).
hasPhysicalQuality(jeans, soft_Deformable).
hasPhysicalQuality(jeans, washable).
hasRole(jeans, clothingRole).
affordsTask(jeans, dressingTask).

% --- leg ---
obj(leg).
hasPhysicalQuality(leg, rigid).
hasPhysicalQuality(leg, heavy).
hasRole(leg, furnitureRole).

% --- cook ---
obj(cook).
hasPhysicalQuality(cook, heavy).
hasPhysicalQuality(cook, rigid).
hasRole(cook, cookwareRole).
affordsTask(cook, foodPreparationTask).

% --- glass fronted display cabinet ---
obj(glass_fronted_display_cabinet).
hasPhysicalQuality(glass_fronted_display_cabinet, rigid).
hasPhysicalQuality(glass_fronted_display_cabinet, heavy).
hasRole(glass_fronted_display_cabinet, storageContainerRole).
hasRole(glass_fronted_display_cabinet, furnitureRole).
affordsTask(glass_fronted_display_cabinet, storageTask).

% --- towel ---
obj(towel).
hasPhysicalQuality(towel, soft_Deformable).
hasPhysicalQuality(towel, washable).
hasRole(towel, cleaningToolRole).
affordsTask(towel, hygieneTask).

% --- sofabed ---
obj(sofabed).
hasPhysicalQuality(sofabed, soft_Deformable).
hasPhysicalQuality(sofabed, fragile).
hasRole(sofabed, furnitureRole).
affordsTask(sofabed, sleepingTask).

% --- ledger ---
obj(ledger).
hasPhysicalQuality(ledger, lightweight).
hasRole(ledger, documentRole).
affordsTask(ledger, workStudyTask).

% --- alcohol ---
obj(alcohol).
hasPhysicalQuality(alcohol, flammable).
hasRole(alcohol, consumableRole).

% --- chimney ---
obj(chimney).
hasPhysicalQuality(chimney, heavy).
hasRole(chimney, applianceRole).

% --- beverage ---
obj(beverage).
hasPhysicalQuality(beverage, liquid).
hasRole(beverage, consumableRole).
affordsTask(beverage, eatingDrinkingTask).

% --- desserts ---
obj(desserts).
hasPhysicalQuality(desserts, perishable).
hasRole(desserts, consumableRole).
affordsTask(desserts, eatingDrinkingTask).

% --- electric blanket ---
obj(electric_blanket).
hasPhysicalQuality(electric_blanket, electronic).
hasPhysicalQuality(electric_blanket, soft_Deformable).
hasPhysicalQuality(electric_blanket, washable).
hasRole(electric_blanket, beddingRole).
affordsTask(electric_blanket, sleepingTask).

% --- toilet seat ---
obj(toilet_seat).
hasPhysicalQuality(toilet_seat, fragile).
hasRole(toilet_seat, utensilRole).
affordsTask(toilet_seat, eatingDrinkingTask).

% --- soap ---
obj(soap).
hasPhysicalQuality(soap, liquid).
hasPhysicalQuality(soap, fragile).
hasRole(soap, cleaningToolRole).
affordsTask(soap, hygieneTask).

% --- bicycles ---
obj(bicycles).
hasPhysicalQuality(bicycles, heavy).
hasPhysicalQuality(bicycles, rigid).

% --- card ---
obj(card).
hasPhysicalQuality(card, lightweight).
hasRole(card, consumableRole).
hasRole(card, utensilRole).
affordsTask(card, eatingDrinkingTask).

% --- vinyl ---
obj(vinyl).
hasPhysicalQuality(vinyl, granular).
hasRole(vinyl, consumableRole).

% --- fire extinguisher ---
obj(fire_extinguisher).
hasPhysicalQuality(fire_extinguisher, heavy).
hasPhysicalQuality(fire_extinguisher, rigid).
hasRole(fire_extinguisher, safetyEquipmentRole).
affordsTask(fire_extinguisher, maintenanceTask).

% --- pencil ---
obj(pencil).
hasPhysicalQuality(pencil, lightweight).
hasPhysicalQuality(pencil, rigid).
hasRole(pencil, toolRole).

% --- tea ---
obj(tea).
hasPhysicalQuality(tea, perishable).
hasPhysicalQuality(tea, liquid).
hasRole(tea, consumableRole).
affordsTask(tea, eatingDrinkingTask).

% --- pouch ---
obj(pouch).
hasPhysicalQuality(pouch, lightweight).
hasPhysicalQuality(pouch, soft_Deformable).
hasRole(pouch, storageContainerRole).
affordsTask(pouch, storageTask).

% --- couch ---
obj(couch).
hasPhysicalQuality(couch, heavy).
hasPhysicalQuality(couch, rigid).
hasRole(couch, furnitureRole).
affordsTask(couch, leisureTask).

% --- cheese ---
obj(cheese).
hasPhysicalQuality(cheese, perishable).
hasRole(cheese, consumableRole).
affordsTask(cheese, eatingDrinkingTask).

% --- bottle ---
obj(bottle).
hasPhysicalQuality(bottle, liquid).
hasPhysicalQuality(bottle, hasContainer).
hasRole(bottle, storageContainerRole).
affordsTask(bottle, eatingDrinkingTask).

% --- telephone ---
obj(telephone).
hasPhysicalQuality(telephone, electronic).
hasPhysicalQuality(telephone, lightweight).
hasRole(telephone, toolRole).
affordsTask(telephone, workStudyTask).

% --- cat ---
obj(cat).
hasPhysicalQuality(cat, soft_Deformable).
hasPhysicalQuality(cat, lightweight).
hasRole(cat, furnitureRole).
affordsTask(cat, leisureTask).

% --- display cabinet ---
obj(display_cabinet).
hasPhysicalQuality(display_cabinet, heavy).
hasPhysicalQuality(display_cabinet, rigid).
hasRole(display_cabinet, furnitureRole).
affordsTask(display_cabinet, storageTask).

% --- shirt ---
obj(shirt).
hasPhysicalQuality(shirt, soft_Deformable).
hasPhysicalQuality(shirt, lightweight).
hasRole(shirt, clothingRole).
affordsTask(shirt, dressingTask).

% --- mechanical pencil ---
obj(mechanical_pencil).
hasPhysicalQuality(mechanical_pencil, lightweight).
hasPhysicalQuality(mechanical_pencil, rigid).
hasRole(mechanical_pencil, toolRole).
affordsTask(mechanical_pencil, workStudyTask).

% --- knob ---
obj(knob).
hasPhysicalQuality(knob, rigid).
hasPhysicalQuality(knob, lightweight).
hasRole(knob, toolRole).
affordsTask(knob, maintenanceTask).

% --- quill brush ---
obj(quill_brush).
hasPhysicalQuality(quill_brush, lightweight).
hasPhysicalQuality(quill_brush, soft_Deformable).
hasRole(quill_brush, toolRole).

% --- cookies ---
obj(cookies).
hasPhysicalQuality(cookies, granular).
hasRole(cookies, consumableRole).
affordsTask(cookies, eatingDrinkingTask).

% --- cabbage ---
obj(cabbage).
hasPhysicalQuality(cabbage, perishable).
hasPhysicalQuality(cabbage, granular).
hasRole(cabbage, consumableRole).
affordsTask(cabbage, eatingDrinkingTask).

% --- files ---
obj(files).
hasRole(files, documentRole).

% --- bathroom ---
obj(bathroom).
hasPhysicalQuality(bathroom, heavy).
hasRole(bathroom, furnitureRole).

% --- studio pedestal ---
obj(studio_pedestal).
hasPhysicalQuality(studio_pedestal, heavy).
hasPhysicalQuality(studio_pedestal, rigid).
hasRole(studio_pedestal, furnitureRole).
affordsTask(studio_pedestal, storageTask).

% --- sideboard ---
obj(sideboard).
hasPhysicalQuality(sideboard, heavy).
hasPhysicalQuality(sideboard, rigid).
hasRole(sideboard, furnitureRole).
affordsTask(sideboard, storageTask).

% --- kitchen utensil ---
obj(kitchen_utensil).
hasPhysicalQuality(kitchen_utensil, sharp).
hasPhysicalQuality(kitchen_utensil, rigid).
hasRole(kitchen_utensil, utensilRole).
affordsTask(kitchen_utensil, foodPreparationTask).

% --- felt ---
obj(felt).
hasPhysicalQuality(felt, soft_Deformable).
hasRole(felt, consumableRole).
hasRole(felt, toolRole).

% --- toys ---
obj(toys).
hasPhysicalQuality(toys, lightweight).
hasRole(toys, entertainmentRole).
affordsTask(toys, leisureTask).

% --- fireplace ---
obj(fireplace).
hasPhysicalQuality(fireplace, heated).
hasRole(fireplace, applianceRole).
affordsTask(fireplace, maintenanceTask).

% --- groceries ---
obj(groceries).
hasPhysicalQuality(groceries, perishable).
hasRole(groceries, consumableRole).
affordsTask(groceries, eatingDrinkingTask).

% --- skirts ---
obj(skirts).
hasRole(skirts, clothingRole).
affordsTask(skirts, dressingTask).

% --- paint ---
obj(paint).
hasPhysicalQuality(paint, liquid).
hasPhysicalQuality(paint, toxic_Hazardous).
hasRole(paint, consumableRole).
affordsTask(paint, maintenanceTask).

% --- armoire ---
obj(armoire).
hasPhysicalQuality(armoire, heavy).
hasPhysicalQuality(armoire, rigid).
hasRole(armoire, furnitureRole).
affordsTask(armoire, storageTask).

% --- coal ---
obj(coal).
hasPhysicalQuality(coal, flammable).
hasPhysicalQuality(coal, heavy).
hasRole(coal, consumableRole).
affordsTask(coal, maintenanceTask).

% --- map ---
obj(map).
hasPhysicalQuality(map, lightweight).
hasRole(map, toolRole).
affordsTask(map, leisureTask).

% --- hide bed sofa ---
obj(hide_bed_sofa).
hasPhysicalQuality(hide_bed_sofa, soft_Deformable).
hasPhysicalQuality(hide_bed_sofa, fragile).
hasRole(hide_bed_sofa, furnitureRole).
affordsTask(hide_bed_sofa, sleepingTask).

% --- nylon ---
obj(nylon).
hasPhysicalQuality(nylon, lightweight).
hasPhysicalQuality(nylon, soft_Deformable).

% --- chess knight ---
obj(chess_knight).
hasPhysicalQuality(chess_knight, rigid).
hasRole(chess_knight, entertainmentRole).
affordsTask(chess_knight, leisureTask).

% --- wool ---
obj(wool).
hasPhysicalQuality(wool, soft_Deformable).
hasPhysicalQuality(wool, washable).
hasRole(wool, clothingRole).
affordsTask(wool, dressingTask).

% --- toilet paper ---
obj(toilet_paper).
hasPhysicalQuality(toilet_paper, soft_Deformable).
hasPhysicalQuality(toilet_paper, washable).
hasRole(toilet_paper, consumableRole).
affordsTask(toilet_paper, hygieneTask).

% --- mail ---
obj(mail).
hasRole(mail, consumableRole).

% --- paper clip ---
obj(paper_clip).
hasPhysicalQuality(paper_clip, lightweight).
hasPhysicalQuality(paper_clip, rigid).
hasRole(paper_clip, toolRole).
affordsTask(paper_clip, maintenanceTask).

% --- chess set ---
obj(chess_set).
hasPhysicalQuality(chess_set, rigid).
hasPhysicalQuality(chess_set, lightweight).
hasRole(chess_set, entertainmentRole).
affordsTask(chess_set, leisureTask).

% --- glass ---
obj(glass).
hasPhysicalQuality(glass, fragile).
hasPhysicalQuality(glass, rigid).
hasRole(glass, utensilRole).
affordsTask(glass, eatingDrinkingTask).

% --- sauce ---
obj(sauce).
hasPhysicalQuality(sauce, liquid).
hasPhysicalQuality(sauce, perishable).
hasRole(sauce, consumableRole).
affordsTask(sauce, foodPreparationTask).

% --- crumbs ---
obj(crumbs).
hasPhysicalQuality(crumbs, granular).
hasRole(crumbs, consumableRole).
affordsTask(crumbs, eatingDrinkingTask).

% --- banana ---
obj(banana).
hasPhysicalQuality(banana, perishable).
hasRole(banana, consumableRole).
affordsTask(banana, eatingDrinkingTask).

% --- soap dish ---
obj(soap_dish).
hasPhysicalQuality(soap_dish, lightweight).
hasPhysicalQuality(soap_dish, rigid).
hasRole(soap_dish, storageContainerRole).
affordsTask(soap_dish, hygieneTask).

% --- peanuts ---
obj(peanuts).
hasPhysicalQuality(peanuts, perishable).
hasPhysicalQuality(peanuts, granular).
hasRole(peanuts, consumableRole).
affordsTask(peanuts, eatingDrinkingTask).

% --- eggs ---
obj(eggs).
hasPhysicalQuality(eggs, perishable).
hasPhysicalQuality(eggs, fragile).
hasRole(eggs, consumableRole).
affordsTask(eggs, eatingDrinkingTask).

% --- blowdryer ---
obj(blowdryer).
hasPhysicalQuality(blowdryer, electronic).
hasPhysicalQuality(blowdryer, heavy).
hasRole(blowdryer, applianceRole).
affordsTask(blowdryer, leisureTask).

% --- keyboard ---
obj(keyboard).
hasPhysicalQuality(keyboard, electronic).
hasPhysicalQuality(keyboard, lightweight).
hasRole(keyboard, toolRole).
affordsTask(keyboard, workStudyTask).

% --- tote bag ---
obj(tote_bag).
hasPhysicalQuality(tote_bag, soft_Deformable).
hasPhysicalQuality(tote_bag, lightweight).
hasRole(tote_bag, clothingRole).
affordsTask(tote_bag, storageTask).

% --- puzzle ---
obj(puzzle).
hasRole(puzzle, entertainmentRole).
affordsTask(puzzle, leisureTask).

% --- saucepan ---
obj(saucepan).
hasPhysicalQuality(saucepan, heated).
hasPhysicalQuality(saucepan, heavy).
hasRole(saucepan, cookwareRole).
affordsTask(saucepan, foodPreparationTask).

% --- pot ---
obj(pot).
hasPhysicalQuality(pot, heavy).
hasPhysicalQuality(pot, rigid).
hasRole(pot, cookwareRole).
affordsTask(pot, foodPreparationTask).

% --- plates ---
obj(plates).
hasPhysicalQuality(plates, rigid).
hasPhysicalQuality(plates, lightweight).
hasRole(plates, utensilRole).
affordsTask(plates, eatingDrinkingTask).

% --- cotton ---
obj(cotton).
hasPhysicalQuality(cotton, soft_Deformable).
hasPhysicalQuality(cotton, lightweight).
hasRole(cotton, consumableRole).
hasRole(cotton, clothingRole).

% --- heated towel rack ---
obj(heated_towel_rack).
hasPhysicalQuality(heated_towel_rack, heated).
hasRole(heated_towel_rack, applianceRole).
affordsTask(heated_towel_rack, hygieneTask).

% --- highlighter ---
obj(highlighter).
hasPhysicalQuality(highlighter, lightweight).
hasPhysicalQuality(highlighter, rigid).
hasRole(highlighter, utensilRole).
affordsTask(highlighter, foodPreparationTask).

% --- doormat ---
obj(doormat).
hasPhysicalQuality(doormat, soft_Deformable).
hasPhysicalQuality(doormat, lightweight).
hasRole(doormat, furnitureRole).
affordsTask(doormat, cleaningTask).

% --- camera ---
obj(camera).
hasPhysicalQuality(camera, electronic).
hasPhysicalQuality(camera, lightweight).
hasRole(camera, toolRole).
affordsTask(camera, workStudyTask).

% --- beam ---
obj(beam).
hasPhysicalQuality(beam, rigid).
hasPhysicalQuality(beam, heavy).
hasRole(beam, toolRole).
affordsTask(beam, maintenanceTask).

% --- light ---
obj(light).
hasPhysicalQuality(light, electronic).
hasPhysicalQuality(light, lightweight).
hasRole(light, lightingRole).
affordsTask(light, leisureTask).

% --- notebook ---
obj(notebook).
hasPhysicalQuality(notebook, lightweight).
hasPhysicalQuality(notebook, rigid).
hasRole(notebook, documentRole).
affordsTask(notebook, workStudyTask).

% --- curtain ---
obj(curtain).
hasPhysicalQuality(curtain, soft_Deformable).
hasPhysicalQuality(curtain, lightweight).
hasRole(curtain, furnitureRole).
affordsTask(curtain, leisureTask).

% --- olives ---
obj(olives).
hasPhysicalQuality(olives, perishable).
hasRole(olives, consumableRole).
affordsTask(olives, eatingDrinkingTask).

% --- umbrella ---
obj(umbrella).
hasPhysicalQuality(umbrella, lightweight).
hasPhysicalQuality(umbrella, isFlexible).
hasRole(umbrella, toolRole).

% --- skylight ---
obj(skylight).
hasRole(skylight, lightingRole).
affordsTask(skylight, leisureTask).

% --- music stand ---
obj(music_stand).
hasPhysicalQuality(music_stand, rigid).
hasPhysicalQuality(music_stand, lightweight).
hasRole(music_stand, furnitureRole).
affordsTask(music_stand, workStudyTask).

% --- magnet ---
obj(magnet).
hasPhysicalQuality(magnet, rigid).
hasRole(magnet, toolRole).
affordsTask(magnet, maintenanceTask).

% --- cloth ---
obj(cloth).
hasPhysicalQuality(cloth, soft_Deformable).
hasPhysicalQuality(cloth, washable).
hasRole(cloth, clothingRole).
affordsTask(cloth, dressingTask).

% --- kitchenette ---
obj(kitchenette).
hasPhysicalQuality(kitchenette, heavy).
hasPhysicalQuality(kitchenette, rigid).
hasRole(kitchenette, cookwareRole).
hasRole(kitchenette, storageContainerRole).
affordsTask(kitchenette, foodPreparationTask).
affordsTask(kitchenette, eatingDrinkingTask).

% --- chess king ---
obj(chess_king).
hasPhysicalQuality(chess_king, lightweight).
hasRole(chess_king, entertainmentRole).
affordsTask(chess_king, leisureTask).

% --- cards ---
obj(cards).
hasRole(cards, entertainmentRole).
affordsTask(cards, leisureTask).

% --- page ---
obj(page).
hasRole(page, documentRole).

% --- lightbulb ---
obj(lightbulb).
hasPhysicalQuality(lightbulb, electronic).
hasPhysicalQuality(lightbulb, lightweight).
hasRole(lightbulb, lightingRole).
affordsTask(lightbulb, leisureTask).

% --- potatoes ---
obj(potatoes).
hasPhysicalQuality(potatoes, perishable).
hasRole(potatoes, consumableRole).
affordsTask(potatoes, foodPreparationTask).

% --- hook ---
obj(hook).
hasRole(hook, toolRole).

% --- seat ---
obj(seat).
hasPhysicalQuality(seat, rigid).
hasPhysicalQuality(seat, heavy).
hasRole(seat, furnitureRole).
affordsTask(seat, leisureTask).

% --- electric pencil sharpener ---
obj(electric_pencil_sharpener).
hasPhysicalQuality(electric_pencil_sharpener, electronic).
hasPhysicalQuality(electric_pencil_sharpener, heavy).
hasRole(electric_pencil_sharpener, toolRole).
affordsTask(electric_pencil_sharpener, maintenanceTask).

% --- dice ---
obj(dice).
hasPhysicalQuality(dice, lightweight).
hasPhysicalQuality(dice, rigid).
hasRole(dice, entertainmentRole).
affordsTask(dice, leisureTask).

% --- chess rook ---
obj(chess_rook).
hasPhysicalQuality(chess_rook, rigid).
hasPhysicalQuality(chess_rook, heavy).
hasRole(chess_rook, toolRole).
affordsTask(chess_rook, leisureTask).

% --- cooling device ---
obj(cooling_device).
hasPhysicalQuality(cooling_device, requiresCooling).
hasRole(cooling_device, applianceRole).
affordsTask(cooling_device, storageTask).

% --- tablespoon ---
obj(tablespoon).
hasPhysicalQuality(tablespoon, lightweight).
hasPhysicalQuality(tablespoon, hasContainer).
hasRole(tablespoon, utensilRole).
affordsTask(tablespoon, foodPreparationTask).

% --- glass fronted cupboard ---
obj(glass_fronted_cupboard).
hasPhysicalQuality(glass_fronted_cupboard, rigid).
hasPhysicalQuality(glass_fronted_cupboard, heavy).
hasRole(glass_fronted_cupboard, storageContainerRole).
affordsTask(glass_fronted_cupboard, storageTask).

% --- magazines ---
obj(magazines).
hasPhysicalQuality(magazines, lightweight).
hasRole(magazines, documentRole).
affordsTask(magazines, leisureTask).

% --- plate ---
obj(plate).
hasPhysicalQuality(plate, rigid).
hasPhysicalQuality(plate, hasContainer).
hasRole(plate, utensilRole).
affordsTask(plate, eatingDrinkingTask).

% --- jello ---
obj(jello).
hasPhysicalQuality(jello, perishable).
hasPhysicalQuality(jello, soft_Deformable).
hasRole(jello, consumableRole).
affordsTask(jello, eatingDrinkingTask).

% --- filing box ---
obj(filing_box).
hasPhysicalQuality(filing_box, heavy).
hasPhysicalQuality(filing_box, hasContainer).
hasRole(filing_box, storageContainerRole).
affordsTask(filing_box, storageTask).

% --- level ---
obj(level).
hasPhysicalQuality(level, rigid).
hasRole(level, toolRole).
affordsTask(level, maintenanceTask).

% --- stamp pad ---
obj(stamp_pad).
hasPhysicalQuality(stamp_pad, lightweight).
hasRole(stamp_pad, toolRole).
affordsTask(stamp_pad, maintenanceTask).

% --- bandages ---
obj(bandages).
hasPhysicalQuality(bandages, lightweight).
hasPhysicalQuality(bandages, washable).
hasRole(bandages, safetyEquipmentRole).
affordsTask(bandages, hygieneTask).

% --- screws ---
obj(screws).
hasPhysicalQuality(screws, granular).
hasRole(screws, toolRole).
affordsTask(screws, maintenanceTask).

% --- wrench ---
obj(wrench).
hasPhysicalQuality(wrench, heavy).
hasPhysicalQuality(wrench, rigid).
hasRole(wrench, toolRole).
affordsTask(wrench, maintenanceTask).

% --- vent brush ---
obj(vent_brush).
hasPhysicalQuality(vent_brush, lightweight).
hasPhysicalQuality(vent_brush, soft_Deformable).
hasRole(vent_brush, cleaningToolRole).
affordsTask(vent_brush, cleaningTask).

% --- screwdriver ---
obj(screwdriver).
hasPhysicalQuality(screwdriver, rigid).
hasPhysicalQuality(screwdriver, lightweight).
hasRole(screwdriver, toolRole).
affordsTask(screwdriver, maintenanceTask).

% --- rule ---
obj(rule).
hasPhysicalQuality(rule, rigid).
hasRole(rule, toolRole).
affordsTask(rule, maintenanceTask).

% --- onions ---
obj(onions).
hasPhysicalQuality(onions, perishable).
hasRole(onions, consumableRole).
affordsTask(onions, foodPreparationTask).

% --- broken glass ---
obj(broken_glass).
hasPhysicalQuality(broken_glass, fragile).
hasPhysicalQuality(broken_glass, sharp).
hasRole(broken_glass, wasteRole).

% --- ballpoint pen ---
obj(ballpoint_pen).
hasPhysicalQuality(ballpoint_pen, lightweight).
hasPhysicalQuality(ballpoint_pen, rigid).
hasRole(ballpoint_pen, toolRole).

% --- duvet cover ---
obj(duvet_cover).
hasPhysicalQuality(duvet_cover, soft_Deformable).
hasPhysicalQuality(duvet_cover, washable).
hasRole(duvet_cover, beddingRole).
affordsTask(duvet_cover, sleepingTask).

% --- toothpaste ---
obj(toothpaste).
hasPhysicalQuality(toothpaste, liquid).
hasPhysicalQuality(toothpaste, toxic_Hazardous).
hasRole(toothpaste, cleaningToolRole).
affordsTask(toothpaste, hygieneTask).

% --- hole punch ---
obj(hole_punch).
hasPhysicalQuality(hole_punch, heavy).
hasPhysicalQuality(hole_punch, rigid).
hasPhysicalQuality(hole_punch, hasBlade).
hasRole(hole_punch, toolRole).
affordsTask(hole_punch, maintenanceTask).

% --- feather ---
obj(feather).
hasPhysicalQuality(feather, lightweight).
hasPhysicalQuality(feather, soft_Deformable).
hasRole(feather, consumableRole).
affordsTask(feather, leisureTask).

% --- towel bar ---
obj(towel_bar).
hasPhysicalQuality(towel_bar, rigid).
hasPhysicalQuality(towel_bar, electronic).
hasRole(towel_bar, storageContainerRole).
affordsTask(towel_bar, hygieneTask).

% --- teddy bear ---
obj(teddy_bear).
hasRole(teddy_bear, entertainmentRole).
affordsTask(teddy_bear, leisureTask).

% --- glue ---
obj(glue).
hasPhysicalQuality(glue, liquid).
hasPhysicalQuality(glue, fragile).
hasRole(glue, toolRole).
affordsTask(glue, maintenanceTask).

% --- spray hose ---
obj(spray_hose).
hasPhysicalQuality(spray_hose, liquid).
hasPhysicalQuality(spray_hose, gas_Aerosol).
hasRole(spray_hose, toolRole).
affordsTask(spray_hose, maintenanceTask).

% --- chess pawn ---
obj(chess_pawn).
hasPhysicalQuality(chess_pawn, lightweight).
hasRole(chess_pawn, entertainmentRole).
affordsTask(chess_pawn, leisureTask).

% --- door ---
obj(door).
hasPhysicalQuality(door, rigid).
hasRole(door, furnitureRole).
affordsTask(door, maintenanceTask).

% --- phone ---
obj(phone).
hasPhysicalQuality(phone, electronic).
hasPhysicalQuality(phone, lightweight).
hasRole(phone, toolRole).
affordsTask(phone, workStudyTask).

% --- box ---
obj(box).
hasPhysicalQuality(box, heavy).
hasPhysicalQuality(box, rigid).
hasRole(box, storageContainerRole).
affordsTask(box, storageTask).

% --- electric socket ---
obj(electric_socket).
hasPhysicalQuality(electric_socket, electronic).
hasPhysicalQuality(electric_socket, heavy).
hasRole(electric_socket, applianceRole).

% --- pictures ---
obj(pictures).
hasPhysicalQuality(pictures, lightweight).
hasRole(pictures, decorationRole).

% --- garbage can ---
obj(garbage_can).
hasPhysicalQuality(garbage_can, heavy).
hasPhysicalQuality(garbage_can, hasContainer).
hasRole(garbage_can, storageContainerRole).
affordsTask(garbage_can, wasteDisposalTask).

% --- shades ---
obj(shades).
hasPhysicalQuality(shades, lightweight).
hasPhysicalQuality(shades, rigid).
hasRole(shades, decorationRole).
affordsTask(shades, leisureTask).

% --- violin ---
obj(violin).
hasPhysicalQuality(violin, rigid).
hasPhysicalQuality(violin, electronic).
hasRole(violin, musicalInstrumentRole).
affordsTask(violin, leisureTask).

% --- house ---
obj(house).
hasPhysicalQuality(house, heavy).
hasRole(house, furnitureRole).
hasRole(house, storageContainerRole).
affordsTask(house, leisureTask).
affordsTask(house, workStudyTask).

% --- foundation ---
obj(foundation).
hasPhysicalQuality(foundation, heavy).
hasRole(foundation, furnitureRole).

% --- hanger ---
obj(hanger).
hasPhysicalQuality(hanger, lightweight).
hasPhysicalQuality(hanger, rigid).
hasPhysicalQuality(hanger, soft_Deformable).
hasRole(hanger, clothingRole).
affordsTask(hanger, dressingTask).

% --- side chair ---
obj(side_chair).
hasPhysicalQuality(side_chair, rigid).
hasPhysicalQuality(side_chair, heavy).
hasRole(side_chair, furnitureRole).

% --- stick of butter ---
obj(stick_of_butter).
hasPhysicalQuality(stick_of_butter, perishable).
hasPhysicalQuality(stick_of_butter, granular).
hasRole(stick_of_butter, consumableRole).
affordsTask(stick_of_butter, foodPreparationTask).

% --- gutter ---
obj(gutter).
hasPhysicalQuality(gutter, heavy).
hasPhysicalQuality(gutter, rigid).
hasRole(gutter, toolRole).
affordsTask(gutter, maintenanceTask).

% --- drawstring bag ---
obj(drawstring_bag).
hasPhysicalQuality(drawstring_bag, soft_Deformable).
hasPhysicalQuality(drawstring_bag, lightweight).
hasRole(drawstring_bag, storageContainerRole).
affordsTask(drawstring_bag, storageTask).

% --- book ---
obj(book).
hasPhysicalQuality(book, lightweight).
hasPhysicalQuality(book, washable).
hasRole(book, documentRole).
affordsTask(book, leisureTask).

% --- cinnamon ---
obj(cinnamon).
hasPhysicalQuality(cinnamon, perishable).
hasRole(cinnamon, consumableRole).
affordsTask(cinnamon, foodPreparationTask).

% --- address label ---
obj(address_label).
hasPhysicalQuality(address_label, lightweight).
hasPhysicalQuality(address_label, fragile).
hasRole(address_label, documentRole).

% --- meat ---
obj(meat).
hasPhysicalQuality(meat, perishable).
hasRole(meat, consumableRole).
affordsTask(meat, foodPreparationTask).
affordsTask(meat, eatingDrinkingTask).

% --- nail clippers ---
obj(nail_clippers).
hasPhysicalQuality(nail_clippers, sharp).
hasPhysicalQuality(nail_clippers, rigid).
hasRole(nail_clippers, toolRole).
affordsTask(nail_clippers, hygieneTask).

% --- bone ---
obj(bone).
hasPhysicalQuality(bone, fragile).
hasPhysicalQuality(bone, heavy).
hasRole(bone, consumableRole).
affordsTask(bone, foodPreparationTask).

% --- grape ---
obj(grape).
hasPhysicalQuality(grape, perishable).
hasPhysicalQuality(grape, fragile).
hasRole(grape, consumableRole).
affordsTask(grape, eatingDrinkingTask).

% --- chocolate ---
obj(chocolate).
hasPhysicalQuality(chocolate, perishable).
hasRole(chocolate, consumableRole).
affordsTask(chocolate, eatingDrinkingTask).

% --- telephone directory ---
obj(telephone_directory).
hasRole(telephone_directory, documentRole).

% --- torch ---
obj(torch).
hasPhysicalQuality(torch, heated).
hasPhysicalQuality(torch, electronic).
hasRole(torch, lightingRole).
affordsTask(torch, leisureTask).

% --- clothing ---
obj(clothing).
hasPhysicalQuality(clothing, soft_Deformable).
hasPhysicalQuality(clothing, lightweight).
hasRole(clothing, clothingRole).
affordsTask(clothing, dressingTask).

% --- bungalow ---
obj(bungalow).
hasRole(bungalow, furnitureRole).

% --- jacket ---
obj(jacket).
hasPhysicalQuality(jacket, soft_Deformable).
hasPhysicalQuality(jacket, washable).
hasRole(jacket, clothingRole).
affordsTask(jacket, dressingTask).

% --- liquor glass ---
obj(liquor_glass).
hasPhysicalQuality(liquor_glass, lightweight).
hasPhysicalQuality(liquor_glass, rigid).
hasRole(liquor_glass, utensilRole).
affordsTask(liquor_glass, eatingDrinkingTask).

% --- footstool ---
obj(footstool).
hasPhysicalQuality(footstool, heavy).
hasPhysicalQuality(footstool, rigid).
hasRole(footstool, furnitureRole).
affordsTask(footstool, leisureTask).

% --- desk tray ---
obj(desk_tray).
hasPhysicalQuality(desk_tray, lightweight).
hasPhysicalQuality(desk_tray, hasContainer).
hasRole(desk_tray, storageContainerRole).
affordsTask(desk_tray, storageTask).

% --- stacking chairs ---
obj(stacking_chairs).
hasPhysicalQuality(stacking_chairs, lightweight).
hasRole(stacking_chairs, storageContainerRole).
affordsTask(stacking_chairs, storageTask).

% --- steak ---
obj(steak).
hasPhysicalQuality(steak, perishable).
hasPhysicalQuality(steak, fragile).
hasRole(steak, consumableRole).
affordsTask(steak, foodPreparationTask).
affordsTask(steak, eatingDrinkingTask).

% --- staples ---
obj(staples).
hasPhysicalQuality(staples, sharp).
hasRole(staples, toolRole).
affordsTask(staples, maintenanceTask).

% --- floor ---
obj(floor).
hasPhysicalQuality(floor, rigid).
hasPhysicalQuality(floor, heavy).
hasRole(floor, furnitureRole).
affordsTask(floor, storageTask).

% --- tuning fork ---
obj(tuning_fork).
hasPhysicalQuality(tuning_fork, rigid).
hasPhysicalQuality(tuning_fork, electronic).
hasRole(tuning_fork, toolRole).
affordsTask(tuning_fork, maintenanceTask).

% --- marble ---
obj(marble).
hasPhysicalQuality(marble, rigid).
hasPhysicalQuality(marble, granular).
hasRole(marble, decorationRole).

% --- cereal ---
obj(cereal).
hasPhysicalQuality(cereal, perishable).
hasPhysicalQuality(cereal, granular).
hasRole(cereal, consumableRole).
affordsTask(cereal, eatingDrinkingTask).

% --- garden ---
obj(garden).
hasPhysicalQuality(garden, soft_Deformable).
hasPhysicalQuality(garden, lightweight).
hasRole(garden, furnitureRole).
affordsTask(garden, leisureTask).

% --- tomatoes ---
obj(tomatoes).
hasPhysicalQuality(tomatoes, perishable).
hasRole(tomatoes, consumableRole).
affordsTask(tomatoes, eatingDrinkingTask).

% --- gum ---
obj(gum).
hasPhysicalQuality(gum, perishable).
hasPhysicalQuality(gum, liquid).
hasRole(gum, consumableRole).
affordsTask(gum, eatingDrinkingTask).

% --- pail ---
obj(pail).
hasPhysicalQuality(pail, hasContainer).
hasRole(pail, storageContainerRole).
affordsTask(pail, storageTask).

% --- folding door ---
obj(folding_door).
hasPhysicalQuality(folding_door, lightweight).
hasRole(folding_door, furnitureRole).
affordsTask(folding_door, storageTask).

% --- turkey ---
obj(turkey).
hasPhysicalQuality(turkey, perishable).
hasRole(turkey, consumableRole).
affordsTask(turkey, eatingDrinkingTask).

% --- heater ---
obj(heater).
hasPhysicalQuality(heater, heated).
hasRole(heater, applianceRole).
affordsTask(heater, maintenanceTask).

% --- index card ---
obj(index_card).
hasPhysicalQuality(index_card, lightweight).
hasPhysicalQuality(index_card, rigid).
hasRole(index_card, documentRole).
affordsTask(index_card, workStudyTask).

% --- coin ---
obj(coin).
hasPhysicalQuality(coin, lightweight).
hasRole(coin, consumableRole).

% --- ice cream ---
obj(ice_cream).
hasPhysicalQuality(ice_cream, requiresFreezing).
hasPhysicalQuality(ice_cream, perishable).
hasRole(ice_cream, consumableRole).
affordsTask(ice_cream, eatingDrinkingTask).

% --- ceiling ---
obj(ceiling).
hasPhysicalQuality(ceiling, rigid).
hasRole(ceiling, furnitureRole).

% --- chess piece ---
obj(chess_piece).
hasPhysicalQuality(chess_piece, lightweight).
hasRole(chess_piece, entertainmentRole).
affordsTask(chess_piece, leisureTask).

% --- pork ---
obj(pork).
hasPhysicalQuality(pork, perishable).
hasRole(pork, consumableRole).
affordsTask(pork, eatingDrinkingTask).

% --- legs ---
obj(legs).
hasRole(legs, furnitureRole).

% --- slipper ---
obj(slipper).
hasPhysicalQuality(slipper, soft_Deformable).
hasPhysicalQuality(slipper, lightweight).
hasRole(slipper, clothingRole).
affordsTask(slipper, dressingTask).

% --- folding shower door ---
obj(folding_shower_door).
hasPhysicalQuality(folding_shower_door, rigid).
hasPhysicalQuality(folding_shower_door, lightweight).
hasRole(folding_shower_door, furnitureRole).
affordsTask(folding_shower_door, leisureTask).

% --- gel toothpaste ---
obj(gel_toothpaste).
hasPhysicalQuality(gel_toothpaste, liquid).
hasPhysicalQuality(gel_toothpaste, toxic_Hazardous).
hasRole(gel_toothpaste, cleaningToolRole).
affordsTask(gel_toothpaste, hygieneTask).

% --- birth control pill ---
obj(birth_control_pill).
hasPhysicalQuality(birth_control_pill, perishable).
hasPhysicalQuality(birth_control_pill, liquid).
hasRole(birth_control_pill, consumableRole).
affordsTask(birth_control_pill, eatingDrinkingTask).

% --- silverware ---
obj(silverware).
hasPhysicalQuality(silverware, sharp).
hasPhysicalQuality(silverware, rigid).
hasRole(silverware, utensilRole).
affordsTask(silverware, foodPreparationTask).

% --- steel ---
obj(steel).
hasPhysicalQuality(steel, rigid).
hasPhysicalQuality(steel, heavy).
hasRole(steel, toolRole).

% --- fork ---
obj(fork).
hasPhysicalQuality(fork, sharp).
hasPhysicalQuality(fork, rigid).
hasRole(fork, utensilRole).
affordsTask(fork, foodPreparationTask).

% --- carpeting ---
obj(carpeting).
hasPhysicalQuality(carpeting, soft_Deformable).
hasPhysicalQuality(carpeting, washable).
hasRole(carpeting, furnitureRole).
affordsTask(carpeting, leisureTask).

% --- washcloth ---
obj(washcloth).
hasPhysicalQuality(washcloth, soft_Deformable).
hasPhysicalQuality(washcloth, washable).
hasRole(washcloth, cleaningToolRole).
affordsTask(washcloth, hygieneTask).

% --- water ---
obj(water).
hasPhysicalQuality(water, liquid).
hasRole(water, consumableRole).
hasRole(water, cleaningToolRole).
affordsTask(water, eatingDrinkingTask).
affordsTask(water, hygieneTask).

% --- hose ---
obj(hose).
hasPhysicalQuality(hose, liquid).
hasPhysicalQuality(hose, isFlexible).
hasRole(hose, toolRole).
affordsTask(hose, cleaningTask).

% --- round brush ---
obj(round_brush).
hasPhysicalQuality(round_brush, soft_Deformable).
hasPhysicalQuality(round_brush, lightweight).
hasRole(round_brush, toolRole).
affordsTask(round_brush, cleaningTask).

% --- juice ---
obj(juice).
hasPhysicalQuality(juice, liquid).
hasPhysicalQuality(juice, perishable).
hasRole(juice, consumableRole).
affordsTask(juice, eatingDrinkingTask).

% --- speaker ---
obj(speaker).
hasPhysicalQuality(speaker, electronic).
hasRole(speaker, toolRole).
affordsTask(speaker, leisureTask).

% --- lettuce ---
obj(lettuce).
hasPhysicalQuality(lettuce, perishable).
hasRole(lettuce, consumableRole).
affordsTask(lettuce, foodPreparationTask).

% --- shopping bag ---
obj(shopping_bag).
hasPhysicalQuality(shopping_bag, lightweight).
hasPhysicalQuality(shopping_bag, hasContainer).
hasRole(shopping_bag, storageContainerRole).
affordsTask(shopping_bag, storageTask).

% --- towel rack ---
obj(towel_rack).
hasPhysicalQuality(towel_rack, rigid).
hasPhysicalQuality(towel_rack, heavy).
hasRole(towel_rack, storageContainerRole).
affordsTask(towel_rack, storageTask).

% --- letters ---
obj(letters).
hasPhysicalQuality(letters, lightweight).
hasRole(letters, documentRole).

% --- keys ---
obj(keys).
hasPhysicalQuality(keys, lightweight).
hasPhysicalQuality(keys, rigid).
hasRole(keys, toolRole).
affordsTask(keys, maintenanceTask).

% --- hinged door ---
obj(hinged_door).
hasPhysicalQuality(hinged_door, rigid).
hasPhysicalQuality(hinged_door, heavy).
hasRole(hinged_door, furnitureRole).
affordsTask(hinged_door, storageTask).

% --- liquids ---
obj(liquids).
hasPhysicalQuality(liquids, liquid).
hasRole(liquids, consumableRole).
affordsTask(liquids, eatingDrinkingTask).

% --- dandruff shampoo ---
obj(dandruff_shampoo).
hasPhysicalQuality(dandruff_shampoo, liquid).
hasPhysicalQuality(dandruff_shampoo, toxic_Hazardous).
hasRole(dandruff_shampoo, cleaningToolRole).
affordsTask(dandruff_shampoo, hygieneTask).

% --- chips ---
obj(chips).
hasPhysicalQuality(chips, perishable).
hasPhysicalQuality(chips, granular).
hasRole(chips, consumableRole).
affordsTask(chips, eatingDrinkingTask).

% --- patio door ---
obj(patio_door).
hasPhysicalQuality(patio_door, heavy).
hasPhysicalQuality(patio_door, rigid).
hasRole(patio_door, furnitureRole).
affordsTask(patio_door, leisureTask).

% --- chess board ---
obj(chess_board).
hasPhysicalQuality(chess_board, rigid).
hasPhysicalQuality(chess_board, heavy).
hasRole(chess_board, furnitureRole).
affordsTask(chess_board, leisureTask).

% --- post notes ---
obj(post_notes).
hasRole(post_notes, documentRole).

% --- arch ---
obj(arch).
hasPhysicalQuality(arch, rigid).
hasPhysicalQuality(arch, heavy).
hasRole(arch, furnitureRole).

% --- wooden floor ---
obj(wooden_floor).
hasPhysicalQuality(wooden_floor, rigid).
hasPhysicalQuality(wooden_floor, fragile).

% --- jelly ---
obj(jelly).
hasPhysicalQuality(jelly, soft_Deformable).
hasPhysicalQuality(jelly, liquid).
hasRole(jelly, consumableRole).
affordsTask(jelly, eatingDrinkingTask).

% --- hard drive ---
obj(hard_drive).
hasPhysicalQuality(hard_drive, electronic).
hasPhysicalQuality(hard_drive, heavy).
hasRole(hard_drive, applianceRole).
affordsTask(hard_drive, storageTask).

% --- egg ---
obj(egg).
hasPhysicalQuality(egg, fragile).
hasPhysicalQuality(egg, perishable).
hasRole(egg, consumableRole).
affordsTask(egg, foodPreparationTask).

% --- cold tap ---
obj(cold_tap).
hasPhysicalQuality(cold_tap, liquid).
hasPhysicalQuality(cold_tap, electronic).
hasRole(cold_tap, toolRole).
affordsTask(cold_tap, hygieneTask).

% --- coupon ---
obj(coupon).
hasRole(coupon, consumableRole).

% --- machine ---
obj(machine).
hasPhysicalQuality(machine, electronic).
hasPhysicalQuality(machine, heavy).
hasRole(machine, toolRole).
affordsTask(machine, maintenanceTask).

% --- net ---
obj(net).
hasRole(net, toolRole).

% --- nails ---
obj(nails).
hasPhysicalQuality(nails, sharp).
hasPhysicalQuality(nails, rigid).
hasRole(nails, toolRole).
affordsTask(nails, maintenanceTask).

% --- duvet ---
obj(duvet).
hasPhysicalQuality(duvet, soft_Deformable).
hasPhysicalQuality(duvet, washable).
hasRole(duvet, beddingRole).
affordsTask(duvet, sleepingTask).

% --- pipe ---
obj(pipe).
hasPhysicalQuality(pipe, heavy).
hasRole(pipe, toolRole).
affordsTask(pipe, maintenanceTask).

% --- instrument triangle ---
obj(instrument_triangle).
hasPhysicalQuality(instrument_triangle, lightweight).
hasPhysicalQuality(instrument_triangle, rigid).
hasRole(instrument_triangle, musicalInstrumentRole).
affordsTask(instrument_triangle, leisureTask).

% --- paper and pencil ---
obj(paper_and_pencil).
hasPhysicalQuality(paper_and_pencil, lightweight).
hasPhysicalQuality(paper_and_pencil, rigid).
hasRole(paper_and_pencil, toolRole).
affordsTask(paper_and_pencil, workStudyTask).

% --- mouthwash ---
obj(mouthwash).
hasPhysicalQuality(mouthwash, liquid).
hasPhysicalQuality(mouthwash, toxic_Hazardous).
hasRole(mouthwash, cleaningToolRole).
affordsTask(mouthwash, hygieneTask).

% --- shelf ---
obj(shelf).
hasPhysicalQuality(shelf, rigid).
hasPhysicalQuality(shelf, heavy).
hasRole(shelf, storageContainerRole).
affordsTask(shelf, storageTask).

% --- suit ---
obj(suit).
hasPhysicalQuality(suit, rigid).
hasPhysicalQuality(suit, fragile).
hasRole(suit, clothingRole).
affordsTask(suit, dressingTask).

% --- pantry ---
obj(pantry).
hasPhysicalQuality(pantry, hasContainer).
hasRole(pantry, storageContainerRole).
hasRole(pantry, applianceRole).
affordsTask(pantry, storageTask).

% --- paperweight ---
obj(paperweight).
hasPhysicalQuality(paperweight, heavy).
hasPhysicalQuality(paperweight, rigid).
hasRole(paperweight, storageContainerRole).

% --- fridge ---
obj(fridge).
hasPhysicalQuality(fridge, electronic).
hasPhysicalQuality(fridge, heavy).
hasRole(fridge, applianceRole).
affordsTask(fridge, storageTask).

% --- letter slot ---
obj(letter_slot).
hasPhysicalQuality(letter_slot, lightweight).
hasRole(letter_slot, storageContainerRole).
affordsTask(letter_slot, wasteDisposalTask).

% --- bath shower ---
obj(bath_shower).
hasPhysicalQuality(bath_shower, electronic).
hasPhysicalQuality(bath_shower, heavy).
hasRole(bath_shower, cleaningToolRole).
affordsTask(bath_shower, hygieneTask).

% --- coins ---
obj(coins).
hasPhysicalQuality(coins, lightweight).
hasRole(coins, consumableRole).
affordsTask(coins, eatingDrinkingTask).

% --- ruler ---
obj(ruler).
hasPhysicalQuality(ruler, rigid).
hasRole(ruler, toolRole).
affordsTask(ruler, maintenanceTask).

% --- oven ---
obj(oven).
hasPhysicalQuality(oven, heated).
hasRole(oven, cookwareRole).
affordsTask(oven, foodPreparationTask).

% --- bones ---
obj(bones).
hasPhysicalQuality(bones, fragile).
hasPhysicalQuality(bones, rigid).
hasRole(bones, toolRole).

% --- dictionaries ---
obj(dictionaries).
hasPhysicalQuality(dictionaries, electronic).
hasPhysicalQuality(dictionaries, lightweight).
hasRole(dictionaries, toolRole).
affordsTask(dictionaries, workStudyTask).

% --- bowl ---
obj(bowl).
hasPhysicalQuality(bowl, hasContainer).
hasRole(bowl, storageContainerRole).
affordsTask(bowl, foodPreparationTask).
affordsTask(bowl, eatingDrinkingTask).

% --- bay window ---
obj(bay_window).
hasPhysicalQuality(bay_window, heavy).
hasPhysicalQuality(bay_window, rigid).
hasRole(bay_window, furnitureRole).

% --- concrete ---
obj(concrete).
hasPhysicalQuality(concrete, rigid).
hasPhysicalQuality(concrete, granular).
hasRole(concrete, consumableRole).

% --- belt ---
obj(belt).
hasPhysicalQuality(belt, lightweight).
hasPhysicalQuality(belt, soft_Deformable).
hasRole(belt, clothingRole).
affordsTask(belt, dressingTask).

% --- file cabinet ---
obj(file_cabinet).
hasRole(file_cabinet, storageContainerRole).

% --- desk ---
obj(desk).
hasPhysicalQuality(desk, rigid).
hasPhysicalQuality(desk, heavy).
hasRole(desk, furnitureRole).
affordsTask(desk, workStudyTask).

% --- marker ---
obj(marker).
hasPhysicalQuality(marker, lightweight).
hasRole(marker, toolRole).
affordsTask(marker, foodPreparationTask).

% --- bike ---
obj(bike).
hasPhysicalQuality(bike, heavy).
hasPhysicalQuality(bike, rigid).
hasRole(bike, furnitureRole).
affordsTask(bike, leisureTask).

% --- underwear ---
obj(underwear).
hasPhysicalQuality(underwear, soft_Deformable).
hasPhysicalQuality(underwear, lightweight).
hasRole(underwear, clothingRole).
affordsTask(underwear, dressingTask).

% --- bureau ---
obj(bureau).
hasPhysicalQuality(bureau, heavy).
hasPhysicalQuality(bureau, rigid).
hasRole(bureau, furnitureRole).
affordsTask(bureau, storageTask).

% --- divider ---
obj(divider).
hasPhysicalQuality(divider, rigid).
hasPhysicalQuality(divider, lightweight).
hasRole(divider, furnitureRole).
affordsTask(divider, storageTask).

% --- salt ---
obj(salt).
hasPhysicalQuality(salt, granular).
hasRole(salt, consumableRole).
affordsTask(salt, foodPreparationTask).

% --- label maker ---
obj(label_maker).
hasPhysicalQuality(label_maker, electronic).
hasPhysicalQuality(label_maker, lightweight).
hasRole(label_maker, toolRole).
affordsTask(label_maker, workStudyTask).

% --- clock ---
obj(clock).
hasPhysicalQuality(clock, rigid).
hasRole(clock, decorationRole).

% --- kleenex ---
obj(kleenex).
hasPhysicalQuality(kleenex, soft_Deformable).
hasPhysicalQuality(kleenex, lightweight).
hasRole(kleenex, consumableRole).
affordsTask(kleenex, hygieneTask).

% --- monitor ---
obj(monitor).
hasRole(monitor, entertainmentRole).
affordsTask(monitor, leisureTask).

% --- tomato plants ---
obj(tomato_plants).
hasPhysicalQuality(tomato_plants, perishable).

% --- toy ---
obj(toy).
hasRole(toy, entertainmentRole).
affordsTask(toy, leisureTask).

% --- card catalog ---
obj(card_catalog).
hasRole(card_catalog, documentRole).

% --- clothing shelf ---
obj(clothing_shelf).
hasPhysicalQuality(clothing_shelf, heavy).
hasPhysicalQuality(clothing_shelf, rigid).
hasRole(clothing_shelf, storageContainerRole).
affordsTask(clothing_shelf, storageTask).

% --- saucer ---
obj(saucer).
hasPhysicalQuality(saucer, lightweight).
hasPhysicalQuality(saucer, rigid).
hasRole(saucer, utensilRole).
affordsTask(saucer, eatingDrinkingTask).

% --- stapler ---
obj(stapler).
hasPhysicalQuality(stapler, heavy).
hasPhysicalQuality(stapler, rigid).
hasRole(stapler, toolRole).
affordsTask(stapler, maintenanceTask).

% --- storage ---
obj(storage).
hasPhysicalQuality(storage, hasContainer).
hasRole(storage, storageContainerRole).
affordsTask(storage, storageTask).

% --- basket ---
obj(basket).
hasPhysicalQuality(basket, lightweight).
hasPhysicalQuality(basket, rigid).
hasRole(basket, storageContainerRole).
affordsTask(basket, storageTask).

% --- serving trolley ---
obj(serving_trolley).
hasPhysicalQuality(serving_trolley, heavy).
hasPhysicalQuality(serving_trolley, rigid).
hasRole(serving_trolley, furnitureRole).
affordsTask(serving_trolley, foodPreparationTask).

% --- notepad ---
obj(notepad).
hasPhysicalQuality(notepad, lightweight).
hasPhysicalQuality(notepad, rigid).
hasRole(notepad, documentRole).
affordsTask(notepad, workStudyTask).

% --- salt and pepper ---
obj(salt_and_pepper).
hasPhysicalQuality(salt_and_pepper, granular).
hasRole(salt_and_pepper, consumableRole).
affordsTask(salt_and_pepper, foodPreparationTask).

% --- tap ---
obj(tap).
hasPhysicalQuality(tap, lightweight).
hasPhysicalQuality(tap, rigid).
hasRole(tap, toolRole).
affordsTask(tap, maintenanceTask).

% --- clothes ---
obj(clothes).
hasPhysicalQuality(clothes, soft_Deformable).
hasPhysicalQuality(clothes, washable).
hasRole(clothes, clothingRole).
affordsTask(clothes, dressingTask).

% --- hot table ---
obj(hot_table).
hasPhysicalQuality(hot_table, heated).
hasRole(hot_table, cookwareRole).
hasRole(hot_table, furnitureRole).
affordsTask(hot_table, foodPreparationTask).

% --- garage ---
obj(garage).
hasPhysicalQuality(garage, heavy).
hasPhysicalQuality(garage, rigid).
hasRole(garage, storageContainerRole).
hasRole(garage, furnitureRole).
affordsTask(garage, storageTask).

% --- bulb ---
obj(bulb).
hasPhysicalQuality(bulb, electronic).
hasRole(bulb, applianceRole).
affordsTask(bulb, leisureTask).

% --- dresser ---
obj(dresser).
hasPhysicalQuality(dresser, heavy).
hasPhysicalQuality(dresser, rigid).
hasRole(dresser, furnitureRole).
affordsTask(dresser, storageTask).

% --- highlighter pen ---
obj(highlighter_pen).
hasPhysicalQuality(highlighter_pen, lightweight).
hasPhysicalQuality(highlighter_pen, rigid).
hasRole(highlighter_pen, utensilRole).
affordsTask(highlighter_pen, foodPreparationTask).

% --- shopping basket ---
obj(shopping_basket).
hasPhysicalQuality(shopping_basket, lightweight).
hasPhysicalQuality(shopping_basket, rigid).
hasRole(shopping_basket, storageContainerRole).

% --- telephone index ---
obj(telephone_index).
hasPhysicalQuality(telephone_index, electronic).
hasPhysicalQuality(telephone_index, lightweight).
hasRole(telephone_index, toolRole).
affordsTask(telephone_index, workStudyTask).

% --- chest ---
obj(chest).
hasPhysicalQuality(chest, heavy).
hasPhysicalQuality(chest, rigid).
hasRole(chest, storageContainerRole).
affordsTask(chest, storageTask).

% --- flour ---
obj(flour).
hasPhysicalQuality(flour, granular).
hasRole(flour, consumableRole).
affordsTask(flour, foodPreparationTask).

% --- holdall ---
obj(holdall).
hasPhysicalQuality(holdall, soft_Deformable).
hasPhysicalQuality(holdall, lightweight).
hasRole(holdall, storageContainerRole).
affordsTask(holdall, storageTask).

% --- pair of pants ---
obj(pair_of_pants).
hasPhysicalQuality(pair_of_pants, soft_Deformable).
hasPhysicalQuality(pair_of_pants, lightweight).
hasRole(pair_of_pants, clothingRole).
affordsTask(pair_of_pants, dressingTask).

% --- shampoo and conditioner ---
obj(shampoo_and_conditioner).
hasPhysicalQuality(shampoo_and_conditioner, liquid).
hasRole(shampoo_and_conditioner, cleaningToolRole).
affordsTask(shampoo_and_conditioner, hygieneTask).

% --- binder ---
obj(binder).
hasPhysicalQuality(binder, lightweight).
hasPhysicalQuality(binder, rigid).
hasRole(binder, storageContainerRole).
affordsTask(binder, storageTask).

% --- suntan lotion ---
obj(suntan_lotion).
hasPhysicalQuality(suntan_lotion, liquid).
hasPhysicalQuality(suntan_lotion, washable).
hasRole(suntan_lotion, consumableRole).
affordsTask(suntan_lotion, hygieneTask).

% --- dry storage ---
obj(dry_storage).
hasPhysicalQuality(dry_storage, hasContainer).
hasRole(dry_storage, storageContainerRole).
affordsTask(dry_storage, storageTask).

% --- separate shower ---
obj(separate_shower).
hasPhysicalQuality(separate_shower, electronic).
hasPhysicalQuality(separate_shower, heavy).
hasRole(separate_shower, furnitureRole).
affordsTask(separate_shower, hygieneTask).

% --- garbage ---
obj(garbage).
hasRole(garbage, storageContainerRole).
hasRole(garbage, consumableRole).
affordsTask(garbage, wasteDisposalTask).

% --- picture frame ---
obj(picture_frame).
hasPhysicalQuality(picture_frame, rigid).
hasPhysicalQuality(picture_frame, lightweight).
hasRole(picture_frame, decorationRole).

% --- musical instrument ---
obj(musical_instrument).
hasRole(musical_instrument, musicalInstrumentRole).

% --- whisk ---
obj(whisk).
hasPhysicalQuality(whisk, lightweight).
hasPhysicalQuality(whisk, rigid).
hasPhysicalQuality(whisk, hasBlade).
hasRole(whisk, utensilRole).
affordsTask(whisk, foodPreparationTask).

% --- railing ---
obj(railing).
hasPhysicalQuality(railing, rigid).
hasRole(railing, furnitureRole).

% --- blanket ---
obj(blanket).
hasPhysicalQuality(blanket, soft_Deformable).
hasPhysicalQuality(blanket, washable).
hasRole(blanket, beddingRole).
affordsTask(blanket, sleepingTask).

% --- vegetables ---
obj(vegetables).
hasPhysicalQuality(vegetables, perishable).
hasPhysicalQuality(vegetables, granular).
hasRole(vegetables, consumableRole).
affordsTask(vegetables, foodPreparationTask).
affordsTask(vegetables, eatingDrinkingTask).

% --- teakettle ---
obj(teakettle).
hasPhysicalQuality(teakettle, heated).
hasRole(teakettle, cookwareRole).
affordsTask(teakettle, foodPreparationTask).

% --- paper towels ---
obj(paper_towels).
hasPhysicalQuality(paper_towels, lightweight).
hasPhysicalQuality(paper_towels, soft_Deformable).
hasPhysicalQuality(paper_towels, washable).
hasRole(paper_towels, cleaningToolRole).
affordsTask(paper_towels, cleaningTask).

% --- microwave oven ---
obj(microwave_oven).
hasPhysicalQuality(microwave_oven, electronic).
hasPhysicalQuality(microwave_oven, heated).
hasRole(microwave_oven, applianceRole).
affordsTask(microwave_oven, foodPreparationTask).

% --- garment bag ---
obj(garment_bag).
hasPhysicalQuality(garment_bag, soft_Deformable).
hasPhysicalQuality(garment_bag, lightweight).
hasRole(garment_bag, storageContainerRole).
affordsTask(garment_bag, storageTask).

% --- beets ---
obj(beets).
hasPhysicalQuality(beets, perishable).
hasRole(beets, consumableRole).
affordsTask(beets, eatingDrinkingTask).

% --- vacuum ---
obj(vacuum).
hasPhysicalQuality(vacuum, electronic).
hasPhysicalQuality(vacuum, heavy).
hasRole(vacuum, cleaningToolRole).
affordsTask(vacuum, cleaningTask).

% --- hair dryer ---
obj(hair_dryer).
hasPhysicalQuality(hair_dryer, electronic).
hasPhysicalQuality(hair_dryer, heavy).
hasRole(hair_dryer, applianceRole).
affordsTask(hair_dryer, leisureTask).

% --- beanbag ---
obj(beanbag).
hasPhysicalQuality(beanbag, soft_Deformable).
hasPhysicalQuality(beanbag, lightweight).
hasRole(beanbag, furnitureRole).
affordsTask(beanbag, leisureTask).

% --- chain ---
obj(chain).
hasPhysicalQuality(chain, rigid).
hasPhysicalQuality(chain, heavy).
hasRole(chain, toolRole).
affordsTask(chain, maintenanceTask).

% --- pump ---
obj(pump).
hasPhysicalQuality(pump, electronic).
hasPhysicalQuality(pump, heavy).
hasRole(pump, toolRole).
affordsTask(pump, maintenanceTask).

% --- coat hangers ---
obj(coat_hangers).
hasPhysicalQuality(coat_hangers, lightweight).
hasPhysicalQuality(coat_hangers, rigid).
hasRole(coat_hangers, storageContainerRole).
affordsTask(coat_hangers, storageTask).

% --- terrace railing ---
obj(terrace_railing).
hasPhysicalQuality(terrace_railing, rigid).
hasPhysicalQuality(terrace_railing, heavy).
hasRole(terrace_railing, furnitureRole).

% --- icebox ---
obj(icebox).
hasPhysicalQuality(icebox, requiresFreezing).
hasRole(icebox, applianceRole).
affordsTask(icebox, storageTask).

% --- typewriter ---
obj(typewriter).
hasPhysicalQuality(typewriter, heavy).
hasPhysicalQuality(typewriter, rigid).
hasRole(typewriter, toolRole).
affordsTask(typewriter, workStudyTask).

% --- nest of tables ---
obj(nest_of_tables).
hasRole(nest_of_tables, furnitureRole).

% --- ring ---
obj(ring).
hasPhysicalQuality(ring, lightweight).
hasPhysicalQuality(ring, rigid).
hasRole(ring, utensilRole).

% --- basket with handle ---
obj(basket_with_handle).
hasPhysicalQuality(basket_with_handle, lightweight).
hasPhysicalQuality(basket_with_handle, hasContainer).
hasRole(basket_with_handle, storageContainerRole).
affordsTask(basket_with_handle, storageTask).

% --- television ---
obj(television).
hasPhysicalQuality(television, electronic).
hasPhysicalQuality(television, heavy).
hasRole(television, applianceRole).
affordsTask(television, leisureTask).

% --- scotch tape ---
obj(scotch_tape).
hasPhysicalQuality(scotch_tape, lightweight).
hasPhysicalQuality(scotch_tape, soft_Deformable).
hasRole(scotch_tape, toolRole).
affordsTask(scotch_tape, leisureTask).

% --- checkbook holder ---
obj(checkbook_holder).
hasPhysicalQuality(checkbook_holder, hasContainer).
hasRole(checkbook_holder, storageContainerRole).
affordsTask(checkbook_holder, storageTask).

% --- mailbox ---
obj(mailbox).
hasPhysicalQuality(mailbox, heavy).
hasRole(mailbox, storageContainerRole).
affordsTask(mailbox, storageTask).

% --- mat ---
obj(mat).
hasPhysicalQuality(mat, soft_Deformable).
hasPhysicalQuality(mat, lightweight).
hasRole(mat, furnitureRole).
affordsTask(mat, storageTask).

% --- mouse ---
obj(mouse).
hasPhysicalQuality(mouse, lightweight).
hasRole(mouse, consumableRole).

% --- photograph ---
obj(photograph).
hasRole(photograph, documentRole).
affordsTask(photograph, leisureTask).

% --- ratchet screwdriver ---
obj(ratchet_screwdriver).
hasPhysicalQuality(ratchet_screwdriver, electronic).
hasPhysicalQuality(ratchet_screwdriver, heavy).
hasPhysicalQuality(ratchet_screwdriver, rigid).
hasPhysicalQuality(ratchet_screwdriver, isRotary).
hasRole(ratchet_screwdriver, toolRole).
affordsTask(ratchet_screwdriver, maintenanceTask).

% --- piano ---
obj(piano).
hasPhysicalQuality(piano, rigid).
hasPhysicalQuality(piano, electronic).
hasRole(piano, musicalInstrumentRole).
affordsTask(piano, leisureTask).

% --- recycling bin ---
obj(recycling_bin).
hasPhysicalQuality(recycling_bin, heavy).
hasPhysicalQuality(recycling_bin, hasContainer).
hasRole(recycling_bin, storageContainerRole).
affordsTask(recycling_bin, wasteDisposalTask).

% --- chess queen ---
obj(chess_queen).
hasRole(chess_queen, toolRole).

% --- pens and pencils ---
obj(pens_and_pencils).
hasPhysicalQuality(pens_and_pencils, lightweight).
hasRole(pens_and_pencils, utensilRole).
affordsTask(pens_and_pencils, workStudyTask).

% --- seeds ---
obj(seeds).
hasPhysicalQuality(seeds, perishable).
hasRole(seeds, consumableRole).

% --- toothbrush bristle ---
obj(toothbrush_bristle).
hasPhysicalQuality(toothbrush_bristle, soft_Deformable).
hasPhysicalQuality(toothbrush_bristle, lightweight).
affordsTask(toothbrush_bristle, hygieneTask).

% --- silk ---
obj(silk).
hasPhysicalQuality(silk, soft_Deformable).
hasPhysicalQuality(silk, lightweight).
hasRole(silk, clothingRole).

% --- grape juice ---
obj(grape_juice).
hasPhysicalQuality(grape_juice, liquid).
hasRole(grape_juice, consumableRole).
affordsTask(grape_juice, eatingDrinkingTask).

% --- plastic ---
obj(plastic).
hasPhysicalQuality(plastic, rigid).
hasPhysicalQuality(plastic, granular).

% --- frisbee ---
obj(frisbee).
hasPhysicalQuality(frisbee, lightweight).
hasPhysicalQuality(frisbee, rigid).
hasRole(frisbee, entertainmentRole).
hasRole(frisbee, toolRole).
affordsTask(frisbee, leisureTask).
affordsTask(frisbee, maintenanceTask).

% --- oven mitts ---
obj(oven_mitts).
hasPhysicalQuality(oven_mitts, soft_Deformable).
hasPhysicalQuality(oven_mitts, lightweight).
hasRole(oven_mitts, utensilRole).
affordsTask(oven_mitts, foodPreparationTask).

% --- hairbrush ---
obj(hairbrush).
hasPhysicalQuality(hairbrush, lightweight).
hasPhysicalQuality(hairbrush, rigid).
hasRole(hairbrush, toolRole).
affordsTask(hairbrush, hygieneTask).

% --- index card cabinet ---
obj(index_card_cabinet).
hasPhysicalQuality(index_card_cabinet, heavy).
hasPhysicalQuality(index_card_cabinet, hasContainer).
hasRole(index_card_cabinet, storageContainerRole).
affordsTask(index_card_cabinet, storageTask).

% --- cake ---
obj(cake).
hasPhysicalQuality(cake, perishable).
hasPhysicalQuality(cake, granular).
hasRole(cake, consumableRole).
affordsTask(cake, eatingDrinkingTask).

% --- caffeine ---
obj(caffeine).
hasPhysicalQuality(caffeine, perishable).
hasRole(caffeine, consumableRole).
affordsTask(caffeine, eatingDrinkingTask).

% --- coats ---
obj(coats).
hasRole(coats, clothingRole).
affordsTask(coats, dressingTask).

% --- toothbrush ---
obj(toothbrush).
hasPhysicalQuality(toothbrush, lightweight).
hasPhysicalQuality(toothbrush, fragile).
affordsTask(toothbrush, hygieneTask).

% --- picnic basket ---
obj(picnic_basket).
hasPhysicalQuality(picnic_basket, hasContainer).
hasRole(picnic_basket, storageContainerRole).
hasRole(picnic_basket, furnitureRole).
affordsTask(picnic_basket, foodPreparationTask).
affordsTask(picnic_basket, eatingDrinkingTask).

% --- tofu ---
obj(tofu).
hasPhysicalQuality(tofu, perishable).
hasPhysicalQuality(tofu, lightweight).
hasRole(tofu, consumableRole).
affordsTask(tofu, eatingDrinkingTask).

% --- books ---
obj(books).
hasPhysicalQuality(books, lightweight).
hasPhysicalQuality(books, washable).
hasRole(books, documentRole).
affordsTask(books, workStudyTask).

% --- saltshaker ---
obj(saltshaker).
hasPhysicalQuality(saltshaker, granular).
hasPhysicalQuality(saltshaker, lightweight).
hasRole(saltshaker, utensilRole).
affordsTask(saltshaker, foodPreparationTask).

% --- handbag ---
obj(handbag).
hasPhysicalQuality(handbag, soft_Deformable).
hasPhysicalQuality(handbag, lightweight).
hasRole(handbag, storageContainerRole).
affordsTask(handbag, storageTask).

% --- sofa ---
obj(sofa).
hasPhysicalQuality(sofa, soft_Deformable).
hasPhysicalQuality(sofa, heavy).
hasRole(sofa, furnitureRole).
affordsTask(sofa, leisureTask).

% --- bed ---
obj(bed).
hasPhysicalQuality(bed, soft_Deformable).
hasPhysicalQuality(bed, heavy).
hasRole(bed, furnitureRole).
affordsTask(bed, sleepingTask).

% --- tape dispenser ---
obj(tape_dispenser).
hasPhysicalQuality(tape_dispenser, lightweight).
hasPhysicalQuality(tape_dispenser, rigid).
hasRole(tape_dispenser, toolRole).
affordsTask(tape_dispenser, maintenanceTask).

% --- shower door ---
obj(shower_door).
hasPhysicalQuality(shower_door, rigid).
hasPhysicalQuality(shower_door, fragile).
hasRole(shower_door, furnitureRole).
affordsTask(shower_door, hygieneTask).

% --- bullet ---
obj(bullet).
hasPhysicalQuality(bullet, sharp).
hasRole(bullet, toolRole).
affordsTask(bullet, maintenanceTask).

% --- hat ---
obj(hat).
hasPhysicalQuality(hat, soft_Deformable).
hasPhysicalQuality(hat, lightweight).
hasRole(hat, clothingRole).
affordsTask(hat, dressingTask).

% --- tomato ---
obj(tomato).
hasPhysicalQuality(tomato, perishable).
hasPhysicalQuality(tomato, fragile).
hasRole(tomato, consumableRole).
affordsTask(tomato, eatingDrinkingTask).

% --- garden hose ---
obj(garden_hose).
hasPhysicalQuality(garden_hose, liquid).
hasRole(garden_hose, toolRole).
affordsTask(garden_hose, hygieneTask).
affordsTask(garden_hose, gardeningTask).

% --- tape ---
obj(tape).
hasPhysicalQuality(tape, isFlexible).
hasPhysicalQuality(tape, lightweight).
hasRole(tape, toolRole).
affordsTask(tape, maintenanceTask).

% --- textile ---
obj(textile).
hasPhysicalQuality(textile, soft_Deformable).
hasPhysicalQuality(textile, lightweight).
hasRole(textile, clothingRole).

% --- peanut butter ---
obj(peanut_butter).
hasPhysicalQuality(peanut_butter, perishable).
hasPhysicalQuality(peanut_butter, liquid).
hasRole(peanut_butter, consumableRole).
affordsTask(peanut_butter, eatingDrinkingTask).

% --- bookcase ---
obj(bookcase).
hasPhysicalQuality(bookcase, heavy).
hasPhysicalQuality(bookcase, rigid).
hasRole(bookcase, storageContainerRole).
affordsTask(bookcase, storageTask).

% --- birds ---
obj(birds).
hasPhysicalQuality(birds, lightweight).
hasPhysicalQuality(birds, soft_Deformable).
hasRole(birds, entertainmentRole).
affordsTask(birds, leisureTask).

% --- cans ---
obj(cans).
hasPhysicalQuality(cans, lightweight).
hasPhysicalQuality(cans, rigid).
hasRole(cans, storageContainerRole).
affordsTask(cans, storageTask).

% --- tablecloth ---
obj(tablecloth).
hasPhysicalQuality(tablecloth, soft_Deformable).
hasPhysicalQuality(tablecloth, washable).
hasRole(tablecloth, decorationRole).
affordsTask(tablecloth, leisureTask).

% --- cans of paint ---
obj(cans_of_paint).
hasPhysicalQuality(cans_of_paint, liquid).
hasPhysicalQuality(cans_of_paint, fragile).
hasRole(cans_of_paint, consumableRole).
affordsTask(cans_of_paint, maintenanceTask).

% --- toilet tank ---
obj(toilet_tank).
hasPhysicalQuality(toilet_tank, heavy).
hasRole(toilet_tank, applianceRole).
affordsTask(toilet_tank, wasteDisposalTask).

% --- pen ---
obj(pen).
hasPhysicalQuality(pen, lightweight).
hasPhysicalQuality(pen, rigid).
hasRole(pen, toolRole).
affordsTask(pen, workStudyTask).

% --- flower ---
obj(flower).
hasPhysicalQuality(flower, perishable).
hasRole(flower, consumableRole).

% --- linen ---
obj(linen).
hasPhysicalQuality(linen, soft_Deformable).
hasPhysicalQuality(linen, washable).
hasRole(linen, clothingRole).
affordsTask(linen, dressingTask).

% --- toilet brush ---
obj(toilet_brush).
hasPhysicalQuality(toilet_brush, lightweight).
hasPhysicalQuality(toilet_brush, fragile).
hasRole(toilet_brush, cleaningToolRole).
affordsTask(toilet_brush, cleaningTask).

% --- wax ---
obj(wax).
hasPhysicalQuality(wax, liquid).
hasPhysicalQuality(wax, perishable).
hasRole(wax, consumableRole).
affordsTask(wax, eatingDrinkingTask).

% --- sock ---
obj(sock).
hasPhysicalQuality(sock, soft_Deformable).
hasPhysicalQuality(sock, lightweight).
hasRole(sock, clothingRole).
affordsTask(sock, dressingTask).

% --- boxes ---
obj(boxes).
hasPhysicalQuality(boxes, heavy).
hasPhysicalQuality(boxes, rigid).
hasRole(boxes, storageContainerRole).
affordsTask(boxes, storageTask).

% --- kitchen table ---
obj(kitchen_table).
hasPhysicalQuality(kitchen_table, rigid).
hasPhysicalQuality(kitchen_table, heavy).
hasRole(kitchen_table, furnitureRole).
affordsTask(kitchen_table, eatingDrinkingTask).
affordsTask(kitchen_table, foodPreparationTask).

% --- sink ---
obj(sink).
hasPhysicalQuality(sink, hasContainer).
hasPhysicalQuality(sink, heavy).
hasRole(sink, cleaningToolRole).
affordsTask(sink, hygieneTask).
affordsTask(sink, cleaningTask).

% --- cellar ---
obj(cellar).
hasPhysicalQuality(cellar, heavy).
hasPhysicalQuality(cellar, rigid).
hasRole(cellar, storageContainerRole).
affordsTask(cellar, storageTask).

% --- disk ---
obj(disk).
hasRole(disk, storageContainerRole).
affordsTask(disk, storageTask).

% --- folding chair ---
obj(folding_chair).
hasPhysicalQuality(folding_chair, lightweight).
hasPhysicalQuality(folding_chair, rigid).
hasRole(folding_chair, furnitureRole).
affordsTask(folding_chair, storageTask).

% --- bread ---
obj(bread).
hasPhysicalQuality(bread, perishable).
hasPhysicalQuality(bread, granular).
hasRole(bread, consumableRole).
affordsTask(bread, foodPreparationTask).
affordsTask(bread, eatingDrinkingTask).

% --- eyeglasses case ---
obj(eyeglasses_case).
hasPhysicalQuality(eyeglasses_case, lightweight).
hasPhysicalQuality(eyeglasses_case, hasContainer).
hasRole(eyeglasses_case, storageContainerRole).
affordsTask(eyeglasses_case, storageTask).

% --- broccoli ---
obj(broccoli).
hasPhysicalQuality(broccoli, perishable).
hasPhysicalQuality(broccoli, granular).
hasRole(broccoli, consumableRole).
affordsTask(broccoli, eatingDrinkingTask).

% --- scale ---
obj(scale).
hasPhysicalQuality(scale, electronic).
hasPhysicalQuality(scale, heavy).
hasRole(scale, toolRole).
affordsTask(scale, maintenanceTask).

% --- trash can ---
obj(trash_can).
hasPhysicalQuality(trash_can, heavy).
hasRole(trash_can, storageContainerRole).
hasRole(trash_can, wasteRole).
affordsTask(trash_can, wasteDisposalTask).

