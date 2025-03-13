execute unless block ~ ~ ~ minecraft:hay_block run return fail
execute unless block ~ ~1 ~ minecraft:barrel run return fail
setblock ~ ~ ~ minecraft:repeating_command_block[facing=down]{Command:"\
    execute if predicate pl_roost:periodic_tick run \
    function pl_roost:work",auto:1b}
advancement grant @a[distance=..6] only pl_roost:roost