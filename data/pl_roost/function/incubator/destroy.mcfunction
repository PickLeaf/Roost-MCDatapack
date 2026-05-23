setblock ~ ~ ~ minecraft:air
playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~
function pl_roost:uni/particle_tip_3x3x3 \
    {particle:"minecraft:flame"}
kill @s
return 1