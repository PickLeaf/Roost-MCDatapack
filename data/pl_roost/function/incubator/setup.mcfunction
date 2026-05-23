# check predicate
execute positioned ^ ^1 ^-1 \
    unless predicate pl_roost:incubator \
        run return run \
            data remove storage pl_roost:var stop
execute unless block ^ ^1 ^-1 #minecraft:air \
        run return run \
            data remove storage pl_roost:var stop
# onyl 1 slot crafter
data modify block ^ ^ ^-2 disabled_slots \
    set value [I; 0, 1, 2, 3, 5, 6, 7, 8]
# info
execute positioned ^ ^1 ^-1 \
    run function pl_roost:uni/particle_tip_3x3x3 {particle:"minecraft:happy_villager"}
playsound block.anvil.land player @s ^ ^1 ^-1
# place command block in world
setblock ^ ^1 ^-1 \
    minecraft:repeating_command_block[facing=up]{auto:1b,TrackOutput:0b}
# summon marker
execute summon minecraft:marker \
    run function pl_roost:incubator/summon_marker
# modified command in command block
data modify storage nutlet:var uuid.func \
    set value "pl_roost:w/1"
execute positioned ^ ^1 ^-1 \
    run function pl_roost:uni/set_command with storage nutlet:var uuid
# clear data
data remove storage nutlet:var uuid