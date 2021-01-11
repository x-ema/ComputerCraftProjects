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
    local x = getfenv(('node'..nodenum).gsub).prox
    if x == true then
        for i,v in pairs(masterPlayerTable) do 
            print(v)
        end
    end
until x == nil