# this function invoke by "/function #nutlet:config" in nutlet datapack
data modify storage nutlet:config list append value \
    {description:"Whether to print version info of Roost when login the world.",\
    name:"PL Roost:Print Version", storage_path:"pl_roost:config showVersion", acceptable:[1b, 0b],\
    default:"1b", type:"storage"}
data modify storage nutlet:config list append value \
    {description:"How many game ticks Roost produce one item.",\
    name:"PL Roost:Roost Speed", objective:"$pl_roost.roost_speed", range:"1..2147483647",\
    default:480, type:"scoreboard"}
data modify storage nutlet:config list append value \
    {description:"How many game ticks Chicken Incubator produce one chicken.",\
    name:"PL Roost:Incubator Speed", objective:"$pl_roost.incubator_speed", range:"1..2147483647",\
    default:40, type:"scoreboard"}