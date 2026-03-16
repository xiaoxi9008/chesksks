game:GetService("StarterGui"):SetCore("SendNotification", {
  Title = "正在为你打开GB",
  Text = "正在启动XIAOXI内脏与火药",
  Icon = "rbxassetid://123691280552142",
  Duration = 1,
  Callback = bindable,
  Button1 = "谢谢使用🤑",
  Button2 = "UI背景可能有点看不清",
})
wait(1.5)
game:GetService("StarterGui"):SetCore("SendNotification", {
  Title = "谢谢使用",
  Text = "卡密进群获取🤔 ",
  Icon = "rbxassetid://123691280552142",
  Duration = 1,
  Callback = bindable,
  Button1 = "qq群：705378396",
  Button2 = "作者qq：3574769415",
})
local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Potato5466794/Wind/refs/heads/main/Wind.luau"))()

getgenv().TransparencyEnabled = getgenv().TransparencyEnabled or false





local function gradient(text, startColor, endColor)
    local result, chars = "", {}
    for uchar in text:gmatch("[%z\1-\127\194-\244][\128-\191]*") do
        chars[#chars + 1] = uchar
    end
    
    for i = 1, #chars do
        local t = (i - 1) / math.max(#chars - 1, 1)
        result = result .. string.format('<font color="rgb(%d,%d,%d)">%s</font>', 
            math.floor((startColor.R + (endColor.R - startColor.R) * t) * 255), 
            math.floor((startColor.G + (endColor.G - startColor.G) * t) * 255), 
            math.floor((startColor.B + (endColor.B - startColor.B) * t) * 255), 
            chars[i])
    end
    return result
end

local themes = {"Dark", "Light", "Mocha", "Aqua"}
local currentThemeIndex = 1

-- 弹出欢迎信息
WindUI:Popup({
    Title = gradient("XIAOXI内脏与火药", Color3.fromHex("FFB6C1"), Color3.fromHex("FF69B4")),
    Icon = "sparkles",
    Content = "欢迎使用XIAOXI内脏与火药\n作者：by小西｜UI提供者：yuxingchen｜",
    Buttons = {
        {
            Title = "开始体验",
            Icon = "arrow-right",
            Variant = "Primary",
            Callback = function() end
        }
    }
})

local Window = WindUI:CreateWindow({
    Title = "<font color='#FFB6C1'>X</font><font color='#FFA0B5'>I</font><font color='#FF8AA9'>A</font><font color='#FF749D'>O</font><font color='#FF5E91'>X</font><font color='#FF4885'>I</font>",
    Icon = "rbxassetid://4483362748",
    IconTransparency = 1,
    Author = "by小西",
    Folder = "XIAOXI",
    Size = UDim2.fromOffset(700, 500),
    Transparent = true,
    Theme = "Dark",
    UserEnabled = true,
    SideBarWidth = 220,
    HasOutline = true,
    Background = "video:https://raw.githubusercontent.com/xiaoxi9008/chesksks/refs/heads/main/Video_1773199003211_392.mp4",
    ScrollBarEnabled = true
})

Window:Tag({
    Title = "内脏与火药",
    Color = Color3.fromHex("FF69B4")
})
Window:Tag({
    Title = "v3.2.0",
    Color = Color3.fromHex("FFB6C1")
})



-- 通过主题设置按钮边框
WindUI.Themes.Dark.Button = Color3.fromRGB(255, 255, 255)  -- 按钮文字颜色
WindUI.Themes.Dark.ButtonBorder = Color3.fromRGB(255, 255, 255)  -- 按钮边框颜色

-- 或者直接修改UI样式表
local function addButtonBorderStyle()
    local mainFrame = Window.UIElements.Main
    if not mainFrame then return end
    
    -- 创建样式表
    local styleSheet = Instance.new("StyleSheet")
    styleSheet.Parent = mainFrame
    
    -- 创建样式规则
    local rule = Instance.new("StyleRule")
    rule.Selector = "Button, ImageButton, TextButton"
    rule.Parent = styleSheet
    
    -- 设置边框样式
    local borderProp = Instance.new("StyleProperty")
    borderProp.Name = "BorderSizePixel"
    borderProp.Value = 1
    borderProp.Parent = rule
    
    local colorProp = Instance.new("StyleProperty")
    colorProp.Name = "BorderColor3"
    colorProp.Value = Color3.fromRGB(255, 255, 255)
    colorProp.Parent = rule
end

-- 主题切换按钮
Window:CreateTopbarButton("theme-switcher", "moon", function()
    local themes_list = {"Dark", "Light", "Mocha", "Aqua"}
    currentThemeIndex = (currentThemeIndex % #themes_list) + 1
    local newTheme = themes_list[currentThemeIndex]
    WindUI:SetTheme(newTheme)
    WindUI:Notify({
        Title = "主题已切换",
        Content = "当前主题: "..newTheme,
        Duration = 2
    })
end, 990)

-- 修改主题颜色
WindUI.Themes.Dark.Toggle = Color3.fromHex("FF69B4")
WindUI.Themes.Dark.Checkbox = Color3.fromHex("FFB6C1")
WindUI.Themes.Dark.Button = Color3.fromHex("FF1493")
WindUI.Themes.Dark.Slider = Color3.fromHex("FF69B4")

-- 彩虹边框颜色方案
local COLOR_SCHEMES = {
    ["彩虹颜色"] = {ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromHex("FF0000")),
        ColorSequenceKeypoint.new(0.16, Color3.fromHex("FFA500")),
        ColorSequenceKeypoint.new(0.33, Color3.fromHex("FFFF00")),
        ColorSequenceKeypoint.new(0.5, Color3.fromHex("00FF00")),
        ColorSequenceKeypoint.new(0.66, Color3.fromHex("0000FF")),
        ColorSequenceKeypoint.new(0.83, Color3.fromHex("4B0082")),
        ColorSequenceKeypoint.new(1, Color3.fromHex("EE82EE"))
    }), "palette"},
    
    ["樱花粉1"] = {ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromHex("FF69B4")),
        ColorSequenceKeypoint.new(0.5, Color3.fromHex("FF1493")),
        ColorSequenceKeypoint.new(1, Color3.fromHex("FFB6C1"))
    }), "candy"},

    ["樱花粉2"] = {ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromHex("FED0E0")),
        ColorSequenceKeypoint.new(0.2, Color3.fromHex("FDBAD2")),
        ColorSequenceKeypoint.new(0.4, Color3.fromHex("FCA5C5")),
        ColorSequenceKeypoint.new(0.6, Color3.fromHex("FB8FB7")),
        ColorSequenceKeypoint.new(0.8, Color3.fromHex("FA7AA9")),
        ColorSequenceKeypoint.new(1, Color3.fromHex("F9649B"))
    }), "waves"},
}

