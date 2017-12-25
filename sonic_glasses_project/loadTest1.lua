local cmd = "print('Is it working?')"


if pcall(function() load(cmd)() end) then
  --runCmd()
else
  print("Errors loading the command!")
end