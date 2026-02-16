teleport @s ~ ~ ~ ~ ~
teleport @s ^ ^-0.3 ^0.7
data modify storage nutlet:var uuid.array \
    set from entity @s UUID
function nutlet:-m/hex_uuid
execute store result score @s Nutlet.Config \
    run data get storage pl_roost:var count
data remove storage pl_roost:var count