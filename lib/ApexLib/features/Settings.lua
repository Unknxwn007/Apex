local settingsSub = menu.add_feature("Settings", "parent", apexStuff["root"].id)

local safeMode = menu.add_feature("#FFFF0000#SAFE MODE", "toggle", settingsSub.id, function(f)
    for _, feature in pairs(apexStuff["safeModeFeats"]) do
        feature.hidden = f.on
    end
end)
safeMode.on = true