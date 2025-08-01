dofile("Tools.lua")
dofile("GroundUnits/WeaponSystem/Tools/weapons.lua")

dofile("GroundUnits/WeaponSystem/Tools/MissileSounds.lua")

SA_24_Igla_S_manpad_weapons = weapons:new()

SA_24_Igla_S_manpad_weapons:addLauncher(1, 1, stinger_manpad)