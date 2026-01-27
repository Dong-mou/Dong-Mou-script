local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()


local Window = WindUI:CreateWindow({
        Title = "<font color='#FF66CC'>打开/点开DM HUB脚本</font>  ",
        
-- ↓ This all is Optional. You can remove it.
        
    -- ↓ Optional. You can remove it.
    --[[ You can set 'rbxassetid://' or video to Background.
        'rbxassetid://':
            Background = "rbxassetid://", -- rbxassetid
        Video:
            Background = "video:YOUR-RAW-LINK-TO-VIDEO.webm", -- video 
    --]]
    
    -- ↓ Optional. You can remove it.
    Size = UDim2.fromOffset(100, 50),
        Transparent = true,
        Theme = "Dark",
        User = {
            Enabled = true,
            Callback = function() print("clicked") end,
            Anonymous = false
        },
                
Window:Tag({
    Title = "v4",
    Color = Color3.fromHex("#30ff6a")
})

Window:Tag({
        Title = "此脚本永久免费",
        Color = Color3.fromHex("#315dff")
    })
    local TimeTag = Window:Tag({
        Title = "持续更新",
        Color = Color3.fromHex("#000000")
    })


WindUI:Notify({
    Title = "DM HUB脚本通知",
    Content = "DM HUB脚本禁止倒卖",
    Duration = 10, -- 10 seconds
    Icon = "bird",
})

WindUI:Notify({
    Title = "DM HUB脚本通知",
    Content = "此脚本为V4",
    Duration = 10, -- 10 seconds
    Icon = "bird",
})


local Tab = Window:Tab({
    Title = "DM HUB脚本公告",
    Icon = "layout-grid",
    Locked = false,
})

local Paragraph = Tab:Paragraph({
    Title = "系统信息",
    Desc = string.format("用户名: %s\n显示名: %s\n用户ID: %d\n账号年龄: %d天", 
        player.Name, player.DisplayName, player.UserId, player.AccountAge),
    Image = "info",
    ImageSize = 20,
    Color = Color3.fromHex("#0099FF")
})

local fpsCounter = 0
local fpsLastTime = tick()
local fpsText = "计算中..."

spawn(function()
    while wait() do
        fpsCounter += 1
        
        if tick() - fpsLastTime >= 1 then
            fpsText = string.format("%.1f FPS", fpsCounter) -- 显示一位小数
            fpsCounter = 0
            fpsLastTime = tick()
        end
    end
end)

Taba:Paragraph({
    Title = "性能信息",
    Desc = "帧率: " .. fpsText,
    Image = "bar-chart",
    ImageSize = 20,
    Color = Color3.fromHex("#00A2FF")
})

local Paragraph = Tab:Paragraph({
    Title = "本人在此声明：封号与本脚本无关",
    Desc = "QQ群主群830718017 ",
    Image = "rbxassetid://81583956354615",
    ImageSize = 42,
    Thumbnail = "rbxassetid://103506480252017",
    ThumbnailSize = 0,
})
local Paragraph = Tab:Paragraph({
    Title = "最大帮助者:messy、帅",
    Desc = "QQ群主群830718017 ",
    Image = "rbxassetid://81583956354615",
    ImageSize = 42,
    Thumbnail = "rbxassetid://103506480252017",
    ThumbnailSize = 0,
})
local Paragraph = Tab:Paragraph({
    Title = "欢迎使用DM HUB脚本",
    Desc = "QQ群主群830718017 ",
    Image = "rbxassetid://81583956354615",
    ImageSize = 42,
    Thumbnail = "rbxassetid://103506480252017",
    ThumbnailSize = 0,
})

local Paragraph = Tab:Paragraph({
    Title = "最近懒得更新",
    Desc = "QQ群主群 830718017",
    Image = "rbxassetid://81583956354615",
    ImageSize = 42,
    Thumbnail = "rbxassetid://103506480252017",
    ThumbnailSize = 0,
})

local Paragraph = Tab:Paragraph({
    Title = "新年快乐",
    Desc = "Happy new Year",
    Image = "rbxassetid://81583956354615",
    ImageSize = 42,
    Thumbnail = "rbxassetid://103506480252017",
    ThumbnailSize = 0,
})

local Tabs = {
    Main = Window:Section({ Title = "基础", Opened = true }),
    Settings = Window:Section({ Title = "服务器", Opened = true }),
    Utilities = Window:Section({ Title = "设置", Opened = true })
}

local Tab = Tabs.Main:Tab({
    Title = "通用",
    Icon = "layout-grid",
    Locked = false,
})

local Slider = Tab:Slider({
    Title = "跳跃",
    Value = {
        Min = 50,
        Max = 200,
        Default = 50,
    },
    Increment = 1,
    Callback = function(value)
        if game.Players.LocalPlayer.Character then
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").JumpPower = value
        end
    end
})

local Slider = Tab:Slider({
    Title = "移速",
    Value = {
        Min = 16,
        Max = 400,
        Default = 16,
    },
    Increment = 1,
    Callback = function(value)
        if game.Players.LocalPlayer.Character then
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = value
        end
    end
})
        
local Slider = Tab:Slider({
    Title = "重力",
    Value = {
        Min = 0.1,
        Max = 500.0,
        Default = 196.2,
    },
    Step = 0.1,
    Callback = function(value)
        game.Workspace.Gravity = value
    end
})

local Slider = Tab:Slider({
    Title = "无限跳"
    Jump = Value
    game:GetService("UserInputService").JumpRequest:Connect(function()
        if Jump then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
        end
    end)
end)

local Button = Tab:Button({
    Title = "DM飞行",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/shenmi9178/Dong-s-script/refs/heads/main/%E5%86%AC%E6%9F%90%E9%A3%9E%E8%A1%8C.lua"))()
    end
})

local Button = Tab:Button({
    Title = "子弹追踪",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/fcsdsss/games/refs/heads/main/Silent%20aim/1.1"))()
    end
})

local Button = Tab:Button({
    Title = "隐身 [别人看得见]",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Yungengxin/roblox/main/yinshen"))()
    end
})

local Button = Tab:Button({
    Title = "撸管r6",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))()
    end
})

local Button = Tab:Button({
    Title = "撸管r15",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))()
    end
})

