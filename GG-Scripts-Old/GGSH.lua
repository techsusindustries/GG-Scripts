local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/techsusindustries/GG-Scripts/refs/heads/main/GG-Scripts-Old/GGSH-SRC.lua"))()

local gui = Library:create{
    Name = "Goon Gang Hub",
    Link = "goonganghub",
    Theme = Library.Themes.Dark
}

gui:credit{
    Name = "General Goonobi",
    Description = "Goon Gang Hub Creator and Manager",
    Discord = "techsusadmin"
}

gui:credit{
    Name = "Discord Server",
    Description = "Discord Server for the Goon Gang",
    Discord = "https://discord.gg/7mugJ52mz8"
}

local ustab = gui:tab{
    Icon = "rbxassetid://110576747774732",
    Name = "Universal Scripts"
}

ustab:button{
    Name = "Infinite Yield(IY)",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end
}

ustab:button{
    Name = "Universal Aimbot",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/FakeAngles/PasteWare/refs/heads/main/PasteWare.lua"))()
    end
}

local jbtab = gui:tab{
    Icon = "rbxthumb://type=Asset&id=1655071045&w=420&h=420",
    Name = "Jailbreak Scripts"
}

jbtab:button{
    Name = "Esp and Remove Obstacles/Lasers",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/zyn789/Aoi-Script/main/Jailbreak"))()
    end
}

jbtab:button{
    Name = "Cop/Criminal Aimbot(within 600 studs)",
    Callback = function()
        --/ max distance is 600 studs
getgenv().toggled = true --/ true & false

getgenv().old = getgenv().old or require(game:GetService("ReplicatedStorage").Module.RayCast).RayIgnoreNonCollideWithIgnoreList

if getgenv().toggled then
 require(game:GetService("ReplicatedStorage").Module.RayCast).RayIgnoreNonCollideWithIgnoreList = function(...)
  local nearestDistance, nearestEnemy = 600, nil
     for i,v in pairs(game:GetService("Players"):GetPlayers()) do
      if v.Team ~= game:GetService("Players").LocalPlayer.Team and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
          if (v.Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < nearestDistance then
           nearestDistance, nearestEnemy = (v.Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude, v
          end
      end
     end
     local arg = {old(...)}
     if (tostring(getfenv(2).script) == "BulletEmitter" or tostring(getfenv(2).script) == "Taser") and nearestEnemy then
      arg[1] = nearestEnemy.Character.HumanoidRootPart
      arg[2] = nearestEnemy.Character.HumanoidRootPart.Position
  end
     return unpack(arg)
 end
else
 require(game:GetService("ReplicatedStorage").Module.RayCast).RayIgnoreNonCollideWithIgnoreList = getgenv().old
end
    end
}

jbtab:button{
    Name = "UniversalFarm AutoRob/AutoArrest(Breaks Sometimes)",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/BlitzIsKing/UniversalFarm/main/Loader/Regular'))()
    end
}

jbtab:button{
    Name = "Project Auto AutoRob(Best, Requires one time key)",
    Callback = function()
        loadstring(game:HttpGet('https://scripts.projectauto.xyz/AutoRobV6'))()
    end
}

jbtab:button{
    Name = "Project Auto AutoArrest(Best, Requires one time key)",
    Callback = function()
        loadstring(game:HttpGet('https://scripts.projectauto.xyz/AutoArrestV4'))()
    end
}

local igtab = gui:tab{
    Icon = "rbxassetid://73799762771015",
    Name = "Ink Game Scripts"
}

igtab:button{
    Name = "Voidware(Broken, fixed soon)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/VapeVoidware/VW-Add/main/inkgame.lua", true))()
    end
}

igtab:button{
    Name = "Ringta(Working)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/wefwef127382/inkgames.github.io/refs/heads/main/ringta.lua"))()
    end
}

local ndstab = gui:tab{
    Icon = "rbxassetid://88208086340781",
    Name = "NDS Scripts"
}

