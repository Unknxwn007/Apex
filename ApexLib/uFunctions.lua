local appdata = utils.get_appdata_path("PopstarDevs", "2Take1Menu")
package.path = appdata .. "\\scripts\\?.lua;" .. package.path  
local uTable = require("ApexLib.uTable")
local helpers = require("ApexLib.helpers")

local uFunctions = {}
local mpx

leplayer = stats.stat_get_int(gameplay.get_hash_key("MPPLY_LAST_MP_CHAR"), 0)

local function mpx2()
    return "MP" .. stats.stat_get_int(gameplay.get_hash_key("MPPLY_LAST_MP_CHAR"), 1) .. "_"
end


function uFunctions.stat_set_string(statName, value)
    native.call(0xA87B2335D12531D7, statName, value, true)
end


function unlockPackedStat(index, leplayer)
    native.call(0xDB8A58AEAA67CD07, index, true, leplayer)
end

function uFunctions.unlockChopShopCars()
    for index = 36285, 36304 do
       script.set_global_i(262145+ index, 1)
       stats.stat_set_int(gameplay.get_hash_key(mpx2().."SALV23_INST_PROG"), -1, true) -- gaunlet
     end
end

function uFunctions.unlockSnowLauncher()
    unlockPackedStat(36066, leplayer)
end

function uFunctions.unlockEveryPackedStat()
       for _, index in ipairs(uTable.clothingIDs) do
    unlockPackedStat(index, leplayer)
        system.wait(2)
    end
end

function uFunctions.cunningStuntsFigures()
    for index = 16964, 16970 do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end
end

function uFunctions.doomsdayHeistBodysuits()
    for index = 23588, 23592 do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end
end

function uFunctions.diamondCasinoHeistBodysuits()
    for index = 28897, 28900 do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end
end

function uFunctions.losSantosTunersClothing()
    local indices = {31415, 31398, 31405, 31406}
    for _, index in ipairs(indices) do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end
end

function uFunctions.criminalEnterprisesClothing()
    local indices = {33157, 34297, 34298, 34299, 34048}
    for _, index in ipairs(indices) do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end
end

function uFunctions.festiveSurprise2014Clothing()
    local indices = {12992}
    for _, index in ipairs(indices) do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end
end

function uFunctions.independenceDaySpecialClothing()
    local indices = {8473, 8472, 8471, 8470, 8469, 8468, 8430}
    for _, index in ipairs(indices) do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end
end

function uFunctions.lowridersClothing()
    local indices = {12773, 12772, 12771, 12770, 12769, 12768, 12767, 12766, 12765, 12764}
    for _, index in ipairs(indices) do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end
end

function uFunctions.criminalEnterprisesAdditionalClothing()
    local indices = {33221, 33220, 33219, 33218, 33217, 33216, 33215, 33214, 33213, 33212, 33211, 33210, 33209, 33208, 33207}
    for _, index in ipairs(indices) do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end
end

function uFunctions.independenceDaySpecialAdditionalClothing()
    local indices = {8430}
    for _, index in ipairs(indices) do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end
end

function uFunctions.cayoPericoHeistClothing()
    local shadesIndices = {
        31107, 31106, 31105, 31104, 31103, 31102, 31101, 31100, 31099, 31098,
        31097, 31096, 31095, 31094, 31093, 31092, 31091, 31090, 31089, 31088,
        31087, 31086, 31085, 31084, 31083, 31082, 31081, 31080, 31079, 31078,
        31077, 31076, 31075, 31074, 31073
    }
    for _, index in ipairs(shadesIndices) do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end

    local earphonesIndices = {33232, 33231, 33230, 33229, 33228, 33227, 33226, 33225, 33224, 33223, 33222, 33221}
    for _, index in ipairs(earphonesIndices) do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end

    local glowShadesIndices = {
        30468, 30467, 30466, 30465, 30464, 30463, 30462, 30461, 30460, 30459,
        30458, 30457
    }
    for _, index in ipairs(glowShadesIndices) do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end

    local glowNecklaceIndices = {
        30484, 30483, 30482, 30481, 30480, 30479, 30478, 30477, 30476, 30475,
        30474, 30473, 30472, 30471, 30470, 30469
    }
    for _, index in ipairs(glowNecklaceIndices) do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end

    local banglesIndices = {
        30663, 30662, 30661, 30660, 30659, 30658, 30657, 30656, 30655, 30654,
        30653, 30652
    }
    for _, index in ipairs(banglesIndices) do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end