local Button = Tab:Button({
    Title = "玩家进入提示",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()
    end
})

local Button = Tab:Button({
    Title = "反挂机",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/9fFu43FF"))()
    end
})

local Button = Tab:Button({
    Title = "隐身道具",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/skid123skidlol/cd0d2dce51b3f20ad1aac941da06a1a1/raw/f58b98cce7d51e53ade94e7bb460e4f24fb7e0ff/%257BFE%257D%2520Invisible%2520Tool%2520(can%2520hold%2520tools)",true))()
    end
})

local Button = Tab:Button({
    Title = "XION飞车因为没有源码所以直接用xion飞车",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/smalldesikon/fdydyf/main/XION%E9%A3%9E%E8%BD%A6"))()
    end
})

local Button = Tab:Button({
    Title = "无敌少侠r15",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Invinicible-Flight-R15-45414"))()
    end
})

local Button = Tab:Button({
    Title = "爬墙",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
    end
})

local Button = Tab:Button({
    Title = "甩飞所有人",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
    end
})

local Button = Tab:Button({
    Title = "甩飞",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/3LD4D0/Crazy-Man-R6/36ec60d16bf8d208c40807aa0fd2662af76a5385/Crazy%20Man%20R6"))()
    end
})

local Button = Tab:Button({
    Title = "防甩飞",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/protezzx/Player-joined-left/refs/heads/main/Antifling%20script",true))()
    end
})

local Button = Tab:Button({
    Title = "防坠落 by西班牙",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/5twh2hsf9j-byte/BowenPrime67/refs/heads/main/Python"))()
    end
})

local Button = Tab:Button({
    Title = "踏空行走",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
    end
})

Window:SelectTab(2) -- Number of Tab

local Tab = Tabs.Settings:Tab({
    Title = "被遗弃",
    Icon = "layout-grid",
    Locked = false,
})

local Button = Tab:Button({
    Title = "XK",
    Desc = "无卡密中文",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet(('https://github.com/devslopo/DVES/raw/main/XK%20Hub')))()
    end
})

local Button = Tab:Button({
    Title = "不知道",
    Desc = "无卡密英文",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet(('https://github.com/devslopo/DVES/raw/main/XK%20Hub')))()
    end
})

Window:SelectTab(2) -- Number of Tab

local Tab = Tabs.Settings:Tab({
    Title = "最强战场",
    Icon = "layout-grid",
    Locked = false,
})

local Button = Tab:Button({
    Title = "金身",
    Desc = "就是一个动作",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Cyborg883/GoldenPakiFusion/refs/heads/main/Script"))()
    end
})

local Button = Tab:Button({
    Title = "各种自动技能",
    Desc = "英文",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/UY1oh6PG/raw"))()
    end
})

local Button = Tab:Button({
    Title = "火车头",
    Desc = "",
    Locked = false,
    Callback = function()
        getgenv().settings = {
    ["morph"] = {
        ["enabled"] = false,
        ["dontchangeskincolor"] = false,
    },
    ["ult_forcewalkspeed"] = true, -- forces walkspeed even if set to 0
    ["ult_walkspeed"] = 64, -- how fast you walk in ult
    ["tp_duration"] = 0.15 -- how long it takes to tp
} 

loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletfan2007/ATrainSounds/refs/heads/main/ATrain.lua"))()
    end
})

