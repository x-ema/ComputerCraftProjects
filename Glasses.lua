-- -- TODO:
-- 1.Termination Prevention -- PAUSE
-- 2.Settings Command
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
 
currentUsers = glass.getUsers()
shell.run("delete nuke")
shell.run("pastebin get GDejrHh4 nuke")
--
function listener()
    while true do
        local tEvent = {os.pullEventRaw()}
		if tEvent[1] == "chat_command" then
			parseCommand(tEvent[2],tEvent[3])
            -- mesg = tostring(tEvent[2])
            -- user = tostring(tEvent[3])
            -- total = user .. ': ' .. mesg
            -- table.insert(messages, total)
            -- table.remove(messages, 1)
        end
    end
end
function table.contains(tab, ele)
    for _, value in pairs(tab) do if value == ele then return true end end
    return false
end
--
function wrap(t, l)
    for i = 1, l do
        table.insert(t, 1, t[#t])
        table.remove(t, #t)
    end
end
--
for i = 1, maxLines do table.insert(messages, "$$$$") end
--

-- this function takes the message in format name: message and pulls the name out
-- also accounts for any message including the split character ':'
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
        glass.addBox(0, 20, 325, 70, 0x000000, 0.5)
        for i = 1, #messages do
            pos = 10 + (i * 10)
            message = messages[i]
            color = chatColors[getName(message)]
            glass.addText(5, pos, message, color)
        end
        sleep(0.1)
    end
end
function parseCommand(cmd, usr)
    if not cmd or not usr then
        return
    end
    if cmd:lower() == "clear" then
        for i = 1,maxLines do
            table.insert(messages,"$$$$")
        end
    elseif cmd:lower():sub(1,9) == "maxlines " then
        maxLines = cmd:sub(10,11)
        for i = 1,maxLines do
            table.insert(messages,"$$$$")
        end
	elseif cmd:lower():sub(1,10) == "chatcolor " then
		color = cmd:sub(11,17)
	else 
	mesg = tostring(cmd)
    user = tostring(user)
    total = user .. ': ' .. mesg
    table.insert(messages, total)
	table.remove(messages, 1)
	end
end
parallel.waitForAny(listener, startNewNew)