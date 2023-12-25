local appdata = utils.get_appdata_path("PopstarDevs", "2Take1Menu")
package.path = appdata .. "\\scripts\\?.lua;" .. package.path  
local uFunctions = require("ApexLib.uFunctions")
local uTable = require("ApexLib.uTable")
local helpers = require("ApexLib.helpers")

local function mpx2()
    return "MP" .. stats.stat_get_int(gameplay.get_hash_key("MPPLY_LAST_MP_CHAR"), 1) .. "_"
end

--[[
    TODO List
    - stop paying house keeping charges
    - collectables -> ghost photo, action figure, ld organics, play cards, signal jammer, usb stick, movie prop, burried stashes, hidden cache, treasure chest, shipwreck (daily)
    - collectables -> trick or treat, halloween, stunt jumps, junk energy skydive
    - events -> ufo, bank shoot, ghost, taxi, christmas mug, armored truck, possessed animal, bar resupply, 
]]

local colors = {
    red = "0xFF0000FF",
    green = "0xFF00FF00",
    blue = "0xFFFF0000",
	yellow = "0xFF00FFFF"
}

-- Welcome
menu.create_thread(function()
    helpers.iconNotification("CHAR_MP_FM_CONTACT", "Welcome!")
    --helpers.verCheck()
end)    

-- Checks
if not menu.is_trusted_mode_enabled(1 << 1) then 
    menu.notify("Enable #FF00FC7C#Globals #DEFAULT#Trusted Mode!", "Apex", 6, colors.red)
    menu.exit()
end
if not menu.is_trusted_mode_enabled(1 << 0) then 
    menu.notify("Enable #FF00FC7C#Stats #DEFAULT#Trusted Mode!", "Apex", 6, colors.red)
    menu.exit()
end
if not menu.is_trusted_mode_enabled(1 << 2) then 
    menu.notify("Enable #FF00FC7C#Natives #DEFAULT#Trusted Mode!", "Apex", 6, colors.red)
    menu.exit()
end


-- Main Menu
local root = menu.add_feature("#FF0000FF#Apex", "parent", 0) 
local playerRoot = menu.add_player_feature("#FF0000FF#Apex", "parent", 0) 

local unlocksSub = menu.add_feature("Unlocks", "parent", root.id)
local fraudSub = menu.add_feature("#FF0000FF#[BAN RISK]#DEFAULT# Tax Fraud", "parent", root.id)
local reputationSub = menu.add_feature("Reputation", "parent", root.id)
local cluesSub = menu.add_feature("Clues", "parent", root.id)
local heistSub = menu.add_feature("Heist Manager", "parent", root.id)
local missionSub = menu.add_feature("Mission Manager", "parent", root.id)
local statSub = menu.add_feature("Stats Manager", "parent", root.id)
local usefulSub = menu.add_feature("Useful Features", "parent", root.id)
local miscSub = menu.add_feature("Miscellaneous", "parent", root.id)
--local devSub = menu.add_feature("#FF0000FF#DEV", "parent", root.id)

local playerusefulSub = menu.add_player_feature("Useful Features", "parent", playerRoot.id)


-- dev stuff
--[[menu.add_feature("GET INT-STAT VALUE", "action", devSub.id, function() 
    system.wait(300)
    local value = helpers.getInput("STAT NAME", "", 30, 0)

    local piss = stats.stat_get_int(gameplay.get_hash_key(value), -1) --stats.stat_get_int(gameplay.get_hash_key(mpx2()..value), -1)
    menu.notify(tostring(piss))
end)
menu.add_feature("SET INT-STAT VALUE", "action", devSub.id, function() 
    -- stats.stat_set_u64(gameplay.get_hash_key(mpx2().."TOTAL_PLAYING_TIME"), 528035702983, 528035702983)

    local value = helpers.getInput("String value", "", 70, 0)
end)
menu.add_feature("NATIVE TEST", "action", devSub.id, function() 
    local piss = native.call(0x76EF28DA05EA395A)
    menu.notify(tostring(piss))
end)--]]


-- Subs
local uAchievementSub = menu.add_feature("Achievement Manager", "parent", unlocksSub.id)
local uWeaponsSub = menu.add_feature("Weapons", "parent", unlocksSub.id)
local uVehiclesSub = menu.add_feature("Vehicles", "parent", unlocksSub.id)
local uClothingSub = menu.add_feature("Clothing", "parent", unlocksSub.id)
local uAwardsSub = menu.add_feature("Awards", "parent", unlocksSub.id)

local instFinish = menu.add_feature("Instant Finisher", "parent", heistSub.id)
local legacyHeist = menu.add_feature("Legacy Heists", "parent", heistSub.id)
local apt15mSub = menu.add_feature("15 Mil payouts", "parent", legacyHeist.id, function()
    menu.notify("Please use these within 30 seconds of entering the cutscene.", "Apex", 10, colors.yellow)
    menu.notify("You HAVE TO choose the right difficulty or you won't get paid!!", "Apex", 10, colors.yellow)
end)
local doomsdayHeist = menu.add_feature("The Doomsday Heist", "parent", heistSub.id)
local casinoHeist = menu.add_feature("The Casino Heist", "parent", heistSub.id)
--local casinoModdedPresets = menu.add_feature("Modded Presets", "parent", casinoHeist.id)
local cayopericoHeist = menu.add_feature("The Cayo Perico Heist", "parent", heistSub.id)
local autoShopRobberies = menu.add_feature("Auto Shop Robberies", "parent", heistSub.id)
--local autoShopPayout = menu.add_feature("Payout Editor", "parent", autoShopRobberies.id)
local salvageRobberies = menu.add_feature("Salvage Yard Robberies", "parent", heistSub.id)

local theChopShopDLC = menu.add_feature("The Chop Shop", "parent", missionSub.id)

local carreerStats = menu.add_feature("Carreer", "parent", statSub.id)
local generalStats = menu.add_feature("General", "parent", statSub.id)
local crimeStats = menu.add_feature("Crimes", "parent", statSub.id)
local vehicleStats = menu.add_feature("Vehicles", "parent", statSub.id)
local cashStats = menu.add_feature("Cash", "parent", statSub.id)
local combatStats = menu.add_feature("Combat", "parent", statSub.id)
-- local weaponStats = menu.add_feature("Weapons", "parent", statSub.id)
local miscStats = menu.add_feature("Miscellaneous Stats", "parent", statSub.id)
local theContractDLC = menu.add_feature("The Contract", "parent", miscStats.id)


-- Unlocks
-- achievements
menu.add_feature("Every Achievement", "action", uAchievementSub.id, function()
    uFunctions.unlockAllAchievements()
end)
for id, achievementName in pairs(uTable.Achievements) do
    menu.add_feature(achievementName, "action", uAchievementSub.id, function()
        Functions.setAchievement(id)
    end)
