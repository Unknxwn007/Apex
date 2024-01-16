local unlocksSub = menu.add_feature("Unlocks", "parent", apexStuff["root"].id)

local achievementSub = menu.add_feature("Achievement Manager", "parent", unlocksSub.id)
local uWeaponsSub = menu.add_feature("Weapons", "parent", unlocksSub.id)
local vehiclesSub = menu.add_feature("Vehicles", "parent", unlocksSub.id)
local clothingSub = menu.add_feature("Clothing", "parent", unlocksSub.id)
local awardsSub = menu.add_feature("Awards", "parent", unlocksSub.id)


--                   !! Achievements !! 
menu.add_feature("Every Achievement", "action", achievementSub.id, function()
    apexStuff["functions"].unlockAllAchievements()
end)
for id, achievementName in pairs(apexStuff["tables"].Achievements) do
    menu.add_feature(achievementName, "action", achievementSub.id, function()
        apexStuff["natives"].player.give_achievement_to_player(id)
    end)
end


--                   !! Weapons !! 
menu.add_feature("Unlock finish", "action_value_str", uWeaponsSub.id, function(f) 
    if f.value == 0 then
        apexStuff["natives"].stats.set_packed_stat_bool_code(36787, true, apexStuff["helpers"].getCurrentChar(true))
        apexStuff["natives"].stats.set_packed_stat_bool_code(36788, true, apexStuff["helpers"].getCurrentChar(true))
        menu.notify("Unlocked Dildodude Camo!", "Apex", 5, 0xFF00FF00)
    elseif f.value == 1 then
        apexStuff["natives"].stats.set_packed_stat_bool_code(41657, true, apexStuff["helpers"].getCurrentChar(true))
        menu.notify("Unlocked Employee of the Month finish for the Micro SMG!", "Apex", 5, 0xFF00FF00)
    elseif f.value == 2 then
        apexStuff["natives"].stats.set_packed_stat_bool_code(41658, true, apexStuff["helpers"].getCurrentChar(true))
        menu.notify("Unlocked Suede Bucks finish for the Carbine Rifle!", "Apex", 5, 0xFF00FF00)
    elseif f.value == 3 then
        apexStuff["natives"].stats.set_packed_stat_bool_code(41659, true, apexStuff["helpers"].getCurrentChar(true))
        menu.notify("Unlocked Uncle T finish for the RPG!", "Apex", 5, 0xFF00FF00)
    elseif f.value == 4 then
        apexStuff["functions"].weaponLiveryChristmas23()
        menu.notify("Unlocked ", "Apex", 5, 0xFF00FF00)
    elseif f.value == 5 then
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).."XMAS2023_ADV_MODE_WINS"), 5, true)
        menu.notify("Unlocked Skull Santa Finish for the Special Carbine!", "Apex", 5, 0xFF00FF00)
    else
        menu.notify("Error 0x42069", "Apex", 10, colors.red)
    end
end):set_str_data({"Dildodude", "Employee of the Month", "Suede Bucks", "Uncle T", "Christmas 2023", "Skull Santa"})
menu.add_feature("Unlock Weapon", "action_value_str", uWeaponsSub.id, function(f) 
    if f.value == 0 then
        apexStuff["functions"].unlockSnowCannon()
        menu.notify("Unlocked Snow Cannon!", "Apex", 5, 0xFF00FF00)
    elseif f.value == 1 then
        --audio.play_sound_frontend(-1, "clue_complete_shard", "dlc_btl_fm_th_sounds", true)
        --weapon.give_delayed_weapon_to_ped(player.player_id(), gameplay.get_hash_key("WEAPON_STONE_HATCHET"), 100, true)

        stats.stat_set_masked_int(gameplay.get_hash_key("MP_NGDLCPSTAT_INT0"), 5, 16, 8, true) --thanks ilana
        stats.stat_set_bool(gameplay.get_hash_key("MPPLY_MELEECHLENGECOMPLETED"), true, true)
        menu.notify("Unlocked Stone Hatchet!\nfind a new session", "Apex", 5, 0xFF00FF00)
    elseif f.value == 2 then
        apexStuff["natives"].stats.set_packed_stat_bool_code(28158, true, apexStuff["helpers"].getCurrentChar(true))
        menu.notify("Unlocked Navy revolver!", "Apex", 5, 0xFF00FF00)
    elseif f.value == 3 then
        stats.stat_set_masked_int(gameplay.get_hash_key("GANGOPSPSTAT_INT102"), 3, 24, 8, true) --thanks ilana
        stats.stat_set_bool(gameplay.get_hash_key("MPPLY_HEADSHOTCHLENGECOMPLETED"), true, true)
        menu.notify("Unlocked Double-Action revolver!\nfind a new session", "Apex", 5, 0xFF00FF00)
    else
        menu.notify("Error 0x42069", "Apex", 10, colors.red)
    end
end):set_str_data({"Snow Cannon", "Stone Hatchet", "Navy revolver", "Double-Action Revolver"})
menu.add_feature("Knife and Bat skins (Gun Van)", "action", uWeaponsSub.id, function()
    apexStuff["functions"].unlockMeleeWeaponSkins()
    menu.notify("Unlocked Knife and Bat skins the gun van!", "Apex", 5, 0xFF00FF00)
end) 