ndstab:button{
    Name = "Super Ring Parts V6",
    Callback = function()
        local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local SoundService = game:GetService("SoundService")
local StarterGui = game:GetService("StarterGui")
local HttpService = game:GetService("HttpService")

local LocalPlayer = Players.LocalPlayer

-- Sound Effects
local function playSound(soundId)
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://" .. soundId
    sound.Parent = SoundService
    sound:Play()
    sound.Ended:Connect(function()
        sound:Destroy()
    end)
end

-- Play initial sound
playSound("2865227271")

-- GUI Creation
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "SuperRingPartsGUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 300, 0, 500)
MainFrame.Position = UDim2.new(0.5, -150, 0.5, -250)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

-- Make the GUI round
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 20)
UICorner.Parent = MainFrame

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 40)
Title.Position = UDim2.new(0, 0, 0, 0)
Title.Text = "Super Ring Parts V6 by lukas"
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.BackgroundColor3 = Color3.fromRGB(0, 204, 204)
Title.Font = Enum.Font.Fondamento
Title.TextSize = 22
Title.Parent = MainFrame

-- Round the title
local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 20)
TitleCorner.Parent = Title

local ToggleButton = Instance.new("TextButton")
ToggleButton.Size = UDim2.new(0.8, 0, 0, 40)
ToggleButton.Position = UDim2.new(0.1, 0, 0.1, 0)
ToggleButton.Text = "Ring Off"
ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ToggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
ToggleButton.Font = Enum.Font.Fondamento
ToggleButton.TextSize = 18
ToggleButton.Parent = MainFrame

-- Round the toggle button
local ToggleCorner = Instance.new("UICorner")
ToggleCorner.CornerRadius = UDim.new(0, 10)
ToggleCorner.Parent = ToggleButton

-- Configuration table
local config = {
    radius = 50,
    height = 100,
    rotationSpeed = 10,
    attractionStrength = 1000,
}

-- Save and load functions
local function saveConfig()
    local configStr = HttpService:JSONEncode(config)
    writefile("SuperRingPartsConfig.txt", configStr)
end

local function loadConfig()
    if isfile("SuperRingPartsConfig.txt") then
        local configStr = readfile("SuperRingPartsConfig.txt")
        config = HttpService:JSONDecode(configStr)
    end
end

loadConfig()

-- Function to create control buttons and textboxes
local function createControl(name, positionY, color, labelText, defaultValue, callback)
    local DecreaseButton = Instance.new("TextButton")
    DecreaseButton.Size = UDim2.new(0.2, 0, 0, 40)
    DecreaseButton.Position = UDim2.new(0.1, 0, positionY, 0)
    DecreaseButton.Text = "-"
    DecreaseButton.BackgroundColor3 = color
    DecreaseButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    DecreaseButton.Font = Enum.Font.Fondamento
    DecreaseButton.TextSize = 18
    DecreaseButton.Parent = MainFrame

    local IncreaseButton = Instance.new("TextButton")
    IncreaseButton.Size = UDim2.new(0.2, 0, 0, 40)
    IncreaseButton.Position = UDim2.new(0.7, 0, positionY, 0)
    IncreaseButton.Text = "+"
    IncreaseButton.BackgroundColor3 = color
    IncreaseButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    IncreaseButton.Font = Enum.Font.Fondamento
    IncreaseButton.TextSize = 18
    IncreaseButton.Parent = MainFrame

    local Display = Instance.new("TextLabel")
    Display.Size = UDim2.new(0.4, 0, 0, 40)
    Display.Position = UDim2.new(0.3, 0, positionY, 0)
    Display.Text = labelText .. ": " .. defaultValue
    Display.BackgroundColor3 = Color3.fromRGB(255, 153, 51)
    Display.TextColor3 = Color3.fromRGB(0, 0, 0)
    Display.Font = Enum.Font.Fondamento
    Display.TextSize = 18
    Display.Parent = MainFrame

    -- Add TextBox for input
    local TextBox = Instance.new("TextBox")
    TextBox.Size = UDim2.new(0.8, 0, 0, 35)
    TextBox.Position = UDim2.new(0.1, 0, positionY + 0.1, 0)
    TextBox.PlaceholderText = "Enter " .. labelText
    TextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
    TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextBox.Font = Enum.Font.Fondamento
    TextBox.TextSize = 18
    TextBox.Parent = MainFrame

    local TextBoxCorner = Instance.new("UICorner")
    TextBoxCorner.CornerRadius = UDim.new(0, 10)
    TextBoxCorner.Parent = TextBox

    DecreaseButton.MouseButton1Click:Connect(function()
        local value = tonumber(Display.Text:match("%d+"))
        value = math.max(0, value - 10)
        Display.Text = labelText .. ": " .. value
        callback(value)
        playSound("12221967")
        saveConfig()
    end)

    IncreaseButton.MouseButton1Click:Connect(function()
        local value = tonumber(Display.Text:match("%d+"))
        value = math.min(10000, value + 10)
        Display.Text = labelText .. ": " .. value
        callback(value)
        playSound("12221967")
        saveConfig()
    end)

    TextBox.FocusLost:Connect(function(enterPressed)
        if enterPressed then
            local newValue = tonumber(TextBox.Text)
            if newValue then
                newValue = math.clamp(newValue, 0, 10000)
                Display.Text = labelText .. ": " .. newValue
                TextBox.Text = ""
                callback(newValue)
                playSound("12221967")
                saveConfig()
            else
                TextBox.Text = ""
            end
        end
    end)
