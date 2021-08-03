local Keys = {
    ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, 
    ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177, 
    ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
    ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
    ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
    ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70, 
    ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
    ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
    ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

ESX              = nil
local PlayerData = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer   
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

function hintToDisplay(text)
	SetTextComponentFormat("STRING")
	AddTextComponentString(text)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

local playerPed = GetPlayerPed(-1)

hasbasket = false

local basket = {
    {x = 30.8764,y = -1348.4772,z = 29.5249},
    {x = 46.3564,y = -1754.7172,z = 29.3249}
}

local checkout = {
    {x = 25.7764,y = -1344.3772,z = 29.5249},
    {x = 47.6464,y = -1758.0572,z = 29.3249},

}

local soda = {
    {x = 33.7564,y = -1344.8772,z = 29.5249},
    {x = 32.3964,y = -1343.0172,z = 29.5249}
}

local honeybun = {
    {x = 30.2464,y = -1346.3772,z = 29.5249},
}


local returnbasket = {
    {x = 27.2264,y = -1348.3872,z = 29.5249},
    {x = 51.6864,y = -1750.2972,z = 29.3249},
}

local bread = {
    {x = 61.3864,y = -1743.4572,z = 29.3949},
    {x = 67.2964,y = -1743.4672,z = 29.2949},
    {x = 58.6464,y = -1744.0472,z = 29.2949},

}

local cereal = {
    {x = 62.4964,y = -1757.5972,z = 29.3615},
    {x = 64.5764,y = -1759.6972,z = 29.2949},

}

local milk = {
    {x = 56.0464,y = -1789.3272,z = 29.2949},
    {x = 59.7564,y = -1792.4672,z = 29.2949},
    {x = 63.7864,y = -1795.4872,z = 29.2949},

}

local tylenolp = {
    {x = 91.1864,y = -1774.6772,z = 29.2949},
    {x = 87.6564,y = -1778.8572,z = 29.2949},

}


local ped = GetPlayerPed(-1)



Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for k in pairs(basket) do
            DrawMarker(27, basket[k].x, basket[k].y, basket[k].z, 0, 0, 0, 0, 0, 0, 0, 0, 1.3001, 0, 153, 255, 255, 0, 0, 0, 0)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for k in pairs(checkout) do
            DrawMarker(27, checkout[k].x, checkout[k].y, checkout[k].z, 0, 0, 0, 0, 0, 0, 0, 0, 1.3001, 0, 153, 255, 255, 0, 0, 0, 0)
        end
    end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for k in pairs(soda) do
            DrawMarker(27, soda[k].x, soda[k].y, soda[k].z, 0, 0, 0, 0, 0, 0, 0, 0, 1.3001, 0, 153, 255, 255, 0, 0, 0, 0)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for k in pairs(honeybun) do
            DrawMarker(27, honeybun[k].x, honeybun[k].y, honeybun[k].z, 0, 0, 0, 0, 0, 0, 0, 0, 1.3001, 0, 153, 255, 255, 0, 0, 0, 0)
        end
    end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for k in pairs(returnbasket) do
            DrawMarker(27, returnbasket[k].x, returnbasket[k].y, returnbasket[k].z, 0, 0, 0, 0, 0, 0, 0, 0, 1.3001, 0, 153, 255, 255, 0, 0, 0, 0)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for k in pairs(bread) do
            DrawMarker(27, bread[k].x, bread[k].y, bread[k].z, 0, 0, 0, 0, 0, 0, 0, 0, 1.3001, 0, 153, 255, 255, 0, 0, 0, 0)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for k in pairs(cereal) do
            DrawMarker(27, cereal[k].x, cereal[k].y, cereal[k].z, 0, 0, 0, 0, 0, 0, 0, 0, 1.3001, 0, 153, 255, 255, 0, 0, 0, 0)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for k in pairs(milk) do
            DrawMarker(27, milk[k].x, milk[k].y, milk[k].z, 0, 0, 0, 0, 0, 0, 0, 0, 1.3001, 0, 153, 255, 255, 0, 0, 0, 0)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for k in pairs(tylenolp) do
            DrawMarker(27, tylenolp[k].x, tylenolp[k].y, tylenolp[k].z, 0, 0, 0, 0, 0, 0, 0, 0, 1.3001, 0, 153, 255, 255, 0, 0, 0, 0)
        end
    end
end)



Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(basket) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, basket[k].x, basket[k].y, basket[k].z)

            if dist <= 0.5 then
				hintToDisplay('Press ~INPUT_CONTEXT~ to grab a shopping basket')
				
				if IsControlJustPressed(0, Keys['E']) then
                    prop = CreateObject(GetHashKey("prop_fruit_basket"), 0, 0, 0, true, true, true)
                    AttachEntityToEntity(prop, ped, GetPedBoneIndex(GetPlayerPed(-1), 57005), 0.4, 0, 0, 0, 270.0, 60.0, true, true, false, true, 1, true) -- object is attached to right hand    
                    
			        hasbasket = true
                    
				end			
            end
        end
    end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(checkout) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, checkout[k].x, checkout[k].y, checkout[k].z)

            if dist <= 0.5  and hasbasket == true then
				hintToDisplay('Press ~INPUT_CONTEXT~ to checkout.')
				
				if IsControlJustPressed(0, Keys['E']) and hasbasket == true then
                    TriggerServerEvent('checkout1', ped)
                    TriggerServerEvent('checkout2', ped)
                    TriggerServerEvent('checkout3', ped)
                    TriggerServerEvent('checkout4', ped)
                    TriggerServerEvent('checkout5', ped)
                    TriggerServerEvent('checkout6', ped)

                    
                    
                           
                    
                end
                
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(soda) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, soda[k].x, soda[k].y, soda[k].z)

            if dist <= 0.5  and hasbasket == true then
				hintToDisplay('Press ~INPUT_CONTEXT~ to grab a soda.')
				
				if IsControlJustPressed(0, Keys['E']) and hasbasket == true then
                    TaskStartScenarioInPlace(playerPed, "WORLD_FISH_FLEE", 0, true)
                    Citizen.Wait(1000)
                    ClearPedTasksImmediately(playerPed)
                    TriggerServerEvent('grabsoda', ped)
                    exports['mythic_notify']:SendAlert('success', 'You grabbed a sprite from the fridge.')
                           
                    
                end
                
            end
        end
    end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(honeybun) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, honeybun[k].x, honeybun[k].y, honeybun[k].z)

            if dist <= 0.5  and hasbasket == true then
				hintToDisplay('Press ~INPUT_CONTEXT~ to grab a honeybun')
				
				if IsControlJustPressed(0, Keys['E']) and hasbasket == true then
                    TaskStartScenarioInPlace(playerPed, "PROP_HUMAN_BUM_BIN", 0, true)
                    Citizen.Wait(1000)
                    ClearPedTasksImmediately(playerPed)
                    TriggerServerEvent('grabbun', ped)
                    exports['mythic_notify']:SendAlert('success', 'You grabbed a honeybun from the shelf. Make sure you pay.')
                           
                    
                end
                
            end
        end
    end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(returnbasket) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, returnbasket[k].x, returnbasket[k].y, returnbasket[k].z)

            if dist <= 0.5  and hasbasket == true then
				hintToDisplay('Press ~INPUT_CONTEXT~ to return the basket.')
				
				if IsControlJustPressed(0, Keys['E']) and hasbasket == true then
                    SetCurrentPedWeapon(ped, GetHashKey("WEAPON_UNARMED"), true)
                    DeleteObject(prop)  
                    Citizen.Wait(100)
                    hasbasket = false
                    break
                           
                    
                end
                
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(bread) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, bread[k].x, bread[k].y, bread[k].z)

            if dist <= 0.5  and hasbasket == true then
				hintToDisplay('Press ~INPUT_CONTEXT~ to grab some bread.')
				
				if IsControlJustPressed(0, Keys['E']) and hasbasket == true then
                    TaskStartScenarioInPlace(playerPed, "PROP_HUMAN_BUM_BIN", 0, true)
                    Citizen.Wait(1000)
                    ClearPedTasksImmediately(playerPed)
                    TriggerServerEvent('grabbread', ped)
                    exports['mythic_notify']:SendAlert('success', 'You grabbed some bread from the shelf. Make sure you pay.')
                           
                    
                end
                
            end
        end
    end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(cereal) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, cereal[k].x, cereal[k].y, cereal[k].z)

            if dist <= 0.5  and hasbasket == true then
				hintToDisplay('Press ~INPUT_CONTEXT~ to grab some cereal.')
				
				if IsControlJustPressed(0, Keys['E']) and hasbasket == true then
                    TaskStartScenarioInPlace(playerPed, "PROP_HUMAN_BUM_BIN", 0, true)                
                    Citizen.Wait(1000)
                    ClearPedTasksImmediately(playerPed)
                    TriggerServerEvent('grabcereal', ped)
                    exports['mythic_notify']:SendAlert('success', 'You grabbed some cereal from the shelf. Make sure you pay.')
                           
                    
                end
                
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(milk) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, milk[k].x, milk[k].y, milk[k].z)

            if dist <= 0.5  and hasbasket == true then
				hintToDisplay('Press ~INPUT_CONTEXT~ to grab some milk.')
				
				if IsControlJustPressed(0, Keys['E']) and hasbasket == true then
                    TaskStartScenarioInPlace(playerPed, "PROP_HUMAN_BUM_BIN", 0, true)
                    Citizen.Wait(1000)
                    ClearPedTasksImmediately(playerPed)
                    TriggerServerEvent('grabmilk', ped)
                    exports['mythic_notify']:SendAlert('success', 'You grabbed some milk from the shelf. Make sure you pay.')
                           
                    
                end
                
            end
        end
    end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(tylenolp) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, tylenolp[k].x, tylenolp[k].y, tylenolp[k].z)

            if dist <= 0.5  and hasbasket == true then
				hintToDisplay('Press ~INPUT_CONTEXT~ to grab some tylenol.')
				
				if IsControlJustPressed(0, Keys['E']) and hasbasket == true then
                    TaskStartScenarioInPlace(playerPed, "PROP_HUMAN_BUM_BIN", 0, true)
                    Citizen.Wait(1000)
                    ClearPedTasksImmediately(playerPed)
                    TriggerServerEvent('grabtylenol', ped)
                    exports['mythic_notify']:SendAlert('success', 'You grabbed some tylenol from the shelf. Make sure you pay.')
                           
                    
                end
                
            end
        end
    end
