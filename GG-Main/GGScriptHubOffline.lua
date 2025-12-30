local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local GLOW_COLOR = Color3.fromHex("DD3975")
local FRAME_BG_COLOR = Color3.fromRGB(35, 35, 35)
local TARGET_SIZE = UDim2.new(0, 450, 0, 150)
local CORNER_RADIUS = UDim.new(0, 12)

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "GGScriptHubOffline"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

local glowContainer = Instance.new("Frame")
glowContainer.Name = "GlowContainer"
glowContainer.Parent = screenGui
glowContainer.AnchorPoint = Vector2.new(0.5, 0.5)
glowContainer.Position = UDim2.new(0.5, 0, 0.5, 0)
glowContainer.Size = UDim2.new(0, 0, 0, 0)
glowContainer.BackgroundTransparency = 1
glowContainer.BorderSizePixel = 0

local glowLayer1 = Instance.new("Frame")
glowLayer1.Name = "GlowLayer1"
glowLayer1.Parent = glowContainer
glowLayer1.Size = UDim2.new(1, 10, 1, 10)
glowLayer1.Position = UDim2.new(0.5, 0, 0.5, 0)
glowLayer1.AnchorPoint = Vector2.new(0.5, 0.5)
glowLayer1.BackgroundColor3 = GLOW_COLOR
glowLayer1.BackgroundTransparency = 0.85
glowLayer1.BorderSizePixel = 0

local corner1 = Instance.new("UICorner")
corner1.CornerRadius = UDim.new(0, 18)
corner1.Parent = glowLayer1

local glowLayer2 = Instance.new("Frame")
glowLayer2.Name = "GlowLayer2"
glowLayer2.Parent = glowContainer
glowLayer2.Size = UDim2.new(1, 5, 1, 5)
glowLayer2.Position = UDim2.new(0.5, 0, 0.5, 0)
glowLayer2.AnchorPoint = Vector2.new(0.5, 0.5)
glowLayer2.BackgroundColor3 = GLOW_COLOR
glowLayer2.BackgroundTransparency = 0.7
glowLayer2.BorderSizePixel = 0

local corner2 = Instance.new("UICorner")
corner2.CornerRadius = UDim.new(0, 15)
corner2.Parent = glowLayer2

local mainFrame = Instance.new("Frame")
mainFrame.Name = "BackgroundFrame"
mainFrame.Parent = glowContainer
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
mainFrame.Size = UDim2.new(1, 0, 1, 0)
mainFrame.BackgroundColor3 = FRAME_BG_COLOR
mainFrame.BorderSizePixel = 0
mainFrame.ClipsDescendants = true

local cornerMain = Instance.new("UICorner")
cornerMain.CornerRadius = CORNER_RADIUS
cornerMain.Parent = mainFrame

local textLabel = Instance.new("TextLabel")
textLabel.Name = "MessageLabel"
textLabel.Parent = mainFrame
textLabel.Size = UDim2.new(1, -20, 1, -20)
textLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
textLabel.AnchorPoint = Vector2.new(0.5, 0.5)
textLabel.BackgroundTransparency = 1
textLabel.Text = "Sorry, but Goon Gang Script Hub is not currently online!"
textLabel.TextColor3 = Color3.fromRGB(240, 240, 240)
textLabel.Font = Enum.Font.GothamBold
textLabel.TextSize = 20
textLabel.TextWrapped = true
textLabel.TextXAlignment = Enum.TextXAlignment.Center
textLabel.TextYAlignment = Enum.TextYAlignment.Center

local closeButton = Instance.new("TextButton")
closeButton.Name = "CloseButton"
closeButton.Parent = mainFrame
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -5, 0, 5)
closeButton.AnchorPoint = Vector2.new(1, 0)
closeButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Font = Enum.Font.GothamBold
closeButton.TextSize = 18
closeButton.BorderSizePixel = 0

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 6)
closeCorner.Parent = closeButton

closeButton.MouseButton1Click:Connect(function()
        local tweenOutInfo = TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.In)
        local tweenOut = TweenService:Create(glowContainer, tweenOutInfo, {Size = UDim2.new(0, 0, 0, 0)})

        tweenOut.Completed:Connect(function()
                screenGui:Destroy()
        end)

        tweenOut:Play()
end)

local tweenInfo = TweenInfo.new(
        0.7, -- Duration (0.7 seconds)
        Enum.EasingStyle.Back,
        Enum.EasingDirection.Out,
        0,
        false,
        0.2
)

local goal = {
        Size = TARGET_SIZE
}

local sizeTween = TweenService:Create(glowContainer, tweenInfo, goal)
sizeTween:Play()
