GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_stationary);
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 10;

GT.visual.shape = "ERO_GenericEW";
GT.visual.shape_dstr = "ERO_GenericEW_d";
GT.visual.fire_pos[2] = 1;

--chassis
--[[GT.animation_arguments.locator_rotation = 1;
GT.radar_rotation_period = 10.0;
GT.snd.radarRotation = "RadarRotation";--]]

GT.sensor = {};
GT.sensor.max_range_finding_target = 350000;
GT.sensor.min_range_finding_target = 10000;
GT.sensor.max_alt_finding_target = 27000;
GT.sensor.height = 20.0;

GT.CustomAimPoint = {0,1.5,0}

GT.WS = {};
GT.WS.maxTargetDetectionRange = 350000;
GT.WS.radar_type = 102;
GT.WS.radar_rotation_type = 0;

--Burning after hit
GT.visual.fire_size = 1.0; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1200; --burning time (seconds)

local ws = 0;
for i = 1,3 do 
    ws = GT_t.inc_ws();
	GT.WS[ws] = {}
    GT.WS[ws].pos = {0,5,0}
	GT.WS[ws].angles = {
					{math.rad(180), math.rad(-180), math.rad(-15), math.rad(50)},
					};
    GT.WS[ws].omegaY = 3
    GT.WS[ws].omegaZ = 3
    GT.WS[ws].LN = 
    {
        {
        type = 101,
		reflection_limit = 0.079,
        distanceMin = GT.sensor.min_range_finding_target,
        distanceMax = GT.sensor.max_range_finding_target,
		ECM_K = 0.4,
        min_trg_alt = 200,
        max_trg_alt = GT.sensor.max_alt_finding_target,
        reactionTime = 6;
        },
    }
end --for

GT.Name = "EWR Generic radar tower";
GT.DisplayName = _("EWR Generic radar tower");
GT.DisplayNameShort = _("EWR Generic radar tower");
GT.Rate = 20;

GT.Sensors = { RADAR = GT.Name, };

GT.EWR = true

GT.DetectionRange  = GT.sensor.max_range_finding_target;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000083";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Radar,EWR_1L13,
				"EWR",
				"RADAR_BAND1_FOR_ARM",
				"CustomAimPoint",
				};
GT.category = "Air Defence";
GT.tags = { "Air Defence", "Search Radar", "EW Radar" };