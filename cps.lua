xpcall(function()local UIS = game:GetService("UserInputService")
local RS = game:GetService("RunService")

local CPS = Instance.new("ScreenGui")
local FPS = Instance.new("TextLabel")
local PCFRAME = Instance.new("Frame")
local LEFTMOUSE = Instance.new("TextLabel")
local RIGHTMOUSE = Instance.new("TextLabel")
local AKEY = Instance.new("TextLabel")
local SKEY = Instance.new("TextLabel")
local DKEY = Instance.new("TextLabel")
local RSHIFTKEY = Instance.new("TextLabel")
local LSHIFTKEY = Instance.new("TextLabel")
local WKEY = Instance.new("TextLabel")
local QKEY = Instance.new("TextLabel")
local EKEY = Instance.new("TextLabel")
local SPACEKEY = Instance.new("TextLabel")

local inputs = {
	{LEFTMOUSE; 1; Enum.UserInputType.MouseButton1; "LMB "};
	{RIGHTMOUSE; 1; Enum.UserInputType.MouseButton2; "RMB "};
	{WKEY; 2; Enum.UserInputType.Keyboard; Enum.KeyCode.W};
	{AKEY; 2; Enum.UserInputType.Keyboard; Enum.KeyCode.A};
	{SKEY; 2; Enum.UserInputType.Keyboard; Enum.KeyCode.S};
	{DKEY; 2; Enum.UserInputType.Keyboard; Enum.KeyCode.D};
	{LSHIFTKEY; 2; Enum.UserInputType.Keyboard; Enum.KeyCode.LeftShift};
	{RSHIFTKEY; 2; Enum.UserInputType.Keyboard; Enum.KeyCode.RightShift};
	{SPACEKEY; 2; Enum.UserInputType.Keyboard; Enum.KeyCode.Space};
	{QKEY; 2; Enum.UserInputType.Keyboard; Enum.KeyCode.Q};
	{EKEY; 2; Enum.UserInputType.Keyboard; Enum.KeyCode.E};
}

CPS.Name = "CPS"
CPS.ResetOnSpawn = false
CPS.Parent = game.CoreGui

FPS.Name = "FPS"
FPS.Parent = CPS
FPS.Font = Enum.Font.SourceSans
FPS.TextScaled = true
FPS.Size = UDim2.new(1, 0, 0, 36)
FPS.Position = UDim2.new(0, 0, 1, -36)
FPS.BackgroundTransparency = 1.000
FPS.Text = "???/??? FPS"

PCFRAME.Name = "PCFRAME"
PCFRAME.Parent = CPS
PCFRAME.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PCFRAME.BackgroundTransparency = 1.000
PCFRAME.Position = UDim2.new(1, -350, 1, -350)
PCFRAME.Size = UDim2.new(0, 300, 0, 300)

LEFTMOUSE.Name = "LEFTMOUSE"
LEFTMOUSE.Parent = PCFRAME
LEFTMOUSE.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
LEFTMOUSE.BackgroundTransparency = 0.500
LEFTMOUSE.BorderSizePixel = 0
LEFTMOUSE.Position = UDim2.new(0, 0, 0, 200)
LEFTMOUSE.Size = UDim2.new(0, 100, 0, 100)
LEFTMOUSE.Font = Enum.Font.SourceSans
LEFTMOUSE.Text = "LMB 0"
LEFTMOUSE.TextColor3 = Color3.fromRGB(255, 255, 255)
LEFTMOUSE.TextScaled = true
LEFTMOUSE.TextSize = 14.000
LEFTMOUSE.TextStrokeTransparency = 0.000
LEFTMOUSE.TextWrapped = true

RIGHTMOUSE.Name = "RIGHTMOUSE"
RIGHTMOUSE.Parent = PCFRAME
RIGHTMOUSE.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
RIGHTMOUSE.BackgroundTransparency = 0.500
RIGHTMOUSE.BorderSizePixel = 0
RIGHTMOUSE.Position = UDim2.new(0, 200, 0, 200)
RIGHTMOUSE.Size = UDim2.new(0, 100, 0, 100)
RIGHTMOUSE.Font = Enum.Font.SourceSans
RIGHTMOUSE.Text = "RMB 0"
RIGHTMOUSE.TextColor3 = Color3.fromRGB(255, 255, 255)
RIGHTMOUSE.TextScaled = true
RIGHTMOUSE.TextSize = 14.000
RIGHTMOUSE.TextStrokeTransparency = 0.000
RIGHTMOUSE.TextWrapped = true

AKEY.Name = "AKEY"
AKEY.Parent = PCFRAME
AKEY.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
AKEY.BackgroundTransparency = 0.500
AKEY.BorderSizePixel = 0
AKEY.Position = UDim2.new(0, 0, 0, 100)
AKEY.Size = UDim2.new(0, 100, 0, 100)
AKEY.Font = Enum.Font.SourceSans
AKEY.Text = "A"
AKEY.TextColor3 = Color3.fromRGB(255, 255, 255)
AKEY.TextScaled = true
AKEY.TextSize = 14.000
AKEY.TextStrokeTransparency = 0.000
AKEY.TextWrapped = true

SKEY.Name = "SKEY"
SKEY.Parent = PCFRAME
SKEY.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
SKEY.BackgroundTransparency = 0.500
SKEY.BorderSizePixel = 0
SKEY.Position = UDim2.new(0, 100, 0, 100)
SKEY.Size = UDim2.new(0, 100, 0, 100)
SKEY.Font = Enum.Font.SourceSans
SKEY.Text = "S"
SKEY.TextColor3 = Color3.fromRGB(255, 255, 255)
SKEY.TextScaled = true
SKEY.TextSize = 14.000
SKEY.TextStrokeTransparency = 0.000
SKEY.TextWrapped = true

DKEY.Name = "DKEY"
DKEY.Parent = PCFRAME
DKEY.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
DKEY.BackgroundTransparency = 0.500
DKEY.BorderSizePixel = 0
DKEY.Position = UDim2.new(0, 200, 0, 100)
DKEY.Size = UDim2.new(0, 100, 0, 100)
DKEY.Font = Enum.Font.SourceSans
DKEY.Text = "D"
DKEY.TextColor3 = Color3.fromRGB(255, 255, 255)
DKEY.TextScaled = true
DKEY.TextSize = 14.000
DKEY.TextStrokeTransparency = 0.000
DKEY.TextWrapped = true

RSHIFTKEY.Name = "RSHIFTKEY"
RSHIFTKEY.Parent = PCFRAME
RSHIFTKEY.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
RSHIFTKEY.BackgroundTransparency = 0.500
RSHIFTKEY.BorderSizePixel = 0
RSHIFTKEY.Position = UDim2.new(0, 200, 0, 0)
RSHIFTKEY.Size = UDim2.new(0, 100, 0, 50)
RSHIFTKEY.Font = Enum.Font.SourceSans
RSHIFTKEY.Text = "SHIFT>"
RSHIFTKEY.TextColor3 = Color3.fromRGB(255, 255, 255)
RSHIFTKEY.TextScaled = true
RSHIFTKEY.TextSize = 14.000
RSHIFTKEY.TextStrokeTransparency = 0.000
RSHIFTKEY.TextWrapped = true

LSHIFTKEY.Name = "LSHIFTKEY"
LSHIFTKEY.Parent = PCFRAME
LSHIFTKEY.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
LSHIFTKEY.BackgroundTransparency = 0.500
LSHIFTKEY.BorderSizePixel = 0
LSHIFTKEY.Size = UDim2.new(0, 100, 0, 50)
LSHIFTKEY.Font = Enum.Font.SourceSans
LSHIFTKEY.Text = "<SHIFT"
LSHIFTKEY.TextColor3 = Color3.fromRGB(255, 255, 255)
LSHIFTKEY.TextScaled = true
LSHIFTKEY.TextSize = 14.000
LSHIFTKEY.TextStrokeTransparency = 0.000
LSHIFTKEY.TextWrapped = true

WKEY.Name = "WKEY"
WKEY.Parent = PCFRAME
WKEY.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
WKEY.BackgroundTransparency = 0.500
WKEY.BorderSizePixel = 0
WKEY.Position = UDim2.new(0, 100, 0, 0)
WKEY.Size = UDim2.new(0, 100, 0, 100)
WKEY.Font = Enum.Font.SourceSans
WKEY.Text = "W"
WKEY.TextColor3 = Color3.fromRGB(255, 255, 255)
WKEY.TextScaled = true
WKEY.TextSize = 14.000
WKEY.TextStrokeTransparency = 0.000
WKEY.TextWrapped = true

QKEY.Name = "QKEY"
QKEY.Parent = PCFRAME
QKEY.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
QKEY.BackgroundTransparency = 0.500
QKEY.BorderSizePixel = 0
QKEY.Position = UDim2.new(0, 0, 0, 50)
QKEY.Size = UDim2.new(0, 100, 0, 50)
QKEY.Font = Enum.Font.SourceSans
QKEY.Text = "Q"
QKEY.TextColor3 = Color3.fromRGB(255, 255, 255)
QKEY.TextScaled = true
QKEY.TextSize = 14.000
QKEY.TextStrokeTransparency = 0.000
QKEY.TextWrapped = true

EKEY.Name = "EKEY"
EKEY.Parent = PCFRAME
EKEY.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
EKEY.BackgroundTransparency = 0.500
EKEY.BorderSizePixel = 0
EKEY.Position = UDim2.new(0, 200, 0, 50)
EKEY.Size = UDim2.new(0, 100, 0, 50)
EKEY.Font = Enum.Font.SourceSans
EKEY.Text = "E"
EKEY.TextColor3 = Color3.fromRGB(255, 255, 255)
EKEY.TextScaled = true
EKEY.TextSize = 14.000
EKEY.TextStrokeTransparency = 0.000
EKEY.TextWrapped = true

SPACEKEY.Name = "SPACEKEY"
SPACEKEY.Parent = PCFRAME
SPACEKEY.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
SPACEKEY.BackgroundTransparency = 0.500
SPACEKEY.BorderSizePixel = 0
SPACEKEY.Position = UDim2.new(0, 100, 0, 200)
SPACEKEY.Size = UDim2.new(0, 100, 0, 100)
SPACEKEY.Font = Enum.Font.SourceSans
SPACEKEY.Text = "SPACE"
SPACEKEY.TextColor3 = Color3.fromRGB(255, 255, 255)
SPACEKEY.TextScaled = true
SPACEKEY.TextSize = 14.000
SPACEKEY.TextStrokeTransparency = 0.000
SPACEKEY.TextWrapped = true

for _, a in ipairs(inputs) do
	if a[2] == 1 then -- mouse input
		local CPSV = 0
		UIS.InputBegan:Connect(function(input)
			if input.UserInputType == a[3] then
				game.TweenService:Create(a[1], TweenInfo.new(0.125, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(255, 255, 255)}):Play()
				CPSV = CPSV + 1
				delay(1, function()
					CPSV = CPSV - 1
				end)
			end
		end)
		UIS.InputEnded:Connect(function(input)
			if input.UserInputType == a[3] then
				game.TweenService:Create(a[1], TweenInfo.new(0.125, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(155, 155, 155)}):Play()
			end
		end)
		RS.RenderStepped:Connect(function()
			a[1].Text = a[4] .. CPSV
		end)
	elseif a[2] == 2 then -- key input
		UIS.InputBegan:Connect(function(input)
			if input.UserInputType == a[3] and input.KeyCode == a[4] then
				game.TweenService:Create(a[1], TweenInfo.new(0.125, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(255, 255, 255)}):Play()
			end
		end)
		UIS.InputEnded:Connect(function(input)
			if input.UserInputType == a[3] and input.KeyCode == a[4] then
				game.TweenService:Create(a[1], TweenInfo.new(0.125, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(155, 155, 155)}):Play()
			end
		end)
	end
end

local FPSCOUNT, MAXFPS = 0, 0
RS.RenderStepped:Connect(function()
    FPSCOUNT = FPSCOUNT + 1
    delay(1, function()
    	FPSCOUNT = FPSCOUNT - 1
    end)
    if FPSCOUNT > MAXFPS then
        MAXFPS = FPSCOUNT
    end
    FPS.Text = FPSCOUNT .. "/" .. MAXFPS .. " FPS"
end)end,function(e)print(e)end)
