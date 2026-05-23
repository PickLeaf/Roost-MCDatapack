execute if predicate pl_roost:empty_furance_process_timer \
    run function pl_roost:uni/empty_furance_process

scoreboard players remove @s Nutlet.Clac 1
execute if score @s Nutlet.Clac matches 1.. \
    run return fail
scoreboard players operation @s Nutlet.Clac \
    = $pl_roost.incubator_speed Nutlet.Config

execute unless predicate pl_roost:lited \
    run return fail

execute positioned ^ ^ ^-2 \
    run function pl_roost:incubator/work_
