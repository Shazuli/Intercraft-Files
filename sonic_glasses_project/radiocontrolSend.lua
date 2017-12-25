package.loaded["gButtonAPI3"] = nil
local gButtons = require("gButtonAPI3")
--local modem = require("component").modem
local tunnel = require("component").tunnel


local function leftF()
  gButtons.buttons["mLeft"].rect.setColor(0,255,0)
  print("cmd","robot.turn(false)")
  tunnel.send("cmd","robot.turn(false)")
  os.sleep(0.2)
  gButtons.buttons["mLeft"].rect.setColor(gButtons.buttons["mLeft"].colorRect[1],gButtons.buttons["mLeft"].colorRect[2],gButtons.buttons["mLeft"].colorRect[3])
end
local function rightF()
  gButtons.buttons["mRight"].rect.setColor(0,255,0)
  print("cmd","robot.turn(true)")
  tunnel.send("cmd","robot.turn(true)")
  os.sleep(0.2)
  gButtons.buttons["mRight"].rect.setColor(gButtons.buttons["mRight"].colorRect[1],gButtons.buttons["mRight"].colorRect[2],gButtons.buttons["mRight"].colorRect[3])
end
local function forwardF()
  gButtons.buttons["mForward"].rect.setColor(0,255,0)
  print("cmd","robot.move(3)")
  tunnel.send("cmd","robot.move(3)")
  os.sleep(0.2)
  gButtons.buttons["mForward"].rect.setColor(gButtons.buttons["mForward"].colorRect[1],gButtons.buttons["mForward"].colorRect[2],gButtons.buttons["mForward"].colorRect[3])
end
local function upF()
  gButtons.buttons["mUp"].rect.setColor(0,255,0)
  print("cmd","robot.move(1)")
  tunnel.send("cmd","robot.move(1)")
  os.sleep(0.2)
  gButtons.buttons["mUp"].rect.setColor(gButtons.buttons["mUp"].colorRect[1],gButtons.buttons["mUp"].colorRect[2],gButtons.buttons["mUp"].colorRect[3])
end
local function downF()
  gButtons.buttons["mDown"].rect.setColor(0,255,0)
  print("cmd","robot.move(0)")
  tunnel.send("cmd","robot.move(0)")
  os.sleep(0.2)
  gButtons.buttons["mDown"].rect.setColor(gButtons.buttons["mDown"].colorRect[1],gButtons.buttons["mDown"].colorRect[2],gButtons.buttons["mDown"].colorRect[3])
end
local function leftClickF()
  gButtons.buttons["lClick"].rect.setColor(0,255,0)
  print("cmd","I don't know")
  os.sleep(0.2)
  gButtons.buttons["lClick"].rect.setColor(gButtons.buttons["lClick"].colorRect[1],gButtons.buttons["lClick"].colorRect[2],gButtons.buttons["lClick"].colorRect[3])
end
local function rightClickF()
  gButtons.buttons["rClick"].rect.setColor(0,255,0)
  print("cmd","robot.swing(3)")
  tunnel.send("cmd","robot.swing(3)")
  os.sleep(0.2)
  gButtons.buttons["rClick"].rect.setColor(gButtons.buttons["rClick"].colorRect[1],gButtons.buttons["rClick"].colorRect[2],gButtons.buttons["rClick"].colorRect[3])
end

gButtons.createNewButton("mLeft","Left",200,208,28,48,255,0,0,0.6,leftF)
gButtons.createNewButton("mRight","Right",290,208,28,48,255,0,0,0.6,rightF)

gButtons.createNewButton("mForward","Forward",230,208,58,25,255,0,0,0.6,forwardF)
gButtons.createNewButton("mUp","Up",320,191,30,15,255,0,0,0.6,upF)
gButtons.createNewButton("mDown","Down",320,208,30,15,255,0,0,0.6,downF)

gButtons.createNewButton("lClick","Left Click",200,191,58,15,255,0,0,0.6,leftClickF)
gButtons.createNewButton("rClick","Right Click",260,191,58,15,255,0,0,0.6,rightClickF)


while true do
  gButtons.update()
end