local statSub = menu.add_feature("Stats Manager", "parent", apexStuff["root"].id)

local carreerStats = menu.add_feature("Carreer", "parent", statSub.id)
local generalStats = menu.add_feature("General", "parent", statSub.id)
local crimeStats = menu.add_feature("Crimes", "parent", statSub.id)
local vehicleStats = menu.add_feature("Vehicles", "parent", statSub.id)
local cashStats = menu.add_feature("Cash", "parent", statSub.id)
local combatStats = menu.add_feature("Combat", "parent", statSub.id)
local weaponStats = menu.add_feature("Weapons", "parent", statSub.id)

local miscStats = menu.add_feature("Miscellaneous Stats", "parent", statSub.id)
local reportStats = menu.add_feature("Reports", "parent", miscStats.id)
local competitiveStats = menu.add_feature("Competitive", "parent", miscStats.id)
local theContractDLC = menu.add_feature("The Contract", "parent", miscStats.id)
local importExportDLC = menu.add_feature("Import / Export", "parent", miscStats.id)
local faffDLC = menu.add_feature("Finance and Felony", "parent", miscStats.id)


--                   !! Carreer !! 
menu.add_feature("Overall Income", "action", carreerStats.id, function()
    apexStuff["functions"].intStatInput("MPPLY_TOTAL_EVC", false)
end)
menu.add_feature("Overall Expenses", "action", carreerStats.id, function()
    apexStuff["functions"].intStatInput("MPPLY_TOTAL_SVC", false)
end)
menu.add_feature("Total players killed", "action", carreerStats.id, function() 
    apexStuff["functions"].intStatInput("MPPLY_KILLS_PLAYERS", false)
end)
menu.add_feature("Total deaths by players", "action", carreerStats.id, function() 
    apexStuff["functions"].intStatInput("MPPLY_DEATHS_PLAYER", false)
end)
menu.add_feature("Distance traveled", "action", carreerStats.id, function() 
    apexStuff["functions"].floatStatInput("MPPLY_CHAR_DIST_TRAVELLED", false)
end)
menu.add_feature("Favorite radio staton", "action", carreerStats.id, function()
    apexStuff["functions"].intStatInput("MPPLY_MOST_FAVORITE_STATION", false)
end)
menu.add_feature("Time spent in GTA Online", "action", carreerStats.id, function() 
    menu.notify("Time is in milliseconds!", "Apex", 6, colors.red)
    apexStuff["functions"].u64StatInput("LEADERBOARD_PLAYING_TIME", true)
end)
menu.add_feature("Time spent in first person", "action", carreerStats.id, function() 
    menu.notify("Time is in milliseconds!", "Apex", 6, colors.red)
    apexStuff["functions"].intStatInput("MP_FIRST_PERSON_CAM_TIME", true)
end)
menu.add_feature("Time spent in Deathmatches", "action", carreerStats.id, function() 
    menu.notify("Time is in milliseconds!", "Apex", 6, colors.red)
    apexStuff["functions"].u64StatInput("MPPLY_TOTAL_TIME_SPENT_DEATHMAT", false)
end)
menu.add_feature("Time spent in Races", "action", carreerStats.id, function() 
    menu.notify("Time is in milliseconds!", "Apex", 6, colors.red)
    apexStuff["functions"].u64StatInput("MPPLY_TOTAL_TIME_SPENT_RACES", false)
end)
menu.add_feature("Time spent in Creator", "action", carreerStats.id, function() 
    menu.notify("Time is in milliseconds!", "Apex", 6, colors.red)
    apexStuff["functions"].u64StatInput("MPPLY_TOTAL_TIME_MISSION_CREATO", false)
end)
menu.add_feature("Deathmatches published", "action", carreerStats.id, function() 
    apexStuff["functions"].intStatInput("MPPLY_AWD_FM_CR_DM_MADE", false)
end)
menu.add_feature("Races published", "action", carreerStats.id, function() 
    apexStuff["functions"].intStatInput("MPPLY_AWD_FM_CR_RACES_MADE", false)
end)
menu.add_feature("Captures published", "action", carreerStats.id, function() 
    apexStuff["functions"].intStatInput("MPPLY_NUM_CAPTURES_CREATED", false)
end)
menu.add_feature("Last Team Standings published", "action", carreerStats.id, function() 
    apexStuff["functions"].intStatInput("MPPLY_LTS_CREATED", false)
end)
menu.add_feature("Community plays of your published content", "action", carreerStats.id, function() 
    apexStuff["functions"].intStatInput("MPPLY_AWD_FM_CR_PLAYED_BY_PEEP", false)
end)
menu.add_feature("Thumbs up for your published content", "action", carreerStats.id, function() 
    apexStuff["functions"].intStatInput("MPPLY_FM_MISSION_LIKES", false)
end)

