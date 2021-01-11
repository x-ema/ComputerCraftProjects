--- Project Idea ---
-- Small Scale display of top down area of base
-- Sensor nodes every 16 blocks around the edge
-- When someone enters the influence of a node, they are displayed on glasses
-- Not illegal, doesnt use coordinate based tracking
-- Not illegal, doesn't keep a log.
-- Authorized user protection >:D
-- Wish me luck :)
whitelist = {"ZeeDerpMaster","Sleetyy"}
glass = peripheral.wrap("right")
nodenum = 1
repeat 
    local first = 'getfenv(("").gsub.'..nodeNum
    local final = 'return '..first
    local test = loadstring(final)()
    if test == true then 
        for i,v in pairs(masterPlayerTable) do 
            print(v)
        end
    end
    if nodeNum > 32 then
        nodenum = 1
    end
until x == nil