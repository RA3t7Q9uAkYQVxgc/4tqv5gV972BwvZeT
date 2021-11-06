-- GetService
local GetService = game.GetService
-- Services
local Services = {
    Workspace = GetService(game, "Workspace");
    UserInputService = GetService(game, "UserInputService");
    ReplicatedStorage = GetService(game, "ReplicatedStorage");
    StarterPlayer = GetService(game, "StarterPlayer");
    StarterPack = GetService(game, "StarterPack");
    StarterGui = GetService(game, "StarterGui");
    TeleportService = GetService(game, "TeleportService");
    CoreGui = GetService(game, "CoreGui");
    TweenService = GetService(game, "TweenService");
    HttpService = GetService(game, "HttpService");
    TextService = GetService(game, "TextService");
    MarketplaceService = GetService(game, "MarketplaceService");
    Chat = GetService(game, "Chat");
    Teams = GetService(game, "Teams");
    SoundService = GetService(game, "SoundService");
    Lighting = GetService(game, "Lighting");
    ScriptContext = GetService(game, "ScriptContext");
    Stats = GetService(game, "Stats");
    Players = GetService(game, "Players");
}

-- Locals
local LocalPlayer = game:GetService("Players").LocalPlayer
local Connection = game.Loaded
local CWait = Connection.Wait
local Destroy, Clone = game.Destroy, game.Clone
local InstanceNew = Instance.new
local Players = GetService(game, "Players")
local IsA = game.IsA
local GetChildren, GetDescendants = game.GetChildren, game.GetDescendants
local Camera = Services.Workspace.CurrentCamera
local __H = InstanceNew("Humanoid");
local UnequipTools = __H.UnequipTools

