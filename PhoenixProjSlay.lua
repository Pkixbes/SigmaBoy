--- Ouwigahara Mobile Support

--------------------------------------------------------------------------------------------
-- Phoenik HUB PREMIUM | PROJECT SLAYERS | OUWIGAHARA
--------------------------------------------------------------------------------------------
--- ANTI AFK?

repeat wait() until game:IsLoaded()
game:GetService("Players").LocalPlayer.Idled:Connect(function()
    game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)

--------- SERVICES // VARIABLES
 
local UIS = game:GetService("UserInputService")
local VirtualUser = game:GetService("VirtualUser")
local VIM = game:GetService("VirtualInputManager")
local ReplStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local Imput = game:GetService("UserInputService")
local COREGUI = game:GetService("CoreGui")
local LP = game:GetService("Players").LocalPlayer
local HttpService = game:GetService("HttpService")
local RunS = game:GetService("RunService")
local X, Y = 0, 0
local Mouse = LP:GetMouse()
local GetLocalName = LP.Name
local request = (syn and syn.request) or (http and http.request) or http_request
local client = game:GetService("Players").LocalPlayer
local Plr = game:GetService("Players").LocalPlayer
local Data = game:GetService("ReplicatedStorage")["Player_Data"][game.Players.LocalPlayer.Name]

-- Initialize variables that were missing
local FarmModes = CFrame.new()
local invTable = {}
local UsingSkill = false
local SkillActive = false
local NearestMobs = false
local TweenFa = nil
local antifall3 = nil

local function pressKey(key)
    VIM:SendKeyEvent(true, key, false, game)
    wait()
    VIM:SendKeyEvent(false, key, false, game)
end

local function GetHuman()
    local h = LP.Character
    h = h and (h:FindFirstChild("Humanoid") or h:FindFirstChildWhichIsA("Humanoid"))
    return h or workspace.CurrentCamera.CameraSubject
end

local GramxProjectFloat = tostring(math.random(0, 100000))
local TweenFloatVelocity = Vector3.new(0,0,0)

function CreateTweenFloat()
    local BV = game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild(GramxProjectFloat) or Instance.new("BodyVelocity")
    BV.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
    BV.Name = GramxProjectFloat
    BV.MaxForce = Vector3.new(100000, 100000, 100000)
    BV.Velocity = TweenFloatVelocity
end

local function GetDistance(Endpoint)
    if typeof(Endpoint) == "Instance" then
        Endpoint = Vector3.new(Endpoint.Position.X, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y, Endpoint.Position.Z)
    elseif typeof(Endpoint) == "CFrame" then
        Endpoint = Vector3.new(Endpoint.Position.X, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y, Endpoint.Position.Z)
    end
    local Magnitude = (Endpoint - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    return Magnitude
end

function Tween(Endpoint)
    if typeof(Endpoint) == "Instance" then
        Endpoint = Endpoint.CFrame
    end
    local TweenFunc = {}
    local Distance = GetDistance(Endpoint)
    local TweenInfo = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Distance/getgenv().TweenSpeed, Enum.EasingStyle.Linear), {CFrame = Endpoint * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(0))})
    TweenInfo:Play()
    function TweenFunc:Cancel()
        TweenInfo:Cancel()
        return false
    end
    if Distance <= 100 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Endpoint
        TweenInfo:Cancel()
        return false
    end
    return TweenFunc
end

function HubrisGUI()
    loadstring(game:HttpGetAsync("https://gist.github.com/NotHubris/16fbe2bf8d9563e09858c5cd2c6fafce/raw"))()    
end

function BeHybrid()
    local Players = game:GetService("Players")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local localPlayer = Players.LocalPlayer
    ReplicatedStorage.Player_Data[localPlayer.Name].Race.Value = 4
end

function DieInVoid()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(755, -498, 892)
end

function BeDemon()
    local Players = game:GetService("Players")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local localPlayer = Players.LocalPlayer
    ReplicatedStorage.Player_Data[localPlayer.Name].Race.Value = 3
end