end

createControl("Radius", 0.2, Color3.fromRGB(153, 153, 0), "Radius", config.radius, function(value)
    config.radius = value
    saveConfig()
end)

createControl("Height", 0.4, Color3.fromRGB(153, 0, 153), "Height", config.height, function(value)
    config.height = value
    saveConfig()
end)

createControl("RotationSpeed", 0.6, Color3.fromRGB(0, 153, 153), "Rotation Speed", config.rotationSpeed, function(value)
    config.rotationSpeed = value
    saveConfig()
end)

createControl("AttractionStrength", 0.8, Color3.fromRGB(153, 0, 0), "Attraction Strength", config.attractionStrength, function(value)
    config.attractionStrength = value
    saveConfig()
end)

-- Add minimize button
local MinimizeButton = Instance.new("TextButton")
MinimizeButton.Size = UDim2.new(0, 30, 0, 30)
MinimizeButton.Position = UDim2.new(1, -35, 0, 5)
MinimizeButton.Text = "-"
MinimizeButton.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
MinimizeButton.TextColor3 = Color3.fromRGB(0, 0, 0)
MinimizeButton.Font = Enum.Font.Fondamento
MinimizeButton.TextSize = 15
MinimizeButton.Parent = MainFrame

-- Round the minimize button
local MinimizeCorner = Instance.new("UICorner")
MinimizeCorner.CornerRadius = UDim.new(0, 15)
MinimizeCorner.Parent = MinimizeButton

-- Minimize functionality
local minimized = false
MinimizeButton.MouseButton1Click:Connect(function()
    minimized = not minimized
    if minimized then
        MainFrame:TweenSize(UDim2.new(0, 300, 0, 40), "Out", "Quad", 0.3, true)
        MinimizeButton.Text = "+"
        for _, child in pairs(MainFrame:GetChildren()) do
            if child:IsA("GuiObject") and child ~= Title and child ~= MinimizeButton then
                child.Visible = false
            end
        end
    else
        MainFrame:TweenSize(UDim2.new(0, 300, 0, 500), "Out", "Quad", 0.3, true)
        MinimizeButton.Text = "-"
        for _, child in pairs(MainFrame:GetChildren()) do
            if child:IsA("GuiObject") then
                child.Visible = true
            end
        end
    end
    playSound("12221967")
end)

-- Make GUI draggable
local dragging
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

MainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = MainFrame.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

MainFrame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)

-- Ring Parts Claim
local Workspace = game:GetService("Workspace")

local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local Folder = Instance.new("Folder", Workspace)
local Part = Instance.new("Part", Folder)
local Attachment1 = Instance.new("Attachment", Part)
Part.Anchored = true
Part.CanCollide = false
Part.Transparency = 1

if not getgenv().Network then
    getgenv().Network = {
        BaseParts = {},
        Velocity = Vector3.new(14.46262424, 14.46262424, 14.46262424)
    }

    Network.RetainPart = function(Part)
        if typeof(Part) == "Instance" and Part:IsA("BasePart") and Part:IsDescendantOf(Workspace) then
            table.insert(Network.BaseParts, Part)
            Part.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
            Part.CanCollide = false
        end
    end

    local function EnablePartControl()
        LocalPlayer.ReplicationFocus = Workspace
        RunService.Heartbeat:Connect(function()
            sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
            for _, Part in pairs(Network.BaseParts) do
                if Part:IsDescendantOf(Workspace) then
                    Part.Velocity = Network.Velocity
                end
            end
        end)
    end

    EnablePartControl()
end