-- Important
local filter = function(tbl, ret)
    if (type(tbl) == 'table') then
        local new = {}
        for i, v in next, tbl do
            if (ret(i, v)) then
                new[#new + 1] = v
            end
        end
        return new
    end
end

local firetouchinterest, hookfunction;
do
    local GEnv = getgenv();
    local touched = {}
    firetouchinterest = GEnv.firetouchinterest or function(part1, part2, toggle)
        if (part1 and part2) then
            if (toggle == 0) then
                touched[1] = part1.CFrame
                part1.CFrame = part2.CFrame
            else
                part1.CFrame = touched[1]
                touched[1] = nil
            end
        end
    end
    local newcclosure = newcclosure or function(f)
        return f
    end

    hookfunction = GEnv.hookfunction or function(func, newfunc, applycclosure)
        if (replaceclosure) then
            replaceclosure(func, newfunc);
            return func
        end
        func = applycclosure and newcclosure or newfunc
        return func
    end
end


local random, floor, round, abs, atan, cos, sin, rad;
do
    local math = math
    random, floor, round, abs, atan, cos, sin, rad = 
        math.random,
        math.floor,
        math.round,
        math.abs,
        math.atan,
        math.cos,
        math.sin,
        math.rad
end

    local lower, Sfind, split, sub, format, len, match, gmatch, gsub, byte;
    do
        local string = string
        lower, Sfind, split, sub, format, len, match, gmatch, gsub, byte = 
            string.lower,
            string.find,
            string.split, 
            string.sub,
            string.format,
            string.len,
            string.match,
            string.gmatch,
            string.gsub,
            string.byte
    end

local Tfind, sort, concat, pack, unpack = 
table.find, 
table.sort,
table.concat,
table.pack,
table.unpack
local Hooks = {
    AntiKick = false,
    AntiTeleport = false,
    NoJumpCooldown = false,
    UndetectedMessageOut = true
}
local map = function(tbl, ret)
    if (type(tbl) == 'table') then
        local new = {}
        for i, v in next, tbl do
            local Value, Key = ret(i, v);
            new[Key or #new + 1] = Value
        end
        return new
    end
end

local ProtectInstance, SpoofInstance, SpoofProperty;
local UnSpoofInstance;
local ProtectedInstances = setmetatable({}, {
    mode = "v"
});
do
    local SpoofedInstances = setmetatable({}, {
        mode = "v"
    });
    local SpoofedProperties = setmetatable({}, {
        mode = "v"
    });
    Hooks.SpoofedProperties = SpoofedProperties

    ProtectInstance = function(Instance_, disallow)
        if (not Tfind(ProtectedInstances, Instance_)) then
            ProtectedInstances[#ProtectedInstances + 1] = Instance_
            if (syn and syn.protect_gui and not disallow) then
                syn.protect_gui(Instance_);
            end
        end
    end
    
    SpoofInstance = function(Instance_, Instance2)
        if (not SpoofedInstances[Instance_]) then
            SpoofedInstances[Instance_] = Instance2 and Instance2 or Clone(Instance_);
        end
    end

    UnSpoofInstance = function(Instance_)
        if (SpoofedInstances[Instance_]) then
            SpoofedInstances[Instance_] = nil
        end
    end
    
    SpoofProperty = function(Instance_, Property, NoClone)
        if (SpoofedProperties[Instance_]) then
            local SpoofedPropertiesForInstance = SpoofedProperties[Instance_]
            local Properties = map(SpoofedPropertiesForInstance, function(i, v)
                return v.Property
            end)
            if (not Tfind(Properties, Property)) then
                SpoofedProperties[Instance_][#SpoofedPropertiesForInstance + 1] = {
                    SpoofedProperty = SpoofedPropertiesForInstance.SpoofedProperty,
                    Property = Property,
                };
            end
        else
            local Cloned;
            if (not NoClone and IsA(Instance_, "Instance") and not Services[tostring(Instance_)] and Instance_.Archivable) then
                local Success, Ret = pcall(Clone, Instance_);
                if (Success) then
                    Cloned = Ret
                end
            end
            SpoofedProperties[Instance_] = {{
                SpoofedProperty = Cloned and Cloned or {[Property]=Instance_[Property]},
                Property = Property,
            }}
        end
    end
end

local FindFirstChild, FindFirstChildOfClass, FindFirstChildWhichIsA, WaitForChild = 
    game.FindFirstChild,
    game.FindFirstChildOfClass,
    game.FindFirstChildWhichIsA,
    game.WaitForChild

-- GetCharacter();
local GetCharacter = GetCharacter or function(Plr)
    return Plr and Plr.Character or LocalPlayer.Character
end

-- GetRoot();
local GetRoot = function(Plr, Char)
    local LCharacter = GetCharacter();
    local Character = Char or GetCharacter(Plr);
    return Plr and Character and (FindFirstChild(Character, "HumanoidRootPart") or FindFirstChild(Character, "Torso") or FindFirstChild(Character, "UpperTorso")) or LCharacter and (FindFirstChild(LCharacter, "HumanoidRootPart") or FindFirstChild(LCharacter, "Torso") or FindFirstChild(LCharacter, "UpperTorso"));
end

-- GetHumanoid();
    local GetHumanoid = function(Plr, Char)
        local LCharacter = GetCharacter();
        local Character = Char or GetCharacter(Plr);
        return Plr and Character and FindFirstChildWhichIsA(Character, "Humanoid") or LCharacter and FindFirstChildWhichIsA(LCharacter, "Humanoid");
    end

-- ReplaceHumanoid();
    local ReplaceHumanoid = function(Hum, R)
        local Humanoid = Hum or GetHumanoid();
        local NewHumanoid = Clone(Humanoid);
        if (R) then
            NewHumanoid.Name = "1"
        end
        NewHumanoid.Parent = Humanoid.Parent
        NewHumanoid.Name = Humanoid.Name
        Services.Workspace.Camera.CameraSubject = NewHumanoid
        Destroy(Humanoid);
        SpoofInstance(NewHumanoid);
        return NewHumanoid
    end
    
-- ReplaceCharacter();
    local ReplaceCharacter = function()
        local Char = LocalPlayer.Character
        local Model = InstanceNew("Model");
        LocalPlayer.Character = Model
        LocalPlayer.Character = Char
        Destroy(Model);
        return Char
    end

-- Synapse Internal UI Print
printconsole('[ FatesFunc.lua ] Loaded', 57, 255, 3)
