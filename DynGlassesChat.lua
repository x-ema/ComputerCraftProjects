m = peripheral.wrap("left")
os.loadAPI("json")
msgs = {}
maxLines = 12
 
 
 
 
for i = 1,maxLines do
  table.insert(msgs,"$$$$")
end
 
--every 0.5 seconds
while true do
  t = http.get("http://tekkit.craftersland.net:25800/up/world/world/").readAll()
 
  found = false
  obj = json.decode(t)
  --print(t)
  --check for new messages
 
  if #obj.updates ~= 0 then
  for i = 1,#obj.updates do
    if obj.updates[i].type == "chat" then
        z=1
      --if not found then
        account = obj.updates[i].account
        pstr = account..': '..obj.updates[i].message
        term.setCursorPos(1,1)
        term.clear()
        print(pstr)
      if not found then
        dupe = false
        for j = 1,#msgs do
          if msgs[j] == pstr then
           
           
           
            dupe = true
            break
          end
        end
        if not dupe then
          found = true
        end
      end
      if found then
        table.remove(msgs, 1)
        table.insert(msgs,pstr)
      end
    end
  end
  end
 
  --if there is a new message in the list somewhere
  if found then
   
    m.clear()
 
        for i = 1,#msgs do
      l = 10 + (i * 10)
      s = msgs[i]
      m.addText(5, l, s, 0xFFF000)
      print(msgs[i])
    end
  end
 
 
  sleep(0.5)
end