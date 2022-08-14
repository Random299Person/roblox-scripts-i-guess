--Small sign changing script with rainbow colors, updating goals, time, and embedded commands with prefix ">".
--I highly recommend using on 13+ accounts because filtering.
--run this script ONCE YOU CLAIM A STAND!!!!!

-- Gui to Lua
-- Version: 3.2

-- Instances:

local Panel = Instance.new("ScreenGui")
local PanelFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Entry = Instance.new("TextBox")
local Hint = Instance.new("TextLabel")
local RepeatUpdate = Instance.new("TextButton")
local Display = Instance.new("TextLabel")
local Toggle = Instance.new("TextButton")
local Set = Instance.new("TextButton")
local DonationMessages = Instance.new("TextButton")

--Properties:

Panel.Name = "Panel"
Panel.Parent = game.CoreGui
Panel.ResetOnSpawn = false

PanelFrame.Name = "PanelFrame"
PanelFrame.Parent = Panel
PanelFrame.AnchorPoint = Vector2.new(0.5, 0.5)
PanelFrame.BackgroundColor3 = Color3.fromRGB(211, 211, 211)
PanelFrame.Position = UDim2.new(0, 0, 1.25, 0)
PanelFrame.Size = UDim2.new(0.5, 0, 0.5, 0)

UICorner.CornerRadius = UDim.new(0.100000001, 0)
UICorner.Parent = PanelFrame

Entry.Name = "Entry"
Entry.Parent = PanelFrame
Entry.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Entry.BackgroundTransparency = 1.000
Entry.Size = UDim2.new(1, 0, 0.25, 0)
Entry.ClearTextOnFocus = false
Entry.Font = Enum.Font.GothamBlack
Entry.PlaceholderColor3 = Color3.fromRGB(127, 127, 127)
Entry.PlaceholderText = "Input text here"
Entry.Text = ""
Entry.TextColor3 = Color3.fromRGB(0, 0, 0)
Entry.TextScaled = true
Entry.TextSize = 14.000
Entry.TextWrapped = true
Entry.RichText = true

Hint.Name = "Hint"
Hint.Parent = PanelFrame
Hint.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Hint.BackgroundTransparency = 1.000
Hint.Position = UDim2.new(0, 0, 0.25, 0)
Hint.Size = UDim2.new(1, 0, 0.25, 0)
Hint.Font = Enum.Font.GothamBlack
Hint.Text = [[$goal = Goal: <goal - raised> R$ left! or if its already reached, Goal reached!
$time = <time> minutes.
$rainbows = <font color=\"<rainbow color>\">
$rainbowe = </font>
$newline = creates a new line.
$topdonor = returns either Nobody or the top donor since you joined.
Below is how it appears.]]
Hint.TextColor3 = Color3.fromRGB(0, 0, 0)
Hint.TextScaled = true
Hint.TextSize = 14.000
Hint.TextWrapped = true
Hint.TextYAlignment = Enum.TextYAlignment.Top

RepeatUpdate.Name = "RepeatUpdate"
RepeatUpdate.Parent = PanelFrame
RepeatUpdate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RepeatUpdate.BackgroundTransparency = 1.000
RepeatUpdate.Position = UDim2.new(0, 0, -0.200000003, 0)
RepeatUpdate.Size = UDim2.new(0.5, 0, 0.200000003, 0)
RepeatUpdate.Font = Enum.Font.GothamBlack
RepeatUpdate.Text = "Repeat update [ON]"
RepeatUpdate.TextColor3 = Color3.fromRGB(255, 255, 255)
RepeatUpdate.TextScaled = true
RepeatUpdate.TextSize = 14.000
RepeatUpdate.TextStrokeTransparency = 0.000
RepeatUpdate.TextWrapped = true

Display.Name = "Display"
Display.Parent = PanelFrame
Display.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Display.BackgroundTransparency = 1.000
Display.Position = UDim2.new(0, 0, 0.5, 0)
Display.Size = UDim2.new(1, 0, 0.375, 0)
Display.Font = Enum.Font.GothamBlack
Display.Text = ""
Display.TextColor3 = Color3.fromRGB(255, 255, 255)
Display.TextScaled = true
Display.TextSize = 14.000
Display.TextStrokeTransparency = 0.000
Display.TextWrapped = true
Display.TextYAlignment = Enum.TextYAlignment.Top
Display.RichText = true

