-- Gui to Lua
-- Version: 3.2

-- Instances:

local al = Instance.new("ScreenGui")
local mainBorderAntiL = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TitleTopBar = Instance.new("Frame")
local XML4Title = Instance.new("TextLabel")
local TitleSplitter = Instance.new("TextLabel")
local LUCITitle = Instance.new("TextLabel")
local close = Instance.new("ImageButton")
local GuiVersionImportant = Instance.new("TextLabel")
local IndexHolder = Instance.new("ScrollingFrame")
local AntiLogHolder = Instance.new("Frame")
local BaitIDTextBoxImportant = Instance.new("TextBox")
local NormalIDTextBoxImportant = Instance.new("TextBox")
local PlayButtonImportant = Instance.new("TextButton")
local AntiLogVersionImportant = Instance.new("TextLabel")
local AntiLogTitle = Instance.new("TextLabel")

--Properties:

al.Name = "al"
al.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
al.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

mainBorderAntiL.Name = "mainBorderAntiL"
mainBorderAntiL.Parent = al
mainBorderAntiL.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
mainBorderAntiL.BorderColor3 = Color3.fromRGB(25, 25, 25)
mainBorderAntiL.Position = UDim2.new(0.315997511, 0, 0.296827614, 0)
mainBorderAntiL.Size = UDim2.new(0, 465, 0, 277)

UICorner.Parent = mainBorderAntiL

TitleTopBar.Name = "TitleTopBar"
TitleTopBar.Parent = mainBorderAntiL
TitleTopBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleTopBar.BackgroundTransparency = 1.000
TitleTopBar.Size = UDim2.new(0, 428, 0, 27)

XML4Title.Name = "XML4Title"
XML4Title.Parent = TitleTopBar
XML4Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
XML4Title.BackgroundTransparency = 1.000
XML4Title.Position = UDim2.new(0.459065378, 0, 0, 0)
XML4Title.Size = UDim2.new(0, 28, 0, 28)
XML4Title.Font = Enum.Font.GothamBold
XML4Title.Text = "XML4"
XML4Title.TextColor3 = Color3.fromRGB(255, 255, 255)
XML4Title.TextSize = 14.000

TitleSplitter.Name = "-TitleSplitter"
TitleSplitter.Parent = TitleTopBar
TitleSplitter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleSplitter.BackgroundTransparency = 1.000
TitleSplitter.Position = UDim2.new(0.50934577, 0, 0, 0)
TitleSplitter.Size = UDim2.new(0, 29, 0, 28)
TitleSplitter.Font = Enum.Font.GothamBold
TitleSplitter.Text = "-"
TitleSplitter.TextColor3 = Color3.fromRGB(0, 170, 255)
TitleSplitter.TextSize = 14.000

LUCITitle.Name = "LUCITitle"
LUCITitle.Parent = TitleTopBar
LUCITitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LUCITitle.BackgroundTransparency = 1.000
LUCITitle.Position = UDim2.new(0.560000002, 0, 0, 0)
LUCITitle.Size = UDim2.new(0, 27, 0, 28)
LUCITitle.Font = Enum.Font.GothamBold
LUCITitle.Text = "LUCI"
LUCITitle.TextColor3 = Color3.fromRGB(255, 255, 255)
LUCITitle.TextSize = 14.000

close.Name = "close"
close.Parent = TitleTopBar
close.BackgroundTransparency = 1.000
close.LayoutOrder = 4
close.Position = UDim2.new(1.03512311, 0, 0.246302888, 0)
close.Size = UDim2.new(0, 15, 0, 13)
close.ZIndex = 2
close.Image = "rbxassetid://3926305904"
close.ImageColor3 = Color3.fromRGB(0, 170, 255)
close.ImageRectOffset = Vector2.new(124, 124)
close.ImageRectSize = Vector2.new(36, 36)

GuiVersionImportant.Name = "GuiVersionImportant"
GuiVersionImportant.Parent = TitleTopBar
GuiVersionImportant.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GuiVersionImportant.BackgroundTransparency = 1.000
GuiVersionImportant.Position = UDim2.new(0.0130374227, 0, 0.0981547013, 0)
GuiVersionImportant.Size = UDim2.new(0, 39, 0, 21)
GuiVersionImportant.Visible = false
GuiVersionImportant.Font = Enum.Font.GothamBlack
GuiVersionImportant.Text = "v1"
GuiVersionImportant.TextColor3 = Color3.fromRGB(50, 50, 50)
GuiVersionImportant.TextSize = 13.000
GuiVersionImportant.TextXAlignment = Enum.TextXAlignment.Left

IndexHolder.Name = "IndexHolder"
IndexHolder.Parent = mainBorderAntiL
IndexHolder.Active = true
IndexHolder.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
IndexHolder.BackgroundTransparency = 1.000
IndexHolder.BorderSizePixel = 0
IndexHolder.Position = UDim2.new(0.0120000364, 0, 0.101083033, 0)
IndexHolder.Size = UDim2.new(0, 453, 0, 245)
IndexHolder.ScrollBarThickness = 8

AntiLogHolder.Name = "AntiLogHolder"
AntiLogHolder.Parent = IndexHolder
AntiLogHolder.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
AntiLogHolder.BorderSizePixel = 0
AntiLogHolder.Position = UDim2.new(0, 0, 0.0531496853, 0)
AntiLogHolder.Size = UDim2.new(0, 452, 0, 214)

