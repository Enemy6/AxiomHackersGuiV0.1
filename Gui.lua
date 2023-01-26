-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Button1 = Instance.new("TextButton")
local Button2 = Instance.new("TextButton")
local TextBox = Instance.new("TextBox")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 5
Frame.Position = UDim2.new(0.292141706, 0, 0.60640353, 0)
Frame.Size = UDim2.new(0, 296, 0, 180)

Button1.Name = "Button1"
Button1.Parent = ScreenGui
Button1.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
Button1.BorderColor3 = Color3.fromRGB(85, 0, 0)
Button1.Position = UDim2.new(0.32369706, 0, 0.648447573, 0)
Button1.Size = UDim2.new(0, 200, 0, 50)
Button1.Font = Enum.Font.SourceSansBold
Button1.Text = "Spam"
Button1.TextColor3 = Color3.fromRGB(0, 0, 0)
Button1.TextSize = 47.000

Button2.Name = "Button2"
Button2.Parent = ScreenGui
Button2.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
Button2.BorderColor3 = Color3.fromRGB(255, 0, 0)
Button2.Position = UDim2.new(0.32369706, 0, 0.729301393, 0)
Button2.Size = UDim2.new(0, 200, 0, 50)
Button2.Font = Enum.Font.SourceSansBold
Button2.Text = "Sound"
Button2.TextColor3 = Color3.fromRGB(0, 0, 0)
Button2.TextSize = 47.000

TextBox.Parent = ScreenGui
TextBox.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
TextBox.BorderColor3 = Color3.fromRGB(85, 0, 0)
TextBox.BorderSizePixel = 5
TextBox.Position = UDim2.new(0.292141676, 0, 0.551423013, 0)
TextBox.Size = UDim2.new(0, 296, 0, 50)
TextBox.Font = Enum.Font.SourceSansBold
TextBox.Text = "AxiomHackers GUI V0.1"
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextSize = 35.000

-- Scripts:

local function SZNNNKZ_fake_script() -- Button1.Script 
	local script = Instance.new('Script', Button1)

	Button1.MouseButton1Click:Connect(function()
		-- Code for button 1
		local settings = {
			AutoChat_Time = 1,
			AutoChat_Delay = 1,
			AutoChat = true,
		}
	
		local chatrem = game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest
	
		while task.wait(settings.AutoChat_Time) do
			chatrem:FireServer('GET PWNED BY AxiomHackers!!!', "All")
			print("Sent Message")
		end
	end)
end
coroutine.wrap(SZNNNKZ_fake_script)()
local function PLXHMAD_fake_script() -- Button2.Script 
	local script = Instance.new('Script', Button2)

	Button2.MouseButton1Click:Connect(function()
		-- Code for button 2
		while wait(0.01) do
			for i, v in pairs(game:GetDescendants()) do
				if v:IsA('Sound') then
					v:Play()
					print(game.SoundService.RespectFilteringEnabled) -- if it is false then sounds can be replicated to server if it is true then it not gonna work
				end
			end
		end
	end)
end
coroutine.wrap(PLXHMAD_fake_script)()
