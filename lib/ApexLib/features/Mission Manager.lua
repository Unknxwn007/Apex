local missionSub = menu.add_feature("Mission Manager", "parent", apexStuff["root"].id)

local theChopShopDLC = menu.add_feature("The Chop Shop", "parent", missionSub.id)


menu.add_feature("Remove cooldown for", "action_value_str", missionSub.id, function(f) 
    if f.value == 0 then
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. "XM22JUGGALOWORKCDTIMER"), -1, true)
    elseif f.value == 1 then
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. "SALV23_CFR_COOLDOWN"), -1, true)
    elseif f.value == 2 then
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. "IMP_EXP_SELL_MISSION_CD"), -1, true) -- might be a trigger for suspension?
    else
        menu.notify("Error 0x42069", "Apex", 10, colors.red)
    end
end):set_str_data({"Dax", "Chicken Farm Raid", "Import Export Sales"})

menu.add_feature("Enable Vincent contact missions", "action", theChopShopDLC.id, function()
    apexStuff["functions"].enableVincent()
end)

menu.add_feature("Skip missions for", "action_value_str", missionSub.id, function(f) 
    if f.value == 0 then
        apexStuff["functions"].skipYachtMissions()
    elseif f.value == 1 then
        apexStuff["functions"].skipBennyMissions()
    elseif f.value == 2 then
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. "ULP_MISSION_PROGRESS"), 127, true)
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. "ULP_MISSION_CURRENT"), 0, true)
   --[[elseif f.value == 3 then
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).."XM22_FLOW"), 1234, true)
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).."XM22_MISSIONS"), 1234, true)
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).."XM22_CURRENT"), 1234, true)
        menu.notify("You have to do the final mission yourself!", "Apex", 10, colors.yellow)--]]
    else
        menu.notify("Error 0x42069", "Apex", 10, colors.red)
    end
end):set_str_data({"Yacht", "Benny", "ULP",})-- "Dax",})

menu.add_feature("Trigger Alien Egg resupply mission", "action", missionSub.id, function()
    apexStuff["functions"].triggerAlienBunker()
end)