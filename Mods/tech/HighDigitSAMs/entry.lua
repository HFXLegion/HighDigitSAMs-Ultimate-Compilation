declare_plugin("HighDigitSAMs",
{
installed 	 	  = true,
displayName   = _("High Digit SAMs - Ultimate HFX's compilation"),
shortName	  =   "HighDigitSAMs - Ultimate Compilation",
state		 	  = "installed",
developerName	  = "E. 'Wiki' Crouch, ERO, LetMePickThat, Fox, BlackFalco, HFX and others",
version		 	  = "1.4.3",
Skins	=
	{
		{
			name	= "HighDigitSAMs",
			dir		= "Theme"
		},
	},
info		  =    _("Adds various modern and historical air defense units to DCS world."),
encyclopedia_path = current_mod_path .. '/Encyclopedia',
})

-- Initialisation ultra-sécurisée sans dépendances
local function safe_setmetatable(t, meta)
    if _G.setmetatable then
        return setmetatable(t, meta)
    end
    return t
end

-- Initialisation GT_t simplifiée et robuste
GT_t = GT_t or {}
GT_t.LN_t = GT_t.LN_t or {}
GT_t.WSN_t = GT_t.WSN_t or {}
GT_t.WSN_t[0] = GT_t.WSN_t[0] or {
    type = 0,
    delta_distance = 0.0,
    delta_azimuth = 0.0,
    delta_elevation = 0.0
}

mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_texture_path	(current_mod_path ..  "/Textures")


local function vehicle_file(f)
	if dofile(current_mod_path..f) then
		error("can't load file "..f)
		return
	end
	if(GT) then
		GT.shape_table_data = 
		{
			{
				file  	    = GT.visual.shape;
				username    = GT.Name;
				desrt       = GT.visual.shape_dstr;
			    classname 	= "lLandVehicle";
				positioning = "BYNORMAL";
				life		= GT.life or 5;
			},
			{
				name  = GT.visual.shape_dstr;
				file  = GT.visual.shape_dstr;
			},
		}
		add_surface_unit(GT)
		GT = nil;
	else
		error("GT empty in file "..f)
	end;
end

local function weapon_file(f)
	if dofile(current_mod_path..f) then
		error("can't load file "..f)
		return
	end
end

-- Sensors
dofile(current_mod_path.."/Database/Sensors/sensors.lua")

-- Static objects
dofile(current_mod_path..'/Database/PackObjects/Bunkers.lua')
dofile(current_mod_path..'/Database/PackObjects/Objects.lua')
dofile(current_mod_path.."/Database/PackObjects/Revetments.lua")



vehicle_file("/Database/Vehicles/radar/EWR_P_37.lua")
vehicle_file("/Database/Vehicles/radar/EWR_55Zh6U.lua")
vehicle_file("/Database/Vehicles/radar/EWR_1L119.lua")
vehicle_file("/Database/Vehicles/radar/EWR_GenericEW.lua")
vehicle_file("/Database/Vehicles/ERO_SA2_SNR75.lua")
vehicle_file("/Database/Vehicles/ERO_SA2_Trailer.lua")
vehicle_file("/Database/Vehicles/ERO_5S99_Trailer.lua")
vehicle_file("/Database/Vehicles/ERO_Toyota_ZU23.lua")
vehicle_file("/Database/Vehicles/ERO_Toyota_ZU23_Armored.lua")
--vehicle_file("/Database/Vehicles/ERO_Toyota_ZPU2.lua")
--vehicle_file("/Database/Vehicles/ERO_Toyota_ZPU2_Armored.lua")
vehicle_file("/Database/Vehicles/ERO_Toyota.lua")
vehicle_file("/Database/Vehicles/ERO_ZU23_Insurgent.lua")


