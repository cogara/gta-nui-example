-- The only function of this script is to handle the HUD messages
RegisterNetEvent('hud:messageMiddle')
AddEventHandler('hud:messageMiddle',function(text)
    SendNUIMessage({
        type = 'MESSAGE_MIDDLE',
        message = text
    })
end)

RegisterNetEvent('hud:messageRight')
AddEventHandler('hud:messageRight',function(text)
    SendNUIMessage({
        type = 'MESSAGE_RIGHT',
        message = text
    })
end)
RegisterNetEvent('hud:messageServer')
AddEventHandler('hud:messageServer',function(text)
    SendNUIMessage({
        type = 'MESSAGE_SERVER',
        message = text
    })
end)

