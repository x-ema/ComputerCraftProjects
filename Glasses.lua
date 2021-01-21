local peripherals = {
  mount = function (self,peripheral_name)
    for _,p in pairs(peripheral.getNames()) do
      if peripheral.getType(p) == peripheral_name then return peripheral.wrap(p) else return false end
    end
  end
}

local chat = {
  sensor = peripherals:mount('openperipheral_sensor'),
  glass = peripherals:mount('openperipheral_glassesbridge'),
  --if not glass or not sensor then error('missing peripheral...') end,
  max_lines = 7,
  max_length = 325,
  margin_top = 10,
  margin_msg = 10,
  loadstring('getfenv(("").gsub).glass_chat = {}')(),
  messages = getfenv(("").gsub).glass_chat,
  authed = {},
  newAuthed = function (self,nam,color)
    self.authed[nam] = {}
    self.authed[nam].name = nam
    self.authed[nam].color = color
  end,
  
  addMsg = function (self,msg) self.messages[#self.messages + 1] = msg end,
  
  removeMsg = function (self,num) table.remove(self.messages,num) end,
  
  clearTable = function (self,tab) tab = {} end,
  cmds = {
    nuke = function (self,msg,usr) getfenv(("").gsub).glass_chat = {} self.glass.clear() os.reboot() end,
    maxlines = function (self,msg,usr)
      for i = 1,max_lines do self:removeMsg(1) end
      self.max_lines = tonumber(msg[2])
      for i = 1,max_lines do self:addMsg('$$$$') end
    end,
    chatcolor = function (self,msg,usr) authed[usr].color = loadstring('return '..msg[2])() end
  },
  
  split = function (self,str)
    words = {}
    for word in str:gmatch('%S+') do words[#words + 1] = word end return words
  end,
  
  contains = function (self,tab,val) for i = 1,#tab do if tab[i] == val then return true end return false end end,
  
  authCheck = function (self) for _,user in pairs(self.glass.getUsers()) do if not self.authed[user] then self.cmds.nuke() end end end,
  
  event_listen = function (self)
    self:authCheck()
    _,msg,usr = os.pullEvent('chat_command')
    msg = self:split(msg)
    if self.cmds[msg[1]:lower()] then
      self.cmds[msg[1]:lower()](msg,usr)
    else
      msg = usr..' : '..table.concat(msg,' ')
      if self.glass.getStringWidth(table.concat(msg,' ')) > 325 then
        self:addMsg(table.concat(msg,' '):sub(1,48))
        self:addMsg(table.concat(msg,' '):sub(49,#msg))
        self:removeMsg(1)
        self:removeMsg(1)
      else
        self:addMsg(table.concat(msg,' '))
        self:removeMsg(1)
      end
    end
  end,
  
  main = function (self)
    self:authCheck()
    self.glass.clear()
    self.glass.addBox(0,20,335,self.max_lines * self.margin_top,0x000000,0.5)
    for i = 1, #self.messages do
      self.glass.addText(5, self.margin_top + (i * self.margin_msg),self.messages[i],self.messages[i]:sub(1,self.messages[i]:find(':') - 2).color)
    end
    if #glass.getUsers() > 0 then
      users = self.glass.getUsers()
      self.glass.addBox(336,20,91,60,0xFFFFFF,0.5)
      for i = 1, #users do
        glass.addText(337,self.margin_top + (i * self.margin_msg),users[i],self.authed[users[i]].color)
      end
    end
    sleep(0.01)
  end,
  start = function (self) parallel.waitForAny(self:main(),self:event_listen()) end
}
  
  
chat:newAuthed('Sleetyy',0xFFFFFF)
chat:newAuthed('ZeeDerpMaster',0x3C93C2)
chat:newAuthed('icedfrappuccino',0x883388)
chat:newAuthed('korvuus',0xFFFFFF)
chat:newAuthed('SoundsOfMadness',0x883388)
chat:newAuthed('mpfthprblmtq',0x800080)
chat:start()
