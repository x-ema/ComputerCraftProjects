
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
        table.insert(masterPlayerTable,closePlayers[i])
        if #closePlayers == 0 then
            updateVar(input,"false")
            getfenv(("").gsub).playerList = {}
            break
        end
    end
end
sleep(.1)
end



