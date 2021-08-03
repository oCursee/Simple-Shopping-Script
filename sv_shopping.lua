ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



RegisterNetEvent('grabsoda')
AddEventHandler('grabsoda', function()
    local xPlayer = ESX.GetPlayerFromId(source)
  xPlayer.addInventoryItem('unpurchasedsprite', 1)
end)

RegisterNetEvent('grabbun')
AddEventHandler('grabbun', function()
    local xPlayer = ESX.GetPlayerFromId(source)
  xPlayer.addInventoryItem('unpurchasedhoneybun', 1)
end)

RegisterNetEvent('grabbread')
AddEventHandler('grabbread', function()
    local xPlayer = ESX.GetPlayerFromId(source)
  xPlayer.addInventoryItem('unpurchasedbread', 1)
end)

RegisterNetEvent('grabmilk')
AddEventHandler('grabmilk', function()
    local xPlayer = ESX.GetPlayerFromId(source)
  xPlayer.addInventoryItem('unpurchasedgallonofmilk', 1)
end)

RegisterNetEvent('grabtylenol')
AddEventHandler('grabtylenol', function()
    local xPlayer = ESX.GetPlayerFromId(source)
  xPlayer.addInventoryItem('unpurchasedtylenol', 1)
end)

RegisterNetEvent('grabcereal')
AddEventHandler('grabcereal', function()
    local xPlayer = ESX.GetPlayerFromId(source)
  xPlayer.addInventoryItem('unpurchasedcereal', 1)
end)


RegisterNetEvent('checkout1')
AddEventHandler('checkout1', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getInventoryItem('unpurchasedsprite').count >= 1 then
        xPlayer.removeInventoryItem('unpurchasedsprite', 1) 
        xPlayer.addInventoryItem('sprite', 1)
        xPlayer.removeMoney('25')
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You have purchased 1 Sprite for $25.'} )
  --  else
   --     TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'What are you trying to buy??'} )
    end
end)


RegisterNetEvent('checkout2')
AddEventHandler('checkout2', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getInventoryItem('unpurchasedhoneybun').count >= 1 then 
        xPlayer.removeInventoryItem('unpurchasedhoneybun', 1)
        xPlayer.addInventoryItem('honeybun', 1)
        xPlayer.removeMoney('50')
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You have purchased 1 HoneyBun for $50.'} )
 --   else
     --   TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'What are you trying to buy??'} )
    end
end)

RegisterNetEvent('checkout3')
AddEventHandler('checkout3', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getInventoryItem('unpurchasedcereal').count >= 1 then 
        xPlayer.removeInventoryItem('unpurchasedcereal', 1)
        xPlayer.addInventoryItem('fruitypebbles', 1)
        xPlayer.removeMoney('300')
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You have purchased 1 box of cereal for $300.'} )
 --   else
     --   TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'What are you trying to buy??'} )
    end
end)

RegisterNetEvent('checkout4')
AddEventHandler('checkout4', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getInventoryItem('unpurchasedbread').count >= 1 then 
        xPlayer.removeInventoryItem('unpurchasedbread', 1)
        xPlayer.addInventoryItem('bread', 1)
        xPlayer.removeMoney('30')
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You have purchased 1 loaf of bread for $30.'} )
 --   else
     --   TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'What are you trying to buy??'} )
    end
end)

RegisterNetEvent('checkout5')
AddEventHandler('checkout5', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getInventoryItem('unpurchasedtylenol').count >= 1 then 
        xPlayer.removeInventoryItem('unpurchasedtylenol', 1)
        xPlayer.addInventoryItem('tylenol', 1)
        xPlayer.removeMoney('200')
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You have purchased 1 bottle of tylenol for $200.'} )
 --   else
     --   TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'What are you trying to buy??'} )
    end
end)



RegisterNetEvent('checkout6')
AddEventHandler('checkout6', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getInventoryItem('unpurchasedgallonofmilk').count >= 1 then 
        xPlayer.removeInventoryItem('unpurchasedgallonofmilk', 1)
        xPlayer.addInventoryItem('gallonofmilk', 1)
        xPlayer.removeMoney('150')
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You have purchased 1 gallon of milk for $150.'} )
 --   else
     --   TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'What are you trying to buy??'} )
    end
end)