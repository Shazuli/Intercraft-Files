local tunnel = require("component").tunnel
local modem = require("component").modem
local event = require("event")

local port, bool, evt

local function receive() --event,2,linkingCard,4,5,msg1,msg2,msg3,msg4.
  evt,_,_,_,_,port,bool = event.pull("modem_message")
end

while true do
  
  evt,_,_,_,_,port,bool = event.pull("modem_message")
  --if evt == "modem_message" then
  print(1,"nanomachines","setInput",port,bool)
  modem.broadcast(1,"nanomachines","setInput",tonumber(port),bool)
end
--event.listen("modem_message", receive)