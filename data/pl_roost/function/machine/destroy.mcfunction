setblock ~ ~ ~ minecraft:air
function pl_roost:machine/destroy_loop
playsound entity.chicken.egg hostile @a ~ ~ ~
kill @s