Window:EditOpenButton({
    Title = "XIAOXI",
    CornerRadius = UDim.new(16,16),
    StrokeThickness = 2,
    Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 188, 217)),
        ColorSequenceKeypoint.new(0.3, Color3.fromRGB(255, 153, 204)),
        ColorSequenceKeypoint.new(0.6, Color3.fromRGB(255, 105, 180)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 192, 203))
    }),
    Draggable = true,
})

-- 创建彩虹边框函数
local function createRainbowBorder(window, colorScheme, speed)
    local mainFrame = window.UIElements.Main
    if not mainFrame then return nil end
    
    local existingStroke = mainFrame:FindFirstChild("RainbowStroke")
    if existingStroke then
        existingStroke:Destroy()
    end
    
    if not mainFrame:FindFirstChildOfClass("UICorner") then
        local corner = Instance.new("UICorner")
        corner.CornerRadius = UDim.new(0, 16)
        corner.Parent = mainFrame
    end
    
    local rainbowStroke = Instance.new("UIStroke")
    rainbowStroke.Name = "RainbowStroke"
    rainbowStroke.Thickness = 2
    rainbowStroke.Color = Color3.new(1, 1, 1)
    rainbowStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    rainbowStroke.LineJoinMode = Enum.LineJoinMode.Round
    rainbowStroke.Parent = mainFrame
    
    local glowEffect = Instance.new("UIGradient")
    glowEffect.Name = "GlowEffect"
    
    local schemeData = COLOR_SCHEMES[colorScheme or "樱花粉2"]
    if schemeData then
        glowEffect.Color = schemeData[1]
    else
        glowEffect.Color = COLOR_SCHEMES["樱花粉2"][1]
    end
    
    glowEffect.Rotation = 0
    glowEffect.Parent = rainbowStroke
    
    return rainbowStroke
end

-- 边框动画函数
local function startBorderAnimation(window, speed)
    local mainFrame = window.UIElements.Main
    if not mainFrame then return nil end
    
    local rainbowStroke = mainFrame:FindFirstChild("RainbowStroke")
    if not rainbowStroke then return nil end
    
    local glowEffect = rainbowStroke:FindFirstChild("GlowEffect")
    if not glowEffect then return nil end
    
    local animation = game:GetService("RunService").Heartbeat:Connect(function()
        if not rainbowStroke or rainbowStroke.Parent == nil then
            animation:Disconnect()
            return
        end
        
        local time = tick()
        glowEffect.Rotation = (time * speed * 60) % 360
    end)
    
    return animation
end

-- 初始化边框动画
local borderAnimation
local borderEnabled = true
local currentColor = "樱花粉2"
local animationSpeed = 5

local rainbowStroke = createRainbowBorder(Window, currentColor, animationSpeed)
if rainbowStroke then
    borderAnimation = startBorderAnimation(Window, animationSpeed)
end

Window:SetToggleKey(Enum.KeyCode.F, true)

-- 创建选项卡
local Tabs = {
    Main = Window:Tab({ Title = "主页", Icon = "home" }),
    Elements = Window:Tab({ Title = "杀戮区", Icon = "layout-grid" }),
    Rage = Window:Tab({ Title = "辅助区", Icon = "skull" }), 
    Settings = Window:Tab({ Title = "设置", Icon = "settings" }),
    Config = Window:Tab({ Title = "配置", Icon = "save" })
}