end
-- weapons
menu.add_feature("Unlock finish", "action_value_str", uWeaponsSub.id, function(f) 
    if f.value == 0 then
        uFunctions.daxCooldown()
    elseif f.value == 1 then
        native.call(0xDB8A58AEAA67CD07, 41657, true, mpx2())
    elseif f.value == 2 then
        native.call(0xDB8A58AEAA67CD07, 41658, true, mpx2())
    elseif f.value == 3 then
        native.call(0xDB8A58AEAA67CD07, 41659, true, mpx2())
    elseif f.value == 4 then
        uFunctions.weaponLiveryChristmas23()
    else
        menu.notify("Error 0x42069", "Apex", 10, colors.red)
    end
end):set_str_data({"Dildodude", "Employee of the Month", "Suede Bucks", "Uncle T", "Christmas 2023"})
menu.add_feature("Unlock Weapon", "action_value_str", uWeaponsSub.id, function(f) 
    if f.value == 0 then
        uFunctions.unlockSnowCannon()
    elseif f.value == 1 then
        stats.stat_set_bool(gameplay.get_hash_key("MPPLY_MELEECHLENGECOMPLETED"), true, true)
        stats.stat_set_bool(gameplay.get_hash_key("MPPLY_HEADSHOTCHLENGECOMPLETED"), true, true)
    elseif f.value == 2 then
        native.call(0xDB8A58AEAA67CD07, 28158, true, mpx2())
    else
        menu.notify("Error 0x42069", "Apex", 10, colors.red)
    end
end):set_str_data({"Snow Cannon", "Stone Hatchet", "Navy revolver"})
menu.add_feature("Knife and Bat skins (Gun Van)", "action", uWeaponsSub.id, function()
    uFunctions.unlockMeleeWeaponSkins()
end) 

-- vehicles
menu.add_feature("Unlock Vehicle", "action_value_str", uVehiclesSub.id, function(f) 
    if f.value == 0 then
        stats.stat_set_int(gameplay.get_hash_key(mpx2().."CRDEADLINE"), 32768, true)
    elseif f.value == 1 then
        uFunctions.unlockArmoredParagon()
    elseif f.value == 2 then
        uFunctions.unlockChopShopCars()
        menu.notify("Unlocked Police Gauntlet too.", "Apex", 6, colors.green)
    elseif f.value == 3 then
        uFunctions.unlockArenaCars()
    else
        menu.notify("Error 0x42069", "Apex", 10, colors.red)
    end
end):set_str_data({"Shotaro", "Armored Paragon R", "Chop Shop Cars", "Arena War Cars"})
menu.add_feature("'Best Lap' Paint Colors", "action", uVehiclesSub.id, function()
    local bestLapStat = gameplay.get_hash_key("MP0_AWD_FM_RACES_FASTEST_LAP")
    if not (stats.stat_get_int(bestLapStat, -1) >= 101) then
        stats.stat_set_int(bestLapStat, 101, true)
        menu.notify("Paint colors unlocked.")
    else
        menu.notify("You already have all of the 'Best Lap' colors unlocked.")
    end
end)
menu.add_feature("All trade prices", "action", uVehiclesSub.id, function()
    uFunctions.tradePricesVEH()
end)
menu.add_feature("Some Liveries", "action", uVehiclesSub.id, function()
    uFunctions.unlockLiveries()
end)

-- clothing

-- Beach Bum Update
-- Holiday Gifts
-- The Valentine's Day Massacre Special
-- The Business Update
-- The High Life Update
-- The "I'm Not a Hipster" Update
menu.add_feature("Independence Day Special", "action", uClothingSub.id, function()
    uFunctions.independenceDaySpecialClothing()
    uFunctions.independenceDaySpecialAdditionalClothing()
    uFunctions.independenceDaySpecialAdditionalClothing2()
end)
-- The San Andreas Flight School Update
-- The Last Team Standing Update
menu.add_feature("Festive Surprise 2014", "action", uClothingSub.id, function()
    uFunctions.festiveSurprise2014Clothing()
end)
-- Legacy Heists
-- Ill-Gotten Gains Part 1
-- Ill-Gotten Gains Part 2
-- Freemode Events Update
menu.add_feature("Lowriders", "action", uClothingSub.id, function()
    uFunctions.lowridersClothing()
end)
-- Halloween Surprise
-- Executives and Other Criminals
-- Festive Surprise 2015
-- January 2016 Update
-- Be My Valentine
-- Lowrider: Custom Classics
-- Further Adventures in Finance and Felony
menu.add_feature("Cunning Stunts", "action", uClothingSub.id, function()
    uFunctions.cunningStuntsFigures()
end)
-- bikers
-- import export
-- Cunning stunts special vehicle circuit
-- Gunrunning
-- Smuggler's Run
menu.add_feature("Doomsday Heist", "action", uClothingSub.id, function()
    uFunctions.doomsdayHeistBodysuits()
end)
-- Southern San Andreas Super Sport Series
-- after hours
-- arena wars   
-- diamond casino and resort
menu.add_feature("Diamond Casino Heist", "action", uClothingSub.id, function()
    uFunctions.diamondCasinoHeistBodysuits()
end)
-- 2020 Summer special
menu.add_feature("The Cayo Perico Heist", "action", uClothingSub.id, function()
    uFunctions.cayoPericoHeistClothing()
end)
menu.add_feature("Los Santos Tuners", "action", uClothingSub.id, function()
    uFunctions.losSantosTunersClothing()
end)
menu.add_feature("The Contract", "action", uClothingSub.id, function()
    for i = 32184, 32195 do
        script.set_global_i(262145 + i, 1)
    end
end)
menu.add_feature("Criminal Enterprises", "action", uClothingSub.id, function()
    uFunctions.criminalEnterprisesAdditionalClothing()
    uFunctions.criminalEnterprisesClothing()
end)
menu.add_feature("Drug Wars", "action", uClothingSub.id, function()
    for i =  36699, 36770 do
        native.call(0xDB8A58AEAA67CD07, i, true, mpx2())
    end
end)
menu.add_feature("San Andreas Mercenaries", "action", uClothingSub.id, function()
    for i = 41943, 41945 do
        native.call(0xDB8A58AEAA67CD07, i, true, mpx2())
    end
end)
menu.add_feature("Chop Shop", "action", uClothingSub.id, function()
    uFunctions.packedChopShopClothes()
    uFunctions.unlockPartyClothes()
end)
-- awards
menu.add_feature("Most awards", "action", uAwardsSub.id, function()
    uTable.unlockAwards()
    menu.notify("Unlocked Most Awards", "Apex", 4, 257818)
end)
menu.add_feature("Chop Shop Awards", "action", uAwardsSub.id, function()
   uFunctions.unlockChopShopAwards()
end)
-- general
menu.add_feature("Every Packed Stat", "action", unlocksSub.id, function()
    uFunctions.unlockEveryPackedStat()
end)
menu.add_feature("Basic Unlock All", "action", unlocksSub.id, function(f)
    uFunctions.basicUnlocks()
end)
menu.add_feature("Returning Player Bonus", "action", unlocksSub.id, function()
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_UNLOCK_EXCLUS_CONTENT"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."SP_UNLOCK_EXCLUS_CONTENT"), -1, true)
end)
menu.add_feature("All Contacts", "action", unlocksSub.id, function()
    uFunctions.unlockContacts()
end)
menu.add_feature("Halloween decorations in penthouse", "action", unlocksSub.id, function()
    script.set_global_i(262145 + 28288, 18200)
    script.set_global_i(262145+ 28222, 22500)
    for i = 28477, 28482 do
        script.set_global_i(262145 + i, 22500)
    end
end)
menu.add_feature("100% Complete Flightschool", "action", unlocksSub.id, function()
    uFunctions.completeFlightSchool()
end)
menu.add_feature("Fast Run and Reload", "action_value_str", unlocksSub.id, function(f) 
    if f.value == 0 then
        stats.stat_set_int(gameplay.get_hash_key(mpx2().."CHAR_ABILITY_1_UNLCK"), -1, true)
        stats.stat_set_int(gameplay.get_hash_key(mpx2().."CHAR_ABILITY_2_UNLCK"), -1, true)
        stats.stat_set_int(gameplay.get_hash_key(mpx2().."CHAR_ABILITY_3_UNLCK"), -1, true)
        stats.stat_set_int(gameplay.get_hash_key(mpx2().."CHAR_FM_ABILITY_1_UNLCK"), -1, true)
        stats.stat_set_int(gameplay.get_hash_key(mpx2().."CHAR_FM_ABILITY_2_UNLCK"), -1, true)
        stats.stat_set_int(gameplay.get_hash_key(mpx2().."CHAR_FM_ABILITY_3_UNLCK"), -1, true)
    else
        stats.stat_set_int(gameplay.get_hash_key(mpx2().."CHAR_ABILITY_1_UNLCK"), 0, true)
        stats.stat_set_int(gameplay.get_hash_key(mpx2().."CHAR_ABILITY_2_UNLCK"), 0, true)
        stats.stat_set_int(gameplay.get_hash_key(mpx2().."CHAR_ABILITY_3_UNLCK"), 0, true)
        stats.stat_set_int(gameplay.get_hash_key(mpx2().."CHAR_FM_ABILITY_1_UNLCK"), 0, true)
        stats.stat_set_int(gameplay.get_hash_key(mpx2().."CHAR_FM_ABILITY_2_UNLCK"), 0, true)
        stats.stat_set_int(gameplay.get_hash_key(mpx2().."CHAR_FM_ABILITY_3_UNLCK"), 0, true)
    end
    menu.notify("Please change sessions.", "Apex")
end):set_str_data({"ON", "OFF"})
menu.add_feature("Unlock Alien Tattoo", "action_value_str", unlocksSub.id, function(f) 
    if f.value == 0 then
        stats.stat_set_int(gameplay.get_hash_key(mpx2().."TATTOO_FM_CURRENT_32"), 32768, true, true)
    else
        stats.stat_set_int(gameplay.get_hash_key(mpx2().."TATTOO_FM_CURRENT_32"), 67108864, true, true)
    end
    menu.notify("Please change sessions.", "Apex")
end):set_str_data({"Male", "Female"})


