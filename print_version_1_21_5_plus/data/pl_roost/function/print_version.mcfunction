execute unless entity @p run return run \
    schedule function pl_roost:print_version 2t
tellraw @a [{"text": "Roost V1.3 [MC1.21.x]",\
    "hover_event": {"action": "show_text",\
    "value": {"text": "https://github.com/PickLeaf/Roost-MCDatapack"}},\
    "click_event": {"action": "open_url",\
    "url": "https://github.com/PickLeaf/Roost-MCDatapack"}},\
    {"translate": "pl_roost.load_resourcepack",\
    "fallback": " (Missing Resource Pack)"}]