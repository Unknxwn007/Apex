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

    - Check Stats Menu -> Modify in menu
    - make modded acc presets
    - at a random interval show random name from an array "leaving" the game
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
    -- menu.notify("Welcome to Apex!", "Apex", 6, 0x00ff00)
    helpers.iconNotification("CHAR_MP_FM_CONTACT", "Welcome!")
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
local root = menu.add_feature("Apex", "parent", 0) 

local charSub = menu.add_feature("Identity Theft", "parent", root.id)
local unlocksSub = menu.add_feature("Unlocks", "parent", root.id)
local fraudSub = menu.add_feature("#FF0000FF#[RISKY] #DEFAULT# Tax Fraud", "parent", root.id)
-- local reputationSub = menu.add_feature("Reputation", "parent", root.id)
local eventsSub = menu.add_feature("Events", "parent", root.id)
local heistSub = menu.add_feature("Heist Manager", "parent", root.id)
local missionSub = menu.add_feature("Mission Manager", "parent", root.id)
local statSub = menu.add_feature("Stats Manager", "parent", root.id)
local usefulSub = menu.add_feature("Useful Features", "parent", root.id)
local collectSub = menu.add_feature("Collectables", "parent", root.id) 
local teleportSub = menu.add_feature("Teleportation", "parent", root.id)
local customSub = menu.add_feature("Custom Executions", "parent", root.id)
local miscSub = menu.add_feature("Miscellaneous", "parent", root.id)


-- Subs
local uAchievementSub = menu.add_feature("Achievement Manager", "parent", unlocksSub.id)
local uWeaponsSub = menu.add_feature("Weapons", "parent", unlocksSub.id)
local uVehiclesSub = menu.add_feature("Vehicles", "parent", unlocksSub.id)
local uClothingSub = menu.add_feature("Clothing", "parent", unlocksSub.id)
local uAwardsSub = menu.add_feature("Awards", "parent", unlocksSub.id)

local heistCooldowns = menu.add_feature("Cooldowns", "parent", heistSub.id)
local legacyHeist = menu.add_feature("Legacy Heists", "parent", heistSub.id)
local doomsdayHeist = menu.add_feature("The Doomsday Heist", "parent", heistSub.id)
local casinoHeist = menu.add_feature("The Casino Heist", "parent", heistSub.id)
local cayopericoHeist = menu.add_feature("The Cayo Perico Heist", "parent", heistSub.id)
local salvageRobberies = menu.add_feature("Salvage Yard Robberies", "parent", heistSub.id)

local carreerStats = menu.add_feature("Carreer", "parent", statSub.id)
local generalStats = menu.add_feature("General", "parent", statSub.id)
local crimeStats = menu.add_feature("Crimes", "parent", statSub.id)
local vehicelStats = menu.add_feature("Vehicles", "parent", statSub.id)
local cashStats = menu.add_feature("Cash", "parent", statSub.id)
local combatStats = menu.add_feature("Combat", "parent", statSub.id)
local weaponStats = menu.add_feature("Weapons", "parent", statSub.id)
local miscStats = menu.add_feature("Miscellaneous Stats", "parent", statSub.id)

local serialKiller = menu.add_feature("Serial Killer", "parent", teleportSub.id)
local yetiHunt = menu.add_feature("Yeti Hunt", "parent", teleportSub.id)

local collectMusic = menu.add_feature("Media Sticks", "parent", collectSub.id)
local collectTrophy = menu.add_feature("Trophy Rewards", "parent", collectSub.id)

local tunableSub = menu.add_feature("Tunables", "parent", miscSub.id)
local xenoSub = menu.add_feature("Xenophobia", "parent", miscSub.id)


