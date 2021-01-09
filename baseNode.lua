-- This is the node that will be distributed around the base.
-- Variable per node
-- if node == true, start writing, when false, clear. ezpz
sensor = peripheral.wrap("top")
closePlayers = senor.getPlayerNames()
masterPlayerTable = getfenv(("").gsub).playerList
print("What node is this?")
input = read()
pV = false
while true do
if #closePlayers > 0 then
    pV = true
    for i=1,#closePlayers do
        table.insert(masterPlayerTable,closePlayers[i])
    until #closePlayers == 0 then
        pV = false
        getfenv(("").gsub).playerList = {}
    end
end
sleep(.1)
end