BaitIDTextBoxImportant.Name = "BaitIDTextBoxImportant"
BaitIDTextBoxImportant.Parent = AntiLogHolder
BaitIDTextBoxImportant.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
BaitIDTextBoxImportant.BorderSizePixel = 0
BaitIDTextBoxImportant.Position = UDim2.new(0.280671537, 0, 0.0840111896, 0)
BaitIDTextBoxImportant.Size = UDim2.new(0, 199, 0, 24)
BaitIDTextBoxImportant.ClearTextOnFocus = false
BaitIDTextBoxImportant.Font = Enum.Font.GothamSemibold
BaitIDTextBoxImportant.PlaceholderColor3 = Color3.fromRGB(68, 68, 68)
BaitIDTextBoxImportant.PlaceholderText = "Bait ID"
BaitIDTextBoxImportant.Text = ""
BaitIDTextBoxImportant.TextColor3 = Color3.fromRGB(0, 170, 255)
BaitIDTextBoxImportant.TextSize = 12.000

NormalIDTextBoxImportant.Name = "NormalIDTextBoxImportant"
NormalIDTextBoxImportant.Parent = AntiLogHolder
NormalIDTextBoxImportant.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
NormalIDTextBoxImportant.BorderSizePixel = 0
NormalIDTextBoxImportant.Position = UDim2.new(0.294185042, 0, 0.26925987, 0)
NormalIDTextBoxImportant.Size = UDim2.new(0, 187, 0, 22)
NormalIDTextBoxImportant.ClearTextOnFocus = false
NormalIDTextBoxImportant.Font = Enum.Font.GothamSemibold
NormalIDTextBoxImportant.PlaceholderColor3 = Color3.fromRGB(68, 68, 68)
NormalIDTextBoxImportant.PlaceholderText = "ID"
NormalIDTextBoxImportant.Text = ""
NormalIDTextBoxImportant.TextColor3 = Color3.fromRGB(0, 170, 255)
NormalIDTextBoxImportant.TextSize = 12.000

PlayButtonImportant.Name = "PlayButtonImportant"
PlayButtonImportant.Parent = AntiLogHolder
PlayButtonImportant.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
PlayButtonImportant.BorderSizePixel = 0
PlayButtonImportant.Position = UDim2.new(0.290318936, 0, 0.496463746, 0)
PlayButtonImportant.Size = UDim2.new(0, 191, 0, 31)
PlayButtonImportant.Font = Enum.Font.GothamSemibold
PlayButtonImportant.Text = "Play"
PlayButtonImportant.TextColor3 = Color3.fromRGB(209, 209, 209)
PlayButtonImportant.TextSize = 14.000

AntiLogVersionImportant.Name = "AntiLogVersionImportant"
AntiLogVersionImportant.Parent = AntiLogHolder
AntiLogVersionImportant.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AntiLogVersionImportant.BackgroundTransparency = 1.000
AntiLogVersionImportant.Position = UDim2.new(-0.0123451706, 0, 0.917453825, 0)
AntiLogVersionImportant.Size = UDim2.new(0, 464, 0, 17)
AntiLogVersionImportant.Font = Enum.Font.GothamBold
AntiLogVersionImportant.Text = "v1"
AntiLogVersionImportant.TextColor3 = Color3.fromRGB(50, 50, 50)
AntiLogVersionImportant.TextSize = 13.000

AntiLogTitle.Name = "AntiLogTitle"
AntiLogTitle.Parent = IndexHolder
AntiLogTitle.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
AntiLogTitle.BorderSizePixel = 0
AntiLogTitle.Position = UDim2.new(-0.609271526, 280, 0, 0)
AntiLogTitle.Size = UDim2.new(0, 444, 0, 30)
AntiLogTitle.Font = Enum.Font.GothamBold
AntiLogTitle.Text = "Anti-Log"
AntiLogTitle.TextColor3 = Color3.fromRGB(0, 170, 255)
AntiLogTitle.TextSize = 14.000

-- Scripts:

local function XYLJR_fake_script() -- close.closescript 
	local script = Instance.new('LocalScript', close)

	--Var
	tween_wait = 6
	
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent:TweenPosition(UDim2.new(-0.202, 0,1.9, 0), "In", "Quart",0.8) --original: {0.401, 0},{0.312, 0}
		wait(tween_wait) -- closes after time
		script.Parent.Parent.Parent.Parent:Destroy()
	warn("Successfuly Closed Gui, After: "..tween_wait.."s")
	end)
end
coroutine.wrap(XYLJR_fake_script)()
local function SNWYAJR_fake_script() -- mainBorderAntiL.makeguidraggable 
	local script = Instance.new('LocalScript', mainBorderAntiL)

	local UIS = game:GetService('UserInputService')
	
	
	local frame = script.Parent
	
	
	local dragToggle = nil
	
	
	local dragSpeed = 0.25
	
	
	local dragStart = nil
	
	
	local starPos = nil
	
	
	
	
	
	local function updateInput(input)
	
	
		local delta = input.Position - dragStart
	
	
		local position = UDim2.new(starPos.X.Scale, starPos.X.Offset + delta.X, starPos.Y.Scale, starPos.Y.Offset + delta.Y)
	
	
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	
	
	end
	
	
	
	
	
	frame.InputBegan:Connect(function(input)
	
	
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
	
	
			dragToggle = true -- dragToggle = true | makes it draggable
	
	
			dragStart = input.Position
	
	
			starPos = frame.Position
	
	
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
coroutine.wrap(SNWYAJR_fake_script)()
local function HJSNJCF_fake_script() -- PlayButtonImportant.LocalScript 
	local script = Instance.new('LocalScript', PlayButtonImportant)

	print("Hello world!")
	
end
coroutine.wrap(HJSNJCF_fake_script)()
