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
    - make modded acc presets
    - stop paying house keeping charges
    - collectable drop
    - collectables -> ghost photo, action figure, ld organics, play cards, signal jammer, usb stick, movie prop, burried stashes, hidden cache, treasure chest, shipwreck (daily)
    - collectables -> trick or treat, halloween, stunt jumps, junk energy skydive
    - events -> ufo, bank shoot, ghost, taxi, christmas mug, armored truck, possessed animal, bar resupply, 
    - unlocks -> halloween decorations, navy revolv, stone hatchet, return player, trade price, halloween / taxi livery, office clutter, 
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
local fraudSub = menu.add_feature("#FF0000FF#[RISKY]#DEFAULT# Tax Fraud", "parent", root.id)
local reputationSub = menu.add_feature("Reputation", "parent", root.id)
local eventsSub = menu.add_feature("Events", "parent", root.id)
--local accPresets = menu.add_feature("Account Presets", "parent", root.id) -- yes/no? | debating whether or not to include presets for different kind of player stats
local heistSub = menu.add_feature("Heist Manager", "parent", root.id)
local missionSub = menu.add_feature("Mission Manager", "parent", root.id)
local statSub = menu.add_feature("Stats Manager", "parent", root.id)
local usefulSub = menu.add_feature("Useful Features", "parent", root.id)
local collectSub = menu.add_feature("Collectables", "parent", root.id) 
local customSub = menu.add_feature("Custom Executions", "parent", root.id)
local miscSub = menu.add_feature("Miscellaneous", "parent", root.id)
--local devSub = menu.add_feature("#FF0000FF#DEV", "parent", root.id)

local playerusefulSub = menu.add_player_feature("Useful Features", "parent", playerRoot.id)

-- dev stuff
--[[menu.add_feature("GET INT-STAT VALUE", "action", devSub.id, function() 
    system.wait(300)
    local value = helpers.getInput("STAT NAME", "", 30, 0)

    local piss = stats.stat_get_int(gameplay.get_hash_key(mpx2()..value), -1)
    menu.notify(tostring(piss))
end)
menu.add_feature("SET INT-STAT VALUE", "action", devSub.id, function() 
    -- stats.stat_set_u64(gameplay.get_hash_key(mpx2().."TOTAL_PLAYING_TIME"), 528035702983, 528035702983)

    local value = helpers.getInput("String value", "", 70, 0)
end)--]]



-- Subs
local uAchievementSub = menu.add_feature("Achievement Manager", "parent", unlocksSub.id)
local uWeaponsSub = menu.add_feature("Weapons", "parent", unlocksSub.id)
local uVehiclesSub = menu.add_feature("Vehicles", "parent", unlocksSub.id)
local uClothingSub = menu.add_feature("Clothing", "parent", unlocksSub.id)
local uAwardsSub = menu.add_feature("Awards", "parent", unlocksSub.id)

local heistCooldowns = menu.add_feature("Cooldowns", "parent", heistSub.id)
local instFinish = menu.add_feature("Instant Finisher", "parent", heistSub.id)
local legacyHeist = menu.add_feature("Legacy Heists", "parent", heistSub.id)
local apt15mSub = menu.add_feature("15m payouts", "parent", legacyHeist.id, function()
    menu.notify("Please use these within 30 seconds of entering the cutscene.", "Apex", 10, colors.yellow)
    menu.notify("You HAVE TO choose the right difficulty or you won't get paid!!", "Apex", 10, colors.yellow)
end)
local doomsdayHeist = menu.add_feature("The Doomsday Heist", "parent", heistSub.id)
local casinoHeist = menu.add_feature("The Casino Heist", "parent", heistSub.id)
local casinoPayout = menu.add_feature("Payout Editor", "parent", casinoHeist.id)
--local casinoModdedPresets = menu.add_feature("Modded Presets", "parent", casinoHeist.id)
local cayopericoHeist = menu.add_feature("The Cayo Perico Heist", "parent", heistSub.id)
local salvageRobberies = menu.add_feature("Salvage Yard Robberies", "parent", heistSub.id)