Toggle.Name = "Toggle"
Toggle.Parent = PanelFrame
Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Toggle.BackgroundTransparency = 1.000
Toggle.Position = UDim2.new(0.5, 0, -0.200000003, 0)
Toggle.Size = UDim2.new(0.5, 0, 0.200000003, 0)
Toggle.Font = Enum.Font.GothamBlack
Toggle.Text = "Open"
Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
Toggle.TextScaled = true
Toggle.TextSize = 14.000
Toggle.TextStrokeTransparency = 0.000
Toggle.TextWrapped = true

Set.Name = "Set"
Set.Parent = PanelFrame
Set.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Set.BackgroundTransparency = 1.000
Set.Position = UDim2.new(0, 0, 0.875, 0)
Set.Size = UDim2.new(0.5, 0, 0.125, 0)
Set.Visible = false
Set.Font = Enum.Font.GothamBlack
Set.Text = "Set"
Set.TextColor3 = Color3.fromRGB(255, 255, 255)
Set.TextScaled = true
Set.TextSize = 14.000
Set.TextStrokeTransparency = 0.000
Set.TextWrapped = true

DonationMessages.Name = "DonationMessages"
DonationMessages.Parent = PanelFrame
DonationMessages.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DonationMessages.BackgroundTransparency = 1.000
DonationMessages.Position = UDim2.new(0.5, 0, 0.875, 0)
DonationMessages.Size = UDim2.new(0.5, 0, 0.125, 0)
DonationMessages.Font = Enum.Font.GothamBlack
DonationMessages.Text = "Messages on donation [ON]"
DonationMessages.TextColor3 = Color3.fromRGB(255, 255, 255)
DonationMessages.TextScaled = true
DonationMessages.TextSize = 14.000
DonationMessages.TextStrokeTransparency = 0.000
DonationMessages.TextWrapped = true

--NOTE YOU CAN ALSO USE /e COMMAND OR /emote COMMAND FOR HIDING
--<goal> change to what you want the goal in robux is. also works with >goal NUMBER
local goal = 600
--<text> change to what you want the text to be. also works with >text STRING.
--\n = new line
--/n = does the same thing just used in the embedded commands.
--$goal = Goal: <goal - raised> R$ left! or if its already reached, Goal reached!
--$time = <time> minutes
--$rainbows = <font color="<rainbow color>">
--$rainbowe = </font>
--$topdonor = Nobody or the top donor since you joineed
local text = '$rainbowsSign script loaded!$rainbowe'
Entry.Text = text
--<messages> you can set the messages for when people donate.
-->setmessage INDEX MESSAGE = messages[INDEX] = message
-->clearmessage INDEX = messages[INDEX] = nil
-->clearmessages = messages = {}
local messages = {"Thanks for the donation, $user!"; "$user, you're amazing!"; "Thanks for the $ammount tip, $user!"}
--<isrunning> Self-explanitory init?
--toggle on with >run
--toggle off with >stop
local isrunning = true
--<messagesAUTO> Sends messages when someone doanates to you.
--toggle on with >mrun
--toggle off with >mstop
local messagesAUTO = true
local open = false
local topdonor,tda = "camqu9",744

Toggle.MouseButton1Click:Connect(function()
	open = not open
	Toggle.Visible = false
	local pos, dir = UDim2.new(0, 0, 1.25, 0), Enum.EasingDirection.In
	if open then
		pos, dir = UDim2.new(0.5, 0, 0.5, 0), Enum.EasingDirection.Out
	end
	PanelFrame:TweenPosition(pos, dir, Enum.EasingStyle.Back, 0.75, true)
	wait(0.75)
	Toggle.Text = "Open"
	if open then
		Toggle.Text = "Close"
	end
	Toggle.Visible = true
end)

RepeatUpdate.MouseButton1Click:Connect(function()
	isrunning = not isrunning
	local switchIDK = "OFF"
	if isrunning then
		switchIDK = "ON"
	end
	Set.Visible = not isrunning
	RepeatUpdate.Text = "Repeat update [" .. switchIDK .. "]"
end)

DonationMessages.MouseButton1Click:Connect(function()
	messagesAUTO = not messagesAUTO
	local switchIDK = "OFF"
	if messagesAUTO then
		switchIDK = "ON"
	end
	DonationMessages.Text = "Messages on donation [" .. switchIDK .. "]"
end)

Entry.FocusLost:Connect(function()
	text = string.gsub(Entry.Text, "$newline", "\n")
end)

