local appdata = utils.get_appdata_path("PopstarDevs", "2Take1Menu")
package.path = appdata .. "\\scripts\\?.lua;" .. package.path  

local helpers = {}

-- Notification with Icon
function helpers.iconNotification(icon, text)
    native.call(0x202709F4C58A0424, "")
    native.call(0x1CCD9A37359072CF, icon, icon, false, 4, "Apex", text)
end
function helpers.cIconNotification(icon, sender, text)
    native.call(0x202709F4C58A0424, "")
    native.call(0x1CCD9A37359072CF, icon, icon, false, 4, sender, text)
end

return helpers