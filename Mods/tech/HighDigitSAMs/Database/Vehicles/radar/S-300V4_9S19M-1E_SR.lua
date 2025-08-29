GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_stationary);
set_recursive_metatable(GT.chassis, GT_t.CH_t.MAZ543M);
GT.chassis.life = 4;

GT.visual.shape = "ERO_9S19M2";
GT.visual.shape_dstr = "ERO_9S19M2_D";
GT.visual.fire_pos[2] = 1;

--chassis
GT.animation_arguments.locator_rotation = 11;
GT.radar_rotation_period = 24.0;
GT.snd.radarRotation = "GndTech/RadarRotation";
GT.defaultStartAlarmState = GT_t.START_ALARM_STATES.RED;

GT.sensor = {};
GT.sensor.max_range_finding_target = 450000;
GT.sensor.min_range_finding_target = 1000;
GT.sensor.max_alt_finding_target = 150000;
GT.sensor.height = 8.0;

GT.CustomAimPoint = {0,1.5,0}

GT.WS = {};
GT.WS.maxTargetDetectionRange = 450000;
GT.WS.radar_type = 102;
GT.WS.radar_rotation_type = 0;

--Burning after hit
GT.visual.fire_size = 1.0; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1200; --burning time (seconds)

local ws = 0;
for i = 1,15 do 
    ws = GT_t.inc_ws();
	GT.WS[ws] = {}
    GT.WS[ws].pos = {0,9,0}
	GT.WS[ws].angles = {
					{math.rad(180), math.rad(-180), math.rad(0), math.rad(75)},
					};
    GT.WS[ws].omegaY = 3
    GT.WS[ws].omegaZ = 3
    GT.WS[ws].LN = 
    {
        {
        type = 101,
		reflection_limit = 0.02,
        distanceMin = GT.sensor.min_range_finding_target,
        distanceMax = GT.sensor.max_range_finding_target,
		ECM_K = 0.4,
        min_trg_alt = 25,
        max_trg_alt = GT.sensor.max_alt_finding_target,
        reactionTime = GT.radar_rotation_period/4 + 1;
        },
    }
end --for

GT.Name = "S-300V4 9S19M-1E sr";
GT.DisplayName = _("SAM SA-23 S-300V4 High Screen SR");
GT.DisplayNameShort = _("SA-23 S-300V4 SR");
GT.Rate = 20;

GT.Sensors = { RADAR = GT.Name };

GT.DetectionRange  = GT.sensor.max_range_finding_target;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000083";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Radar,RLO_9C19M2,
				"LR SAM",
				"SAM SR",
				"RADAR_BAND1_FOR_ARM",
				"CustomAimPoint",
				};
GT.category = "Air Defence";
GT.tags = {"Air Defence", "Search Radar"};
GT.Countries = {"Egypt", "Russia"}