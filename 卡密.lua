local OrionLib = loadstring(game:HttpGet(('https://pastebin.com/raw/DrM0eLkh')))()
local Window = OrionLib:MakeWindow({Name = "XCO工作室", HidePremium = false, SaveConfig = true,IntroText = "验证密钥", ConfigFolder = "验证密钥"})

getgenv().Key = "W&4rVy7R" --无用的线我认为你可以删除它
getgenv().KeyInput = "string"

function KeyCorrect() --useless line i think you can remove it
  --script
end

function KeyFalse()
  game:GetService("Players").LocalPlayer:Kick("Incorrect Key | .gg/A9Qbj9a37M") --useless line i think you can remove it
end

local Key = Window:MakeTab({
  Name = "密钥",
  Icon = "rbxassetid://8610328800",
  PremiumOnly = false
})

local Section = Key:AddSection({
  Name = "由于你没有白名单，已经启动了第二个验证，卡密系统"
})

Key:AddTextbox({
  Name = "密钥",
  Default = "",
  TextDisappear = true,
  Callback = function(Value)
    getgenv().KeyInput = Value
  end
})

local keys = {
  "XD雾新",
  "wstm",

}

Key:AddButton({
  Name = "检查密钥",
  Callback = function()
    if table.find(keys, tostring(getgenv().KeyInput)) then
      OrionLib:Destroy()
      game.StarterGui:SetCore("SendNotification", {
        Title = "XCO工作室";
        Text = "卡密验证成功";
        Icon = nil;
        Duration = 5
      })
game.StarterGui:SetCore("SendNotification", {
        Title = "XCO工作室";
        Text = "正在动态解析白名单";
        Icon = nil;
        Duration = 5
      })
loadstring(game:HttpGet("https://raw.githubusercontent.com/114514541883484/wuxin666/main/%E6%A8%A1%E5%9D%97.lua",true))()
      game.StarterGui:SetCore("SendNotification", {
        Title = "XCO工作室";
        Text = "解析成功啦";
        Icon = nil;
        Duration = 7
      })
      else
      game.StarterGui:SetCore("SendNotification", {
        Title = "XCO工作室";
        Text = "抱歉，卡密错误";
        Icon = nil;
        Duration = 5
        })
    end
  end
})
