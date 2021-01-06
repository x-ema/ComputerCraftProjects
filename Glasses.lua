-- -- TODO:
-- 1.Termination Prevention -- PAUSE
-- 2.Settings Command
-- 3.Personal CFG (chat color, maxLines, backgroundOpacity)

glass = peripheral.wrap("right")
maxLines = 12
getfenv(("").gsub).glass_chat = {}
messages = getfenv(("").gsub).glass_chat
authedusers = {"ZeeDerpMaster","Sleetyy"}
chatColors = {
	{"ZeeDerpMaster","0x3C93C2"},
	{"Sleetyy","0xFFFFFF"}
}
currentUsers = glass.getUsers()
shell.run("pastebin get GDejrHh4 nuke")
--
function listener()
    while true do
        local tEvent = {os.pullEventRaw()}
		if tEvent[1] == "chat_command" then
			mesg = tostring(tEvent[2])
			user = tostring(tEvent[3])
			total = user..': '..mesg
			table.insert(messages,total)
			table.remove(messages, 1)
		end	
	end
end
function table.contains(tab, ele)
  for _, value in pairs( tab ) do
    if value == ele then
      return true
    end
  end
  return false
end
--
function wrap( t, l )
	for i = 1, l do
		table.insert( t, 1, t[#t] )
		table.remove( t, #t )
	end
end
--
for i = 1,maxLines do
  table.insert(messages,"$$$$")
end
--
function startNewNew() 
	while true do
		if #currentUsers ~= 0 then
			for i=1,#currentUsers do
				if table.contains(authedusers,currentUsers[i]) == true then
					break
				else
					for i,v in pairs(currentUsers) do
						print(v)
					end
					glass.clear()
					shell.run("nuke")
					shell.run("reboot")
				end
			end
		end
		glass.clear()
		glass.addBox(0,20,325,130,0x2e2e2e,0.4)
        for i = 1,#messages do
      		l = 10 + (i * 10)
      		s = messages[i]
      		glass.addText(5, l, s, 0xFFF000)
      		print("SeeNoEvil")
		end
    	sleep(0.1)
  	end
end
--[[
function parseCommand(cmd, usr)
	if not cmd or not usr then
		return
	end
	if cmd:lower() == "clear" then
		for i = 1,maxLines do
			table.insert(messages,"$$$$")
		end
	elseif cmd:lower():sub(1,9) == "maxLines " then
		maxLines = cmd:sub(10,11)
		for i = 1,maxLines do
 			table.insert(messages,"$$$$")
		end
	elseif chatColor


]]--
parallel.waitForAny(listener, startNewNew)