--                   !! General  !! 
menu.add_feature("Time played as character", "action", generalStats.id, function() 
    apexStuff["functions"].u64StatInput("TOTAL_PLAYING_TIME", true)
end)
menu.add_feature("Character created", "action", generalStats.id, function() 
    apexStuff["functions"].dateStatInput("CHAR_DATE_CREATED", true)
end)
menu.add_feature("Last ranked up", "action", generalStats.id, function() 
    apexStuff["functions"].dateStatInput("CHAR_DATE_RANKUP", true)
end)
menu.add_feature("Longest single game session", "action", generalStats.id, function() 
    apexStuff["functions"].u64StatInput("LONGEST_PLAYING_TIME", true)
end)
menu.add_feature("Average time per session", "action", generalStats.id, function() 
    apexStuff["functions"].u64StatInput("AVERAGE_TIME_PER_SESSON", true)
end)
menu.add_feature("Total deaths", "action", generalStats.id, function() 
    apexStuff["functions"].intStatInput("DEATHS", true)
end)
menu.add_feature("Deaths by explosion", "action", generalStats.id, function() 
    apexStuff["functions"].intStatInput("DIED_IN_EXPLOSION", true)
end)
menu.add_feature("Deaths by falling", "action", generalStats.id, function() 
    apexStuff["functions"].intStatInput("DIED_IN_FALL", true)
end)
menu.add_feature("Deaths by fire", "action", generalStats.id, function() 
    apexStuff["functions"].intStatInput("DIED_IN_FIRE", true)
end)
menu.add_feature("Deaths by traffic", "action", generalStats.id, function() 
    apexStuff["functions"].intStatInput("DIED_IN_ROAD", true)
end)
menu.add_feature("Deaths by drowning", "action", generalStats.id, function() 
    apexStuff["functions"].intStatInput("DIED_IN_DROWNING", true)
end)
menu.add_feature("Time swimming", "action", generalStats.id, function() 
    apexStuff["functions"].u64StatInput("TIME_SWIMMING", true)
end)
menu.add_feature("Distance traveled swimming", "action", generalStats.id, function() 
    apexStuff["functions"].floatStatInput("DIST_SWIMMING", true)
end)
menu.add_feature("Time underwater", "action", generalStats.id, function() 
    apexStuff["functions"].u64StatInput("TIME_UNDERWATER", true)
end)
menu.add_feature("Time walking", "action", generalStats.id, function() 
    apexStuff["functions"].u64StatInput("TIME_WALKING", true)
end)
menu.add_feature("Distance traveled walking", "action", generalStats.id, function() 
    apexStuff["functions"].floatStatInput("DIST_SWIMMING", true)
end)
menu.add_feature("Distance traveled running", "action", generalStats.id, function() 
    apexStuff["functions"].floatStatInput("DIST_RUNNING", true)
end)
menu.add_feature("Farthest free-fall survived", "action", generalStats.id, function() 
    apexStuff["functions"].floatStatInput("LONGEST_SURVIVED_FREEFALL", true)
end)
menu.add_feature("Time in cover", "action", generalStats.id, function() 
    apexStuff["functions"].u64StatInput("TIME_IN_COVER", true)
end)
menu.add_feature("Photos taken", "action", generalStats.id, function() 
    apexStuff["functions"].intStatInput("NO_PHOTOS_TAKEN", true)
end)
menu.add_feature("Private dances", "action", generalStats.id, function() 
    apexStuff["functions"].intStatInput("LAP_DANCED_BOUGHT", true)
end)
menu.add_feature("Sex acts purchased", "action", generalStats.id, function() 
    apexStuff["functions"].intStatInput("PROSTITUTES_FREQUENTED", true)
end)
menu.add_feature("Bounties placed on others", "action", generalStats.id, function() 
    apexStuff["functions"].intStatInput("BOUNTSONU", true)
end)
menu.add_feature("Bounties placed on you", "action", generalStats.id, function() 
    apexStuff["functions"].intStatInput("BOUNTPLACED", true)
end)
menu.add_feature("Highest Survival wave reached", "action", generalStats.id, function() 
    apexStuff["functions"].intStatInput("HORDELVL", true)
end)
menu.add_feature("MC Contribution", "action", generalStats.id, function() 
    apexStuff["functions"].intStatInput("MC_CONTRIBUTION_POINTS", false)
end)

