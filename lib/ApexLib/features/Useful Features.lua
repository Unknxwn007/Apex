local usefulSub = menu.add_feature("Useful Features", "parent", apexStuff["root"].id)


menu.add_feature("Remove transaction error", "toggle", usefulSub.id, function(f)
    while f.on do
        script.set_global_i(4537356, 0)
        script.set_global_i(4537357, 0)
        script.set_global_i(4537358, 0)
        system.wait(0)
    end
end)

menu.add_feature("Fix custom plate orders not working", "action", usefulSub.id, function() 
    stats.stat_set_bool(gameplay.get_hash_key("MPPLY_LOW_REPEAT_OFFENDER_CAP"), false, true)
    stats.stat_set_bool(gameplay.get_hash_key("MPPLY_HIGH_REPEAT_OFFENDER_CAP"), false, true)
    stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).."NUM_THRESH_CROSSED_TODAY"), 0, true)
end)

menu.add_feature("Move all money to", "action_value_str", usefulSub.id, function(f)  -- thanks for the help MIKE!
    local walletCash =apexStuff["natives"].money.network_get_vc_wallet_balance(stats.stat_get_int(791613967, 0))
    local bankCash = apexStuff["natives"].money.network_get_vc_bank_balance() 

    if f.value == 0 then -- wallet -> bank
        if bankCash > 0 then
            apexStuff["natives"].netshopping.net_gameserver_transfer_bank_to_wallet(stats.stat_get_int(791613967, 0), bankCash)
        else
            menu.notify("Funds could not be transffered, your bank balance is $"..bankCash)
        end
    else -- bank -> wallet
        if walletCash > 0 then
            apexStuff["natives"].netshopping.net_gameserver_transfer_wallet_to_bank(stats.stat_get_int(791613967, 0), walletCash)
        else
            menu.notify("Funds could not be transffered, your wallet balance is $"..walletCash)
        end
    end
end):set_str_data({"Wallet", "Bank"})

menu.add_feature("Force cloud save", "action", usefulSub.id, function()
    apexStuff["natives"].stats.stat_save(0, false, 3, false)
end)

menu.add_feature("Call Gun Van", "action", usefulSub.id, function()
    local coords = player.get_player_coords(player.player_id())
    script.set_global_f(1948900, coords.x)
    script.set_global_f(1948900 + 1, coords.y)
    script.set_global_f(1948900 + 2, coords.z)
end)

menu.add_feature("Remove Cash (Requires Input)", "action", usefulSub.id, function()
    local value = helpers.getInput("Amount of cash to remove", "", 20, 0)
    if value == nil or value == "" then return end
    script.set_global_i(2707037 + 36, value)
end)

menu.add_feature("Reset vehicle sell timer", "action", usefulSub.id, function()
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_VEHICLE_SELL_TIME"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_NUM_CARS_SOLD_TODAY"), 0, true)
end)

menu.add_feature("Delete current vehicle", "action", usefulSub.id, function()
    -- how does 2take1 STILL not have this fucking option???
    entity.delete_entity(player.player_vehicle())
end)

menu.add_feature("Refill Inventory", "action", usefulSub.id, function()
    apexStuff["functions"].refillInventory()
end)

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