-- Character Features
menu.add_feature("Set creation date", "action", charSub.id, function()
    uFunctions.setCreationDate()
end)
--menu.add_feature("Set playtime (milliseconds)", "action", charSub.id, function()
   -- uFunctions.setPlayTime()
--end)
menu.add_feature("Set character as transferred", "action", charSub.id, function()
    stats.stat_set_bool(gameplay.get_hash_key(mpx2().."WAS_CHAR_TRANSFERED"), true, true)
end)
menu.add_feature("Set character name", "action", charSub.id, function()
    local value = helpers.getInput("Enter the desired character name (has no filter)", "", 10, 0)
    uFunctions.stat_set_string(gameplay.get_hash_key(mpx2() .. "CHAR_NAME"), value)
end)


-- Heist Manager
menu.add_feature("Remove Dax Cooldown", "action", heistCooldowns.id, function()
    uFunctions.daxCooldown()
end)
menu.add_feature("Remove Salvage Yard Cooldown", "action", heistCooldowns.id, function()
    uFunctions.salvageYardRobberyCooldown()
end)
menu.add_feature("Remove Chicken Farm Raid Cooldown", "action", heistCooldowns.id, function()
    uFunctions.chickenCooldown()
end)

menu.add_feature("Skip Current Heist Setups", "action", legacyHeist.id, function()
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "HEIST_PLANNING_STAGE"), -1, true)
end)
menu.add_feature("Reset Setups", "action", legacyHeist.id, function()
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "HEIST_PLANNING_STAGE"), 0, true)
end)

menu.add_feature("Complete Setup - Act 1: The Data Breaches", "action", doomsdayHeist.id, function()
    uFunctions.doomsDayActOne()
end)
menu.add_feature("Complete Setup - Act 2: The Bodgan Problem", "action", doomsdayHeist.id, function()
    uFunctions.doomsDayActTwo()
end)
menu.add_feature("Complete Setup - Act 3: Doomsday Scenario", "action", doomsdayHeist.id, function()
    uFunctions.doomsDayActThree()
end)

menu.add_feature("Auto Setup: Silent & Sneaky + Diamonds", "action", casinoHeist.id, function()
    uFunctions.casinoHeistSilentSneaky()
end)
menu.add_feature("Auto Setup: The Big Con + Diamonds", "action", casinoHeist.id, function()
    uFunctions.casinoHeistBigCon()
end)
menu.add_feature("Auto Setup: Aggressive + Diamonds", "action", casinoHeist.id, function()
    uFunctions.casinoHeistAggressive()
end)

menu.add_feature("#DEFAULT#Auto Setup: Panther + Hard Mode #FF0000FF#[Solo]", "action", cayopericoHeist.id, function()
    uFunctions.cayoPericoPantherHard()
end)
--[[
menu.add_feature("#DEFAULT#Auto Setup: Panther + Hard Mode #FF0000FF#[2P]", "action", cayopericoHeist.id, function()
    uFunctions.cayoPericoPantherHard2()
end)
menu.add_feature("#DEFAULT#Auto Setup: Panther + Hard Mode #FF0000FF#[3P]", "action", cayopericoHeist.id, function()
    uFunctions.cayoPericoPantherHard3()
end)
menu.add_feature("#DEFAULT#Auto Setup: Panther + Hard Mode #FF0000FF#[4P]", "action", cayopericoHeist.id, function()
    uFunctions.cayoPericoPantherHard4()
end)]]
menu.add_feature("Remove All CCTV Camera's", "action", cayopericoHeist.id, function()
    for _, ent in pairs(entities.get_all_objects_as_handles()) do
        for __, cam in pairs(CamList) do
            if ENTITY.GET_ENTITY_MODEL(ent) == cam then
                ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent,true,true)
                ENTITY.DELETE_ENTITY(ent)               
            end
        end
    end
end)
menu.add_feature("Reset Heist", "action", cayopericoHeist.id, function()
    uFunctions.resetCayoPerico()
end)

