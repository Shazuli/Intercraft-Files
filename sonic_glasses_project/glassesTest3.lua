package.loaded["gButtonAPI3"] = nil
local gButtons = require("gButtonAPI3")

local function test1F()
  --print(gButtons.buttons["box1"].customData[1])
  --print(gButtons.buttons["box1"].customData[2])
  --print(gButtons.buttons["box1"].customData[3])
  
  --Flash
  gButtons.buttons["box1"].rect.setColor(255-gButtons.buttons["box1"].colorRect[1],255-gButtons.buttons["box1"].colorRect[2],255-gButtons.buttons["box1"].colorRect[3])
  os.sleep(0.5)
  gButtons.buttons["box1"].rect.setColor(gButtons.buttons["box1"].colorRect[1],gButtons.buttons["box1"].colorRect[2],gButtons.buttons["box1"].colorRect[3])
  
  
end

local function test2F()
  --Toggle
  gButtons.buttons["box2"].state = not gButtons.buttons["box2"].state
  if gButtons.buttons["box2"].state then
    gButtons.buttons["box2"].rect.setColor(255-gButtons.buttons["box2"].colorRect[1],255-gButtons.buttons["box2"].colorRect[2],255-gButtons.buttons["box2"].colorRect[3])
  end
  if not gButtons.buttons["box2"].state then
    gButtons.buttons["box2"].rect.setColor(gButtons.buttons["box2"].colorRect[1],gButtons.buttons["box2"].colorRect[2],gButtons.buttons["box2"].colorRect[3])
  end
end

local function test3F()
  print("Don't touch me you perv!")
  
end

--gButtons.createNewButton(name(*unique),display text,x,y,width,height,red,green,blue,transparency,callback)
gButtons.createNewButton("box1","Flash",2,8,45,15,255,0,0,0.4,test1F)
gButtons.createNewButton("box2","Toggle",2,28,45,15,255,0,0,0.4,test2F)
gButtons.createNewButton("box3","Box 3",2,48,45,15,255,0,0,0.4,test3F)

gButtons.buttons["box1"].customData[1] = "Per"
gButtons.buttons["box1"].customData[2] = "Norberg"

while true do
  gButtons.update()
end