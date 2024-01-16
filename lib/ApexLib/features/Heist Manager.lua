local heistSub = menu.add_feature("Heist Manager", "parent", apexStuff["root"].id)

local instFinish = menu.add_feature("Instant Finisher", "parent", heistSub.id)
local legacyHeist = menu.add_feature("Legacy Heists", "parent", heistSub.id)
local apt15mSub = menu.add_feature("15 Mil payouts", "parent", legacyHeist.id, function()
    menu.notify("Please use these within 30 seconds of entering the cutscene.", "Apex", 10, apexStuff["colors"].yellow)
    menu.notify("You HAVE TO choose the right difficulty or you won't get paid!!", "Apex", 10, apexStuff["colors"].yellow)
end)
local doomsdayHeist = menu.add_feature("The Doomsday Heist", "parent", heistSub.id)
local casinoHeist = menu.add_feature("The Casino Heist", "parent", heistSub.id)
--local casinoModdedPresets = menu.add_feature("Modded Presets", "parent", casinoHeist.id)
local cayopericoHeist = menu.add_feature("The Cayo Perico Heist", "parent", heistSub.id)
local autoShopRobberies = menu.add_feature("Auto Shop Robberies", "parent", heistSub.id)
--local autoShopPayout = menu.add_feature("Payout Editor", "parent", autoShopRobberies.id)
local salvageRobberies = menu.add_feature("Salvage Yard Robberies", "parent", heistSub.id)


--                   !! General !!
menu.add_feature("Remove cooldown for", "action_value_str", heistSub.id, function(f) 
    if f.value == 0 then
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["functions"].getCurrentChar(false).."H4_COOLDOWN"), 0, true)
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["functions"].getCurrentChar(false).."H4_COOLDOWN_HARD"), 0, true)
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["functions"].getCurrentChar(false).."H4_TARGET_POSIX"), 1659643454, true)
    elseif f.value == 1 then
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["functions"].getCurrentChar(false).."H4_COOLDOWN"), 0, true)
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["functions"].getCurrentChar(false).."H4_COOLDOWN_HARD"), 0, true)
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["functions"].getCurrentChar(false).."H4_TARGET_POSIX"), 1659429119, true)
    elseif f.value == 2 then
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. "SALV23_VEHROB_CD"), -1, true)
    else
        menu.notify("Error 0x42069", "Apex", 10, apexStuff["colors"].red)
    end
end):set_str_data({"Cayo Solo", "Cayo Friends", "Salvage Yard Robbery"})


--                   !! Instant Finisher !! 
menu.add_feature("Cayo / Agency / Tuners", "action", instFinish.id, function()
    apexStuff["functions"].instantFinish2020()
end)
menu.add_feature("Casino Aggressive", "action", instFinish.id, function()
    apexStuff["functions"].instantFinishH3()
end)
menu.add_feature("Doomsday Heist", "action", instFinish.id, function()
    apexStuff["functions"].instantFinishH2()
end)
menu.add_feature("Legacy Heists", "action", instFinish.id, function()
    apexStuff["functions"].instantFinishApt()
end)

--                   !! Legacy Heists !! 
menu.add_feature("The Fleeca Job", "action_value_str", apt15mSub.id, function(f) 
    if f.value == 0 then
        apexStuff["functions"].maxFleecaNormal()
    else
        apexStuff["functions"].maxFleecaHard()
    end
end):set_str_data({"Normal", "Hard"})
menu.add_feature("The Prison Break", "action_value_str", apt15mSub.id, function(f) 
    if f.value == 0 then
        apexStuff["functions"].maxPrisonNormal()
    else
        apexStuff["functions"].maxPrisonHard()
    end
end):set_str_data({"Normal", "Hard"})
menu.add_feature("The Humane Labs Raid", "action_value_str", apt15mSub.id, function(f) 
    if f.value == 0 then
        apexStuff["functions"].maxHumaneNormal()
    else
        apexStuff["functions"].maxHumaneHard()
    end
end):set_str_data({"Normal", "Hard"})
menu.add_feature("Series A Funding", "action_value_str", apt15mSub.id, function(f) 
    if f.value == 0 then
        apexStuff["functions"].maxSAFNormal()
    else
        apexStuff["functions"].maxSAFHard()
    end
end):set_str_data({"Normal", "Hard"})
menu.add_feature("Pacific Standard Job", "action_value_str", apt15mSub.id, function(f) 
    if f.value == 0 then
        apexStuff["functions"].maxPacificNormal()
    else
        apexStuff["functions"].maxPacificHard()
    end
end):set_str_data({"Normal", "Hard"})