menu.add_feature("Enable unreleased missions", "action", salvageRobberies.id, function()
    uFunctions.enablePodiumMcTonyRob()
end)
menu.add_feature("Skip to finale", "action", salvageRobberies.id, function()
    uFunctions.skipSalvageMissions()
end)
menu.add_feature("Keep vehicle after robbery", "action", salvageRobberies.id, function()
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "SALV23_CAN_KEEP"), true, true)
end)

--[[menu.add_feature("get test", "action", salvageRobberies.id, function()
    local piss = stats.stat_get_int(gameplay.get_hash_key(mpx2().."SALV23_PLAN_DIALOGUE"), -1)
    menu.notify(tostring(piss))
end)--]]

-- Reputation Features
--[[menu.add_feature("Level 1000 in LS Car Meet", "action", reputationSub.id, function()
    
end)
menu.add_feature("Max Arena level", "action", reputationSub.id, function()
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARENAWARS_AP_TIER"), 999, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARENAWARS_AP"), 10000, true)
end)--]]


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
menu.add_feature("Trigger Alien Egg resupply mission", "action", missionSub.id, function()
    uFunctions.triggerAlienBunker()
end)

menu.add_feature("STAT FIX", "action", statSub.id, function()
    -- Carreer
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_KILLS_PLAYERS"), 35933, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_DEATHS_PLAYER "), 10020, true)
    stats.stat_set_float(gameplay.get_hash_key("MPPLY_CHAR_DIST_TRAVELLED"), 27, true)
    -- General
    -- Crimes
    -- Vehicles
    -- Cash
    -- Combat
    -- Weapons



    --stats.stat_set_int(gameplay.get_hash_key(mpx2().."FM_ACT_PHN"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_TOTAL_RACES_WON"), 1028, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_TOTAL_RACES_LOST"), 782, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_TOTAL_DEATHMATCH_WON"), 2083, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_TOTAL_DEATHMATCH_LOST"), 972, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_TENNIS_MATCHES_WON "), 87, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_TENNIS_MATCHES_LOST"), 27, true)

    -- STARS_EVADED, AVERAGE_TIME_PER_SESSON
    -- 
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."KILLS_COP"), 21833, true) 
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."KILLS_SWAT"), 4287, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."DIED_IN_EXPLOSION"), 2788, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."DIED_IN_FALL"), 1207, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."DIED_IN_FIRE"), 108, true)

    stats.stat_set_int(gameplay.get_hash_key(mpx2().."DIED_IN_ROAD"), 1876, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."NO_TIMES_WANTED_LEVEL"), 20763, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."STARS_ATTAINED"), 37972, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."STARS_EVADED"), 23196, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."PLANE_LANDINGS"), 43, true)

    --stats.stat_set_int(gameplay.get_hash_key(""), , true)
    --stats.stat_set_int(gameplay.get_hash_key(""), , true)
    --[[stats.stat_set_int(gameplay.get_hash_key(""), , true)
    stats.stat_set_int(gameplay.get_hash_key(""), , true)
    stats.stat_set_int(gameplay.get_hash_key(""), , true)--]]
end)
menu.add_feature("U64 test", "action", charSub.id, function()
    stats.stat_set_u64(gameplay.get_hash_key("MPPLY_TOTAL_TIME_SPENT_RACES"), 2149200000, 2149200000) --597hrs
    stats.stat_set_u64(gameplay.get_hash_key("MPPLY_TOTAL_TIME_MISSION_CREATO"), 36000000, 36000000)
    stats.stat_set_u64(gameplay.get_hash_key("MPPLY_TOTAL_TIME_SPENT_ON_MISS"), 4352400000, 4352400000)
    stats.stat_set_u64(gameplay.get_hash_key("MPPLY_TOTAL_TIME_SPENT_DEATHMAT"), 3189600000, 3189600000)
    stats.stat_set_u64(gameplay.get_hash_key("MPPLY_TOTAL_TIME_SPENT_FREEMODE"), 14317200000, 14317200000)
end)

-- Stats Manager

