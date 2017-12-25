 component = require "component"
    g = component.glasses 
    args = {...}
 
    xs =args[1]
    ys =args[2]
    zs =args[3]
 
    r = args[4]
 
    g.removeAll()
 
 
    function check(x,y,z,r)
     return  (((x-xs)*(x-xs)) + ((y-ys)*(y-ys)) + ((z-zs)*(z-zs))) <= (r*r)
    end
 
    for x=xs-r, xs+r do
      for y = xs-r, xs+r do
        for z = zs-r, zs+r do
          if check(x,y,z,r) and not check(x,y,z,r-1) then
            c = g.addCube3D()
            c.set3DPos(x,y,z)
            c.setScale(tonumber(args[5]))
            c.setAlpha(0.4)
          end
          os.sleep(0)
         end
      end
    end