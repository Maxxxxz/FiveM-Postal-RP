-- Postal-RP Client
--[[
    Michael Cooper <mc454916@ohio.edu>
    Postal RP client script
    Starts a server event to post a message as [Postal]
    May 9, 2020
]]

RegisterCommand("order", function(src, arguments)
    TriggerServerEvent("onlineOrderMsg", GetPlayerName(PlayerId()),
    (table.concat(arguments, " ")))
end, false)

RegisterCommand("postal", function(src, arguments)
    TriggerServerEvent("postalMsg", GetPlayerName(PlayerId()),
    (table.concat(arguments, " ")))
end, false)