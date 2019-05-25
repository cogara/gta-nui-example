RegisterServerEvent('simplescript:messageFromServer')
AddEventHandler('simplescript:messageFromServer',function(text)
    -- adding 'Server: ' to text to illustrate it's added and triggered from server
    local t = 'Server: ' .. text
    -- Params: client event, display for player (-1 triggers to all players), text to display
    -- will trigger the hud for all clients in the middle hud location
    TriggerClientEvent('hud:messageServer', -1, t)
end)
