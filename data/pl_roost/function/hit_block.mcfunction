execute unless block ~ ~ ~ minecraft:hay_block run return fail
execute unless block ~ ~1 ~ #pl_roost:27_slots_container run return fail

setblock ~ ~ ~ minecraft:repeating_command_block[facing=down]{Command:"\
    execute if predicate pl_roost:periodic_tick run \
    function pl_roost:work",auto:1b}
summon minecraft:block_display ~ ~ ~ \
    {block_state:{Name:"minecraft:dispenser",\
    Properties:{"facing":"down"}},\
    transformation:{left_rotation:[0f,0f,0f,1f],\
    right_rotation:[0f,0f,0f,1f],\
    translation:[-0.505f,-0.505f,-0.505f],\
    scale:[1.01f,1.01f,1.01f]},\
    brightness:{block:15,sky:15},\
    Tags:["pl_roost.roost_display"]}
advancement grant @a[distance=..6] only pl_roost:roost