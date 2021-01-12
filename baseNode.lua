
-- This is the node that will be distributed around the base.
-- Variable per node
-- if node == true, start writing, when false, clear. ezpz
sensor = peripheral.wrap("top")
closePlayers = sensor.getPlayerNames()
id = os.getComputerID()
print("What node is this?")
input = read()
function updateVar(nodeNum,bool)
nodeVar = 'getfenv(("").gsub).node'..nodeNum..' = "'..bool..'"'
loadstring(nodeVar)()
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
while true do
if #closePlayers > 0 then
    updateVar(input,"true")
    for i=1,#closePlayers do
         sent = closePlayers[i]..' '..id
        if table.contains(getfenv(("").gsub).playerList,string.sub(sent,1,(string.find(sent,1) - 1))) then
            print("dupe")
        elseif closePlayers[i] ~= "ZeeDerpMaster" and closePlayers[i] ~= "Sleetyy" then
            table.insert(getfenv(("").gsub).playerList,sent)
        else
            print(closePlayers[i])
        end

        if #closePlayers == 0 then
            updateVar(input,"false")
            getfenv(("").gsub).playerList = {}
            break
        end
    end
    if #getfenv(("").gsub).playerList > 10 then
        getfenv(("").gsub).playerList = {}
    end
end
sleep(.5)
end



