-- Gui to Lua
-- Version: 3.2

-- Instances:

local IvoryScripts = Instance.new("ScreenGui")
local Watermark = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")

--Properties:

IvoryScripts.Name = "IvoryScripts"
IvoryScripts.Parent = game.CoreGui
IvoryScripts.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
IvoryScripts.DisplayOrder = 999999999
IvoryScripts.ResetOnSpawn = false

Watermark.Name = "Watermark"
Watermark.Parent = IvoryScripts
Watermark.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Watermark.BackgroundTransparency = 1.000
Watermark.BorderSizePixel = 0
Watermark.Position = UDim2.new(0.862520397, 0, 0.878564954, 0)
Watermark.Size = UDim2.new(0.132569551, 0, 0.223550886, 0)
Watermark.Image = "http://www.roblox.com/asset/?id=8294929479"
Watermark.ScaleType = Enum.ScaleType.Fit

UICorner.CornerRadius = UDim.new(0.0399999991, 0)
UICorner.Parent = Watermark

-- Scripts:

local function LMPHUVV_fake_script() -- IvoryScripts.Client 
	local script = Instance.new('LocalScript', IvoryScripts)

	script.Parent.Watermark.Position = UDim2.new(0.863, 0,1, 0)
	script.Parent.Watermark.Image = game:GetService("GroupService"):GetGroupInfoAsync(5843282).EmblemUrl
	local tween = game:GetService("TweenService"):Create(script.Parent.Watermark, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Position = UDim2.new(0.863, 0,0.879, 0)})
	tween:Play()
	tween.Completed:Wait()
	tween = game:GetService("TweenService"):Create(script.Parent.Watermark, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Position = UDim2.new(0.863, 0,1, 0)})
	wait(6)
	tween:Play()
	tween.Completed:Wait()
	script.Parent:Destroy()
end
coroutine.wrap(LMPHUVV_fake_script)()