local carreerStats = menu.add_feature("Carreer", "parent", statSub.id)
local generalStats = menu.add_feature("General", "parent", statSub.id)
local crimeStats = menu.add_feature("Crimes", "parent", statSub.id)
local vehicleStats = menu.add_feature("Vehicles", "parent", statSub.id)
local cashStats = menu.add_feature("Cash", "parent", statSub.id)
local combatStats = menu.add_feature("Combat", "parent", statSub.id)
-- local weaponStats = menu.add_feature("Weapons", "parent", statSub.id)
local miscStats = menu.add_feature("Miscellaneous Stats", "parent", statSub.id)

local teleportSub = menu.add_feature("Teleportation", "parent", collectSub.id)
local serialKiller = menu.add_feature("Serial Killer", "parent", teleportSub.id)
local yetiHunt = menu.add_feature("Yeti Hunt", "parent", teleportSub.id)
local collectMusic = menu.add_feature("Media Sticks", "parent", collectSub.id)
local collectTrophy = menu.add_feature("Trophy Rewards", "parent", collectSub.id)

local xenoSub = menu.add_feature("Xenophobia", "parent", miscSub.id)


-- Unlocks
-- achievements
menu.add_feature("Every Achievement", "action", uAchievementSub.id, function()
    uFunctions.unlockAllAchievements()
end)
menu.add_feature("-----------------------------", "action", uAchievementSub.id, function()
    menu.notify("BLANK_MSG", "Apex", 5, 3578712200220)
end)
for id, achievementName in pairs(uTable.Achievements) do
    menu.add_feature(achievementName, "action", uAchievementSub.id, function()
        Functions.setAchievement(id)
    end)
end
-- weapons
menu.add_feature("Knife and Bat skins (Gun Van)", "action", uWeaponsSub.id, function()
    uFunctions.unlockMeleeWeaponSkins()
end)  
menu.add_feature("Snow Cannon", "action", uWeaponsSub.id, function()
    uFunctions.unlockSnowCannon()
end)  
menu.add_feature("Dildodude Camo", "action", uWeaponsSub.id, function()
    native.call(0xDB8A58AEAA67CD07, 36787, true, mpx2())
    native.call(0xDB8A58AEAA67CD07, 36788, true, mpx2())
end) 
menu.add_feature("Christmas 2023 Liveries", "action", uWeaponsSub.id, function()
    uFunctions.weaponLiveryChristmas23()
end)   
menu.add_feature("Stone Hatchet", "action", uWeaponsSub.id, function()
    stats.stat_set_bool(gameplay.get_hash_key("MPPLY_MELEECHLENGECOMPLETED"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key("MPPLY_HEADSHOTCHLENGECOMPLETED"), true, true)
end) 
menu.add_feature("Navy revolver", "action", uWeaponsSub.id, function()
    native.call(0xDB8A58AEAA67CD07, 28158, true, mpx2())
    menu.notify("Please change sessions.", "Apex")
end) 
-- vehicles
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
menu.add_feature("Arena Wars vehicles", "action", uVehiclesSub.id, function()
    uFunctions.unlockArenaCars()
end)
menu.add_feature("Some Liveries", "action", uVehiclesSub.id, function()
    uFunctions.unlockLiveries()
end)
menu.add_feature("Chop Shop Cars", "action", uVehiclesSub.id, function()
    uFunctions.unlockChopShopCars()
    menu.notify("Unlocked Police Gauntlet too.", "Apex", 6, colors.green)
end)
menu.add_feature("Shotaro", "action", uVehiclesSub.id, function()
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."CRDEADLINE"), 32768, true)
end)
menu.add_feature("Armored Paragon R", "action", uVehiclesSub.id, function()
    uFunctions.unlockArmoredParagon()
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
    while f.on do
        for i = 31944, 31971 do
            script.set_global_i(262145 + i, 90000)
        end
        script.set_global_i(2751023, 1)
        system.wait()
    end
    menu.notify("Buy clothing or customize your vehicle!", "Apex", 6, 0x00ff00)
end)
menu.add_feature("Reset car club level", "action", reputationSub.id, function() 
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."CAR_CLUB_REP"), 5, true)
end)


-- Events
menu.add_feature("Christmas Truck event", "action", eventsSub.id, function() -- thanks ShinyWasabi
    uFunctions.triggerSnowTruckEvent()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(247.353, -986.255, 28.828 ))
end)
menu.add_feature("Yeti Event", "action", eventsSub.id, function(f)
    script.set_global_i(262145+36054, 1)
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-1409.0927, 4492.598, 23.707672))
end)


