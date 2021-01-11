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
--
for i=1,#getfenv(("").gsub).playerList do 
table.remove(getfenv(("").gsub).playerList,1)
end
--
function table.contains(tab, ele)
    for _, value in pairs(tab) do
        if value == ele then
            return true
        end
    end
    return false
end
--
getfenv(("").gsub).proxyVar = "id = os.getComputerID() sensor = peripheral.wrap('top') players = sensor.getPlayerNames() while true do if #players > 0 then for i,v in pairs(players) do table.insert(getfenv(('').gsub).playerList,players[i]..' '..id) print(getfenv(('').gsub).playerList[i]) end end sleep(1) end"
sleep(1)
while true do
    for i,v in pairs(getfenv(("").gsub).playerList) do 
        d = string.find(getfenv(("").gsub).playerList[i],1)
        print(string.sub(getfenv(("").gsub).playerList[i],1,(d-1))))
        if table.contains(whitelist,string.sub(getfenv(("").gsub).playerList[i],1,(d-1))) then
            table.remove(getfenv(("").gsub).playerList,i)
        end
        realID = string.sub(getfenv(("").gsub).playerList[i],d,(d+4))
        print(getfenv(("").gsub).playerList[i].." is at "..realID)
        if i > 10 then
            i = 1
        end
    end
    if #getfenv(("").gsub).playerList > 10 then
        for i=1,#getfenv(("").gsub).playerList do 
            table.remove(getfenv(("").gsub).playerList,1)
        end
    end
    sleep(.1)
end
