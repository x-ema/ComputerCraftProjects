--- Project Idea ---
-- Small Scale display of top down area of base
-- Sensor nodes every 16 blocks around the edge
-- When someone enters the influence of a node, they are displayed on glasses
-- IF YOU PLAN ON USING THIS AT YOUR BASE FOR ANY REASON ---
-- you need to edit lines 11(and any other occurances), changing "playerList" to something else,
-- and line 20, changing 'node' in 'gsub).node' to something else
glass = peripheral.wrap("right")
nodes = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"}
nodeIndex = 1
getfenv(("").gsub).playerList = {}
glassObjects = {}
glass.clear()
---
for i = 1, 10 do
    table.insert(glassObjects, "$$$$")
end
<<<<<<< HEAD
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
function updateGlass()
    
end
--
getfenv(("").gsub).proxyVar = "id = os.getComputerID() sensor = peripheral.wrap('top') players = sensor.getPlayerNames() while true do if #players > 0 then for i,v in pairs(players) do table.insert(getfenv(('').gsub).playerList,players[i]..' '..id) print(getfenv(('').gsub).playerList[i]) end end sleep(1) end"
sleep(1)
=======
---
>>>>>>> 9af2ba9088f159635788c662a43df4905d729f05
while true do
    local first = 'getfenv(("").gsub).node'..nodes[nodeIndex]
    print(nodeIndex)
    print(first)
    local final = 'return '..first
    print(final)
    local test = loadstring(final)()
    print(test)
    if test ~= "false" then 
        for i=1,#getfenv(("").gsub).playerList do
            local v = getfenv(("").gsub).playerList[i]
            local d = string.find(v,1)
            local name = string.sub(v,1,(d-1))
            local id = string.sub(v,d,(d+4))
            table.remove(glassObjects, 1)
            table.insert(glassObjects,name..' is at '..id)
        end
    end
    glass.clear()
    for i = 1, #glassObjects do
        pos = 10 + (i * 10)
        message = glassObjects[i]
        glass.addText(5, pos, message)
    end
    nodeIndex = 1 + nodeIndex
    if nodeIndex > 26 then
        nodeIndex = 1
    end
    sleep(1)
end
--