--[[
    Time spent in GTA Online -> LEADERBOARD_PLAYING_TIME
    Time played as character ->  TOTAL_PLAYING_TIME
    Longest single game session -> LONGEST_PLAYING_TIME
    Average time per session -> AVERAGE_TIME_PER_SESSON
]]

menu.add_feature("Total players killed", "action", carreerStats.id, function() 
    uFunctions.intStatInput("MPPLY_KILLS_PLAYER", false)
end)
menu.add_feature("Total deaths by players", "action", carreerStats.id, function() 
    uFunctions.intStatInput("MPPLY_DEATHS_PLAYER", false)
end)
menu.add_feature("Distance traveled", "action", carreerStats.id, function() 
    uFunctions.floatStatInput("MPPLY_CHAR_DIST_TRAVELLED", false)
end)
menu.add_feature("Favorite radio staton", "action", carreerStats.id, function() 
    uFunctions.intStatInput("MPPLY_DEATHS_PLAYER", false)
end)
menu.add_feature("Time spent in GTA Online", "action", carreerStats.id, function() 
    uFunctions.u64StatInput("LEADERBOARD_PLAYING_TIME", true)
end)
menu.add_feature("Time spent in first person", "action", carreerStats.id, function() 
    
end)
menu.add_feature("Time spent in Deathmatches", "action", carreerStats.id, function() 
    uFunctions.u64StatInput("MPPLY_TOTAL_TIME_SPENT_DEATHMAT", false)
end)
menu.add_feature("Time spent in Races", "action", carreerStats.id, function() 
    uFunctions.u64StatInput("MPPLY_TOTAL_TIME_SPENT_RACES", false)
end)
menu.add_feature("Time spent in Creator", "action", carreerStats.id, function() 
    uFunctions.u64StatInput("MPPLY_TOTAL_TIME_MISSION_CREATO", false)
end)
menu.add_feature("Deathmatches published", "action", carreerStats.id, function() 

end)
menu.add_feature("Races published", "action", carreerStats.id, function() 

end)
menu.add_feature("Captures published", "action", carreerStats.id, function() 

end)
menu.add_feature("Last Team Standings published", "action", carreerStats.id, function() 

end)
menu.add_feature("Community plays of your published content", "action", carreerStats.id, function() 

end)
menu.add_feature("Thumbs up for your published content", "action", carreerStats.id, function() 

end)

menu.add_feature("Least favorite radio station", "action", miscStats.id, function() 

end)
menu.add_feature("Lapdances bought  ", "action", miscStats.id, function() 
    --LAP_DANCED_BOUGHT
end)



-- Event Functions
menu.add_feature("Christmas Truck event", "action", eventsSub.id, function() -- thanks ShinyWasabi
    uFunctions.triggerSnowTruckEvent()
    helpers.cIconNotification("CHAR_HUMANDEFAULT", "Santa Claus", "Make sure there's more than 2 players!")
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(247.353, -986.255, 28.828 ))
end)
menu.add_feature("Yeti Event", "action", eventsSub.id, function(f)
    script.set_global_i(262145+36054, 1)
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-1409.0927, 4492.598, 23.707672))
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

-- Unlocks || General
menu.add_feature("Every Packed Stat", "action", unlocksSub.id, function()
    uFunctions.unlockEveryPackedStat()
end)
menu.add_feature("Basic Unlock All", "action", unlocksSub.id, function(f)
    uFunctions.basicUnlocks()
end)
menu.add_feature("Unlock Fast Run and Reload", "action", unlocksSub.id, function()
    uFunctions.unlockFastRun()
end)
menu.add_feature("Most awards", "action", unlocksSub.id, function()
    uTable.unlockAwards()
    menu.notify("Unlocked Most Awards", "Apex", 4, 257818)
end)
menu.add_feature("Returning Player Bonus", "action", unlocksSub.id, function()
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_UNLOCK_EXCLUS_CONTENT"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."SP_UNLOCK_EXCLUS_CONTENT"), -1, true)
end)
menu.add_feature("All Contacts", "action", unlocksSub.id, function()
    uFunctions.unlockContacts()
end)
menu.add_feature("Alien Tattoo (Male)", "action", unlocksSub.id, function()
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."TATTOO_FM_CURRENT_32"), 32768, true, true)
    menu.notify("Unlocked Alien Tattoo, requires new session", "Apex", 4, 257818)
