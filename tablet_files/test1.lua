local component = require("component")
local event = require("event")
local glasses = component.glasses

function clickEvent(id, device, user, x, y, button, maxX, maxY)
  fX = x * (512 / maxX)
  fY = y * (288 / maxY)
  --print(fX,fY)
  return fX, fY
end

event.listen("interact_overlay", clickEvent)

--event.pull("interrupted")

--event.ignore("interact_overlay", clickEvent)