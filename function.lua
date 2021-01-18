webhookURL = 'webhook url goes here' -- Follow the instructions in the readme file if you don't know what this is!
name = 'name for the webhook'
message = 'Your message here' 
title = 'new command!'

footer = 'https://github.com/Gravxd/FiveM-To-Discord'
function sendToDisc(title, message, footer)
	local embed = {}
	embed = {
		{
			["color"] = 65280, -- GREEN = 65280 --- RED = 16711680
			["title"] = "**".. title .."**",
			["description"] = "" .. message ..  "",
			["footer"] = {
				["text"] = footer,
			},
		}
	}
	PerformHttpRequest(webhookURL, 
	function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })
end 