end)
menu.add_feature("Alien Tattoo (Female)", "action", unlocksSub.id, function()
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."TATTOO_FM_CURRENT_32"), 67108864, true, true)
    menu.notify("Unlocked Alien Tattoo, requires new session", "Apex", 4, 257818)
end)

-- Unlocks || Vehicles
menu.add_feature("Unlock 'Best Lap' Paint Colors", "action", uVehiclesSub.id, function()
    local bestLapStat = gameplay.get_hash_key("MP0_AWD_FM_RACES_FASTEST_LAP")
    if not (stats.stat_get_int(bestLapStat, -1) >= 101) then
        stats.stat_set_int(bestLapStat, 101, true)
        menu.notify("Paint colors unlocked.")
    else
        menu.notify("You already have all of the 'Best Lap' colors unlocked.")
    end
end)
menu.add_feature("Arena Wars vehicles", "action", uVehiclesSub.id, function()
    uFunctions.unlockArenaCars()
end)
menu.add_feature("Some Liveries", "action", uVehiclesSub.id, function()
    uFunctions.unlockLiveries()
end)
menu.add_feature("Unlock Chop Shop Cars", "action", uVehiclesSub.id, function()
    uFunctions.unlockChopShopCars()
    menu.notify("Unlocked Police Gauntlet too.", "Apex", 6, colors.green)
end)
menu.add_feature("Unlock Shotaro", "action", uVehiclesSub.id, function()
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."CRDEADLINE"), 32768, true)
end)
menu.add_feature("Unlock Armored Paragon R", "action", uVehiclesSub.id, function()
    uFunctions.unlockArmoredParagon()
end)

