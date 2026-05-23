# check completion of structure
execute if predicate pl_roost:structure_check_timer \
    if function pl_roost:incubator/structure_check \
    run return fail
# redirect to work function
execute at @s \
    run function pl_roost:incubator/work