GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle);
set_recursive_metatable(GT.chassis, GT_t.CH_t.MAZ543M);
GT.chassis.life = 4;

GT.visual.shape = "ERO_96L6E_SR_Truck";
GT.visual.shape_dstr = "ERO_RUSAM_D";
GT.visual.fire_pos[2] = 1;

--chassis
GT.animation_arguments.locator_rotation = 0;
GT.radar_rotation_period = 12.0;
GT.snd.radarRotation = "GndTech/RadarRotation";
GT.defaultStartAlarmState = GT_t.START_ALARM_STATES.RED;

GT.sensor = {};
GT.sensor.max_range_finding_target = 330000;
GT.sensor.min_range_finding_target = 2000;
GT.sensor.max_alt_finding_target = 90000;
GT.sensor.height = 8.68;

GT.EPLRS = true;

GT.CustomAimPoint = {0,1.5,0}

GT.WS = {};
GT.WS.maxTargetDetectionRange = 330000;
GT.WS.radar_type = 102;
GT.WS.radar_rotation_type = 0;

--Burning after hit
GT.visual.fire_size = 1.0; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1200; --burning time (seconds)

local ws = 0;
for i = 1,24 do 
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
		reflection_limit = 0.039,
        distanceMin = GT.sensor.min_range_finding_target,
        distanceMax = GT.sensor.max_range_finding_target,
		ECM_K = 0.4,
        min_trg_alt = 100,
        max_trg_alt = GT.sensor.max_alt_finding_target,
        reactionTime = GT.radar_rotation_period/4 + 1;
        },
    }
end --for

GT.Name = "S-400 96L6E sr";
GT.DisplayName = _("SAM SA-21 S-400 Cheese Board (truck) SR");
GT.DisplayNameShort = _("SA-21 CB SR");
GT.Rate = 20;

GT.Sensors = { RADAR = "S-400 96L6E sr" };

GT.DetectionRange  = GT.sensor.max_range_finding_target;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000083";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Radar,RLO_64H6E,
				"LR SAM",
				"SAM SR",
				"RADAR_BAND1_FOR_ARM",
				"CustomAimPoint",
                "Datalink",
				};
GT.category = "Air Defence";
GT.tags = { "Air Defence", "Search Radar" };
GT.Countries = {"Russia", "Turkey", "Algeria", "Belarus", "India", "China"}
