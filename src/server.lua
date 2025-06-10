print("^2Solvex.Dev^0 - Glovebox script loaded.") -- solvexdev

ESX = exports['es_extended']:getSharedObject() -- solvexdev

-- Load config
Config = {} -- solvexdev
Config.gloveboxInteractionMessage = "Opens Glovebox" -- solvexdev

RegisterNetEvent('glovebox:open', function() -- solvexdev
    local src = source -- solvexdev
    local xPlayer = ESX.GetPlayerFromId(src) -- solvexdev

    if xPlayer then -- solvexdev
        TriggerClientEvent('glovebox:doMe', src, Config.gloveboxInteractionMessage) -- solvexdev
    end -- solvexdev
end)