-- Tax fraud
menu.add_feature("Bypass LSC sell amount", "toggle", fraudSub.id, function(f)
    while f.on do
        script.set_global_i(262145 + 175, 999999999)
        system.wait()
    end
end)


-- Reputation
menu.add_feature("Car Club level Exploit", "toggle", reputationSub.id, function(f)
    menu.notify("Buy clothing or customize your vehicle!", "Apex", 6, 0x00ff00)
    while f.on do
        for i = 31944, 31971 do
            script.set_global_i(262145 + i, 90000)
        end
        script.set_global_i(2751023, 1)
        system.wait()
    end
end)
menu.add_feature("Reset car club level", "action", reputationSub.id, function() 
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."CAR_CLUB_REP"), 5, true)
end)


-- Clues
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


-- Heist Manager
menu.add_feature("Remove cooldown for", "action_value_str", heistSub.id, function(f) 
    if f.value == 0 then
        stats.stat_set_int(gameplay.get_hash_key(mpx2().."H4_COOLDOWN"), 0, true)
        stats.stat_set_int(gameplay.get_hash_key(mpx2().."H4_COOLDOWN_HARD"), 0, true)
        stats.stat_set_int(gameplay.get_hash_key(mpx2().."H4_TARGET_POSIX"), 1659643454, true)
    elseif f.value == 1 then
        stats.stat_set_int(gameplay.get_hash_key(mpx2().."H4_COOLDOWN"), 0, true)
        stats.stat_set_int(gameplay.get_hash_key(mpx2().."H4_COOLDOWN_HARD"), 0, true)
        stats.stat_set_int(gameplay.get_hash_key(mpx2().."H4_TARGET_POSIX"), 1659429119, true)
    elseif f.value == 2 then
        uFunctions.salvageYardRobberyCooldown()
    else
        menu.notify("Error 0x42069", "Apex", 10, colors.red)
    end
end):set_str_data({"Cayo Solo", "Cayo Friends", "Salvage Yard Robbery"})
-- instant finisher
menu.add_feature("Cayo / Agency / Tuners", "action", instFinish.id, function()
    uFunctions.instantFinish2020()
end)
menu.add_feature("Casino Aggressive", "action", instFinish.id, function()
    uFunctions.instantFinishH3()
end)
menu.add_feature("Doomsday Heist", "action", instFinish.id, function()
    uFunctions.instantFinishH2()
end)
menu.add_feature("Legacy Heists", "action", instFinish.id, function()
    uFunctions.instantFinishApt()
end)
-- legacy heists -> 15m apt
menu.add_feature("The Fleeca Job", "action_value_str", apt15mSub.id, function(f) 
    if f.value == 0 then
        uFunctions.maxFleecaNormal()
    else
        uFunctions.maxFleecaHard()
    end
end):set_str_data({"Normal", "Hard"})
menu.add_feature("The Prison Break", "action_value_str", apt15mSub.id, function(f) 
    if f.value == 0 then
        uFunctions.maxPrisonNormal()
    else
        uFunctions.maxPrisonHard()
    end
end):set_str_data({"Normal", "Hard"})
menu.add_feature("The Humane Labs Raid", "action_value_str", apt15mSub.id, function(f) 
    if f.value == 0 then
        uuFunctions.maxHumaneNormal()
    else
        uFunctions.maxHumaneHard()
    end
end):set_str_data({"Normal", "Hard"})
menu.add_feature("Series A Funding", "action_value_str", apt15mSub.id, function(f) 
    if f.value == 0 then
        uFunctions.maxSAFNormal()
    else
        uFunctions.maxSAFHard()
    end
end):set_str_data({"Normal", "Hard"})
menu.add_feature("Pacific Standard Job", "action_value_str", apt15mSub.id, function(f) 
    if f.value == 0 then
        uFunctions.maxPacificNormal()
    else
        uFunctions.maxPacificHard()
    end
end):set_str_data({"Normal", "Hard"})
-- legacy heists
menu.add_feature("Skip Current Heist Setups", "action", legacyHeist.id, function()
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "HEIST_PLANNING_STAGE"), -1, true)
end)
menu.add_feature("Reset Setups", "action", legacyHeist.id, function()
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "HEIST_PLANNING_STAGE"), 0, true)
end)

-- the doomsday heist
menu.add_feature("Auto Setup:", "action_value_str", doomsdayHeist.id, function(f) 
    if f.value == 0 then
        uFunctions.doomsDayActOne()
    elseif f.value == 1 then 
        Functions.doomsDayActTwo()
    elseif f.value == 2 then 
        uFunctions.doomsDayActThree()
    else
        menu.notify("Error 0x42069", "Apex", 10, colors.red)
    end
end):set_str_data({"Act 1: The Data Breaches", "Act 2: The Bodgan Problem", "Act 3: Doomsday Scenario"})
-- the casino heist -> modded presets
--[[
menu.add_feature("Gold - 3.6M for players 2, 3 and 4", "toggle", casinoModdedPresets.id, function(f)
    while f.on do
        script.set_global_i(262145 + -582734553, 1410065408)
        script.set_global_i(1963945 + 1497 + 736 + 92 + 1,58) --- player 1
        script.set_global_i(1963945 + 1497 + 736 + 92 + 2,171) --- player 2
        script.set_global_i(1963945 + 1497 + 736 + 92 + 3,171) --- player 3
        script.set_global_i(1963945 + 1497 + 736 + 92 + 4,171) --- player 4
    end
    system.wait(0)
    helpers.iconNotification("CHAR_MP_FM_CONTACT", "ONLY WORKS IF YOU SELECT LOW LEVEL BUYER!!")
end)
menu.add_feature("Diamond - 3.6M for players 2, 3 and 4", "toggle", casinoModdedPresets.id, function(f)
    while f.on do
        script.set_global_i(262145 + 1277889925, 1410065408)
        script.set_global_i(1963945 + 1497 + 736 + 92 + 1,58) --- player 1
        script.set_global_i(1963945 + 1497 + 736 + 92 + 2,141) --- player 2
        script.set_global_i(1963945 + 1497 + 736 + 92 + 3,141) --- player 3
        script.set_global_i(1963945 + 1497 + 736 + 92 + 4,141) --- player 4
    end
    system.wait(0)
    helpers.iconNotification("CHAR_MP_FM_CONTACT", "ONLY WORKS IF YOU SELECT LOW LEVEL BUYER!!")
end)--]]

