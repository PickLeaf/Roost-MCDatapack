summon minecraft:chicken ~ ~ ~

scoreboard players remove @s Nutlet.Config 1
execute if score @s Nutlet.Config matches 1.. \
    run function pl_roost:machine/destroy_loop