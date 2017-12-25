local m = component.proxy(component.list("modem")())
m.open(2412)


local function receive()
  local evt,_,_,_,cmd = computer.pullSignal()
  if evt == "modem_message" then
	return cmd
  end
end

--local robot = component.proxy(component.list('robot')())

while true do
  local command = receive()
  if command then
    computer.beep()
  end
end