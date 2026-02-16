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
    @e[type=minecraft:chicken,dx=1,dy=1,dz=1] \
        run return run \
            data remove storage pl_roost:var stop
execute positioned ^ ^-0.25 ^-1 \
    run function pl_roost:info/set_up_suc
# get count of chickens
execute store result storage pl_roost:var count \
    int 1 positioned ^ ^ ^-1 \
    align xyz if entity \
        @e[type=minecraft:chicken,dx=1,dy=1,dz=1]
execute positioned ^ ^ ^-1 \
    align xyz as \
    @e[type=minecraft:chicken,dx=1,dy=1,dz=1] \
        run function pl_roost:uni/kill
# summon marker
execute summon minecraft:marker \
    run function pl_roost:uni/summon_marker
# place command block in world
function nutlet:-m/facing/block
execute positioned ^ ^ ^-1 \
    run function pl_roost:uni/place with storage nutlet:var facing
data remove storage nutlet:var facing
# modified command in command block
data modify storage nutlet:var uuid.func \
    set value "pl_roost:w"
execute positioned ^ ^ ^-1 \
    run function pl_roost:uni/set_command with storage nutlet:var uuid
# clear data
data remove storage nutlet:var uuid