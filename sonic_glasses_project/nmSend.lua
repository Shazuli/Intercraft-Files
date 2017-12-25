package.loaded["gButtonAPI3"] = nil
local gButtons = require("gButtonAPI3")
local tunnel = require("component").tunnel

local amount = 10

local function send(p, state)
  tunnel.send(p, state)
  print(p, state)
end


local function p1F()
  gButtons.buttons["p1"].state = not gButtons.buttons["p1"].state
  send(gButtons.buttons["p1"].customData[1],gButtons.buttons["p1"].state)
  
  if gButtons.buttons["p1"].state then
    gButtons.buttons["p1"].rect.setColor(255-gButtons.buttons["p1"].colorRect[1],255-gButtons.buttons["p1"].colorRect[2],255-gButtons.buttons["p1"].colorRect[3])
  end
  if not gButtons.buttons["p1"].state then
    gButtons.buttons["p1"].rect.setColor(gButtons.buttons["p1"].colorRect[1],gButtons.buttons["p1"].colorRect[2],gButtons.buttons["p1"].colorRect[3])
  end
end
local function p2F()
  gButtons.buttons["p2"].state = not gButtons.buttons["p2"].state
  send(gButtons.buttons["p2"].customData[1],gButtons.buttons["p2"].state)
  
  if gButtons.buttons["p2"].state then
    gButtons.buttons["p2"].rect.setColor(255-gButtons.buttons["p2"].colorRect[1],255-gButtons.buttons["p2"].colorRect[2],255-gButtons.buttons["p2"].colorRect[3])
  end
  if not gButtons.buttons["p2"].state then
    gButtons.buttons["p2"].rect.setColor(gButtons.buttons["p2"].colorRect[1],gButtons.buttons["p2"].colorRect[2],gButtons.buttons["p2"].colorRect[3])
  end
end
local function p3F()
  gButtons.buttons["p3"].state = not gButtons.buttons["p3"].state
  send(gButtons.buttons["p3"].customData[1],gButtons.buttons["p3"].state)
  
  if gButtons.buttons["p3"].state then
    gButtons.buttons["p3"].rect.setColor(255-gButtons.buttons["p3"].colorRect[1],255-gButtons.buttons["p3"].colorRect[2],255-gButtons.buttons["p3"].colorRect[3])
  end
  if not gButtons.buttons["p3"].state then
    gButtons.buttons["p3"].rect.setColor(gButtons.buttons["p3"].colorRect[1],gButtons.buttons["p3"].colorRect[2],gButtons.buttons["p3"].colorRect[3])
  end
end
local function p4F()
  gButtons.buttons["p4"].state = not gButtons.buttons["p4"].state
  send(gButtons.buttons["p4"].customData[1],gButtons.buttons["p4"].state)
  
  if gButtons.buttons["p4"].state then
    gButtons.buttons["p4"].rect.setColor(255-gButtons.buttons["p4"].colorRect[1],255-gButtons.buttons["p4"].colorRect[2],255-gButtons.buttons["p4"].colorRect[3])
  end
  if not gButtons.buttons["p4"].state then
    gButtons.buttons["p4"].rect.setColor(gButtons.buttons["p4"].colorRect[1],gButtons.buttons["p4"].colorRect[2],gButtons.buttons["p4"].colorRect[3])
  end
end
local function p5F()
  gButtons.buttons["p5"].state = not gButtons.buttons["p5"].state
  send(gButtons.buttons["p5"].customData[1],gButtons.buttons["p5"].state)
  
  if gButtons.buttons["p5"].state then
    gButtons.buttons["p5"].rect.setColor(255-gButtons.buttons["p5"].colorRect[1],255-gButtons.buttons["p5"].colorRect[2],255-gButtons.buttons["p5"].colorRect[3])
  end
  if not gButtons.buttons["p5"].state then
    gButtons.buttons["p5"].rect.setColor(gButtons.buttons["p5"].colorRect[1],gButtons.buttons["p5"].colorRect[2],gButtons.buttons["p5"].colorRect[3])
  end
end
local function p6F()
  gButtons.buttons["p6"].state = not gButtons.buttons["p6"].state
  send(gButtons.buttons["p6"].customData[1],gButtons.buttons["p6"].state)
  
  if gButtons.buttons["p6"].state then
    gButtons.buttons["p6"].rect.setColor(255-gButtons.buttons["p6"].colorRect[1],255-gButtons.buttons["p6"].colorRect[2],255-gButtons.buttons["p6"].colorRect[3])
  end
  if not gButtons.buttons["p6"].state then
    gButtons.buttons["p6"].rect.setColor(gButtons.buttons["p6"].colorRect[1],gButtons.buttons["p6"].colorRect[2],gButtons.buttons["p6"].colorRect[3])
  end