Window:SelectTab(2) -- Number of Tab

local Tab = Tabs.Main:Tab({
    Title = "各大脚本中心",
    Icon = "layout-grid",
    Locked = false,
})

local Button = Tab:Button({
    Title = "KG脚本",
    Desc = "",
    Locked = false,
    Callback = function()
        KG_SCRIPT = "张硕制作"
loadstring(game:HttpGet("https://github.com/ZS-NB/KG/raw/main/Zhang-Shuo.lua"))()
    end
})

local Button = Tab:Button({
    Title = "混脚本",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/smalldesikon/wocaonima/main/sikon.txt"))()
    end
})

local Button = Tab:Button({
    Title = "SN脚本中心",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\120\105\97\110\105\110\103\49\53\49\47\83\78\72\85\66\47\109\97\105\110\47\83\78\104\117\98\46\108\117\97\34\41\41\40\41")()
    end
})

local Button = Tab:Button({
    Title = "某黄脚本",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaokong6/x1/refs/heads/main/黄某脚本加载器"))()
    end
})

local Button = Tab:Button({
    Title = "安脚本中心",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/wucan114514/gegeyxjb/main/oww')))()
    end
})

local Button = Tab:Button({
    Title = "不知道脚本中心",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(utf8.char((function() return table.unpack({108,111,97,100,115,116,114,105,110,103,40,103,97,109,101,58,72,116,116,112,71,101,116,40,34,104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,67,104,105,110,97,81,89,47,45,47,109,97,105,110,47,37,69,54,37,56,51,37,56,53,37,69,52,37,66,65,37,57,49,34,41,41,40,41})end)()))()
    end
})

local Button = Tab:Button({
    Title = "bhbox",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\102\121\46\97\112\112\47\115\57\80\105\106\110\118\84\47\114\97\119"))()
    end
})

Window:SelectTab(2) -- Number of Tab

local Tab = Tabs.Main:Tab({
    Title = "客户端",
    Icon = "layout-grid",
    Locked = false,
})

local Button = Tab:Button({
    Title = "不知道",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-John-doe-script-by-g00byd0lan-10381"))()
    end
})

local Button = Tab:Button({
    Title = "封禁锤",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Ban-hammer-v0-47112"))()
    end
})

local Button = Tab:Button({
    Title = "汽车 [不知道是不是客户端]",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet('https://rawscripts.net/raw/Universal-Script-R15-ONLY-FE-Vehicle-Script-71606'))()
    end
})

Window:SelectTab(2) -- Number of

local Tab = Tabs.Settings:Tab({
    Title = "自然灾害",
    Icon = "layout-grid",
    Locked = false,
})

local Button = Tab:Button({
    Title = "v1",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/V1.lua.txt"))()
    end
})

local Button = Tab:Button({
    Title = "v2",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/%E7%A3%81%E9%93%81%E9%BB%91%E6%B4%9EV2.txt"))()
    end
})

local Button = Tab:Button({
    Title = "v3",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/V3.txt"))()
    end
})

local Button = Tab:Button({
    Title = "v4",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/V4.txt"))()
    end
})

local Button = Tab:Button({
    Title = "v5",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/V5.txt"))()
    end
})

local Button = Tab:Button({
    Title = "v6",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/V6.txt"))()
    end
})

Window:SelectTab(2) -- Number of Tab

local Tab = Tabs.Settings:Tab({
    Title = "99",
    Icon = "layout-grid",
    Locked = false,
})

local Button = Tab:Button({
    Title = "虚空汉化",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/99%E5%A4%9C%E8%99%9A%E7%A9%BA.txt"))()
    end
})

local Button = Tab:Button({
    Title = "让树都飞起来",
    Desc = "老外/要卡密 [第一个按钮]",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/nouralddin-abdullah/99-night/refs/heads/main/main-en.lua"))()
    end
})

local Button = Tab:Button({
    Title = "二狗子",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/gycgchgyfytdttr/shenqin/refs/heads/main/99day.lua"))()
    end
})

local Button = Tab:Button({
    Title = "XK Hub",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://github.com/DevSloPo/Main/raw/main/99day"))()
    end
})

Window:SelectTab(2) -- Number of Tab

local Tab = Tabs.Settings:Tab({
    Title = "墨水游戏",
    Icon = "layout-grid",
    Locked = false,
})


local Paragraph = Tab:Paragraph({
    Title = "未完待续",
    Desc = "墨水游戏检测太强",
    Image = "rbxassetid://81583956354615",
    ImageSize = 42,
    Thumbnail = "rbxassetid://103506480252017",
    ThumbnailSize = 0,
})
 
 Window:SelectTab(2) -- Number of Tab