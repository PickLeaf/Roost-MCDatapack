execute positioned ^ ^-0.125 ^-1 \
    run function pl_roost:uni/particle_tip_3x3 {particle:"minecraft:flame"}

data modify storage nutlet:var schematic set value \
    {tick:100, keepData:1b, transformation:{\
        scale:[0.3f, 0.3f, 0.3f], translation:[-0.15f, -0.15f, -0.15f]}}
# marker
data modify storage nutlet:var schematic.id set value "minecraft:air"
function nutlet:-m/schematic/item {hasComponent:"false"}
# stonecutter
data modify storage nutlet:var schematic.id set value "minecraft:stonecutter"
execute positioned ^ ^1 ^-1 \
    run function nutlet:-m/schematic/block {hasProp:"false"}
# chiseled bookshelf
data modify storage nutlet:var schematic.id set value "minecraft:chiseled_bookshelf"
execute facing ^ ^ ^-1 \
    run function nutlet:-m/facing/entity
data modify storage nutlet:var schematic.prop.facing \
    set from storage nutlet:var facing.facing
execute positioned ^ ^ ^-2 \
    run function nutlet:-m/schematic/block {hasProp:"true"}

execute facing ^1 ^ ^ \
    run function nutlet:-m/facing/entity
data modify storage nutlet:var schematic.prop.facing \
    set from storage nutlet:var facing.facing
execute positioned ^1 ^ ^-1 \
    run function nutlet:-m/schematic/block {hasProp:"true"}

execute facing ^-1 ^ ^ \
    run function nutlet:-m/facing/entity
data modify storage nutlet:var schematic.prop.facing \
    set from storage nutlet:var facing.facing
execute positioned ^-1 ^ ^-1 \
    run function nutlet:-m/schematic/block {hasProp:"true"}
# first layer, hay block
data modify storage nutlet:var schematic.id set value "minecraft:hay_block"
data modify storage nutlet:var schematic.prop set value {axis:"y"}
execute positioned ^ ^-1 ^ \
    run function nutlet:-m/schematic/block {hasProp:"true"}
execute positioned ^1 ^-1 ^ \
    run function nutlet:-m/schematic/block {hasProp:"true"}
execute positioned ^-1 ^-1 ^ \
    run function nutlet:-m/schematic/block {hasProp:"true"}
execute positioned ^ ^-1 ^-1 \
    run function nutlet:-m/schematic/block {hasProp:"true"}
execute positioned ^1 ^-1 ^-1 \
    run function nutlet:-m/schematic/block {hasProp:"true"}
execute positioned ^-1 ^-1 ^-1 \
    run function nutlet:-m/schematic/block {hasProp:"true"}
execute positioned ^ ^-1 ^-2 \
    run function nutlet:-m/schematic/block {hasProp:"true"}
execute positioned ^1 ^-1 ^-2 \
    run function nutlet:-m/schematic/block {hasProp:"true"}
execute positioned ^-1 ^-1 ^-2 \
    run function nutlet:-m/schematic/block {hasProp:"true"}
# oak planks slab
data modify storage nutlet:var schematic.id set value "minecraft:oak_slab"
data modify storage nutlet:var schematic.prop set value {type:"bottom"}
execute positioned ^1 ^1 ^ \
    run function nutlet:-m/schematic/block {hasProp:"true"}
execute positioned ^ ^1 ^ \
    run function nutlet:-m/schematic/block {hasProp:"true"}
execute positioned ^-1 ^1 ^ \
    run function nutlet:-m/schematic/block {hasProp:"true"}

execute positioned ^1 ^1 ^-1 \
    run function nutlet:-m/schematic/block {hasProp:"true"}
execute positioned ^-1 ^1 ^-1 \
    run function nutlet:-m/schematic/block {hasProp:"true"}

execute positioned ^1 ^1 ^-2 \
    run function nutlet:-m/schematic/block {hasProp:"true"}
execute positioned ^ ^1 ^-2 \
    run function nutlet:-m/schematic/block {hasProp:"true"}
execute positioned ^-1 ^1 ^-2 \
    run function nutlet:-m/schematic/block {hasProp:"true"}
# oak planks
data modify storage nutlet:var schematic.id set value "minecraft:oak_planks"
execute positioned ^1 ^ ^ \
    run function nutlet:-m/schematic/block {hasProp:"false"}
execute positioned ^-1 ^ ^ \
    run function nutlet:-m/schematic/block {hasProp:"false"}
execute positioned ^1 ^ ^-2 \
    run function nutlet:-m/schematic/block {hasProp:"false"}
execute positioned ^-1 ^ ^-2 \
    run function nutlet:-m/schematic/block {hasProp:"false"}
# display chicken in center
data remove storage nutlet:var schematic.transformation
data modify storage nutlet:var schematic.id set value "minecraft:chicken_spawn_egg"
execute positioned ^ ^ ^-1 \
    run function nutlet:-m/schematic/item {hasComponent:"false"}
# clear data
data remove storage nutlet:var facing
# text display
execute positioned ^0 ^ ^-1 \
    unless predicate pl_roost:roost \
    run return run \
        data remove storage nutlet:var schematic

data modify storage nutlet:var schematic.mergeData set value \
    {width:3f, height:1f, line_width:250}
execute positioned ^ ^ ^-1 \
    positioned ~0.5 ~0.5 ~-0.5 \
    unless entity @e[type=minecraft:chicken,dx=1,dy=1,dz=1] \
    run data modify storage nutlet:var schematic.text set value \
        '{"translate":"pl_roost.info.setup_fail_2",\
        "fallback":"Need some %s in center",\
        "with": [\
            {"translate": "entity.minecraft.chicken"}]}'
execute if block ^ ^ ^-1 minecraft:repeating_command_block \
    run data modify storage nutlet:var schematic.text set value \
    '{"translate":"pl_roost.info.setup_fail_3",\
    "fallback":"Here is a Roost already", "color": "red"}'

execute if data storage nutlet:var schematic.text \
    positioned ^0 ^ ^0.51 \
    run function nutlet:-m/schematic/text

data remove storage nutlet:var schematic