end

function uFunctions.independenceDaySpecialAdditionalClothing2()
    local animalHatIndices = {12230}
    for _, index in ipairs(animalHatIndices) do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end
end

function uFunctions.unlockFastRun()
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."CHAR_ABILITY_1_UNLCK"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."CHAR_ABILITY_2_UNLCK"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."CHAR_ABILITY_3_UNLCK"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."CHAR_FM_ABILITY_1_UNLCK"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."CHAR_FM_ABILITY_2_UNLCK"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."CHAR_FM_ABILITY_3_UNLCK"), -1, true)
    menu.notify("Please change sessions.", "Apex")
end

function uFunctions.basicUnlocks()
    menu.get_feature_by_hierarchy_key("online.recovery.stat_unlocks"):toggle()
    menu.get_feature_by_hierarchy_key("online.recovery.tattoo_unlocks"):toggle()
    menu.get_feature_by_hierarchy_key("online.recovery.parachute_unlocks"):toggle()
    menu.get_feature_by_hierarchy_key("online.recovery.rims_unlocks"):toggle()
    menu.get_feature_by_hierarchy_key("online.recovery.vehicle_unlocks"):toggle()
    menu.get_feature_by_hierarchy_key("online.recovery.trophy_unlocks"):toggle()
    menu.get_feature_by_hierarchy_key("online.recovery.hairstyle_unlocks"):toggle()
    menu.get_feature_by_hierarchy_key("online.recovery.weapon_unlocks"):toggle()
    menu.get_feature_by_hierarchy_key("online.recovery.clothing_unlocks"):toggle()
    menu.get_feature_by_hierarchy_key("online.recovery.doomsday_unlocks"):toggle()
    menu.get_feature_by_hierarchy_key("online.recovery.bunker_research_unlocks"):toggle()
    menu.get_feature_by_hierarchy_key("online.recovery.arena_unlocks"):toggle()
 end -- i forgot :toggle() thanks toph        -Lol
      
function uFunctions.setKills()
      local input_stat, input_val = input.get("Enter desired kills (Max. 2147483647)", "", 10, 3)
    if input_stat == 1 then
        return HANDLER_CONTINUE
    end
    if input_stat == 2 then
        return HANDLER_POP
    end
	menu.notify("Might require a double click")
stats.stat_set_int(gameplay.get_hash_key("MPPLY_KILLS_PLAYERS"), input_val, true)
 end

function uFunctions.setDeaths()
      local input_stat, input_val = input.get("Enter desired deaths (Max. 2147483647)", "", 10, 3)
    if input_stat == 1 then
        return HANDLER_CONTINUE
    end
    if input_stat == 2 then
        return HANDLER_POP
    end
	menu.notify("Might require a double click")
stats.stat_set_int(gameplay.get_hash_key("MPPLY_DEATHS_PLAYER"), input_val, true)
 end
 
function uFunctions.setKD()
      local input_stat, input_val = input.get("Enter desired K/D (Max. 2147483647)", "", 10, 3)
    if input_stat == 1 then
        return HANDLER_CONTINUE
    end
    if input_stat == 2 then
        return HANDLER_POP
    end
stats.stat_set_float(gameplay.get_hash_key("MPPLY_KILL_DEATH_RATIO"), input_val, true)
stats.stat_set_int(gameplay.get_hash_key("MPPLY_DEATHS_PLAYER"), 0, true)
end

function uFunctions.unlockArenaCars()
  	stats.stat_set_int(gameplay.get_hash_key(mpx2().."ARENAWARS_AP_TIER"), 999, true)
	stats.stat_set_int(gameplay.get_hash_key(mpx2().."ARENAWARS_AP"), 10039, true)
	menu.notify("Change sessions and complete a Arena War mission.", "Apex")
end

