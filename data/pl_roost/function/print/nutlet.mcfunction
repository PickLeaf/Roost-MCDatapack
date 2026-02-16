data modify storage pl_roost:print cmd.nutlet \
    set value '{"text":""}'
function nutlet:get_version {storage:"pl_roost:print",path:"nutlet"}
execute if data storage pl_roost:print nutlet \
    run return run \
        function pl_roost:print/nutlet_exists
data modify storage pl_roost:print cmd.nutlet \
    set value '{"translate": "pl_roost.missing_nutlet",\
    "fallback": "(Missing Nutlet Datapack)",\
    "color":"red"}'