-- the casino heist
menu.add_feature("Change Payout for", "action_value_str", casinoHeist.id, function(f) 
    uFunctions.getFMHost()
    local value = helpers.getInput("Enter payout value", "", 10, 0)
    if f.value == 0 then
        script.set_global_i(1963945 + 1497 + 736 + 92 + 1, value)
    elseif f.value == 1 then
        script.set_global_i(1963945 + 1497 + 736 + 92 + 2, value)
    elseif f.value == 2 then
        script.set_global_i(1963945 + 1497 + 736 + 92 + 3, value)
    elseif f.value == 3 then
        script.set_global_i(1963945 + 1497 + 736 + 92 + 4, value)
    else
        menu.notify("Error 0x42069", "Apex", 10, colors.red)
    end
end):set_str_data({"Player 1", "Player 2", "Player 3", "Player 4"})
menu.add_feature("Auto Setup:", "action_value_str", casinoHeist.id, function(f) 
    if f.value == 0 then
        uFunctions.casinoHeistSilentSneaky()
    elseif f.value == 1 then 
        uFunctions.casinoHeistBigCon()
    elseif f.value == 2 then 
        uFunctions.casinoHeistAggressive()
    else
        menu.notify("Error 0x42069", "Apex", 10, colors.red)
    end
    menu.notify("YOU NEED TO SELECT A TARGET YOURSELF!", "Apex", 10, colors.red)
end):set_str_data({"Silent & Sneaky", "The Big Con", "Aggressive"})
menu.add_feature("Target", "action_value_str", casinoHeist.id, function(f) 
    if f.value == 0 then
        stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_TARGET"), 3, true)
    elseif f.value == 1 then 
        stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_TARGET"), 1, true)
    elseif f.value == 2 then 
        stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_TARGET"), 2, true)
    elseif f.value == 3 then 
        stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_TARGET"), 0, true)
    else
        menu.notify("Error 0x42069", "Apex", 10, colors.red)
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
        menu.notify("Error 0x42069", "Apex", 10, colors.red)
    end
end):set_str_data({"Fingerprints", "Keypads"})
menu.add_feature("Remove All CCTV Camera's", "action", casinoHeist.id, function()
    menu.get_feature_by_hierarchy_key("online.casinoperico_heist.remove_cameras"):toggle()
end)
menu.add_feature("Reset Board", "action", casinoHeist.id, function()
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_BITSET0"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_BITSET1"), 0, true)
end)
-- the cayo perico heist
menu.add_feature("Auto Setup:", "action_value_str", cayopericoHeist.id, function(f) 
    if f.value == 0 then
        uFunctions.cayoPericoNormal()
    elseif f.value == 1 then 
        uFunctions.cayoPericoHard()
    else
        menu.notify("Error 0x42069", "Apex", 10, colors.red)
    end
    menu.notify("YOU NEED TO SELECT A TARGET YOURSELF!", "Apex", 10, colors.red)
end):set_str_data({"Normal", "Hard"})
menu.add_feature("Target", "action_value_str", cayopericoHeist.id, function(f) 
    if f.value == 0 then
        stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4CNF_TARGET"), 5, true)
    elseif f.value == 1 then 
        stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4CNF_TARGET"), 5, true)
    elseif f.value == 2 then 
        stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4CNF_TARGET"), 5, true)
    elseif f.value == 3 then 
        stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4CNF_TARGET"), 5, true)
    else
        menu.notify("Error 0x42069", "Apex", 10, colors.red)
    end
end):set_str_data({"Panther Statue", "Pink Diamond", "Bearer Bonds", "Ruby Necklace", "Sinsimito Tequila", "Madrazo Files"})
local cayoBagSize = menu.add_feature("Bag Size", "action_value_i", cayopericoHeist.id, function(f)
    script.set_global_i(1859395035, f.value)
end)
cayoBagSize.min = 1800
cayoBagSize.max = 100000
cayoBagSize.mod = 1000
cayoBagSize.value = 1800
menu.add_feature("Set everyone's cut to 151%", "toggle", cayopericoHeist.id, function(f)
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
        script.set_global_i(gameplay.get_hash_key("fm_mission_controller", 52985, 5))
    end
end)
menu.add_feature("Reset Heist", "action", cayopericoHeist.id, function()
    uFunctions.resetCayoPerico()
end)
-- auto shop robberies
menu.add_feature("Skip current preps", "action", autoShopRobberies.id, function()
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "TUNER_GEN_BS"), 12543, true)
end)
menu.add_feature("Reset current preps", "action", autoShopRobberies.id, function()
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "TUNER_GEN_BS"), 12467, true)
end)
-- salvage yard robberies
menu.add_feature("Enable unreleased missions", "action", salvageRobberies.id, function()
    uFunctions.enablePodiumMcTonyRob()
end)
menu.add_feature("Skip to finale", "action", salvageRobberies.id, function()
    uFunctions.skipSalvageMissions()
end)
menu.add_feature("Keep vehicle after robbery", "action", salvageRobberies.id, function()
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "SALV23_CAN_KEEP"), true, true)
end)


-- Mission Manager
menu.add_feature("Remove cooldown for", "action_value_str", missionSub.id, function(f) 
    if f.value == 0 then
        uFunctions.daxCooldown()
    elseif f.value == 1 then
        uFunctions.chickenCooldown()
    else
        menu.notify("Error 0x42069", "Apex", 10, colors.red)
    end
end):set_str_data({"Dax", "Chicken Farm Raid"})
menu.add_feature("Enable Vincent contact missions", "action", theChopShopDLC.id, function()
    uFunctions.enableVincent()
end)
menu.add_feature("Skip missions for", "action_value_str", missionSub.id, function(f) 
    if f.value == 0 then
        uFunctions.skipYachtMissions()
    elseif f.value == 1 then
        uFunctions.skipBennyMissions()
    elseif f.value == 2 then
        stats.stat_set_int(gameplay.get_hash_key("ULP_MISSION_PROGRESS"), 127, true)
        stats.stat_set_int(gameplay.get_hash_key("ULP_MISSION_CURRENT"), 0, true)
    else
        menu.notify("Error 0x42069", "Apex", 10, colors.red)
    end
end):set_str_data({"Yacht", "Benny", "ULP"})
menu.add_feature("Trigger Alien Egg resupply mission", "action", missionSub.id, function()
    uFunctions.triggerAlienBunker()
end)