menu.add_feature("Skip Current Heist Setups", "action", legacyHeist.id, function()
    stats.stat_set_int(gameplay.get_hash_key(helpers.getCurrentChar .. "HEIST_PLANNING_STAGE"), -1, true)
end)
menu.add_feature("Reset Setups", "action", legacyHeist.id, function()
    stats.stat_set_int(gameplay.get_hash_key(helpers.getCurrentChar .. "HEIST_PLANNING_STAGE"), 0, true)
end)

--                   !! The Doomsday Heist !!
menu.add_feature("Auto Setup:", "autoaction_value_str", doomsdayHeist.id, function(f) 
    if f.value == 0 then
        apexStuff["functions"].doomsDayActOne()
    elseif f.value == 1 then 
        apexStuff["functions"].doomsDayActTwo()
    elseif f.value == 2 then 
        apexStuff["functions"].doomsDayActThree()
    else
        menu.notify("Error 0x42069", "Apex", 10, apexStuff["colors"].red)
    end
end):set_str_data({"Act 1: The Data Breaches", "Act 2: The Bodgan Problem", "Act 3: Doomsday Scenario"})
menu.add_feature("Max Payout", "action", doomsdayHeist.id, function()
    apexStuff["functions"].maxPayoutH2Smart()
end)
menu.add_feature("Complete all Acts", "action", doomsdayHeist.id, function()
    stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. "GANGOPS_FM_MISSION_PROG"), -1, true)
end)

--                   !! The Casino Heist !! 
menu.add_feature("Change Payout for", "action_value_str", casinoHeist.id, function(f) 
    apexStuff["functions"].getFMHost()
    local value = helpers.getInput("Enter payout value", "", 10, 0)
    if value == nil or value == "" then return end
    if f.value == 0 then
        script.set_global_i(1963945 + 1497 + 736 + 92 + 1, value)
    elseif f.value == 1 then
        script.set_global_i(1963945 + 1497 + 736 + 92 + 2, value)
    elseif f.value == 2 then
        script.set_global_i(1963945 + 1497 + 736 + 92 + 3, value)
    elseif f.value == 3 then
        script.set_global_i(1963945 + 1497 + 736 + 92 + 4, value)
    else
        menu.notify("Error 0x42069", "Apex", 10, apexStuff["colors"].red)
    end
end):set_str_data({"Player 1", "Player 2", "Player 3", "Player 4"})
menu.add_feature("Auto Setup:", "action_value_str", casinoHeist.id, function(f) 
    if f.value == 0 then
        apexStuff["functions"].casinoHeistSilentSneaky()
    elseif f.value == 1 then 
        apexStuff["functions"].casinoHeistBigCon()
    elseif f.value == 2 then 
        apexStuff["functions"].casinoHeistAggressive()
    else
        menu.notify("Error 0x42069", "Apex", 10, apexStuff["colors"].red)
    end
    menu.notify("YOU NEED TO SELECT A TARGET YOURSELF!", "Apex", 10, apexStuff["colors"].red)
end):set_str_data({"Silent & Sneaky", "The Big Con", "Aggressive"})
menu.add_feature("Target", "action_value_str", casinoHeist.id, function(f) 
    if f.value == 0 then
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. "H3OPT_TARGET"), 3, true)
    elseif f.value == 1 then 
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. "H3OPT_TARGET"), 1, true)
    elseif f.value == 2 then 
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. "H3OPT_TARGET"), 2, true)
    elseif f.value == 3 then 
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. "H3OPT_TARGET"), 0, true)
    else
        menu.notify("Error 0x42069", "Apex", 10, apexStuff["colors"].red)
    end
end):set_str_data({"Diamonds", "Gold", "Artworkwd", "Cash"})
menu.add_feature("Skip", "action_value_str", casinoHeist.id, function(f) 
    if f.value == 0 then
        if script.get_global_i(gameplay.get_hash_key("fm_mission_controller", 52985)) == 3 or script.get_global_i(gameplay.get_hash_key("fm_mission_controller", 52985)) == 4 then 
            script.set_global_i(gameplay.get_hash_key("fm_mission_controller", 52985, 5))
        end
    elseif f.value == 1 then -- keypad
        if script.get_global_i(gameplay.get_hash_key("fm_mission_controller", 54047)) == 3 or  script.get_global_i(gameplay.get_hash_key("fm_mission_controller", 54047)) < 100 then 
            script.set_global_i(gameplay.get_hash_key("fm_mission_controller", 54047, 5))
        end
    else
        menu.notify("Error 0x42069", "Apex", 10, apexStuff["colors"].red)
    end
end):set_str_data({"Fingerprints", "Keypads"})
menu.add_feature("Max Payout For All (Diamond)", "action_value_str", casinoHeist.id, function(f)
    if f.value == 0 then
        apexStuff["functions"].maxPayoutH3DNormal()
    elseif f.value == 1 then
        apexStuff["functions"].maxPayoutH3DHard()
    else
    end
end):set_str_data({"Normal", "Hard"})
menu.add_feature("Remove All CCTV Camera's", "action", casinoHeist.id, function()functions.
    menu.get_feature_by_hierarchy_key("online.casinoperico_heist.remove_cameras"):toggle()
end)
menu.add_feature("Reset Board", "action", casinoHeist.id, function()
    stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. "H3OPT_BITSET0"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. "H3OPT_BITSET1"), 0, true)
