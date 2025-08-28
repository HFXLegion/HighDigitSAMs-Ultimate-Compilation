
GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_stationary);
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 4;

GT.visual.shape = "ELTA_ELM_2084";
GT.visual.shape_dstr = "ELTA_ELM_2084";
GT.visual.fire_pos[2] = 1;

GT.toggle_alarm_state_interval = 1.0;

--chassis
GT.snd.radarRotation = "GndTech/RadarRotation";
GT.defaultStartAlarmState = GT_t.START_ALARM_STATES.RED;


--Burning after hit
GT.visual.fire_size = 0.5; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900; --burning time (seconds)

GT.visual.min_time_agony = 5
GT.visual.max_time_agony = 120
GT.visual.agony_explosion_size = 5

GT.driverViewConnectorName = {"DRIVER_POINT", offset = {2, 5.0, 0.0}}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithLLTV"

GT.sensor = {};
GT.sensor.max_range_finding_target = 650000;
GT.sensor.min_range_finding_target = 1;
GT.sensor.max_alt_finding_target = 30500;
GT.sensor.height = 8.0;

GT.WS = {};
GT.WS.maxTargetDetectionRange = 650000;
GT.WS.radar_type = 102;
GT.WS.radar_rotation_type = 0;
GT.WS.requiredUnits = {{"Iron_Dome_David_Sling_CP", 10000, GT_t.REQUIRED_UNIT.NEED_AI_ON}};

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].pos = {0,8,0};
GT.WS[ws].angles = {
					{math.rad(180), math.rad(-180),math.rad(-7), math.rad(90)},
					};
GT.WS[ws].drawArgument1 = 11;
GT.WS[ws].omegaY = math.pi;
GT.WS[ws].omegaZ = math.pi;
GT.WS[ws].pidY = {p = 15, i = 0.01, d = 4, inn = 1.5}
GT.WS[ws].pidZ = {p = 15, i = 0.01, d = 4, inn = 1.5}
GT.WS[ws].LN = {};
GT.WS[ws].LN[1] = {};
GT.WS[ws].LN[1].max_number_of_missiles_channels = {1, 2};
GT.WS[ws].LN[1].type = 102;
GT.WS[ws].LN[1].frequencyRange = {{4.0e9, 8.0e9}, {2.0e9, 4.0e9}};
GT.WS[ws].LN[1].distanceMin = GT.sensor.min_range_finding_target;
GT.WS[ws].LN[1].distanceMax = GT.sensor.max_range_finding_target;
GT.WS[ws].LN[1].min_trg_alt = 1;
GT.WS[ws].LN[1].max_trg_alt = 30500;
GT.WS[ws].LN[1].reactionTime = 0.1;
GT.WS[ws].LN[1].reflection_limit = 0.04;
GT.WS[ws].LN[1].ECM_K = 0.4;
GT.WS[ws].LN[1].beamWidth = 0;

for i = 1,125 do 
    ws = GT_t.inc_ws();
	GT.WS[ws] = {}
    GT.WS[ws].base = 1;
    GT.WS[ws].pos = {0,0,0}
	GT.WS[ws].angles = {
					{math.rad(180), math.rad(-180),math.rad(-7), math.rad(90)},
					};
    GT.WS[ws].omegaY = math.pi;
    GT.WS[ws].omegaZ = math.pi;
    GT.WS[ws].LN = {};
    GT.WS[ws].LN[1] = {};
    set_recursive_metatable(GT.WS[ws].LN[1], GT.WS[1].LN[1]);
end --for

GT.Name = "ELM2084_MMR_AD_SC";
GT.DisplayName = _("SAM IDF EL/M-2084 STR (Sector Mode)");
GT.Rate = 20;

GT.Sensors = {RADAR = "ELM2084_MMR_AD_SC" };

GT.EPLRS = true;

GT.DetectionRange  = GT.sensor.max_range_finding_target;
GT.ThreatRange = 0;
--GT.AuthoritySector = {math.rad(65), math.rad(-65)};
GT.mapclasskey = "P0091000083";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Radar,SA3_SR,
				"LR SAM",
				"SAM SR",
				"SAM TR",
				"RADAR_BAND1_FOR_ARM",
				"Datalink"
				};

GT.category = "Air Defence";
GT.tags = { "Air Defence", "EW Radar" };
GT.Countries = {"Israel", "Czech Republic", "Finland", "Hungary", "Singapore", "Vietnam"}

add_surface_unit(GT)