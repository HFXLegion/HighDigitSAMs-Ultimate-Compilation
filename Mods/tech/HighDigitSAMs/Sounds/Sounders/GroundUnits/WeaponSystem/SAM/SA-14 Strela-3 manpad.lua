dofile("Tools.lua")
dofile("GroundUnits/WeaponSystem/Tools/weapons.lua")

dofile("GroundUnits/WeaponSystem/Tools/MissileSounds.lua")

SA_14_Strela_3_manpad_weapons = weapons:new()

SA_14_Strela_3_manpad_weapons:addLauncher(1, 1, stinger_manpad)