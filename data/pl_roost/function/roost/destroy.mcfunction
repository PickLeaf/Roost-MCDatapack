setblock ~ ~ ~ minecraft:air
function pl_roost:roost/destroy_loop
playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~
execute positioned ~ ~-0.125 ~ \
    run function pl_roost:uni/particle_tip_3x3x2_5 \
        {particle:"minecraft:flame"}
kill @s
return 1