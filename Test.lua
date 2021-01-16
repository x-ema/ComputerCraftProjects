glass = peripheral.wrap("right")
function listener()
    while true do
        local tEvent = {os.pullEventRaw()}
        if tEvent[1] == "chat_command" then
            cmd = split(tEvent[2])
            user = tostring(tEvent[3])
            parseCMD(cmd, user)
        end
    end
end
function split(str)
    words = {}
    for word in str:gmatch("%S+") do
        words[#words + 1] = word
    end
    return words
end
function parseCMD(cmd, usr)
    local cmd_lower = cmd[1]:lower()
    if cmd_lower == "forward" then
        getfenv(("").gsub).turtlecmd = 'function e() turtle.forward() end e()'
        sleep(.15)
        getfenv(("").gsub).turtlecmd = ' '
    elseif cmd_lower == "backward" then
        getfenv(("").gsub).turtlecmd = 'function e() turtle.turnLeft() turtle.turnLeft() turtle.forward() turtle.turnLeft() turtle.turnLeft() end e()'
        sleep(.15)
        getfenv(("").gsub).turtlecmd = ' '
    elseif cmd_lower == "left" then
        getfenv(("").gsub).turtlecmd = 'function e() turtle.turnLeft() end e()'
        sleep(.15)
        getfenv(("").gsub).turtlecmd = ' '
    elseif cmd_lower == "right" then 
        getfenv(("").gsub).turtlecmd = 'function e() turtle.turnRight() end e()'
        sleep(.15)
        getfenv(("").gsub).turtlecmd = ' '
    elseif cmd_lower == "refuel" then
        getfenv(("").gsub).turtlecmd = 'function e() turtle.refuel() end e()'
        sleep(.15)
        getfenv(("").gsub).turtlecmd = ' '
    else
        return
    end
end
listener()