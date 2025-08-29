GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle)
set_recursive_metatable(GT.chassis, GT_t.CH_t.MAZ543M);

GT.visual.shape = "ERO_54K6_CP"
GT.visual.shape_dstr = "ERO_54K6_CP_D"

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
GT.sensor.max_range_finding_target = 160000;
GT.sensor.min_range_finding_target = 2000;
GT.sensor.max_alt_finding_target = 27000;
GT.sensor.height = 8.68;

GT.WS = {};
GT.WS.maxTargetDetectionRange = 160000;

GT.Name = "S-300PS SA-10B 54K6 cp"
GT.DisplayName = _('SAM SA-10B S-300PS "Grumble" C2')
GT.DisplayNameShort = _('SA-10B CP')
GT.Rate = 20

--GT.Sensors = {RADAR = {"S-300PS 40B6M tr"}};
GT.Sensors = {RADAR = {"S-300PS 30N6 tr"}};

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000046";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_NoWeapon,KP_54K6,
				"SAM CC",
				"CustomAimPoint",
				};
GT.category = "Air Defence";
GT.tags = { "Air Defence", "Command & Control" };
GT.Countries = {"Russia", "Belarus", "Kazakhstan", "Ukraine", "Croatia"}
