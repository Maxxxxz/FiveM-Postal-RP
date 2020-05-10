-- Postal-RP Server
--[[
    Michael Cooper <mc454916@ohio.edu>
    Postal RP server script
    Recieves a message to start an event to post a message as [Postal]
    May 9, 2020
]]

RegisterNetEvent("onlineOrderMsg")
RegisterNetEvent("postalMsg")

-- The event handler function follows after registering the event first.
AddEventHandler("postalMsg", function(src, content)
	print(content)
	c = src .. ": " .. content
	sendPostalMsg(c)
end)

function sendPostalMsg(content)	-- Maybe add location?
    TriggerClientEvent("chat:addMessage", -1, {
		color = {0, 0, 150},
		multiline = true,
		args = {"[Postal Service]", content}
	})
end

AddEventHandler("onlineOrderMsg", function(src, content)
	print(content)
	c = src .. " ordered: " .. content
	sendOnlineOrderMsg(c)
end)

function sendOnlineOrderMsg(content)
    TriggerClientEvent("chat:addMessage", -1, {
		color = {0, 0, 150},
		multiline = true,
		args = {"[Online Order]", content}
	})
end