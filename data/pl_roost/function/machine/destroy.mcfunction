setblock ~ ~ ~ minecraft:air
function pl_roost:machine/destroy_loop
playsound entity.chicken.death hostile @a ~ ~ ~
kill @s