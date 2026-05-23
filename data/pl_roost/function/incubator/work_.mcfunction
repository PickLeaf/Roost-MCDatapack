execute unless items block ~ ~ ~ container.4 \
    #pl_roost:egg \
    run return fail
function pl_roost:incubator/summon_chicken
item modify block ~ ~ ~ container.4 pl_roost:minus_one
