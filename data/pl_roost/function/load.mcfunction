execute unless data storage pl_roost:config \
{version:"V1.6.1"} run return \
    run function pl_roost:version_changed {version:"V1.6.1"}

execute if data storage pl_roost:config {showVersion:1b} \
    run function pl_roost:print/info