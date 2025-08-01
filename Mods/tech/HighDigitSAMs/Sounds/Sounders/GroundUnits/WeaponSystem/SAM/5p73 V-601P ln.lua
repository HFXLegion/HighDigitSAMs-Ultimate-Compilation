dofile("Tools.lua")
dofile("GroundUnits/WeaponSystem/Tools/weapons.lua")

dofile("GroundUnits/WeaponSystem/Tools/MissileSounds.lua")

L_5P73_V_601P_LN_weapons = weapons:new()

L_5P73_V_601P_LN_weapons:addTurret(1, "GndTech/TurretRotation")
L_5P73_V_601P_LN_weapons:addLauncher(1, 1, _9A330)