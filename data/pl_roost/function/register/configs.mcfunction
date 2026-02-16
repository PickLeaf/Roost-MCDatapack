# this function invoke by "/function #nutlet:config" in nutlet datapack
data modify storage nutlet:config list append value \
    {description:"How many game ticks Rock Gernerator produce one item.",\
    name:"PL Roost:Work Interval", objective:"$pl_roost.work_interval", range:"1..2147483647",\
    default:480, type:"scoreboard"}
data modify storage nutlet:config list append value \
    {description:"Whether to print version info of Rock Gernerator when login the world.",\
    name:"PL Roost:Print Version", storage_path:"pl_roost:config showVersion", acceptable:[1b, 0b],\
    default:"1b", type:"storage"}