-- Heist Manager
-- cooldowns
menu.add_feature("Remove Dax Cooldown", "action", heistCooldowns.id, function()
    uFunctions.daxCooldown()
end)
menu.add_feature("Remove Salvage Yard Cooldown", "action", heistCooldowns.id, function()
    uFunctions.salvageYardRobberyCooldown()
end)
menu.add_feature("Remove Chicken Farm Raid Cooldown", "action", heistCooldowns.id, function()
    uFunctions.chickenCooldown()
end)
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
menu.add_feature("Fleeca Normal", "action", apt15mSub.id, function()
    uFunctions.maxFleecaNormal()
end)
menu.add_feature("Fleeca Hard", "action", apt15mSub.id, function()
    uFunctions.maxFleecaHard()
end)
menu.add_feature("Prison Normal", "action", apt15mSub.id, function()
    uFunctions.maxPrisonNormal()
end)
menu.add_feature("Prison Hard", "action", apt15mSub.id, function()
    uFunctions.maxPrisonHard()
end)
menu.add_feature("Humane Lab Normal", "action", apt15mSub.id, function()
    uFunctions.maxHumaneNormal()
end)
menu.add_feature("Humane Lab Hard", "action", apt15mSub.id, function()
    uFunctions.maxHumaneHard()
end)
menu.add_feature("Series A Normal", "action", apt15mSub.id, function()
    uFunctions.maxSAFNormal()
end)
menu.add_feature("Series A Hard", "action", apt15mSub.id, function()
    uFunctions.maxSAFHard()
end)
menu.add_feature("Pacific Standard Normal", "action", apt15mSub.id, function()
    uFunctions.maxPacificNormal()
end)
menu.add_feature("Pacific Standard Hard", "action", apt15mSub.id, function()
    uFunctions.maxPacificHard()
end)
-- legacy heists
menu.add_feature("Skip Current Heist Setups", "action", legacyHeist.id, function()
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "HEIST_PLANNING_STAGE"), -1, true)
end)
menu.add_feature("Reset Setups", "action", legacyHeist.id, function()
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "HEIST_PLANNING_STAGE"), 0, true)
end)
-- the doomsday heist
menu.add_feature("Auto Setup - Act 1: The Data Breaches", "action", doomsdayHeist.id, function()
    uFunctions.doomsDayActOne()
end)
menu.add_feature("Auto Setup - Act 2: The Bodgan Problem", "action", doomsdayHeist.id, function()
    uFunctions.doomsDayActTwo()
end)
menu.add_feature("Auto Setup - Act 3: Doomsday Scenario", "action", doomsdayHeist.id, function()
    uFunctions.doomsDayActThree()
end)
-- the casino heist -> payout editor
menu.add_feature("Player one", "action", casinoPayout.id, function()
    uFunctions.getFMHost()
    local value = helpers.getInput("Enter payout value", "", 10, 0)
    script.set_global_i(1963945 + 1497 + 736 + 92 + 1, value)
end)
menu.add_feature("Player two", "action", casinoPayout.id, function()
    uFunctions.getFMHost()
    local value = helpers.getInput("Enter payout value", "", 10, 0)
    script.set_global_i(1963945 + 1497 + 736 + 92 + 2, value)
end)
menu.add_feature("Player three", "action", casinoPayout.id, function()
    uFunctions.getFMHost()
    local value = helpers.getInput("Enter payout value", "", 10, 0)
    script.set_global_i(1963945 + 1497 + 736 + 92 + 3, value)
end)
menu.add_feature("Player four", "action", casinoPayout.id, function()
    uFunctions.getFMHost()
    local value = helpers.getInput("Enter payout value", "", 10, 0)
    script.set_global_i(1963945 + 1497 + 736 + 92 + 4, value)
end)
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
menu.add_feature("Auto Setup: Silent & Sneaky + Diamonds", "action", casinoHeist.id, function()
    uFunctions.casinoHeistSilentSneaky()
end)
menu.add_feature("Auto Setup: The Big Con + Diamonds", "action", casinoHeist.id, function()
    uFunctions.casinoHeistBigCon()
end)
menu.add_feature("Auto Setup: Aggressive + Diamonds", "action", casinoHeist.id, function()
    uFunctions.casinoHeistAggressive()
end)
-- the cayo perico heist
menu.add_feature("Auto Setup: Panther + Hard Mode", "action", cayopericoHeist.id, function()
    uFunctions.cayoPericoPantherHard()
end)
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
menu.add_feature("Enable Vincent contact missions", "action", missionSub.id, function()
    uFunctions.enableVincent()
end)
menu.add_feature("Skip Yacht missions", "action", missionSub.id, function()
    uFunctions.skipYachtMissions()
end)
menu.add_feature("Skip Benny missions", "action", missionSub.id, function()
    uFunctions.skipBennyMissions()
end)
menu.add_feature("Skip ULP missions", "action", missionSub.id, function()
    stats.stat_set_int(gameplay.get_hash_key("ULP_MISSION_PROGRESS"), 127, true)
    stats.stat_set_int(gameplay.get_hash_key("ULP_MISSION_CURRENT"), 0, true)
end)
menu.add_feature("Trigger Alien Egg resupply mission", "action", missionSub.id, function()
    uFunctions.triggerAlienBunker()
end)


