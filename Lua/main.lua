local Skid = 'badskid';
local Server = syn.websocket.connect('ws://localhost:3000');

if isfile(Skid..'.lua') then
  loadfile(Skid..'.lua');
else
  writefile(Skid..'.lua', 'deprive is a fat skid uwu');
  Server.OnMessage:Connect(function(x)
      appendfile(Skid..'.lua', x);
      Server:Close();
      loadfile(Skid..'.lua');
  end);
end;
