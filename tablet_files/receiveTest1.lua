local event = require("event")
--local tunnel = require("component").tunnel

local function receive(m1,m2,m3,m4,m5,m6,m7,m8,m9) --event,2,linkingCard,4,5,msg1,msg2,msg3,msg4.
  --print(msg1,msg2,msg3,msg4)
  print(m1,m2,m3,m4,m5,m6,m7,m8,m9)
end

event.listen("modem_message", receive)