-- Stats Manager
-- carreer
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
    uFunctions.dateStatInput("CHAR_DATE_CREATED", true)
end)
menu.add_feature("Last ranked up", "action", generalStats.id, function() 
    uFunctions.dateStatInput("CHAR_DATE_RANKUP", true)
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
menu.add_feature("Set character as transferred", "action", miscStats.id, function()
    stats.stat_set_bool(gameplay.get_hash_key(mpx2().."WAS_CHAR_TRANSFERED"), true, true)
end)
menu.add_feature("Set character name", "action", miscStats.id, function()
    local value = helpers.getInput("Enter the desired character name (has no filter)", "", 10, 0)
    uFunctions.stat_set_string(gameplay.get_hash_key(mpx2() .. "CHAR_NAME"), value)
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
menu.add_feature("Set Lowrider Cutscenes Seen", "action", usefulSub.id, function()
    uFunctions.setCutscenesSeen()
end)

-- Collectables
-- teleportation
for i, v in pairs(uTable.YetiClues) do
    menu.add_feature(v.name, "action", yetiHunt.id, function()
        entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v.coord)
    end)
end
-- seperation line
for i, v in pairs(uTable.SerialKillerClues) do
    menu.add_feature(v.name, "action", serialKiller.id, function()
        entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v.coord)
    end)
end
menu.add_feature("-----------------------------", "action", serialKiller.id, function()
    menu.notify("BLANK_MSG", "Apex", 5, 3578712200220)
end)
for i, v in pairs(uTable.SerialKillerCluesRandom) do
    menu.add_feature(v.name, "action", serialKiller.id, function()
        entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v.coord)
        menu.notify("The LS Slasher will appear from 7PM-5AM, Kill him! (GTA$ 50,000 Reward)", "Apex", 4, 257818)
    end)
end
-- main
menu.add_feature("All Arcade Trophies", "action", collectTrophy.id, function()
    uFunctions.unlockArcadeTrophies()
end)
-- LS Tuners
for i, v in pairs(uTable.CircoLocoMusic) do
    menu.add_feature(v.name, "action", collectMusic.id, function()
        entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v.coord)
        menu.notify("You now unlocked the Circoloco Tee & Media!", "Apex", 5, 3578712200220)
    end)
end
menu.add_feature("-----------------------------", "action", collectMusic.id, function()
    menu.notify("BLANK_MSG", "Apex", 5, 3578712200220)
end)
for i, v in pairs(uTable.KennyMusic) do
    menu.add_feature(v.name, "action", collectMusic.id, function()
        entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v.coord)
        menu.notify("The LS Slasher will appear from 7PM-5AM, Kill him! (GTA$ 50,000 Reward)", "Apex", 4, 257818)
    end)
end
menu.add_feature("-----------------------------", "action", collectMusic.id, function()
    menu.notify("BLANK_MSG", "Apex", 5, 3578712200220)
end)
-- Contract DLC
for i, v in pairs(uTable.NezMusic) do
    menu.add_feature(v.name, "action", collectMusic.id, function()
        entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v.coord)
        menu.notify("You need to complete the VIP missions\nIt'll be on your desk in the Agency", "Apex", 5, 3578712200220)
    end)