-- ==================== 主页内容 ====================
Tabs.Main:Paragraph({
    Title = "欢迎使用XIAIXI内火",
    Desc = "作者：小西｜ UI提供：鱼腥草｜赛马娘\n版本：v1.0.0\n\n本人亲自制作",
    ImageSize = 50,
    Thumbnail = "https://raw.githubusercontent.com/xiaoxi9008/chesksks/refs/heads/main/1357873301.jpg",
    ThumbnailSize = 170
})

Tabs.Main:Divider()

Tabs.Main:Button({
    Title = "显示欢迎通知",
    Icon = "bell",
    Callback = function()
        WindUI:Notify({
            Title = "欢迎!",
            Content = "感谢使用XIAOXI",
            Icon = "heart",
            Duration = 3
        })
    end
})

-- ==================== UI元素选项卡 ====================
local elementSection = Tabs.Elements:Section({ Title = "杀戮（杀戮光环）", Icon = "box", Opened = true })



local aimbotToggleState = false
local aimbotDemo = elementSection:Toggle({
    Title = "(移速修改)",
    Default = false,
    Callback = function(v)
        if v == true then
            sudu = game:GetService("RunService").Heartbeat:Connect(function()
                if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Humanoid and game:GetService("Players").LocalPlayer.Character.Humanoid.Parent then
                    if game:GetService("Players").LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
                        game:GetService("Players").LocalPlayer.Character:TranslateBy(game:GetService("Players").LocalPlayer.Character.Humanoid.MoveDirection * Speed / 10)
                    end
                end
            end)
        elseif not v and sudu then
            sudu:Disconnect()
            sudu = nil
        end
    end
})    
elementSection:Slider({
    Title = "速度设置",
    Value = {
        Min = 1,
        Max = 100,
        Default = 1,
    },
    Callback = function(Value)
        Speed = Value
    end
})

elementSection:Toggle({
    Title = "开启/关闭杀戮光环",
    Icon = "sword",
    Value = false,
    Callback = function(Value)
        AuraSettings.silentaura = Value
        if Value then
            local function AttackZombie(target, weapon, headshot)
                local char = getCharacter()
                local hitPos = headshot and target.Head.Position or target.PrimaryPart.Position
                hitPos = hitPos + char.Head.CFrame.LookVector * 2.55
                
                if weapon.Parent ~= char then 
                    weapon.Parent = char 
                end
                
                weapon.RemoteEvent:FireServer("Swing", "Side")
                local args
                if target:GetAttribute("Type") ~= "barrel" then
                    args = {"HitZombie", target, hitPos, true}
                else
                    args = {"HitZombie", target, target.L.CFrame.Position + char.Head.CFrame.LookVector * 2.55, false}
                end
                weapon.RemoteEvent:FireServer(unpack(args))
            end

            if _G.AuraLoop then 
                _G.AuraLoop:Disconnect() 
                _G.AuraLoop = nil
            end
            
            _G.AuraLoop = RunService.Heartbeat:Connect(function()
                local char = getCharacter()
                if AuraSettings.silentaura and char and char:FindFirstChild("HumanoidRootPart") and char:FindFirstChild("Humanoid") then
                    pcall(function()
                        for _, zombie in pairs(workspace.Zombies:GetChildren()) do
                            if zombie and zombie.PrimaryPart and zombie:FindFirstChildOfClass("Humanoid") and zombie:FindFirstChild("State") and zombie.State.Value ~= "Spawn" and char.Humanoid.Health > 0 then
                                local dist = GetDistance(zombie)
                                if dist <= AuraSettings.attackRange then
                                    local isBarrel = zombie:GetAttribute("Type") == "Barrel"
                                    if AuraSettings.barrel or not isBarrel then
                                        local weapon = GetWeaponByType() or GetCurrentWeapon()
                                        if weapon then
                                            local range = weapon.Name == "Pike" and AuraSettings.pikeRange or (weapon.Name == "Axe" and AuraSettings.axeRange or AuraSettings.defaultRange)
                                            
                                            if AuraSettings.rotation then
                                                char.Humanoid.AutoRotate = false
                                                char.HumanoidRootPart.CFrame = CFrame.lookAt(char.HumanoidRootPart.Position, Vector3.new(zombie.PrimaryPart.Position.X, char.HumanoidRootPart.Position.Y, zombie.PrimaryPart.Position.Z))
                                                char.Humanoid.AutoRotate = true
                                            end
                                            
                                            if dist <= range then
                                                local headshot = AuraSettings.attackhead
                                                if headshot then headshot = not isBarrel end
                                                AttackZombie(zombie, weapon, headshot)
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end)
                end
            end)
        else
            if _G.AuraLoop then 
                _G.AuraLoop:Disconnect() 
                _G.AuraLoop = nil
            end
        end
    end
})

