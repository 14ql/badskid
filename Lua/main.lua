local badskid = loadfile('badskid.lua');

local badskid = {};

function badskid.Load(Delay)
  task.wait(Delay);
  return true;
end;

return badskid
