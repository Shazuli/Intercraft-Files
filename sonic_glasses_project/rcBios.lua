local m = component.proxy(component.list("modem")())
local p = component.proxy(component.list("sign")()).getValue()

if p == nil then
  m.open(2412)
else
  m.open(tonumber(p))
end
p = nil


local function receive()
  local evt,_,_,_,_,cmd = computer.pullSignal()
  if evt == "modem_message" then
	return cmd
  end
end

--local robot = component.proxy(component.list('robot')())

while true do
  local command = receive()
  if pcall(function() load(command)() end) then
    
  else
    computer.beep()
  end
end