end)






--[[

local playerPed = GetPlayerPed(-1)
TaskStartScenarioInPlace(playerPed, "PROP_HUMAN_BUM_BIN", 0, true)
Citizen.Wait(5000)
ClearPedTasksImmediately(playerPed)
--]]
































-----------------------------------------------------------------------------

Citizen.CreateThread(function()
    pickupbasket()
end)

function pickupbasket()
        while true do
            Citizen.Wait(0)            
        if GetDistanceBetweenCoords( 30.87, -1348.47, 29.5615, GetEntityCoords(GetPlayerPed(-1))) < 4.0 then     
            DrawText3Ds(30.87, -1348.47, 29.5615, "Press [E] to grab a shopping basket.") 
            DrawText3Ds(27.22, -1348.37, 29.5615, "Press [E] to return the basket") 
        end
    end
end





Citizen.CreateThread(function()
    checkoutmarker()
end)

function checkoutmarker()
        while true do
            Citizen.Wait(0)            
        if GetDistanceBetweenCoords( 25.77, -1344.37, 29.5615, GetEntityCoords(GetPlayerPed(-1))) < 4.0 and hasbasket == true then      
            DrawText3Ds(25.77, -1344.37, 29.5615, "Press [E] to checkout at the counter")       
        end
    end
end