-- Stats Manager
-- carreer
menu.add_feature("Overall Income", "action", carreerStats.id, function()
    uFunctions.intStatInput("MPPLY_TOTAL_EVC", false)
end)
menu.add_feature("Overall Expenses", "action", carreerStats.id, function()
    uFunctions.intStatInput("MPPLY_TOTAL_SVC", false)
end)
menu.add_feature("Total players killed", "action", carreerStats.id, function() 
    uFunctions.intStatInput("MPPLY_KILLS_PLAYERS", false)
end)
menu.add_feature("Total deaths by players", "action", carreerStats.id, function() 
    uFunctions.intStatInput("MPPLY_DEATHS_PLAYER", false)
end)
menu.add_feature("Distance traveled", "action", carreerStats.id, function() 
    uFunctions.floatStatInput("MPPLY_CHAR_DIST_TRAVELLED", false)
end)
menu.add_feature("Favorite radio staton", "action", carreerStats.id, function()
    uFunctions.intStatInput("MPPLY_MOST_FAVORITE_STATION", false)
end)
menu.add_feature("Time spent in GTA Online", "action", carreerStats.id, function() 
    menu.notify("Time is in milliseconds!", "Apex", 6, colors.red)
    uFunctions.u64StatInput("LEADERBOARD_PLAYING_TIME", true)
end)
menu.add_feature("Time spent in first person", "action", carreerStats.id, function() 
    menu.notify("Time is in milliseconds!", "Apex", 6, colors.red)
    uFunctions.intStatInput("MP_FIRST_PERSON_CAM_TIME", true)
end)
menu.add_feature("Time spent in Deathmatches", "action", carreerStats.id, function() 
    menu.notify("Time is in milliseconds!", "Apex", 6, colors.red)
    uFunctions.u64StatInput("MPPLY_TOTAL_TIME_SPENT_DEATHMAT", false)
end)
menu.add_feature("Time spent in Races", "action", carreerStats.id, function() 
    menu.notify("Time is in milliseconds!", "Apex", 6, colors.red)
    uFunctions.u64StatInput("MPPLY_TOTAL_TIME_SPENT_RACES", false)
end)
menu.add_feature("Time spent in Creator", "action", carreerStats.id, function() 
    menu.notify("Time is in milliseconds!", "Apex", 6, colors.red)
    uFunctions.u64StatInput("MPPLY_TOTAL_TIME_MISSION_CREATO", false)
end)
menu.add_feature("Deathmatches published", "action", carreerStats.id, function() 
    uFunctions.intStatInput("MPPLY_AWD_FM_CR_DM_MADE", false)
end)
menu.add_feature("Races published", "action", carreerStats.id, function() 
    uFunctions.intStatInput("MPPLY_AWD_FM_CR_RACES_MADE", false)
end)
menu.add_feature("Captures published", "action", carreerStats.id, function() 
    uFunctions.intStatInput("MPPLY_NUM_CAPTURES_CREATED", false)
end)
menu.add_feature("Last Team Standings published", "action", carreerStats.id, function() 
    uFunctions.intStatInput("MPPLY_LTS_CREATED", false)
end)
menu.add_feature("Community plays of your published content", "action", carreerStats.id, function() 
    uFunctions.intStatInput("MPPLY_AWD_FM_CR_PLAYED_BY_PEEP", false)
end)
menu.add_feature("Thumbs up for your published content", "action", carreerStats.id, function() 
    uFunctions.intStatInput("MPPLY_FM_MISSION_LIKES", false)
end)
-- general
menu.add_feature("Time played as character", "action", generalStats.id, function() 
    uFunctions.u64StatInput("TOTAL_PLAYING_TIME", true)
end)
menu.add_feature("Character created", "action", generalStats.id, function() 
    uFunctions.dateStatInput("_CHAR_DATE_CREATED", true)
end)
menu.add_feature("Last ranked up", "action", generalStats.id, function() 
    uFunctions.dateStatInput("_CHAR_DATE_RANKUP", true)
end)
menu.add_feature("Longest single game session", "action", generalStats.id, function() 
    uFunctions.u64StatInput("LONGEST_PLAYING_TIME", true)
end)
menu.add_feature("Average time per session", "action", generalStats.id, function() 
    uFunctions.u64StatInput("AVERAGE_TIME_PER_SESSON", true)
end)
menu.add_feature("Total deaths", "action", generalStats.id, function() 
    uFunctions.intStatInput("DEATHS", true)
end)
menu.add_feature("Deaths by explosion", "action", generalStats.id, function() 
    uFunctions.intStatInput("DIED_IN_EXPLOSION", true)
end)
menu.add_feature("Deaths by falling", "action", generalStats.id, function() 
    uFunctions.intStatInput("DIED_IN_FALL", true)
end)
menu.add_feature("Deaths by fire", "action", generalStats.id, function() 
    uFunctions.intStatInput("DIED_IN_FIRE", true)
end)
menu.add_feature("Deaths by traffic", "action", generalStats.id, function() 
    uFunctions.intStatInput("DIED_IN_ROAD", true)
end)
menu.add_feature("Deaths by drowning", "action", generalStats.id, function() 
    uFunctions.intStatInput("DIED_IN_DROWNING", true)
end)
menu.add_feature("Time swimming", "action", generalStats.id, function() 
    uFunctions.u64StatInput("TIME_SWIMMING", true)
end)
menu.add_feature("Distance traveled swimming", "action", generalStats.id, function() 
    uFunctions.floatStatInput("DIST_SWIMMING", true)
end)
menu.add_feature("Time underwater", "action", generalStats.id, function() 
    uFunctions.u64StatInput("TIME_UNDERWATER", true)
end)
menu.add_feature("Time walking", "action", generalStats.id, function() 
    uFunctions.u64StatInput("TIME_WALKING", true)
end)
menu.add_feature("Distance traveled walking", "action", generalStats.id, function() 
    uFunctions.floatStatInput("DIST_SWIMMING", true)
end)
menu.add_feature("Distance traveled running", "action", generalStats.id, function() 
    uFunctions.floatStatInput("DIST_RUNNING", true)
end)
menu.add_feature("Farthest free-fall survived", "action", generalStats.id, function() 
    uFunctions.floatStatInput("LONGEST_SURVIVED_FREEFALL", true)
end)
menu.add_feature("Time in cover", "action", generalStats.id, function() 
    uFunctions.u64StatInput("TIME_IN_COVER", true)
end)
menu.add_feature("Photos taken", "action", generalStats.id, function() 
    uFunctions.intStatInput("NO_PHOTOS_TAKEN", true)
end)
menu.add_feature("Private dances", "action", generalStats.id, function() 
    uFunctions.intStatInput("LAP_DANCED_BOUGHT", true)
end)
menu.add_feature("Sex acts purchased", "action", generalStats.id, function() 
    uFunctions.intStatInput("PROSTITUTES_FREQUENTED", true)
end)
menu.add_feature("Bounties placed on others", "action", generalStats.id, function() 
    uFunctions.intStatInput("BOUNTSONU", true)
end)
menu.add_feature("Bounties placed on you", "action", generalStats.id, function() 
    uFunctions.intStatInput("BOUNTPLACED", true)
end)
menu.add_feature("Highest Survival wave reached", "action", generalStats.id, function() 
    uFunctions.intStatInput("HORDELVL", true)
end)
menu.add_feature("MC Contribution", "action", generalStats.id, function() 
    uFunctions.intStatInput("MC_CONTRIBUTION_POINTS", false)
end)
-- crime
menu.add_feature("Cops killed", "action", crimeStats.id, function() 
    uFunctions.intStatInput("KILLS_COP", true)
end)
menu.add_feature("NOOSE killed", "action", crimeStats.id, function() 
    uFunctions.intStatInput("KILLS_SWAT", true)
end)
menu.add_feature("Times wanted", "action", crimeStats.id, function() 
    uFunctions.intStatInput("NO_TIMES_WANTED_LEVEL", true)
end)
menu.add_feature("Wanted stars attained", "action", crimeStats.id, function() 
    uFunctions.intStatInput("STARS_ATTAINED", true)
end)
menu.add_feature("Wanted stars evaded", "action", crimeStats.id, function() 
    uFunctions.intStatInput("STARS_EVADED", true)
end)
menu.add_feature("Time spent with a Wanted Level", "action", crimeStats.id, function() 
    uFunctions.u64StatInput("CHAR_WANTED_LEVEL_TIME", true)
end)
menu.add_feature("Last Wanted Level duration", "action", crimeStats.id, function() 
    uFunctions.u64StatInput("TIME_LAST_WANTED_LEVEL", true)
end)
menu.add_feature("Longest Wanted Level duration", "action", crimeStats.id, function() 
    uFunctions.floatStatInput("LONGEST_CHASE_TIME", true)
end)
menu.add_feature("Time spent with a 5 star Wanted Level", "action", crimeStats.id, function() 
    uFunctions.u64StatInput("CHAR_WANTED_LEVEL_TIME5STAR", true)
end)
menu.add_feature("Drive-by kills as driver", "action", crimeStats.id, function() 
    uFunctions.intStatInput("DB_KILLS", true)
end)
menu.add_feature("Drive-by kills as passenger", "action", crimeStats.id, function() 
    uFunctions.intStatInput("PASS_DB_KILLS ", true)
end)
menu.add_feature("Tires shot out", "action", crimeStats.id, function() 
    uFunctions.intStatInput("TIRES_POPPED_BY_GUNSHOT", true)
end)
menu.add_feature("Vehicular kills", "action", crimeStats.id, function() 
    uFunctions.intStatInput("HIGHEST_SKITTLES", true)
end)
menu.add_feature("Cars stolen", "action", crimeStats.id, function() 
    uFunctions.intStatInput("NUMBER_STOLEN_CARS", true)
end)
menu.add_feature("Motorcycles stolen", "action", crimeStats.id, function() 
    uFunctions.intStatInput("NUMBER_STOLEN_BIKES", true)
end)
menu.add_feature("Helicopters stolen", "action", crimeStats.id, function() 
    uFunctions.intStatInput("NUMBER_STOLEN_HELIS", true)
end)
menu.add_feature("Planes stolen", "action", crimeStats.id, function() 
    uFunctions.intStatInput("NUMBER_STOLEN_PLANES", true)
end)
menu.add_feature("Boats stolen", "action", crimeStats.id, function() 
    uFunctions.intStatInput("NUMBER_STOLEN_BOATS", true)
end)
menu.add_feature("ATVs stolen", "action", crimeStats.id, function() 
    uFunctions.intStatInput("NUMBER_STOLEN_QUADBIKES", true)
end)
menu.add_feature("Bicycles stolen", "action", crimeStats.id, function() 
    uFunctions.intStatInput("NUMBER_STOLEN_BICYCLES", true)
end)
menu.add_feature("Cop vehicles stolen", "action", crimeStats.id, function() 
    uFunctions.intStatInput("NUMBER_STOLEN_COP_VEHICLE", true)
end)
menu.add_feature("Store Hold Ups", "action", crimeStats.id, function() 
    uFunctions.intStatInput("TOTAL_NO_SHOPS_HELD_UP", true)
end)
-- vehicle
menu.add_feature("Favorite Bike", "action", vehicleStats.id, function() 
    uFunctions.setFavoriteBikeMC()
end)
menu.add_feature("Highest Hydraulic Jump", "action", vehicleStats.id, function() 
    uFunctions.floatStatInput("LOW_HYDRAULIC_JUMP", true)
end)
menu.add_feature("Time driving cars", "action", vehicleStats.id, function() 
    uFunctions.u64StatInput("TIME_DRIVING_CAR", true)
end)
menu.add_feature("Distance traveled in cars", "action", vehicleStats.id, function() 
    uFunctions.floatStatInput("DIST_DRIVING_CAR", true)
end)
menu.add_feature("Time riding motorcycles", "action", vehicleStats.id, function() 
    uFunctions.u64StatInput("TIME_DRIVING_BIKE", true)
end)
menu.add_feature("Distance traveled on motorcycles", "action", vehicleStats.id, function() 
    uFunctions.floatStatInput("DIST_DRIVING_BIKE", true)
end)
menu.add_feature("Time flying helicopters", "action", vehicleStats.id, function() 
    uFunctions.u64StatInput("TIME_DRIVING_HELI", true)
end)
menu.add_feature("Distance traveled in helicopters", "action", vehicleStats.id, function() 
    uFunctions.floatStatInput("DIST_DRIVING_HELI", true)
end)
menu.add_feature("Time flying planes", "action", vehicleStats.id, function() 
    uFunctions.u64StatInput("TIME_DRIVING_PLANE", true)
end)
menu.add_feature("Distance traveled in plane", "action", vehicleStats.id, function() 
    uFunctions.floatStatInput("DIST_DRIVING_PLANE", true)
end)
menu.add_feature("Time sailing boats", "action", vehicleStats.id, function() 
    uFunctions.u64StatInput("TIME_DRIVING_BOAT", true)
end)
menu.add_feature("Distance traveled boats", "action", vehicleStats.id, function() 
    uFunctions.floatStatInput("DIST_DRIVING_BOAT", true)
end)
menu.add_feature("Time riding ATVs", "action", vehicleStats.id, function() 
    uFunctions.u64StatInput("TIME_DRIVING_QUADBIKE", true)
end)
menu.add_feature("Distance traveled on ATVs", "action", vehicleStats.id, function() 
    uFunctions.floatStatInput("DIST_DRIVING_QUADBIKE", true)
end)
menu.add_feature("Time riding bicycles", "action", vehicleStats.id, function() 
    uFunctions.u64StatInput("TIME_DRIVING_BICYCLE", true)
end)
menu.add_feature("Distance traveled on bicycles", "action", vehicleStats.id, function() 
    uFunctions.floatStatInput("DIST_DRIVING_BICYCLE", true)
end)
menu.add_feature("Highest speed in a road vehicle", "action", vehicleStats.id, function() 
    menu.notify("KILOMETERS PER HOUR!!", "Apex", 4, 257818)
    uFunctions.floatStatInput("FASTEST_SPEED", true)
end)
menu.add_feature("Road vehicle driven fastest", "action", vehicleStats.id, function() 
    uFunctions.intStatInput("TOP_SPEED_CAR", true)
end)
menu.add_feature("Farthest stoppie", "action", vehicleStats.id, function() 
    uFunctions.floatStatInput("LONGEST_STOPPIE_DIST", true)
end)
menu.add_feature("Farthest wheelie", "action", vehicleStats.id, function() 
    uFunctions.floatStatInput("LONGEST_WHEELIE_DIST", true)
end)
menu.add_feature("Farthest driven without crashing", "action", vehicleStats.id, function() 
    uFunctions.floatStatInput("LONGEST_DRIVE_NOCRASH", true)
end)
menu.add_feature("Car crashes", "action", vehicleStats.id, function() 
    uFunctions.intStatInput("NUMBER_CRASHES_CARS", true)
end)
menu.add_feature("Motorcycle crashes", "action", vehicleStats.id, function() 
    uFunctions.intStatInput("NUMBER_CRASHES_BIKES", true)
end)
menu.add_feature("ATV crashes", "action", vehicleStats.id, function() 
    uFunctions.intStatInput("NUMBER_CRASHES_QUADBIKES", true)
end)
menu.add_feature("Bailed from a moving vehicle", "action", vehicleStats.id, function() 
    uFunctions.intStatInput("BAILED_FROM_VEHICLE", true)
end)
menu.add_feature("Farthest vehicle jump", "action", vehicleStats.id, function() 
    uFunctions.floatStatInput("FARTHEST_JUMP_DIST", true)
end)
menu.add_feature("Highest vehicle jump", "action", vehicleStats.id, function() 
    uFunctions.floatStatInput("HIGHEST_JUMP_REACHED", true)
end)
menu.add_feature("Most flips in one vehicle jump", "action", vehicleStats.id, function() 
    uFunctions.intStatInput("MOST_FLIPS_IN_ONE_JUMP", true)
end)
menu.add_feature("Most spins in one vehicle jump", "action", vehicleStats.id, function() 
    uFunctions.intStatInput("MOST_SPINS_IN_ONE_JUMP", true)
end)
menu.add_feature("Unique Stunt Jumps found", "action", vehicleStats.id, function() 
    uFunctions.intStatInput("USJS_FOUND", true)
end)
menu.add_feature("Unique Stunt Jumps completed", "action", vehicleStats.id, function() 
    uFunctions.intStatInput("USJS_COMPLETED ", true)
end)
menu.add_feature("Near misses", "action", vehicleStats.id, function() 
    uFunctions.intStatInput("NUMBER_NEAR_MISS", true)
end)
menu.add_feature("Cop cars blown up", "action", vehicleStats.id, function() 
    uFunctions.intStatInput("CARS_COPS_EXPLODED", true)
end)
menu.add_feature("Motorcycles blown up", "action", vehicleStats.id, function() 
    uFunctions.intStatInput("BIKES_EXPLODED", true)
end)
menu.add_feature("Helicopters blown up", "action", vehicleStats.id, function() 
    uFunctions.intStatInput("HELIS_EXPLODED", true)
end)
menu.add_feature("Planes blown up", "action", vehicleStats.id, function() 
    uFunctions.intStatInput("PLANES_EXPLODED", true)
end)
menu.add_feature("Boats blown up", "action", vehicleStats.id, function() 
    uFunctions.intStatInput("BOATS_EXPLODED", true)
end)
menu.add_feature("ATVs blown up", "action", vehicleStats.id, function() 
    uFunctions.intStatInput("QUADBIKE_EXPLODED", true)
end)
menu.add_feature("Vehicles repaired", "action", vehicleStats.id, function() 
    uFunctions.intStatInput("NO_CARS_REPAIR", true)
end)
menu.add_feature("Vehicles resprayed", "action", vehicleStats.id, function() 
    uFunctions.intStatInput("VEHICLES_SPRAYED", true)
end)
menu.add_feature("Cars exported", "action", vehicleStats.id, function() 
    uFunctions.intStatInput("VEHEXPORTED", true)
end)
-- cash
menu.add_feature("Spent on weapons & armor", "action", cashStats.id, function() 
    uFunctions.intStatInput("MONEY_SPENT_WEAPON_ARMOR", true) 
end)
menu.add_feature("Spent on vehicles & maintenance", "action", cashStats.id, function() 
    uFunctions.intStatInput("MONEY_SPENT_VEH_MAINTENANCE", true)   
end)
menu.add_feature("Spent on style & entertainment", "action", cashStats.id, function() 
    uFunctions.intStatInput("MONEY_SPENT_STYLE_ENT", true)  
end)
menu.add_feature("Spent on property & utilities", "action", cashStats.id, function() 
    uFunctions.intStatInput("MONEY_SPENT_PROPERTY_UTIL", true)  
end)
menu.add_feature("Spent on Job & Activity entry fees", "action", cashStats.id, function() 
    uFunctions.intStatInput("MONEY_SPENT_JOB_ACTIVITY", true)  
end)
menu.add_feature("Spent on contact services", "action", cashStats.id, function() 
    uFunctions.intStatInput("MONEY_SPENT_CONTACT_SERVICE", true)  
end)
menu.add_feature("Spent on healthcare & bail", "action", cashStats.id, function() 
    uFunctions.intStatInput("MONEY_SPENT_HEALTHCARE", true)  
end)
menu.add_feature("Dropped or stolen", "action", cashStats.id, function() 
    uFunctions.intStatInput("MONEY_SPENT_DROPPED_STOLEN", true)  
end)
menu.add_feature("Given to others", "action", cashStats.id, function() 
    uFunctions.intStatInput("MONEY_SPENT_SHARED", true)  
end) 
menu.add_feature("Job cash shared with others", "action", cashStats.id, function() 
    uFunctions.intStatInput("MONEY_SPENT_JOBSHARED", true)  
end)
menu.add_feature("Earned from Jobs", "action", cashStats.id, function() 
    uFunctions.intStatInput("MONEY_EARN_JOBS", true)  
end) 
menu.add_feature("Earned from selling vehicles", "action", cashStats.id, function() 
    uFunctions.intStatInput("MONEY_EARN_SELLING_VEH", true)  
end)
menu.add_feature("Earned from betting", "action", cashStats.id, function() 
    uFunctions.intStatInput("MONEY_EARN_BETTING", true)   
end) 
menu.add_feature("Earned from Good Sport reward", "action", cashStats.id, function() 
    uFunctions.intStatInput("MONEY_EARN_GOOD_SPORT", true)  
end)
menu.add_feature("Picked up", "action", cashStats.id, function() 
    uFunctions.intStatInput("MONEY_EARN_PICKED_UP", true)   
end)
menu.add_feature("Received from others", "action", cashStats.id, function() 
    uFunctions.intStatInput("MONEY_EARN_SHARED", true)  
end)
menu.add_feature("Job cash shared by others", "action", cashStats.id, function() 
    uFunctions.intStatInput("MONEY_EARN_JOBSHARED", true)  
end)
-- combat
menu.add_feature("Shots", "action", combatStats.id, function() 
    uFunctions.intStatInput("SHOTS", true)
end)
menu.add_feature("Hits", "action", combatStats.id, function() 
    uFunctions.intStatInput("HITS_PEDS_VEHICLES", true)
end)
menu.add_feature("Accuracy", "action", combatStats.id, function() 
    uFunctions.floatStatInput("WEAPON_ACCURACY", true)
end)
menu.add_feature("Kills", "action", combatStats.id, function() 
    uFunctions.intStatInput("KILLS", true)
end)
menu.add_feature("Headshot kills", "action", combatStats.id, function() 
    uFunctions.intStatInput("HEADSHOTS", true)
end)
menu.add_feature("Armed kills", "action", combatStats.id, function() 
    uFunctions.intStatInput("KILLS_ARMED", true)
end)
menu.add_feature("Free Aim kills", "action", combatStats.id, function() 
    uFunctions.intStatInput("KILLS_IN_FREE_AIM", true)
end)
menu.add_feature("Stealth kills", "action", combatStats.id, function() 
    uFunctions.intStatInput("KILLS_STEALTH", true)
end)
menu.add_feature("Counter attacks", "action", combatStats.id, function() 
    uFunctions.intStatInput("SUCCESSFUL_COUNTERS", true)
end)
menu.add_feature("Player kills", "action", combatStats.id, function() 
    uFunctions.intStatInput("KILLS_PLAYERS", true)
end)
menu.add_feature("Player headshot kills", "action", combatStats.id, function() 
    uFunctions.intStatInput("PLAYER_HEADSHOTS", true)
end)
menu.add_feature("Survival kills", "action", combatStats.id, function() 
    uFunctions.intStatInput("HORDKILLS", true)
end)
menu.add_feature("Gang Attack kills", "action", combatStats.id, function() 
    uFunctions.intStatInput("GHKILLS", true)
end)
menu.add_feature("Highest killstreak in Deathmatch", "action", combatStats.id, function() 
    uFunctions.intStatInput("DM_HIGHEST_KILLSTREAK", true)
end)
menu.add_feature("Archenemy", "action", combatStats.id, function() 
    menu.notify("Enter the RockstarID first, then the name of said player\ncorresponding with the RockstarID", "Apex", 5, 3578712200220)
    system.wait(200)
    uFunctions.intStatInput("ARCHENEMY", true)
    uFunctions.stringStatInput("ARCHENEMY_NAME", true)
end)
menu.add_feature("Times killed by Archenemy", "action", combatStats.id, function() 
    uFunctions.intStatInput("ARCHENEMY_KILLS", true)
end)
menu.add_feature("Victim", "action", combatStats.id, function() 
    menu.notify("Enter the RockstarID first, then the name of said player\ncorresponding with the RockstarID", "Apex", 5, 3578712200220)
    system.wait(200)
    uFunctions.intStatInput("BIGGEST_VICTIM", true)
    uFunctions.stringStatInput("BIGGEST_VICTIM_NAME", true)
end)
menu.add_feature("Victim kills", "action", combatStats.id, function() 
    uFunctions.intStatInput("BIGGEST_VICTIM_KILLS", true)
end)