--                   !! Crimes !! 
menu.add_feature("Cops killed", "action", crimeStats.id, function() 
    apexStuff["functions"].intStatInput("KILLS_COP", true)
end)
menu.add_feature("NOOSE killed", "action", crimeStats.id, function() 
    apexStuff["functions"].intStatInput("KILLS_SWAT", true)
end)
menu.add_feature("Times wanted", "action", crimeStats.id, function() 
    apexStuff["functions"].intStatInput("NO_TIMES_WANTED_LEVEL", true)
end)
menu.add_feature("Wanted stars attained", "action", crimeStats.id, function() 
    apexStuff["functions"].intStatInput("STARS_ATTAINED", true)
end)
menu.add_feature("Wanted stars evaded", "action", crimeStats.id, function() 
    apexStuff["functions"].intStatInput("STARS_EVADED", true)
end)
menu.add_feature("Time spent with a Wanted Level", "action", crimeStats.id, function() 
    apexStuff["functions"].u64StatInput("CHAR_WANTED_LEVEL_TIME", true)
end)
menu.add_feature("Last Wanted Level duration", "action", crimeStats.id, function() 
    apexStuff["functions"].u64StatInput("TIME_LAST_WANTED_LEVEL", true)
end)
menu.add_feature("Longest Wanted Level duration", "action", crimeStats.id, function() 
    apexStuff["functions"].floatStatInput("LONGEST_CHASE_TIME", true)
end)
menu.add_feature("Time spent with a 5 star Wanted Level", "action", crimeStats.id, function() 
    apexStuff["functions"].u64StatInput("CHAR_WANTED_LEVEL_TIME5STAR", true)
end)
menu.add_feature("Drive-by kills as driver", "action", crimeStats.id, function() 
    apexStuff["functions"].intStatInput("DB_KILLS", true)
end)
menu.add_feature("Drive-by kills as passenger", "action", crimeStats.id, function() 
    apexStuff["functions"].intStatInput("PASS_DB_KILLS ", true)
end)
menu.add_feature("Tires shot out", "action", crimeStats.id, function() 
    apexStuff["functions"].intStatInput("TIRES_POPPED_BY_GUNSHOT", true)
end)
menu.add_feature("Vehicular kills", "action", crimeStats.id, function() 
    apexStuff["functions"].intStatInput("HIGHEST_SKITTLES", true)
end)
menu.add_feature("Cars stolen", "action", crimeStats.id, function() 
    apexStuff["functions"].intStatInput("NUMBER_STOLEN_CARS", true)
end)
menu.add_feature("Motorcycles stolen", "action", crimeStats.id, function() 
    apexStuff["functions"].intStatInput("NUMBER_STOLEN_BIKES", true)
end)
menu.add_feature("Helicopters stolen", "action", crimeStats.id, function() 
    apexStuff["functions"].intStatInput("NUMBER_STOLEN_HELIS", true)
end)
menu.add_feature("Planes stolen", "action", crimeStats.id, function() 
    apexStuff["functions"].intStatInput("NUMBER_STOLEN_PLANES", true)
end)
menu.add_feature("Boats stolen", "action", crimeStats.id, function() 
    apexStuff["functions"].intStatInput("NUMBER_STOLEN_BOATS", true)
end)
menu.add_feature("ATVs stolen", "action", crimeStats.id, function() 
    apexStuff["functions"].intStatInput("NUMBER_STOLEN_QUADBIKES", true)
end)
menu.add_feature("Bicycles stolen", "action", crimeStats.id, function() 
    apexStuff["functions"].intStatInput("NUMBER_STOLEN_BICYCLES", true)
end)
menu.add_feature("Cop vehicles stolen", "action", crimeStats.id, function() 
    apexStuff["functions"].intStatInput("NUMBER_STOLEN_COP_VEHICLE", true)
end)
menu.add_feature("Store Hold Ups", "action", crimeStats.id, function() 
    apexStuff["functions"].intStatInput("TOTAL_NO_SHOPS_HELD_UP", true)
end)