function uFunctions.setCutscenesSeen()
    stats.stat_set_bool(gameplay.get_hash_key(mpx2().."LOW_FLOW_CS_DRV_SEEN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2().."LOW_FLOW_CS_TRA_SEEN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2().."LOW_FLOW_CS_FUN_SEEN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2().."LOW_FLOW_CS_PHO_SEEN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2().."LOW_FLOW_CS_FIN_SEEN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2().."LOW_BEN_INTRO_CS_SEEN"), true, true)
end

function uFunctions.unlockLiveries()
for i = 0,20 do
        stats.stat_set_int(gameplay.get_hash_key(mpx2().."MPPLY_XMASLIVERIES"..i), -1, true)
        stats.stat_set_int(gameplay.get_hash_key(mpx2().."AWD_TAXIDRIVER"), 50, true)
	    stats.stat_set_masked_int(gameplay.get_hash_key(mpx2().."DLC22022PSTAT_INT536"), 10, 16, 8, true)
		script.set_global_i(262145+36052, 1)
		script.set_global_i(262145+36053, 1)
		script.set_global_i(262145+36051, 1)
 end
end

function uFunctions.unlockMeleeWeaponSkins()
   script.set_global_i(262145 + 34365, 0)
   script.set_global_i(262145 + 34328 + 9, -1716189206) --knife
   script.set_global_i(262145 + 34328 + 10, -1786099057) -- bat
end

function uFunctions.refillInventory()
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."NO_BOUGHT_YUM_SNACKS"), 30, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."NO_BOUGHT_HEALTH_SNACKS"), 15, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."NO_BOUGHT_EPIC_SNACKS"), 5, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."NUMBER_OF_CHAMP_BOUGHT"), 5, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."NUMBER_OF_ORANGE_BOUGHT"), 11, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."NUMBER_OF_BOURGE_BOUGHT"), 10, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."NUMBER_OF_SPRUNK_BOUGHT"), 10, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."CIGARETTES_BOUGHT"), 20, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."MP_CHAR_ARMOUR_1_COUNT"), 10, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."MP_CHAR_ARMOUR_2_COUNT"), 10, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."MP_CHAR_ARMOUR_3_COUNT"), 10, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."MP_CHAR_ARMOUR_4_COUNT"), 10, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."MP_CHAR_ARMOUR_5_COUNT"), 10, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."BREATHING_APPAR_BOUGHT"), 20, true)
end

function uFunctions.unlockAllAchievements()
    for _, index in ipairs(uTable.AchievementIDs) do
	    native.call(0xBEC7076D64130195, index)
        system.wait(2)
    end
end

function uFunctions.unlockChopShopCars()
    for index = 36285, 36304 do
        script.set_global_i(262145+index, 1)
    end
end

function uFunctions.unlockSnowCannon()
    unlockPackedStat(42148, leplayer)
end

function uFunctions.enableVincent()
    script.set_global_i(262145+36058, 1)
end

function uFunctions.packedChopShopClothes()
    for index = 42154, 42247 do
        unlockPackedStat(index, leplayer)
        unlockPackedStat(42111, leplayer)
        unlockPackedStat(42153, leplayer)
        unlockPackedStat(42055, leplayer)
		unlockPackedStat(42152, leplayer)
		unlockPackedStat(42063, leplayer)
		unlockPackedStat(42119, leplayer)
    for index2 = 36186, 36264 do
        script.set_global_i(262145+index2, 1)
      end
    end
end

function uFunctions.unlockPartyClothes()
    for index = 42130, 42144 do
        unlockPackedStat(index, leplayer)
        unlockPackedStat(42145, leplayer) --bronze
        unlockPackedStat(42146, leplayer) --silver
    end
end

function uFunctions.triggerSnowTruckEvent()
    script.set_global_i(262145 + 36157, 3600000)
    script.set_global_i(262145 + 36158, 1800000)
    script.set_global_i(262145 + 36055, 1)
end

function uFunctions.unlockChopShopAwards()
		for index = 36068, 36075 do
	script.set_global_i(262145+index, 1)
	script.set_global_i(262145+36305, 1)
	script.set_global_i(262145+36306, 1)	
	stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_MAZE_BANK_ROBBERY"), true, true)
	stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_DIAMOND_CASINO_ROBBERY"), true, true)
	stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_MISSION_ROW_ROBBERY"), true, true)
	stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_SUBMARINE_ROBBERY"), true, true)
	stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_PERFECT_RUN"), true, true)
	stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_GETAWAY_VEHICLES"), true, true)
	stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_EXTRA_MILE"  ), true, true)
	stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_VEHICLE_ROBBERIES"), 50, true)
	stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_PREP_WORK"), 50, true)
	stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_CAR_DEALER"), 10000000, true)
	stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_SECOND_HAND_PARTS"), 10000000, true)
	stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_TOW_TRUCK_SERVICE"), 50, true)
	stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_BOLINGBROKE"), true, true)
	stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_GETTING_SET_UP"), true, true)
	stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_CHICKEN_FACTORY_RAID"), true, true)
	stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_HELPING_HAND2"), true, true)
	stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_SURPRISE_ATTACK"), true, true)
	stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_ALL_OUT_RAID"), true, true)
	stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_WEAPON_ARSENAL"), true, true)
	stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_CARGO_SHIP_ROBBERY"), true, true)
  end