elementSection:Section({Title = "刺刀光环"})
elementSection:Toggle({
    Title = "开启/关闭刺刀光环",
    Icon = "sword",
    Value = false,
    Callback = function(Value)
        BayonetSettings.silentaura = Value
        if Value then
            if _G.BayonetLoop then 
                _G.BayonetLoop:Disconnect() 
                _G.BayonetLoop = nil
            end
            
            _G.BayonetLoop = RunService.Heartbeat:Connect(function()
                local char = getCharacter()
                if BayonetSettings.silentaura and char and char:FindFirstChild("HumanoidRootPart") and char:FindFirstChild("Humanoid") then
                    pcall(function()
                        local weapon = GetMusket()
                        if weapon then
                            for _, zombie in pairs(workspace.Zombies:GetChildren()) do
                                if zombie and zombie.PrimaryPart and zombie:FindFirstChildOfClass("Humanoid") and zombie:FindFirstChild("State") and zombie.State.Value ~= "Spawn" and char.Humanoid.Health > 0 then
                                    local dist = GetDistance(zombie)
                                    local isBarrel = zombie:GetAttribute("Type") == "Barrel"
                                    if (BayonetSettings.barrel or not isBarrel) and dist <= BayonetSettings.thrustRange then
                                        if dist > BayonetSettings.attackRange then
                                            weapon.RemoteEvent:FireServer("ThrustBayonet")
                                        else
                                            local hitPart = BayonetSettings.attackhead and "Head" or "Torso"
                                            local hitPos = BayonetSettings.attackhead and zombie.Head.Position or zombie.PrimaryPart.Position
                                            weapon.RemoteEvent:FireServer("Bayonet_HitZombie", zombie, hitPos, false, hitPart)
                                        end
                                        
                                        if BayonetSettings.rotation then
                                            char.Humanoid.AutoRotate = false
                                            char.HumanoidRootPart.CFrame = CFrame.lookAt(char.HumanoidRootPart.Position, Vector3.new(zombie.PrimaryPart.Position.X, char.HumanoidRootPart.Position.Y, zombie.PrimaryPart.Position.Z))
                                            char.Humanoid.AutoRotate = true
                                        end
                                    end
                                end
                            end
                        end
                    end)
                end
            end)
        else
            if _G.BayonetLoop then 
                _G.BayonetLoop:Disconnect() 
                _G.BayonetLoop = nil
            end
        end
    end
})

elementSection:Section({Title = "杀戮光环设置"})
elementSection:Toggle({
    Title = "攻击头部",
    Icon = "target",
    Value = false,
    Callback = function(Value) 
        AuraSettings.attackhead = Value 
    end
})
elementSection:Toggle({
    Title = "攻击炸药桶",
    Icon = "bomb",
    Value = false,
    Callback = function(Value) 
        AuraSettings.barrel = Value 
    end
})
elementSection:Toggle({
    Title = "自动转向",
    Icon = "rotate-cw",
    Value = false,
    Callback = function(Value) 
        AuraSettings.rotation = Value 
    end
})
elementSection:Slider({
    Title = "自动转向触发范围",
    Value = {Min = 5, Max = 50, Default = 19},
    Callback = function(value)
        AuraSettings.attackRange = value
    end
})
elementSection:Slider({
    Title = "长矛攻击范围",
    Value = {Min = 5, Max = 30, Default = 17},
    Callback = function(value)
        AuraSettings.pikeRange = value
    end
})
elementSection:Slider({
    Title = "斧头攻击范围",
    Value = {Min = 5, Max = 20, Default = 8},
    Callback = function(value)
        AuraSettings.axeRange = value
    end
})
elementSection:Slider({
    Title = "其他武器攻击范围",
    Value = {Min = 5, Max = 20, Default = 10},
    Callback = function(value)
        AuraSettings.defaultRange = value
    end
})

elementSection:Section({Title = "刺刀光环设置"})
elementSection:Toggle({
    Title = "攻击头部",
    Icon = "target",
    Value = false,
    Callback = function(Value) 
        BayonetSettings.attackhead = Value 
    end
})
elementSection:Toggle({
    Title = "攻击炸药桶",
    Icon = "bomb",
    Value = false,
    Callback = function(Value) 
        BayonetSettings.barrel = Value 
    end
})
elementSection:Toggle({
    Title = "自动转向",
    Icon = "rotate-cw",
    Value = false,
    Callback = function(Value) 
        BayonetSettings.rotation = Value 
    end
})
elementSection:Slider({
    Title = "自动转向触发范围",
    Value = {Min = 5, Max = 30, Default = 15},
    Callback = function(value)
        BayonetSettings.attackRange = value
    end
})
elementSection:Slider({
    Title = "刺刀攻击范围",
    Value = {Min = 5, Max = 20, Default = 10},
    Callback = function(value)
        BayonetSettings.thrustRange = value
    end
})