--                   !! Vehicles !! 
menu.add_feature("Unlock Vehicle", "action_value_str", vehiclesSub.id, function(f) 
    if f.value == 0 then
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).."CRDEADLINE"), 32768, true)
        menu.notify("Unlocked Shotaro!", "Apex", 5, 0xFF00FF00)
    elseif f.value == 1 then
        apexStuff["functions"].unlockArmoredParagon()
        menu.notify("Unlocked armored paragon r!", "Apex", 5, 0xFF00FF00)
    elseif f.value == 2 then
        apexStuff["functions"].unlockChopShopCars()
        menu.notify("Unlocked all chop shop cars!", "Apex", 6, colors.green)
    elseif f.value == 3 then
        apexStuff["functions"].unlockArenaCars()
        menu.notify("Unlocked all arena wars cars!", "Apex", 5, 0xFF00FF00)
    elseif f.value == 4 then
        for i = 0, 38 do
            stats.stat_set_masked_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).. "BUSINESSBATPSTAT_INT380"), 1, i, 1, true)
        end
        menu.notify("Unlocked Go Go Monkey Blista!", "Apex", 5, 0xFF00FF00)
    else
        menu.notify("Error 0x42069", "Apex", 10, colors.red)
    end
end):set_str_data({"Shotaro", "Armored Paragon R", "Chop Shop Cars", "Arena War Cars", "Go Go Monkey Blista"})
menu.add_feature("'Best Lap' Paint Colors", "action", vehiclesSub.id, function()
    local bestLapStat = gameplay.get_hash_key("MP0_AWD_FM_RACES_FASTEST_LAP")
    if not (stats.stat_get_int(bestLapStat, -1) >= 101) then
        stats.stat_set_int(bestLapStat, 101, true)
        menu.notify("Paint colors unlocked.")
    else
        menu.notify("You already have all of the 'Best Lap' colors unlocked.")
    end
end)
menu.add_feature("All trade prices", "action", vehiclesSub.id, function()
    apexStuff["functions"].tradePricesVEH()
    menu.notify("Unlocked all trade prices!", "Apex", 5, 0xFF00FF00)
end)
menu.add_feature("Some Liveries", "action", vehiclesSub.id, function()
    apexStuff["functions"].unlockLiveries()
    menu.notify("Unlocked the following liveries:\nRockstar liveries\nTaxi livery\nGhostbusters livery\nCandy cane livery\nChristmas liveries", "Apex", 5, 0xFF00FF00)
end)