end

function uFunctions.doomsDayActOne()
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "GANGOPS_FLOW_MISSION_PROG"), 7, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "GANGOPS_FM_MISSION_PROG"), 7, true)
end
function uFunctions.doomsDayActTwo()
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "GANGOPS_FLOW_MISSION_PROG"), 240, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "GANGOPS_FM_MISSION_PROG"), 248, true)
end
function uFunctions.doomsDayActThree()
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "GANGOPS_FLOW_MISSION_PROG"), 15872, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "GANGOPS_FM_MISSION_PROG"), 16128, true)
end

function uFunctions.casinoHeistSilentSneaky()
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_APPROACH"), 1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3_LAST_APPROACH"), 3, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_TARGET"), 3, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_BITSET1"), 127, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_DISRUPTSHIP"), 3, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_KEYLEVELS"), 2, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_CREWWEAP"), 4, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_CREWDRIVER"), 5, true) 
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_CREWHACKER"), 5, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_VEHS"), 2, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_WEAPS"), 1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_BITSET0"), 262399, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_MASKS"), 2, true) 
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_ACCESSPOINTS"), 2047)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CAS_HEIST_FLOW"), -1610744257, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_POI"), 1023, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_BODYARMORLVL"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3_COMPLETEDPOSIX"), -1, true)
end
function uFunctions.casinoHeistBigCon()
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_APPROACH"), 2, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3_LAST_APPROACH"), 3, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_TARGET"), 3, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_BITSET1"), 799, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_DISRUPTSHIP"), 3, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_KEYLEVELS"), 2, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_CREWWEAP"), 4, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_CREWDRIVER"), 5, true) 
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_CREWHACKER"), 5, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_VEHS"), 2, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_WEAPS"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_BITSET0"), 913623, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_MASKS"), 2, true) 
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_ACCESSPOINTS"), 2047)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CAS_HEIST_FLOW"), -1610744257, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_POI"), 1023, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_BODYARMORLVL"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3_COMPLETEDPOSIX"), -1, true)
end
function uFunctions.casinoHeistAggressive()
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_APPROACH"), 3, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3_LAST_APPROACH"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_TARGET"), 3, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_BITSET1"), 799, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_DISRUPTSHIP"), 3, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_KEYLEVELS"), 2, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_CREWWEAP"), 4, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_CREWDRIVER"), 5, true) 
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_CREWHACKER"), 5, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_VEHS"), 2, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_WEAPS"), 1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_BITSET0"), 3670102, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_MASKS"), 2, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_ACCESSPOINTS"), 2047, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CAS_HEIST_FLOW"), -1610744257, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_POI"), 1023, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3OPT_BODYARMORLVL"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3_COMPLETEDPOSIX"), -1, true)
end
function uFunctions.cayoPericoPantherHard()
    stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4CNF_BS_GEN"), 131071, true) 
    stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4CNF_BS_ENTR"), 63, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4CNF_BS_ABIL"), 63, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4CNF_WEAPONS"), 5, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4CNF_WEP_DISRP"), 3, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4CNF_ARM_DISRP"), 3, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4CNF_HEL_DISRP"), 3, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4CNF_TARGET"), 5, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4CNF_TROJAN"), 2, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4CNF_APPROACH"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4LOOT_CASH_I"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4LOOT_CASH_C"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4LOOT_WEED_I"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4LOOT_WEED_C"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4LOOT_COKE_I"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4LOOT_COKE_C"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4LOOT_CASH_I"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4LOOT_GOLD_I"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4LOOT_GOLD_C"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4LOOT_PAINT"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4_PROGRESS"), 131055, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4LOOT_CASH_I_SCOPED"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4LOOT_CASH_C_SCOPED"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4LOOT_WEED_I_SCOPED"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4LOOT_WEED_C_SCOPED"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4LOOT_COKE_I_SCOPED"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4LOOT_COKE_C_SCOPED"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4LOOT_GOLD_I_SCOPED"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4LOOT_GOLD_C_SCOPED"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4LOOT_PAINT_SCOPED"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4_MISSIONS"), 65535, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() ..  "H4_PLAYTHROUGH_STATUS"), 32, true) 
