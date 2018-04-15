local event = require("event")
package.loaded["gButtonAPI4"] = nil
local gButtons = require("gButtonAPI4")

local t = true


local function TestF()
  gButtons.buttons["btn1"].rect.setColor(0,255,0)
  os.sleep(0.5)
  --print("groups: " .. #gButtons.groups)
  --print("groupsNames: " .. #gButtons.groupsNames)
  --print(gButtons.groups["per"][1],gButtons.groups["per"][2])
  --print(gButtons.groupsNames[1])
  --print(gButtons.groupsNames[2])
  for i in pairs(gButtons.groupsNames) do
    print(gButtons.groupsNames[i] .. ":")
    for d in pairs(gButtons.groups[gButtons.groupsNames[i]]) do
      print(gButtons.groups[gButtons.groupsNames[i]][d])
    end
  end

  --for i in ipairs(gButtons.groupsNames) do print(gButtons.groupsNames[i]) end
  print(gButtons.groups,gButtons.groupsNames)

  gButtons.buttons["btn1"].rect.setColor(gButtons.buttons["btn1"].colorRect[1],gButtons.buttons["btn1"].colorRect[2],gButtons.buttons["btn1"].colorRect[3])
end

local function TestFF()
  gButtons.buttons["btn2"].rect.setColor(0,255,0)
  os.sleep(0.5)
  t = not t
  gButtons.visibility("btn1",t)
  print("Toggled visibility for \"Button 1\".")
  gButtons.buttons["btn2"].rect.setColor(gButtons.buttons["btn2"].colorRect[1],gButtons.buttons["btn2"].colorRect[2],gButtons.buttons["btn2"].colorRect[3])
end

local function TestFFF()
  gButtons.buttons["btn3"].rect.setColor(0,255,0)
  os.sleep(0.5)
  t = not t
  gButtons.visibility("per",t)
  --[[for i in pairs(gButtons.groups["per"]) do
    print(gButtons.groups["per"][i])
  end--]]
  --print(gButtons.groups["per"][1])
  --print(gButtons.groups["per"][2])
  gButtons.buttons["btn3"].rect.setColor(gButtons.buttons["btn3"].colorRect[1],gButtons.buttons["btn3"].colorRect[2],gButtons.buttons["btn3"].colorRect[3])
end

--gButtons.createNewButton("name(*unique)",group name("nil" for nothing),"display text",x,y,width,height,red,green,blue,transparency,callback)
gButtons.createNewButton("btn1","per","Button 1",10,10,55,20,255,0,0,0.5,TestF)
gButtons.createNewButton("btn2","per","Button 2",10,35,55,20,255,0,0,0.5,TestFF)
gButtons.createNewButton("btn3","sara","Button 3",10,60,55,20,255,0,0,0.5,TestFFF)
--gButtons.createNewButton("btn4","sara","Button 4",10,85,55,20,255,0,0,0.5,TestFFFF)


event.listen("interrupted", gButtons.cleanUp)

--gButtons.visibility("btn1",false)

while true do
  gButtons.update()
end
