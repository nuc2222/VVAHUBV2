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
		obj.HumanoidRootPart.CanCollide = false
		obj.HumanoidRootPart.Transparency = 0.7
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



local UIROOT=Instance.new("ScreenGui",guig)
local GUIROOT=Instance.new("ScreenGui",UIROOT)
local BUTTONROOT=Instance.new("ScreenGui",UIROOT)

------------- BUTTON CONTENT --------------

local button_frame = Instance.new("Frame",BUTTONROOT)
local button_button = Instance.new("TextButton",button_frame)
local button_corners = Instance.new("UICorner",button_button)

------------ GUI CONTENT ------------------

local gui_frame = Instance.new("Frame",GUIROOT)
local gui_target = Instance.new("TextLabel",gui_frame)
local gui_size = Instance.new("TextLabel",gui_frame)
local gui_activate = Instance.new("TextButton",gui_frame)
local gui_target_input = Instance.new("TextBox",gui_frame)
local gui_size_input = Instance.new("TextBox",gui_frame)
local gui_credits = Instance.new("TextLabel", gui_frame)
local gui_corners = Instance.new("UICorner", gui_frame)

------------- BUTTON WORKSPACE --------------

button_frame.Size = UDim2.new(0,58,0,24)
button_frame.Transparency = 1
button_button.Transparency = 0.77
button_button.BackgroundColor3 = Color3.new(255,0,251)
button_button.Position = UDim2.new(0,0,0,0)
button_button.TextScaled = true
button_corners.CornerRadius = UDim.new(0,20)
button_button.Size = UDim2.new(0, 59,0, 23)
button_button.Text = "Hitbox Gui"

button_button.Position = UDim2.new(0,0,0,0)
button_frame.Position = UDim2.new(0.007,0,0.267,0)

------------ GUI WORKSPACE ------------------

gui_frame.Size = UDim2.new(0,179,0,123)
gui_frame.BackgroundColor3 = Color3.fromRGB(44,44,44)
gui_target_input.BackgroundColor3 = Color3.fromRGB(66,66,66)
gui_size_input.BackgroundColor3 = Color3.fromRGB(66,66,66)
gui_activate.BackgroundColor3 = Color3.fromRGB(66,66,66)
gui_credits.BackgroundTransparency = 1
gui_credits.Text = "made by hacker12.0000 on discord"
gui_target.BackgroundTransparency = 1
gui_size.BackgroundTransparency = 1
gui_size_input.Text = "10"
gui_target_input.Text = "all"
gui_target.Text = "Set Target:"
gui_size.Text = "Hitbox Size:"
gui_activate.Text = "ACTIVATE"

gui_corners.CornerRadius = UDim.new(0,15)
gui_credits.Size = UDim2.new(0, 137,0, 21)
gui_size.Size = UDim2.new(0, 70,0, 26)
gui_target.Size = UDim2.new(0, 70,0, 26)
gui_target_input.Size = UDim2.new(0, 98,0, 26)
gui_size_input.Size = UDim2.new(0, 98,0, 26)
gui_activate.Size = UDim2.new(0, 158,0, 40)
gui_size_input.TextColor3 = Color3.fromRGB(0, 0, 0)
gui_target.TextColor3 = Color3.fromRGB(0, 0, 0)
gui_target_input.TextColor3 = Color3.fromRGB(0, 0, 0)
gui_size.TextColor3 = Color3.fromRGB(0, 0, 0)
gui_activate.TextColor3 = Color3.fromRGB(0, 0, 0)
gui_size_input.BorderSizePixel = 0
gui_target_input.BorderSizePixel = 0

gui_frame.Position = UDim2.new(0.495,0,0.354,0)
gui_activate.Position = UDim2.new(0.056, 0,0.602, 0)
gui_size_input.Position = UDim2.new(0.391, 0,0.049, 0)
gui_target_input.Position = UDim2.new(0.391, 0,0.317, 0)
gui_target.Position = UDim2.new(0, 0,0.317, 0)
gui_size.Position = UDim2.new(0, 0,0.049, 0)
gui_credits.Position = UDim2.new(0.117, 0,-0.171, 0)

----------------- FUNCTONALITY ------------------
button_button.Activated:Connect(function()
	GUIROOT.Enabled = not GUIROOT.Enabled
end)
gui_activate.Activated:Connect(function()
	local target = gui_target_input.Text
	local size = gui_size_input.Text
	if target == "all" then
		for i,obj in pairs(game.Players:GetChildren()) do
			hitbox(size,obj.Character)
		end
	else
	if PlayerExistsFromName(target) then else return end
	hitbox(size, GetCharacterByName(target))
	end
end)
