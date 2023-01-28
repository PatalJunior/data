CreateThread(function()
    local open = false
    while true do  
        SetPauseMenuActive(false)
        if not open then
            if IsControlJustPressed(2, 199) or IsControlJustPressed(2, 200) then
                open = true
                ActivateFrontendMenu(`FE_MENU_VERSION_LANDING_MENU`,0,-1)
            end
        else
            if GetCurrentFrontendMenuVersion() == -1 then
                open = false
            end
        end
        
        Wait(5)
    end
end)