end
function uFunctions.resetCayoPerico()
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H4_MISSIONS"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H4_PROGRESS"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H4_PLAYTHROUGH_STATUS"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H4CNF_APPROACH"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H4CNF_BS_ENTR"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H4CNF_BS_GEN"), 0, true)
end

function uFunctions.daxCooldown()
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "XM22JUGGALOWORKCDTIMER"), -1, true)
end
function uFunctions.chickenCooldown()
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "SALV23_CFR_COOLDOWN"), -1, true)
end
function uFunctions.salvageYardRobberyCooldown()
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "SALV23_VEHROB_CD"), -1, true)
end

function uFunctions.nightClubLoopFunc()
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CLUB_POPULARITY"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CLUB_PAY_TIME_LEFT"), -1, true)
end

function uFunctions.weaponLiveryChristmas23()
    for index = 42068, 42069, 42122 do
        script.set_global_i(262145 + index, 1)
    end
    stats.stat_set_int(-7648559, 5, true)
end

function uFunctions.setFavoriteBikeMC()
    local input_stat, input_val = input.get("Enter int32 of desired vehicle", "", 10, 3)
    if input_stat == 1 then
        return HANDLER_CONTINUE
    end
    if input_stat == 2 then
        return HANDLER_POP
    end
    menu.notify("Might require a double click")
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FAVOUTFITBIKETIMECURRENT"), input_val, true) 
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FAVOUTFITBIKETIME1ALLTIME"), input_val, true) 
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FAVOUTFITBIKETYPECURRENT"), input_val, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FAVOUTFITBIKETYPEALLTIME"), input_val, true)
end

function uFunctions.unlockArmoredParagon()
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "VCM_FLOW_PROGRESS"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "VCM_STORY_PROGRESS"), -1, true)

    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "VCM_FLOW_CS_RSC_SEEN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "VCM_FLOW_CS_BWL_SEEN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "VCM_FLOW_CS_MTG_SEEN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "VCM_FLOW_CS_OIL_SEEN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "VCM_FLOW_CS_DEF_SEEN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "VCM_FLOW_CS_FIN_SEEN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CAS_VEHICLE_REWARD"), false, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CASINOPSTAT_BOOL0"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CASINOPSTAT_BOOL1"), true, true)
end

function uFunctions.setCreationDate()
    local input_stat, input_val = input.get("Example input: 2011,09,12 (year/month/day)", "", 10, 0)
    if input_stat == 1 then
        return HANDLER_CONTINUE
    end
    if input_stat == 2 then
        return HANDLER_POP
    end
    menu.notify("Might require a double click")
    native.call(0x2C29BFB64F4FCBE4, gameplay.get_hash_key(mpx2() .. "CHAR_DATE_CREATED"), native.ByteBuffer64(input_val) , true)
end

function uFunctions.setPlayTime()
    local input_stat, input_val = input.get("Example input: 50400000000 (14,000hrs)", "", 10, 0)
    if input_stat == 1 then
        return HANDLER_CONTINUE
    end
    if input_stat == 2 then
        return HANDLER_POP
    end
    menu.notify("Might require a double click")
    stats.stat_set_i64(gameplay.get_hash_key(mpx2() .. "TOTAL_PLAYING_TIME"), input_val, true)
end

function uFunctions.skipYachtMissions()
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "YACHT_MISSION_PROG"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "YACHT_MISSION_FLOW"), 21845, true)
end

function uFunctions.skipBennyMissions()
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "LOWRIDER_FLOW_COMPLETE"), 3, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "LOW_FLOW_CURRENT_PROG"), 8, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "LOW_FLOW_CURRENT_CALL"), 8, true)
    helpers.iconNotification("CHAR_CARSITE3", "Find a new session!")
end

