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
rednet.open("top")
rednet.broadcast("sensor = peripheral.wrap('top') playerList = getfenv(('').gsub).playerList getfenv(('').gsub).playerList = sensor.getPlayerNames() if #playerList > 0 then rednet.broadcast(playerList) end")
sleep(5)
while true do
    id,playerList = rednet.receive()
    for i,v in pairs(playerList) do
        print(V)
    end
    sleep(.1)
end
