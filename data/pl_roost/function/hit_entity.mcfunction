execute unless entity @s[type=minecraft:chicken] run return fail
loot spawn ~ ~ ~ loot pl_roost:chicken_soul
data modify entity @s Health set value 0s
data modify entity @s DeathTime set value 100s