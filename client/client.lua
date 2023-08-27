local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
L0_1.ESC = 322
L0_1.F1 = 288
L0_1.F2 = 289
L0_1.F3 = 170
L0_1.F5 = 166
L0_1.F6 = 167
L0_1.F7 = 168
L0_1.F8 = 169
L0_1.F9 = 56
L0_1.F10 = 57
L0_1["~"] = 243
L0_1["1"] = 157
L0_1["2"] = 158
L0_1["3"] = 160
L0_1["4"] = 164
L0_1["5"] = 165
L0_1["6"] = 159
L0_1["7"] = 161
L0_1["8"] = 162
L0_1["9"] = 163
L0_1["-"] = 84
L0_1["="] = 83
L0_1.BACKSPACE = 177
L0_1.TAB = 37
L0_1.Q = 44
L0_1.W = 32
L0_1.E = 38
L0_1.R = 45
L0_1.T = 245
L0_1.Y = 246
L0_1.U = 303
L0_1.P = 199
L0_1["["] = 39
L0_1["]"] = 40
L0_1.ENTER = 18
L0_1.CAPS = 137
L0_1.A = 34
L0_1.S = 8
L0_1.D = 9
L0_1.F = 23
L0_1.G = 47
L0_1.H = 74
L0_1.K = 311
L0_1.L = 182
L0_1.LEFTSHIFT = 21
L0_1.Z = 20
L0_1.X = 73
L0_1.C = 26
L0_1.V = 0
L0_1.B = 29
L0_1.N = 249
L0_1.M = 244
L0_1[","] = 82
L0_1["."] = 81
L0_1.LEFTCTRL = 36
L0_1.LEFTALT = 19
L0_1.SPACE = 22
L0_1.RIGHTCTRL = 70
L0_1.HOME = 213
L0_1.PAGEUP = 10
L0_1.PAGEDOWN = 11
L0_1.DELETE = 178
L0_1.LEFT = 174
L0_1.RIGHT = 175
L0_1.TOP = 27
L0_1.DOWN = 173
L0_1.NENTER = 201
L0_1.N4 = 108
L0_1.N5 = 60
L0_1.N6 = 107
L0_1["N+"] = 96
L0_1["N-"] = 97
L0_1.N7 = 117
L0_1.N8 = 61
L0_1.N9 = 118
L1_1 = {}
outfits = L1_1
bagObject = nil
changing = false
open = false
currentBagItem = nil
public = false
L1_1 = RegisterNetEvent
L2_1 = "QBCore:Client:OnPlayerLoaded"
function L3_1()
  local L0_2, L1_2
  L0_2 = outfits
  L0_2.player = nil
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "esx:playerLoaded"
function L3_1()
  local L0_2, L1_2
  L0_2 = outfits
  L0_2.player = nil
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "SaveOutfit"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = SaveOutfit
  L2_2()
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L1_1(L2_1, L3_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = Citizen
  L0_2 = L0_2.CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = SetNuiFocus
    L1_3 = false
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = TextInput
    L1_3 = 20
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L1_3 = Debug
      L2_3 = "Outfit name: "
      L3_3 = L0_3
      L2_3 = L2_3 .. L3_3
      L1_3(L2_3)
      L1_3 = GetCurrentOutfitData
      L1_3 = L1_3()
      L2_3 = TriggerServerEvent
      L3_3 = "lf_outfitbag:saveOutfit"
      L4_3 = {}
      L4_3.name = L0_3
      L4_3.data = L1_3
      L5_3 = GetEntityModel
      L6_3 = PlayerPedId
      L6_3 = L6_3()
      L5_3 = L5_3(L6_3)
      L4_3.model = L5_3
      L5_3 = currentBagItem
      L2_3(L3_3, L4_3, L5_3)
    else
      L1_3 = Debug
      L2_3 = "canceled"
      L1_3(L2_3)
    end
    L1_3 = SetNuiFocus
    L2_3 = true
    L3_3 = true
    L1_3(L2_3, L3_3)
  end
  L0_2(L1_2)
end
SaveOutfit = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = {}
  L1_2 = {}
  L0_2.drawable = L1_2
  L1_2 = {}
  L0_2.props = L1_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = pairs
  L3_2 = drawable
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L0_2.drawable
    L9_2 = {}
    L10_2 = GetPedDrawableVariation
    L11_2 = L1_2
    L12_2 = L7_2
    L10_2 = L10_2(L11_2, L12_2)
    L9_2.drawable = L10_2
    L10_2 = GetPedTextureVariation
    L11_2 = L1_2
    L12_2 = L7_2
    L10_2 = L10_2(L11_2, L12_2)
    L9_2.texture = L10_2
    L10_2 = GetPedPaletteVariation
    L11_2 = L1_2
    L12_2 = L7_2
    L10_2 = L10_2(L11_2, L12_2)
    L9_2.palette = L10_2
    L8_2[L6_2] = L9_2
  end
  L2_2 = pairs
  L3_2 = props
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L0_2.props
    L9_2 = {}
    L10_2 = GetPedPropIndex
    L11_2 = L1_2
    L12_2 = L7_2
    L10_2 = L10_2(L11_2, L12_2)
    L9_2.prop = L10_2
    L10_2 = GetPedPropTextureIndex
    L11_2 = L1_2
    L12_2 = L7_2
    L10_2 = L10_2(L11_2, L12_2)
    L9_2.texture = L10_2
    L8_2[L6_2] = L9_2
  end
  return L0_2
end
GetCurrentOutfitData = L1_1
L1_1 = RegisterNUICallback
L2_1 = "LoadOutfit"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.id
  if "player" ~= L2_2 then
    L2_2 = tonumber
    L3_2 = A0_2.id
    L2_2 = L2_2(L3_2)
    A0_2.id = L2_2
  end
  L2_2 = outfits
  L3_2 = A0_2.id
  L4_2 = currentBagItem
  L3_2 = L3_2 .. L4_2
  L2_2 = L2_2[L3_2]
  if not L2_2 then
    L3_2 = Debug
    L4_2 = "User outfit not found"
    L3_2(L4_2)
    L3_2 = A1_2
    L4_2 = false
    L3_2(L4_2)
    return
  end
  L3_2 = outfits
  L4_2 = A0_2.id
  L5_2 = currentBagItem
  L4_2 = L4_2 .. L5_2
  L3_2 = L3_2[L4_2]
  L4_2 = tonumber
  L5_2 = A0_2.index
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2[L4_2]
  if L3_2 then
    L4_2 = L3_2.model
    L5_2 = GetEntityModel
    L6_2 = PlayerPedId
    L6_2 = L6_2()
    L5_2 = L5_2(L6_2)
    if L4_2 == L5_2 then
      L4_2 = changing
      if not L4_2 then
        L4_2 = LoadOutfit
        L5_2 = L3_2.data
        L6_2 = L3_2.name
        L4_2(L5_2, L6_2)
      else
        L4_2 = DrawMissionText
        L5_2 = L
        L6_2 = "~r~Wait a bit before you switch outfits again"
        L5_2 = L5_2(L6_2)
        L6_2 = 5000
        L4_2(L5_2, L6_2)
      end
    else
      L4_2 = DrawMissionText
      L5_2 = L
      L6_2 = "~r~This outfit isn't suitable for you"
      L5_2 = L5_2(L6_2)
      L6_2 = 5000
      L4_2(L5_2, L6_2)
    end
  end
  L4_2 = A1_2
  L5_2 = true
  L4_2(L5_2)
end
L1_1(L2_1, L3_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  changing = true
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = ClearPedTasks
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = Citizen
  L2_2 = L2_2.Wait
  L3_2 = 250
  L2_2(L3_2)
  L2_2 = PlayAnim
  L3_2 = Config
  L3_2 = L3_2.outfitChangeAnimation
  L3_2 = L3_2.dict
  L4_2 = Config
  L4_2 = L4_2.outfitChangeAnimation
  L4_2 = L4_2.anim
  L2_2(L3_2, L4_2)
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = Config
  L3_2 = L3_2.outfitChangeAnimation
  L3_2 = L3_2.duration
  L3_2 = L3_2 / 3
  L2_2 = L2_2(L3_2)
  L3_2 = Citizen
  L3_2 = L3_2.Wait
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = GoNaked
  L4_2 = "top"
  L3_2(L4_2)
  L3_2 = Citizen
  L3_2 = L3_2.Wait
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = GoNaked
  L4_2 = "bottom"
  L3_2(L4_2)
  L3_2 = Citizen
  L3_2 = L3_2.Wait
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = ClearPedTasks
  L4_2 = L1_2
  L3_2(L4_2)
  changing = false
end
PerformAnimation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = pairs
  L3_2 = naked
  L4_2 = GetEntityModel
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2[A0_2]
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = SetPedComponentVariation
    L9_2 = L1_2
    L10_2 = drawable
    L10_2 = L10_2[L6_2]
    L11_2 = L7_2
    L12_2 = 0
    L13_2 = 0
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  end
end
GoNaked = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = Citizen
  L2_2 = L2_2.CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L0_3 = Config
    L0_3 = L0_3.outfitChangeAnimation
    L0_3 = L0_3.enabled
    if L0_3 then
      L0_3 = PerformAnimation
      L1_3 = true
      L0_3(L1_3)
    end
    L0_3 = PlayerPedId
    L0_3 = L0_3()
    L1_3 = SetPedComponentVariation
    L2_3 = L0_3
    L3_3 = 1
    L4_3 = 0
    L5_3 = 0
    L6_3 = 2
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
    L1_3 = ClearPedProp
    L2_3 = L0_3
    L3_3 = 2
    L1_3(L2_3, L3_3)
    L1_3 = ClearPedProp
    L2_3 = L0_3
    L3_3 = 0
    L1_3(L2_3, L3_3)
    L1_3 = SetPedPropIndex
    L2_3 = L0_3
    L3_3 = 1
    L4_3 = -1
    L5_3 = 0
    L6_3 = 0
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
    L1_3 = pairs
    L2_3 = A0_2.drawable
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = drawable
      L7_3 = L7_3[L5_3]
      L8_3 = SetPedComponentVariation
      L9_3 = L0_3
      L10_3 = L7_3
      L11_3 = L6_3.drawable
      L12_3 = L6_3.texture
      L13_3 = L6_3.palette
      L8_3(L9_3, L10_3, L11_3, L12_3, L13_3)
    end
    L1_3 = pairs
    L2_3 = A0_2.props
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = props
      L7_3 = L7_3[L5_3]
      L8_3 = SetPedPropIndex
      L9_3 = L0_3
      L10_3 = L7_3
      L11_3 = L6_3.prop
      L12_3 = L6_3.texture
      L13_3 = true
      L8_3(L9_3, L10_3, L11_3, L12_3, L13_3)
    end
    L1_3 = OnPlayerApplyOutfit
    L2_3 = A0_2
    L3_3 = A1_2
    L1_3(L2_3, L3_3)
    L1_3 = A0_2
    return L1_3
  end
  L2_2(L3_2)
end
LoadOutfit = L1_1
L1_1 = Config
L1_1 = L1_1.command
L1_1 = L1_1.enabled
if L1_1 then
  L1_1 = RegisterCommand
  L2_1 = Config
  L2_1 = L2_1.command
  L2_1 = L2_1.command
  function L3_1(A0_2, A1_2)
    local L2_2, L3_2
    L2_2 = CreateBagObject
    L3_2 = false
    L2_2(L3_2)
  end
  L1_1(L2_1, L3_1)
  L1_1 = RegisterCommand
  L2_1 = Config
  L2_1 = L2_1.command
  L2_1 = L2_1.shortCommand
  function L3_1(A0_2, A1_2)
    local L2_2, L3_2
    L2_2 = CreateBagObject
    L3_2 = false
    L2_2(L3_2)
  end
  L1_1(L2_1, L3_1)
end
L1_1 = Config
L1_1 = L1_1.target
L1_1 = L1_1.enabled
if not L1_1 then
  L1_1 = Citizen
  L1_1 = L1_1.CreateThread
  function L2_1()
    local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
    while true do
      L0_2 = 1200
      L1_2 = PlayerPedId
      L1_2 = L1_2()
      L2_2 = IsPedInAnyVehicle
      L3_2 = L1_2
      L4_2 = true
      L2_2 = L2_2(L3_2, L4_2)
      if not L2_2 then
        L2_2 = GetEntityCoords
        L3_2 = L1_2
        L2_2 = L2_2(L3_2)
        L3_2 = open
        if not L3_2 then
          L3_2 = GetClosestObjectOfType
          L4_2 = L2_2
          L5_2 = 1.5
          L6_2 = GetHashKey
          L7_2 = Config
          L7_2 = L7_2.bagObject
          L6_2 = L6_2(L7_2)
          L7_2 = true
          L8_2 = 0
          L9_2 = 0
          L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
          L4_2 = Debug
          L5_2 = "Bag object: "
          L6_2 = L3_2
          L5_2 = L5_2 .. L6_2
          L4_2(L5_2)
          if 0 ~= L3_2 then
            L4_2 = Entity
            L5_2 = L3_2
            L4_2 = L4_2(L5_2)
            L4_2 = L4_2.state
            L4_2 = L4_2.owner
            if L4_2 then
              L4_2 = Debug
              L5_2 = "Bag owner: "
              L6_2 = Entity
              L7_2 = L3_2
              L6_2 = L6_2(L7_2)
              L6_2 = L6_2.state
              L6_2 = L6_2.owner
              L5_2 = L5_2 .. L6_2
              L4_2(L5_2)
            end
          end
          if 0 ~= L3_2 then
            L4_2 = Entity
            L5_2 = L3_2
            L4_2 = L4_2(L5_2)
            L4_2 = L4_2.state
            L4_2 = L4_2.public
            if not L4_2 then
              L4_2 = Entity
              L5_2 = L3_2
              L4_2 = L4_2(L5_2)
              L4_2 = L4_2.state
              L4_2 = L4_2.owner
              L5_2 = GetPlayerServerId
              L6_2 = PlayerId
              L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2()
              L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
            end
            if L4_2 == L5_2 then
              L0_2 = 0
              L4_2 = GetEntityCoords
              L5_2 = L3_2
              L4_2 = L4_2(L5_2)
              L5_2 = Entity
              L6_2 = L3_2
              L5_2 = L5_2(L6_2)
              L5_2 = L5_2.state
              L5_2 = L5_2.owner
              L6_2 = GetPlayerServerId
              L7_2 = PlayerId
              L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2()
              L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
              if L5_2 == L6_2 then
                L5_2 = Draw3DText
                L6_2 = L4_2.x
                L7_2 = L4_2.y
                L8_2 = L4_2.z
                L8_2 = L8_2 + 0.05
                L9_2 = L
                L10_2 = "~w~[~g~{OPEK_KEYBIND}~w~] to open [~g~{PICKUP_KEYBIND}~w~] to pickup the bag"
                L9_2 = L9_2(L10_2)
                L10_2 = L9_2
                L9_2 = L9_2.gsub
                L11_2 = "{OPEK_KEYBIND}"
                L12_2 = Config
                L12_2 = L12_2.keybinds
                L12_2 = L12_2.open
                L9_2 = L9_2(L10_2, L11_2, L12_2)
                L10_2 = L9_2
                L9_2 = L9_2.gsub
                L11_2 = "{PICKUP_KEYBIND}"
                L12_2 = Config
                L12_2 = L12_2.keybinds
                L12_2 = L12_2.pickup
                L9_2 = L9_2(L10_2, L11_2, L12_2)
                L10_2 = 4
                L11_2 = 0.04
                L12_2 = 0.04
                L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
                L5_2 = Config
                L5_2 = L5_2.allowBagSharing
                if L5_2 then
                  L5_2 = public
                  if L5_2 then
                    L5_2 = Draw3DText
                    L6_2 = L4_2.x
                    L7_2 = L4_2.y
                    L8_2 = L4_2.z
                    L8_2 = L8_2 - 0.05
                    L9_2 = L
                    L10_2 = "~w~Press [~g~{PUBLIC_KEYBIND}~w~] to open make the bag ~r~private"
                    L9_2 = L9_2(L10_2)
                    L10_2 = L9_2
                    L9_2 = L9_2.gsub
                    L11_2 = "{PUBLIC_KEYBIND}"
                    L12_2 = Config
                    L12_2 = L12_2.keybinds
                    L12_2 = L12_2.public
                    L9_2 = L9_2(L10_2, L11_2, L12_2)
                    L10_2 = 4
                    L11_2 = 0.0375
                    L12_2 = 0.0375
                    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
                  else
                    L5_2 = Draw3DText
                    L6_2 = L4_2.x
                    L7_2 = L4_2.y
                    L8_2 = L4_2.z
                    L8_2 = L8_2 - 0.05
                    L9_2 = L
                    L10_2 = "~w~Press [~g~{PUBLIC_KEYBIND}~w~] to open make the bag ~g~public"
                    L9_2 = L9_2(L10_2)
                    L10_2 = L9_2
                    L9_2 = L9_2.gsub
                    L11_2 = "{PUBLIC_KEYBIND}"
                    L12_2 = Config
                    L12_2 = L12_2.keybinds
                    L12_2 = L12_2.public
                    L9_2 = L9_2(L10_2, L11_2, L12_2)
                    L10_2 = 4
                    L11_2 = 0.0375
                    L12_2 = 0.0375
                    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
                  end
                  L5_2 = IsControlJustReleased
                  L6_2 = 0
                  L7_2 = Config
                  L7_2 = L7_2.keybinds
                  L8_2 = L7_2.public
                  L7_2 = L0_1
                  L7_2 = L7_2[L8_2]
                  L5_2 = L5_2(L6_2, L7_2)
                  if L5_2 then
                    L5_2 = public
                    L5_2 = not L5_2
                    public = L5_2
                    L5_2 = SetBagState
                    L6_2 = "public"
                    L7_2 = public
                    L8_2 = L3_2
                    L5_2(L6_2, L7_2, L8_2)
                  end
                end
                L5_2 = IsControlJustReleased
                L6_2 = 0
                L7_2 = Config
                L7_2 = L7_2.keybinds
                L8_2 = L7_2.pickup
                L7_2 = L0_1
                L7_2 = L7_2[L8_2]
                L5_2 = L5_2(L6_2, L7_2)
                if L5_2 then
                  L5_2 = PickupBag
                  L6_2 = Entity
                  L7_2 = L3_2
                  L6_2 = L6_2(L7_2)
                  L6_2 = L6_2.state
                  L6_2 = L6_2.isItem
                  L7_2 = L3_2
                  L5_2(L6_2, L7_2)
                end
              else
                L5_2 = Draw3DText
                L6_2 = L4_2.x
                L7_2 = L4_2.y
                L8_2 = L4_2.z
                L8_2 = L8_2 + 0.05
                L9_2 = L
                L10_2 = "~w~[~g~{OPEN_KEYBIND}~w~] to open the bag"
                L9_2 = L9_2(L10_2)
                L10_2 = L9_2
                L9_2 = L9_2.gsub
                L11_2 = "{OPEN_KEYBIND}"
                L12_2 = Config
                L12_2 = L12_2.keybinds
                L12_2 = L12_2.open
                L9_2 = L9_2(L10_2, L11_2, L12_2)
                L10_2 = 4
                L11_2 = 0.04
                L12_2 = 0.04
                L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
              end
              L5_2 = IsControlJustReleased
              L6_2 = 0
              L7_2 = Config
              L7_2 = L7_2.keybinds
              L8_2 = L7_2.open
              L7_2 = L0_1
              L7_2 = L7_2[L8_2]
              L5_2 = L5_2(L6_2, L7_2)
              if L5_2 then
                L5_2 = Entity
                L6_2 = L3_2
                L5_2 = L5_2(L6_2)
                L5_2 = L5_2.state
                L5_2 = L5_2.owner
                L6_2 = GetPlayerServerId
                L7_2 = PlayerId
                L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2()
                L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
                if L5_2 == L6_2 then
                  L5_2 = OpenBag
                  L6_2 = false
                  L7_2 = Entity
                  L8_2 = L3_2
                  L7_2 = L7_2(L8_2)
                  L7_2 = L7_2.state
                  L7_2 = L7_2.isItem
                  L5_2(L6_2, L7_2)
                else
                  L5_2 = OpenBag
                  L6_2 = Entity
                  L7_2 = L3_2
                  L6_2 = L6_2(L7_2)
                  L6_2 = L6_2.state
                  L6_2 = L6_2.owner
                  L7_2 = Entity
                  L8_2 = L3_2
                  L7_2 = L7_2(L8_2)
                  L7_2 = L7_2.state
                  L7_2 = L7_2.isItem
                  L5_2(L6_2, L7_2)
                end
              end
            end
          end
        end
      else
        L0_2 = 2000
      end
      L2_2 = Citizen
      L2_2 = L2_2.Wait
      L3_2 = L0_2
      L2_2(L3_2)
    end
  end
  L1_1(L2_1)
end
