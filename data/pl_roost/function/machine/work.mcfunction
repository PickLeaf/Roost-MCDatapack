scoreboard players remove @s Nutlet.Clac 1
execute if score @s Nutlet.Clac matches 1.. \
    run return fail
scoreboard players operation @s Nutlet.Clac \
    = $pl_roost.work_interval Nutlet.Config

execute if function pl_roost:machine/insert \
    run return 1
execute if items block ~ ~ ~ container.* * \
    run return fail
loot spawn ~ ~ ~ loot pl_roost:lay_egg