function uFunctions.triggerAlienBunker()
     local complete = gameplay.get_hash_key(mpx2() .. "LFETIME_BIKER_BUY_COMPLET5")
     local undertake = gameplay.get_hash_key(mpx2() .. "LFETIME_BIKER_BUY_UNDERTA5")

     if not (stats.stat_get_int(complete, -1) >= 600) then
         stats.stat_set_int(complete, 600, true)
         menu.notify("Launch a Steal Supplies mission between the in-game hours of 21:00 (9:00pm) - 23:00 (11:00pm)")
     else
        menu.notify("You already meet the requirements!\nLaunch a Steal Supplies mission between the in-game hours of 21:00 (9:00pm) - 23:00 (11:00pm)")
     end

     if not (stats.stat_get_int(undertake, -1) >= 600) then
        stats.stat_set_int(undertake, 600, true)
        menu.notify("Launch a Steal Supplies mission between the in-game hours of 21:00 (9:00pm) - 23:00 (11:00pm)")
    else
        menu.notify("You already meet the requirements!\nLaunch a Steal Supplies mission between the in-game hours of 21:00 (9:00pm) - 23:00 (11:00pm)")
    end
end

function uFunctions.enablePodiumMcTonyRob()
    script.set_global_i(262145 + 34080 + 1, 3) -- The Podium Robbery | slot 1
    script.set_global_i(262145 + 34080 + 2, 4) -- The McTony Robbery | slot 2
end

function uFunctions.customInteger()
    local val1 = helpers.getInput("Example input: KILLS_COP", "", 10, 0)
    local val2 = helpers.getInput("Any integer value", "", 10, 0)
    local stat = gameplay.get_hash_key(mpx2() .. val1)

    stats.stat_set_int(stat, val2, true)
end

function uFunctions.customBoolean()
    local val1 = helpers.getInput("Example input: WAREHOUSEVISITED", "", 10, 0)
    local val2 = helpers.getInput("TRUE or FALSE", "", 10, 0)
    local stat = gameplay.get_hash_key(mpx2() .. val1)

    stats.stat_set_bool(stat, val2, true)
end

function uFunctions.schizoLog()
    local random = math.random(5000, 10000) 
    system.yield(random)

    ui.notify_above_map("~b~penis left.", "", 40)
    -- clear the feed
end

function uFunctions.skipSalvageMissions()
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "SALV23_SCOPE_BS"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "SALV23_FM_PROG"), -1, true)
end

function uFunctions.unlockContacts()
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."FM_ACT_PHN"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."FM_ACT_PH2"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."FM_ACT_PH3"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."FM_ACT_PH4"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."FM_ACT_PH5"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."FM_VEH_TX1"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."FM_ACT_PH6"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."FM_ACT_PH7"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."FM_ACT_PH8"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."FM_ACT_PH9"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."FM_ACT_PH10"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."FM_CUT_DONE"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."FM_CUT_DONE_2"), -1, true)
end

function uFunctions.unlockArcadeTrophies()
    stats.stat_set_bool(gameplay.get_hash_key(mpx2().."AWD_KINGOFQUB3D"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2().."AWD_QUBISM"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2().."AWD_QUIBITS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2().."AWD_GODOFQUB3D"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2().."AWD_GOFOR11TH"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2().."AWD_ELEVENELEVEN"), true, true)
end

function uFunctions.completeFlightSchool()
    stats.stat_set_bool(gameplay.get_hash_key(mpx2().."PILOT_ASPASSEDLESSON_0"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2().."PILOT_ASPASSEDLESSON_1"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2().."PILOT_ASPASSEDLESSON_2"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2().."PILOT_ASPASSEDLESSON_3"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2().."PILOT_ASPASSEDLESSON_4"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2().."PILOT_ASPASSEDLESSON_5"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2().."PILOT_ASPASSEDLESSON_6"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2().."PILOT_ASPASSEDLESSON_7"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2().."PILOT_ASPASSEDLESSON_8"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2().."PILOT_ASPASSEDLESSON_9"), true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."PILOT_SCHOOL_MEDAL_0"), 1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."PILOT_SCHOOL_MEDAL_1"), 1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."PILOT_SCHOOL_MEDAL_2"), 1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."PILOT_SCHOOL_MEDAL_3"), 1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."PILOT_SCHOOL_MEDAL_4"), 1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."PILOT_SCHOOL_MEDAL_5"), 1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."PILOT_SCHOOL_MEDAL_6"), 1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."PILOT_SCHOOL_MEDAL_7"), 1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."PILOT_SCHOOL_MEDAL_8"), 1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2().."PILOT_SCHOOL_MEDAL_9"), 1, true)
