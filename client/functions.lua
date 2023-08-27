local L0_1, L1_1, L2_1
L0_1 = RegisterNUICallback
L1_1 = "UILoaded"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.event = "config"
  L4_2 = Config
  L4_2 = L4_2.maxOutfits
  L3_2.maxAmount = L4_2
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "CloseBag"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = changing
  if not L2_2 then
    L2_2 = CloseBag
    L2_2()
  end
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "DeleteOutfit"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerServerEvent
  L3_2 = "lf_outfitbag:deleteOutfit"
  L4_2 = tonumber
  L5_2 = A0_2.index
  L4_2 = L4_2(L5_2)
  L5_2 = currentBagItem
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "lf_outfitbag:syncOutfits"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "lf_outfitbag:syncOutfits"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = outfits
  L4_2 = A0_2
  L5_2 = A1_2
  L4_2 = L4_2 .. L5_2
  L3_2[L4_2] = A2_2
  L3_2 = InsertExistingOutfits
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if "player" ~= A0_2 then
    L2_2 = TriggerServerEvent
    L3_2 = "lf_outfitbag:getOutfits"
    L4_2 = A0_2
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = outfits
    L3_2 = A0_2
    L4_2 = A1_2
    L3_2 = L3_2 .. L4_2
    L2_2 = L2_2[L3_2]
    if not L2_2 then
      L2_2 = TriggerServerEvent
      L3_2 = "lf_outfitbag:getOutfits"
      L4_2 = false
      L5_2 = A1_2
      L2_2(L3_2, L4_2, L5_2)
    end
  end
  L2_2 = InsertExistingOutfits
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
LoadOutfits = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = outfits
  L3_2 = A0_2
  L4_2 = A1_2
  L3_2 = L3_2 .. L4_2
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L2_2 = ClearUI
    L2_2()
    L2_2 = {}
    L3_2 = 0
    L4_2 = pairs
    L5_2 = outfits
    L6_2 = A0_2
    L7_2 = A1_2
    L6_2 = L6_2 .. L7_2
    L5_2 = L5_2[L6_2]
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L3_2 = L3_2 + 1
      L2_2[L3_2] = L8_2
    end
    L4_2 = table
    L4_2 = L4_2.sort
    L5_2 = L2_2
    L4_2(L5_2)
    L4_2 = pairs
    L5_2 = L2_2
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = outfits
      L11_2 = A0_2
      L12_2 = A1_2
      L11_2 = L11_2 .. L12_2
      L10_2 = L10_2[L11_2]
      L11_2 = L2_2[L8_2]
      L10_2 = L10_2[L11_2]
      L11_2 = AddOutfitToUI
      L12_2 = L10_2.name
      L13_2 = A0_2
      L14_2 = L2_2[L8_2]
      L15_2 = L10_2.model
      L11_2(L12_2, L13_2, L14_2, L15_2)
    end
  end
end
InsertExistingOutfits = L0_1
L0_1 = RegisterNetEvent
L1_1 = "lf_outfitbag:targetOpen"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = Entity
  L2_2 = A0_2.entity
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.state
  L1_2 = L1_2.owner
  L2_2 = Entity
  L3_2 = A0_2.entity
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.state
  L2_2 = L2_2.isItem
  L3_2 = GetPlayerServerId
  L4_2 = PlayerId
  L4_2, L5_2 = L4_2()
  L3_2 = L3_2(L4_2, L5_2)
  if L1_2 == L3_2 then
    L3_2 = OpenBag
    L4_2 = false
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = OpenBag
    L4_2 = L1_2
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  if not A1_2 then
    L3_2 = Config
    A1_2 = L3_2.bagItem
  end
  L3_2 = IsPedInAnyVehicle
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = IsPedRagdoll
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = IsEntityDead
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        goto lbl_23
      end
    end
  end
  do return end
  ::lbl_23::
  L3_2 = Config
  L3_2 = L3_2.bagAnimation
  L3_2 = L3_2.enabled
  if L3_2 then
    L3_2 = PlayAnim
    L4_2 = Config
    L4_2 = L4_2.bagAnimation
    L4_2 = L4_2.dict
    L5_2 = Config
    L5_2 = L5_2.bagAnimation
    L5_2 = L5_2.anim
    L6_2 = 1
    L3_2(L4_2, L5_2, L6_2)
  end
  currentBagItem = A1_2
  L3_2 = FaceTheBag
  L3_2()
  L3_2 = SendNUIMessage
  L4_2 = {}
  L4_2.event = "show"
  L4_2.state = true
  L5_2 = A0_2 or L5_2
  if not A0_2 then
    L5_2 = "player"
  end
  L5_2 = "player" == L5_2
  L4_2.owned = L5_2
  L3_2(L4_2)
  open = true
  L3_2 = LoadOutfits
  L4_2 = A0_2 or L4_2
  if not A0_2 then
    L4_2 = "player"
  end
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = SetNuiFocus
  L4_2 = true
  L5_2 = true
  L3_2(L4_2, L5_2)
