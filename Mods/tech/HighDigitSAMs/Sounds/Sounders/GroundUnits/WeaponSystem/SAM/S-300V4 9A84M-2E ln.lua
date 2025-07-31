dofile("Tools.lua")
dofile("GroundUnits/WeaponSystem/Tools/weapons.lua")

dofile("GroundUnits/WeaponSystem/Tools/MissileSounds.lua")

S_300PS_5P65_1_weapons = weapons:new()

S_300PS_5P65_1_weapons:addTurret(1, "GndTech/TurretRotation_Electric")
S_300PS_5P65_1_weapons:addLauncher(1, 1, ship_rif)