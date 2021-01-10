-- This is the node that will be distributed around the base.
-- Variable per node
-- if node == true, start writing, when false, clear. ezpz
sensor = peripheral.wrap("top")
closePlayers = sensor.getPlayerNames()
masterPlayerTable = getfenv(("").gsub).playerList
print("What node is this?")
input = read()
getfenv((input).gsub).prox = false
while true do
if #closePlayers > 0 then
    getfenv((input).gsub).prox = true
    for i=1,#closePlayers do
        table.insert(masterPlayerTable,closePlayers[i])
        if #closePlayers == 0 then
            getfenv((input).gsub).prox = false
            getfenv(("").gsub).playerList = {}
            break
        end
    end
end
sleep(.1)
end



