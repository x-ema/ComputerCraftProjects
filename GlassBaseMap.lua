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
nodes = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"}
nodeIndex = 1
getfenv(("").gsub).playerList = {}

repeat
    local first = 'getfenv(("").gsub).node'..nodes[nodeIndex]
    print(nodeIndex)
    print(first)
    local final = 'return '..first
    print(final)
    local test = loadstring(final)()
    print(test)
    if test == "true" then 
        for i,v in pairs(getfenv(("").gsub).playerList) do 
            print(v)
        end
    end
    nodeIndex = 1 + nodeIndex
    sleep(1)
    if nodeIndex > 26 then
        nodeIndex = 1
    end
until nodeIndex == 27
