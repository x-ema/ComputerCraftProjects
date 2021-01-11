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
playerList = getfenv(("").gsub).playerList
rednet.open("right")
rednet.broadcast("sensor = peripheral.wrap('top') playerList = sensor.getPlayerNames() while true do if #playerList > 0 then getfenv(("").gsub).playerList = playerList end for i,v in pairs(playerList) do print(v) end sleep(.1) end")
sleep(5)
while true do
    for i,v in pairs(playerList) do
        print(V)
    end
    sleep(.1)
end