elementSection:Section({Title = "高级战斗功能"})
elementSection:Toggle({
    Title = "自动打怪自救",
    Icon = "shield",
    Value = false,
    Callback = function(Value)
        if Value then
            if _G.SelfRescueLoop then 
                _G.SelfRescueLoop:Disconnect() 
                _G.SelfRescueLoop = nil
            end
            
            _G.SelfRescueLoop = RunService.Heartbeat:Connect(function()
                local weapon = GetMeleeWeapon()
                if weapon then
                    for _, zombie in pairs(workspace.Zombies:GetChildren()) do
                        pcall(function()
                            if zombie:GetAttribute("Type") ~= "Barrel" and zombie:FindFirstChild("HumanoidRootPart") then
                                AttackTarget(weapon, true, true, zombie, true)
                                task.wait(0.1)
                            end
                        end)
                    end
                end
            end)
        else
            if _G.SelfRescueLoop then 
                _G.SelfRescueLoop:Disconnect() 
                _G.SelfRescueLoop = nil
            end
        end
    end
})
elementSection:Toggle({
    Title = "自动攻击",
    Icon = "target",
    Value = false,
    Callback = function(Value)
        if Value then
            if _G.AutoAttackConnection then 
                _G.AutoAttackConnection:Disconnect() 
                _G.AutoAttackConnection = nil
            end
            
            local lastAttack = 0
            local cooldown = 0.5
            _G.AutoAttackConnection = RunService.Heartbeat:Connect(function()
                if tick() - lastAttack >= cooldown then
                    local targets = {}
                    local char = getCharacter()
                    if char and char:FindFirstChild("HumanoidRootPart") then
                        local myPos = char.HumanoidRootPart.Position
                        local range = 105
                        
                        local enemies = workspace:FindFirstChild("Zombies") or workspace:FindFirstChild("Enemies")
                        if enemies then
                            for _, enemy in ipairs(enemies:GetChildren()) do
                                if enemy:IsA("Model") and IsAlive(enemy) then
                                    local root = enemy:FindFirstChild("HumanoidRootPart") or enemy:FindFirstChild("Torso")
                                    if root and (myPos - root.Position).Magnitude <= range then
                                        table.insert(targets, {model = enemy, dist = (myPos - root.Position).Magnitude})
                                    end
                                end
                            end
                        end
                        
                        for _, child in ipairs(workspace:GetChildren()) do
                            if child:IsA("Model") and IsAlive(child) then
                                local root = child:FindFirstChild("HumanoidRootPart") or child:FindFirstChild("Torso")
                                if root and (myPos - root.Position).Magnitude <= range then
                                    table.insert(targets, {model = child, dist = (myPos - root.Position).Magnitude})
                                end
                            end
                        end
                        
                        table.sort(targets, function(a, b) return a.dist < b.dist end)
                        
                        if #targets > 0 and PerformAttack(targets[1].model) then
                            lastAttack = tick()
                        end
                    end
                end
            end)
        else
            if _G.AutoAttackConnection then 
                _G.AutoAttackConnection:Disconnect() 
                _G.AutoAttackConnection = nil
            end
        end
    end
})



-- ==============================================
-- 暴力区内容
-- ==============================================