end

function uFunctions.intStatInput(stat, perchar)
    local value = helpers.getInput("Integer value", "", 10, 0)

    if not (perchar) then
        stats.stat_set_int(gameplay.get_hash_key(stat), value, value)
    else
        stats.stat_set_int(gameplay.get_hash_key(mpx2()..stat), value, value)
    end
end

function uFunctions.floatStatInput(stat, perchar)
    local value = helpers.getInput("Float value", "", 10, 0)

    if not (perchar) then
        stats.stat_set_float(gameplay.get_hash_key(stat), value, value)
    else
        stats.stat_set_float(gameplay.get_hash_key(mpx2()..stat), value, value)
    end
end

function uFunctions.u64StatInput(stat, perchar)
    local value = helpers.getInput("Integer value", "", 10, 0)

    if not (perchar) then
        stats.stat_set_u64(gameplay.get_hash_key(stat), value, value)
    else
        stats.stat_set_u64(gameplay.get_hash_key(mpx2()..stat), value, value)
    end 
end

function uFunctions.dateStatInput(stat, perchar)
    local value = helpers.getInput("Example input: 2011,09,12", "", 10, 0)

    if not (perchar) then
        native.call(0x2C29BFB64F4FCBE4, gameplay.get_hash_key(stat), native.ByteBuffer64(value) , true)
    else
        native.call(0x2C29BFB64F4FCBE4, gameplay.get_hash_key(mpx2() .. stat), native.ByteBuffer64(value) , true)
    end
end

function uFunctions.maxFleecaNormal()
    script.set_global_i(1928235, 7453)
    script.set_global_i(1928236, 7453)
    script.set_global_i(1928237, -14806)
    menu.notify("Please hit enter on any player's cut, then hit ESC to force the change. DO NOT ADJUST CUT.", "Apex", 7, 0xFF00FFFF)
    system.wait()
end

function uFunctions.maxFleecaHard()
    script.set_global_i(1928235, 5962)
    script.set_global_i(1928236, 5962)
    script.set_global_i(1928237, -11824)
    menu.notify("Please hit enter on any player's cut, then hit ESC to force the change. DO NOT ADJUST CUT.", "Apex", 7, 0xFF00FFFF)
end

function uFunctions.maxPrisonNormal()
    script.set_global_i(1928235, -8468)
    script.set_global_i(1928236, 2142)
    script.set_global_i(1928237, 2142)
    script.set_global_i(1928238, 2142)
    system.wait()
    menu.notify("Please hit enter on any player's cut, then hit ESC to force the change. DO NOT ADJUST CUT.", "Apex", 7, 0xFF00FFFF)
end

function uFunctions.maxPrisonHard()
    script.set_global_i(1928235, -6756)
    script.set_global_i(1928236, 1714)
    script.set_global_i(1928237, 1714)
    script.set_global_i(1928238, 1714)
    system.wait()
    menu.notify("Please hit enter on any player's cut, then hit ESC to force the change. DO NOT ADJUST CUT.", "Apex", 7, 0xFF00FFFF)
end

function uFunctions.maxHumaneNormal()
    script.set_global_i(1928235, -6248)
    script.set_global_i(1928236, 1587)
    script.set_global_i(1928237, 1587)
    script.set_global_i(1928238, 1587)
    system.wait()
    menu.notify("Please hit enter on any player's cut, then hit ESC to force the change. DO NOT ADJUST CUT.", "Apex", 7, 0xFF00FFFF)
end

function uFunctions.maxHumaneHard()
    script.set_global_i(1928235, -4976)
    script.set_global_i(1928236, 1269)
    script.set_global_i(1928237, 1269)
    script.set_global_i(1928238, 1269)
    system.wait()
    menu.notify("Please hit enter on any player's cut, then hit ESC to force the change. DO NOT ADJUST CUT.", "Apex", 7, 0xFF00FFFF)
end

function uFunctions.maxSAFNormal()
    script.set_global_i(1928235, -8384)
    script.set_global_i(1928236, 2121)
    script.set_global_i(1928237, 2121)
    script.set_global_i(1928238, 2121)
    system.wait()
    menu.notify("Please hit enter on any player's cut, then hit ESC to force the change. DO NOT ADJUST CUT.", "Apex", 7, 0xFF00FFFF)
end