--                   !! Clothing !! 
menu.add_feature("Some Shirts", "action", clothingSub.id, function()
    for statName in pairs(apexStuff["tables"].shirtUnlocks) do
        stats.stat_set_bool(gameplay.get_hash_key(statName), true, true)
    end
    menu.notify("Unlocked the following shirts:\nAccountant, Bahama Mamas, Drone, Grotti, Golf, Maisonette, Manopause, Meltdown, Pacific Bluff, Pro Laps, Tennis, Toe Shoes, Vanilla Unicorn, Marlowe and Crest", "Apex", 5, 0xFF00FF00)
end)
-- Beach Bum Update
-- Holiday Gifts
-- The Valentine's Day Massacre Special
-- The Business Update
-- The High Life Update
-- The "I'm Not a Hipster" Update
menu.add_feature("Independence Day Special", "action", clothingSub.id, function()
    apexStuff["functions"].independenceDaySpecialClothing()
    apexStuff["functions"].independenceDaySpecialAdditionalClothing()
    apexStuff["functions"].independenceDaySpecialAdditionalClothing2()
    menu.notify("Unlocked all Independence Day Special DLC clothing!", "Apex", 5, 0xFF00FF00)
end)
-- The San Andreas Flight School Update
-- The Last Team Standing Update
menu.add_feature("Festive Surprise 2014", "action", clothingSub.id, function()
    apexStuff["functions"].festiveSurprise2014Clothing()
    menu.notify("Unlocked all Festive Surprise 2014 DLC clothing!", "Apex", 5, 0xFF00FF00)
end)
-- Legacy Heists
-- Ill-Gotten Gains Part 1
-- Ill-Gotten Gains Part 2
-- Freemode Events Update
menu.add_feature("Lowriders", "action", clothingSub.id, function()
    apexStuff["functions"].lowridersClothing()

    menu.notify("Unlocked all Lowriders DLC clothing!", "Apex", 5, 0xFF00FF00)
end)
-- Halloween Surprise
-- Executives and Other Criminals
-- Festive Surprise 2015
-- January 2016 Update
-- Be My Valentine
-- Lowrider: Custom Classics
-- Further Adventures in Finance and Felony
menu.add_feature("Cunning Stunts", "action", clothingSub.id, function()
    apexStuff["functions"].cunningStuntsFigures()

    menu.notify("Unlocked all Cunning Stunts DLC clothing!", "Apex", 5, 0xFF00FF00)
end)
-- bikers
-- import export
-- Cunning stunts special vehicle circuit
-- Gunrunning
-- Smuggler's Run
menu.add_feature("The Doomsday Heist", "action", clothingSub.id, function()
    apexStuff["functions"].doomsdayHeistBodysuits()

    menu.notify("Unlocked all Doomsday Heist DLC clothing!", "Apex", 5, 0xFF00FF00)
end)
-- Southern San Andreas Super Sport Series
-- after hours
-- arena wars   
-- diamond casino and resort
menu.add_feature("The Diamond Casino Heist", "action", clothingSub.id, function()
    apexStuff["functions"].diamondCasinoHeistBodysuits()

    menu.notify("Unlocked all Diamond Casino Heist DLC clothing!", "Apex", 5, 0xFF00FF00)
end)
-- 2020 Summer special
menu.add_feature("The Cayo Perico Heist", "action", clothingSub.id, function()
    apexStuff["functions"].cayoPericoHeistClothing()
    menu.notify("Unlocked all Cayo Perico Heist DLC clothing!", "Apex", 5, 0xFF00FF00)
end)
menu.add_feature("Los Santos Tuners", "action", clothingSub.id, function()
    apexStuff["functions"].losSantosTunersClothing()
    menu.notify("Unlocked all Los Santos Tuners DLC clothing!", "Apex", 5, 0xFF00FF00)
end)
menu.add_feature("The Contract", "action", clothingSub.id, function()
    for i = 32184, 32195 do
        script.set_global_i(262145 + i, 1)
    end
    menu.notify("Unlocked all Contract DLC clothing!", "Apex", 5, 0xFF00FF00)
end)
menu.add_feature("Criminal Enterprises", "action", clothingSub.id, function()
    apexStuff["functions"].criminalEnterprisesAdditionalClothing()
    apexStuff["functions"].criminalEnterprisesClothing()
    menu.notify("Unlocked all Criminal Enterprises DLC clothing!", "Apex", 5, 0xFF00FF00)
end)
menu.add_feature("Drug Wars", "action", clothingSub.id, function()
    for i =  36699, 36770 do
        apexStuff["natives"].stats.set_packed_stat_bool_code(i, true, apexStuff["helpers"].getCurrentChar(true))
    end
    menu.notify("Unlocked all Drug Wars DLC clothing!", "Apex", 5, 0xFF00FF00)
end)
menu.add_feature("San Andreas Mercenaries", "action", clothingSub.id, function()
    for i = 41943, 41945 do
        apexStuff["natives"].stats.set_packed_stat_bool_code(i, true, apexStuff["helpers"].getCurrentChar(true))
    end
    menu.notify("Unlocked all San Andreas Mercenaries DLC clothing!", "Apex", 5, 0xFF00FF00)
end)
menu.add_feature("Chop Shop", "action", clothingSub.id, function()
    apexStuff["functions"].packedChopShopClothes()
    apexStuff["functions"].unlockPartyClothes()

    menu.notify("Unlocked all Chop Shop DLC clothing!", "Apex", 5, 0xFF00FF00)
end)


