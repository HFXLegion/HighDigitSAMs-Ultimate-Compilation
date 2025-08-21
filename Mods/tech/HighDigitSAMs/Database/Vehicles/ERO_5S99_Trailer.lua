GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);

GT.visual.shape = "ERO_5S99_Trailer"
GT.visual.shape_dstr = "ERO_5S99_Trailer_D"


GT.swing_on_run = false
GT.r_max = 0.46

--Burning after hit
GT.visual.fire_size = 0.8 --relative burning size
GT.visual.fire_pos[1] = -2.0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1000 --burning time (seconds)

GT.Name = "ERO_5S99_Trailer"
GT.DisplayName = _("ERO_5S99_Trailer")
GT.Rate = 20

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000046";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,
				"Trucks",
				"SAM CC",
				};
GT.category = "Air Defence";