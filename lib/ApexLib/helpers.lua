local appdata = utils.get_appdata_path("PopstarDevs", "2Take1Menu")
package.path = appdata .. "\\scripts\\?.lua;" .. package.path  

local helpers = {}

-- Notification with Icon
function helpers.iconNotification(icon, text)
    native.call(0xDFA2EF8E04127DD5, icon, false) -- REQUEST_STREAMED_TEXTURE_DICT
    native.call(0x202709F4C58A0424, "")
    native.call(0x1CCD9A37359072CF, icon, icon, false, 4, "Apex", text)
end
function helpers.cIconNotification(icon, sender, text)
    native.call(0xDFA2EF8E04127DD5, icon, false)
    native.call(0x202709F4C58A0424, "")
    native.call(0x1CCD9A37359072CF, icon, icon, false, 4, sender, text)
end

function helpers.getInput(title, default, maxChar, flags)
    local r, s
    repeat
        r, s = input.get(title, default, maxChar, flags)
        if r == 2 then return end
        system.wait()
    until r == 0
    if s == nil or s == "" then return end
    return s
end

function helpers.add_commas(number)
    local str = tostring(number)    
    str = string.reverse(str)   
    str = str:gsub("(%d%d%d)", "%1,")   
    str = string.reverse(str)   
    str = str:gsub("^,", "")    
    return str
end

--[[function helpers.verCheck()
    local webVersion = web.get("https://raw.githubusercontent.com/Unknxwn007/Apex/main/version.txt")
    local localVersion = "donkeykong"

    if webVersion == localVersion then
        menu.notify("success", "Apex", 10, FF00FFFF)
    else
        menu.notify("fail", "Apex", 10, FF00FFFF)
    end
end--]]

return helpers