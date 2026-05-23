advancement grant @s only pl_roost:roost

execute unless data storage nutlet:var {caller:"hit_block"} \
    run return fail
execute unless block ~ ~ ~ minecraft:jack_o_lantern \
    run return run \
        function pl_roost:info/setup_fail_1 \
            {block: "block.minecraft.jack_o_lantern"}

data modify storage pl_roost:var stop \
    set value 1b
function nutlet:-m/facing/block_axis_align {handler:"pl_roost:roost/setup"}
execute if data storage pl_roost:var stop \
    run return run \
        data remove storage pl_roost:var stop

execute align xyz if entity \
    @n[tag=nutlet.display,dx=0,dz=0,dy=0] \
        run return fail

function nutlet:-m/facing/block_axis_align {handler:"pl_roost:roost/show_schematic"}