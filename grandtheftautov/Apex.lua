local appdata = utils.get_appdata_path("PopstarDevs", "2Take1Menu")
package.path = appdata .. "\\scripts\\?.lua;" .. package.path  
local uFunctions = require("ApexLib.uFunctions")
local uTable = require("ApexLib.uTable")

-- Welcome
local menuName = "Apex"
menu.create_thread(function()
    menu.notify("Welcome to Apex!", menuName, 6, 0x00ff00)
end)

-- Checks
if not menu.is_trusted_mode_enabled(1 << 1) then 
    menu.notify("Enable #FF00FC7C#Globals #DEFAULT#Trusted Mode!", "Apex")
    menu.exit()
end
if not menu.is_trusted_mode_enabled(1 << 0) then 
    menu.notify("Enable #FF00FC7C#Stats #DEFAULT#Trusted Mode!", "Apex")
    menu.exit()
end
if not menu.is_trusted_mode_enabled(1 << 2) then 
    menu.notify("Enable #FF00FC7C#Natives #DEFAULT#Trusted Mode!", "Apex")
    menu.notify("Allow access to Statistics!")
    menu.exit()
end


-- submenu's
local root = menu.add_feature("Apex", "parent", 0) 

local unlocksSub = menu.add_feature("Unlocks", "parent", root.id)
local fraudSub = menu.add_feature("#FF0000FF#[RISKY] #DEFAULT# Tax Fraud", "parent", root.id)
local usefulSub = menu.add_feature("Useful Features", "parent", root.id)
local collectSub = menu.add_feature("Collectables", "parent", root.id) 
local teleportSub = menu.add_feature("Teleportation", "parent", root.id)
local miscSub = menu.add_feature("Miscellaneous", "parent", root.id)

-- Sub in Sub
local uWeaponsSub = menu.add_feature("Weapons", "parent", unlocksSub.id)
local uVehiclesSub = menu.add_feature("Vehicles", "parent", unlocksSub.id)
local uClothingSub = menu.add_feature("Clothing", "parent", unlocksSub.id)
local uDLCSub = menu.add_feature("DLC Content", "parent", unlocksSub.id)

local serialKiller = menu.add_feature("Serial Killer", "parent", teleportSub.id)
local collectMusic = menu.add_feature("Media Sticks - LS Tuners DLC", "parent", collectSub.id)


-- Fraud
menu.add_feature("Spawn $1.900.000 Issi", "action", fraudSub.id, function()
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

-- Vehicles
menu.add_feature("Arena Wars vehicles", "action", uVehiclesSub.id, function()
    uFunctions.unlockArenaCars()
end)
menu.add_feature("Some Liveries", "action", uVehiclesSub.id, function()
    uFunctions.unlockLiveries()
end)

-- Weapons
menu.add_feature("Knife and Bat skins (Gun Van)", "action", uWeaponsSub.id, function()
    uFunctions.unlockMeleeWeaponSkins()
end)  

-- Unlocks
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

-- Clothing
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

-- DLC Unlock
menu.add_feature("EVERY Packed Stat", "action", uDLCSub.id, function()
    uFunctions.unlockEveryPackedStat()
end)

--[[menu.add_feature("Basic Unlock All", "toggle", unlocksSub.id, function(f)
  uFunctions.basicUnlocks()
end)]]--
  

-- Misc
menu.add_feature("Set Kills", "action", miscSub.id, function()
   uFunctions.setKills()
end)
menu.add_feature("Set Deaths", "action", miscSub.id, function()
   uFunctions.setDeaths()
end)
menu.add_feature("Set K/D", "action", miscSub.id, function()
   uFunctions.setKD()
end)
menu.add_feature("Get Plane Access", "action", miscSub.id, function()
    stats.stat_set_bool("PLANE_ACCESS", true, true)
    menu.notify("You have gained plane access", "Apex", 4, 257818)
end)
menu.add_feature("Get Heli Access", "action", miscSub.id, function()
    stats.stat_set_bool("HELI_ACCESS", true, true)
    menu.notify("You have gained heli access", "Apex", 4, 257818)
end)
menu.add_feature("Get Boat Access", "action", miscSub.id, function()
    stats.stat_set_bool("BOAT_ACCESS", true, true)
    menu.notify("You have gained boat access", "Apex", 4, 257818)
end)
menu.add_feature("Equip 'Record A' livery for the AP Pistol", "action", miscSub.id, function()
    weapon_hash = gameplay.get_hash_key("WEAPON_APPISTOL")
    component_hash = gameplay.get_hash_key("COMPONENT_APPISTOL_VARMOD_SECURITY")

    weapon.give_weapon_component_to_ped(player.get_player_ped(player.player_id()), weapon_hash, component_hash)
    menu.notify("This did NOT unlock the finish!\nThis goes away after switching sessions.", "Apex", 3, 3578712200220)
end)
menu.add_feature("Equip 'Organics' livery for the Micro SMG", "action", miscSub.id, function()
    weapon_hash = gameplay.get_hash_key("WEAPON_MICROSMG")
    component_hash = gameplay.get_hash_key("COMPONENT_MICROSMG_VARMOD_SECURITY")

    weapon.give_weapon_component_to_ped(player.get_player_ped(player.player_id()), weapon_hash, component_hash)
    menu.notify("This did NOT unlock the finish!\nThis goes away after switching sessions.", "Apex", 3, 3578712200220)
end)
menu.add_feature("Equip 'Families' livery for the Heavy Rifle", "action", miscSub.id, function()
    weapon_hash = gameplay.get_hash_key("WEAPON_HEAVYRIFLE")
    component_hash = gameplay.get_hash_key("COMPONENT_HEAVYRIFLE_CAMO1")

    weapon.give_weapon_component_to_ped(player.get_player_ped(player.player_id()), weapon_hash, component_hash)
    menu.notify("This did NOT unlock the finish!\nThis goes away after switching sessions.", "Apex", 3, 3578712200220)
end)


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