--                   !! Vehicle !! 
menu.add_feature("Favorite Bike", "action", vehicleStats.id, function() 
    apexStuff["functions"].setFavoriteBikeMC()
end)
menu.add_feature("Highest Hydraulic Jump", "action", vehicleStats.id, function() 
    apexStuff["functions"].floatStatInput("LOW_HYDRAULIC_JUMP", true)
end)
menu.add_feature("Time driving cars", "action", vehicleStats.id, function() 
    apexStuff["functions"].u64StatInput("TIME_DRIVING_CAR", true)
end)
menu.add_feature("Distance traveled in cars", "action", vehicleStats.id, function() 
    apexStuff["functions"].floatStatInput("DIST_DRIVING_CAR", true)
end)
menu.add_feature("Time riding motorcycles", "action", vehicleStats.id, function() 
    apexStuff["functions"].u64StatInput("TIME_DRIVING_BIKE", true)
end)
menu.add_feature("Distance traveled on motorcycles", "action", vehicleStats.id, function() 
    apexStuff["functions"].floatStatInput("DIST_DRIVING_BIKE", true)
end)
menu.add_feature("Time flying helicopters", "action", vehicleStats.id, function() 
    apexStuff["functions"].u64StatInput("TIME_DRIVING_HELI", true)
end)
menu.add_feature("Distance traveled in helicopters", "action", vehicleStats.id, function() 
    apexStuff["functions"].floatStatInput("DIST_DRIVING_HELI", true)
end)
menu.add_feature("Time flying planes", "action", vehicleStats.id, function() 
    apexStuff["functions"].u64StatInput("TIME_DRIVING_PLANE", true)
end)
menu.add_feature("Distance traveled in plane", "action", vehicleStats.id, function() 
    apexStuff["functions"].floatStatInput("DIST_DRIVING_PLANE", true)
end)
menu.add_feature("Time sailing boats", "action", vehicleStats.id, function() 
    apexStuff["functions"].u64StatInput("TIME_DRIVING_BOAT", true)
end)
menu.add_feature("Distance traveled boats", "action", vehicleStats.id, function() 
    apexStuff["functions"].floatStatInput("DIST_DRIVING_BOAT", true)
end)
menu.add_feature("Time riding ATVs", "action", vehicleStats.id, function() 
    apexStuff["functions"].u64StatInput("TIME_DRIVING_QUADBIKE", true)
end)
menu.add_feature("Distance traveled on ATVs", "action", vehicleStats.id, function() 
    apexStuff["functions"].floatStatInput("DIST_DRIVING_QUADBIKE", true)
end)
menu.add_feature("Time riding bicycles", "action", vehicleStats.id, function() 
    apexStuff["functions"].u64StatInput("TIME_DRIVING_BICYCLE", true)
end)
menu.add_feature("Distance traveled on bicycles", "action", vehicleStats.id, function() 
    apexStuff["functions"].floatStatInput("DIST_DRIVING_BICYCLE", true)
end)
menu.add_feature("Highest speed in a road vehicle", "action", vehicleStats.id, function() 
    menu.notify("KILOMETERS PER HOUR!!", "Apex", 4, 257818)
    apexStuff["functions"].floatStatInput("FASTEST_SPEED", true)
end)
menu.add_feature("Road vehicle driven fastest", "action", vehicleStats.id, function() 
    apexStuff["functions"].intStatInput("TOP_SPEED_CAR", true)
end)
menu.add_feature("Farthest stoppie", "action", vehicleStats.id, function() 
    apexStuff["functions"].floatStatInput("LONGEST_STOPPIE_DIST", true)
end)
menu.add_feature("Farthest wheelie", "action", vehicleStats.id, function() 
    apexStuff["functions"].floatStatInput("LONGEST_WHEELIE_DIST", true)
end)
menu.add_feature("Farthest driven without crashing", "action", vehicleStats.id, function() 
    apexStuff["functions"].floatStatInput("LONGEST_DRIVE_NOCRASH", true)
end)
menu.add_feature("Car crashes", "action", vehicleStats.id, function() 
    apexStuff["functions"].intStatInput("NUMBER_CRASHES_CARS", true)
end)
menu.add_feature("Motorcycle crashes", "action", vehicleStats.id, function() 
    apexStuff["functions"].intStatInput("NUMBER_CRASHES_BIKES", true)
end)
menu.add_feature("ATV crashes", "action", vehicleStats.id, function() 
    apexStuff["functions"].intStatInput("NUMBER_CRASHES_QUADBIKES", true)
end)
menu.add_feature("Bailed from a moving vehicle", "action", vehicleStats.id, function() 
    apexStuff["functions"].intStatInput("BAILED_FROM_VEHICLE", true)
end)
menu.add_feature("Farthest vehicle jump", "action", vehicleStats.id, function() 
    apexStuff["functions"].floatStatInput("FARTHEST_JUMP_DIST", true)
end)
menu.add_feature("Highest vehicle jump", "action", vehicleStats.id, function() 
    apexStuff["functions"].floatStatInput("HIGHEST_JUMP_REACHED", true)
end)
menu.add_feature("Most flips in one vehicle jump", "action", vehicleStats.id, function() 
    apexStuff["functions"].intStatInput("MOST_FLIPS_IN_ONE_JUMP", true)
end)
menu.add_feature("Most spins in one vehicle jump", "action", vehicleStats.id, function() 
    apexStuff["functions"].intStatInput("MOST_SPINS_IN_ONE_JUMP", true)
end)
menu.add_feature("Unique Stunt Jumps found", "action", vehicleStats.id, function() 
    apexStuff["functions"].intStatInput("USJS_FOUND", true)
end)
menu.add_feature("Unique Stunt Jumps completed", "action", vehicleStats.id, function() 
    apexStuff["functions"].intStatInput("USJS_COMPLETED ", true)
end)
menu.add_feature("Near misses", "action", vehicleStats.id, function() 
    apexStuff["functions"].intStatInput("NUMBER_NEAR_MISS", true)
end)
menu.add_feature("Cop cars blown up", "action", vehicleStats.id, function() 
    apexStuff["functions"].intStatInput("CARS_COPS_EXPLODED", true)
end)
menu.add_feature("Motorcycles blown up", "action", vehicleStats.id, function() 
    apexStuff["functions"].intStatInput("BIKES_EXPLODED", true)
end)
menu.add_feature("Helicopters blown up", "action", vehicleStats.id, function() 
    apexStuff["functions"].intStatInput("HELIS_EXPLODED", true)
end)
menu.add_feature("Planes blown up", "action", vehicleStats.id, function() 
    apexStuff["functions"].intStatInput("PLANES_EXPLODED", true)
end)
menu.add_feature("Boats blown up", "action", vehicleStats.id, function() 
    apexStuff["functions"].intStatInput("BOATS_EXPLODED", true)
end)
menu.add_feature("ATVs blown up", "action", vehicleStats.id, function() 
    apexStuff["functions"].intStatInput("QUADBIKE_EXPLODED", true)
end)
menu.add_feature("Vehicles repaired", "action", vehicleStats.id, function() 
    apexStuff["functions"].intStatInput("NO_CARS_REPAIR", true)
end)
menu.add_feature("Vehicles resprayed", "action", vehicleStats.id, function() 
    apexStuff["functions"].intStatInput("VEHICLES_SPRAYED", true)
end)
menu.add_feature("Cars exported", "action", vehicleStats.id, function() 
    apexStuff["functions"].intStatInput("VEHEXPORTED", true)
end)

