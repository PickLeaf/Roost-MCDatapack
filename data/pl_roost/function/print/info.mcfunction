execute \
    unless entity @p \
    run return \
        run schedule function pl_roost:print/info 2t
function pl_roost:print/version
function pl_roost:print/link
function pl_roost:print/error
function pl_roost:print/nutlet
data remove storage pl_roost:print nutlet
function pl_roost:print/macro \
    with storage pl_roost:print cmd
data remove storage pl_roost:print cmd