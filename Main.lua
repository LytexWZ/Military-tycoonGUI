local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Military Tycoon LytexGUI",
   LoadingTitle = "Military Tycoon ScriptHub",
   LoadingSubtitle = "by LytexWZ",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "LytexWZ GUI"
   },
   Discord = {
      Enabled = true,
      Invite = "QfRrx7qf53",
      RememberJoins = true
   },
   KeySystem = true,
   KeySettings = {
      Title = "Key System",
      Subtitle = "Join our discord server to get the key!",
      Note = "dsc.gg/kosmosisofficial",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = true,
      Key = {"https://pastebin.com/raw/dbFVTCs9"}
   }
})

local MainTab = Window:CreateTab("Main", nil)
local MainSection = MainTab:CreateSection("Main")

Rayfield:Notify({
   Title = "Have you Subscribed to Lytex yet?",
   Content = "Link in GUI",
   Duration = 5,
   Image = nil,
   Actions = {
      Ignore = {
         Name = "Yes!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})

local Button = MainTab:CreateButton({
   Name = "Infinite Jump",
   Callback = function()
_G.infinjump = not _G.infinjump

if _G.infinJumpStarted == nil then
	_G.infinJumpStarted = true
	
	game.StarterGui:SetCore("SendNotification", {Title="LytexWZ GUI"; Text="The Infinite Jump exploit is ready!"; Duration=5;})

	local plr = game:GetService('Players').LocalPlayer
	local m = plr:GetMouse()
	m.KeyDown:connect(function(k)
		if _G.infinjump then
			if k:byte() == 32 then
			humanoid = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
			humanoid:ChangeState('Jumping')
			wait()
			humanoid:ChangeState('Seated')
			end
		end
	end)
end
   end,
})

local Button = MainTab:CreateButton({
   Name = "NoClip",
   Callback = function()
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
		wait(0.21)
	end
	Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
end

function clip()
	if Noclip then Noclip:Disconnect() end
	Clip = true
end

noclip()
   end,
})

local Button = MainTab:CreateButton({
   Name = "ctrl+click teleport",
   Callback = function()
if _G.WRDClickTeleport == nil then
	_G.WRDClickTeleport = true
	
	local player = game:GetService("Players").LocalPlayer
	local UserInputService = game:GetService("UserInputService")
	local mouse = player:GetMouse()

	repeat wait() until mouse
	
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			if _G.WRDClickTeleport and UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
				player.Character:MoveTo(Vector3.new(mouse.Hit.x, mouse.Hit.y, mouse.Hit.z)) 
			end
		end
	end)
else
	_G.WRDClickTeleport = not _G.WRDClickTeleport
	if _G.WRDClickTeleport then
		game.StarterGui:SetCore("SendNotification", {Title="LytexWZ GUI"; Text="Click teleport enabled"; Duration=5;})
	else
		game.StarterGui:SetCore("SendNotification", {Title="LytexWZ GUI"; Text="Click teleport disabled"; Duration=5;})
	end
end
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "Walk Speed",
   Range = {0, 300},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "SpeedSlider",
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local TeleportTab = Window:CreateTab("Teleports", nil)
local Section = TeleportTab:CreateSection("Bank")

local Button = TeleportTab:CreateButton({
    Name = "Bank Front Door",
    Callback = function()
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(14, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-422.8588562011719, 131.13305053710938, -392.48681640625)}):Play()
    end,
})

local Button = TeleportTab:CreateButton({
   Name = "Lever Room",
   Callback = function()
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(15, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-381.372314453125, 391.0665283203125, -472.92254638671875)}):Play()
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Vault (Outside)",
   Callback = function()
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(15, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-425.9233093261719, -63.892982482910156, -384.65768432611719)}):Play()
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Vault (Inside)",
   Callback = function()
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(15, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-453.9233093261719, -63.892982482910156, -384.65768432611719)}):Play()
   end,
})

local Section = TeleportTab:CreateSection("Flags")

local Button = TeleportTab:CreateButton({
   Name = "Flag 1",
   Callback = function()
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(15, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(593.4930419921875, 121.20000457763672, 1179.4832763671875)}):Play()
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Flag 2",
   Callback = function()
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(16, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-1531.86705078125, 121.20000457763672, 113.80399017333984)}):Play()
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Flag 3",
   Callback = function()
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(16, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-965.0112915039062, 121.20001983642578, -1760.6954345703125)}):Play()
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Flag 4",
   Callback = function()
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(16.5, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(1276.3323974609375, 121.2490005493164, -777.3529663085938)}):Play()
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Infinity tower (OP)",
   Callback = function()
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(16.5, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-9.181306838989258, 798.80078125, -433.4870300292969)}):Play()
   end,
})

local Section = TeleportTab:CreateSection("Bosses")

local Button = TeleportTab:CreateButton({
   Name = "Tier 1",
   Callback = function()
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(16.5, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(203.91357421875, 124.3406021118164, -1874.5001220703125)}):Play()
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Tier 2",
   Callback = function()
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(16.5, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-1514.3406982421875, 124.3406021118164, -998.38390380859375)}):Play()
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Tier 3",
   Callback = function()
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(16.5, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(1095.66455078125, 124.3406021118164, 144.00534057617188)}):Play()
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Tier 4",
   Callback = function()
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(16.5, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-621.078857421875, 124.3406021118164, 774.3932495117188)}):Play()
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Tier 5",
   Callback = function()
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(16.5, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(23.747791290283203, 124.3406021118164, 324.7330627441406)}):Play()
   end,
})

local MiscTab = Window:CreateTab("Misc", nil)
local Section = MiscTab:CreateSection("YouTube Link")

local Button = MiscTab:CreateButton({
   Name = "Subscribe to Lytex",
   Callback = function()
		setclipboard("https://www.youtube.com/@lytexwz")
   end,
})

local Button = MiscTab:CreateButton({
   Name = "More features coming soon, stay tuned!",
   Callback = function()
		setclipboard("https://www.youtube.com/@lytexwz")
   end,
})