--                   !! Cash !! 
menu.add_feature("Spent on weapons & armor", "action", cashStats.id, function() 
    apexStuff["functions"].intStatInput("MONEY_SPENT_WEAPON_ARMOR", true) 
end)
menu.add_feature("Spent on vehicles & maintenance", "action", cashStats.id, function() 
    apexStuff["functions"].intStatInput("MONEY_SPENT_VEH_MAINTENANCE", true)   
end)
menu.add_feature("Spent on style & entertainment", "action", cashStats.id, function() 
    apexStuff["functions"].intStatInput("MONEY_SPENT_STYLE_ENT", true)  
end)
menu.add_feature("Spent on property & utilities", "action", cashStats.id, function() 
    apexStuff["functions"].intStatInput("MONEY_SPENT_PROPERTY_UTIL", true)  
end)
menu.add_feature("Spent on Job & Activity entry fees", "action", cashStats.id, function() 
    apexStuff["functions"].intStatInput("MONEY_SPENT_JOB_ACTIVITY", true)  
end)
menu.add_feature("Spent on contact services", "action", cashStats.id, function() 
    apexStuff["functions"].intStatInput("MONEY_SPENT_CONTACT_SERVICE", true)  
end)
menu.add_feature("Spent on healthcare & bail", "action", cashStats.id, function() 
    apexStuff["functions"].intStatInput("MONEY_SPENT_HEALTHCARE", true)  
end)
menu.add_feature("Dropped or stolen", "action", cashStats.id, function() 
    apexStuff["functions"].intStatInput("MONEY_SPENT_DROPPED_STOLEN", true)  
end)
menu.add_feature("Given to others", "action", cashStats.id, function() 
    apexStuff["functions"].intStatInput("MONEY_SPENT_SHARED", true)  
end) 
menu.add_feature("Job cash shared with others", "action", cashStats.id, function() 
    apexStuff["functions"].intStatInput("MONEY_SPENT_JOBSHARED", true)  
end)
menu.add_feature("Earned from Jobs", "action", cashStats.id, function() 
    apexStuff["functions"].intStatInput("MONEY_EARN_JOBS", true)  
end) 
menu.add_feature("Earned from selling vehicles", "action", cashStats.id, function() 
    apexStuff["functions"].intStatInput("MONEY_EARN_SELLING_VEH", true)  
end)
menu.add_feature("Earned from betting", "action", cashStats.id, function() 
    apexStuff["functions"].intStatInput("MONEY_EARN_BETTING", true)   
end) 
menu.add_feature("Earned from Good Sport reward", "action", cashStats.id, function() 
    apexStuff["functions"].intStatInput("MONEY_EARN_GOOD_SPORT", true)  
end)
menu.add_feature("Picked up", "action", cashStats.id, function() 
    apexStuff["functions"].intStatInput("MONEY_EARN_PICKED_UP", true)   
end)
menu.add_feature("Received from others", "action", cashStats.id, function() 
    apexStuff["functions"].intStatInput("MONEY_EARN_SHARED", true)  
end)
menu.add_feature("Job cash shared by others", "action", cashStats.id, function() 
    apexStuff["functions"].intStatInput("MONEY_EARN_JOBSHARED", true)  
end)

