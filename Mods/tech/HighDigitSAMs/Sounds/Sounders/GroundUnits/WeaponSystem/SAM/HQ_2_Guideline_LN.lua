dofile("Tools.lua")
dofile("GroundUnits/WeaponSystem/Tools/weapons.lua")

dofile("GroundUnits/WeaponSystem/Tools/MissileSounds.lua")

HQ_2_Guideline_weapons = weapons:new()

HQ_2_Guideline_weapons:addTurret(1, "GndTech/TurretRotation")
HQ_2_Guideline_weapons:addLauncher(1, 1, _9A310M1)