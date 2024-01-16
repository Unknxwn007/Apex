local collectSub = menu.add_feature("Collectables", "parent", apexStuff["root"].id)

-- needs improvement, but later i cba

local ldOrganics = menu.add_feature("LD Organics Product", "action_value_i", collectSub.id, function(f)
    stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).. "LDORGANICS_COLLECTED"), f.value, true)
end)
ldOrganics.min = 0
ldOrganics.max = 100
ldOrganics.mod = 1
ldOrganics.value = stats.stat_get_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).. "LDORGANICS_COLLECTED"), 0)

local trickOrTreet = menu.add_feature("Trick or Treat", "action_value_i", collectSub.id, function(f)
    stats.stat_set_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).. "TRICKORTREAT_COLLECTED"), f.value, true)
end)
trickOrTreet.min = 0
trickOrTreet.max = 100
trickOrTreet.mod = 1
trickOrTreet.value = stats.stat_get_int(gameplay.get_hash_key(apexStuff["helpers"].getCurrentChar(false).. "TRICKORTREAT_COLLECTED"), 0)