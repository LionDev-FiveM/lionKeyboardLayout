RegisterCommand("kl", function(source, args, rawCommand) --Here you cann edit the Command / kl is the command. edit this to your command
    TriggerEvent('zv_kl:showklUI')
end)

RegisterNetEvent("zv_kl:showklUI", function()
    if Config.MenuLeft then
        SendNUIMessage({action = "showleft"})
    else
        SendNUIMessage({action = "show"})
    end
    SetNuiFocus(true, true)
end)

RegisterNetEvent("zv_kl:hideklUI", function()
    if Config.MenuLeft then
        SendNUIMessage({action = "hideleft"})
    else
        SendNUIMessage({action = "hide"})
    end
    SetNuiFocus(false, false)
end)

RegisterNUICallback("close", function()
    if Config.MenuLeft then
        SendNUIMessage({action = "hideleft"})
    else
        SendNUIMessage({action = "hide"})
    end
    SetNuiFocus(false, false)
end)

RegisterNUICallback("focus", function()
    SetNuiFocus(false, false)
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if Config.KeyControl then
            if IsControlJustReleased(0, Config.Key) then
                TriggerEvent('zv_kl:showklUI')
            end
        end
    end
end)