local player = game.Players.LocalPlayer
local char = player.Character
local guig = player.PlayerGui

local function PlayerExistsFromName(name)
	for _, obj in pairs(game.Players:GetChildren()) do
		if obj.Name == name then
			return true
		end
	end
	return false
end

local function PlayerExistsFromCharacter(obj)
	for _, playerObj in pairs(game.Players:GetChildren()) do
		if playerObj.Character == obj then
			return true
		end
	end
	return false
end

local function GetCharacterByName(name)
	return game.Players[name].Character
end

local function hitbox(size, target)
	local ofvcfttt = false
	local obj = target
	if not PlayerExistsFromCharacter(obj) then
		return
	end
	if obj:HasTag("HitboxEffect") then
		ofvcfttt = true
	end
	if obj:FindFirstChild("HumanoidRootPart") then
		if obj:HasTag("HitboxExpand" .. size) then return else
			if obj:HasTag("HitboxEffect") then
				obj:RemoveTag("HitboxExpand"..obj.HumanoidRootPart.Size.Y)
				obj:RemoveTag("HitboxEffect")
		end
		end
		if obj.Name==game.Players.LocalPlayer.Name then return end
		obj.HumanoidRootPart.Size = Vector3.new(size, size, size)
		obj.HumanoidRootPart.CanCollide = false
		obj:AddTag("HitboxExpand" .. size)
		obj:AddTag("HitboxEffect")
		obj.HumanoidRootPart.Color = Color3.fromRGB(23, 255, 6)
		obj.HumanoidRootPart.Size = Vector3.new(size, size, size)
		obj.HumanoidRootPart.CanCollide = true
		obj.HumanoidRootPart.Transparency = 0.9
		obj.HumanoidRootPart.CFrame = obj.HumanoidRootPart.CFrame
		obj.HumanoidRootPart.CastShadow = false
		if ofvcfttt then return else
		local tx1 = Instance.new("Decal", obj.HumanoidRootPart)
		tx1.Texture = "http://www.roblox.com/asset/?id=6838386011"
		tx1.Transparency = 0.7
		tx1.Color3 = Color3.fromRGB(0, 255, 0)
		local tx2 = tx1:Clone()
		local tx3 = tx1:Clone()
		local tx4 = tx1:Clone()
		local tx5 = tx1:Clone()
		local tx6 = tx1:Clone()
		tx2.Face, tx2.Parent = "Back", obj.HumanoidRootPart
		tx3.Face, tx3.Parent = "Bottom", obj.HumanoidRootPart
		tx4.Face, tx4.Parent = "Left", obj.HumanoidRootPart
		tx5.Face, tx5.Parent = "Right", obj.HumanoidRootPart
		tx6.Face, tx6.Parent = "Top", obj.HumanoidRootPart
		end	
	end
end

local ScreenGui = Instance.new("ScreenGui")
local button = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local GUI = Instance.new("ScreenGui")
local Frame_2 = Instance.new("Frame")
local credits = Instance.new("TextLabel")
local sizein = Instance.new("TextBox")
local targin = Instance.new("TextBox")
local Activate = Instance.new("TextButton")
local size = Instance.new("TextLabel")
local target = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.Enabled = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

button.Name = "button"
button.Parent = ScreenGui
button.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = button
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.00681044254, 0, 0.26720649, 0)
Frame.Size = UDim2.new(0, 58, 0, 24)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 0, 251)
TextButton.BackgroundTransparency = 0.770
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Size = UDim2.new(0, 59, 0, 23)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Hitbox GUI"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

UICorner.CornerRadius = UDim.new(0, 20)
UICorner.Parent = TextButton

GUI.Name = "GUI"
GUI.Parent = ScreenGui
GUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame_2.Parent = GUI
Frame_2.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.807731271, 0, 0.0647773296, 0)
Frame_2.Size = UDim2.new(0, 179, 0, 123)