local function ForcePart(v)
    if v:IsA("Part") and not v.Anchored and not v.Parent:FindFirstChild("Humanoid") and not v.Parent:FindFirstChild("Head") and v.Name ~= "Handle" then
        for _, x in next, v:GetChildren() do
            if x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or x:IsA("BodyThrust") or x:IsA("BodyVelocity") or x:IsA("RocketPropulsion") then
                x:Destroy()
            end
        end
        if v:FindFirstChild("Attachment") then
            v:FindFirstChild("Attachment"):Destroy()
        end
        if v:FindFirstChild("AlignPosition") then
            v:FindFirstChild("AlignPosition"):Destroy()
        end
        if v:FindFirstChild("Torque") then
            v:FindFirstChild("Torque"):Destroy()
        end
        v.CanCollide = false
        local Torque = Instance.new("Torque", v)
        Torque.Torque = Vector3.new(100000, 100000, 100000)
        local AlignPosition = Instance.new("AlignPosition", v)
        local Attachment2 = Instance.new("Attachment", v)
        Torque.Attachment0 = Attachment2
        AlignPosition.MaxForce = 9999999999999999999999999999999
        AlignPosition.MaxVelocity = math.huge
        AlignPosition.Responsiveness = 200
        AlignPosition.Attachment0 = Attachment2
        AlignPosition.Attachment1 = Attachment1
    end
end

-- Edits
local ringPartsEnabled = false

local function RetainPart(Part)
    if Part:IsA("BasePart") and not Part.Anchored and Part:IsDescendantOf(workspace) then
        if Part.Parent == LocalPlayer.Character or Part:IsDescendantOf(LocalPlayer.Character) then
            return false
        end

        Part.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
        Part.CanCollide = false
        return true
    end
    return false
end

local parts = {}
local function addPart(part)
    if RetainPart(part) then
        if not table.find(parts, part) then
            table.insert(parts, part)
        end
    end
end

local function removePart(part)
    local index = table.find(parts, part)
    if index then
        table.remove(parts, index)
    end
end

for _, part in pairs(workspace:GetDescendants()) do
    addPart(part)
end

workspace.DescendantAdded:Connect(addPart)
workspace.DescendantRemoving:Connect(removePart)

RunService.Heartbeat:Connect(function()
    if not ringPartsEnabled then return end
    
    local humanoidRootPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
        local tornadoCenter = humanoidRootPart.Position
        for _, part in pairs(parts) do
            if part.Parent and not part.Anchored then
                local pos = part.Position
                local distance = (Vector3.new(pos.X, tornadoCenter.Y, pos.Z) - tornadoCenter).Magnitude
                local angle = math.atan2(pos.Z - tornadoCenter.Z, pos.X - tornadoCenter.X)
                local newAngle = angle + math.rad(config.rotationSpeed)
                local targetPos = Vector3.new(
                    tornadoCenter.X + math.cos(newAngle) * math.min(config.radius, distance),
                    tornadoCenter.Y + (config.height * (math.abs(math.sin((pos.Y - tornadoCenter.Y) / config.height)))),
                    tornadoCenter.Z + math.sin(newAngle) * math.min(config.radius, distance)
                )
                local directionToTarget = (targetPos - part.Position).unit
                part.Velocity = directionToTarget * config.attractionStrength
            end
        end
    end
end)

-- Button functionality
ToggleButton.MouseButton1Click:Connect(function()
    ringPartsEnabled = not ringPartsEnabled
    ToggleButton.Text = ringPartsEnabled and "Tornado On" or "Tornado Off"
    ToggleButton.BackgroundColor3 = ringPartsEnabled and Color3.fromRGB(50, 205, 50) or Color3.fromRGB(160, 82, 45)
    playSound("12221967")
end)

-- Get player thumbnail
local userId = Players:GetUserIdFromNameAsync("Robloxlukasgames")
local thumbType = Enum.ThumbnailType.HeadShot
local thumbSize = Enum.ThumbnailSize.Size420x420
local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)

StarterGui:SetCore("SendNotification", {
    Title = "Hey",
    Text = "Enjoy the Script!",
    Icon = content,
    Duration = 5
})

StarterGui:SetCore("SendNotification", {
    Title = "TIPS",
    Text = "Click Textbox To edit Any of them",
    Icon = content,
    Duration = 5
})

