local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Window = WindUI:CreateWindow({
    Title = "My Super Hub",
    Icon = "door-open", -- lucide icon
    Author = "by .ftgs and .ftgs",
    Folder = "MySuperHub",
    
    -- ↓ This all is Optional. You can remove it.
    Size = UDim2.fromOffset(580, 460),
    MinSize = Vector2.new(560, 350),
    MaxSize = Vector2.new(850, 560),
    Transparent = true,
    Theme = "Dark",
    Resizable = true,
    SideBarWidth = 200,
    BackgroundImageTransparency = 0.42,
    HideSearchBar = true,
    ScrollBarEnabled = false,
    
    
    Window:Tag({
    Title = "v4",
    Icon = "github",
    Color = Color3.fromHex("#30ff6a"),
    Radius = 0, -- from 0 to 13
})

Window:Tag({
    Title = "正式版",
    Icon = "github",
    Color = Color3.fromHex("#30ff6a"),
    Radius = 0, -- from 0 to 13
})


WindUI:Notify({
    Title = "DM脚本",
    Content = "此为V5",
    Duration = 3, -- 3 seconds
    Icon = "bird",
})

local Tab = Window:Tab({
    Title = "。",
    Icon = "bird", -- optional
    Locked = false,
})