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
local reputationSub = menu.add_feature("Reputation", "parent", root.id)
local eventsSub = menu.add_feature("Events", "parent", root.id)
local heistSub = menu.add_feature("Heist Manager", "parent", root.id)
local usefulSub = menu.add_feature("Useful Features", "parent", root.id)
local collectSub = menu.add_feature("Collectables", "parent", root.id) 
local teleportSub = menu.add_feature("Teleportation", "parent", root.id)
local miscSub = menu.add_feature("Miscellaneous", "parent", root.id)

-- Subs
local cCreationDate = menu.add_feature("Creation Date", "parent", charSub.id)

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

local serialKiller = menu.add_feature("Serial Killer", "parent", teleportSub.id)
local yetiHunt = menu.add_feature("Yeti Hunt", "parent", teleportSub.id)

local collectMusic = menu.add_feature("Media Sticks - LS Tuners DLC", "parent", collectSub.id)

local tunableSub = menu.add_feature("Tunables", "parent", miscSub.id)


-- Character Features
menu.add_feature("Set Year", "action", cCreationDate.id, function()
    uFunctions.stat_set_date(gameplay.get_hash_key("MP0_CHAR_DATE_CREATED"))
end)
menu.add_feature("Set Month", "action_value_i", cCreationDate.id, function()
    --TODO
end)
menu.add_feature("Set Day", "action_value_i", cCreationDate.id, function()
    --TODO
end)
menu.add_feature("Unlock Birthday Rewards", "action", charSub.id, function()
    --TODO
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

menu.add_feature("Auto Setup: Silent & Sneaky", "action", casinoHeist.id, function()
    uFunctions.casinoHeistSilentSneaky()
end)
menu.add_feature("Auto Setup: The Big Con", "action", casinoHeist.id, function()
    uFunctions.casinoHeistBigCon()
end)
menu.add_feature("Auto Setup: Aggressive", "action", casinoHeist.id, function()
    uFunctions.casinoHeistAggressive()
end)

menu.add_feature("Auto Setup: Panther + Hard Mode", "action", cayopericoHeist.id, function()
    uFunctions.cayoPericoPantherHard()
end)
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

menu.add_feature("test", "action", salvageRobberies.id, function()

end)



-- Reputation Features
menu.add_feature("Level 1000 in LS Car Meet", "action", reputationSub.id, function()
    
end)
menu.add_feature("Level 1000 in Arena", "action", reputationSub.id, function()
    --TODO
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
menu.add_feature("Unlock Fast Run and Reload", "action", usefulSub.id, function()
    uFunctions.unlockFastRun()
end)
menu.add_feature("Enable Vincent contact missions", "action", usefulSub.id, function()
    uFunctions.enableVincent()
end)

-- Unlocks || General
menu.add_feature("EVERY Packed Stat", "action", unlocksSub.id, function()
    uFunctions.unlockEveryPackedStat()
end)
menu.add_feature("Basic Unlock All", "action", unlocksSub.id, function(f)
    uFunctions.basicUnlocks()
end)

menu.add_feature("Most awards", "action", unlocksSub.id, function()
    uTable.unlockAwards()
    menu.notify("Unlocked Most Awards", "Apex", 4, 257818)
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
menu.add_feature("Arena Wars vehicles", "action", uVehiclesSub.id, function()
    uFunctions.unlockArenaCars()
end)
menu.add_feature("Some Liveries", "action", uVehiclesSub.id, function()
    uFunctions.unlockLiveries()
end)
menu.add_feature("Unlock Chop Shop Cars", "action", uVehiclesSub.id, function()
    uFunctions.unlockChopShopCars()
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

-- Unlocks || Clothing
menu.add_feature("Cunning Stunts Figures", "action", uClothingSub.id, function()
    uFunctions.cunningStuntsFigures()
    -- helpers.cIconNotification("CHAR_SOCIAL_CLUB", "Social Club", "Rockstar Games has given you\nsome clothes.")
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
menu.add_feature("EVERY Achievement", "action", uAchievementSub.id, function()
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
    helpers.iconNotification("WEB_BAHAMAMAMASWEST", "1 Million per minute!")
    while f.on do
        uFunctions.nightClubLoopFunc()
    end 
end)


-- Misc
menu.add_feature("Snow", "action_value_str", tunableSub.id, function(snow_options)
    if snow_options.value == 0 then
        script.set_global_i(262145 + 4575, 1)
    elseif snow_options.value == 1 then
        script.set_global_i(262145 + 4575, 0)
    end
end):set_str_data({"Enable Snow", "Disable Snow"})


menu.add_feature("Refill Inventory", "action", miscSub.id, function()
    uFunctions.refillInventory()
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
--[[
menu.add_feature("-----------------------------", "action", miscSub.id, function()
    menu.notify("BLANK_MSG", "Apex", 5, 3578712200220)
end)
menu.add_feature("Get Plane Access", "action", miscSub.id, function()
    uFunctions.unlockPlaneAccess()
end)
menu.add_feature("Get Heli Access", "action", miscSub.id, function()
    uFunctions.unlockHeliAccess()
end)
menu.add_feature("Get Boat Access", "action", miscSub.id, function()
    uFunctions.unlockBoatAccess()
end)
--]]
menu.add_feature("-----------------------------", "action", miscSub.id, function()
    menu.notify("BLANK_MSG", "Apex", 5, 3578712200220)
end)

vanityPlateFunc = menu.add_feature("Vanity Plates", "autoaction_value_str", miscSub.id, function(f, pid)
    vehicle.set_vehicle_number_plate_index(player.player_vehicle(), f.value + 6)
end)
vanityPlateFunc:set_str_data({"E-Cola", "Las Venturas", "Liberty City", "LS Car Meet", "Panic", "Pounders", "Sprunk"})



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


-- Collectables || Music
menu.add_feature("CircoLoco Record - Black EP", "action", collectMusic.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-2172.050, 1159.195, -24.372))
end)
menu.add_feature("CircoLoco Record - Blue EP", "action", collectMusic.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(955.299, 48.904, 112.553))
end)
menu.add_feature("CircoLoco Record - Violet EP", "action", collectMusic.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-1618.841, -3010.627, -75.205))
end)
menu.add_feature("CircoLoco Record - Green EP", "action", collectMusic.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(2726.694, -387.484, -48.993))
    menu.notify("You now unlocked the Circoloco Tee & Media!", "Apex", 5, 3578712200220)
end)
menu.add_feature("-----------------------------", "action", collectMusic.id, function()
    menu.notify("BLANK_MSG", "Apex", 5, 3578712200220)
end)
menu.add_feature("Kenny's Backyard Boogie - #1", "action", collectMusic.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-2163.025, 1083.473, -24.362))
end)
menu.add_feature("Kenny's Backyard Boogie - #2", "action", collectMusic.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-2180.532, 1082.276, -24.367))
end)
menu.add_feature("Kenny's Backyard Boogie - #3", "action", collectMusic.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-2162.992, 1089.790, -24.363))
end)
menu.add_feature("Kenny's Backyard Boogie - #4", "action", collectMusic.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-2162.770, 1115.913, -24.371))
end)
menu.add_feature("-----------------------------", "action", collectMusic.id, function()
    menu.notify("BLANK_MSG", "Apex", 5, 3578712200220)
end)
menu.add_feature("NEZ - You Wanna?", "action", collectMusic.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-860.241, -229.980, 61.016))
end)
menu.add_feature("NEZ ft. Schoolboy Q - Let's Get It", "action", collectMusic.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(25.010, 521.276, 170.227))
end)
menu.add_feature("Dr. Dre", "action", collectMusic.id, function()
    menu.notify("You need to complete the VIP missions\nIt'll be on your desk in the Agency", "Apex", 5, 3578712200220)
end)
-- DLC Awards
menu.add_feature("Chop Shop Awards", "action", uAwardsSub.id, function()
   uFunctions.unlockChopShopAwards()
end)