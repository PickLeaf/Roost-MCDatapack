execute positioned ^ ^1 ^-1 \
    run function pl_roost:uni/particle_tip_3x3x3 {particle:"minecraft:flame"}

data modify storage nutlet:var schematic set value \
    {tick:100, keepData:1b, transformation:{\
        scale:[0.3f, 0.3f, 0.3f], translation:[-0.15f, -0.15f, -0.15f]}}
# marker
data modify storage nutlet:var schematic.id set value "minecraft:air"
function nutlet:-m/schematic/item {hasComponent:"false"}
# tuff bricks
data modify storage nutlet:var schematic.id set value "minecraft:tuff_bricks"
execute positioned ^1 ^ ^ \
    run function nutlet:-m/schematic/block {hasProp:"false"}
execute positioned ^-1 ^ ^ \
    run function nutlet:-m/schematic/block {hasProp:"false"}

execute positioned ^1 ^ ^-1 \
    run function nutlet:-m/schematic/block {hasProp:"false"}
execute positioned ^-1 ^ ^-1 \
    run function nutlet:-m/schematic/block {hasProp:"false"}

execute positioned ^1 ^ ^-2 \
    run function nutlet:-m/schematic/block {hasProp:"false"}
execute positioned ^-1 ^ ^-2 \
    run function nutlet:-m/schematic/block {hasProp:"false"}
# yellow wool
data modify storage nutlet:var schematic.id set value "minecraft:yellow_wool"
execute positioned ^1 ^1 ^ \
    run function nutlet:-m/schematic/block {hasProp:"false"}
execute positioned ^ ^1 ^ \
    run function nutlet:-m/schematic/block {hasProp:"false"}
execute positioned ^-1 ^1 ^ \
    run function nutlet:-m/schematic/block {hasProp:"false"}

execute positioned ^1 ^1 ^-1 \
    run function nutlet:-m/schematic/block {hasProp:"false"}
execute positioned ^-1 ^1 ^-1 \
    run function nutlet:-m/schematic/block {hasProp:"false"}

execute positioned ^1 ^1 ^-2 \
    run function nutlet:-m/schematic/block {hasProp:"false"}
execute positioned ^ ^1 ^-2 \
    run function nutlet:-m/schematic/block {hasProp:"false"}
execute positioned ^-1 ^1 ^-2 \
    run function nutlet:-m/schematic/block {hasProp:"false"}

execute positioned ^1 ^2 ^ \
    run function nutlet:-m/schematic/block {hasProp:"false"}
execute positioned ^ ^2 ^ \
    run function nutlet:-m/schematic/block {hasProp:"false"}
execute positioned ^-1 ^2 ^ \
    run function nutlet:-m/schematic/block {hasProp:"false"}

execute positioned ^1 ^2 ^-1 \
    run function nutlet:-m/schematic/block {hasProp:"false"}
execute positioned ^-1 ^2 ^-1 \
    run function nutlet:-m/schematic/block {hasProp:"false"}

execute positioned ^1 ^2 ^-2 \
    run function nutlet:-m/schematic/block {hasProp:"false"}
execute positioned ^ ^2 ^-2 \
    run function nutlet:-m/schematic/block {hasProp:"false"}
execute positioned ^-1 ^2 ^-2 \
    run function nutlet:-m/schematic/block {hasProp:"false"}
# block of iron
data modify storage nutlet:var schematic.id set value "minecraft:iron_block"
execute positioned ^ ^ ^-1 \
    run function nutlet:-m/schematic/block {hasProp:"false"}
# cauldron
data modify storage nutlet:var schematic.id set value "minecraft:cauldron"
execute positioned ^ ^2 ^-1 \
    unless block ~ ~ ~ #minecraft:cauldrons \
    run function nutlet:-m/schematic/block {hasProp:"false"}
# dropper
data modify storage nutlet:var schematic.id set value "minecraft:crafter"
execute facing ^ ^ ^-1 \
    run function nutlet:-m/facing/entity
data modify storage nutlet:var schematic.prop.orientation \
    set from storage nutlet:var facing.orientation
execute positioned ^ ^ ^-2 \
    run function nutlet:-m/schematic/block {hasProp:"true"}
# clear data
data remove storage nutlet:var facing
# text display
execute positioned ^ ^1 ^-1 \
    unless predicate pl_roost:incubator \
    run return run \
        data remove storage nutlet:var schematic

data remove storage nutlet:var schematic.transformation
data modify storage nutlet:var schematic.mergeData set value \
    {width:3f, height:1f, line_width:120}
execute if block ^ ^1 ^-1 minecraft:repeating_command_block \
    run data modify storage nutlet:var schematic.text set value \
    '{"translate":"pl_roost.info.setup_fail_2",\
    "fallback":"Here is a machine already", "color": "red"}'

execute if data storage nutlet:var schematic.text \
    positioned ^ ^1 ^0.51 \
    run function nutlet:-m/schematic/text
# text display
data remove storage nutlet:var schematic