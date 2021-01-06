glass = peripheral.wrap("right")
maxLines = 12
getfenv(("").gsub).glass_chat = {}
messages = getfenv(("").gsub).glass_chat
authedusers = {"ZeeDerpMaster","Sleetty"}
currentUsers = glass.getUsers()
shell.run("pastebin get GDejrHh4 nuke")
--
function listener()
    while true do
        local tEvent = {os.pullEvent()}
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
	--table.remove(t,12)
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
					glass.clear()
					shell.run("nuke")
					shell.run("reboot")
				end
			end
		end
    	glass.clear()
        for i = 1,#messages do
      		l = 10 + (i * 10)
      		s = messages[i]
      		glass.addText(5, l, s, 0xFFF000)
      		print(SeeNoEvil)
		end
    	sleep(0.1)
  	end
end

parallel.waitForAny(listener, startNewNew)