--                   !! Combat !! 
menu.add_feature("Shots", "action", combatStats.id, function() 
    apexStuff["functions"].intStatInput("SHOTS", true)
end)
menu.add_feature("Hits", "action", combatStats.id, function() 
    apexStuff["functions"].intStatInput("HITS_PEDS_VEHICLES", true)
end)
menu.add_feature("Accuracy", "action", combatStats.id, function() 
    apexStuff["functions"].floatStatInput("WEAPON_ACCURACY", true)
end)
menu.add_feature("Kills", "action", combatStats.id, function() 
    apexStuff["functions"].intStatInput("KILLS", true)
end)
menu.add_feature("Headshot kills", "action", combatStats.id, function() 
    apexStuff["functions"].intStatInput("HEADSHOTS", true)
end)
menu.add_feature("Armed kills", "action", combatStats.id, function() 
    apexStuff["functions"].intStatInput("KILLS_ARMED", true)
end)
menu.add_feature("Free Aim kills", "action", combatStats.id, function() 
    apexStuff["functions"].intStatInput("KILLS_IN_FREE_AIM", true)
end)
menu.add_feature("Stealth kills", "action", combatStats.id, function() 
    apexStuff["functions"].intStatInput("KILLS_STEALTH", true)
end)
menu.add_feature("Counter attacks", "action", combatStats.id, function() 
    apexStuff["functions"].intStatInput("SUCCESSFUL_COUNTERS", true)
end)
menu.add_feature("Player kills", "action", combatStats.id, function() 
    apexStuff["functions"].intStatInput("KILLS_PLAYERS", true)
end)
menu.add_feature("Player headshot kills", "action", combatStats.id, function() 
    apexStuff["functions"].intStatInput("PLAYER_HEADSHOTS", true)
end)
menu.add_feature("Survival kills", "action", combatStats.id, function() 
    apexStuff["functions"].intStatInput("HORDKILLS", true)
end)
menu.add_feature("Gang Attack kills", "action", combatStats.id, function() 
    apexStuff["functions"].intStatInput("GHKILLS", true)
end)
menu.add_feature("Highest killstreak in Deathmatch", "action", combatStats.id, function() 
    apexStuff["functions"].intStatInput("DM_HIGHEST_KILLSTREAK", true)
end)
menu.add_feature("Archenemy", "action", combatStats.id, function() 
    menu.notify("Enter the RockstarID first, then the name of said player\ncorresponding with the RockstarID", "Apex", 5, 3578712200220)
    system.wait(200)
    apexStuff["functions"].intStatInput("ARCHENEMY", true)
    apexStuff["functions"].stringStatInput("ARCHENEMY_NAME", true)
end)
menu.add_feature("Times killed by Archenemy", "action", combatStats.id, function() 
    apexStuff["functions"].intStatInput("ARCHENEMY_KILLS", true)
end)
menu.add_feature("Victim", "action", combatStats.id, function() 
    menu.notify("Enter the RockstarID first, then the name of said player\ncorresponding with the RockstarID", "Apex", 5, 3578712200220)
    system.wait(200)
    apexStuff["functions"].intStatInput("BIGGEST_VICTIM", true)
    apexStuff["functions"].stringStatInput("BIGGEST_VICTIM_NAME", true)
end)
menu.add_feature("Victim kills", "action", combatStats.id, function() 
    apexStuff["functions"].intStatInput("BIGGEST_VICTIM_KILLS", true)
end)

--                   !! WEAPON STATS  !! 
-- LOSTTT
local function getCharSlot()
    return stats.stat_get_int(gameplay.get_hash_key("MPPLY_LAST_MP_CHAR"), 1)
end

