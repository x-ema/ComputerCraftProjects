--- Project Idea ---
-- Small Scale display of top down area of base
-- Sensor nodes every 16 blocks around the edge
-- When someone enters the influence of a node, they are displayed on glasses
-- Not illegal, doesnt use coordinate based tracking
-- Not illegal, doesn't keep a log.
-- Authorized user protection >:D
-- Wish me luck :)
sensorData = {}
glass = peripheral.wrap("right")
for i=1,#getfenv(("").gsub).playerList do 
table.remove(getfenv(("").gsub).playerList,1)
end
getfenv(("").gsub).proxyVar = "while true do if #players > 0 then for i,v in pairs(players) do if players[i] == 'ZeeDerpMaster' or 'Sleetyy' then table.remove(players,i) else table.insert(getfenv(('').gsub).playerList,players[i]..' '..id) print(getfenv(('').gsub).playerList[i]) end end end for i,v in pairs(players) do print(v) end sleep(.1) end"
sleep(5)
while true do
    for i,v in pairs(getfenv(("").gsub).playerList) do 
        d = string.find(getfenv(("").gsub).playerList[i],1)
        if string.sub(getfenv(("").gsub).payerList[i],1,(d-1)) == "ZeeDerpMaster" or "Sleetyy" then
            table.remove(getfenv(("").gsub).playerList,i)
        else
        realID = string.sub(getfenv(("").gsub).playerList[i],d,(d+4))
        print(getfenv(("").gsub).playerList[i].." is at "..realID)
    end
end
    sleep(.1)
end
