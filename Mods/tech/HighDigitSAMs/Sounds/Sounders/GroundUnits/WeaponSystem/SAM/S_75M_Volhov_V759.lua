dofile("Tools.lua")
dofile("GroundUnits/WeaponSystem/Tools/weapons.lua")

dofile("GroundUnits/WeaponSystem/Tools/MissileSounds.lua")

S_75M_Volhov_V759_weapons = weapons:new()

S_75M_Volhov_V759_weapons:addTurret(1, "GndTech/TurretRotation")
S_75M_Volhov_V759_weapons:addLauncher(1, 1, _9A310M1)