-- Unlocks || Weapons
menu.add_feature("Knife and Bat skins (Gun Van)", "action", uWeaponsSub.id, function()
    uFunctions.unlockMeleeWeaponSkins()
end)  
menu.add_feature("Snow Cannon", "action", uWeaponsSub.id, function()
    uFunctions.unlockSnowCannon()
end)  
menu.add_feature("Christmas 2023 Liveries", "action", uWeaponsSub.id, function()
    uFunctions.weaponLiveryChristmas23()
end)   
menu.add_feature("Stone Hatchet", "action", uWeaponsSub.id, function()
    stats.stat_set_bool(gameplay.get_hash_key("MPPLY_MELEECHLENGECOMPLETED"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key("MPPLY_HEADSHOTCHLENGECOMPLETED"), true, true)
end)  

-- Unlocks || Clothing
menu.add_feature("Cunning Stunts Figures", "action", uClothingSub.id, function()
    uFunctions.cunningStuntsFigures()
end)
menu.add_feature("Doomsday Heist Bodysuits", "action", uClothingSub.id, function()
    uFunctions.doomsdayHeistBodysuits()
end)
menu.add_feature("Diamond Casino Heist Bodysuits", "action", uClothingSub.id, function()
    uFunctions.diamondCasinoHeistBodysuits()
end)
menu.add_feature("Los Santos Tuners Clothing", "action", uClothingSub.id, function()
    uFunctions.losSantosTunersClothing()
end)
menu.add_feature("Criminal Enterprises Clothing", "action", uClothingSub.id, function()
    uFunctions.criminalEnterprisesClothing()
end)
menu.add_feature("Festive Surprise 2014 Clothing", "action", uClothingSub.id, function()
    uFunctions.festiveSurprise2014Clothing()
end)
menu.add_feature("Independence Day Special Clothing", "action", uClothingSub.id, function()
    uFunctions.independenceDaySpecialClothing()
end)
menu.add_feature("Lowriders Clothing", "action", uClothingSub.id, function()
    uFunctions.lowridersClothing()
end)
menu.add_feature("Criminal Enterprises Additional Clothing", "action", uClothingSub.id, function()
    uFunctions.criminalEnterprisesAdditionalClothing()
end)
menu.add_feature("Independence Day Special Additional Clothing", "action", uClothingSub.id, function()
    uFunctions.independenceDaySpecialAdditionalClothing()
end)
menu.add_feature("Cayo Perico Heist Clothing", "action", uClothingSub.id, function()
    uFunctions.cayoPericoHeistClothing()
end)
menu.add_feature("Independence Day Special Additional Clothing 2", "action", uClothingSub.id, function()
    uFunctions.independenceDaySpecialAdditionalClothing2()
end)
menu.add_feature("Chop Shop Clothing", "action", uClothingSub.id, function()
    uFunctions.packedChopShopClothes()
end)
menu.add_feature("Unlock Party Clothing", "action", uClothingSub.id, function()
    uFunctions.unlockPartyClothes()
end)

-- Unlocks || Achievements
local function setAchievement(achievementId)
    native.call(0xBEC7076D64130195, achievementId)
end
menu.add_feature("Every Achievement", "action", uAchievementSub.id, function()
    uFunctions.unlockAllAchievements()
end)
menu.add_feature("-----------------------------", "action", uAchievementSub.id, function()
    menu.notify("BLANK_MSG", "Apex", 5, 3578712200220)
end)

for id, achievementName in pairs(uTable.Achievements) do
    menu.add_feature(achievementName, "action", uAchievementSub.id, function()
        setAchievement(id)
    end)
end


-- Tax Fraud Features
menu.add_feature("Nightclub Loop", "toggle", fraudSub.id, function(f)
    helpers.iconNotification("CHAR_BANK_MAZE", "1 Million per minute!")
    while f.on do
        uFunctions.nightClubLoopFunc()
    end 
end)


-- Misc
menu.add_feature("Enable Snow", "toggle", tunableSub.id, function(f)
    menu.get_feature_by_hierarchy_key("online.tunables.snow").on = f.on
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
menu.add_feature("Set favorite bike (int32)", "action", miscSub.id, function()
    uFunctions.setFavoriteBikeMC()
end)
menu.add_feature("100% Complete Flightschool", "action", miscSub.id, function()
    uFunctions.completeFlightSchool()
end)


menu.add_feature("Set Kills", "action", miscSub.id, function()
   uFunctions.setKills()
end)
menu.add_feature("Set Deaths", "action", miscSub.id, function()
   uFunctions.setDeaths()
end)
menu.add_feature("Set K/D", "action", miscSub.id, function()
   uFunctions.setKD()
end)

menu.add_feature("-----------------------------", "action", miscSub.id, function()
    menu.notify("BLANK_MSG", "Apex", 5, 3578712200220)
end)

vanityPlateFunc = menu.add_feature("Vanity Plates", "autoaction_value_str", miscSub.id, function(f, pid)
    vehicle.set_vehicle_number_plate_index(player.player_vehicle(), f.value + 6)
end)
vanityPlateFunc:set_str_data({"E-Cola", "Las Venturas", "Liberty City", "LS Car Meet", "Panic", "Pounders", "Sprunk"})


-- Custom Execution
menu.add_feature("Integer", "action", customSub.id, function()
    uFunctions.customInteger()
end)
 menu.add_feature("Boolean", "action", customSub.id, function()
    uFunctions.customBoolean()
end)


-- Teleportation Features
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


-- Collectables
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


-- DLC Awards
menu.add_feature("Chop Shop Awards", "action", uAwardsSub.id, function()
   uFunctions.unlockChopShopAwards()
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