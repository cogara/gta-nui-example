-- No NUI messages in the "simplescript" files at all. It's all handled by commands to the "hud" script

-- determine which HUD location to use with this simple command
-- /display [location] [message]
RegisterCommand('display',function(source, args)
    local text = ''
    
    -- pulling off the first argument (location) and saving it
    local location = table.remove(args,1)

    -- joining the rest of the arguments into a string as the message
    text = table.concat(args, " ")

    if location == 'middle' then
        TriggerEvent('hud:messageMiddle',text)
    elseif location == 'right' then
        TriggerEvent('hud:messageRight',text)
    elseif location == 'server' then
        -- this would normally be triggered during some arbitrary script on the server
        -- so let's send it to the server and trigger the HUD from there.
        TriggerServerEvent('simplescript:messageFromServer',text)
    else
        TriggerEvent('hud:messageMiddle','Must declare location of text')
    end
end)