Raised = game:GetService("Players").LocalPlayer.leaderstats:WaitForChild("Raised")
game.Players.LocalPlayer.Chatted:Connect(function(msg)
	if msg:sub(1, 3) == "/e " then msg = msg:sub(4) elseif msg:sub(1, 7) == "/emote " then msg = msg:sub(8) end
	if msg:lower() == ">run" then
		isrunning = true
		RepeatUpdate.Text = "Repeat update [ON]"
	end
	if msg:lower() == ">stop" then
		isrunning = false
		RepeatUpdate.Text = "Repeat update [OFF]"
	end
	if msg:lower() == ">mrun" then
		messagesAUTO = true
		RepeatUpdate.Text = "Messages on donation [ON]"
	end
	if msg:lower() == ">mstop" then
		messagesAUTO = false
		RepeatUpdate.Text = "Messages on donation [OFF]"
	end
	if msg:lower():sub(1, 6) == ">goal " then
		if msg:sub(7) and tonumber(msg:sub(7)) then
			goal = tonumber(msg:sub(7))
		end
	end
	if msg:lower():sub(1, 6) == ">text " and msg:sub(7) then
		text = string.gsub(msg:sub(7), "$newline", "\n")
	end
	if msg:lower():sub(1, 12) == ">setmessage " then
		local args = msg:sub(13):split(" ")
		if args[1] and tonumber(args[1]) and args[2] then
			messages[tonumber(args[1])] = args[2]
		end
	end
	if msg:lower():sub(1, 14) == ">clearmessage " then
		if msg:sub(15) and tonumber(msg:sub(15)) then
			messages[tonumber(msg:sub(15))] = nil
		end
	end
	if msg:lower():sub(1, 14) == ">clearmessages" then
		messages = {}
	end
end)
	
local remotes = require(game:GetService("ReplicatedStorage").Remotes)

function getTime()
	local floorTime = math.floor(time() / 60)
	return tostring(floorTime) .. " minutes"
end

function moneypoop()
	local wenomechainsama = remotes.Function("GetDonated"):InvokeServer()
	if wenomechainsama >= 1000 then return 650 end
	if wenomechainsama >= 500 then return 500 end
	if wenomechainsama >= 250 then return 400 end
	if wenomechainsama >= 100 then return 350 end
	if wenomechainsama >= 50 then return 300 end
	return 250
end

local color = "#ff0000"
function args()
	if isrunning then
		local setRemi = remotes.Event("SetBoothText")
		local goaltxt = "Goal: " .. tostring(goal - Raised.Value) .. " R$ left!"
		if Raised.Value >= goal then
			goaltxt = "Goal reached!"
		end
		local uhh = string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(text, "$topdonor", topdonor), "$goal", goaltxt), "$time", getTime()), "$rainbows", '<font color="' .. color .. '">'), "$rainbowe", "</font>")
		if #uhh > moneypoop() then
			Display.Text = uhh .. [[
{qDark}: Booth text exceeded. ]] .. #uhh .. [[ characters max is ]] .. moneypoop() .. [[.]]
		else
			setRemi:FireServer(uhh, "booth")
			Display.Text = uhh
		end
	end
end
Set.MouseButton1Click:Connect(args)

--Raised:GetPropertyChangedSignal("Value"):Connect(function()

remotes.OnClientEvent("NotifyDonationParticipants"):Connect(function(from, to, ammount)
	if ammount > tda then
		tda = ammount
		topdonor = from.DisplayName
	end
	if messagesAUTO and to == game.Players.LocalPlayer then
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(string.gsub(string.gsub(messages[math.random(1, #messages)], "$ammount", ammount), "$user", from.DisplayName), "All")
	end;
end);

while true do
	color = "#ff0000"
	args()
	wait(3)
	color = "#ffff00"
	args()
	wait(3)
	color = "#00ff00"
	args()
	wait(3)
	color = "#00ffff"
	args()
	wait(3)
	color = "#0000ff"
	args()
	wait(3)
	color = "#ff00ff"
	args()
	wait(3)
end
--Small sign changing script with rainbow colors, updating goals, time, and embedded commands with prefix ">".
--I highly recommend using on 13+ accounts because filtering.
--run this script ONCE YOU CLAIM A STAND!!!!!
--$rainbowsDonate$rainbowe to support this dev     .$newline$goal - $time$newline$rainbowsJoin FunGames Group!$rainbowe
