local bailib = loadstring(game:HttpGet"https://pastebin.com/raw/DW3eJwe6")()
local win = bailib:new("雾新脚本--造船寻宝")
local Tab = win:Tab("主要功能", "10882439086")
local Section = Tab:section("主要功能")

Section:Button("变鸡",function()
        local players = game:GetService("Players")
        local client = players.LocalPlayer
        local Chicken = workspace:WaitForChild("ChangeCharacter")
        Chicken:FireServer("ChickenCharacter")
   
    end)
    Section:Button("变狐狸",function()
        local players = game:GetService("Players")
    local client = players.LocalPlayer
    local fox = workspace:WaitForChild("ChangeCharacter")
    fox:FireServer("FoxCharacter")
      
    end)
    Section:Button("变企鹅",function()
        local players = game:GetService("Players")
        local client = players.LocalPlayer
        local penguin = workspace:WaitForChild("ChangeCharacter")
        penguin:FireServer("PenguinCharacter")
    
    end)
    Section:Button("刷钱",function()
        local players = game:GetService("Players")
        local stages = workspace:WaitForChild("BoatStages"):WaitForChild("NormalStages")
        local penguin, gold = workspace:WaitForChild("ChangeCharacter"), workspace:WaitForChild("ClaimRiverResultsGold")
        local client = players.LocalPlayer
        _G.Busy = true
        while _G.Busy do
            local bodyVelocity = Instance.new("BodyVelocity")
            bodyVelocity.Velocity = Vector3.new(0, -4, 0)
            bodyVelocity.Parent = client.Character.HumanoidRootPart
        
            for i = 1, 9 do
                if not client.Character or not client.Character:FindFirstChild("Humanoid") then
                    repeat wait() until client.Character and client.Character:FindFirstChild("Humanoid")
                end
         
                client.Character.HumanoidRootPart.CFrame = stages["CaveStage"..i].DarknessPart.CFrame wait(0.1)
        
                if not _G.Busy then
                    client.Character.Humanoid.Health = 0
                    exit(0)
                end
        
                if i == 1 then
                    wait(4)
                else
                    wait(2)
                end
        
                gold:FireServer()
            end
            penguin:FireServer("ChickenCharacter")
            client.Character:Remove()
            repeat wait() 
            until client.Character and client.Character:FindFirstChild("HumanoidRootPart")
        end
     
    end)