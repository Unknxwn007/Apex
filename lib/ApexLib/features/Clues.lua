local cluesSub = menu.add_feature("Clues", "parent", apexStuff["root"].id)

menu.add_feature("Serial Killer", "action_value_str", cluesSub.id, function(f) 
    if f.value == 0 then
        entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-678.9984, 5797.6851, 17.3309))
    elseif f.value == 1 then
        entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(1901.4042, 4911.5479, 48.6951))
    elseif f.value == 2 then
        entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(1111.7750, 3142.0457, 38.4241))
    elseif f.value == 3 then
        entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-136.5509, 1912.8038, 197.2982))
    end
end):set_str_data({"Bloody Handprint", "Machete", "Severed Hand", "Message"})
menu.add_feature("Black Van", "action_value_str", cluesSub.id, function(f) 
    if f.value == 0 then
        entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(2576.0391, 1251.7494, 43.6099))
    elseif f.value == 1 then
        entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(2903.4150, 3644.0413, 43.8774))
    elseif f.value == 2 then
        entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(2432.3904, 5846.0757, 58.8891))
    elseif f.value == 3 then
        entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-1567.880, 4424.6104, 7.2154))
    elseif f.value == 4 then
        entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-1715.793, 2618.7686, 2.9409))
    end
end):set_str_data({"1", "2", "3", "4", "5"})
menu.add_feature("", "action", cluesSub.id, function() 
    -- penis feature
end)
menu.add_feature("Yeti Clues", "action_value_str", cluesSub.id, function(f) 
    if f.value == 0 then
        entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-1562.69, 4699.04, 50.426))
    elseif f.value == 1 then
        entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-1359.869, 4733.429, 46.919))
    elseif f.value == 2 then
        entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-1715.398, 4501.203, 0.096))
    elseif f.value == 3 then
        entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-1282.18, 4487.826, 12.643))
    elseif f.value == 4 then
        entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-1569.107, 4478.335, 21.157))
    end
end):set_str_data({"Camp", "Clothes", "Dead Deer", "Car Wreck", "Body Parts"})