end
local function p7F()
  gButtons.buttons["p7"].state = not gButtons.buttons["p7"].state
  send(gButtons.buttons["p7"].customData[1],gButtons.buttons["p7"].state)
  
  if gButtons.buttons["p7"].state then
    gButtons.buttons["p7"].rect.setColor(255-gButtons.buttons["p7"].colorRect[1],255-gButtons.buttons["p7"].colorRect[2],255-gButtons.buttons["p7"].colorRect[3])
  end
  if not gButtons.buttons["p7"].state then
    gButtons.buttons["p7"].rect.setColor(gButtons.buttons["p7"].colorRect[1],gButtons.buttons["p7"].colorRect[2],gButtons.buttons["p7"].colorRect[3])
  end
end
local function p8F()
  gButtons.buttons["p8"].state = not gButtons.buttons["p8"].state
  send(gButtons.buttons["p8"].customData[1],gButtons.buttons["p8"].state)
  
  if gButtons.buttons["p8"].state then
    gButtons.buttons["p8"].rect.setColor(255-gButtons.buttons["p8"].colorRect[1],255-gButtons.buttons["p8"].colorRect[2],255-gButtons.buttons["p8"].colorRect[3])
  end
  if not gButtons.buttons["p8"].state then
    gButtons.buttons["p8"].rect.setColor(gButtons.buttons["p8"].colorRect[1],gButtons.buttons["p8"].colorRect[2],gButtons.buttons["p8"].colorRect[3])
  end
end
local function p9F()
  gButtons.buttons["p9"].state = not gButtons.buttons["p9"].state
  send(gButtons.buttons["p9"].customData[1],gButtons.buttons["p9"].state)
  
  if gButtons.buttons["p9"].state then
    gButtons.buttons["p9"].rect.setColor(255-gButtons.buttons["p9"].colorRect[1],255-gButtons.buttons["p9"].colorRect[2],255-gButtons.buttons["p9"].colorRect[3])
  end
  if not gButtons.buttons["p9"].state then
    gButtons.buttons["p9"].rect.setColor(gButtons.buttons["p9"].colorRect[1],gButtons.buttons["p9"].colorRect[2],gButtons.buttons["p9"].colorRect[3])
  end
end
local function p10F()
  gButtons.buttons["p10"].state = not gButtons.buttons["p10"].state
  send(gButtons.buttons["p10"].customData[1],gButtons.buttons["p10"].state)
  
  if gButtons.buttons["p10"].state then
    gButtons.buttons["p10"].rect.setColor(255-gButtons.buttons["p10"].colorRect[1],255-gButtons.buttons["p10"].colorRect[2],255-gButtons.buttons["p10"].colorRect[3])
  end
  if not gButtons.buttons["p10"].state then
    gButtons.buttons["p10"].rect.setColor(gButtons.buttons["p10"].colorRect[1],gButtons.buttons["p10"].colorRect[2],gButtons.buttons["p10"].colorRect[3])
  end
end




gButtons.createNewButton("p1","Port 1",4,25,45,15,255,0,0,0.4,p1F)
gButtons.createNewButton("p2","Port 2",4,45,45,15,255,0,0,0.4,p2F)
gButtons.createNewButton("p3","Port 3",4,65,45,15,255,0,0,0.4,p3F)
gButtons.createNewButton("p4","Port 4",4,85,45,15,255,0,0,0.4,p4F)
gButtons.createNewButton("p5","Port 5",4,125-20,45,15,255,0,0,0.4,p5F)
gButtons.createNewButton("p6","Port 6",4,145-20,45,15,255,0,0,0.4,p6F)
gButtons.createNewButton("p7","Port 7",4,165-20,45,15,255,0,0,0.4,p7F)
gButtons.createNewButton("p8","Port 8",4,185-20,45,15,255,0,0,0.4,p8F)
gButtons.createNewButton("p9","Port 9",4,205-20,45,15,255,0,0,0.4,p9F)
gButtons.createNewButton("p10","Port 10",4,225-20,45,15,255,0,0,0.4,p10F)

for i in pairs(gButtons.buttonsNames) do
  gButtons.buttons["p" .. i].customData[1] = i
end


while true do
  gButtons.update()
  
end