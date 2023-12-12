local appdata = utils.get_appdata_path("PopstarDevs", "2Take1Menu")
package.path = appdata .. "\\scripts\\?.lua;" .. package.path  
local uFunctions = require("ApexLib.uFunctions")
local uTable = require("ApexLib.uTable")
local helpers = require("ApexLib.helpers")

--[[
    TODO List

    - Check Stats Menu -> Modify in menu
    - make modded acc presets
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
    menu.notify("Allow access to Statistics!")
    menu.exit()
end


-- submenu's
local root = menu.add_feature("Apex", "parent", 0) 

local charSub = menu.add_feature("Identity Theft", "parent", root.id)
local unlocksSub = menu.add_feature("Unlocks", "parent", root.id)
local fraudSub = menu.add_feature("#FF0000FF#[RISKY] #DEFAULT# Tax Fraud", "parent", root.id)
local reputationSub = menu.add_feature("Reputation", "parent", root.id)
local usefulSub = menu.add_feature("Useful Features", "parent", root.id)
local collectSub = menu.add_feature("Collectables", "parent", root.id) 
local teleportSub = menu.add_feature("Teleportation", "parent", root.id)
local miscSub = menu.add_feature("Miscellaneous", "parent", root.id)

-- Sub in Sub
local cCreationDate = menu.add_feature("Creation Date", "parent", charSub.id)

local uAchievementSub = menu.add_feature("Achievement Manager", "parent", unlocksSub.id)
local uWeaponsSub = menu.add_feature("Weapons", "parent", unlocksSub.id)
local uVehiclesSub = menu.add_feature("Vehicles", "parent", unlocksSub.id)
local uClothingSub = menu.add_feature("Clothing", "parent", unlocksSub.id)

local serialKiller = menu.add_feature("Serial Killer", "parent", teleportSub.id)
local collectMusic = menu.add_feature("Media Sticks - LS Tuners DLC", "parent", collectSub.id)

local tunableSub = menu.add_feature("Tunables", "parent", miscSub.id)


-- Character
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


-- Fraud
menu.add_feature("Spawn $1.900.000 Issi", "action", fraudSub.id, function()
    --TODO
end)

-- Reputation
menu.add_feature("Level 1000 in LS Car Meet", "action", reputationSub.id, function()
    
end)
menu.add_feature("Level 1000 in Arena", "action", reputationSub.id, function()
    --TODO
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
menu.add_feature("Set Cutscenes Seen", "action", usefulSub.id, function()
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
    stats.stat_set_int("TATTOO_FM_CURRENT_32", true, 32768)
    menu.notify("Unlocked Alien Tattoo, requires new session", "Apex", 4, 257818)
end)
menu.add_feature("Alien Tattoo (Female)", "action", unlocksSub.id, function()
    stats.stat_set_int("TATTOO_FM_CURRENT_32", true, 67108864)
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

-- Unlocks || Achievements
menu.add_feature("EVERY Achievement", "action", uAchievementSub.id, function()
    uFunctions.unlockAllAchievements()
end)
menu.add_feature("-----------------------------", "action", uAchievementSub.id, function()
    menu.notify("BLANK_MSG", "Apex", 5, 3578712200220)
end)
menu.add_feature("Welcome to Los Santos", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 1) -- Welcome to Los Santos
end)
menu.add_feature("A Friendship Resurrected", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 2) -- A Friendship Resurrected
end)
menu.add_feature("A Fair Day's Pay", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 3) -- A Fair Day's Pay
end)
menu.add_feature("The Moment of Truth", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 4) -- The Moment of Truth
end)
menu.add_feature("To Live or Die in Los Santos", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 5) -- To Live or Die in Los Santos
end)
menu.add_feature("Diamond Hard", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 6) -- Diamond Hard
end)
menu.add_feature("Subversive", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 7) -- Subversive
end)
menu.add_feature("Blitzed", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 8) -- Blitzed
end)
menu.add_feature("Small Town, Big Job", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 9) -- Small Town, Big Job
end)
menu.add_feature("The Government Gimps", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 10) -- The Government Gimps
end)
menu.add_feature("The Big One!", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 11) -- The Big One!
end)
menu.add_feature("Solid Gold, Baby!", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 12) -- Solid Gold, Baby!
end)
menu.add_feature("Career Criminal", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 13) -- Career Criminal
end)
menu.add_feature("San Andreas Sightseer", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 14) -- San Andreas Sightseer
end)
menu.add_feature("All's Fare in Love and War", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 15) -- All's Fare in Love and War
end)
menu.add_feature("TP Industries Arms Race", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 16) -- TP Industries Arms Race
end)
menu.add_feature("Multi-Disciplined", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 17) -- Multi-Disciplined
end)
menu.add_feature("From Beyond the Stars", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 18) -- From Beyond the Stars
end)
menu.add_feature("A Mystery, Solved", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 19) -- A Mystery, Solved
end)
menu.add_feature("Waste Management", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 20) -- Waste Management
end)
menu.add_feature("Red Mist", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 21) -- Red Mist
end)
menu.add_feature("Show Off", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 22) -- Show Off
end)
menu.add_feature("Kifflom!", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 23) -- Kifflom!
end)
menu.add_feature("Three Man Army", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 24) -- Three Man Army
end)
menu.add_feature("Out of Your Depth", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 25) -- Out of Your Depth
end)
menu.add_feature("Altruist Acolyte", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 26) -- Altruist Acolyte
end)
menu.add_feature("A Lot of Cheddar", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 27) -- A Lot of Cheddar
end)
menu.add_feature("Trading Pure Alpha", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 28) -- Trading Pure Alpha
end)
menu.add_feature("Pimp My Sidearm", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 29) -- Pimp My Sidearm
end)
menu.add_feature("Wanted: Alive Or Alive", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 30) -- Wanted: Alive Or Alive
end)
menu.add_feature("Los Santos Customs", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 31) -- Los Santos Customs
end)
menu.add_feature("Close Shave", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 32) -- Close Shave
end)
menu.add_feature("Off the Plane", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 33) -- Off the Plane
end)
menu.add_feature("Three-Bit Gangster", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 34) -- Three-Bit Gangster
end)
menu.add_feature("Making Moves", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 35) -- Making Moves
end)
menu.add_feature("Above the Law", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 36) -- Above the Law
end)
menu.add_feature("Numero Uno", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 37) -- Numero Uno
end)
menu.add_feature("The Midnight Club", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 38) -- The Midnight Club
end)
menu.add_feature("Unnatural Selection", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 39) -- Unnatural Selection
end)
menu.add_feature("Backseat Driver", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 40) -- Backseat Driver
end)
menu.add_feature("Run Like The Wind", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 41) -- Run Like The Wind
end)
menu.add_feature("Clean Sweep", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 42) -- Clean Sweep
end)
menu.add_feature("Decorated", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 43) -- Decorated
end)
menu.add_feature("Stick Up Kid", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 44) -- Stick Up Kid
end)
menu.add_feature("Enjoy Your Stay", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 45) -- Enjoy Your Stay
end)
menu.add_feature("Crew Cut", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 46) -- Crew Cut
end)
menu.add_feature("Full Refund", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 47) -- Full Refund
end)
menu.add_feature("Dialling Digits", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 48) -- Dialling Digits
end)
menu.add_feature("American Dream", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 49) -- American Dream
end)
menu.add_feature("A New Perspective", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 50) -- A New Perspective
end)
menu.add_feature("Be Prepared", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 51) -- Be Prepared
end)
menu.add_feature("In the Name of Science", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 52) -- In the Name of Science
end)
menu.add_feature("Dead Presidents", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 53) -- Dead Presidents
end)
menu.add_feature("Parole Day", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 54) -- Parole Day
end)
menu.add_feature("Shot Caller", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 55) -- Shot Caller
end)
menu.add_feature("Four Way", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 56) -- Four Way
end)
menu.add_feature("Live a Little", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 57) -- Live a Little
end)
menu.add_feature("Can't Touch This", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 58) -- Can't Touch This
end)
menu.add_feature("Mastermind", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 59) -- Mastermind
end)
menu.add_feature("Vinewood Visionary", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 60) -- Vinewood Visionary
end)
menu.add_feature("Majestic", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 61) -- Majestic
end)
menu.add_feature("Humans of Los Santos", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 62) -- Humans of Los Santos
end)
menu.add_feature("First Time Director", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 63) -- First Time Director
end)
menu.add_feature("Animal Lover", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 64) -- Animal Lover
end)
menu.add_feature("Ensemble Piece", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 65) -- Ensemble Piece
end)
menu.add_feature("Cult Movie", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 66) -- Cult Movie
end)
menu.add_feature("Location Scout", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 67) -- Location Scout
end)
menu.add_feature("Method Actor", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 68) -- Method Actor
end)
menu.add_feature("Cryptozoologist", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 69) -- Cryptozoologist
end)
menu.add_feature("Getting Started", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 70) -- Getting Started
end)
menu.add_feature("The Data Breaches", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 71) -- The Data Breaches
end)
menu.add_feature("The Bogdan Problem", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 72) -- The Bogdan Problem
end)
menu.add_feature("The Doomsday Scenario", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 73) -- The Doomsday Scenario
end)
menu.add_feature("A World Worth Saving", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 74) -- A World Worth Saving
end)
menu.add_feature("Orbital Obliteration", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 75) -- Orbital Obliteration
end)
menu.add_feature("Elitist", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 76) -- Elitist
end)
menu.add_feature("Masterminds", "action", uAchievementSub.id, function()
    script.set_global_i(4543283 + 1, 77) -- Masterminds
end)

