execute unless entity @p run return run \
    schedule function pl_roost:print_version 2t
tellraw @a [{"text": "Roost V1.3 [MC1.21.x] (Be loaded to WRONG version!)",\
    "hoverEvent": {"action": "show_text",\
    "contents": {"text": "https://github.com/PickLeaf/Roost-MCDatapack"}},\
    "clickEvent": {"action": "open_url",\
    "value": "https://github.com/PickLeaf/Roost-MCDatapack"}},\
    {"translate": "pl_roost.load_resourcepack",\
    "fallback": " (Missing Resource Pack)"}]