for category, weaponTable in pairs(apexStuff["tables"].weaponList) do
    local parent = menu.add_feature(category, "parent", weaponStats.id)

    for i = 1, #weaponTable do
        local categoryName = category
        local weaponName = weaponTable[i].name
        local primaryStatName = weaponTable[i].statName

        apexStuff["tables"].weaponListTypes["Kills with"] = function(character) return gameplay.get_hash_key("MP" .. character .. "_" .. primaryStatName .. "_KILLS") end
        apexStuff["tables"].weaponListTypes["Deaths by"] = function(character) return gameplay.get_hash_key("MP" .. character .. "_" .. primaryStatName .. "_DEATHS") end
        apexStuff["tables"].weaponListTypes["Headshots with"] = function(character) return gameplay.get_hash_key("MP" .. character .. "_" .. primaryStatName .. "_HEADSHOTS") end
        apexStuff["tables"].weaponListTypes["Shots with"] = function(character) return gameplay.get_hash_key("MP" .. character .. "_" .. primaryStatName .. "_SHOTS") end
        apexStuff["tables"].weaponListTypes["Hits with"] = function(character) return gameplay.get_hash_key("MP" .. character .. "_" .. primaryStatName .. "_HITS") end

        local specificParent = menu.add_feature(weaponName, "parent", parent.id)

        for statName, statHash in pairs(apexStuff["tables"].weaponListTypes) do
            if (statName == "Shots with" or statName == "Hits with" or statName == "Headshots with" ) and (categoryName == "Melee" or categoryName == "Throwables" or categoryName == "Heavy") then
                goto continue
            end
            
            --[[if weaponName == "Antique Cavalry Dagger" then
                weaponName = "Antique Dagger"
            end--]]

            --print(statHash, statName, weaponName)
            
            local feat = menu.add_feature(statName .. " ", "action_value_i", specificParent.id, function(f)
                stats.stat_set_int(statHash(getCharSlot()), f.value, true)
            end)
            feat.max = 1000000
            feat.min = 0
            feat.mod = 50

            if statName == "Kills with" then
                feat.value = stats.stat_get_int(statHash(getCharSlot()), -1)
            else
                feat.value = stats.stat_get_int(statHash(getCharSlot()), 0)
            end
        
            ::continue::
        end
    end
end

-- FAVORITE_WEAPON_HELDTIME
--menu.add_feature("Least favorite radio station", "action", miscStats.id, function() 

--end)


--                   !! Misc Stats !! 
--[[for i, v in pairs(apexStuff["tables"].agencyContracts2) do
    local contractss = menu.add_feature(v.name, "action_value_i", theContractDLC.id, function(f)
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).. v.stat), f.value, true)
    end)
    contractss.min = 0
    contractss.max = 1000000
    contractss.mod = 100
    contractss.value = stats.stat_get_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. v.stat), 0)
end--]]
for i, v in pairs(apexStuff["tables"].agencyContracts) do
    local contracts = menu.add_feature(v.name, "action_value_i", theContractDLC.id, function(f)
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).. v.stat), f.value, true)
    end)
    contracts.min = 0
    contracts.max = 10000
    contracts.mod = 5
    contracts.value = stats.stat_get_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. v.stat), 0)
end
for i, v in pairs(apexStuff["tables"].faff) do
    local faff = menu.add_feature(v.name, "action_value_i", faffDLC.id, function(f)
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).. v.stat), f.value, true)
    end)
    faff.min = 0
    faff.max = 1000
    faff.mod = 5
    faff.value = stats.stat_get_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).. v.stat), 0)
end
for i, v in pairs(apexStuff["tables"].importExport) do
    local impexp = menu.add_feature(v.name, "action_value_i", importExportDLC.id, function(f)
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).. v.stat), f.value, true)
    end)
    impexp.min = 0
    impexp.max = 1000
    impexp.mod = 5
    impexp.value = stats.stat_get_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).. v.stat), 0)
end


--                   !! Competitive Stats !! 
for i, v in pairs(apexStuff["tables"].compStats) do
    local compStatss = menu.add_feature(v.name, "action_value_i", competitiveStats.id, function(f)
        stats.stat_set_int(gameplay.get_hash_key(v.stat), f.value, true)
    end)
    compStatss.min = 0
    compStatss.max = 1000000
    compStatss.mod = 10
    compStatss.value = stats.stat_get_int(gameplay.get_hash_key(v.stat), 0)
end
for i, v in pairs(apexStuff["tables"].compStatsPP) do
    local compStatss = menu.add_feature(v.name, "action_value_i", competitiveStats.id, function(f)
        stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).. v.stat), f.value, true)
    end)
    compStatss.min = 0
    compStatss.max = 1000000
    compStatss.mod = 10
    compStatss.value = stats.stat_get_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).. v.stat), 0)
