RegisterCommand('charid', function()
    local charId = nil

    if ESX then
        local xPlayer = ESX.GetPlayerData()
        if xPlayer then
            charId = xPlayer.identifier
        end

        if charId == nil then
            charId = exports['esx_addonaccount']:GetCharId()
        end

        if charId then
            -- Send the character ID to the NUI (clipboard)
            SendNUIMessage({
                type = 'clipboard',
                data = tostring(charId)
            })

            TriggerEvent('ox_lib:notify', {
                title = 'Character ID',
                description = 'Character ID copied: ' .. tostring(charId),
                type = 'success',
                duration = 5000
            })
        else
            TriggerEvent('ox_lib:notify', {
                title = 'Error',
                description = 'Failed to retrieve character ID!',
                type = 'error',
                duration = 5000
            })
        end
    end
end)
