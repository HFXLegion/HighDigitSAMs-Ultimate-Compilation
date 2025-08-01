dofile("Tools.lua")
dofile("GroundUnits/WeaponSystem/Tools/weapons.lua")

dofile("GroundUnits/WeaponSystem/Tools/MissileSounds.lua")

Buk_M1_2_LN_weapons = weapons:new()

Buk_M1_2_LN_weapons:addTurret(1, "GndTech/TurretRotation")
Buk_M1_2_LN_weapons:addLauncher(1, 1, _9A310M1)