end)

--                   !! The Cayo Perico Heist !! 
menu.add_feature("Auto Setup:", "action_value_str", cayopericoHeist.id, function(f) 
    if f.value == 0 then
        apexStuff["functions"].cayoPericoNormal()
    elseif f.value == 1 then 
        apexStuff["functions"].cayoPericoHard()
    else
        menu.notify("Error 0x42069", "Apex", 10, apexStuff["colors"].red)
    end
    menu.notify("YOU NEED TO SELECT A TARGET YOURSELF!", "Apex", 10, apexStuff["colors"].red)
end):set_str_data({"Normal", "Hard"})
menu.add_feature("Target", "action_value_str", cayopericoHeist.id, function(f) 
    if f.value == 0 then
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) ..  "H4CNF_TARGET"), 5, true)
    elseif f.value == 1 then 
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) ..  "H4CNF_TARGET"), 5, true)
    elseif f.value == 2 then 
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) ..  "H4CNF_TARGET"), 5, true)
    elseif f.value == 3 then 
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) ..  "H4CNF_TARGET"), 5, true)
    else
        menu.notify("Error 0x42069", "Apex", 10, apexStuff["colors"].red)
    end
end):set_str_data({"Panther Statue", "Pink Diamond", "Bearer Bonds", "Ruby Necklace", "Sinsimito Tequila", "Madrazo Files"})
local cayoBagSize = menu.add_feature("Bag Size", "action_value_i", cayopericoHeist.id, function(f)
    script.set_global_i(1859395035, f.value)
end)
cayoBagSize.min, cayoBagSize.max, cayoBagSize.mod, cayoBagSize.value = 1800, 100000, 1000, 1800
menu.add_feature("Set everyone's cut to 151%", "toggle", cayopericoHeist.id, function(f)
    menu.notify("#FF0000FF#DOES NOT WORK IN HARD MODE! PAYOUT WILL BE GLITCHED", "Apex", 10, apexStuff["colors"].red)
    while f.on do
        script.set_global_i(1970744 + 831 + 56 + 1, 151)
        script.set_global_i(1970744 + 831 + 56 + 2, 151)
        script.set_global_i(1970744 + 831 + 56 + 3, 151)
        script.set_global_i(1970744 + 831 + 56 + 4, 151)
        system.wait(0)
    end
end)
menu.add_feature("Remove All CCTV Camera's", "action", cayopericoHeist.id, function()
    menu.get_feature_by_hierarchy_key("online.casinoperico_heist.remove_cameras"):toggle()
end)
menu.add_feature("Skip fingerprint", "action", cayopericoHeist.id, function()
    if script.get_global_i(gameplay.get_hash_key("fm_mission_controller", 52985)) ~= 1 then 
        script.set_global_i(gameplay.get_hash_key("fm_mission_controller"), 52985, 5)
    end
end)
menu.add_feature("Reset Heist", "action", cayopericoHeist.id, function()
    stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. "H4_MISSIONS"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. "H4_PROGRESS"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. "H4_PLAYTHROUGH_STATUS"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. "H4CNF_APPROACH"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. "H4CNF_BS_ENTR"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. "H4CNF_BS_GEN"), 0, true)
end)

--                   !! Auto Shop Robberies !! 
menu.add_feature("Skip current preps", "action", autoShopRobberies.id, function()
    stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. "TUNER_GEN_BS"), 12543, true)
end)
menu.add_feature("Reset current preps", "action", autoShopRobberies.id, function()
    stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. "TUNER_GEN_BS"), 12467, true)
end)

--                   !! Salvage Yard Robberies !! 
menu.add_feature("Skip to finale", "action", salvageRobberies.id, function()
    stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. "SALV23_SCOPE_BS"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. "SALV23_FM_PROG"), -1, true)
end)
menu.add_feature("Keep vehicle after robbery", "action", salvageRobberies.id, function()
    stats.stat_set_bool(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. "SALV23_CAN_KEEP"), true, true)
end)