--                   !! Awards !! 
menu.add_feature("Most awards", "action", awardsSub.id, function()
    apexStuff["functions"].unlockAwards()
    menu.notify("Unlocked Most Awards", "Apex", 4, 257818)
end)
menu.add_feature("Chop Shop Awards", "action", awardsSub.id, function()
   apexStuff["functions"].unlockChopShopAwards()
   menu.notify("Unlocked Chop Shop Awards!", "Apex", 5, 0xFF00FF00)
end)


--                   !! General !! 
menu.add_feature("Every Packed Stat", "action", unlocksSub.id, function()
    apexStuff["functions"].unlockEveryPackedStat()
    menu.notify("Unlocked mostly everything!", "Apex", 5, 0xFF00FF00)
end)
menu.add_feature("Basic Unlock All", "action", unlocksSub.id, function(f)
    apexStuff["functions"].basicUnlocks()
end)
menu.add_feature("Returning Player Bonus", "action", unlocksSub.id, function()
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_UNLOCK_EXCLUS_CONTENT"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).."SP_UNLOCK_EXCLUS_CONTENT"), -1, true)
    menu.notify("Unlocked Returning Player Bonus!", "Apex", 5, 0xFF00FF00)
end)
menu.add_feature("All Contacts", "action", unlocksSub.id, function()
    apexStuff["functions"].unlockContacts()
    menu.notify("Unlocked all contacts!", "Apex", 5, 0xFF00FF00)
end)
menu.add_feature("Halloween decorations in penthouse", "action", unlocksSub.id, function()
    script.set_global_i(262145 + 28288, 18200)
    script.set_global_i(262145+ 28222, 22500)
    for i = 28477, 28482 do
        script.set_global_i(262145 + i, 22500)
    end
    menu.notify("Added halloween decorations to your\nCasino Penthouse!", "Apex", 5, 0xFF00FF00)
end)
menu.add_feature("100% Complete Flightschool", "action", unlocksSub.id, function()
    apexStuff["functions"].completeFlightSchool()
    menu.notify("Completed flightschool!", "Apex", 5, 0xFF00FF00)
end)
menu.add_feature("Fast Run and Reload", "action_value_str", unlocksSub.id, function(f) 
    if f.value == 0 then
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).."CHAR_ABILITY_1_UNLCK"), -1, true)
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).."CHAR_ABILITY_2_UNLCK"), -1, true)
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).."CHAR_ABILITY_3_UNLCK"), -1, true)
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).."CHAR_FM_ABILITY_1_UNLCK"), -1, true)
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).."CHAR_FM_ABILITY_2_UNLCK"), -1, true)
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).."CHAR_FM_ABILITY_3_UNLCK"), -1, true)
    else
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).."CHAR_ABILITY_1_UNLCK"), 0, true)
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).."CHAR_ABILITY_2_UNLCK"), 0, true)
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).."CHAR_ABILITY_3_UNLCK"), 0, true)
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).."CHAR_FM_ABILITY_1_UNLCK"), 0, true)
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).."CHAR_FM_ABILITY_2_UNLCK"), 0, true)
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).."CHAR_FM_ABILITY_3_UNLCK"), 0, true)
    end
    menu.notify("Please change sessions.", "Apex")
end):set_str_data({"ON", "OFF"})
menu.add_feature("Unlock Alien Tattoo", "action_value_str", unlocksSub.id, function(f) 
    if f.value == 0 then
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).."TATTOO_FM_CURRENT_32"), 32768, true, true)
    else
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).."TATTOO_FM_CURRENT_32"), 67108864, true, true)
    end
    menu.notify("Please change sessions.", "Apex")
end):set_str_data({"Male", "Female"})