StarterGui:SetCore("SendNotification", {
    Title = "Credits",
    Text = "On scriptblox!",
    Icon = content,
    Duration = 5
})


-- Rainbow Background Effect
local hue = 0
RunService.Heartbeat:Connect(function()
    hue = (hue + 0.01) % 1
    MainFrame.BackgroundColor3 = Color3.fromHSV(hue, 1, 1)
end)

-- Rainbow TextLabel
local textHue = 0
RunService.Heartbeat:Connect(function()
    textHue = (textHue + 0.01) % 1
    Title.TextColor3 = Color3.fromHSV(textHue, 1, 1)
end)


-- fly gui

local TextButton1 = Instance.new("TextButton") 
TextButton1.Parent = MainFrame
TextButton1.Name = "Fly gui"
TextButton1.BackgroundColor3 = Color3.fromRGB(0,0,255)
TextButton1.BackgroundTransparency = 0
TextButton1.BorderSizePixel = 1
TextButton1.BorderColor3 = Color3.fromRGB(17,17,17)
TextButton1.Position = UDim2.new(1,0,1)
TextButton1.Size = UDim2.new(0.08,0,0.1)
TextButton1.Font = Enum.Font.Legacy
TextButton1.TextColor3 = Color3.fromRGB(242,243,243)
TextButton1.Text = "Fly Gui"
TextButton1.TextSize = 18
TextButton1.TextScaled = true
TextButton1.TextWrapped = true
TextButton1.Visible = true
TextButton1.Active = true

TextButton1.MouseButton1Click:Connect(function() 
loadstring(game:HttpGet('https://pastebin.com/raw/YSL3xKYU'))()
end)

-- no fall damage
local TextButton1 = Instance.new("TextButton") 
TextButton1.Parent = MainFrame
TextButton1.Name = "no fall damage"
TextButton1.BackgroundColor3 = Color3.fromRGB(255,0,0)
TextButton1.BackgroundTransparency = 0
TextButton1.BorderSizePixel = 1
TextButton1.BorderColor3 = Color3.fromRGB(17,17,17)
TextButton1.Position = UDim2.new(0.9,0,1)
TextButton1.Size = UDim2.new(0.08,0,0.1)
TextButton1.Font = Enum.Font.Legacy
TextButton1.TextColor3 = Color3.fromRGB(242,243,243)
TextButton1.Text = "No fall Damage"
TextButton1.TextSize = 18
TextButton1.TextScaled = true
TextButton1.TextWrapped = true
TextButton1.Visible = true
TextButton1.Active = true

TextButton1.MouseButton1Click:Connect(function() 
-- No Fall Damage by Pio (Discord: piomanly or ID: 311397526399877122) --
local runsvc = game:GetService("RunService")
local heartbeat = runsvc.Heartbeat
local rstepped = runsvc.RenderStepped

local lp = game.Players.LocalPlayer

local novel = Vector3.zero

local function nofalldamage(chr)
    local root = chr:WaitForChild("HumanoidRootPart")
    
    if root then
        local con
        con = heartbeat:Connect(function()
            if not root.Parent then
                con:Disconnect()
            end
            
            local oldvel = root.AssemblyLinearVelocity
            root.AssemblyLinearVelocity = novel
            
            rstepped:Wait()
            root.AssemblyLinearVelocity = oldvel
        end)
    end
end

nofalldamage(lp.Character)
    lp.CharacterAdded:Connect(nofalldamage)
end)

-- noclip
local TextButton1 = Instance.new("TextButton") 
TextButton1.Parent = MainFrame
TextButton1.Name = "noclip"
TextButton1.BackgroundColor3 = Color3.fromRGB(0,0,0)
TextButton1.BackgroundTransparency = 0
TextButton1.BorderSizePixel = 1
TextButton1.BorderColor3 = Color3.fromRGB(17,17,17)
TextButton1.Position = UDim2.new(0.8,0,1)
TextButton1.Size = UDim2.new(0.08,0,0.1)
TextButton1.Font = Enum.Font.Legacy
TextButton1.TextColor3 = Color3.fromRGB(242,243,243)
TextButton1.Text = "Noclip"
TextButton1.TextSize = 18
TextButton1.TextScaled = true
TextButton1.TextWrapped = true
TextButton1.Visible = true
TextButton1.Active = true

