RegisterNetEvent('lf_outfitbag:placeBag')
AddEventHandler('lf_outfitbag:placeBag', function(bag)
    CreateBagObject(bag)
end)

-- This function is responsible for creating the text shown on the bottom of the screen
function DrawMissionText(text, time)
    SetTextEntry_2("STRING")
    AddTextComponentString(text)
    DrawSubtitleTimed(time or 30000, 1)
end

-- This function is responsible for drawing all the 3d texts ('Press [E] to prepare for an engine swap' e.g)
function Draw3DText(x, y, z, textInput, fontId, scaleX, scaleY)
    local px, py, pz = table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px, py, pz, x, y, z, true)
    local scale = (1 / dist) * 20
    local fov = (1 / GetGameplayCamFov()) * 100
    scale = scale * fov
    SetTextScale(scaleX * scale, scaleY * scale)
    SetTextFont(fontId)
    SetTextProportional(1)
    SetTextDropshadow(1, 1, 1, 1, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(textInput)
    SetDrawOrigin(x, y, z, 0)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end

function OnPlayerApplyOutfit(outfitData, name)

end
