GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_stationary);
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 5;

GT.visual.shape = "ERO_P-37";
GT.visual.shape_dstr = "ERO_P-37_D";
--GT.visual.fire_pos[2] = 1;

GT.sensor = {};
GT.sensor.max_range_finding_target = 350000;
GT.sensor.min_range_finding_target = 0;
GT.sensor.max_alt_finding_target = 30000;
GT.sensor.height = 10;

GT.animation_arguments.locator_rotation = 1;
GT.radar_rotation_period = 20.0;
GT.snd.radarRotation = "GndTech/RadarRotation";
GT.defaultStartAlarmState = GT_t.START_ALARM_STATES.RED;

GT.CustomAimPoint = {0,1.5,0}

GT.WS = {};
GT.WS.maxTargetDetectionRange = 350000;
GT.WS.radar_type = 105;
GT.WS.radar_rotation_type = 0;

local ws = 0;
for i = 1,10 do
    ws = GT_t.inc_ws();
	GT.WS[ws] = {}
    GT.WS[ws].pos = {0,10,0}
	GT.WS[ws].angles = {
					{math.rad(180), math.rad(-180), math.rad(0), math.rad(30)},
					};
    GT.WS[ws].omegaY = 3
    GT.WS[ws].omegaZ = 3

    GT.WS[ws].LN = {}
    GT.WS[ws].LN[1] = {}
    GT.WS[ws].LN[1].type = 101
    GT.WS[ws].LN[1].reactionTime = 20;
    GT.WS[ws].LN[1].distanceMin = GT.sensor.min_range_finding_target;
    GT.WS[ws].LN[1].distanceMax = GT.sensor.max_range_finding_target;
	GT.WS[ws].LN[1].ECM_K = 0.65;
	GT.WS[ws].LN[1].reflection_limit = 0.59;
    GT.WS[ws].LN[1].min_trg_alt = 250
    GT.WS[ws].LN[1].max_trg_alt = GT.sensor.max_alt_finding_target;

end --for

--Burning after hit
GT.visual.fire_size = 1.0; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1200; --burning time (seconds)

GT.Name = "EWR P-37 BAR LOCK";
GT.DisplayName = _("EWR P-37 Bar Lock");
GT.Rate = 100;

GT.Sensors = { RADAR = "EWR P-37 BAR LOCK" };

GT.EWR = true

GT.DetectionRange  = GT.sensor.max_range_finding_target;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000036";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Radar,EWR_55G6,
				"EWR",
				"CustomAimPoint",
				};
GT.category = "Air Defence";
GT.tags = { "Air Defence", "Search Radar", "EW Radar" };