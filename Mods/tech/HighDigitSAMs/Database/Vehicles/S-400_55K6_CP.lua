
GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle);
set_recursive_metatable(GT.chassis, GT_t.CH_t.MAZ543M);

GT.visual.shape = "ERO_55K6_CP"
GT.visual.shape_dstr = "ERO_55K6_CP_D"

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
GT.sensor.max_range_finding_target = 520000;
GT.sensor.min_range_finding_target = 1000;
GT.sensor.max_alt_finding_target = 90000;
GT.sensor.height = 8.68;

GT.EPLRS = true;

GT.WS = {};
GT.WS.maxTargetDetectionRange = 520000;

GT.Name = "S-400 55K6 cp"
GT.DisplayName = _('SAM SA-21 S-400 "Growler" C2')
GT.DisplayNameShort = _('SA-21 CP')
GT.Rate = 20

GT.Sensors = {RADAR = {"S-300PMU2 92H6E tr"}};

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000046";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_NoWeapon,KP_54K6,
				"SAM CC",
				"CustomAimPoint",
                "Datalink",
				};
GT.category = "Air Defence";
GT.tags = { "Air Defence", "Command & Control" };
GT.Countries = {"Russia", "Turkey", "Algeria", "Belarus", "India", "China"}
