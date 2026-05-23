teleport @s ~ ~ ~ ~ ~

data modify entity @s data."nutlet:structure_check".x \
    set from block ^ ^1 ^-1 x
data modify entity @s data."nutlet:structure_check".y \
    set from block ^ ^1 ^-1 y
data modify entity @s data."nutlet:structure_check".z \
    set from block ^ ^1 ^-1 z
data modify entity @s data."nutlet:structure_check".func \
    set value "pl_roost:incubator/structure_check"

data modify storage nutlet:var uuid.array \
    set from entity @s UUID
function nutlet:-m/hex_uuid