-- FAVORITE_WEAPON_HELDTIME
--menu.add_feature("Least favorite radio station", "action", miscStats.id, function() 

--end)
-- misc stats
for i, v in pairs(uTable.agencyContracts2) do
    local contracts = menu.add_feature(v.name, "action_value_i", theContractDLC.id, function(f)
        stats.stat_set_int(gameplay.get_hash_key(mpx2().. v.stat), f.value, true)
    end)
    contracts.min = 0
    contracts.max = 1000000
    contracts.mod = 100
    contracts.value = stats.stat_get_int(gameplay.get_hash_key(mpx2().. v.stat), -1)
end
for i, v in pairs(uTable.agencyContracts) do
    local contracts = menu.add_feature(v.name, "action_value_i", theContractDLC.id, function(f)
        stats.stat_set_int(gameplay.get_hash_key(mpx2().. v.stat), f.value, true)
    end)
    contracts.min = 0
    contracts.max = 1000
    contracts.mod = 5
    contracts.value = stats.stat_get_int(gameplay.get_hash_key(mpx2().. v.stat), -1)
end
menu.add_feature("Set character as transferred", "action", miscStats.id, function()
    stats.stat_set_bool(gameplay.get_hash_key(mpx2().."WAS_CHAR_TRANSFERED"), true, true)
end)
menu.add_feature("Set character name", "action", miscStats.id, function()
    local value = helpers.getInput("Enter the desired character name (has no filter)", "", 10, 0)
    uFunctions.stat_set_string(gameplay.get_hash_key(mpx2() .. "CHAR_NAME"), value)
end)
local driftRacesWon = menu.add_feature("Drift races played", "action_value_i", miscStats.id, function(f)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().. "DRIFT_RACE_PLAY_COUNT"), f.value, true)
end)
driftRacesWon.min = 0
driftRacesWon.max = 99999999999999
driftRacesWon.mod = 1
driftRacesWon.value = stats.stat_get_int(gameplay.get_hash_key(mpx2().. "DRIFT_RACE_PLAY_COUNT"), -1)
menu.add_feature("Set Lowrider cutscenes as seen", "action", miscStats.id, function()
    uFunctions.setCutscenesSeen()
end)