local RageSection = Tabs.Rage:Section({ Title = "辅助功能" })
RageSection:Toggle({
    Title = "自动修复建筑",
    Icon = "hammer",
    Value = false,
    Callback = function(Value)
        if Value then
            if _G.AutoRepairLoop then return end
            _G.AutoRepairLoop = true
            
            task.spawn(function()
                while _G.AutoRepairLoop do
                    local cam = workspace.CurrentCamera
                    local char = getCharacter()
                    if char then
                        local buildings = workspace:FindFirstChild("Buildings")
                        if buildings then
                            local closestDist = math.huge
                            local targetHealth = nil
                            local center = Vector2.new(cam.ViewportSize.X/2, cam.ViewportSize.Y/2)
                            
                            local function CheckModel(model)
                                local health = model:FindFirstChild("BuildingHealth")
                                local hitbox = health and model:FindFirstChild("Hitbox")
                                if hitbox then
                                    local screenPos, onScreen = cam:WorldToScreenPoint(hitbox.CFrame.Position)
                                    if onScreen then
                                        local dist = (Vector2.new(screenPos.X, screenPos.Y) - center).Magnitude
                                        if dist < closestDist then
                                            closestDist = dist
                                            targetHealth = health
                                        end
                                    end
                                end
                            end
                            
                            for _, folder in ipairs(buildings:GetChildren()) do
                                if folder:IsA("Folder") then
                                    for _, model in ipairs(folder:GetChildren()) do
                                        if model:IsA("Model") then CheckModel(model) end
                                    end
                                end
                            end
                            
                            local caltrops = workspace:FindFirstChild("Caltrops")
                            if caltrops and caltrops:IsA("Model") then CheckModel(caltrops) end
                            local stakes = workspace:FindFirstChild("Stakes")
                            if stakes then CheckModel(stakes) end
                            
                            if targetHealth then
                                local hammer = char:FindFirstChild("Hammer")
                                local remote = hammer and hammer:FindFirstChild("RemoteEvent")
                                if remote then
                                    remote:FireServer("Repair", targetHealth)
                                end
                            end
                        end
                    end
                    task.wait(0.01)
                end
            end)
        else
            _G.AutoRepairLoop = false
        end
    end
})
RageSection:Toggle({
    Title = "自动挖雪",
    Icon = "shovel",
    Value = false,
    Callback = function(Value)
        local paths = {
            "Vardohus Fortress/Modes/Objective/DoorSnow/Diggable",
            "Vardohus Fortress/Modes/Objective/Diggable",
            "OLD Vardohus Fortress/Modes/Objective/DigSnow/Diggable"
        }
        
        local function GetShovel()
            local char = getCharacter()
            if not char then return nil end
            for _, child in pairs(char:GetChildren()) do
                if (child.Name == "Shovel" or child.Name == "Spade") and child:FindFirstChild("RemoteEvent") then return child end
            end
            for _, child in pairs(player.Backpack:GetChildren()) do
                if (child.Name == "Shovel" or child.Name == "Spade") and child:FindFirstChild("RemoteEvent") then return child end
            end
            return nil
        end
        
        local function GetSnowTarget()
            for _, path in ipairs(paths) do
                local parts = path:split("/")
                local current = workspace
                for _, name in ipairs(parts) do
                    current = current and current:FindFirstChild(name)
                end
                if current then return current end
            end
            return nil
        end
        
        if Value then
            if _G.AutoDigLoop then 
                _G.AutoDigLoop:Disconnect() 
                _G.AutoDigLoop = nil
            end
            
            _G.AutoDigLoop = RunService.Heartbeat:Connect(function()
                local target = GetSnowTarget()
                if target then
                    local shovel = GetShovel()
                    if shovel then
                        if shovel.Parent ~= player.Character then
                            shovel.Parent = player.Character
                            task.wait(0.2)
                        end
                        if shovel:FindFirstChild("RemoteEvent") then
                            shovel.RemoteEvent:FireServer("Dig", target, target.Position)
                        end
                    end
                end
            end)
        else
            if _G.AutoDigLoop then 
                _G.AutoDigLoop:Disconnect() 
                _G.AutoDigLoop = nil
            end
        end
    end
})
RageSection:Toggle({
    Title = "自动水桶灭火",
    Icon = "droplets",
    Value = false,
    Callback = function(Value)
        if Value then
            if _G.AutoBucketLoop then 
                _G.AutoBucketLoop:Disconnect() 
                _G.AutoBucketLoop = nil
            end
            
            _G.AutoBucketLoop = RunService.Heartbeat:Connect(function()
                local char = getCharacter()
                if not char then return end
                
                local bucket = char:FindFirstChild("Water Bucket") or player.Backpack:FindFirstChild("Water Bucket")
                
                if bucket then
                    if bucket.Parent ~= char then
                        bucket.Parent = char
                        task.wait(0.1)
                    end
                    if bucket:FindFirstChild("RemoteEvent") then
                        bucket.RemoteEvent:FireServer("Throw")
                        task.spawn(function()
                            task.wait(0.2)
                            if bucket and bucket.Parent == char then
                                bucket.Parent = player.Backpack
                            end
                        end)
                    end
                end
            end)
        else
            if _G.AutoBucketLoop then 
                _G.AutoBucketLoop:Disconnect() 
                _G.AutoBucketLoop = nil
            end
        end
    end
})
RageSection:Toggle({
    Title = "自动敲钟",
    Icon = "bell",
    Value = false,
    Callback = function(Value)
        if Value then
            if _G.AutoBellLoop then 
                _G.AutoBellLoop:Disconnect() 
                _G.AutoBellLoop = nil
            end
            
            _G.AutoBellLoop = RunService.Heartbeat:Connect(function()
                if workspace:FindFirstChild("Leipzig") and workspace.Leipzig:FindFirstChild("Modes") then
                    workspace.Leipzig.Modes.Objective.BellInteract.Interact:FireServer()
                end
            end)
        else
            if _G.AutoBellLoop then 
                _G.AutoBellLoop:Disconnect() 
                _G.AutoBellLoop = nil
            end
        end
    end
})

RageSection:Section({Title = "生存功能"})
RageSection:Toggle({
    Title = "自动移除摔落伤害",
    Icon = "shield",
    Value = false,
    Callback = function(Value)
        _G.AutoSelfDamage = Value
        if _G.AutoSelfDamage then
            task.spawn(function()
                while _G.AutoSelfDamage do
                    if getCharacter() and getCharacter():FindFirstChild("Health") then
                        getCharacter().Health.ForceSelfDamage:FireServer(0)
                    end
                    task.wait()
                end
            end)
        end
    end
})
RageSection:Toggle({
    Title = "保持物品栏",
    Icon = "package",
    Value = false,
    Callback = function(Value)
        if Value then
            if not player.PlayerGui:FindFirstChild("BackpackGui") then return end
            player.PlayerGui.BackpackGui.Enabled = true
            player.PlayerGui.BackpackGui:GetPropertyChangedSignal("Enabled"):Connect(function()
                player.PlayerGui.BackpackGui.Enabled = true
            end)
            player.CharacterAdded:Connect(function()
                task.wait(1)
                if player.PlayerGui:FindFirstChild("BackpackGui") then
                    player.PlayerGui.BackpackGui.Enabled = true
                end
            end)
        end
    end
})