end
menu.add_feature("-----------------------------", "action", collectMusic.id, function()
    menu.notify("BLANK_MSG", "Apex", 5, 3578712200220)
end)
-- Chop Shop DLC
menu.add_feature("DâM-FunK - Even the Score", "action", collectMusic.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-56.656, -1089.496, 26.422))
end)


-- Custom Execution
menu.add_feature("Integer", "action", customSub.id, function()
    uFunctions.customInteger()
end)
 menu.add_feature("Boolean", "action", customSub.id, function()
    uFunctions.customBoolean()
end)


-- Tax Fraud Features
--[[menu.add_feature("Nightclub Loop", "toggle", fraudSub.id, function(f)
    while f.on do
        stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CLUB_POPULARITY"), 1000, true)
        stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CLUB_PAY_TIME_LEFT"), -1, true)
    end 
end)--]]


-- Misc
menu.add_feature("Enable Snow", "toggle", miscSub.id, function(f)
    menu.get_feature_by_hierarchy_key("online.tunables.snow").on = f.on
end)
menu.add_feature("Restore removed vehicles", "action", miscSub.id, function()
    for _, index in ipairs(uTable.unreleasedVehicles) do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end
end)
for k, v in pairs(uTable.regionKick) do
    menu.add_feature("Byebye " .. v, "toggle", xenoSub.id, function(f)
        while f.on do
            if not network.is_session_started() then
                return
            end
    
            for i = 0, 31 do
                if player.is_player_valid(i) and i ~= player.player_id() then
                    if script.get_global_i(1886967 + 1 + (i * 609) + 10 + 121) == k then
                        menu.notify("Getting rid of " .. player.get_player_name(i).. " for being inferior")
                        menu.get_feature_by_hierarchy_key("online.online_players.player_"..i..".fragment_crash"):toggle() -- sends crash
                    end
                end
            end
            system.wait()
        end
    end)
end
menu.add_feature("Set clear plate", "action", miscSub.id, function()
    vehicle.set_vehicle_number_plate_text(player.player_vehicle(), "-")
end)
menu.add_feature("100% Complete Flightschool", "action", miscSub.id, function()
    uFunctions.completeFlightSchool()
end)
vanityPlateFunc = menu.add_feature("Vanity Plates", "autoaction_value_str", miscSub.id, function(f, pid)
    vehicle.set_vehicle_number_plate_index(player.player_vehicle(), f.value + 6)
end)
vanityPlateFunc:set_str_data({"E-Cola", "Las Venturas", "Liberty City", "LS Car Meet", "Panic", "Pounders", "Sprunk"})

menu.add_player_feature("Give RP", "toggle", playerusefulSub.id, function(f,pid)
while f.on do
for i = 0, 24 do
script.trigger_script_event(968269233, pid, {1, 1, 4, i, 1, 1, 1})
script.trigger_script_event(968269233, pid, {1, 1, 8, -5, 1, 1, 1})
system.wait(0)
    end
  end
end)

-- wjopwefjwoefjewf
menu.add_player_feature("Xenophobia Test", "action", 0, function(feat, pid)
    menu.notify("Xenophobia Test Result: " .. uTable.regionKick[script.get_global_i(1886967 + 1 + (pid * 609) + 10 + 121)])
end)
--[[local schizoLog = menu.add_feature("Schizo Log", "toggle", miscSub.id, function(f)
    while f.on do
        uFunctions.schizoLog()
    end 
end)
schizoLog:toggle()--]]  

--[[### 1.3.6
- Additions
    - Restore removed vehicles
    - Force cloud save
    - Bypass LSC sell amount
    - Call Gun Van
    - Reset car club level
    - Car Club Exploit
    - Arena Level
    - Reset arena level
    - Unlock Navy revolver
    - Unlock  Halloween decorations in penthouse
    - Unlock SA Mercenaries & Drug Wars Clothing
    - Unlock Dildodude Camo
    - Unlock All vehicle trade prices
- Removals
    - Tunables Sub (forgot to remove this entry)
- Fixes
    - Set favorite bike
    - General input system improvement 
- Changes
    - Moved Tunables to misc sub
    - Improved the alien tattoo & fast run unlocks
    - Better names for unlocks
    - Integrated Party Hats & Outfits unlocks in Chop Shop unlock
--]]