-- Useful Features
menu.add_feature("Remove transaction error", "toggle", usefulSub.id, function(f)
    while f.on do
        script.set_global_i(4537356, 0)
        script.set_global_i(4537357, 0)
        script.set_global_i(4537358, 0)
        system.wait(0)
    end
end)
--[[menu.add_feature("Move all money to", "action_value_str", usefulSub.id, function(f) 
    if f.value == 0 then
        local amount = native.call(0x76EF28DA05EA395A)
        native.call(0xD47A2C1BA117471D, mpx2(), amount) -- bank -> wallet
    else
        local amount = native.call(0xA40F9C2623F6A8B5, mpx2())
        native.call(0xC2F7FE5309181C7D, mpx2(), amount) -- wallet -> bank
    end
end):set_str_data({"Wallet", "Bank"})--]]
menu.add_feature("Force cloud save", "action", usefulSub.id, function()
    native.call(0xE07BCA305B82D2FD, 0, false, 3, false)
end)
menu.add_feature("Call Gun Van", "action", usefulSub.id, function()
    local coords = player.get_player_coords(player.player_id())
    script.set_global_f(1948900, coords.x)
    script.set_global_f(1948900 + 1, coords.y)
    script.set_global_f(1948900 + 2, coords.z)
end)
menu.add_feature("Remove Cash", "action", usefulSub.id, function()
    local value = helpers.getInput("Amount of cash to remove", "", 20, 0)
    script.set_global_i(2707037 + 36, value)
end)
menu.add_feature("Reset vehicle sell timer", "action", usefulSub.id, function()
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_VEHICLE_SELL_TIME"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_NUM_CARS_SOLD_TODAY"), 0, true)
end)
menu.add_feature("Delete current vehicle", "action", usefulSub.id, function()
    -- how does 2take1 STILL not have this fucking option???
    entity.delete_entity(player.player_vehicle())
end)
menu.add_feature("Refill Inventory", "action", usefulSub.id, function()
    uFunctions.refillInventory()
end)
menu.add_feature("Spawn ped for weapon challenges", "action", usefulSub.id, function()
    local coords = player.get_player_coords(player.player_id())
    local model = 0xE7A963D9 --a_m_y_beach_03

    streaming.request_model(model)
    while (not streaming.has_model_loaded(model)) do
        system.wait(10)
    end

    local ped = ped.create_ped(26, model, v3(coords.x - 2, coords.y, coords.z -1), 0, true, false)

    network.request_control_of_entity(ped)
    entity.freeze_entity(ped, true)
end)