end
OpenBag = L0_1
function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.event = "show"
  L1_2.state = false
  L1_2.owned = false
  L0_2(L1_2)
  currentBagItem = nil
  open = false
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = ClearPedTasks
  L1_2 = PlayerPedId
  L1_2, L2_2 = L1_2()
  L0_2(L1_2, L2_2)
end
CloseBag = L0_1
L0_1 = RegisterNetEvent
L1_1 = "lf_outfitbag:targetPickup"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Entity
  L2_2 = A0_2.entity
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.state
  L1_2 = L1_2.owner
  L2_2 = GetPlayerServerId
  L3_2 = PlayerId
  L3_2, L4_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2)
  if L1_2 == L2_2 then
    L2_2 = PickupBag
    L3_2 = Entity
    L4_2 = A0_2.entity
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2.state
    L3_2 = L3_2.isItem
    L4_2 = A0_2.entity
    L2_2(L3_2, L4_2)
  end
end
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Config
  L2_2 = L2_2.bagAnimation
  L2_2 = L2_2.enabled
  if L2_2 then
    L2_2 = FaceTheBag
    L2_2()
    L2_2 = PlayAnim
    L3_2 = Config
    L3_2 = L3_2.bagAnimation
    L3_2 = L3_2.dict
    L4_2 = Config
    L4_2 = L4_2.bagAnimation
    L4_2 = L4_2.anim
    L5_2 = 1
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = Citizen
    L2_2 = L2_2.Wait
    L3_2 = 1500
    L2_2(L3_2)
    L2_2 = ClearPedTasks
    L3_2 = PlayerPedId
    L3_2, L4_2, L5_2 = L3_2()
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = Entity
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.state
  L2_2 = L2_2.isItem
  if L2_2 then
    L2_2 = TriggerServerEvent
    L3_2 = "lf_outfitbag:pickup"
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = DeleteBagObject
  L3_2 = A1_2
  L2_2(L3_2)
