# this function invoke by "/function #nutlet:spells" in nutlet datapack
data modify storage nutlet:spell list append value \
    {spell:"PL Roost", function:"pl_roost:roost/spell"}
data modify storage nutlet:spell list append value \
    {spell:"Chicken Incubator", function:"pl_roost:incubator/spell"}