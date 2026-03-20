# check completion of structure
execute if predicate pl_roost:structure_check_timer \
    unless predicate pl_roost:roost \
    run return run function pl_roost:machine/destroy
# redirect to work function
execute rotated as @s at @s \
    run function pl_roost:machine/work