-- Weapon files
weapon_file("/Database/Weapons/40N6E.lua")
weapon_file("/Database/Weapons/48N6.lua")
weapon_file("/Database/Weapons/48N6E2.lua")
weapon_file("/Database/Weapons/48N6DM.lua")
weapon_file("/Database/Weapons/5V55K.lua")
weapon_file("/Database/Weapons/5V55R.lua")
weapon_file("/Database/Weapons/5V55RUD.lua")
weapon_file("/Database/Weapons/9M317.lua")
weapon_file("/Database/Weapons/5V23.lua")
weapon_file("/Database/Weapons/5V27.lua")
weapon_file("/Database/Weapons/HQ2.lua")
weapon_file("/Database/Weapons/9M83M.lua")
weapon_file("/Database/Weapons/9M82M.lua")
weapon_file("/Database/Weapons/9M82.lua")
weapon_file("/Database/Weapons/9M83.lua")
weapon_file("/Database/Weapons/9M342.lua")
weapon_file("/Database/Weapons/9M36.lua")
weapon_file("/Database/Weapons/9M32.lua")
weapon_file("/Database/Weapons/9M32M.lua")
weapon_file("/Database/Weapons/9M83ME.lua")
weapon_file("/Database/Weapons/9M82MDE.lua")
weapon_file("/Database/Weapons/9M96E2.lua")
weapon_file("/Database/Weapons/ASTER-15.lua")
weapon_file("/Database/Weapons/ASTER-30-1.lua")
weapon_file("/Database/Weapons/ASTER-30-1NT.lua")
weapon_file("/Database/Weapons/ASTER-30-2.lua")
weapon_file("/Database/Weapons/Pantsir-SM_weapons.lua")
weapon_file("/Database/Weapons/Tamir.lua")
weapon_file("/Database/Weapons/Stunner.lua")

-- IDF Assets Pack

dofile(current_mod_path..'/Database/Vehicles/Iron_Dome_David_Sling_CP.lua')
dofile(current_mod_path..'/Database/Vehicles/IRON_DOME_LN.lua')
dofile(current_mod_path..'/Database/Vehicles/DAVID_SLING_LN.lua')
dofile(current_mod_path..'/Database/Vehicles/radar/ELM2084_MMR_AD_RT.lua')
dofile(current_mod_path..'/Database/Vehicles/radar/ELM2084_MMR_AD_SC.lua')
dofile(current_mod_path..'/Database/Vehicles/radar/ELM2084_MMR_WLR.lua')

-- SAMP/T

--dofile(current_mod_path..'/Database/Vehicles/SAMPT_MLT.lua')
dofile(current_mod_path..'/Database/Vehicles/SAMPT_MLT_Blk1.lua')
dofile(current_mod_path..'/Database/Vehicles/SAMPT_MLT_Blk1NT.lua')
--dofile(current_mod_path..'/Database/Vehicles/SAMPT_MLT_Blk2.lua')
dofile(current_mod_path..'/Database/Vehicles/radar/SAMPT_MRI_ARABEL.lua')
dofile(current_mod_path..'/Database/Vehicles/radar/SAMPT_MRI_GF300.lua')
dofile(current_mod_path..'/Database/Vehicles/SAMPT_MC.lua')
dofile(current_mod_path..'/Database/Vehicles/SAMPT_ME.lua')
dofile(current_mod_path..'/Database/Vehicles/SAMPT_MGE.lua')

-- S-300PT/PS

vehicle_file("/Database/Vehicles/S-300PT_5P85_1_LN.lua")
vehicle_file("/Database/Vehicles/S-300PS_5P85DE_LN.lua")
vehicle_file("/Database/Vehicles/S-300PS_5P85SE_LN.lua")
vehicle_file("/Database/Vehicles/S-300PS_5P85SU_LN.lua")
vehicle_file("/Database/Vehicles/S-300PS_54K6_CP.lua")
vehicle_file("/Database/Vehicles/radar/S-300PS_30N6_TR_Mast.lua")
vehicle_file("/Database/Vehicles/radar/S-300PS_30N6_TR_Truck.lua")
vehicle_file("/Database/Vehicles/radar/S-300PS_64N6E_SR_Truck.lua")
vehicle_file("/Database/Vehicles/radar/S-300PS_76N6_SR.lua")

--S-300V

vehicle_file("/Database/Vehicles/S-300V CP 9S457.lua")
vehicle_file("/Database/Vehicles/9A82 S-300V LN.lua")
vehicle_file("/Database/Vehicles/9A83 S-300V LN.lua")
vehicle_file("/Database/Vehicles/radar/9S15 S-300V SR.lua")
vehicle_file("/Database/Vehicles/radar/9S19 S-300V SR.lua")
vehicle_file("/Database/Vehicles/radar/9S32 S-300V TR.lua")

--S-300PMU1

