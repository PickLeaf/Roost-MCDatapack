execute if function pl_roost:is_daylight_cycle run return run \
    setblock ~ ~ ~ minecraft:repeating_command_block[facing=down]{Command:"\
        execute if predicate pl_roost:periodic_tick run \
            function pl_roost:work",auto:1b}

setblock ~ ~ ~ minecraft:repeating_command_block[facing=down]{Command:"\
    execute if predicate pl_roost:random_chance run \
        function pl_roost:work",auto:1b}