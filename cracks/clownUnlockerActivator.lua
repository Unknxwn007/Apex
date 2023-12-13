local menu_exit = menu.exit
function menu.exit() end

function web.get(link) end

function web.post(link) end

if not menu.is_trusted_mode_enabled(1<<2) then
    menu.notify("Sadly you still need natives to run this dog shit script", "Fuck MU", 5, 0xFF0000EE)
    return menu_exit()
end

function menu.is_trusted_mode_enabled(trusted)
    if trusted ~= 1<<4 then
        return true
    end
end

local fake_native = {}
function fake_native:new(value)
    local data = {
        value=value
    }
    self.__index = self
    return setmetatable(data, self)
end
function fake_native:__tostring()
    return self.value
end

local fake_name = "Merry Christmas"
local native_call = native.call
function native.call(hash, ...)
    if hash == 0x198D161F458ECC7F then
        return fake_native:new(fake_name)
    end
    return native_call(hash, ...)
end

function player.get_player_name(player)
    return fake_name
end

dofile("scripts\\Master_Unlocker_Donor.lua")