credits.Name = "credits"
credits.Parent = Frame_2
credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
credits.BackgroundTransparency = 1.000
credits.BorderColor3 = Color3.fromRGB(0, 0, 0)
credits.BorderSizePixel = 0
credits.Position = UDim2.new(0.117318437, 0, -0.170731708, 0)
credits.Size = UDim2.new(0, 137, 0, 21)
credits.Font = Enum.Font.SourceSans
credits.Text = "Made by hacker12.0000 on discord"
credits.TextColor3 = Color3.fromRGB(0, 0, 0)
credits.TextScaled = true
credits.TextSize = 14.000
credits.TextWrapped = true

sizein.Name = "sizein"
sizein.Parent = Frame_2
sizein.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
sizein.BorderColor3 = Color3.fromRGB(0, 0, 0)
sizein.BorderSizePixel = 0
sizein.Position = UDim2.new(0.391061455, 0, 0.048780486, 0)
sizein.Size = UDim2.new(0, 98, 0, 26)
sizein.Font = Enum.Font.SourceSans
sizein.Text = ""
sizein.TextColor3 = Color3.fromRGB(0, 0, 0)
sizein.TextSize = 14.000

targin.Name = "targin"
targin.Parent = Frame_2
targin.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
targin.BorderColor3 = Color3.fromRGB(0, 0, 0)
targin.BorderSizePixel = 0
targin.Position = UDim2.new(0.391061455, 0, 0.317073166, 0)
targin.Size = UDim2.new(0, 98, 0, 26)
targin.Font = Enum.Font.SourceSans
targin.Text = "all"
targin.TextColor3 = Color3.fromRGB(0, 0, 0)
targin.TextSize = 14.000

Activate.Name = "Activate"
Activate.Parent = Frame_2
Activate.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
Activate.BorderColor3 = Color3.fromRGB(0, 0, 0)
Activate.BorderSizePixel = 0
Activate.Position = UDim2.new(0.0558659211, 0, 0.601626039, 0)
Activate.Size = UDim2.new(0, 158, 0, 40)
Activate.Font = Enum.Font.SourceSans
Activate.TextColor3 = Color3.fromRGB(0, 0, 0)
Activate.TextSize = 14.000

size.Name = "size"
size.Parent = Frame_2
size.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
size.BackgroundTransparency = 1.000
size.BorderColor3 = Color3.fromRGB(0, 0, 0)
size.BorderSizePixel = 0
size.Position = UDim2.new(0, 0, 0.048780486, 0)
size.Size = UDim2.new(0, 70, 0, 26)
size.Font = Enum.Font.SourceSans
size.Text = "Hitbox Size:"
size.TextColor3 = Color3.fromRGB(0, 0, 0)
size.TextScaled = true
size.TextSize = 14.000
size.TextWrapped = true

target.Name = "target"
target.Parent = Frame_2
target.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
target.BackgroundTransparency = 1.000
target.BorderColor3 = Color3.fromRGB(0, 0, 0)
target.BorderSizePixel = 0
target.Position = UDim2.new(0, 0, 0.317073166, 0)
target.Size = UDim2.new(0, 70, 0, 26)
target.Font = Enum.Font.SourceSans
target.Text = "Set Target:"
target.TextColor3 = Color3.fromRGB(0, 0, 0)
target.TextScaled = true
target.TextSize = 14.000
target.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 15)
UICorner_2.Parent = Frame_2

local function fake_script_a()
	local script = Instance.new('LocalScript', Frame)



	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil

	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end

	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
end
coroutine.wrap(fake_script_a)()
local function fake_script_e()
	local script = Instance.new('LocalScript', Frame_2)



	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil

	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end

	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
end
coroutine.wrap(fake_script_e)()

TextButton.Activated:Connect(function()
	GUI.Enabled = not GUI.Enabled
end)

Activate.Activated:Connect(function()
	local target = targin.Text
	local size = sizein.Text
	if target == "all" then
		for i,obj in pairs(game.Players:GetChildren()) do
			hitbox(size,obj.Character)
		end
	else
		if PlayerExistsFromName(target) then else return end
		hitbox(size, GetCharacterByName(target))
	end
end)
