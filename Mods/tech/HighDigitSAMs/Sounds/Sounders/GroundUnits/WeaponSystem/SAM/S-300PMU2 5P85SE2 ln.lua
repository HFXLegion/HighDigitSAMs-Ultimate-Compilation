dofile("Tools.lua")
dofile("GroundUnits/WeaponSystem/Tools/weapons.lua")

dofile("GroundUnits/WeaponSystem/Tools/MissileSounds.lua")

S_300PMU2_5P85SE2_ln_weapons = weapons:new()

S_300PMU2_5P85SE2_ln_weapons:addTurret(1, "GndTech/TurretRotation_Electric")
S_300PMU2_5P85SE2_ln_weapons:addLauncher(1, 1, ship_rif)