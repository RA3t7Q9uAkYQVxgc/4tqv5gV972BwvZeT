print("Spin Power: ".._G.spinpow)
print("Message: '".._G.msg.."'")
print("Teleport Wait: ".._G.tpwait)
print("Serverhop Wait: ".._G.shopwait)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(_G.msg.."","All")
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(_G.msg.."","All")
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(_G.msg.."","All")
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(_G.msg.."","All")
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(_G.msg.."","All")
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(_G.msg.."","All")

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(_G.msg.."","All")
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(_G.msg.."","All")
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(_G.msg.."","All")
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(_G.msg.."","All")


--Notification Local
local notifsEnabled = true

local function notify(title,text,duritation)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title=title;
        Text=text;
        Duritation=duritation;
    })
    end
--Notifications
notify("Spin Power",_G.spinpow.."",5)
notify("Spamming",_G.msg.."",5)
notify("Credits","luci#0004 | e7e578uwgxhy7pguluci",5)




--Spin
power = _G.spinpow

game:GetService('RunService').Stepped:connect(function()
game.Players.LocalPlayer.Character.Head.CanCollide = false
game.Players.LocalPlayer.Character.Torso.CanCollide = false
game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
end)

wait(.1)
local nigger = Instance.new("BodyThrust")
nigger.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
nigger.Force = Vector3.new(power,0,power)
nigger.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position




--Teleport to All Players
local player = game.Players.LocalPlayer
local timewait = _G.tpwait 
for i,v in pairs(game.Players:GetChildren()) do
   if v.Name ~= player.Name then
       pcall(function()
              player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
       end)
   end
   wait(timewait)
end




--Noclip
nam = game.Players.LocalPlayer.Name

game:GetService('RunService').Stepped:connect(function()
for a, b in pairs(game.Workspace:GetChildren()) do
if b.Name == nam then
for i, v in pairs(game.Workspace[nam]:GetChildren()) do
if v:IsA("BasePart") then
v.CanCollide = false

end
end
end
end
end)

Workspace[nam].Head.Changed:connect(function()
for a, b in pairs(game.Workspace:GetChildren()) do
if b.Name == nam then
for i, v in pairs(game.Workspace[nam]:GetChildren()) do
if v:IsA("BasePart") then
v.CanCollide = false

end
end
end
end
end)

wait(_G.shopwait)
local x = {}
    for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
        if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
            x[#x + 1] = v.id
        end
    end
    if #x > 0 then
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
    else
        return notify("Serverhop","Couldn't find a server.",5)
    end