end
PickupBag = L0_1
function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = Citizen
  L1_2 = L1_2.CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L0_3 = PlayerPedId
    L0_3 = L0_3()
    L1_3 = IsPedInAnyVehicle
    L2_3 = L0_3
    L1_3 = L1_3(L2_3)
    if not L1_3 then
      L1_3 = IsPedRagdoll
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      if not L1_3 then
        L1_3 = IsEntityDead
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        if not L1_3 then
          goto lbl_19
        end
      end
    end
    do return end
    ::lbl_19::
    L1_3 = Config
    L1_3 = L1_3.onlyAllowOneBagOnGround
    if L1_3 then
      L1_3 = DeleteBagObject
      L1_3()
    end
    L1_3 = Config
    L1_3 = L1_3.bagAnimation
    L1_3 = L1_3.enabled
    if L1_3 then
      L1_3 = PlayAnim
      L2_3 = Config
      L2_3 = L2_3.bagAnimation
      L2_3 = L2_3.dict
      L3_3 = Config
      L3_3 = L3_3.bagAnimation
      L3_3 = L3_3.anim
      L4_3 = 1
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = Citizen
      L1_3 = L1_3.Wait
      L2_3 = 1500
      L1_3(L2_3)
      L1_3 = ClearPedTasks
      L2_3 = PlayerPedId
      L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3 = L2_3()
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
    end
    L1_3 = Config
    L1_3 = L1_3.bagObject
    L2_3 = DoRequestModel
    L3_3 = L1_3
    L2_3(L3_3)
    L2_3 = GetOffsetFromEntityInWorldCoords
    L3_3 = L0_3
    L4_3 = 0.0
    L5_3 = 0.8
    L6_3 = 1.0
    L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
    L3_3 = GetGroundZFor_3dCoord_2
    L4_3 = L2_3.x
    L5_3 = L2_3.y
    L6_3 = L2_3.z
    L7_3 = true
    L3_3, L4_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
    L5_3 = GetEntityCoords
    L6_3 = L0_3
    L5_3 = L5_3(L6_3)
    L6_3 = vector3
    L7_3 = L5_3.x
    L8_3 = L5_3.y
    L9_3 = L5_3.z
    L9_3 = L9_3 - 1.0
    L6_3 = L6_3(L7_3, L8_3, L9_3)
    if L3_3 then
      L7_3 = L5_3.z
      L7_3 = L7_3 + 0.5
      if L4_3 < L7_3 then
        L7_3 = L4_3 + 1.5
        L8_3 = L5_3.z
        if L7_3 > L8_3 then
          L7_3 = vector3
          L8_3 = L2_3.x
          L9_3 = L2_3.y
          L10_3 = L4_3
          L7_3 = L7_3(L8_3, L9_3, L10_3)
          L6_3 = L7_3
        end
      end
    end
    L7_3 = CreateObject
    L8_3 = L1_3
    L9_3 = L6_3.x
    L10_3 = L6_3.y
    L11_3 = L6_3.z
    L12_3 = true
    L13_3 = true
    L14_3 = 1
    L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
    bagObject = L7_3
    L7_3 = SetEntityDynamic
    L8_3 = bagObject
    L9_3 = false
    L7_3(L8_3, L9_3)
    L7_3 = Config
    L7_3 = L7_3.target
    L7_3 = L7_3.enabled
    if not L7_3 then
      L7_3 = SetEntityCollision
      L8_3 = bagObject
      L9_3 = false
      L10_3 = false
      L7_3(L8_3, L9_3, L10_3)
    end
    L7_3 = SetEntityHeading
    L8_3 = bagObject
    L9_3 = GetEntityHeading
    L10_3 = L0_3
    L9_3, L10_3, L11_3, L12_3, L13_3, L14_3 = L9_3(L10_3)
    L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
    L7_3 = Citizen
    L7_3 = L7_3.Wait
    L8_3 = 50
    L7_3(L8_3)
    L7_3 = SetBagState
    L8_3 = "owner"
    L9_3 = GetPlayerServerId
    L10_3 = PlayerId
    L10_3, L11_3, L12_3, L13_3, L14_3 = L10_3()
    L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3)
    L10_3 = bagObject
    L7_3(L8_3, L9_3, L10_3)
    L7_3 = SetBagState
    L8_3 = "public"
    L9_3 = public
    L10_3 = bagObject
    L7_3(L8_3, L9_3, L10_3)
    L7_3 = SetBagState
    L8_3 = "isItem"
    L9_3 = A0_2
    L10_3 = bagObject
    L7_3(L8_3, L9_3, L10_3)
    L7_3 = A0_2
    if L7_3 then
      L7_3 = TriggerServerEvent
      L8_3 = "lf_outfitbag:removeBagItem"
      L9_3 = A0_2
      L7_3(L8_3, L9_3)
    end
  end
  L1_2(L2_2)
end
CreateBagObject = L0_1
function L0_1(A0_2)
  local L1_2, L2_2
  if A0_2 then
    L1_2 = DeleteObject
    L2_2 = A0_2
    L1_2(L2_2)
  else
    L1_2 = bagObject
    if L1_2 then
      L1_2 = DeleteObject
      L2_2 = bagObject
      L1_2(L2_2)
      bagObject = nil
    end
  end
end
DeleteBagObject = L0_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = TriggerServerEvent
  L4_2 = "lf_outfitbag:setBagState"
  L5_2 = NetworkGetNetworkIdFromEntity
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2
  L7_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
