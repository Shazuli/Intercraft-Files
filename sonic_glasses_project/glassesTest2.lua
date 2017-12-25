local component = require("component")
local event = require("event")
--local computer = require("computer")
local tty = require("tty").clear()

local glasses = component.glasses
local tunnel = component.tunnel

local buttons = {}
local buttonsNames = {}
--local states = {}

local xV, yV = -1,-1


------------Button Activation------------
local function port1F()
  --print("Box 1 was pressed.")
  buttons["port1"].state = not buttons["port1"].state
  --tunnel.send("port1",buttons["port1"].state)
  
  if buttons["port1"].state then
    buttons["port1"]["rect"].setColor(0,255,0)
	tunnel.send("1",true)
  end
  if not buttons["port1"].state then
    buttons["port1"]["rect"].setColor(255,0,0)
	tunnel.send(1,false)
  end
end

local function port2F()
  buttons["port2"].state = not buttons["port2"].state
  
  if buttons["port2"].state then
    buttons["port2"]["rect"].setColor(0,255,0)
	tunnel.send(2,true)
  end
  if not buttons["port2"].state then
    buttons["port2"]["rect"].setColor(255,0,0)
	tunnel.send(2,false)
  end
end
local function port3F()
  buttons["port3"].state = not buttons["port3"].state
  
  if buttons["port3"].state then
    buttons["port3"]["rect"].setColor(0,255,0)
	tunnel.send(3,true)
  end
  if not buttons["port3"].state then
    buttons["port3"]["rect"].setColor(255,0,0)
	tunnel.send(3,false)
  end
end
local function port4F()
  buttons["port4"].state = not buttons["port4"].state
  
  if buttons["port4"].state then
    buttons["port4"]["rect"].setColor(0,255,0)
	tunnel.send(4,true)
  end
  if not buttons["port4"].state then
    buttons["port4"]["rect"].setColor(255,0,0)
	tunnel.send(4,false)
  end
end
local function port5F()
  buttons["port5"].state = not buttons["port5"].state
  
  if buttons["port5"].state then
    buttons["port5"]["rect"].setColor(0,255,0)
	tunnel.send(5,true)
  end
  if not buttons["port5"].state then
    buttons["port5"]["rect"].setColor(255,0,0)
	tunnel.send(5,false)
  end
end
local function port6F()
  buttons["port6"].state = not buttons["port6"].state
  
  if buttons["port6"].state then
    buttons["port6"]["rect"].setColor(0,255,0)
	tunnel.send(6,true)
  end
  if not buttons["port6"].state then
    buttons["port6"]["rect"].setColor(255,0,0)
	tunnel.send(6,false)
  end
end
local function port7F()
  buttons["port7"].state = not buttons["port7"].state
  
  if buttons["port7"].state then
    buttons["port7"]["rect"].setColor(0,255,0)
	tunnel.send(7,true)
  end
  if not buttons["port7"].state then
    buttons["port7"]["rect"].setColor(255,0,0)
	tunnel.send(7,false)
  end
end
local function port8F()
  buttons["port8"].state = not buttons["port8"].state
  
  if buttons["port8"].state then
    buttons["port8"]["rect"].setColor(0,255,0)
	tunnel.send(8,true)
  end
  if not buttons["port8"].state then
    buttons["port8"]["rect"].setColor(255,0,0)
	tunnel.send(8,false)
  end
end
local function port9F()
  buttons["port9"].state = not buttons["port9"].state
  
  if buttons["port9"].state then
    buttons["port9"]["rect"].setColor(0,255,0)
	tunnel.send(9,true)
  end
  if not buttons["port9"].state then
    buttons["port9"]["rect"].setColor(255,0,0)
	tunnel.send(9,false)
  end
end
local function port10F()
  buttons["port10"].state = not buttons["port10"].state
  
  if buttons["port10"].state then
    buttons["port10"]["rect"].setColor(0,255,0)
	tunnel.send(10,true)
  end
  if not buttons["port10"].state then
    buttons["port10"]["rect"].setColor(255,0,0)
	tunnel.send(10,false)
  end
end
-----------------------------------------

local function createNewButton(name,label,x,y,w,h,cR,cG,cB,callback)
  table.insert(buttonsNames, name)
  buttons[name] = {
    rect = glasses.addRect(),
	lbl = glasses.addTextLabel(),
    posRect = {x,y},
    sizeRect = {w,h},
    colo = {cR,cB,cG},
	state = false,
	callbk = callback,
	
	posTxt = {x + (w / 2) - ((string.len(label) / 2) + (w / 4.5)),y + (h / 3)}
	--posTxt = {}
  }
  
  
  --[[buttons[name]["rect"].setPosition(buttons[name]["posRect"][1],buttons[name]["posRect"][2])
  buttons[name]["rect"].setSize(buttons[name]["sizeRect"][1],buttons[name]["sizeRect"][2])
  buttons[name]["rect"].setColor(buttons[name]["colo"][1],buttons[name]["colo"][2],buttons[name]["colo"][3])--]]
  buttons[name]["rect"].setPosition(x,y)
  buttons[name]["rect"].setSize(w,h)
  buttons[name]["rect"].setColor(cR,cG,cB)
  buttons[name]["rect"].setAlpha(0.4)
  
  buttons[name]["lbl"].setPosition(buttons[name]["posTxt"][1],buttons[name]["posTxt"][2])
  buttons[name]["lbl"].setText(label)
  buttons[name]["lbl"].setScale(1)
  buttons[name]["lbl"].setColor(255,255,255)
  