function uFunctions.maxSAFHard()
    script.set_global_i(1928235, -6688)
    script.set_global_i(1928236, 1697)
    script.set_global_i(1928237, 1697)
    script.set_global_i(1928238, 1697)
    system.wait()
    menu.notify("Please hit enter on any player's cut, then hit ESC to force the change. DO NOT ADJUST CUT.", "Apex", 7, 0xFF00FFFF)
end

function uFunctions.maxPacificNormal()
    script.set_global_i(1928235, -3900)
    script.set_global_i(1928236, 1000)
    script.set_global_i(1928237, 1000)
    script.set_global_i(1928238, 1000)
    system.wait()
    menu.notify("Please hit enter on any player's cut, then hit ESC to force the change. DO NOT ADJUST CUT.", "Apex", 7, 0xFF00FFFF)
end

function uFunctions.maxPacificHard()
    script.set_global_i(1928235, -3096)
    script.set_global_i(1928236, 799)
    script.set_global_i(1928237, 799)
    script.set_global_i(1928238, 799)
    system.wait()
    menu.notify("Please hit enter on any player's cut, then hit ESC to force the change. DO NOT ADJUST CUT.", "Apex", 7, 0xFF00FFFF)
end

function uFunctions.getFMHost()
    menu.notify("Getting Script Host...", "Apex", 3, 0xFF00FFFF)
    if player.is_player_valid(player.player_id()) then
        native.call(0x6EB5F71AA68F2E8E, "freemode")
        native.call(0x741A3D8380319A81)
        system.wait(2000)
    else
        return menu.notify("Failed to get script host, please try again.", "Apex", 3, 0xFF00FFFF)
    end
end

function uFunctions.instantFinish2020()
    uFunctions.getFMHost()
    script.set_local_i(gameplay.get_hash_key("fm_mission_controller_2020"), 48513 , 9)
    script.set_local_i(gameplay.get_hash_key("fm_mission_controller_2020"), 48513 + 1765 + 1, 1337)
    system.wait(2000)
    script.set_local_i(gameplay.get_hash_key("fm_mission_controller_2020"), 48513 , 6)
end 

function uFunctions.instantFinishH3()
    uFunctions.getFMHost()
    for i = 0, 3, 1 do
        script.set_local_i(gameplay.get_hash_key("fm_mission_controller"), 19728 + 2686, 10000000) --pay me bitch im warning you
        script.set_local_i(gameplay.get_hash_key("fm_mission_controller"), 31603 + i * 292 + 86, 10000) --headshots not just kills
        script.set_local_i(gameplay.get_hash_key("fm_mission_controller"), 31603 + i * 292 + 91, 10000) -- kill counts
        script.set_local_i(gameplay.get_hash_key("fm_mission_controller"), 31603 + i * 292 + 69, 1337)
    end
    system.wait(1000)
    script.set_local_i(gameplay.get_hash_key("fm_mission_controller"), 27489 + 859, 99999)
end

function uFunctions.instantFinishH2()
    uFunctions.getFMHost()
    for i = 0, 1, 1 do
        script.set_local_i(gameplay.get_hash_key("fm_mission_controller"), 31603 + i * 292 + 86, 10000) --headshots not just kills
        script.set_local_i(gameplay.get_hash_key("fm_mission_controller"), 31603 + i * 292 + 91, 10000) -- kill counts
        script.set_local_i(gameplay.get_hash_key("fm_mission_controller"), 31603 + i * 292 + 69, 1337)
    end
    script.set_local_i(gameplay.get_hash_key("fm_mission_controller"), 19728, 12) --finish
    system.wait()
end

function uFunctions.instantFinishApt()
    uFunctions.getFMHost()
    script.set_local_i(gameplay.get_hash_key("fm_mission_controller"), 19728 + 2686, 1875000)
    for i = 0, 3, 1 do
        script.set_local_i(gameplay.get_hash_key("fm_mission_controller"), 31603 + i * 292 + 86, 10000)
        script.set_local_i(gameplay.get_hash_key("fm_mission_controller"), 31603 + i * 292 + 91, 10000)
        system.wait()
        script.set_local_i(gameplay.get_hash_key("fm_mission_controller"), 31603 + i * 292 + 69, 1337)
    end
    system.wait(2000)
    script.set_local_i(gameplay.get_hash_key("fm_mission_controller"), 19728, 12)
end


return uFunctions