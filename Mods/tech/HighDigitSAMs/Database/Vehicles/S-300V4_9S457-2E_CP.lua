GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.MAZ543M);

GT.visual.shape = "ERO_9S457ME"
GT.visual.shape_dstr = "ERO_9S457ME_D"

GT.CustomAimPoint = {0,1.5,0}

--chassis
GT.swing_on_run = false


--Burning after hit
GT.visual.fire_size = 0.7 --relative burning size
GT.visual.fire_pos[1] = 0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900 --burning time (seconds)

GT.sensor = {};
GT.sensor.max_range_finding_target = 400000;
GT.sensor.min_range_finding_target = 1;
GT.sensor.max_alt_finding_target = 80000;
GT.sensor.height = 8.68;

GT.WS = {};
GT.WS.maxTargetDetectionRange = 400000;

GT.Name = "S-300V4 9S457-2E cp"
GT.DisplayName = _('SAM SA-23 S-300V4 "Gladiator/Giant" C2')
GT.DisplayNameShort = _('SA-23 (S-300V4) CP')
GT.Rate = 20

GT.Sensors = {RADAR = {"S-300V4 9S32M-1E tr"}};

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000046";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_NoWeapon,wsType_GenericVehicle,
				"SAM CC",
				"CustomAimPoint",
				};
GT.category = "Air Defence";
GT.tags = { "Air Defence", "Command & Control" };
GT.Countries = {"Egypt", "Russia"}