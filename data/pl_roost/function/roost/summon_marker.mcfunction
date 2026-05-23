teleport @s ~ ~ ~ ~ ~
teleport @s ^ ^-0.3 ^0.7
execute store result score @s Nutlet.Config \
    run data get storage pl_roost:var count
scoreboard players operation @s Nutlet.Clac \
    = $pl_roost.work_interval Nutlet.Config

data modify entity @s data."nutlet:structure_check".x \
    set from block ^ ^ ^-1 x
data modify entity @s data."nutlet:structure_check".y \
    set from block ^ ^ ^-1 y
data modify entity @s data."nutlet:structure_check".z \
    set from block ^ ^ ^-1 z
data modify entity @s data."nutlet:structure_check".func \
    set value "pl_roost:roost/structure_check"

data modify storage nutlet:var uuid.array \
    set from entity @s UUID
function nutlet:-m/hex_uuid