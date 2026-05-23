# check predicate
execute positioned ^ ^ ^-1 \
    unless predicate pl_roost:roost \
        run return run \
            data remove storage pl_roost:var stop
execute positioned ^ ^ ^-1 \
    unless block ~ ~ ~ #minecraft:air \
        run return run \
            data remove storage pl_roost:var stop
execute positioned ^ ^ ^-1 \
    align xyz unless entity \
    @e[type=minecraft:chicken,dx=0,dy=0,dz=0] \
        run return run \
            data remove storage pl_roost:var stop
# info
execute positioned ^ ^-0.25 ^-1 \
    run function pl_roost:uni/particle_tip_3x3x2_5 {particle:"minecraft:happy_villager"}
playsound block.anvil.land player @s ^ ^-0.25 ^-1
# get count of chickens
execute store result storage pl_roost:var count \
    int 1 positioned ^ ^ ^-1 \
    align xyz if entity \
        @e[type=minecraft:chicken,dx=0,dy=0,dz=0]
execute positioned ^ ^ ^-1 \
    align xyz as \
    @e[type=minecraft:chicken,dx=0,dy=0,dz=0] \
        run function pl_roost:uni/kill
# place command block in world
setblock ^ ^ ^-1 \
    minecraft:repeating_command_block[facing=up]{auto:1b,TrackOutput:0b}
# summon marker
execute summon minecraft:marker \
    run function pl_roost:roost/summon_marker
# modified command in command block
data modify storage nutlet:var uuid.func \
    set value "pl_roost:w/0"
execute positioned ^ ^ ^-1 \
    run function pl_roost:uni/set_command with storage nutlet:var uuid
# clear data
data remove storage pl_roost:var count
data remove storage nutlet:var uuid