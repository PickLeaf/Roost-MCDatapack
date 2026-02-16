# check version of nutlet
execute if predicate pl_roost:check_nutlet \
    run return 1

data modify storage pl_roost:print cmd.nutlet \
    set value '{"translate": "pl_roost.nutlet_low",\
        "fallback": "(LOW Version of Nutlet Datapack)",\
        "color":"red"}'