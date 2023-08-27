local L0_1, L1_1, L2_1
L0_1 = Config
L0_1 = L0_1.esxSettings
L0_1 = L0_1.enabled
if L0_1 then
  L0_1 = Config
  L0_1 = L0_1.qbSettings
  L0_1 = L0_1.enabled
  if L0_1 then
    L0_1 = print
    L1_1 = "^1BOTH FRAMEWORKS ENABLED!! MAKE SURE TO ONLY ENABLE ONE FRAMEWORK IN THE CONFIG FILE!"
    L0_1(L1_1)
  end
end
dbTag = "lf_outfitbag:outfit"
L0_1 = {}
outfits = L0_1
L0_1 = RegisterServerEvent
L1_1 = "lf_outfitbag:setBagState"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "lf_outfitbag:setBagState"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = EnsureEntityStateBag
  L4_2 = NetworkGetEntityFromNetworkId
  L5_2 = A0_2
  L4_2, L5_2 = L4_2(L5_2)
  L3_2(L4_2, L5_2)
  L3_2 = Entity
  L4_2 = NetworkGetEntityFromNetworkId
  L5_2 = A0_2
  L4_2, L5_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2)
  L3_2 = L3_2.state
  L3_2[A1_2] = A2_2
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "lf_outfitbag:getOutfits"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "lf_outfitbag:getOutfits"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A0_2 then
    L2_2 = GetPlayerOutfits
    L3_2 = source
    L4_2 = A0_2
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = GetPlayerOutfits
    L3_2 = source
    L4_2 = source
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "lf_outfitbag:deleteOutfit"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "lf_outfitbag:deleteOutfit"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = source
  L3_2 = _GetPlayerIdentifier
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = outfits
  L5_2 = L3_2
  L6_2 = A1_2
  L5_2 = L5_2 .. L6_2
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2[A0_2]
  if L4_2 then
    L4_2 = DeleteOutfit
    L5_2 = L2_2
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
    L4_2 = outfits
    L5_2 = L3_2
    L6_2 = A1_2
    L5_2 = L5_2 .. L6_2
    L4_2 = L4_2[L5_2]
    L4_2[A0_2] = nil
  end
  L4_2 = GetPlayerOutfits
  L5_2 = L2_2
  L6_2 = L2_2
  L7_2 = A1_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = GetPlayerPed
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if 0 == L3_2 then
    L3_2 = TriggerClientEvent
    L4_2 = "lf_outfitbag:syncOutfits"
    L5_2 = A0_2
    L6_2 = A1_2
    L7_2 = A2_2
    L8_2 = {}
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    return
  end
  L3_2 = _GetPlayerIdentifier
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = outfits
  L5_2 = L3_2
  L6_2 = A2_2
  L5_2 = L5_2 .. L6_2
  L4_2 = L4_2[L5_2]
  if not L4_2 then
    L4_2 = GetDBPlayerOutfits
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L5_2 = outfits
      L6_2 = L3_2
      L7_2 = A2_2
      L6_2 = L6_2 .. L7_2
      L7_2 = {}
      L5_2[L6_2] = L7_2
      L5_2 = ipairs
      L6_2 = L4_2
      L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
      for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
        L11_2 = json
        L11_2 = L11_2.decode
        L12_2 = L10_2.data
        L11_2 = L11_2(L12_2)
        L12_2 = L11_2.bagItem
        if L12_2 ~= A2_2 then
          L12_2 = Config
          L12_2 = L12_2.bagItem
          if L12_2 ~= A2_2 then
            goto lbl_64
          end
          L12_2 = L11_2.bagItem
          if L12_2 then
            goto lbl_64
          end
        end
        L12_2 = outfits
        L13_2 = L3_2
        L14_2 = A2_2
        L13_2 = L13_2 .. L14_2
        L12_2 = L12_2[L13_2]
        L13_2 = tonumber
        L14_2 = L10_2.id
        L13_2 = L13_2(L14_2)
        L12_2[L13_2] = L11_2
        ::lbl_64::
      end
    end
  end
  L4_2 = A1_2
  if A1_2 == A0_2 then
    L4_2 = "player"
  end
  L5_2 = TriggerClientEvent
  L6_2 = "lf_outfitbag:syncOutfits"
  L7_2 = A0_2
  L8_2 = L4_2
  L9_2 = A2_2
  L10_2 = outfits
  L11_2 = L3_2
  L12_2 = A2_2
  L11_2 = L11_2 .. L12_2
  L10_2 = L10_2[L11_2]
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end
GetPlayerOutfits = L0_1
L0_1 = RegisterServerEvent
L1_1 = "lf_outfitbag:removeBagItem"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "lf_outfitbag:removeBagItem"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = RemoveBagItem
  L2_2 = source
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "lf_outfitbag:pickup"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "lf_outfitbag:pickup"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = PickupBag
  L2_2 = source
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "lf_outfitbag:saveOutfit"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "lf_outfitbag:saveOutfit"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = tonumber
  L3_2 = source
  L2_2 = L2_2(L3_2)
  L3_2 = _GetPlayerIdentifier
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = outfits
  L5_2 = L3_2
  L6_2 = A1_2
  L5_2 = L5_2 .. L6_2
  L4_2 = L4_2[L5_2]
  if L4_2 then
    L4_2 = outfits
    L5_2 = L3_2
    L6_2 = A1_2
    L5_2 = L5_2 .. L6_2
    L4_2 = L4_2[L5_2]
    L4_2 = #L4_2
    L5_2 = Config
    L5_2 = L5_2.maxOutfits
    if L4_2 >= L5_2 then
      return
    end
  end
  A0_2.bagItem = A1_2
  L4_2 = SaveOutfit
  L5_2 = source
  L6_2 = A0_2
  L4_2(L5_2, L6_2)
  L4_2 = outfits
  L5_2 = L3_2
  L6_2 = A1_2
  L5_2 = L5_2 .. L6_2
  L4_2[L5_2] = nil
  L4_2 = GetPlayerOutfits
  L5_2 = L2_2
  L6_2 = L2_2
  L7_2 = A1_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if L7_2 == A1_2 then
      L8_2 = true
      return L8_2
    end
  end
  L2_2 = false
  return L2_2
end
Contains = L0_1
