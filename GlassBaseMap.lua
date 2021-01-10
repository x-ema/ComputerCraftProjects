--- Project Idea ---
-- Small Scale display of top down area of base
-- Sensor nodes every 16 blocks around the edge
-- When someone enters the influence of a node, they are displayed on glasses
-- Not illegal, doesnt use sensor.sonicScan()
-- Not illegal, doesn't keep a log.
-- Authorized user protection >:D
-- Wish me luck :)
getfenv(("").gsub).playerList = {}
sensorData = {}
glass = peripheral.wrap("right")
masterPlayerTable = getfenv(("").gsub).playerList
nodenum = 1
repeat 
    current = getfenv(('node'..nodenum).gsub).prox
    if current then
        for i,v in pairs(masterPlayerTable) do 
            print(v)
        end
    end
    if nodenum > 32 then 
        nodenum = 1
    else
    nodenum = nodenum + 1
    end
    print(nodenum)
    sleep(.1)
until x == nil