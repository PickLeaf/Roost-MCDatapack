execute unless block ~ ~1 ~ #pl_roost:27_slots_container run \
    return run function pl_roost:destroy
#1/27 ≈ 0.037037037037037
execute store result storage pl_roost temp float 0.037037037037037 run \
    execute if items block ~ ~1 ~ container.* *[minecraft:custom_data={"pl_roost:chicken_soul":1b}]
execute if predicate pl_roost:ouput_calc if block ~ ~-1 ~ #minecraft:air run \
    function pl_roost:egg
data remove storage pl_roost temp