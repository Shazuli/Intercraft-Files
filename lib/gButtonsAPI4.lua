local component = require("component")
local event = require("event")

--package.loaded["gButtonAPI3"] = nil

local API = {}

local glasses = component.glasses
--local tunnel = component.tunnel

API.buttons = {}
API.buttonsNames = {}
API.groups = {}
API.groupsNames = {}

local xV, yV = -100,-100

local function addToTable(value,tablee)
  k = tablee
  table.insert(k,value)
  return k
end

local function has_value (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end
    return false
end

function API.createNewButton(name,group,label,x,y,w,h,cR,cG,cB,alpha,callback)

  --API.buttonsNames[#buttonsNames+1] = name
  --API.groups = {group = name}
  --[[if group ~= nil then
    API.groups[group] = addToTable(name,API.groups)
    if not has_value(API.groupsNames,group) then
      table.insert(API.groupsNames,group)
    end


  end--]]
  if not has_value(API.groupsNames,group) then
    table.insert(API.groupsNames,group)
  end
  if API.groups[group] ~= nil then
    k = API.groups[group]
    table.insert(k,name)
    API.groups[group] = k
  else
    API.groups[group] = {name}
    --table.insert(API.groups[group],name)
  end

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
    vsble = true,
	  posTxt = {x + (w / 2) - ((string.len(label) / 2) + (w / 4.5)),y + (h / 3)}
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

function clickEvent(id, device, user, x, y)
  xV = x
  yV = y
end



local function initialize()

  glasses.removeAll()
  --package.loaded["myscript"] = nil
  event.ignore("interact_overlay", clickEvent)
  event.listen("interact_overlay", clickEvent)


end


initialize()


function API.update()
  os.sleep(1/20)
  --print("testing")
  for i in pairs(API.buttonsNames) do
	  if
        API.buttons[API.buttonsNames[i]].vsble and xV >= API.buttons[API.buttonsNames[i]].posRect[1] and xV <= API.buttons[API.buttonsNames[i]].posRect[1]+API.buttons[API.buttonsNames[i]].sizeRect[1] and
        yV >= API.buttons[API.buttonsNames[i]].posRect[2] and yV <= API.buttons[API.buttonsNames[i]].posRect[2]+API.buttons[API.buttonsNames[i]].sizeRect[2] then

      API.buttons[API.buttonsNames[i]].callbk()
	    xV = -100
	    yV = -100

	  end
  end
end

function API.cleanUp()
  print("Cleaned up.")
  event.ignore("interact_overlay", clickEvent)
end

function API.visibility(button,vsbility)
  aGroup = false
  groupN = ""
  --API.buttons[name].rect.setVisable(vsbility)
  --print(API.buttons[button]["rect"].isVisible())

  for i in pairs(API.groupsNames) do
    if name == API.groupsNames[i] then
      aGroup = true
      groupN = API.groupsNames[i]
      break
    end
  end
  --[[if has_value(API.groupsNames,button) then
    aGroup = true
  end--]]

  if aGroup then
    for i in pairs(API.groups[groupN]) do
      --print(gButtons.groups[groupN][i])
      API.buttons[groupN].vsble = vsbility
      if not vsbility then
        API.buttons[groupN]["lbl"].setScale(0)
        API.buttons[groupN]["rect"].setAlpha(0)
      else
        API.buttons[groupN]["lbl"].setScale(1)
        API.buttons[groupN]["rect"].setAlpha(API.buttons[button]["alphaRect"])
      end
    end
  end
  if not aGroup then
    API.buttons[button].vsble = vsbility
    if not vsbility then
      --API.buttons[button]["rect"].setSize(0,0)
      API.buttons[button]["lbl"].setScale(0)
      API.buttons[button]["rect"].setAlpha(0)
      --API.buttons[button]["lbl"].setAlpha(0)
    else
      --API.buttons[button]["rect"].setSize(API.buttons[button].sizeRect[1],API.buttons[button].sizeRect[2])
      API.buttons[button]["lbl"].setScale(1)
      API.buttons[button]["rect"].setAlpha(API.buttons[button]["alphaRect"])
      --API.buttons[button]["lbl"].setAlpha(1)
    end
  end
end

return API
