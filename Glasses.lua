-- -- TODO:
-- 1.Termination Prevention -- PAUSE
-- 2.Settings Command -- Complete
-- 3.Personal CFG (chat color, maxLines, backgroundOpacity) -- QOL -- Much Later
glass = peripheral.wrap("right")
maxLines = 7
getfenv(("").gsub).glass_chat = {}
messages = getfenv(("").gsub).glass_chat
authedusers = {"ZeeDerpMaster", "Sleetyy", "mpfthprblmtq"}

chatColors = {}
chatColors["ZeeDerpMaster"] = 0x3C93C2
chatColors["Sleetyy"] = 0xFFFFFF
chatColors["mpfthprblmtq"] = 0x800080

--local authed['ZeeDerpMaster'].color = 0x3C93C2
--local authed['Sleetyy'].color = 0xFFFFFF
--local authed['mpfthprblmtq'].color = 0x800080

currentUsers = glass.getUsers()
shell.run("delete nuke")
shell.run("pastebin get GDejrHh4 nuke")
--
function split(str)
    words = {}
    for word in str:gmatch("%S+") do
        words[#words + 1] = word
    end
    return words
end
--
function listener()
    while true do
        local tEvent = {os.pullEventRaw()}
        if tEvent[1] == "chat_command" then
            cmd = split(tEvent[2])
            mesg = tostring(tEvent[2])
            user = tostring(tEvent[3])
            parseCMD(cmd, user)
        end
    end
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
for i = 1, maxLines do
    table.insert(messages, "$$$$")
end
--
-- this function takes the message in format name: message and pulls the name out
-- also accounts for any message including the split character ':'
--
function getName(message)
    local name = nil
    while true do
        if string.find(message, ":") then
            message = string.match(message, "(.*):")
        else
            name = message
            break
        end
    end
    return name
end
--
function startNewNew()
    while true do
        if #currentUsers ~= 0 then
            for i = 1, #currentUsers do
                if table.contains(authedusers, currentUsers[i]) == true then
                    break
                else
                    for i, v in pairs(currentUsers) do
                        print(v)
                    end
                    glass.clear()
                    shell.run("nuke")
                    shell.run("reboot")
                end
            end
        end
        glass.clear()
        height = (maxLines * 10)
        glass.addBox(0, 20, 335, height, 0x000000, 0.5)
        for i = 1, #messages do
            pos = 10 + (i * 10)
            message = messages[i]
            color = chatColors[getName(message)]
            print(color)
            glass.addText(5, pos, message, color) -- and here
        end
        sleep(0.1)
    end
end
--
function parseCMD(cmd, usr)
    local cmd_lower = cmd[1]:lower()
    if cmd_lower == "clear" then
        for i = 1, tonumber(maxLines) do
            table.remove(messages, i)
            table.insert(messages, "$$$$")
        end
    elseif cmd_lower == "maxlines" then
		for i = 1, tonumber(maxLines) do
			table.remove(messages, 1)
		end
		maxLines = tonumber(cmd[2])
		  for i = 1, tonumber(maxLines) do
			table.insert(messages, "$$$$")
		end
    elseif cmd_lower == "chatcolor" then
        chatColors[usr] = loadstring("return " .. cmd[2])()
    else
		local cmd_msg = table.concat(cmd, " ")
			if glass.getStringWidth(cmd_msg) >= 325 then
				cutMsgOne = string.sub(cmd_msg,1,48)
				cutMsgTwo = string.sub(cmd_msg,49,string.len(cmd_msg))
				table.insert(messages, usr .. ": " .. cutMsgOne)
				table.insert(messages, usr .. ": " ..cutMsgTwo)
				table.remove(messages, 1)
				table.remove(messages, 1)
				else
				table.insert(messages, usr .. ": " .. cmd_msg)
				table.remove(messages, 1)
			
		end
    end
end
--
function lineWrap()







end
parallel.waitForAny(listener, startNewNew)
