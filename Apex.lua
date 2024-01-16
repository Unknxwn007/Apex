-- Check if the ApexLib folder exists.
if not utils.dir_exists("scripts/lib/ApexLib") then
    menu.notify("Apex Lib files not found. Please make sure all Apex Lib files are installed correctly.", "Apex", nil, 0xFF0000FF)
    menu.exit()
    return
end

-- Check if the natives lib exists.
if not utils.file_exists("scripts/lib/natives2845.lua") then
    menu.notify("Natives lib not found, please install it before using this script:\n\nLocal > Scripts > Install Scripts > natives2845", "Apex", nil, 0xFF0000FF)
    menu.exit()
    return
end

-- Trusted mode(s) check, add or remove shit from the table as needed.
local trustedModeChecks = {
    [1 << 0] = "Stats",
    [1 << 1] = "Globals",
    [1 << 2] = "Natives",
}
for bit, mode in pairs(trustedModeChecks) do
    if not menu.is_trusted_mode_enabled(bit) then
        menu.notify("#FF00FC7C#"..mode.."#DEFAULT# trusted mode is required. Please enable it and re-launch the script.", "Apex", nil, 0xFF0000FF)
        menu.exit()
        return
    end
end

-- Script load timer, this is just so a fancy "loaded in blah ms" thing can be printed to console, delete if unwanted.
local scriptLoadTimer = utils.time_ms()

-- This is a global table so it can be accessed in the other script files without needing to require each thing multiple times, efficiency for the win.
apexStuff = {}
apexStuff["safeModeFeats"] = {}
apexStuff["natives"] = require("lib/natives2845")
apexStuff["colors"] = require("ApexLib/lib/colors")
apexStuff["tables"] = require("ApexLib/lib/tables")
apexStuff["helpers"] = require("ApexLib/lib/helpers")
apexStuff["functions"] = require("ApexLib/lib/functions")
apexStuff["root"] = menu.add_feature("#FF0000FF#Apex", "parent")


-- These are going to be the individual files you stickall your features in. 
-- They will become the parent features in 'Local -> Script Features -> Apex'.
local primaryParentFeatures = {
    "Unlocks",
    "Reputation",
    --"Collectables",
    --"Tax Fraud",
    "Clues",
    "Exploits",
    "Heist Manager",
    "Mission Manager",
    "Stats Manager",
    "Useful Features",
    "Character Information",
    "Miscellaneous",
    --"Settings",
    --"Dev"
}
for i=1, #primaryParentFeatures do
    require("ApexLib/features/"..primaryParentFeatures[i])
end

menu.create_thread(function()
    apexStuff["helpers"].iconNotification("CHAR_MP_FM_CONTACT", "Welcome!")
    menu.notify("#" .. apexStuff["colors"].green .. "#SAFE MODE IS ON!", "Apex", 5, 0xFF0000FF)
end)

print("Apex loaded successfully in " .. (utils.time_ms() - scriptLoadTimer) .. "ms.")