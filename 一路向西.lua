local bai={
	jiuli=20,
	awaysday = false,
	awaysdnight = false,
	playernamedied="",
    dropdown={}
	}

		
local Workspace = game:GetService('Workspace')
local ReplicatedStorage = game:GetService('ReplicatedStorage')
local Players = game:GetService('Players')
local RunService = game:GetService('RunService')
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character
local HumanoidRootPart = Character.HumanoidRootPart
local States = LocalPlayer:FindFirstChild('States')
local Stats = LocalPlayer:FindFirstChild('Stats')
local GeneralEvents = ReplicatedStorage:FindFirstChild('GeneralEvents')
local RobRemote = GeneralEvents:FindFirstChild('Rob')
local ChangeCharacter = Character:FindFirstChild('ChangeCharacter')
local BagLevel = Stats:FindFirstChild('BagSizeLevel'):FindFirstChild('CurrentAmount')
local BagAmount = States:FindFirstChild('Bag')
local Camp = CFrame.new(1636.62537, 104.349976, -1736.184)
local CashRegisterFinished = false
local BankFinished = false
local function TeleportToCamp()
local Players = game:GetService('Players')
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character
local HumanoidRootPart = Character.HumanoidRootPart
    HumanoidRootPart.CFrame = Camp
end
local function tp(cf)
	local Players = game:GetService('Players')

local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character
local HumanoidRootPart = Character.HumanoidRootPart
    HumanoidRootPart.CFrame = cf
end
local function Godmode()
    ChangeCharacter:FireServer('Damage', 0/0)
end
local function HideName()
    Character:FindFirstChild('Head'):FindFirstChild('NameTag'):Destroy()
end

  local Nax = {
	  
	['gs'] = function(...)
		return game:GetService(...)
	end;
	['me'] = game:service 'Players'.LocalPlayer;
  
   
  };
  Nax['Remote'] = {
	['RS'] = Nax.gs 'ReplicatedStorage';
	['RunService'] = Nax.gs 'RunService';
	['Light'] = Nax.gs 'Lighting';
	['Workspace'] = Nax.gs 'Workspace';
  };
  Nax['Boolean'] = {
	['Collide'] = nil;
	['Noclip'] = false;
  };
  Nax['Setting'] = {
  ['GunStats'] = require(Nax.Remote.RS.GunScripts.GunStats)
  
  };
  
  
  function Nax:Noclip()
	self['Boolean'].Collide = self['Remote'].RunService.Stepped:Connect(
		function()
			for i, v in next, self['me'].Character:children() do
				if self['Boolean'].Noclip == false then
					self['Boolean'].Collide:Disconnect()
					return
				end
				if v:IsA('BasePart') then
					v.CanCollide = false
				end
			end
		end
	)
  end
  NaxBypass = hookmetamethod(
	  game,
	  "__index",
	  function(Self, Human)
		  if not checkcaller() and tostring(Self) == "Humanoid" and Human == "WalkSpeed" then
			  return 16
		  elseif not checkcaller() and tostring(Self) == "Humanoid" and Human == "JumpPower" then
			  return 50
		  end
		  return NaxBypass(Self, Human)
	  end
  )
function shuaxinlb(zji)
bai.dropdown={}
if zji==true then
for p, I in next,game.Players:GetChildren() do
table.insert(bai.dropdown, I.Name)
end
else
for p, I in next, game.Players:GetChildren() do
if I ~= lp then
table.insert(bai.dropdown, I.Name)
end
end
end
end
shuaxinlb(true)
local bailib = loadstring(game:HttpGet"https://pastebin.com/raw/DW3eJwe6")()
local win = bailib:new("雾新脚本--一路向西")
local Tab1 = win:Tab("玩家功能", "10882439086")
local Tab = win:Tab("主要功能", "10728953248")
local Section = Tab:section("枪支")
local Section3 = Tab1:section("速度/跳跃提升")

Section3:Textbox("速度",'TextBoxfalg',"提升速度",function(txt)
	spawn(function()
	  while task.wait(.01) do
		Nax.me.Character.Humanoid.WalkSpeed = txt
	  end
  end)
  end)
