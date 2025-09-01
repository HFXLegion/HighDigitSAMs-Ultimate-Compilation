mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_texture_path  (current_mod_path.."/Textures")

local function add_structure(f)
	if(f) then
		f.shape_table_data = 
		{
			{
				file  	    = f.ShapeName,
				life		= f.Life,
				username    = f.Name,
				desrt       = f.ShapeNameDestr or "self",
			    classname 	= f.classname   or "lLandVehicle",
				positioning = f.positioning or "BYNORMAL" -- {"BYNORMAL", "ONLYHEIGTH", "BY_XZ", "ADD_HEIGTH"}
			}
		}
		if f.ShapeNameDestr then
			f.shape_table_data[#f.shape_table_data + 1] = 
			{
				name  = f.ShapeNameDestr,
				file  = f.ShapeNameDestr,	
			}
		end
		
		
		f.mapclasskey = MapClassKey or "P0091000076";
		f.category = "Fortification";
		f.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort, "Trucks", "SAM CC",};
		
		add_surface_unit(f)
		GT = nil;
	else
		error("Can't add structure")
	end;
end


add_structure({
Name 		 =  "ERO_Hesco_Barrier_Tower2",
DisplayName  = _("ERO Hesco Barrier Tower (stackable)"),
ShapeName	 =   "ERO_Hesco_Barrier_Tower2",
ShapeNameDestr = "ERO_Hesco_Barrier_Tower2",
Life		 =  10,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

add_structure({
Name 		 =  "ERO_Revetment_D",
DisplayName  = _("ERO Revetment D"),
ShapeName	 =   "ERO_Revetment_D",
ShapeNameDestr = "ERO_Revetment_D",
Life		 =  50,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

add_structure({
Name 		 =  "ERO_Revetment_Platform1",
DisplayName  = _("ERO Revetment Platform A"),
ShapeName	 =   "ERO_Revetment_Platform1",
ShapeNameDestr = "ERO_Revetment_Platform1",
Life		 =  50,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

add_structure({
Name 		 =  "ERO_Revetment_Platform2",
DisplayName  = _("ERO Revetment Platform B"),
ShapeName	 =   "ERO_Revetment_Platform2",
ShapeNameDestr = "ERO_Revetment_Platform2",
Life		 =  50,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

add_structure({
Name 		 =  "ERO_Revetment_SAM_D_elevated",
DisplayName  = _("ERO Revetment D Elevated"),
ShapeName	 =   "ERO_Revetment_SAM_D_elevated",
ShapeNameDestr = "ERO_Revetment_SAM_D_elevated",
Life		 =  50,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

add_structure({
Name 		 =  "ERO_Revetment_SAM_O",
DisplayName  = _("ERO Revetment O"),
ShapeName	 =   "ERO_Revetment_SAM_O",
ShapeNameDestr = "ERO_Revetment_SAM_O",
Life		 =  50,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

add_structure({
Name 		 =  "ERO_Revetment_SAM_O2",
DisplayName  = _("ERO Revetment O2"),
ShapeName	 =   "ERO_Revetment_SAM_O2",
ShapeNameDestr = "ERO_Revetment_SAM_O2",
Life		 =  50,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

add_structure({
Name 		 =  "ERO_Revetment_SAM_O3",
DisplayName  = _("ERO Revetment O3"),
ShapeName	 =   "ERO_Revetment_SAM_O3",
ShapeNameDestr = "ERO_Revetment_SAM_O3",
Life		 =  50,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

add_structure({
Name 		 =  "ERO_Revetment_SAM_O4",
DisplayName  = _("ERO Revetment O4"),
ShapeName	 =   "ERO_Revetment_SAM_O4",
ShapeNameDestr = "ERO_Revetment_SAM_O4",
Life		 =  50,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

add_structure({
Name 		 =  "ERO_Revetment_SAM_OC_elevated",
DisplayName  = _("ERO Revetment O Elevated"),
ShapeName	 =   "ERO_Revetment_SAM_OC_elevated",
ShapeNameDestr = "ERO_Revetment_SAM_OC_elevated",
Life		 =  50,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

add_structure({
Name 		 =  "ERO_Revetment_SAM_OC2_elevated",
DisplayName  = _("ERO Revetment SA-2 Elevated"),
ShapeName	 =   "ERO_Revetment_SAM_OC2_elevated",
ShapeNameDestr = "ERO_Revetment_SAM_OC2_elevated",
Life		 =  50,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

add_structure({
Name 		 =  "ERO_Revetment_SAM_U",
DisplayName  = _("ERO Revetment U2"),
ShapeName	 =   "ERO_Revetment_SAM_U",
ShapeNameDestr = "ERO_Revetment_SAM_U",
Life		 =  50,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

add_structure({
Name 		 =  "ERO_Revetment_SAM_UC",
DisplayName  = _("ERO Revetment U3"),
ShapeName	 =   "ERO_Revetment_SAM_UC",
ShapeNameDestr = "ERO_Revetment_SAM_UC",
Life		 =  50,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

add_structure({
Name 		 =  "ERO_Revetment_Tank_U",
DisplayName  = _("ERO Revetment Tank U2"),
ShapeName	 =   "ERO_Revetment_Tank_U",
ShapeNameDestr = "ERO_Revetment_Tank_U",
Life		 =  50,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

add_structure({
Name 		 =  "ERO Warsaw_SAM_Platform",
DisplayName  = _("ERO Warsaw_SAM_Platform"),
ShapeName	 =   "Warsaw_SAM_Platform",
ShapeNameDestr = "Warsaw_SAM_Platform_d",
Life		 =  50,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

add_structure({
Name 		 =  "ERO_Revetment_Tank_U1",
DisplayName  = _("ERO Revetment Tank U1"),
ShapeName	 =   "ERO_Revetment_Tank_U1",
ShapeNameDestr = "ERO_Revetment_Tank_U1",
Life		 =  50,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

add_structure({
Name 		 =  "ERO_Revetment_Tank_D2",
DisplayName  = _("ERO Revetment Tank D2"),
ShapeName	 =   "Revetment_SAM-D2_elev",
ShapeNameDestr = "Revetment_SAM-D2_elev",
Life		 =  50,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

add_structure({
Name 		 =  "ERO_SAM_Earth_Mound",
DisplayName  = _("ERO_SAM_Earth_Mound"),
ShapeName	 =   "ERO_SAM_Earth_Mound",
ShapeNameDestr = "ERO_SAM_Earth_Mound",
Life		 =  50,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

add_structure({
Name 		 =  "ERO_SAM_OC_Bunker",
DisplayName  = _("ERO_SAM_OC_Bunker"),
ShapeName	 =   "ERO_Revetment_SAM_OC_Bunker",
ShapeNameDestr = "ERO_Revetment_SAM_OC_Bunker",
Life		 =  50,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

add_structure({
Name 		 =  "ERO_H",
DisplayName  = _("ERO_H"),
ShapeName	 =   "ERO_H",
ShapeNameDestr = "ERO_H",
Life		 =  2500,
Rate		 =  100,
category     =  'Heliport',
SeaObject    = 	false,
isPutToWater =  false,
positioning  = 	"BYNORMAL",
classname    =  "lHeliport",
numParking   =  1,
})

add_structure({
Name 		 =  "ERO_H_Simple",
DisplayName  = _("ERO_H_Simple"),
ShapeName	 =   "ERO_H_Simple",
ShapeNameDestr = "ERO_H_Simple",
Life		 =  2500,
Rate		 =  100,
category     =  'Heliport',
SeaObject    = 	false,
isPutToWater =  false,
positioning  = 	"BYNORMAL",
classname    =  "lHeliport",
numParking   =  1,
})

add_structure({
Name 		 =  "ERO_H_Hospital",
DisplayName  = _("ERO_H_Hospital"),
ShapeName	 =   "ERO_H_Hospital",
ShapeNameDestr = "ERO_H_Hospital",
Life		 =  2500,
Rate		 =  100,
category     =  'Heliport',
SeaObject    = 	false,
isPutToWater =  false,
positioning  = 	"BYNORMAL",
classname    =  "lHeliport",
numParking   =  1,
})

add_structure({
Name 		 =  "ERO_H_Triangle",
DisplayName  = _("ERO_H_Triangle"),
ShapeName	 =   "ERO_H_Triangle",
ShapeNameDestr = "ERO_H_Triangle",
Life		 =  2500,
Rate		 =  100,
category     =  'Heliport',
SeaObject    = 	false,
isPutToWater =  false,
positioning  = 	"BYNORMAL",
classname    =  "lHeliport",
numParking   =  1,
})


add_structure({
Name 		 =  "ERO_Heli_Shelter",
DisplayName  = _("ERO_Heli_Shelter"),
ShapeName	 =   "ERO_Heli_Shelter",
ShapeNameDestr = "ERO_Heli_Shelter",
Life		 =  2500,
Rate		 =  100,
category     =  'Heliport',
SeaObject    = 	false,
isPutToWater =  false,
positioning  = 	"BYNORMAL",
classname    =  "lHeliport",
numParking   =  1,
})

add_structure({
Name 		 =  "ERO_AH-64_ammo",
DisplayName  = _("ERO_AH-64_ammo"),
ShapeName	 =   "ERO_AH-64_ammo",
ShapeNameDestr = "ERO_AH-64_ammo",
Life		 =  50,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})


add_structure({
Name 		 =  "ERO_Revetment_SAM_Straight",
DisplayName  = _("ERO_Revetment_SAM_Straight"),
ShapeName	 =   "ERO_Revetment_SAM_Straight",
ShapeNameDestr = "ERO_Revetment_SAM_Straight",
Life		 =  50,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})


add_structure({
Name 		 =  "ERO_Revetment_SAM_90deg",
DisplayName  = _("ERO_Revetment_SAM_90deg"),
ShapeName	 =   "ERO_Revetment_SAM_90deg",
ShapeNameDestr = "ERO_Revetment_SAM_90deg",
Life		 =  50,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})


add_structure({
Name 		 =  "ERO_Revetment_SAM_45deg",
DisplayName  = _("ERO_Revetment_SAM_45deg"),
ShapeName	 =   "ERO_Revetment_SAM_45deg",
ShapeNameDestr = "ERO_Revetment_SAM_45deg",
Life		 =  50,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})


add_structure({
Name 		 =  "ERO_Revetment_SAM_Short",
DisplayName  = _("ERO_Revetment_SAM_Short"),
ShapeName	 =   "ERO_Revetment_SAM_Short",
ShapeNameDestr = "ERO_Revetment_SAM_Short",
Life		 =  50,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})


--[[add_structure({
Name 		 =  "",
DisplayName  = _(""),
ShapeName	 =   "",
ShapeNameDestr = "",
Life		 =  50,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})--]]