TextButton1.MouseButton1Click:Connect(function() 
local Noclip = nil
local Clip = nil

function noclip()
	Clip = false
	local function Nocl()
		if Clip == false and game.Players.LocalPlayer.Character ~= nil then
			for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
					v.CanCollide = false
				end
			end
		end
		wait(0.21) -- basic optimization
	end
	Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
end

function clip()
	if Noclip then Noclip:Disconnect() end
	Clip = true
end

noclip() -- to toggle noclip() and clip()
end)

-- Inf jump

local TextButton1 = Instance.new("TextButton") 
TextButton1.Parent = MainFrame
TextButton1.Name = "Inf jump"
TextButton1.BackgroundColor3 = Color3.fromRGB(0,255,0)
TextButton1.BackgroundTransparency = 0
TextButton1.BorderSizePixel = 1
TextButton1.BorderColor3 = Color3.fromRGB(17,17,17)
TextButton1.Position = UDim2.new(0.7,0,1)
TextButton1.Size = UDim2.new(0.08,0,0.1)
TextButton1.Font = Enum.Font.Legacy
TextButton1.TextColor3 = Color3.fromRGB(242,243,243)
TextButton1.Text = "Inf jump"
TextButton1.TextSize = 18
TextButton1.TextScaled = true
TextButton1.TextWrapped = true
TextButton1.Visible = true
TextButton1.Active = true

TextButton1.MouseButton1Click:Connect(function() 
local InfiniteJumpEnabled = true game:GetService("UserInputService").JumpRequest:connect(function() 	if InfiniteJumpEnabled then 		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping") 	end end)
end)

-- Inf yield

local TextButton1 = Instance.new("TextButton") 
TextButton1.Parent = MainFrame
TextButton1.Name = "Inf yield"
TextButton1.BackgroundColor3 = Color3.fromRGB(0,255,255)
TextButton1.BackgroundTransparency = 0
TextButton1.BorderSizePixel = 1
TextButton1.BorderColor3 = Color3.fromRGB(17,17,17)
TextButton1.Position = UDim2.new(0.6,0,1)
TextButton1.Size = UDim2.new(0.08,0,0.1)
TextButton1.Font = Enum.Font.Legacy
TextButton1.TextColor3 = Color3.fromRGB(242,243,243)
TextButton1.Text = "Inf yield"
TextButton1.TextSize = 18
TextButton1.TextScaled = true
TextButton1.TextWrapped = true
TextButton1.Visible = true
TextButton1.Active = true

TextButton1.MouseButton1Click:Connect(function() 
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

-- nameless admin

local TextButton1 = Instance.new("TextButton") 
TextButton1.Parent = MainFrame
TextButton1.Name = "nameless admin"
TextButton1.BackgroundColor3 = Color3.fromRGB(0,0,0)
TextButton1.BackgroundTransparency = 0
TextButton1.BorderSizePixel = 1
TextButton1.BorderColor3 = Color3.fromRGB(17,17,17)
TextButton1.Position = UDim2.new(0.5,0,1)
TextButton1.Size = UDim2.new(0.08,0,0.1)
TextButton1.Font = Enum.Font.Legacy
TextButton1.TextColor3 = Color3.fromRGB(242,243,243)
TextButton1.Text = "NAMELESS"
TextButton1.TextSize = 18
TextButton1.TextScaled = true
TextButton1.TextWrapped = true
TextButton1.Visible = true
TextButton1.Active = true

TextButton1.MouseButton1Click:Connect(function() 
loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Nameless-Admin-FE-11243"))()
end)

-- fps

local TextButton1 = Instance.new("TextButton") 
TextButton1.Parent = MainFrame
TextButton1.Name = "FPS"
TextButton1.BackgroundColor3 = Color3.fromRGB(0,0,0)
TextButton1.BackgroundTransparency = 0
TextButton1.BorderSizePixel = 1
TextButton1.BorderColor3 = Color3.fromRGB(17,17,17)
TextButton1.Position = UDim2.new(0.4,0,1)
TextButton1.Size = UDim2.new(0.08,0,0.1)
TextButton1.Font = Enum.Font.Legacy
TextButton1.TextColor3 = Color3.fromRGB(242,243,243)
TextButton1.Text = "FPS"
TextButton1.TextSize = 18
TextButton1.TextScaled = true
TextButton1.TextWrapped = true
TextButton1.Visible = true
TextButton1.Active = true

TextButton1.MouseButton1Click:Connect(function() 
loadstring(game:HttpGet("https://pastebin.com/raw/ySHJdZpb",true))()
end)
    end
}

local babfttab = gui:tab{
    Icon = "rbxassetid://119122088865300",
    Name = "BABFT Scripts"
}

babfttab:button{
    Name = "Autofarm(Optional Key(More Gold))",
    Callback = function()
        loadstring(game:HttpGet("https://orbitsc.net/babft"))()
    end
}

local bbrtab = gui:tab{
    Icon = "rbxassetid://6034996695",
    Name = "Booga Booga Reborn Scripts"
}

bbrtab:button{
    Name = "Main",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/boogauser3533/natsuloader/main/SlideursHub-Loader.lua'))()
    end
}

local drtab = gui:tab{
    Icon = "rbxassetid://122874126897828",
    Name = "Dead Rails Scripts"
}

drtab:button{
    Name = "Autofarm(Breaks Sometimes, Requires Key)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/thiennrb7/Script/refs/heads/main/autobond"))()
    end
}

