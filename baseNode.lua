---DEPRACATED---
-- This is the node that will be distributed around the base.
rednet.open("right")
id,prog = rednet.receive()
loadstring(prog)()
