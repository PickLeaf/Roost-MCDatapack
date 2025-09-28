$setblock ~ ~ ~ minecraft:repeating_command_block[facing=down]{Command:"\
    execute if predicate $(roostWorkIntervalMethod) run \
        function pl_roost:work",auto:1b}