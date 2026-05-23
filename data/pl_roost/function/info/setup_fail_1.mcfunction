playsound block.vault.insert_item_fail player @s ~ ~ ~
$tellraw @s \
    {"translate": "pl_roost.info.setup_fail_1",\
    "bold": true, "color": "red",\
    "fallback": "Hit %s please",\
    "with":[{\
        "translate": "$(block)"}]}
