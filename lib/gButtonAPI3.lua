local component = require("component")
local event = require("event")

--package.loaded["gButtonAPI3"] = nil

local API = {}

local glasses = component.glasses
--local tunnel = component.tunnel

API.buttons = {}
API.buttonsNames = {}

local xV, yV = -1,-1


function API.createNewButton(name,label,x,y,w,h,cR,cG,cB,alpha,callback)
  
  --API.buttonsNames[#buttonsNames+1] = name
  table.insert(API.buttonsNames, name)
  API.buttons[name] = {
    rect = glasses.addRect(),
	lbl = glasses.addTextLabel(),
    posRect = {x,y},
    sizeRect = {w,h},
    colorRect = {cR,cG,cB},
	alphaRect = alpha,
	state = false,
	customData = {},
	callbk = callback,
	
	posTxt = {x + (w / 2) - ((string.len(label) / 2) + (w / 4.5)),y + (h / 3)}
	--posTxt = {}
  }
  
  
  API.buttons[name]["rect"].setPosition(x,y)
  API.buttons[name]["rect"].setSize(w,h)
  API.buttons[name]["rect"].setColor(cR,cG,cB)
  API.buttons[name]["rect"].setAlpha(alpha)
  
  API.buttons[name]["lbl"].setPosition(API.buttons[name]["posTxt"][1],API.buttons[name]["posTxt"][2])
  API.buttons[name]["lbl"].setText(label)
  API.buttons[name]["lbl"].setScale(1)
  API.buttons[name]["lbl"].setColor(255,255,255)
  
end

function clickEvent(id, device, user, x, y, button, maxX, maxY)
  fX = x * (512 / maxX)
  fY = y * (288 / maxY)
  xV = fX
  yV = fY
  
end



local function initialize()
  
  glasses.removeAll()
  --package.loaded["myscript"] = nil
  event.ignore("interact_overlay", clickEvent)
  event.listen("interact_overlay", clickEvent)
  
  
end


initialize()


function API.update()
  os.sleep(1/5)
  --print("testing")
  for i in pairs(API.buttonsNames) do
   if 
        xV >= API.buttons[API.buttonsNames[i]].posRect[1] and xV <= API.buttons[API.buttonsNames[i]].posRect[1]+API.buttons[API.buttonsNames[i]].sizeRect[1] and
        yV >= API.buttons[API.buttonsNames[i]].posRect[2] and yV <= API.buttons[API.buttonsNames[i]].posRect[2]+API.buttons[API.buttonsNames[i]].sizeRect[2] then
     API.buttons[API.buttonsNames[i]].callbk()
     xV = -1
     yV = -1
     
	  end
  end
end

return API
