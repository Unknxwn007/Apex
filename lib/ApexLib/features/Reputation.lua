local reputationSub = menu.add_feature("Reputation", "parent", apexStuff["root"].id)

menu.add_feature("10x RP Multiplier", "action", reputationSub.id, function(f) 
    while f.on do
        script.set_global_f(262145 + 1, 10.0)
        system.wait()
    end        
    script.set_global_f(262145 + 1, 1.0)
end)

menu.add_feature("Car Club level Exploit", "toggle", reputationSub.id, function(f)
    menu.notify("Buy clothing or customize your vehicle!", "Apex", 6, apexStuff["colors"].green)
    while f.on do
        for i = 31944, 31973 do
            script.set_global_f(262145 + i, 99999)
        end
        system.wait()
    end
    menu.notify("Find a new session to apply max level!", "Apex", 5, apexStuff["colors"].yellow)
end)

menu.add_feature("Reset car club level", "action", reputationSub.id, function() 
    stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).."CAR_CLUB_REP"), 0, true) -- i got 0 from doing a get stat int + CAR_CLUB_REP
    menu.notify("Find a new session to apply level!", "Apex", 5, apexStuff["colors"].yellow)
end)