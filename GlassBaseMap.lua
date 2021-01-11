--- Project Idea ---
-- Small Scale display of top down area of base
-- Sensor nodes every 16 blocks around the edge
-- When someone enters the influence of a node, they are displayed on glasses
-- Not illegal, doesnt use sensor.sonicScan()
-- Not illegal, doesn't keep a log.
-- Authorized user protection >:D
-- Wish me luck :)
sensorData = {}
glass = peripheral.wrap("right")
getfenv(("").gsub).playerList = {}
getfenv(("").gsub).proxyVar = ("id = os.getComputerID() sensor = peripheral.wrap('top') players = sensor.getPlayerNames() while true do if #players > 0 then for i,v in pairs(players) do getfenv(('').gsub).playerList = players[i]..' '..id end for i,v in pairs(players) do print(v) end sleep(.1) end")
sleep(5)
while true do
    for i,v in pairs(getfenv(("").gsub).playerList) do 
        d = string.find(getfenv(("").gsub).playerList[i],1)
        print(getfenv(("").gsub).playerList[i])
        realID = string.sub(getfenv(("").gsub).playerList[i],d,(d+4))
        print(realID)
end
