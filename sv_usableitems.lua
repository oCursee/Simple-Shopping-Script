ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



ESX.RegisterUsableItem('fruitypebbles', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getInventoryItem('gallonofmilk').count >= 1 then 
        xPlayer.removeInventoryItem('fruitypebbles', 1)
        xPlayer.removeInventoryItem('gallonofmilk', 1)
        xPlayer.addInventoryItem('bowlofcereal', 5)      
      TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You begin to pour some cereal.'} )
      TriggerClientEvent('curse-pour', source)
      print('has item')
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Aye Dumbass, try getting some milk.'} )
    end
end)

ESX.RegisterUsableItem('bowlofcereal', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
        xPlayer.removeInventoryItem('bowlofcereal', 1)
        TriggerClientEvent('esx_status:add', source, 'hunger', 250000)
	    TriggerClientEvent('esx_basicneeds:onEat', source)
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You ate some cereal'} )
end)

ESX.RegisterUsableItem('tylenol', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
        xPlayer.removeInventoryItem('tylenol', 1)
        TriggerClientEvent('curse-removestress', source)
end)