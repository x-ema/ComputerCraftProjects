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
    x = getfenv(('node'..nodenum).gsub).prox
    if x == true then
        for i,v in pairs(masterPlayerTable) do 
            print(v)
        end
    end
    nodenum = nodenum + 1
until x == nil
end