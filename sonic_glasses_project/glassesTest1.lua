local component = require("component")
local event = require("event")
local tty = require("tty").clear()
local glasses = component.glasses
local buttons = {}
local buttonsNames = {}

local xV, yV

-------------Button activation-------------
local function box1F()
  print("Box 1 was pressed.")
end
local function box2F()
  print("Don't touch me you perv!")
end
local function box3F()
  print("Is it working?")
end
-------------------------------------------
local function createNewButton(name,label,x,y,w,h,cR,cG,cB,callback)
  table.insert(buttonsNames, name)
  buttons[name] = {
    rect = glasses.addRect(),
    lbl = glasses.addTextLabel(),
    posRect = {x,y},
    sizeRect = {w,h},
    colo = {cR,cB,cG},
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

local function initialize()
  
  createNewButton("box1","Box 1",60,15,50,20,0,255,0, box1F)
  createNewButton("box2","Box 2",2,25,60,20,0,0,255, box2F)
  createNewButton("box3","Box 3",80,80,40,20,255,0,0, box3F)
  
  event.listen("interact_overlay", clickEvent)
  --event.pull("interrupted")
  --event.ignore("interact_overlay", clickEvent)
end

local function update()
  
  
  for i in pairs(buttonsNames) do
    buttons[buttonsNames[i]].rect.setPosition(buttons[buttonsNames[i]].posRect[1]),buttons[buttonsNames[i]].posRect[2])
    --buttons[buttonsNames[i]].lbl.setPosition(buttons[buttonsNames[i]].posTxt[1]),buttons[buttonsNames[i]].posTxt[2])
    
    --buttons[buttonsNames[i]].rect.setSize(buttons[buttonsNames[i]].sizeRect[1]),buttons[buttonsNames[i]].sizeRect[2])

    if event.pull("interact_overlay") then
       --print("Pressed it!")
      if 
        xV >= buttons[buttonsNames[i]].posRect[1] and xV <= buttons[buttonsNames[i]].posRect[1]+buttons[buttonsNames[i]].sizeRect[1] and
        yV >= buttons[buttonsNames[i]].posRect[2] and yV <= buttons[buttonsNames[i]].posRect[2]+buttons[buttonsNames[i]].sizeRect[2] then
        --print("Pressed" .. buttonsNames[i])
        buttons[buttonsNames[i]].callbk()
    end
  end
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