local event = require("event")
local tunnel = require("component").tunnel
local modem = require("component").modem

modem.open(2412)

modem.broadcast(2412, "robot=component.proxy(component.list('robot')())")

local function receive(event,_,_,_,_,port,bool) --event,2,linkingCard,4,5,msg1,msg2,msg3,msg4.
  modem.broadcast(1,"nanomachines","setInput",port,bool)
  print(1,"nanomachines","setInput",port,bool)
end

event.ignore("modem_message", receive)
event.listen("modem_message", receive)