execute unless block ~ ~1 ~ minecraft:barrel run \
    return run setblock ~ ~ ~ minecraft:hay_block
#1/27 ≈ 0.037037037037037
execute store result storage pl_roost temp float 0.037037037037037 run \
    execute if items block ~ ~1 ~ container.* *[minecraft:custom_data={"pl_roost:chicken_soul":1b}]
execute if predicate pl_roost:ouput_calc if block ~ ~-1 ~ #minecraft:air run \
    summon minecraft:item ~ ~-1 ~ {Item:{id:"minecraft:egg",count:1b},Motion:[0f,-0.2f,0f]}
data remove storage pl_roost temp