local stfotab = gui:tab{
    Icon = "rbxassetid://115510905462136",
    Name = "STFO by detourious Scripts"
}

stfotab:button{
    Name = "Main(Requires Key)",
    Description = "Find key in #keys channel in the discord server",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/W9vu75tv",true))()
 
loadstring(game:HttpGet("https://pastebin.com/raw/8nMHjrYw",true))()
    end
}

local satab = gui:tab{
    Icon = "rbxassetid://6034996695",
    Name = "Starving Artists Scripts"
}

satab:button{
    Name = "Paint from URL",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/itsnoctural/Utilities/main/Closed/StarvingArtist.lua"))()eshing = true

local cloneGui = {}



function cloneGui.buildRoot()

   local paintFrame = player.PlayerGui.MainGui.PaintFrame

   local cloneFrame = paintFrame:Clone()

   

   -- Initialize root frame.

   cloneFrame.Name = 'CloneFrame'

   cloneFrame.Parent = paintFrame

   cloneFrame.ToolsFrame:Destroy()

   cloneFrame.ColorFrame:Destroy()

   cloneFrame.NextButton:Destroy()

   cloneFrame.UIAspectRatioConstraint:Destroy()

   cloneFrame.Grid:Destroy()

   cloneFrame.Confirmation:Destroy()

   cloneFrame.AnchorPoint = Vector2.new(0, 0.5)

   cloneFrame.Position = UDim2.new(1, 10, 0.5, 0)

   cloneFrame.Size = UDim2.new(0.5, 0, 1, 0)

   cloneFrame.Visible = true

   

   paintFrame.Position = UDim2.new(0.5, -((cloneFrame.AbsoluteSize.X / 2) + 5), 0.5, 0)

   

   cloneGui.root = cloneFrame

end



function cloneGui.buildButtons()

   local nextButton = player.PlayerGui.MainGui.PaintFrame.NextButton

   local copyButton = nextButton:Clone()

   local cloneButton = nextButton:Clone()

   local buttonSize = UDim2.new(0.4, 0, 0.09, 0)

   

   -- Initialize copy button.

   copyButton.Parent = cloneGui.root

   copyButton.Size = buttonSize

   copyButton.Position = UDim2.new(0.28, 0, 0.895)

   copyButton.Label.Text = 'COPY'

   copyButton.Name = 'CopyButton'

   

   -- Initialize clone button.

   cloneButton.Parent = cloneGui.root

   cloneButton.Size = buttonSize

   cloneButton.Position = UDim2.new(0.72, 0, 0.895)

   cloneButton.Label.Text = 'CLONE'

   cloneButton.Name = 'CloneButton'



   -- Animation functions.

   for i, button in pairs({cloneButton, copyButton}) do

       button.MouseEnter:Connect(function()

           button:TweenSize(UDim2.new(buttonSize.X.Scale + 0.015, 0, buttonSize.Y.Scale + 0.015, 0), 'Out', 'Quad', 0.2, true)

       end)

       

       button.MouseLeave:Connect(function()

           button:TweenSize(buttonSize, 'Out', 'Quad', 0.2, true)

       end)

   end

   

   -- Button actions.

   copyButton.MouseButton1Click:Connect(copyGrid)

   

   cloneButton.MouseButton1Click:Connect(cloneGrid)

end



function cloneGui.buildScrollingFrame()

   local scrollingFrame = Instance.new('ScrollingFrame')

   local uiListLayout = Instance.new('UIListLayout')

   local uiPadding = Instance.new('UIPadding')

   

   -- Initialize scrolling frame.

   scrollingFrame.Parent = cloneGui.root

   scrollingFrame.AnchorPoint = Vector2.new(0.5, 0)

   scrollingFrame.Position = UDim2.new(0.5, 0, 0.05, 0)

   scrollingFrame.Size = UDim2.new(0.8, 0, 0.75, 0)

   scrollingFrame.BackgroundTransparency = 1

   scrollingFrame.BorderSizePixel = 0

   scrollingFrame.ScrollBarImageColor3 = Color3.new((210 / 255), (76 / 255), (71 / 255))

   scrollingFrame.ScrollBarThickness = 4

   scrollingFrame.ZIndex = 3

   

   -- Configure layout.

   uiListLayout.Parent = scrollingFrame

   uiListLayout.Padding = UDim.new(0, 10)

   uiPadding.Parent = scrollingFrame

   uiPadding.PaddingLeft = UDim.new(0.08, 0)

   uiPadding.PaddingRight = UDim.new(0.08, 0)

   uiPadding.PaddingTop = UDim.new(0, 5)

   

   uiListLayout.Changed:Connect(function()

       scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, uiListLayout.AbsoluteContentSize.Y + 10)

   end)

   

   cloneGui.scrollingFrame = scrollingFrame