Citizen.CreateThread(function()
    grabbedsoda()
end)

function grabbedsoda()
        while true do
            Citizen.Wait(0)            
        if GetDistanceBetweenCoords( 33.75, -1344.87, 29.5615, GetEntityCoords(GetPlayerPed(-1))) < 7.0 and hasbasket == true then     
            DrawText3Ds(33.75, -1344.87, 29.5615, "Press [E] to grab a soda from the fridge($25)") 
            DrawText3Ds(32.39, -1343.01, 29.5615, "Press [E] to grab a soda from the fridge($25)") 
            
        end
    end
end

Citizen.CreateThread(function()
    honeybung()
end)

function honeybung()
        while true do
            Citizen.Wait(0)            
        if GetDistanceBetweenCoords( 30.24, -1346.37, 29.5615, GetEntityCoords(GetPlayerPed(-1))) < 7.0 and hasbasket == true then     
            DrawText3Ds(30.24, -1346.37, 29.5615, "Press [E] to grab a honeybun($50)") 
        end
    end
end






Citizen.CreateThread(function()
    pickupbasket2()
end)

function pickupbasket2()
        while true do
            Citizen.Wait(0)            
        if GetDistanceBetweenCoords( 46.35, -1754.71, 29.3615, GetEntityCoords(GetPlayerPed(-1))) < 7.0 then   
            DrawText3Ds(46.35, -1754.71, 29.3615, "Press [E] to grab a shopping basket.")          
        end
    end
