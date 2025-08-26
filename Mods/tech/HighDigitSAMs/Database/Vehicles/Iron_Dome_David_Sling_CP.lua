GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.M818);

GT.visual.shape = "patriot-kp"
GT.visual.shape_dstr = "Patriot-kp_p_1"

GT.swing_on_run = false

GT.r_max = 0.46

--Burning after hit
GT.visual.fire_size = 0.8 --relative burning size
GT.visual.fire_pos[1] = -2.0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1000 --burning time (seconds)

GT.visual.min_time_agony       = 5
GT.visual.max_time_agony       = 120
GT.visual.agony_explosion_size = 5

GT.visual.IR = { coeffs = {GT_t.IR_COEFFS_ENGINE_APC, GT_t.IR_COEFFS_WHEELS_Truck, {0.0, 0.0}, GT_t.IR_COEFFS_BODY, {0.1, 0.1/1000}}}

GT.toggle_alarm_state_interval = 10.0;

GT.sensor = {};
GT.sensor.max_range_finding_target = 750000.0;
GT.sensor.min_range_finding_target = 1;
GT.sensor.max_alt_finding_target = 30500.0;
GT.sensor.height = 5.0;

GT.WS = {};
GT.WS.maxTargetDetectionRange = 750000;

GT.Name = "Iron_Dome_David_Sling_CP"
GT.DisplayName = _("SAM IDF Iron Dome/David's Sling C2")
GT.Rate = 10

GT.EPLRS = true

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000046";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_NoWeapon,WSTYPE_PLACEHOLDER,
				"Trucks",
				"SAM CC",
				"Datalink",
				};
				
GT.category = "Air Defence";
GT.tags = { "Air Defence", "Command & Control" };

GT.Countries = {"Israel"};

add_surface_unit(GT)