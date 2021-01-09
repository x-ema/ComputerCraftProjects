sensor = peripheral.wrap("top")
authedusers = {"ZeeDerpMaster","Sleetyy"}
closePlayers = sensor.getPlayerNames()

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
while true do
for i=1,#closePlayers do
    if table.contains(authedusers,closePlayers[i]) then
        print('Welcome '..closePlayers[i])
        print('')
else
    print("Frick off")
end
end
sleep(.5)
end