execute unless entity @p run return run \
    schedule function pl_roost:print_version 2t
tellraw @a {"text": "Roost V1.0 [MC1.21.1+]",\
    "hoverEvent": {"action": "show_text",\
    "contents": {"text": "https://github.com/PickLeaf/Roost-MCDatapack"}},\
    "clickEvent": {"action": "open_url",\
    "value": "https://github.com/PickLeaf/Roost-MCDatapack"}}