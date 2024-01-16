local miscSub = menu.add_feature("Miscellaneous", "parent", apexStuff["root"].id)

menu.add_feature("Start Event", "action_value_str", miscSub.id, function(f) 
    if f.value == 0 then
        script.set_global_i(262145 + 36157, 3600000)
        script.set_global_i(262145 + 36158, 1800000)
        script.set_global_i(262145 + 36055, 1)
    elseif f.value == 1 then
        script.set_global_i(262145 + 36054, 1)
    elseif f.value == 2 then
        script.set_global_i(262145 + 28150, 1) -- 
    elseif f.value == 3 then
        script.set_global_i(262145 + 33099, 1) -- freemode.c -> COLLECTABLES_TRICK_OR_TREAT
    elseif f.value == 4 then
        script.set_global_i(262145 + 34283, 1)
    end
end):set_str_data({"Christmas Truck", "Yeti", "Peyote Plants", "Jack o'Lanterns", "Snowmen",})

menu.add_feature("Story Mode", "action_value_str", miscSub.id, function(f) 
    if f.value == 0 then
        apexStuff["natives"].network.shutdown_and_launch_single_player_game()
    else
        apexStuff["natives"].stats.set_profile_setting_prologue_complete()
    end
end):set_str_data({"Go To", "Skip Prologue"})

menu.add_feature("Bad Sport", "action_value_str", miscSub.id, function(f) 
    if f.value == 0 then
        stats.stat_set_float(gameplay.get_hash_key("MPPLY_OVERALL_BADSPORT"), 120000, true)
        stats.stat_set_bool(gameplay.get_hash_key("MPPLY_CHAR_IS_BADSPORT"), true, true)
        stats.stat_set_int(gameplay.get_hash_key("MPPLY_BECAME_BADSPORT_NUM"), 1, true)
        stats.stat_set_int(gameplay.get_hash_key("MPPLY_BADSPORT_MESSAGE"), 1, true)
    else
        stats.stat_set_float(gameplay.get_hash_key("MPPLY_OVERALL_BADSPORT"), 0, true)
        stats.stat_set_bool(gameplay.get_hash_key("MPPLY_CHAR_IS_BADSPORT"), false, true)
        stats.stat_set_int(gameplay.get_hash_key("MPPLY_BECAME_BADSPORT_NUM"), 0, true)
        stats.stat_set_int(gameplay.get_hash_key("MPPLY_BADSPORT_MESSAGE"), 0, true)
    end
    menu.notify("Change sessions.", "Apex")
end):set_str_data({"Become", "Remove"})

menu.add_feature("Enable Snow", "toggle", miscSub.id, function(f)
    menu.get_feature_by_hierarchy_key("online.tunables.snow").on = f.on
end)

menu.add_feature("Restore removed vehicles", "action", miscSub.id, function()
    for _, index in ipairs(apexStuff["tables"].unreleasedVehicles) do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end
end)

menu.add_feature("Set clear plate", "action", miscSub.id, function()
    if player.is_player_in_any_vehicle(player.player_id()) then
        vehicle.set_vehicle_number_plate_text(player.player_vehicle(), "-")
    end
end)

vanityPlateFunc = menu.add_feature("Vanity Plates", "autoaction_value_str", miscSub.id, function(f, pid)
    if player.is_player_in_any_vehicle(player.player_id()) then
        vehicle.set_vehicle_number_plate_index(player.player_vehicle(), f.value + 6)
    end
end)
vanityPlateFunc:set_str_data({"E-Cola", "Las Venturas", "Liberty City", "LS Car Meet", "Panic", "Pounders", "Sprunk"})