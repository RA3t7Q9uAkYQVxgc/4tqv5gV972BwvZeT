local LocalPlayer = game:GetService("Players").LocalPlayer
_G.prefix = "."

local Webhook = "https://discord.com/api/webhooks/894365568478642238/yKI6K1uxkIaMecnHb889BBoasQII5ENQXmPP6xn-zTkdf6FJ4nZRzvszNxNxiW9wJ465"

--Other Locals

local Place = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)

--Joined
joinedchat = {
    ["embeds"] = {{
        ["author"] = {
            ["name"] = LocalPlayer.DisplayName.. " (@"..LocalPlayer.Name..")",
            ["icon_url"] = "https://www.roblox.com/headshot-thumbnail/image?userId="..LocalPlayer.UserId.."&width=150&height=150&format=png",
        },
    ["color"] = fff,
    ["description"] = "Has Joined The Chat",
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