function SoundGodMode()
    _G.godmode = true
    while _G.godmode do
        local args = {
            [1] = "skil_ting_asd",
            [2] = game:GetService("Players").LocalPlayer,
            [3] = "sound_breathing_smoke_screen",
            [4] = 1
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
        wait(1)
    end
end

function BeSlayer()
    local Players = game:GetService("Players")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local localPlayer = Players.LocalPlayer
    ReplicatedStorage.Player_Data[localPlayer.Name].Race.Value = 2
end

function BeHuman()
    local Players = game:GetService("Players")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local localPlayer = Players.LocalPlayer
    ReplicatedStorage.Player_Data[localPlayer.Name].Race.Value = 1
end

function RemoveDMG()
    local part = game:GetService("StarterPlayer").StarterPlayerScripts.Client_Modules.Modules.Extra.Damage_Text
    local part1 = game:GetService("ReplicatedStorage").Assets.Extras.Damage_Text
    local part2 = game:GetService("Players").LocalPlayer.PlayerScripts.Client_Modules.Modules.Extra.Damage_Text
    local COINS = game:GetService("ReplicatedStorage").Assets.Extras.Coin
    local PARTICLES = game:GetService("ReplicatedStorage").Assets.Particles.Parts
    
    part:Destroy()
    part1:Destroy()
    part2:Destroy()
    COINS:Destroy()
    PARTICLES:Destroy()
end

function TitleBuff()
    local folderPath = game:GetService("Players").LocalPlayer.Player_Titles_List
    for _, child in ipairs(folderPath:GetChildren()) do
        if child:IsA("IntValue") then
            child.Value = 9999999999
        end
    end
end

function SpinDemonArt()
    local args = {
        [1] = "check_can_spin_demon_art"
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S_"):InvokeServer(unpack(args))    
end

function EnableCHATLOGS()
    local enabled = true
    local spyOnMyself = true
    local public = false
    local publicItalics = false
    local privateProperties = {
        Color = Color3.fromRGB(0, 255, 255),
        Font = Enum.Font.SourceSansBold,
        TextSize = 18,
    }

    local StarterGui = game:GetService("StarterGui")
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer or Players:GetPropertyChangedSignal("LocalPlayer"):Wait() or Players.LocalPlayer
    local saymsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
    local getmsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering")
    local instance = (_G.chatSpyInstance or 0) + 1
    _G.chatSpyInstance = instance

    local function onChatted(p, msg)
        if _G.chatSpyInstance == instance then
            if p == player and msg:lower():sub(1, 6) == "/e spy" then
                enabled = not enabled
                wait(0.3)
                privateProperties.Text = "{SPY " .. (enabled and "EN" or "DIS") .. "ABLED}"
                StarterGui:SetCore("ChatMakeSystemMessage", privateProperties)
            elseif enabled and (spyOnMyself == true or p ~= player) then
                msg = msg:gsub("[\n\r]", ''):gsub("\t", ' '):gsub("[ ]+", ' ')
                local hidden = true
                local conn = getmsg.OnClientEvent:Connect(function(packet, channel)
                    if packet.SpeakerUserId == p.UserId and packet.Message == msg:sub(#msg - #packet.Message + 1) and (channel == "All" or (channel == "Team" and public == false and p.Team == player.Team)) then
                        hidden = false
                    end
                end)
                wait(1)
                conn:Disconnect()
                if hidden and enabled then
                    if public then
                        saymsg:FireServer((publicItalics and "/me " or '') .. "{SPY} [" .. p.Name .. "]: " .. msg, "All")
                    else
                        privateProperties.Text = "{SPY} [" .. p.Name .. "]: " .. msg
                        StarterGui:SetCore("ChatMakeSystemMessage", privateProperties)
                    end
                end
            end
        end
    end

    for _, p in ipairs(Players:GetPlayers()) do
        p.Chatted:Connect(function(msg)
            onChatted(p, msg)
        end)
    end
    Players.PlayerAdded:Connect(function(p)
        p.Chatted:Connect(function(msg)
            onChatted(p, msg)
        end)
    end)
    privateProperties.Text = "{SPY " .. (enabled and "EN" or "DIS") .. "ABLED}"
    player:WaitForChild("PlayerGui"):WaitForChild("Chat")
    StarterGui:SetCore("ChatMakeSystemMessage", privateProperties)
    wait(3)
    local chatFrame = player.PlayerGui.Chat.Frame
    chatFrame.ChatChannelParentFrame.Visible = true
    chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position + UDim2.new(UDim.new(), chatFrame.ChatChannelParentFrame.Size.Y)
end

local function SkillBind(bind)
    pcall(function()
        VIM:SendKeyEvent(true,bind,false,game)
        task.wait()
        VIM:SendKeyEvent(false,bind,false,game)
        wait(.2)
    end)
end

function Hop()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    
    function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _,Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(4)
                end
            end
        end
    end
    
    function Teleport() 
        while wait() do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
        end
    end
    Teleport()
end

--------- SERVICES // KA

local attackMethods = {
    ["Combat"] = 'fist_combat',
    ["Sword"] = 'Sword_Combat_Slash',
    ["Scythe"] = 'Scythe_Combat_Slash',
    ["Claw"] = 'claw_Combat_Slash',
    ["Fans"] = 'fans_combat_slash'
}

local function attack(method)
    wait()
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
    wait()
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
    wait()
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
    wait()
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
    wait()
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
    wait()
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
    wait()
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
    wait()
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
    wait()
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
    wait()
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
    wait()
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
    wait()
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
end

if game.ReplicatedStorage:FindFirstChild("Remotes"):FindFirstChild("getclientping") then 
    game.ReplicatedStorage:FindFirstChild("Remotes"):FindFirstChild("getclientping").OnClientInvoke = function() 
        task.wait(5)
        return true 
    end 
end

--------- LIBRARY

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Phoenik Hub v1 PREMIUM // Project Slayers // Ouwigahara", HidePremium = true, SaveConfig = true, ConfigFolder = "PhoenikHubv1Ouwigahara"})
local WebhookURL = "" 

local MainTab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local OrbTab = Window:MakeTab({
    Name = "Orbs",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local GodModeTab = Window:MakeTab({
    Name = "God Modes",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local AutoSkill = Window:MakeTab({
    Name = "Auto Skill",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local SettingsTab = Window:MakeTab({
    Name = "Others",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local MiscTab = Window:MakeTab({
    Name = "Misc",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local TeleportsTab = Window:MakeTab({
    Name = "Teleports",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local CreditsTab = Window:MakeTab({
    Name = "Credits",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

OrionLib:MakeNotification({
    Name = "Phoenik Hub v1",
    Content = "Project Slayers // Ouwigahara",
    Image = "rbxassetid://4483345998",
    Time = 5
})

--------------------------------------------------------------------------------------------

--------- MAIN // FARM

local FarmSection = MainTab:AddSection({
    Name = "Farm"
})

FarmSection:AddToggle({
    Name = "Auto Farm Dungeon (No Need To Turn ON Kill Aura)",
    Default = false,
    Callback = function(value)
        getgenv().AllBosses = value
    end    
})

FarmSection:AddButton({
    Name = "Other Hub (NotHubris GUI) [If you want to be sure]",
    Callback = function()
        HubrisGUI()
    end    
})

local UserInputService = game:GetService("UserInputService")
local ContextActionService = game:GetService("ContextActionService")
local mouseEnabled = true

local function DisableMouseClicks()
    mouseEnabled = false
    ContextActionService:BindAction("DisableMouseClicks", function() end, false, Enum.UserInputType.MouseButton1, Enum.UserInputType.MouseButton2)
end

local function EnableMouseClicks()
    mouseEnabled = true
    ContextActionService:UnbindAction("DisableMouseClicks")
end

FarmSection:AddToggle({
    Name = "Disable Mouse",
    Default = false,
    Callback = function(value)
        if value then
            DisableMouseClicks()
        else
            EnableMouseClicks()
        end
    end    
})

FarmSection:AddToggle({
    Name = "Kill Aura",
    Default = false,
    Callback = function(value)
        getgenv().KillAura = value
    end    
})

FarmSection:AddToggle({
    Name = "Global Kill Aura Bypass (ARROW)",
    Default = false,
    Callback = function(value)
        local firing = value
        if firing then
            while firing do
                local Handle_Initiate_S_ = game.ReplicatedStorage.Remotes.To_Server.Handle_Initiate_S_
                Handle_Initiate_S_:InvokeServer("skil_ting_asd", game.Players.LocalPlayer, "arrow_knock_back", 5)
                wait(15)
            end
        end
    end    
})

FarmSection:AddToggle({
    Name = "Global Kill Aura (ARROW) [SLOW]",
    Default = false,
    Callback = function(state)
        local running = state
        if running then
            while running do
                local success, error = pcall(function()
                    for _, v in ipairs(workspace.Mobs:GetDescendants()) do
                        if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
                            local Handle_Initiate_S_ = game.ReplicatedStorage.Remotes.To_Server.Handle_Initiate_S_
                            Handle_Initiate_S_:InvokeServer("arrow_knock_back_damage", game.Players.LocalPlayer.Character, v.HumanoidRootPart.CFrame, v, 500, 500)
                        end
                    end
                end)
                if not success then
                    warn("An error occurred:", error)
                end
                wait(0.1)
            end
        end
    end    
})

local running = false
FarmSection:AddToggle({
    Name = "Global Kill Aura (ARROW) [SAFEST]",
    Default = false,
    Callback = function(state)
        running = state
        if running then
            while running do
                local success, error = pcall(function()
                    local hitCounter = {}
                    for i, v in next, workspace.Mobs:GetDescendants() do
                        if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
                            local modelId = v:GetFullName()
                            if not hitCounter[modelId] then
                                hitCounter[modelId] = 0
                            end
                            if hitCounter[modelId] < 2 then
                                local humanoid = v:FindFirstChildOfClass("Humanoid")
                                if humanoid and humanoid.Health > 0 then
                                    local Handle_Initiate_S_ = game.ReplicatedStorage.Remotes.To_Server.Handle_Initiate_S_
                                    Handle_Initiate_S_:InvokeServer("arrow_knock_back_damage", game.Players.LocalPlayer.Character, v.HumanoidRootPart.CFrame, v, 500, 500)
                                    hitCounter[modelId] = hitCounter[modelId] + 1
                                else
                                    print("Model with health 0:", modelId)
                                end
                            end
                            local hitCount = 0
                            for _, count in pairs(hitCounter) do
                                hitCount = hitCount + count
                            end
                            if hitCount >= 2 then
                                break
                            end
                        end
                    end
                end)
                if not success then
                    print("An error occurred:", error)
                end
                wait()
            end
        end
    end
})

getgenv().Method = "Sword"
FarmSection:AddDropdown({
    Name = "Kill Aura Method",
    Default = "Sword",
    Options = {"Sword", "Combat", "Claw", "Scythe", "Fans"},
    Save = true,
    Flag = "ka_method",
    Callback = function(v)
        getgenv().Method = v
    end    
})

getgenv().FarmMethod = "Above"
FarmSection:AddDropdown({
    Name = "Farm Method",
    Default = "Above",
    Options = {"Above", "Below", "Behind", "Front"},
    Save = true,
    Flag = "farm_method",
    Callback = function(v)
        getgenv().FarmMethod = v
    end    
})

local TweenSpeedSlider = FarmSection:AddSlider({
    Name = "Tween Speed",
    Min = 100,
    Max = 1000,
    Default = 100,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 10,
    ValueName = "Tween Speed",
    Save = true,
    Flag = "tween_speed",
    Callback = function(self)
        getgenv().TweenSpeed = self
    end
})

local function AddSpeed()
    local currentSpeed = getgenv().TweenSpeed or 100
    local newSpeed = math.clamp(currentSpeed + 10, 100, 400)
    getgenv().TweenSpeed = newSpeed
    TweenSpeedSlider:SetValue(newSpeed)
end

local function LessenSpeed()
    local currentSpeed = getgenv().TweenSpeed or 100
    local newSpeed = math.clamp(currentSpeed - 10, 100, 400)
    getgenv().TweenSpeed = newSpeed
    TweenSpeedSlider:SetValue(newSpeed)
end

FarmSection:AddButton({
    Name = "Add +10 TweenSpeed",
    Callback = function()
        AddSpeed()
    end
})

FarmSection:AddButton({
    Name = "Lessen -10 TweenSpeed",
    Callback = function()
        LessenSpeed()
    end
})

FarmSection:AddSlider({
    Name = "Farm Distance",
    Min = 1,
    Max = 30,
    Default = 5,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "Farm Distance",
    Save = true,
    Flag = "farm_distance",
    Callback = function(self)
        getgenv().Distance = 5
        getgenv().Distance = self
    end    
})

local textbox = FarmSection:AddTextbox({
    Name = "WEBHOOK",
    Default = "",
    TextDisappear = true,
    Callback = function(value)
        WebhookURL = value
    end
})

FarmSection:AddToggle({
    Name = "Auto Collect Chest (DOES NOT Removes Chest After Collect)",
    Default = false,
    Save = true,
    Flag = "auto_collect_chest",
    Callback = function(value)
        getgenv().AutoCollectChest = value
    end    
})

FarmSection:AddToggle({
    Name = "Auto Collect Chest v2 (Removes Chest After Collect)",
    Default = false,
    Save = true,
    Flag = "auto_collect_chest",
    Callback = function(value)
        getgenv().AutoCollectChestv2 = value
    end    
})

FarmSection:AddToggle({
    Name = "Auto Collect Chest v3 [FOR WEBHOOK] [BETA]",
    Default = false,
    Save = true,
    Flag = "auto_collect_chest3",
    Callback = function(value)
        getgenv().AutoCollectChestv3 = value
    end
})

FarmSection:AddToggle({
    Name = "Auto Block [No Skills]",
    Default = false,
    Save = true,
    Flag = "auto_block",
    Callback = function(value)
        getgenv().AutoBlock = value
    end    
})

FarmSection:AddButton({
    Name = "RESET (Teleport to Void)",
    Callback = function()
        DieInVoid()
    end    
})

-- // AUTO COLLECT ORB

local OrbsTabz = OrbTab:AddSection({
    Name = "AUTO COLLECT ORB"
})

OrbsTabz:AddToggle({
    Name = "Auto Collect Health Regen Orb",
    Default = false,
    Save = true,
    Flag = "auto_health_regen_orb",
    Callback = function(value)
        getgenv().HealthRegen = value
    end    
})

OrbsTabz:AddToggle({
    Name = "Auto Collect Stamina Regen Orb",
    Default = false,
    Save = true,
    Flag = "auto_stamina_regen_orb",
    Callback = function(value)
        getgenv().StaminaRegen = value
    end    
})

OrbsTabz:AddToggle({
    Name = "Auto Collect Blood Money Orb",
    Default = false,
    Save = true,
    Flag = "auto_blood_money_orb",
    Callback = function(value)
        getgenv().BloodMoney = value
    end    
})

OrbsTabz:AddToggle({
    Name = "Auto Collect Double Points Orb",
    Default = false,
    Save = true,
    Flag = "auto_double_points_orb",
    Callback = function(value)
        getgenv().DoublePoints = value
    end    
})

OrbsTabz:AddToggle({
    Name = "Auto Collect Instant Kill Orb",
    Default = false,
    Save = true,
    Flag = "auto_insta_kill_orb",
    Callback = function(value)
        getgenv().InstaKill = value
    end    
})

OrbsTabz:AddToggle({
    Name = "Auto Collect Wisteria Poisoning Orb",
    Default = false,
    Save = true,
    Flag = "auto_wisteria_poisoning_orb",
    Callback = function(value)
        getgenv().WisteriaPoisoning = value
    end    
})

OrbsTabz:AddToggle({
    Name = "Auto Collect Mob Camouflage Orb",
    Default = false,
    Save = true,
    Flag = "auto_mob_camouflage_orb",
    Callback = function(value)
        getgenv().MobCamouflage = value
    end    
})

-- // Destroy Orb

local DestroyOrbsTab = OrbTab:AddSection({
    Name = "Destroy Orbs"
})

DestroyOrbsTab:AddToggle({
    Name = "Destroy Health Regen Orb",
    Default = false,
    Save = true,
    Flag = "Destroy_health_regen_orb",
    Callback = function(value)
        getgenv().HealthRegenDestroy = value
    end    
})

DestroyOrbsTab:AddToggle({
    Name = "Destroy Stamina Regen Orb",
    Default = false,
    Save = true,
    Flag = "Destroy_stamina_regen_orb",
    Callback = function(value)
        getgenv().StaminaRegenDestroy = value
    end    
})

DestroyOrbsTab:AddToggle({
    Name = "Destroy Blood Money Orb",
    Default = false,
    Save = true,
    Flag = "Destroy_blood_money_orb",
    Callback = function(value)
        getgenv().BloodMoneyDestroy = value
    end    
})

DestroyOrbsTab:AddToggle({
    Name = "Destroy Double Points Orb",
    Default = false,
    Save = true,
    Flag = "Destroy_double_points_orb",
    Callback = function(value)
        getgenv().DoublePointsDestroy = value
    end    
})

DestroyOrbsTab:AddToggle({
    Name = "Destroy Instant Kill Orb",
    Default = false,
    Save = true,
    Flag = "Destroy_insta_kill_orb",
    Callback = function(value)
        getgenv().InstaKillDestroy = value
    end    
})

DestroyOrbsTab:AddToggle({
    Name = "Destroy Wisteria Poisoning Orb",
    Default = false,
    Save = true,
    Flag = "Destroy_wisteria_poisoning_orb",
    Callback = function(value)
        getgenv().WisteriaPoisoningDestroy = value
    end    
})

DestroyOrbsTab:AddToggle({
    Name = "Destroy Mob Camouflage Orb",
    Default = false,
    Save = true,
    Flag = "Destroy_mob_camouflage_orb",
    Callback = function(value)
        getgenv().MobCamouflageDestroy = value
    end    
})

-- // KILL AURA - FARM

task.spawn(function()
    while task.wait() do
        pcall(function()
            if KillAura or getgenv().AllBosses then
                attack(attackMethods[Method])
                task.wait(0.5)
                repeat wait() until game.Players.LocalPlayer:WaitForChild("combotangasd123").Value == 0
            end
        end)
    end
end)

local function GetNearestBoss()
    local Bosses = game:GetService("Workspace").Mobs:GetDescendants()
    local BossesTable = {}
    
    for i,v in pairs(Bosses) do
        if v:IsA("Model") and v:FindFirstChild("Humanoid") then
            if v.Humanoid.Health > 0 then
                table.insert(BossesTable, v)
            end
        end
    end
    
    local NearestBoss = nil
    local NearestBossDistance = math.huge
    
    for i,v in pairs(BossesTable) do
        local Distance = GetDistance(v:GetModelCFrame() * FarmModes)
        if Distance < NearestBossDistance then
            NearestBoss = v
            NearestBossDistance = Distance
        end
    end
    
    return NearestBoss
end

-- // AUTO ALL BOSSES - FARM

spawn(function()
    while task.wait() do
        pcall(function()
            if getgenv().AllBosses or getgenv().AllBosses then
                if not LP.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                    antifall3 = Instance.new("BodyVelocity", LP.Character.HumanoidRootPart)
                    antifall3.Velocity = Vector3.new(0, 0, 0)
                    antifall3.MaxForce = Vector3.new(9e9, 9e9, 9e9)
                elseif LP.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                    local v = GetNearestBoss()
                    if v then
                        repeat task.wait()                                      
                            if GetDistance(v:GetModelCFrame() * FarmModes) < 25 and GetDistance(v:GetModelCFrame() * FarmModes) < 150 then
                                if TweenFa then
                                    TweenFa:Cancel()
                                    wait(.1)
                                end
                                LP.Character.HumanoidRootPart.CFrame = v:GetModelCFrame() * FarmModes
                            else
                                TweenFa = Tween(v:GetModelCFrame() * FarmModes)
                            end
                            if v.Humanoid.Health > 0 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and GetDistance(v:GetModelCFrame() * FarmModes) < 10 then
                                NearestMobs = true
                            elseif v.Humanoid.Health <= 0 or not v:FindFirstChild("Humanoid") and GetDistance(v:GetModelCFrame() * FarmModes) > 10 then
                                NearestMobs = false
                            end
                        until not getgenv().AllBosses or not getgenv().AllBosses or not v.Parent or v.Humanoid.Health <= 0 or not v:IsDescendantOf(workspace)
                        NearestMobs = false
                    end
                end
            else
                if antifall3 then
                    antifall3:Destroy()
                end
            end
            if getgenv().AllBosses == false or getgenv().AllBosses == false then
                if TweenFa then
                    TweenFa:Cancel()
                end
            end
        end)
    end
end)

-- // AUTO COLLECT CHESTS - FARM

spawn(function()
    while task.wait() do
        if AutoCollectChest then
            for _, v in pairs(game:GetService("Workspace").Debree:GetChildren()) do
                if v.Name == "Loot_Chest" then
                    for _, c in pairs(v:FindFirstChild("Drops"):GetChildren()) do
                        v["Add_To_Inventory"]:InvokeServer(c.Name)
                        delay(0.1, function()
                            c:Destroy()
                        end)
                    end
                end
            end
        end
    end
end)

spawn(function()
    while task.wait() do
        if AutoCollectChestv2 then
            for _, v in pairs(game:GetService("Workspace").Debree:GetChildren()) do
                if v.Name == "Loot_Chest" and v:FindFirstChild("Drops") then
                    if #v.Drops:GetChildren() == 0 then
                        v:Destroy()
                    else
                        for _, drop in pairs(v.Drops:GetChildren()) do
                            local args = {
                                [1] = drop.Name
                            }
                            v.Add_To_Inventory:InvokeServer(unpack(args))
                            if #v.Drops:GetChildren() == 0 then
                                v:Destroy()
                            end
                        end
                    end
                end
            end
        end
    end
end)

local function sendWebhook(itemName)
    local payload = {
        ["content"] = "",
        ["embeds"] = {{
            ["title"] = "**Item Obtained!**",
            ["description"] = game.Players.LocalPlayer.DisplayName .. " obtained the item: " .. itemName,
            ["type"] = "rich",
            ["color"] = tonumber(0xffffff),
            ["fields"] = {
                {
                    ["name"] = "Hardware ID:",
                    ["value"] = "Unknown",
                    ["inline"] = true
                }
            }
        }}
    }

    local headers = {
        ["Content-Type"] = "application/json"
    }

    local requestBody = game:GetService("HttpService"):JSONEncode(payload)

    local response = request({
        Url = WebhookURL,
        Method = "POST",
        Headers = headers,
        Body = requestBody
    })
end

spawn(function()
    while true do
        if AutoCollectChestv3 then
            for _, v in pairs(game:GetService("Workspace").Debree:GetChildren()) do
                if v.Name == "Loot_Chest" and v:FindFirstChild("Drops") then
                    if #v.Drops:GetChildren() == 0 then
                        v:Destroy()
                    else
                        for _, drop in pairs(v.Drops:GetChildren()) do
                            local args = {
                                [1] = drop.Name
                            }
                            v.Add_To_Inventory:InvokeServer(unpack(args))
                            if #v.Drops:GetChildren() == 0 then
                                v:Destroy()
                            end
                            sendWebhook(drop.Name)
                        end
                    end
                end
            end
        end
        wait()
    end
end)

-- // AUTO BLOCK - FARM

spawn(function()
    while task.wait() do
        if getgenv().AutoBlock then
            local args = {
                [1] = "add_blocking",
                [3] = 11565.6265117,
                [4] = game:GetService("ReplicatedStorage").PlayerValues[game.Players.LocalPlayer.Name],
                [5] = math.huge
            }
            game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args))
        end
    end
end)

--------- SETTINGS // METHODS

local AutoSkills = AutoSkill:AddSection({
    Name = "Auto Skill"
})

AutoSkills:AddToggle({
    Name = "Toggle Auto Skill",
    Default = false,
    Save = true,
    Flag = "Auto_Skill",
    Callback = function(t)
        getgenv().AutoUseSkills = t
    end    
})

AutoSkills:AddToggle({
    Name = "[Z] Move]",
    Default = false,
    Save = true,
    Flag = "Auto_Skill",
    Callback = function(t)
        getgenv().ZMove = t
    end    
})

AutoSkills:AddToggle({
    Name = "[X] Move]",
    Default = false,
    Save = true,
    Flag = "Auto_Skill",
    Callback = function(t)
        getgenv().XMove = t
    end    
})

AutoSkills:AddToggle({
    Name = "[C] Move]",
    Default = false,
    Save = true,
    Flag = "Auto_Skill",
    Callback = function(t)
        getgenv().CMove = t
    end    
})

AutoSkills:AddToggle({
    Name = "[V] Move]",
    Default = false,
    Save = true,
    Flag = "Auto_Skill",
    Callback = function(t)
        getgenv().VMove = t
    end    
})

AutoSkills:AddToggle({
    Name = "[B] Move]",
    Default = false,
    Save = true,
    Flag = "Auto_Skill",
    Callback = function(t)
        getgenv().BMove = t
    end    
})

AutoSkills:AddToggle({
    Name = "[N] Move]",
    Default = false,
    Save = true,
    Flag = "Auto_Skill",
    Callback = function(t)
        getgenv().NMove = t
    end    
})

-- // AUTO USE SKILLS - SKILLS

spawn(function()
    while task.wait() do
        pcall(function()
            if SkillActive then
                if AutoUseSkills and getgenv().ZMove and not UsingSkill then
                    for i = 1,7 do
                        UsingSkill = true
                        SkillBind("Z")
                    end              
                    UsingSkill = false
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if SkillActive then
                if AutoUseSkills and getgenv().XMove and not UsingSkill then
                    for i = 1,7 do
                        UsingSkill = true
                        SkillBind("X")
                    end              
                    UsingSkill = false
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if SkillActive then
                if AutoUseSkills and getgenv().CMove and not UsingSkill then
                    for i = 1,7 do
                        UsingSkill = true
                        SkillBind("C")
                    end              
                    UsingSkill = false
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if SkillActive then
                if AutoUseSkills and getgenv().VMove and not UsingSkill then
                    for i = 1,7 do
                        UsingSkill = true
                        SkillBind("V")
                    end              
                    UsingSkill = false
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if SkillActive then
                if AutoUseSkills and getgenv().BMove and not UsingSkill then
                    for i = 1,7 do
                        UsingSkill = true
                        SkillBind("B")
                    end              
                    UsingSkill = false
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if SkillActive then
                if AutoUseSkills and getgenv().NMove and not UsingSkill then
                    for i = 1,7 do
                        UsingSkill = true
                        SkillBind("N")
                    end              
                    UsingSkill = false
                end
            end
        end)
    end
end)

-- // AUTO COLLECT ORB - FARM

spawn(function()
    while true do
        if StaminaRegen then
            for _, v in pairs(game:GetService("Workspace").Map:GetChildren()) do
                if v:IsA("Model") and v.Name == "StaminaRegen" then
                    local targetPosition = v:GetModelCFrame().Position
                    local humanoidRootPart = LP.Character.HumanoidRootPart
                    humanoidRootPart.CFrame = CFrame.new(targetPosition)
                end
            end
        end
        task.wait()
    end
end)

spawn(function()
    while true do
        if HealthRegen then
            for _, v in pairs(game:GetService("Workspace").Map:GetChildren()) do
                if v:IsA("Model") and v.Name == "HealthRegen" then
                    local targetPosition = v:GetModelCFrame().Position
                    local humanoidRootPart = LP.Character.HumanoidRootPart
                    humanoidRootPart.CFrame = CFrame.new(targetPosition)
                end
            end
        end
        task.wait()
    end
end)

spawn(function()
    while true do
        if BloodMoney then
            for _, v in pairs(game:GetService("Workspace").Map:GetChildren()) do
                if v:IsA("Model") and v.Name == "BloodMoney" then
                    local targetPosition = v:GetModelCFrame().Position
                    local humanoidRootPart = LP.Character.HumanoidRootPart
                    humanoidRootPart.CFrame = CFrame.new(targetPosition)
                end
            end
        end
        task.wait()
    end
end)

spawn(function()
    while true do
        if DoublePoints then
            for _, v in pairs(game:GetService("Workspace").Map:GetChildren()) do
                if v:IsA("Model") and v.Name == "DoublePoints" then
                    local targetPosition = v:GetModelCFrame().Position
                    local humanoidRootPart = LP.Character.HumanoidRootPart
                    humanoidRootPart.CFrame = CFrame.new(targetPosition)
                end
            end
        end
        task.wait()
    end
end)

spawn(function()
    while true do
        if InstaKill then
            for _, v in pairs(game:GetService("Workspace").Map:GetChildren()) do
                if v:IsA("Model") and v.Name == "InstaKill" then
                    local targetPosition = v:GetModelCFrame().Position
                    local humanoidRootPart = LP.Character.HumanoidRootPart
                    humanoidRootPart.CFrame = CFrame.new(targetPosition)
                end
            end
        end
        task.wait()
    end
end)

spawn(function()
    while true do
        if WisteriaPoisoning then
            for _, v in pairs(game:GetService("Workspace").Map:GetChildren()) do
                if v:IsA("Model") and v.Name == "WisteriaPoisoning" then
                    local targetPosition = v:GetModelCFrame().Position
                    local humanoidRootPart = LP.Character.HumanoidRootPart
                    humanoidRootPart.CFrame = CFrame.new(targetPosition)
                end
            end
        end
        task.wait()
    end
end)

spawn(function()
    while true do
        if MobCamouflage then
            for _, v in pairs(game:GetService("Workspace").Map:GetChildren()) do
                if v:IsA("Model") and v.Name == "MobCamouflage" then
                    local targetPosition = v:GetModelCFrame().Position
                    local humanoidRootPart = LP.Character.HumanoidRootPart
                    humanoidRootPart.CFrame = CFrame.new(targetPosition)
                end
            end
        end
        task.wait()
    end
end)

-- // AUTO DESTROY ORB 

spawn(function()
    while true do
        if StaminaRegenDestroy then
            for _, v in pairs(game:GetService("Workspace").Map:GetChildren()) do
                if v:IsA("Model") and v.Name == "StaminaRegen" then
                    v:Destroy()
                end
            end
        end
        wait(1) 
    end
end)

spawn(function()
    while true do
        if HealthRegenDestroy then
            for _, v in pairs(game:GetService("Workspace").Map:GetChildren()) do
                if v:IsA("Model") and v.Name == "HealthRegen" then
                    v:Destroy()
                end
            end
        end
        wait(1) 
    end
end)

spawn(function()
    while true do
        if BloodMoneyDestroy then
            for _, v in pairs(game:GetService("Workspace").Map:GetChildren()) do
                if v:IsA("Model") and v.Name == "BloodMoney" then
                    v:Destroy()
                end
            end
        end
        wait(1) 
    end
end)

spawn(function()
    while true do
        if DoublePointsDestroy then
            for _, v in pairs(game:GetService("Workspace").Map:GetChildren()) do
                if v:IsA("Model") and v.Name == "DoublePoints" then
                    v:Destroy()
                end
            end
        end
        wait(1) 
    end
end)

spawn(function()
    while true do
        if InstaKillDestroy then
            for _, v in pairs(game:GetService("Workspace").Map:GetChildren()) do
                if v:IsA("Model") and v.Name == "InstaKill" then
                    v:Destroy()
                end
            end
        end
        wait(1) 
    end
end)

spawn(function()
    while true do
        if WisteriaPoisoningDestroy then
            for _, v in pairs(game:GetService("Workspace").Map:GetChildren()) do
                if v:IsA("Model") and v.Name == "WisteriaPoisoning" then
                    v:Destroy()
                end
            end
        end
        wait(1) 
    end
end)

spawn(function()
    while true do
        if MobCamouflageDestroy then
            for _, v in pairs(game:GetService("Workspace").Map:GetChildren()) do
                if v:IsA("Model") and v.Name == "MobCamouflage" then
                    v:Destroy()
                end
            end
        end
        wait(1) 
    end
end)

--------- God Mode Tab

local GodMode = GodModeTab:AddSection({
    Name = "Universal"
})

GodMode:AddToggle({
    Name = "Universal God Mode [ALL RACE]",
    Default = false,
    Save = true,
    Flag = "Universal_GodMode",
    Callback = function(state)
        if state then
            _G.godmode2 = true
            while _G.godmode2 do
                local args = {
                    [1] = "skil_ting_asd",
                    [2] = game:GetService("Players").LocalPlayer,
                    [3] = "scythe_asteroid_reap",
                    [4] = 1
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                wait(0.5)
            end
        else
            _G.godmode2 = false
        end
    end    
})

local GodMode = GodModeTab:AddSection({
    Name = "God Mode [DEMON]"
})

GodMode:AddToggle({
    Name = "God Mode [Shockwave 50 + Demon]",
    Default = false,
    Save = true,
    Flag = "Shockwave_GodMode",
    Callback = function(state)
        if state then
            _G.godmode = true
            while _G.godmode do
                local args = {
                    [1] = "skil_ting_asd",
                    [2] = game:GetService("Players").LocalPlayer,
                    [3] = "akaza_bda_compass_needle",
                    [4] = 1
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                wait(0.1)
            end
        else
            _G.godmode = false
        end
    end    
})

GodMode:AddToggle({
    Name = "God Mode [Dream ULT + Demon]",
    Default = false,
    Save = true,
    Flag = "Dream_GodMode",
    Callback = function(state)
        if state then
            _G.DREAMgodmode = true
            while _G.DREAMgodmode do
                local args = {
                    [1] = "skil_ting_asd",
                    [2] = game:GetService("Players").LocalPlayer,
                    [3] = "dream_bda_flesh_monster",
                    [4] = 1
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                wait(0.1)
            end
        else
            _G.DREAMgodmode = false
        end
    end    
})

GodMode:AddToggle({
    Name = "God Mode [Ice ULT + Demon]",
    Default = false,
    Save = true,
    Flag = "Ice_GodMode",
    Callback = function(state)
        if state then
            _G.ICEgodmode = true
            while _G.ICEgodmode do
                local args = {
                    [1] = "skil_ting_asd",
                    [2] = game:GetService("Players").LocalPlayer,
                    [3] = "ice_demon_art_bodhisatva",
                    [4] = 1
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                wait(0.1)
            end
        else
            _G.ICEgodmode = false
        end
    end    
})

GodMode:AddToggle({
    Name = "God Mode [Blood ULT + Demon]",
    Default = false,
    Save = true,
    Flag = "Blood_GodMode",
    Callback = function(state)
        if state then
            _G.BloodGM = true
            while _G.BloodGM do
                local args = {
                    [1] = "skil_ting_asd",
                    [2] = game:GetService("Players").LocalPlayer,
                    [3] = "explosive_demon_art_blood_burst",
                    [4] = 1
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                wait(0.1)
            end
        else
            _G.BloodGM = false
        end
    end    
})

local GodMode = GodModeTab:AddSection({
    Name = "God Modes [SLAYERS/HUMAN]"
})

GodMode:AddToggle({
    Name = "God Mode [Sound 50+]",
    Default = false,
    Save = true,
    Flag = "Sound_GodMode",
    Callback = function(state)
        if state then
            _G.SoundGM = true
            while _G.SoundGM do
                local args = {
                    [1] = "skil_ting_asd",
                    [2] = game:GetService("Players").LocalPlayer,
                    [3] = "sound_breathing_smoke_screen",
                    [4] = 1
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                wait(0.1)
            end
        else
            _G.SoundGM = false
        end
    end    
})

GodMode:AddToggle({
    Name = "God Mode [Flame 32+]",
    Default = false,
    Save = true,
    Flag = "Flame_GodMode",
    Callback = function(state)
        if state then
            _G.FlameGM = true
            while _G.FlameGM do
                local args = {
                    [1] = "skil_ting_asd",
                    [2] = game:GetService("Players").LocalPlayer,
                    [3] = "flame_breathing_flaming_eruption",
                    [4] = 1
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                wait(0.1)
            end
        else
            _G.FlameGM = false
        end
    end    
})

GodMode:AddToggle({
    Name = "God Mode [Beast 40+]",
    Default = false,
    Save = true,
    Flag = "Beast_GodMode",
    Callback = function(state)
        if state then
            _G.BeastGM = true
            while _G.BeastGM do
                local args = {
                    [1] = "skil_ting_asd",
                    [2] = game:GetService("Players").LocalPlayer,
                    [3] = "Beast_breathing_devouring_slash",
                    [4] = 1
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                wait(0.5)
            end
        else
            _G.BeastGM = false
        end
    end    
})

GodMode:AddToggle({
    Name = "God Mode [Insect 28+]",
    Default = false,
    Save = true,
    Flag = "Insect_GodMode",
    Callback = function(state)
        if state then
            _G.InsectGM = true
            while _G.InsectGM do
                local args = {
                    [1] = "skil_ting_asd",
                    [2] = game:GetService("Players").LocalPlayer,
                    [3] = "insect_breathing_dance_of_the_centipede",
                    [4] = 1
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                wait(0.5)
            end
        else
            _G.InsectGM = false
        end
    end    
})

GodMode:AddToggle({
    Name = "God Mode [Wind 30+]",
    Default = false,
    Save = true,
    Flag = "Wind_GodMode",
    Callback = function(state)
        if state then
            _G.WindGM = true
            while _G.WindGM do
                local args = {
                    [1] = "skil_ting_asd",
                    [2] = game:GetService("Players").LocalPlayer,
                    [3] = "Wind_breathing_black_wind_mountain_mist",
                    [4] = 1
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                wait(0.5)
            end
        else
            _G.WindGM = false
        end
    end    
})

GodMode:AddToggle({
    Name = "God Mode [Water 30+]",
    Default = false,
    Save = true,
    Flag = "Water_GodMode",
    Callback = function(state)
        if state then
            _G.WaterGM = true
            while _G.WaterGM do
                local args = {
                    [1] = "skil_ting_asd",
                    [2] = game:GetService("Players").LocalPlayer,
                    [3] = "Water_fall_basin",
                    [4] = 1
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                wait(0.5)
            end
        else
            _G.WaterGM = false
        end
    end    
})

--------------------------------------------------------------------------------------------

--------- MISC // MISCELLANEOUS

local MiscellaneousSection = MiscTab:AddSection({
    Name = "Miscellaneous"
})

MiscellaneousSection:AddToggle({
    Name = "Infinite Stamina",
    Default = false,
    Save = true,
    Flag = "infinite_stamina",
    Callback = function(t)
        getgenv().InfStamina = t
    end    
})

MiscellaneousSection:AddToggle({
    Name = "Infinite Breathing",
    Default = false,
    Save = true,
    Flag = "infinite_breathing",
    Callback = function(t)
        getgenv().InfBreathing = t
    end    
})

MiscellaneousSection:AddToggle({
    Name = "No Drown",
    Default = false,
    Save = true,
    Flag = "no_drown",
    Callback = function(t)
        getgenv().NoDrown = t
    end    
})

MiscellaneousSection:AddToggle({
    Name = "White Screen [FPS Boost]",
    Default = false,
    Callback = function(state)
        if state then
            game:GetService("RunService"):Set3dRenderingEnabled(false)
        else
            game:GetService("RunService"):Set3dRenderingEnabled(true)
        end
    end    
})

MiscellaneousSection:AddToggle({
    Name = "Remove Materials and Shadows [FPS Boost]",
    Default = false,
    Callback = function(state)
        local Players = game:GetService("Players")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local localPlayer = Players.LocalPlayer
        ReplicatedStorage.Player_Data[localPlayer.Name].Settings.Materials.Value = not state
        ReplicatedStorage.Player_Data[localPlayer.Name].Settings.Screen_Shakes.Value = not state
        ReplicatedStorage.Player_Data[localPlayer.Name].Settings.Shadows.Value = not state
        ReplicatedStorage.Player_Data[localPlayer.Name].Settings.Weather_Effects.Value = not state
    end
})

MiscellaneousSection:AddToggle({
    Name = "Walk Speed",
    Default = false,
    Save = true,
    Flag = "walk_speed",
    Callback = function(t)
        getgenv().WalkSpeedEnabled = t
    end    
})

MiscellaneousSection:AddToggle({
    Name = "Jump Power",
    Default = false,
    Save = true,
    Flag = "jump_power",
    Callback = function(t)
        getgenv().JumpPowerEnabled = t
    end    
})

-- // INFINITE STAMINA - MISCELLANEOUS

spawn(function()
    while task.wait() do
        if getgenv().InfStamina then
            getrenv()._G.AddStamina("gpthebest", 50)
        end
    end
end)

-- // INFINITE BREATHING - MISCELLANEOUS

spawn(function()
    while task.wait() do
        if getgenv().InfBreathing then
            getrenv()._G.AddBreath("gpthebest", 50)
        end
    end
end)

-- // NO DROWN - MISCELLANEOUS

task.spawn(function()
    for i,v in next, getgc(true) do
        if type(v) == "table" and rawget(v, "swim_bar") then
            while task.wait() do
                if getgenv().NoDrown then
                    rawset(v, "swim_bar", {
                        [1] = 2,
                        [2] = 2
                    })
                end
            end
        end
    end
end)

-- // WALK SPEED - MISCELLANEOUS

spawn(function()
    while task.wait() do
        if getgenv().WalkSpeedEnabled then
            local h = GetHuman()
            local oldws = h and h.WalkSpeed
            if oldws then
                pcall(function()
                    h.WalkSpeed = getgenv().WalkSpeedValue or oldws or 16
                    while task.wait() and getgenv().WalkSpeedEnabled do
                        h.WalkSpeed = getgenv().WalkSpeedValue or oldws or 16
                    end
                end)
                h.WalkSpeed = oldws or 16
            end
        end
    end
end)

-- // JUMP POWER - MISCELLANEOUS

spawn(function()
    while task.wait() do
        if getgenv().JumpPowerEnabled then
            local h = GetHuman()
            local oldjp = h and h.JumpPower
            if oldjp then
                pcall(function()
                    h.JumpPower = getgenv().JumpPowerValue or oldjp or 50
                    while task.wait() and getgenv().JumpPowerEnabled do
                        h.JumpPower = getgenv().JumpPowerValue or oldjp or 50
                    end
                end)
                h.JumpPower = oldjp or 50
            end
        end
    end
end)

--------- SETTINGS // METHODS

local RaceSection = SettingsTab:AddSection({
    Name = "Change Race"
})

SettingsTab:AddButton({
    Name = "Become a Hybrid!",
    Callback = function()
        BeHybrid()
    end    
})

SettingsTab:AddButton({
    Name = "Become a Demon!",
    Callback = function()
        BeDemon()
    end    
})

SettingsTab:AddButton({
    Name = "Become a Slayer!",
    Callback = function()
        BeSlayer()
    end    
})

SettingsTab:AddButton({
    Name = "Become a Human!",
    Callback = function()
        BeHuman()
    end    
})

local RaceSection = SettingsTab:AddSection({
    Name = "Another Stuff"
})

SettingsTab:AddButton({
    Name = "Remove Damage Texts and Particles!",
    Callback = function()
        RemoveDMG()
    end    
})

SettingsTab:AddButton({
    Name = "Enable Chat Logs",
    Callback = function()
        EnableCHATLOGS()
    end    
})

SettingsTab:AddButton({
    Name = "Spin Demon Art (Use your Fist to check)",
    Callback = function()
        SpinDemonArt()
    end    
})

SettingsTab:AddButton({
    Name = "Title Buffs (Visual)",
    Callback = function()
        TitleBuff()
    end    
})

--------- MISC // MODES

local ModesSection = MiscTab:AddSection({
    Name = "Modes/Buffs"
})

ModesSection:AddToggle({
    Name = "Semi God Mode [Kamado]",
    Default = false,
    Callback = function(state)
        if state then
            game:GetService("ReplicatedStorage").Remotes.heal_tang123asd:FireServer(true)
        else
            game:GetService("ReplicatedStorage").Remotes.heal_tang123asd:FireServer(false)
        end
    end    
})

ModesSection:AddToggle({
    Name = "Semi God Mode [ALL RACE]",
    Default = false,
    Callback = function(state)
        if state then
            game:GetService("ReplicatedStorage").Remotes.regeneration_breathing_remote:FireServer(true)
        else
            game:GetService("ReplicatedStorage").Remotes.regeneration_breathing_remote:FireServer(false)
        end     
    end    
})

ModesSection:AddToggle({
    Name = "Rengoku Mode [Human/Slayer]",
    Default = false,
    Callback = function(state)
        if state then
            game:GetService("ReplicatedStorage").Remotes.heart_ablaze_mode_remote:FireServer(true)
        else
            game:GetService("ReplicatedStorage").Remotes.heart_ablaze_mode_remote:FireServer(false)
        end
    end    
})

ModesSection:AddToggle({
    Name = "God Speed Mode [Human/Slayer]",
    Default = false,
    Callback = function(state)
        if state then
            game:GetService("ReplicatedStorage").Remotes.thundertang123:FireServer(true)
        else
            game:GetService("ReplicatedStorage").Remotes.thundertang123:FireServer(false)
        end
    end    
})

ModesSection:AddToggle({
    Name = "War Drums Mode [All Races]",
    Default = false,
    Callback = function(Value)
        getgenv().infWD = Value
        while getgenv().infWD do 
            local args = {
                [1] = true
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("war_Drums_remote"):FireServer(unpack(args))
            wait(3) 
        end
    end    
})

ModesSection:AddToggle({
    Name = "No Sun Burn [Demon]",
    Default = true,
    Save = true,
    Flag = "no_sun_burn",
    Callback = function(state)
        if state then
            game:GetService("Players").LocalPlayer.PlayerScripts["Small_Scripts"].Gameplay["Sun_Damage"].Disabled = true
        else
            game:GetService("Players").LocalPlayer.PlayerScripts["Small_Scripts"].Gameplay["Sun_Damage"].Disabled = false
        end
    end    
})

--------------------------------------------------------------------------------------------

--------- TELEPORTS

local TeleportsSection = TeleportsTab:AddSection({
    Name = "Teleports"
})

TeleportsSection:AddButton({
    Name = "TP to Shop [Ends Game]",
    Callback = function()
        game:GetService("ReplicatedStorage").TeleportToShop:FireServer(true)
    end    
})

--------------------------------------------------------------------------------------------

--------- CREDITS // DISCORD

local CreditsSection = CreditsTab:AddSection({
    Name = "Credits"
})

local textbox = CreditsTab:AddTextbox({
    Name = "DisplayName",
    Default = "PhoenikHub",
    TextDisappear = true,
    Callback = function(value)
        game:GetService("Players").LocalPlayer.DisplayName = value
    end
})

CreditsSection:AddLabel("ImperorLegend // LUA coding kiddie")

-- // FARM METHOD

spawn(function()
    while wait() do
        pcall(function()
            SkillActive = AutoUseSkills and (FarmBoss and NearestMobs) or AutoUseSkills and (FarmQuest and NearestMobs) or AutoUseSkills and (FarmMob and NearestMobs) or AutoUseSkills and (AllBosses and NearestMobs) or AutoUseSkills and (AllBosses and NearestMobs)
            if FarmMethod == "Above" then
                FarmModes = CFrame.new(0,getgenv().Distance,0) * CFrame.Angles(math.rad(-90),0,0) 
            elseif FarmMethod == "Below" then
                FarmModes = CFrame.new(0,-getgenv().Distance,0) * CFrame.Angles(math.rad(90),0,0)
            elseif FarmMethod == "Behind" then
                FarmModes = CFrame.new(0,0,getgenv().Distance)
            elseif FarmMethod == "Front" then
                FarmModes = CFrame.new(0,0,-getgenv().Distance)
            end
            for i,v in pairs(LP.PlayerGui.MainGuis.Items.Scroll:GetChildren()) do
                Insert = true
                if v.ClassName == "Frame" and v.Name ~= "Health Elixir" and v.Name ~= "Health Regen Elixir" and v.Name ~= "Stamina Elixir" and v.Name ~= "Bandage" then
                    for i,v2 in pairs(invTable) do if v2 == v.Name then Insert = false end end
                    if Insert == true then table.insert(invTable, v.Name) end
                end
            end
        end)
    end
end)

-- // NO CLIP

spawn(function()
    game:GetService("RunService").Stepped:Connect(function()
        if getgenv().AllBosses or TPtoLocation or TPtoTrainer or getgenv().AllBosses or FarmBoss then
            for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false    
                end
                if v:IsA("Humanoid") then
                    v:ChangeState(11)
                end
            end
        end
    end)
end)

OrionLib:Init()----------------------------------------

--------- MISC // MISCELLANEOUS


	local MiscellaneousSection = MiscTab:AddSection({
	Name = "Miscellaneous"
	})

	MiscellaneousSection:AddToggle({
		Name = "Infinite Stamina",
		Default = false,
		Save = true,
		Flag = "infinite_stamina",
		Callback = function(t)
			getgenv().InfStamina = t
		end    
	})

	MiscellaneousSection:AddToggle({
		Name = "Infinite Breathing",
		Default = false,
		Save = true,
		Flag = "infinite_breathing",
		Callback = function(t)
			getgenv().InfBreathing = t
		end    
	})

	MiscellaneousSection:AddToggle({
		Name = "No Drown",
		Default = false,
		Save = true,
		Flag = "no_drown",
		Callback = function(t)
			getgenv().NoDrown = t
		end    
	})

	MiscellaneousSection:AddToggle({
		Name = "White Screen [FPS Boost]",
		Default = false,
		Callback = function(state)
			if state then
                    game:GetService("RunService"):Set3dRenderingEnabled(false)
                else
                    game:GetService("RunService"):Set3dRenderingEnabled(true)
				end
		end    
	})

MiscellaneousSection:AddToggle({
Name = "Remove Materials and Shadows [FPS Boost]",
Default = false,
	Callback = function(state)
		local Players = game:GetService("Players")
		local ReplicatedStorage = game:GetService("ReplicatedStorage")
		local localPlayer = Players.LocalPlayer
    	ReplicatedStorage.Player_Data[localPlayer.Name].Settings.Materials.Value = not state
    	ReplicatedStorage.Player_Data[localPlayer.Name].Settings.Screen_Shakes.Value = not state
    	ReplicatedStorage.Player_Data[localPlayer.Name].Settings.Shadows.Value = not state
   		 ReplicatedStorage.Player_Data[localPlayer.Name].Settings.Weather_Effects.Value = not state
	end
})

	MiscellaneousSection:AddToggle({
		Name = "Walk Speed",
		Default = false,
		Save = true,
		Flag = "walk_speed",
		Callback = function(t)
			getgenv().WalkSpeedEnabled = t
		end    
	})

	MiscellaneousSection:AddToggle({
		Name = "Jump Power",
		Default = false,
		Save = true,
		Flag = "jump_power",
		Callback = function(t)
			getgenv().JumpPowerEnabled = t
		end    
	})

-- // INFINITE STAMINA - MISCELLANEOUS


	spawn(function()
    while task.wait() do
        if getgenv().InfStamina then
            getrenv()._G.AddStamina("gpthebest", 50)
        end
    end
	end)

-- // INFINITE BREATHING - MISCELLANEOUS


	spawn(function()
    while task.wait() do
        if getgenv().InfBreathing then
            getrenv()._G.AddBreath("gpthebest", 50)
        end
    end
	end)	

-- // NO DROWN - MISCELLANEOUS


	task.spawn(function()
		for i,v in next, getgc(true) do
			if type(v) == "table" and rawget(v, "swim_bar") then
				while task.wait() do
					if getgenv().NoDrown then
						rawset(v, "swim_bar", {
							[1] = 2,
							[2] = 2
						})
					end
				end
			end
		end
	end)
	
-- // WALK SPEED - MISCELLANEOUS


	spawn(function()
		while task.wait() do
			if getgenv().WalkSpeedEnabled then
				local h = GetHuman()
				local oldws = h and h.WalkSpeed
				if oldws then
					pcall(function()
						h.WalkSpeed = getgenv().WalkSpeedValue or oldws or 16
						while task.wait() and getgenv().WalkSpeedEnabled do
							h.WalkSpeed = getgenv().WalkSpeedValue or oldws or 16
						end
					end)
					h.WalkSpeed = oldws or 16
				end
			end
		end
	end)

-- // JUMP POWER - MISCELLANEOUS


	spawn(function()
		while task.wait() do
			if getgenv().JumpPowerEnabled then
				local h = GetHuman()
				local oldjp = h and h.JumpPower
				if oldjp then
					pcall(function()
						h.JumpPower = getgenv().JumpPowerValue or oldjp or 50
						while task.wait() and getgenv().JumpPowerEnabled do
							h.JumpPower = getgenv().JumpPowerValue or oldjp or 50
						end
					end)
					h.JumpPower = oldjp or 50
				end
			end
		end
	end)

--------- SETTINGS // METHODS


local RaceSection = SettingsTab:AddSection({
    Name = "Change Race"
})
SettingsTab:AddButton({
        Name = "Become a Hybrid!",
        Callback = function()
            BeHybrid()
          end    
    })

    SettingsTab:AddButton({
        Name = "Become a Demon!",
        Callback = function()
            BeDemon()
          end    
    })

    SettingsTab:AddButton({
        Name = "Become a Slayer!",
        Callback = function()
            BeSlayer()
          end    
    })

    SettingsTab:AddButton({
        Name = "Become a Human!",
        Callback = function()
            BeHuman()
          end    
    })

local RaceSection = SettingsTab:AddSection({
        Name = "Another Stuff"
    })

    SettingsTab:AddButton({
        Name = "Remove Damage Texts and Particles!",
        Callback = function()
            RemoveDMG()
          end    
    })

    SettingsTab:AddButton({
        Name = "Enable Chat Logs",
        Callback = function()
            EnableCHATLOGS()
          end    
    })

    SettingsTab:AddButton({
        Name = "Spin Demon Art (Use your Fist to check)",
        Callback = function()
            SpinDemonArt()
          end    
    })
    
    SettingsTab:AddButton({
        Name = "Title Buffs (Visual)",
        Callback = function()
            TitleBuff()
          end    
    })

--------- MISC // MODES


	
local ModesSection = MiscTab:AddSection({
    Name = "Modes/Buffs"
    })

    ModesSection:AddToggle({
        Name = "Semi God Mode [Kamado]",
        Default = false,
        Callback = function(state)
            if state then
                game:GetService("ReplicatedStorage").Remotes.heal_tang123asd:FireServer(true)
            else
                game:GetService("ReplicatedStorage").Remotes.heal_tang123asd:FireServer(false)
            end
        end    
    })

    ModesSection:AddToggle({
        Name = "Semi God Mode [ALL RACE]",
        Default = false,
        Callback = function(state)
            if state then
                game:GetService("ReplicatedStorage").Remotes.regeneration_breathing_remote:FireServer(true)
            else
                game:GetService("ReplicatedStorage").Remotes.regeneration_breathing_remote:FireServer(false)
            end     
        end    
    })

    ModesSection:AddToggle({
        Name = "Rengoku Mode [Human/Slayer]",
        Default = false,
        Callback = function(state)
            if state then
                game:GetService("ReplicatedStorage").Remotes.heart_ablaze_mode_remote:FireServer(true)
            else
                game:GetService("ReplicatedStorage").Remotes.heart_ablaze_mode_remote:FireServer(false)
            end
        end    
    })

    ModesSection:AddToggle({
        Name = "God Speed Mode [Human/Slayer]",
        Default = false,
        Callback = function(state)
            if state then
                game:GetService("ReplicatedStorage").Remotes.thundertang123:FireServer(true)
            else
                game:GetService("ReplicatedStorage").Remotes.thundertang123:FireServer(false)
            end
        end    
    })

    ModesSection:AddToggle({
        Name = "God Speed Mode [Human/Slayer]",
        Default = false,
        Callback = function(state)
            if state then
                game:GetService("ReplicatedStorage").Remotes.thundertang123:FireServer(true)
            else
                game:GetService("ReplicatedStorage").Remotes.thundertang123:FireServer(false)
            end
        end    
    })

    ModesSection:AddToggle({
        Name = "War Drums Mode [All Races]",
        Default = false,
        Callback = function(Value)
            getgenv().infWD = Value
    while getgenv().infWD do 
    local args = {
    [1] = true
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("war_Drums_remote"):FireServer(unpack(args))
    wait(3) end
        end    
    })

    ModesSection:AddToggle({
        Name = "No Sun Burn [Demon]",
        Default = true,
        Save = true,
        Flag = "no_sun_burn",
        Callback = function(state)
            if state then
                game:GetService("Players").LocalPlayer.PlayerScripts["Small_Scripts"].Gameplay["Sun_Damage"].Disabled = true
            else
                game:GetService("Players").LocalPlayer.PlayerScripts["Small_Scripts"].Gameplay["Sun_Damage"].Disabled = false
            end
        end    
    })

--------------------------------------------------------------------------------------------
		
--------- TELEPORTS

		
		local TeleportsSection = TeleportsTab:AddSection({
					Name = "Teleports"
					})
		
					TeleportsSection:AddButton({
						Name = "TP to Shop [Ends Game]",
						Callback = function()
							game:GetService("ReplicatedStorage").TeleportToShop:FireServer(true)
						  end    
					})	

--------------------------------------------------------------------------------------------

--------- CREDITS // DISCORD


local CreditsSection = CreditsTab:AddSection({
    Name = "Credits"
    })

local textbox = CreditsTab:AddTextbox({
    Name = "DisplayName",
    Default = "PhoenikHub",
    TextDisappear = true,
    Callback = function(value)
        game:GetService("Players").LocalPlayer.DisplayName = value
    end
})

    CreditsSection:AddLabel("ImperorLegend // LUA coding kiddie")

-- // FARM METHOD

spawn(function()
    while wait() do
        pcall(function()
            SkillActive = AutoUseSkills and (FarmBoss and NearestMobs) or AutoUseSkills and (FarmQuest and NearestMobs) or AutoUseSkills and (FarmMob and NearestMobs) or AutoUseSkills and (AllBosses and NearestMobs) or AutoUseSkills and (AllBosses and NearestMobs)
            if FarmMethod == "Above" then
                FarmModes = CFrame.new(0,getgenv().Distance,0) * CFrame.Angles(math.rad(-90),0,0) 
            elseif FarmMethod == "Below" then
                FarmModes = CFrame.new(0,-getgenv().Distance,0) * CFrame.Angles(math.rad(90),0,0)
            elseif FarmMethod == "Behind" then
                FarmModes = CFrame.new(0,0,getgenv().Distance)
            elseif FarmMethod == "Front" then
                FarmModes = CFrame.new(0,0,-getgenv().Distance)
            end
            for i,v in pairs(LP.PlayerGui.MainGuis.Items.Scroll:GetChildren()) do
                Insert = true
                if v.ClassName == "Frame" and v.Name ~= "Health Elixir" and v.Name ~= "Health Regen Elixir" and v.Name ~= "Stamina Elixir" and v.Name ~= "Bandage" then
                    for i,v2 in pairs(invTable) do if v2 == v.Name then Insert = false end end
                    if Insert == true then table.insert(invTable, v.Name) end
                end
            end
        end)
    end
	end)

-- // NO CLIP


spawn(function()
    game:GetService("RunService").Stepped:Connect(function()
        if getgenv().AllBosses or TPtoLocation or TPtoTrainer or getgenv().AllBosses or FarmBoss then
            for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false    
                end
                if v:IsA("Humanoid") then
                    v:ChangeState(11)
                end
            end
        end
    end)
end)
OrionLib:Init())