end

Citizen.CreateThread(function()
    returnbaskettext2()
end)

function returnbaskettext2()
        while true do
            Citizen.Wait(0)            
        if GetDistanceBetweenCoords( 46.35, -1754.71, 29.3615, GetEntityCoords(GetPlayerPed(-1))) < 7.0 and hasbasket == true then      
            DrawText3Ds(47.64, -1758.05, 29.3615, "Press [E] to checkout at the register.") 
            DrawText3Ds(51.68, -1750.29, 29.3615, "Press [E] to return the basket.") 
        end
    end
end

Citizen.CreateThread(function()
    pickuppebbles()
end)

function pickuppebbles()
        while true do
            Citizen.Wait(0)            
        if GetDistanceBetweenCoords( 62.49, -1757.59, 29.3615, GetEntityCoords(GetPlayerPed(-1))) < 15.0 and hasbasket == true then   
            DrawText3Ds(62.49, -1757.59, 29.3615, "Press [E] to grab a box of cereal($300)") 
            DrawText3Ds(64.57, -1759.69, 29.2915, "Press [E] to grab a box of cereal($300)") 
        end
    end
end

Citizen.CreateThread(function()
    pickupmilk()
end)

function pickupmilk()
        while true do
            Citizen.Wait(0)            
        if GetDistanceBetweenCoords( 56.04, -1789.32, 29.2915, GetEntityCoords(GetPlayerPed(-1))) < 35.0 and hasbasket == true then   
            DrawText3Ds(56.04, -1789.32, 29.2915, "Press [E] to grab a gallon of milk($150)") 
            DrawText3Ds(59.75, -1792.46, 29.2915, "Press [E] to grab a gallon of milk($150)") 
            DrawText3Ds(63.78, -1795.48, 29.2915, "Press [E] to grab a gallon of milk($150)") 
        end
    end
end

Citizen.CreateThread(function()
    pickupbread()
end)

function pickupbread()
        while true do
            Citizen.Wait(0)            
        if GetDistanceBetweenCoords( 61.3, -1743.45, 29.3915, GetEntityCoords(GetPlayerPed(-1))) < 35.0 and hasbasket == true then   
            DrawText3Ds(61.3, -1743.45, 29.3915, "Press [E] to grab some bread($30)") 
            DrawText3Ds(67.29, -1743.46, 29.2915, "Press [E] to grab some bread($30)") 
            DrawText3Ds(58.64, -1744.04, 29.2915, "Press [E] to grab some bread($30)") 
        end
    end
end

Citizen.CreateThread(function()
    pickuppharmacy()
end)

function pickuppharmacy()
        while true do
            Citizen.Wait(0)            
        if GetDistanceBetweenCoords( 91.18, -1774.67, 29.2915, GetEntityCoords(GetPlayerPed(-1))) < 50.0 and hasbasket == true then   
            DrawText3Ds(91.18, -1774.67, 29.2915, "Press [E] to grab a tylenol($200)") 
            DrawText3Ds(87.65, -1778.85, 29.2915, "Press [E] to grab a tylenol($200)") 
        end
    end
end

