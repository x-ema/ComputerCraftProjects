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
nodes = {"a","b","c","d","e","f","g","h","i","j","k","l","m","o","p","q","r","s","t","u","v","w","x","y","z"}
nodeIndex = 1
repeat 
    local first = 'getfenv(("").gsub).node'..nodes[nodeIndex]
    local final = 'return '..first
    local test = loadstring(final)()
    if test == true then 
        for i,v in pairs(masterPlayerTable) do 
            print(v)
        end
    end
    if nodeIndex > 26 then
        nodeIndex = 1
    end
until test == nil