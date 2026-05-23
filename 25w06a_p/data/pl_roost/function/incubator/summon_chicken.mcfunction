execute if items block ~ ~ ~ container.4 \
    minecraft:egg \
    run return run \
        summon minecraft:chicken ^ ^1.75 ^1 \
            {Motion: [0d, 0.6d, 0d], variant: "minecraft:temperate"}
execute if items block ~ ~ ~ container.4 \
    minecraft:blue_egg \
    run return run \
        summon minecraft:chicken ^ ^1.75 ^1 \
            {Motion: [0d, 0.6d, 0d], variant: "minecraft:cold"}
execute if items block ~ ~ ~ container.4 \
    minecraft:brown_egg \
    run return run \
        summon minecraft:chicken ^ ^1.75 ^1 \
            {Motion: [0d, 0.6d, 0d], variant: "minecraft:warm"}