end



function cloneGui.addGrid(grid)

   local UIStroke = player.PlayerGui.MainGui.PaintFrame.Grid.UIStroke:Clone()

   local container = Instance.new('Frame')

   local preview = grid:Clone()

   

   -- Initialize new container.

   container.Parent = cloneGui.scrollingFrame

   container.Size = UDim2.new(1, 0, 1, 0)

   container.SizeConstraint = Enum.SizeConstraint.RelativeXX

   container.BackgroundTransparency = 0.8

   container.ZIndex = 4

   UIStroke.Thickness = 4.5

   UIStroke.Parent = container

   UIStroke.Enabled = false

   

   -- Clone grid into container.

   preview.Parent = container

   

   if (cloneGui.selected == nil) then

       cloneGui.selected = container

       UIStroke.Enabled = true

   end

   

   container.InputBegan:Connect(function(userInput)

       if (userInput.UserInputType == Enum.UserInputType.MouseButton1) then

           cloneGui.selected.UIStroke.Enabled = false

           UIStroke.Enabled = true

           cloneGui.selected = container

       end

   end)

end



function copyGrid()

   if (cloneGui.selected ~= nil) then

       local target = cloneGui.selected.Grid

       local destination = player.PlayerGui.MainGui.PaintFrame.Grid

       

       for i = 1, 1024 do

           destination[i].BackgroundColor3 = target[i].BackgroundColor3

       end

   end

end



function cloneGrid()

   local remote = game.ReplicatedStorage.Remotes.CreateArt

   local frameColor = "ffffff"

   local frame = "Starter Frame"

   local name = "a"

   local cells = {}

   

   local grid = cloneGui.selected.Grid

   for i = 1, 1024 do

      cells[i] = grid[i].BackgroundColor3:ToHex()

   end

 

   local payload = {}

   payload["FrameColor"] = frameColor

   payload["Frame"] = frame

   payload["Name"] = name

   payload["Cells"] = cells

   

   remote:InvokeServer(payload)

end



function refreshGrids()

   local objects = game.Workspace.Plots:GetDescendants()

   for i, v in ipairs(objects) do

       if (v.Name == 'Grid' and v.ClassName == 'Frame' and not collectionService:HasTag(v, 'cloned')) then

           if (#v:GetChildren() == 1027) then

               collectionService:AddTag(v, 'cloned')

               cloneGui.addGrid(v)

           end

       end

   end

end



cloneGui.buildRoot()

cloneGui.buildButtons()

cloneGui.buildScrollingFrame()



while (_G.refreshing) do

   refreshGrids()

   wait(0.1)

end
    end
}

local doorstab = gui:tab{
    Icon = "rbxassetid://12899371296",
    Name = "Doors Scripts"
}

doorstab:button{
    Name = "Velocity X",
    Callback = function()
        loadstring(game:HttpGet("https://velocityloader.vercel.app/"))()
    end

}
