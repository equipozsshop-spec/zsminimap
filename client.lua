-- client.lua
Citizen.CreateThread(function()
    -- Esperamos un segundo para que todo cargue
    Citizen.Wait(1000)

    -- Radar oculto por defecto
    DisplayRadar(false)

    while true do
        Citizen.Wait(0)
        local playerPed = PlayerPedId()
        local veh = GetVehiclePedIsIn(playerPed, false)
        
        if veh ~= 0 then
            -- Mostrar radar en cualquier vehículo
            DisplayRadar(true)
        else
            -- Ocultar radar a pie
            DisplayRadar(false)
        end
    end
end)


