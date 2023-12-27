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
function helpers.stat_get_string(statHash, p1)
	assert(type(statHash) == "number", "Arg #1 (statHash) must be a number.")
	assert(type(p1) == "number", "Arg #2 (p1) must be a number.")

	local result = native.call(0xE50384ACC2C3DB74, statHash, p1)
	return result:__tostring(true)
end
function helpers.stat_get_date(statHash, outValue, numFields, p3)
	assert(type(statHash) == "number", "Arg #1 (statHash) must be a number.")
	assert(type(outValue) == "userdata", "Arg #2 (outValue) must be a userdata.")
	assert(type(numFields) == "number", "Arg #3 (numFields) must be a number.")
	assert(type(p3) == "number", "Arg #4 (p3) must be a number.")

	local result = native.call(0x8B0FACEFC36C824B, statHash, outValue, numFields, p3)
	return result:__tointeger() ~= 0
end
function helpers.bank_balance()
    local result = native.call(0xA6FA3979BED01B81)
	return result:__tostring(true)
end
function helpers.bank_wallet_balance()
    local result = native.call(0x700AF71AE615E6DD)
	return result:__tostring(true)
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