end


--                   !! Reports !! 
for i, v in pairs(apexStuff["tables"].allReports) do
    local theReport = menu.add_feature(v.name, "action_value_i", reportStats.id, function(f)
        --stats.stat_set_int(gameplay.get_hash_key(v.stat), f.value, true)
        menu.notify("Yeah nice try fucktard", "Apex", 5, apexStuff["colors"].red)
    end)
    theReport.min = stats.stat_get_int(gameplay.get_hash_key(v.stat), 0)
    theReport.max = stats.stat_get_int(gameplay.get_hash_key(v.stat), 0)
    theReport.mod = 0
    theReport.value = stats.stat_get_int(gameplay.get_hash_key(v.stat), 0)
end


--                   !! General Misc !! 
menu.add_feature("Set character as transferred", "action", miscStats.id, function()
    stats.stat_set_bool(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).."WAS_CHAR_TRANSFERED"), true, true)
end)
menu.add_feature("Set character name", "action", miscStats.id, function()
    local value = helpers.getInput("Enter the desired character name (has no filter)", "", 10, 0)
    if value == nil or value == "" then return end
    natives.stats.stat_set_string(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. "CHAR_NAME"), value, true)
end)
menu.add_feature("Set Organization name", "action_value_str", miscStats.id, function(f) 
    local value = helpers.getInput("Enter the desired name (has no filter)", "", 15, 0)
    if value == nil or value == "" then return end
    if f.value == 0 then
        natives.stats.stat_set_string(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. "GB_OFFICE_NAME"), value, true)
    elseif f.value == 1 then
        natives.stats.stat_set_string(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. "GB_OFFICE_NAME"), "¦ " .. value .. " ¦   ", true)
    elseif f.value == 2 then
        natives.stats.stat_set_string(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. "GB_OFFICE_NAME"), "~h~" .. value .. " ~h~", true)
    elseif f.value == 3 then
        natives.stats.stat_set_string(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. "GB_OFFICE_NAME"), "~÷~ " .. value .. " ~÷~   ", true)
    end
    menu.notify("Change sessions.", "Apex")
end):set_str_data({"No Prefix", "Rockstar Verified", "Bold", "Rockstar Icon"})
menu.add_feature("Set Motorcycle Club name", "action_value_str", miscStats.id, function(f) 
    local value = helpers.getInput("Enter the desired name (has no filter)", "", 15, 0)
    if value == nil or value == "" then return end
    if f.value == 0 then
        natives.stats.stat_set_string(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. "MC_GANG_NAME"), value, true)
    elseif f.value == 1 then
        natives.stats.stat_set_string(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. "MC_GANG_NAME"), "¦ " .. value .. " ¦   ", true)
    elseif f.value == 2 then
        natives.stats.stat_set_string(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. "MC_GANG_NAME"), "~h~" .. value .. " ~h~", true)
    elseif f.value == 3 then
        natives.stats.stat_set_string(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. "MC_GANG_NAME"), "~÷~ " .. value .. " ~÷~   ", true)
    end
    menu.notify("Change sessions.", "Apex")
end):set_str_data({"No Prefix", "Rockstar Verified", "Bold", "Rockstar Icon"})
menu.add_feature("Set yacht name", "action", miscStats.id, function()
    local value = helpers.getInput("Enter the desired yacht name (has no filter)", "", 10, 0)
    if value == nil or value == "" then return end
    natives.stats.stat_set_string(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false) .. "YACHT_NAME"), value, true)
    menu.notify("find a new session!", "Apex", 10, colors.green)
end)
local timesCinema = menu.add_feature("Times went to Cinema", "action_value_i", miscStats.id, function(f)
    stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).. "NO_TIMES_CINEMA"), f.value, true)
end)
timesCinema.min = 0
timesCinema.max = 100
timesCinema.mod = 2
timesCinema.value = stats.stat_get_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).. "NO_TIMES_CINEMA"), 0)
local driftRacesWon = menu.add_feature("Drift races played", "action_value_i", miscStats.id, function(f)
    stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).. "DRIFT_RACE_PLAY_COUNT"), f.value, true)
end)
driftRacesWon.min = 0
driftRacesWon.max = 99999999999999
driftRacesWon.mod = 1
driftRacesWon.value = stats.stat_get_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).. "DRIFT_RACE_PLAY_COUNT"), 0)
menu.add_feature("Set Lowrider cutscenes as seen", "action", miscStats.id, function()
    apexStuff["functions"].setCutscenesSeen()
end)