Section3:Textbox("跳跃提升",'TextBoxfalg',"提升跳跃", function(txt)
	spawn(function()
	  while task.wait(.01) do
		Nax.me.Character.Humanoid.JumpPower = txt
	  end
  end)
  end)
Section3:Toggle("穿墙",'Toggleflag',false, function(state)
	Nax.Boolean.Noclip = state
	Nax:Noclip()
  end)
Section3:Button("解锁最大焦距",function()
	Nax.me.CameraMaxZoomDistance = 9e9
  end)
Section:Button("超级枪",function()
	for i,Guns in next,Nax.Setting['GunStats'] do
		  Guns.Damage = math.huge;
		  Guns.camShakeResist = math.huge;
		  Guns.prepTime = .01;
		  Guns.equipTime = .01;
		  Guns.MaxShots = math.huge;
		  Guns.ReloadAnimationSpeed = .01;
		  Guns.ReloadSpeed = .00000001;
		  Guns.ZoomAccuracy = math.huge; 
		  Guns.EquipDelay = .01;
		  end
  end)
Section:Textbox("放大的大小",'TextBoxfalg',"自定义放大的大小",function(txt)
	  bai.jiuli=txt
  end)
  
Section:Button("放大别人的身体",function(state)

  game:GetService('RunService').RenderStepped:connect(function()
	if _G.Disabled then
	for i,v in next, game:GetService('Players'):GetPlayers() do
	if v.Name ~= game:GetService('Players').LocalPlayer.Name then
	pcall(function()
	v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
	v.Character.HumanoidRootPart.Transparency = 0.7
	v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
	v.Character.HumanoidRootPart.Material = "Neon"
	v.Character.HumanoidRootPart.CanCollide = false
	end)
	end
	end
	end
	end)
  
  end)
Section:Button("透视",function()
	Nax['Esp'] = Instance.new("BillboardGui",game.CoreGui)
	Nax['EspLable'] = Instance.new("TextLabel", Nax['Esp'])
	Nax['Esp'].ResetOnSpawn = false;
	Nax['Esp'].AlwaysOnTop = true;
	Nax['Esp'].LightInfluence = 0;
	Nax['Esp'].Size = UDim2.new(1.75, 0, 1.75, 0);
	Nax['EspLable'].Text = "";
	Nax['EspLable'].Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001);
	Nax['EspLable'].BorderColor3 = Nax['Color'].White;
	Nax['EspLable'].TextSize = 20;
	Nax['EspLable'].TextColor3 = Nax['Color'].White;
	Nax.Remote.RunService.RenderStepped:Connect(function()
		for i, v in next, Nax.gs 'Players':GetPlayers() do
			if v ~= Nax.me then
				Nax['EspLable'].Text = "玩家用户名 : " .. tostring(v.Name)
			end
		end
	end)
  
  end)
Section:Toggle("终日白天",'Toggleflag',false, function(state)
	  if state then 
		  bai.awaysday=true
		  while task.wait() do
		  if bai.awaysday==true then 
			  game:GetService('Lighting').TimeOfDay=('12:00:00');
		  end
	  end
  else bai.awaysday=false
	  end
	  
  end)
Section:Toggle("终日黑天",'Toggleflag',false,  function(state)
	  if state then 
		  bai.awaysdnight=true
		  while task.wait() do
		  if bai.awaysdnight==true then 
			  game:GetService('Lighting').TimeOfDay=('2:00:00');
		  end
	  end
	  else
		  bai.awaysdnight=false
	  end
end)

local Players = Section:Dropdown("选择玩家名字已开始下面的功能",'Dropdown',bai.dropdown,function(v)
    bai.playernamedied = v
end)

Section:Button("重置玩家名字", function()
	shuaxinlb(true)
	Players:SetOptions(bai.dropdown)
end)

Section:Button("传送到玩家旁边",function()
    local HumRoot = game.Players.LocalPlayer.Character.HumanoidRootPart
    local tp_player = game:GetService("Players")[bai.playernamedied]
    if tp_player then
        for i = 1,5 do
            wait()
            HumRoot.CFrame = tp_player.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
        end
    end
end)