end

function clickEvent(id, device, user, x, y, button, maxX, maxY)
  fX = x * (512 / maxX)
  fY = y * (288 / maxY)
  xV = fX
  yV = fY
  --return fX, fY
  
end

local function send()
  local evt,_,_,_,_,msg1,msg2,msg3,msg4 = event.pull("modem_message")
  
end

local function initialize()
  
  --createNewButton("box1","Box 1",60,15,50,20,0,255,0,true,port1F)
  --createNewButton("box2","Box 2",2,25,60,20,0,0,255,true",port2F)
  --createNewButton("box3","Box 3",80,80,40,20,255,0,0,true,port3F)
  
  createNewButton("port1","Port 1",2,8,45,15,255,0,0,port1F)
  createNewButton("port2","Port 2",2,28,45,15,255,0,0,port2F)
  createNewButton("port3","Port 3",2,48,45,15,255,0,0,port3F)
  createNewButton("port4","Port 4",2,68,45,15,255,0,0,port4F)
  createNewButton("port5","Port 5",2,88,45,15,255,0,0,port5F)
  createNewButton("port6","Port 6",2,108,45,15,255,0,0,port6F)
  createNewButton("port7","Port 7",2,128,45,15,255,0,0,port7F)
  createNewButton("port8","Port 8",2,148,45,15,255,0,0,port8F)
  createNewButton("port9","Port 9",2,168,45,15,255,0,0,port9F)
  createNewButton("port10","Port 10",2,188,45,15,255,0,0,port10F)
  
  --[[for i,10 do 
    createNewButton("port" .. i,"Port " .. i,2,8*i,45,15,255,0,0,signal)
	
  end--]]
  event.listen("interact_overlay", clickEvent)
  --event.listen("modem_message", send)
  --event.pull("interrupted")
  --event.ignore("interact_overlay", clickEvent)
end

local function update()
  os.sleep(1/20)
  
  for i in pairs(buttonsNames) do
    --buttons[buttonsNames[i]].rect.setPosition(buttons[buttonsNames[i]].posRect[1]),buttons[buttonsNames[i]].posRect[2])
	--buttons[buttonsNames[i]].lbl.setPosition(buttons[buttonsNames[i]].posTxt[1]),buttons[buttonsNames[i]].posTxt[2])
	
	--buttons[buttonsNames[i]].rect.setSize(buttons[buttonsNames[i]].sizeRect[1]),buttons[buttonsNames[i]].sizeRect[2])
	
	--if event.pull("interact_overlay") then
      --print("Pressed it!")
	  if 
        xV >= buttons[buttonsNames[i]].posRect[1] and xV <= buttons[buttonsNames[i]].posRect[1]+buttons[buttonsNames[i]].sizeRect[1] and
        yV >= buttons[buttonsNames[i]].posRect[2] and yV <= buttons[buttonsNames[i]].posRect[2]+buttons[buttonsNames[i]].sizeRect[2] then
	    --print("Pressed" .. buttonsNames[i])
		buttons[buttonsNames[i]].callbk()
		
		--buttons[buttonsNames[i]]["rect"].setColor(1,1,1)
		--os.sleep(0.2)
		--buttons[buttonsNames[i]].rect.setColor(buttons[buttonsNames[i]].rect.colo[1],buttons[buttonsNames[i]].rect.colo[2],buttons[buttonsNames[i]].rect.colo[3])
		xV = -1
		yV = -1
		
		--button[buttonsNames[i]]["rect"].setColor(255-button[buttonsNames[i]]["colo"][1],255-button[buttonsNames[i]]["colo"][2],255-button[buttonsNames[i]]["colo"][3])
		--buttons[buttonsNames[i]]["rect"].setColor(buttons[255-buttonsNames[i]]["colo"][1].tonumber,255-buttons[buttonsNames[i]]["colo"][2].tonumber,255-buttons[buttonsNames[i]]["colo"][3].tonumber)
		
	    
		--if x >= buttons[i][1] and x <= buttons[i][1]+buttons[i][3] and y >= buttons[i][2] and y <= buttons[i][2]+buttons[i][4] then
	  end
	--end
  end
end

initialize()




for i in pairs(buttonsNames) do
  --print(buttonsNames[i] .. "'s coordinates:")
  --print("X = " .. buttons[buttonsNames[i]].posRect[1])
  --print("Y = " .. buttons[buttonsNames[i]].posRect[2])
  
  
  
end

--print("X = " .. buttons[1].posRect[1])
--print("Y = " .. buttons[1].posRect[2])


while true do 
  update()
  
  
end




--[[
local box1 = glasses.addRect()
box1.setSize(10,10)
box1.setPosition(2,2)
box1.setColor(255,0,0)
--]]