SetBagState = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetClosestObjectOfType
  L3_2 = L1_2
  L4_2 = 1.75
  L5_2 = GetHashKey
  L6_2 = Config
  L6_2 = L6_2.bagObject
  L5_2 = L5_2(L6_2)
  L6_2 = true
  L7_2 = 0
  L8_2 = 0
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = GetEntityCoords
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetHeadingFromVector_2d
  L5_2 = L1_2.x
  L6_2 = L3_2.x
  L5_2 = L5_2 - L6_2
  L6_2 = L1_2.y
  L7_2 = L3_2.y
  L6_2 = L6_2 - L7_2
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L4_2 + 180
  L5_2 = SetEntityHeading
  L6_2 = L0_2
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
FaceTheBag = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.event = "clear"
  L0_2(L1_2)
end
ClearUI = L0_1
function L0_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = SendNUIMessage
  L5_2 = {}
  L5_2.event = "add"
  L5_2.id = A1_2
  L5_2.index = A2_2
  L5_2.name = A0_2
  L6_2 = models
  L6_2 = L6_2[A3_2]
  L5_2.model = L6_2
  L4_2(L5_2)
end
AddOutfitToUI = L0_1
L0_1 = RegisterNetEvent
L1_1 = "lf_outfitbag:targetMakePublic"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  public = true
  L1_2 = SetBagState
  L2_2 = "public"
  L3_2 = true
  L4_2 = A0_2.entity
  L1_2(L2_2, L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "lf_outfitbag:targetMakePrivate"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  public = false
  L1_2 = SetBagState
  L2_2 = "public"
  L3_2 = false
  L4_2 = A0_2.entity
  L1_2(L2_2, L3_2, L4_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = DisplayOnscreenKeyboard
  L2_2 = 1
  L3_2 = "FMMC_KEY_TIP9N"
  L4_2 = ""
  L5_2 = ""
  L6_2 = ""
  L7_2 = ""
  L8_2 = ""
  L9_2 = A0_2 or L9_2
  if not A0_2 then
    L9_2 = 16
  end
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  while true do
    L1_2 = UpdateOnscreenKeyboard
    L1_2 = L1_2()
    if 0 ~= L1_2 then
      break
    end
    L1_2 = DisableAllControlActions
    L2_2 = 0
    L1_2(L2_2)
    L1_2 = Wait
    L2_2 = 1
    L1_2(L2_2)
  end
  L1_2 = GetOnscreenKeyboardResult
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = GetOnscreenKeyboardResult
    return L1_2()
  end
  L1_2 = nil
  return L1_2
end
TextInput = L0_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = RequestAnimDict
  L4_2 = A0_2
  L3_2(L4_2)
  while true do
    L3_2 = HasAnimDictLoaded
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = 100
    L3_2(L4_2)
  end
  L3_2 = TaskPlayAnim
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = 4.0
  L8_2 = 8.0
  L9_2 = 5.0
  L10_2 = A2_2 or L10_2
  if not A2_2 then
    L10_2 = 1
  end
  L11_2 = 1
  L12_2 = false
  L13_2 = false
  L14_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L3_2 = RemoveAnimDict
  L4_2 = A0_2
  L3_2(L4_2)
end
PlayAnim = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = GetHashKey
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = RequestModel
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = 0
  while true do
    L3_2 = HasModelLoaded
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    if not (not L3_2 and L2_2 < 100) then
      break
    end
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = 10
    L3_2(L4_2)
    L2_2 = L2_2 + 1
  end
end
DoRequestModel = L0_1
function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = Config
  L1_2 = L1_2.debug
  if L1_2 then
    L1_2 = print
    L2_2 = A0_2
    L1_2(L2_2)
  end
end
Debug = L0_1
function L0_1(A0_2)
  local L1_2
  L1_2 = Locale
  if L1_2 then
    L1_2 = Locale
    L1_2 = L1_2[A0_2]
    if L1_2 then
      L1_2 = Locale
      L1_2 = L1_2[A0_2]
      return L1_2
    end
  end
  return A0_2
end
L = L0_1