-- Misc
menu.add_feature("Enable Snow", "action", tunableSub.id, function()
    script.set_global_i(262145 + 4752, 1)
end)
menu.add_feature("Disable Snow", "action", tunableSub.id, function()
    script.set_global_i(262145 + 4752, 0)
end)


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


-- Teleportation || serialKiller
menu.add_feature("Clue 1 - Bloody Handprint", "action", serialKiller.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-678.9984, 5797.6851, 17.3309))
end)
menu.add_feature("Clue 2 - Machete", "action", serialKiller.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(1901.4042, 4911.5479, 48.6951))
end)
menu.add_feature("Clue 3 - Severed Hand", "action", serialKiller.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(1111.7750, 3142.0457, 38.4241))
end)
menu.add_feature("Clue 4 - Message", "action", serialKiller.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-136.5509, 1912.8038, 197.2982))
end)
menu.add_feature("-----------------------------", "action", serialKiller.id, function()
    menu.notify("BLANK_MSG", "Apex", 5, 3578712200220)
end)
menu.add_feature("Clue 5 - Black Van (1)", "action", serialKiller.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(2576.0391, 1251.7494, 43.6099))
    menu.notify("The LS Slasher will appear from 7PM-5AM, Kill him! (GTA$ 50,000 Reward)", "Apex", 4, 257818)
end)
menu.add_feature("Clue 5 - Black Van (2)", "action", serialKiller.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(2903.4150, 3644.0413, 43.8774))
    menu.notify("The LS Slasher will appear from 7PM-5AM, Kill him! (GTA$ 50,000 Reward)", "Apex", 4, 257818)
end)
menu.add_feature("Clue 5 - Black Van (3)", "action", serialKiller.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(2432.3904, 5846.0757, 58.8891))
    menu.notify("The LS Slasher will appear from 7PM-5AM, Kill him! (GTA$ 50,000 Reward)", "Apex", 4, 257818)
end)
menu.add_feature("Clue 5 - Black Van (4)", "action", serialKiller.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-1567.880, 4424.6104, 7.2154))
    menu.notify("The LS Slasher will appear from 7PM-5AM, Kill him! (GTA$ 50,000 Reward)", "Apex", 4, 257818)
end)
menu.add_feature("Clue 5 - Black Van (5)", "action", serialKiller.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-1715.793, 2618.7686, 2.9409))
    menu.notify("The LS Slasher will appear from 7PM-5AM, Kill him! (GTA$ 50,000 Reward)", "Apex", 4, 257818)
end)

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