
-- This is the node that will be distributed around the base.
-- Variable per node
-- if node == true, start writing, when false, clear. ezpz
sensor = peripheral.wrap("top")
closePlayers = sensor.getPlayerNames()
masterPlayerTable = getfenv(("").gsub).playerList
print("What node is this?")
input = read()
function updateVar(nodeNum,bool)
nodeVar = 'getfenv(("").gsub).node'..nodeNum..' = "'..bool..'"'
loadstring(nodeVar)()
end
while true do
if #closePlayers > 0 then
    updateVar(input,"true")
    for i=1,#closePlayers do
        if closePlayers[i] ~= "ZeeDerpMaster" and closePlayers[i] ~= "Sleetyy" then
        table.insert(masterPlayerTable,closePlayers[i])
        else
            print(closePlayers[i])
        end
        if #closePlayers == 0 then
            updateVar(input,"false")
            getfenv(("").gsub).playerList = {}
            break
        end
    end
    if #masterPlayerTable > 10 then
        getfenv(("").gsub).playerList = {}
    end
end
sleep(.1)
end



