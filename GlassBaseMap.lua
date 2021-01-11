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
rednet.open("top")
rednet.broadcast("sensor = peripheral.wrap("top") playerList = sensor.getPlayerNames() if #playerList > 0 then rednet.send(id,playerList) end")