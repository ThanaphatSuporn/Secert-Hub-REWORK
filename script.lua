local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Secert Hub Rework", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local peoplein = 0
local SetJumpPower = game.Players.LocalPlayer.Character:WaitForChild("Humanoid").UseJumpPower
SetJumpPower = true

for i,v in pairs(game.Players:GetPlayers()) do
	peoplein = peoplein + 1
end

OrionLib:MakeNotification({
	Name = "Secert Hub Rework!",
	Content = "This in beta test",
	Image = "rbxassetid://12966403319",
	Time = 3
})

--[[Tab1]]

local Tab = Window:MakeTab({
	Name = "LocalPlayer",
	Icon = "rbxassetid://11432831839",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Player:"..peoplein
})

Tab:AddSlider({
	Name = "WalkSpeed",
	Min = 16,
	Max = 1000,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "WalkSpeed",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end
})

Tab:AddSlider({
	Name = "JumpPower",
	Min = 16,
	Max = 1000,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "JumpPower",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end
})

--[[Tab2]]

local Tab2 = Window:MakeTab({
	Name = "Unverisal",
	Icon = "rbxassetid://11422151506",
	PremiumOnly = false
})

local Section = Tab2:AddSection({
	Name = "ScriptBlox (soucre)"
})

Tab2:AddButton({
	Name = "Luaware lumber tycoon2",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/frencaliber/scriptsstorage/main/LumberTycoonLW",true))()
	end    
})

Tab2:AddButton({
	Name = "YARHM MM2",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/yarhm.lua", false))()
	end    
})