RageSection:Section({Title = "成就功能"})
RageSection:Button({
    Title = "解锁复仇之刃成就",
    Icon = "trophy",
    Callback = function()
        local hidden = player:FindFirstChild("HiddenAchievements")
        if hidden then
            local ach = hidden:FindFirstChild("LeRevenant")
            if ach and ach:IsA("BoolValue") then
                ach.Value = true
                Window:Notify({
                    Title = "成就解锁成功",
                    Description = "复仇之刃成就已解锁！",
                    Duration = 5
                })
            else
                Window:Notify({
                    Title = "成就解锁失败",
                    Description = "未找到复仇之刃成就数据",
                    Duration = 5
                })
            end
        end
    end
})

-- ==================== 设置选项卡 ====================
-- 边框设置区域

local borderSection = Tabs.Settings:Section({ Title = "边框设置", Icon = "square", Opened = true })

borderSection:Toggle({
    Title = "启用边框",
    Value = true,
    Callback = function(value)
        borderEnabled = value
        local mainFrame = Window.UIElements.Main
        if mainFrame then
            local rainbowStroke = mainFrame:FindFirstChild("RainbowStroke")
            if rainbowStroke then
                rainbowStroke.Enabled = value
                if value and not borderAnimation then
                    borderAnimation = startBorderAnimation(Window, animationSpeed)
                elseif not value and borderAnimation then
                    borderAnimation:Disconnect()
                    borderAnimation = nil
                end
            end
        end
    end
})

local colorNames = {}
for name, _ in pairs(COLOR_SCHEMES) do
    table.insert(colorNames, name)
end

borderSection:Dropdown({
    Title = "颜色方案",
    Values = colorNames,
    Value = "樱花粉2",
    Callback = function(value)
        currentColor = value
        local mainFrame = Window.UIElements.Main
        if mainFrame then
            local rainbowStroke = mainFrame:FindFirstChild("RainbowStroke")
            if rainbowStroke then
                local glowEffect = rainbowStroke:FindFirstChild("GlowEffect")
                if glowEffect then
                    local schemeData = COLOR_SCHEMES[value]
                    if schemeData then
                        glowEffect.Color = schemeData[1]
                    end
                end
            end
        end
    end
})

borderSection:Slider({
    Title = "动画速度",
    Value = {
        Min = 1,
        Max = 10,
        Default = 5,
    },
    Callback = function(value)
        animationSpeed = value
        if borderAnimation then
            borderAnimation:Disconnect()
            borderAnimation = nil
        end
        if borderEnabled then
            borderAnimation = startBorderAnimation(Window, animationSpeed)
        end
    end
})

borderSection:Slider({
    Title = "边框粗细",
    Value = {
        Min = 1,
        Max = 5,
        Default = 2,
    },
    Step = 0.5,
    Callback = function(value)
        local mainFrame = Window.UIElements.Main
        if mainFrame then
            local rainbowStroke = mainFrame:FindFirstChild("RainbowStroke")
            if rainbowStroke then
                rainbowStroke.Thickness = value
            end
        end
    end
})

borderSection:Slider({
    Title = "圆角大小",
    Value = {
        Min = 0,
        Max = 30,
        Default = 16,
    },
    Callback = function(value)
        local mainFrame = Window.UIElements.Main
        if mainFrame then
            local corner = mainFrame:FindFirstChildOfClass("UICorner")
            if not corner then
                corner = Instance.new("UICorner")
                corner.Parent = mainFrame
            end
            corner.CornerRadius = UDim.new(0, value)
        end
    end
})

-- 外观设置区域
local appearanceSection = Tabs.Settings:Section({ Title = "外观设置", Icon = "brush", Opened = true })

local themes_list = {}
for themeName, _ in pairs(WindUI:GetThemes()) do
    table.insert(themes_list, themeName)
end
table.sort(themes_list)

local themeDropdown = appearanceSection:Dropdown({
    Title = "选择主题",
    Values = themes_list,
    Value = "Dark",
    Callback = function(theme)
        WindUI:SetTheme(theme)
        WindUI:Notify({
            Title = "主题已应用",
            Content = theme,
            Icon = "palette",
            Duration = 2
        })
    end
})

local transparencySlider = appearanceSection:Slider({
    Title = "透明度",
    Value = { 
        Min = 0,
        Max = 1,
        Default = 0.2,
    },
    Step = 0.1,
    Callback = function(value)
        Window:ToggleTransparency(tonumber(value) > 0)
        WindUI.TransparencyValue = tonumber(value)
    end
})

-- ==================== 配置选项卡 ====================
local configSection = Tabs.Config:Section({ Title = "配置管理", Icon = "settings", Opened = true })

configSection:Paragraph({
    Title = "配置管理器",
    Desc = "保存和加载你的设置",
    Image = "save",
    ImageSize = 20,
    Color = "White"
})

local configName = "default"
local configFile = nil
local MyPlayerData = {
    name = "Player1",
    level = 1,
    inventory = { "sword", "shield", "potion" }
}

