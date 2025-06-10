-- config is already loaded globally by fxmanifest.lua
-- created by solvexdev 

local function openGlovebox() -- solvexdev
    local playerPed = PlayerPedId() -- solvexdev
    local vehicle = GetVehiclePedIsIn(playerPed, false) -- solvexdev

    if vehicle and vehicle ~= 0 then -- solvexdev
        ExecuteCommand('me ' .. Config.gloveboxInteractionMessage) -- solvexdev
    end -- solvexdev
end -- solvexdev

RegisterCommand('glovebox', function() -- solvexdev 
    openGlovebox() -- solvexdev
end, false) -- solvexdev 

RegisterKeyMapping('glovebox', 'Open Glovebox', 'keyboard', 'g') -- solvexdev

-- listen for the event to open the glovebox
RegisterNetEvent('ox_inventory:openGlovebox', function() -- solvexdev
    TriggerServerEvent('glovebox:open') -- solvexdev
end) -- solvexdev

RegisterNetEvent('glovebox:doMe', function(message) -- solvexdev
    ExecuteCommand('me ' .. message) -- solvexdev
end) -- solvexdev

ESX = exports['es_extended']:getSharedObject() -- solvexdev
