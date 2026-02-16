data modify storage pl_roost:print cmd.error \
    set value '{"translate": "pl_roost.load_resourcepack",\
        "fallback": "(Missing Resource Pack)"},\
        {"translate": "pl_roost.load_unexpected_version",\
        "color": "dark_red",\
        "fallback": "(Be loaded to UNEXPECTED version!)"}'