configSection:Input({
    Title = "配置名称",
    Value = configName,
    Callback = function(value)
        configName = value
    end
})

local ConfigManager = Window.ConfigManager
if ConfigManager then
    ConfigManager:Init(Window)
    
    configSection:Button({
        Title = "保存配置",
        Icon = "save",
        Variant = "Primary",
        Callback = function()
            configFile = ConfigManager:CreateConfig(configName)
            
            configFile:Register("demo1", demo1)
            configFile:Register("themeDropdown", themeDropdown)
            configFile:Register("transparencySlider", transparencySlider)
            
            configFile:Set("playerData", MyPlayerData)
            configFile:Set("lastSave", os.date("%Y-%m-%d %H:%M:%S"))
            
            if configFile:Save() then
                WindUI:Notify({ 
                    Title = "保存配置", 
                    Content = "已保存为: "..configName,
                    Icon = "check",
                    Duration = 3
                })
            else
                WindUI:Notify({ 
                    Title = "错误", 
                    Content = "保存配置失败",
                    Icon = "x",
                    Duration = 3
                })
            end
        end
    })

    configSection:Button({
        Title = "加载配置",
        Icon = "folder",
        Callback = function()
            configFile = ConfigManager:CreateConfig(configName)
            local loadedData = configFile:Load()
            
            if loadedData then
                if loadedData.playerData then
                    MyPlayerData = loadedData.playerData
                end
                
                local lastSave = loadedData.lastSave or "未知"
                WindUI:Notify({ 
                    Title = "加载配置", 
                    Content = "已加载: "..configName.."\n上次保存: "..lastSave,
                    Icon = "refresh-cw",
                    Duration = 5
                })
                
                configSection:Paragraph({
                    Title = "玩家数据",
                    Desc = string.format("名称: %s\n等级: %d\n物品: %s", 
                        MyPlayerData.name, 
                        MyPlayerData.level, 
                        table.concat(MyPlayerData.inventory, ", "))
                })
            else
                WindUI:Notify({ 
                    Title = "错误", 
                    Content = "加载配置失败",
                    Icon = "x",
                    Duration = 3
                })
            end
        end
    })
    
    -- 配置文件列表
    configSection:Button({
        Title = "列出所有配置",
        Icon = "list",
        Callback = function()
            local files = ConfigManager:ListConfigs()
            local fileList = "找到 "..#files.." 个配置:\n"
            for i, file in ipairs(files) do
                fileList = fileList .. i .. ". " .. file .. "\n"
            end
            WindUI:Notify({
                Title = "配置文件列表",
                Content = fileList,
                Duration = 5
            })
        end
    })
else
    configSection:Paragraph({
        Title = "配置管理器不可用",
        Desc = "此功能需要ConfigManager",
        Image = "alert-triangle",
        ImageSize = 20,
        Color = "White"
    })
end

-- 关于信息
local aboutSection = Tabs.Config:Section({ Title = "关于" })
aboutSection:Paragraph({
    Title = "Created with ❤️",
    Desc = "github.com/Footagesus/WindUI\n作者：by小西\n\n赛马娘 v1.0.0",
    Image = "🐧",
    ImageSize = 20,
    Color = "Grey",
    Buttons = {
        {
            Title = "复制链接",
            Icon = "copy",
            Variant = "Tertiary",
            Callback = function()
                setclipboard("点击链接加入群聊【XIAOXI脚本交流群】：https://qun.qq.com/universal-share/share?ac=1&authKey=QFfUnAEA4%2Fl0OyCO3bT4WwsSAoH4uawb1X%2B4D%2BV%2BEPdGXCzG0xnW541cVKPWT32w&busi_data=eyJncm91cENvZGUiOiI3MDUzNzgzOTYiLCJ0b2tlbiI6ImM1QzUxSzdheS9WdFhzWEhSQkJtdVMrTGUxaksxVVpNRlpMME1HN1B1Q1dMTWJkNDQweERwR2pSTW1jY0lMZDgiLCJ1aW4iOiIzNTc0NzY5NDE1In0%3D&data=-q1IPpKFudK4NYNqzx69YRE_ZVkiDj0ttAoJkXlFSzQy0brM-AuEjxjtwF1YERpY4Fp8BkiKyGL_xHxgA8r7aA&svctype=4&tempid=h5_group_info")
                WindUI:Notify({
                    Title = "已复制!",
                    Content = "GitHub链接已复制到剪贴板",
                    Duration = 2
                })
            end
        }
    }
})

-- 窗口关闭清理
Window:OnClose(function()
    print("窗口关闭")
    
    if borderAnimation then
        borderAnimation:Disconnect()
        borderAnimation = nil
    end
    
    if ConfigManager and configFile then
        configFile:Set("playerData", MyPlayerData)
        configFile:Set("lastSave", os.date("%Y-%m-%d %H:%M:%S"))
        configFile:Save()
        print("配置已自动保存")
    end
end)

Window:OnDestroy(function()
    print("窗口已销毁")
end)