-------------------------------------------------------------------------------------------------------------------------
function Draw3DText(x,y,z,textInput,fontId,scaleX,scaleY)
         local px,py,pz=table.unpack(GetGameplayCamCoords())
         local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)    
         local scale = (1/dist)*20
         local fov = (1/GetGameplayCamFov())*30
         local scale = scale*fov   
         SetTextScale(scaleX*scale, scaleY*scale)
         SetTextFont(fontId)
         SetTextProportional(1)
         SetTextColour(250, 250, 250, 255)        -- You can change the text color here
         SetTextDropshadow(1, 1, 1, 1, 255)
         SetTextEdge(2, 0, 0, 0, 150)
         SetTextDropShadow()
         SetTextOutline()
         SetTextEntry("STRING")
         SetTextCentre(1)
         AddTextComponentString(textInput)
         SetDrawOrigin(x,y,z+2, 0)
         DrawText(0.0, 0.0)
         ClearDrawOrigin()
        end



   function DrawText3Ds(x, y, z, text)
            local onScreen, _x, _y = World3dToScreen2d(x, y, z)
            local p = GetGameplayCamCoords()
            local distance = GetDistanceBetweenCoords(p.x, p.y, p.z, x, y, z, 1)
            local scale = (1 / distance) * 2
            local fov = (1 / GetGameplayCamFov()) * 100
            local scale = scale * fov
            if onScreen then
                  SetTextScale(0.35, 0.35)
                  SetTextFont(4)
                  SetTextProportional(1)
                  SetTextColour(255, 255, 255, 215)
                  SetTextEntry("STRING")
                  SetTextCentre(1)
                  AddTextComponentString(text)
                  DrawText(_x,_y)
                  local factor = (string.len(text)) / 370
                  DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)
            end
    end




    local blips = {
        -- Example {title="", colour=, id=, x=, y=, z=},
    
         {title="Convience Store", colour=0, id=52, x = 25.73, y = -1346.92, z = 10.49},
         {title="Walmart", colour=0, id=569, x = 61.44, y = -1757.07, z = 10.49},
      }
          
    Citizen.CreateThread(function()
    
        for _, info in pairs(blips) do
          info.blip = AddBlipForCoord(info.x, info.y, info.z)
          SetBlipSprite(info.blip, info.id)
          SetBlipDisplay(info.blip, 4)
          SetBlipScale(info.blip, 0.7)
          SetBlipColour(info.blip, info.colour)
          SetBlipAsShortRange(info.blip, true)
          BeginTextCommandSetBlipName("STRING")
          AddTextComponentString(info.title)
          EndTextCommandSetBlipName(info.blip)
        end
    end)



    RegisterNetEvent('curse-removestress')
    AddEventHandler('curse-removestress', function ()
        exports['mythic_progbar']:Progress({
            name = "unique_action_name",
            duration = 6000,
            label = 'You begin to take a tylenol.',
            useWhileDead = false,
            canCancel = true,
            controlDisables = {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = true,
            },
            animation = {
                animDict = "mp_suicide",
                anim = "pill",
                flags = 49,
            },
            prop = {
                model = "prop_cs_pills",
                bone = 28422,
                coords = { x = 0.10, y = 0.02, z = 0.08 },
                rotation = { x = -80.0, y = 0.0, z = 0.0 },
            },
        }, function(cancelled)
            if not cancelled then
                -- Do Something If Action Wasn't Cancelled
            else
                -- Do Something If Action Was Cancelled
            end
        end)
        TriggerEvent('esx_status:remove', 'stress', 75 * 10000)
        exports['mythic_notify']:SendAlert('inform', 'Your head feels better')  
    end)



    RegisterNetEvent('curse-pour')
    AddEventHandler('curse-pour', function ()
        exports['mythic_progbar']:Progress({
            name = "unique_action_name",
            duration = 10000,
            label = 'Pouring cereal into a bowl.',
            useWhileDead = false,
            canCancel = true,
            controlDisables = {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = true,
            },
            animation = {
                animDict = "anim@heists@box_carry@",
                anim = "base",
                flags = 49,
            },
            prop = {
                model = "v_res_bowl_dec",
                bone = 28422,
                coords = { x = 0.10, y = 0.02, z = 0.08 },
                rotation = { x = -80.0, y = 0.0, z = 0.0 },
            },
        }, function(cancelled)
            if not cancelled then
                -- Do Something If Action Wasn't Cancelled
            else
                -- Do Something If Action Was Cancelled
            end
        end)
        exports['mythic_notify']:SendAlert('inform', 'You successfully poured a bowl of cereal.')  
    end)

