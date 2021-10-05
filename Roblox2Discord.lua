--[[

loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/SonOfXhango/2w4fhhybn5y46bzz_Lua/main/Roblox2Discord.lua"))()

]]

-- Time functions


local function getTime()
    local date = os.date("*t")
    return ("%02d:%02d"):format(((date.hour % 24) - 1) % 12 + 1, date.min)
end


--Start
local LocalPlayer = game:GetService("Players").LocalPlayer
_G.prefix = "."

local Webhook = "https://discord.com/api/webhooks/894365568478642238/yKI6K1uxkIaMecnHb889BBoasQII5ENQXmPP6xn-zTkdf6FJ4nZRzvszNxNxiW9wJ465"

--Other Locals

local Place = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)

-- [Joined Chat]
joinedchat = {
    ["embeds"] = {{
        ["author"] = {
            ["name"] = LocalPlayer.DisplayName.. " (@"..LocalPlayer.Name..")",
            ["icon_url"] = "https://www.roblox.com/headshot-thumbnail/image?userId="..LocalPlayer.UserId.."&width=150&height=150&format=png",
        },
    ["color"] = fff,
    ["description"] = "Has Joined The Chat",
    ["footer"] = {
        ["text"] = "Joined  •  "..getTime()
      },
    ["fields"] = {
        {
            ['name'] = "`UserID`",
            ["value"] = LocalPlayer.UserId,
            ['inline'] = true
        },
        {
            ['name'] = "`Game`",
            ["value"] = Place.Name,
            ['inline'] = true
        },
    }}}}
    local response = syn.request(
        {
        Url = Webhook,
        Method = "POST",
        Headers = {
        ["Content-Type"] = "application/json"
        },
        Body = game:GetService("HttpService"):JSONEncode(joinedchat)
        }
        )

-- [Left Chat]
local plrs = game:GetService("Players")
local me = plrs.LocalPlayer
plrs.PlayerRemoving:Connect(function(guywholeft)
if guywholeft == me then
    leftchat = {
        ["embeds"] = {{
            ["author"] = {
                ["name"] = LocalPlayer.DisplayName.. " (@"..LocalPlayer.Name..")",
                ["icon_url"] = "https://www.roblox.com/headshot-thumbnail/image?userId="..LocalPlayer.UserId.."&width=150&height=150&format=png",
            },
        ["color"] = fff,
        ["description"] = "Has Left The Chat",
        ["footer"] = {
            ["text"] = "Left  •  "..getTime()
          },
        ["fields"] = {
            {
                ['name'] = "`UserID`",
                ["value"] = LocalPlayer.UserId,
                ['inline'] = true
            },
            {
                ['name'] = "`Game`",
                ["value"] = Place.Name,
                ['inline'] = true
            },
        }}}}
        local response = syn.request(
            {
            Url = Webhook,
            Method = "POST",
            Headers = {
            ["Content-Type"] = "application/json"
            },
            Body = game:GetService("HttpService"):JSONEncode(leftchat)
            }
            )
end
end)

--Connect
LocalPlayer.Chatted:connect(function(cmd) 
    if cmd:sub(1,1):lower() == _G.prefix.."" then
        messageWebhook = cmd:sub(2)
        local args = cmd:split(" ")

msg = {
    ["embeds"] = {{
        ["author"] = {
			["name"] = LocalPlayer.DisplayName.. " (@"..LocalPlayer.Name..")",
			["icon_url"] = "https://www.roblox.com/headshot-thumbnail/image?userId="..LocalPlayer.UserId.."&width=150&height=150&format=png",
		},
    ["color"] = fff,
    ["description"] = messageWebhook,
    ["footer"] = {
        ["text"] = "Message Sent  •  "..getTime()
      },
    
    }}}

    local response = syn.request(
    {
    Url = Webhook,
    Method = "POST",
    Headers = {
    ["Content-Type"] = "application/json"
    },
    Body = game:GetService("HttpService"):JSONEncode(msg)
    }
    )

end
end)