-- Misc
menu.add_feature("Start Event", "action_value_str", miscSub.id, function(f) 
    if f.value == 0 then
        script.set_global_i(262145 + 36157, 3600000)
        script.set_global_i(262145 + 36158, 1800000)
        script.set_global_i(262145 + 36055, 1)
    else
        script.set_global_i(262145+36054, 1)
    end
    menu.notify("Please change sessions.", "Apex")
end):set_str_data({"Christmas Truck", "Yeti"})
menu.add_feature("Enable Snow", "toggle", miscSub.id, function(f)
    menu.get_feature_by_hierarchy_key("online.tunables.snow").on = f.on
end)
menu.add_feature("Restore removed vehicles", "action", miscSub.id, function()
    for _, index in ipairs(uTable.unreleasedVehicles) do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end
end)
menu.add_feature("Set clear plate", "action", miscSub.id, function()
    vehicle.set_vehicle_number_plate_text(player.player_vehicle(), "-")
end)
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
vanityPlateFunc = menu.add_feature("Vanity Plates", "autoaction_value_str", miscSub.id, function(f, pid)
    vehicle.set_vehicle_number_plate_index(player.player_vehicle(), f.value + 6)
end)
vanityPlateFunc:set_str_data({"E-Cola", "Las Venturas", "Liberty City", "LS Car Meet", "Panic", "Pounders", "Sprunk"})


-- Selected Player
menu.add_player_feature("Give RP", "toggle", playerusefulSub.id, function(f,pid)
    while f.on do
        for i = 0, 24 do
            script.trigger_script_event(968269233, pid, {1, 1, 4, i, 1, 1, 1})
            script.trigger_script_event(968269233, pid, {1, 1, 8, -5, 1, 1, 1})
            system.wait(0)
        end
    end
end)