vehicle_file("/Database/Vehicles/S-300PMU1 CP 54K6.lua")
vehicle_file("/Database/Vehicles/radar/40B6M S-300PMU1 TR.lua")
vehicle_file("/Database/Vehicles/radar/30N6E S-300PMU1 TR.lua")
vehicle_file("/Database/Vehicles/radar/40B6MD S-300PMU1 SR.lua")
vehicle_file("/Database/Vehicles/radar/64H6E S-300PMU1 SR.lua")
vehicle_file("/Database/Vehicles/5P85CE S-300PMU1 LN.lua")
vehicle_file("/Database/Vehicles/5P85DE S-300PMU1 LN.lua")

--S-300PMU2

vehicle_file("/Database/Vehicles/S-300PMU2 CP 54K6E2.lua")
vehicle_file("/Database/Vehicles/radar/40B6M S-300PMU2 TR.lua")
vehicle_file("/Database/Vehicles/radar/92H6E S-300PMU2 TR.lua")
vehicle_file("/Database/Vehicles/radar/64H6E2 S-300PMU2 SR.lua")
vehicle_file("/Database/Vehicles/5P85SE2 S-300PMU2 LN.lua")


--S-300VM

vehicle_file("/Database/Vehicles/S-300VM CP 9S457ME.lua")
vehicle_file("/Database/Vehicles/radar/9S15M2 S-300VM SR.lua")
vehicle_file("/Database/Vehicles/radar/9S19M2 S-300VM SR.lua")
vehicle_file("/Database/Vehicles/radar/9S32ME S-300VM TR.lua")
vehicle_file("/Database/Vehicles/9A83ME S-300VM LN.lua")
vehicle_file("/Database/Vehicles/9A82ME S-300VM LN.lua")


-- S-400

vehicle_file("/Database/Vehicles/S-400_51P6A_LN.lua")
vehicle_file("/Database/Vehicles/S-400_51P6A_V2_LN.lua")
vehicle_file("/Database/Vehicles/S-400_51P6A_40N6E_LN.lua")
vehicle_file("/Database/Vehicles/S-400_55K6_CP.lua")
vehicle_file("/Database/Vehicles/radar/S-400_96L6E_SR.lua")
vehicle_file("/Database/Vehicles/radar/S-400_96L6E_Mast_SR.lua")
vehicle_file("/Database/Vehicles/radar/S-400_92H6E_TR.lua")
vehicle_file("/Database/Vehicles/radar/S-400_91N6E_SR.lua")
vehicle_file("/Database/Vehicles/radar/S-400_92H6E_Mast_TR.lua")

-- S-300V4

vehicle_file("/Database/Vehicles/radar/S-300V4_9S32M-1E_TR.lua")
vehicle_file("/Database/Vehicles/radar/S-300V4_9S19M-1E_SR.lua")
vehicle_file("/Database/Vehicles/radar/S-300V4_9S15MDE_SR.lua")
vehicle_file("/Database/Vehicles/S-300V4_9A82M-2E_LN.lua")
vehicle_file("/Database/Vehicles/S-300V4_9A83M-2E_LN.lua")
vehicle_file("/Database/Vehicles/S-300V4_9A84M-2E_LN.lua")
vehicle_file("/Database/Vehicles/S-300V4_9S457-2E_CP.lua")

-- Pantsir-SM

vehicle_file("/Database/Vehicles/PANTSIR-SM.lua")

--Buk

vehicle_file("/Database/Vehicles/9A310M1-2 BUK LN.lua")

--SA-2/HQ-2

vehicle_file("/Database/Vehicles/V759 Launcher.lua")
vehicle_file("/Database/Vehicles/HQ-2 Launcher.lua")
vehicle_file("/Database/Vehicles/5P73 V-601P LN.lua")

--Manpads

vehicle_file("/Database/IFV/Strela-2.lua")
vehicle_file("/Database/IFV/Strela-2M.lua")
vehicle_file("/Database/IFV/Strela-3.lua")
--vehicle_file("/Database/IFV/iglaS.lua")

-- Misc units

vehicle_file("/Database/Vehicles/Polyana-D4M1.lua")
vehicle_file("/Database/Vehicles/radar/34Ya6E Gazetchik E decoy.lua")

__LN = nil;

plugin_done()