--polyana d4m1

GT = {};
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle)
set_recursive_metatable(GT.chassis, GT_t.CH_t.URAL375);

GT.visual.shape = "Polyana"
GT.visual.shape_dstr = "Polyana_d"


--chassis
GT.swing_on_run = false


--Burning after hit
GT.visual.fire_size = 0.7 --relative burning size
GT.visual.fire_pos[1] = -2 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1000 --burning time (seconds)

GT.sensor = {};
GT.sensor.max_range_finding_target = 1000000;
GT.sensor.min_range_finding_target = 1;
GT.sensor.max_alt_finding_target = 80000;
GT.sensor.height = 43;

GT.WS = {};
GT.WS.maxTargetDetectionRange = 300000;

local ws = 0;
for i = 1,100 do
    ws = GT_t.inc_ws();
	GT.WS[ws] = {};
    GT.WS[ws].pos = {0,3,0};
	GT.WS[ws].angles = {
					{math.rad(180), math.rad(-180), math.rad(-89), math.rad(89)},
					};
    GT.WS[ws].omegaY = 3;
    GT.WS[ws].omegaZ = 3;

    GT.WS[ws].LN = {};
    GT.WS[ws].LN[1] = {};
    GT.WS[ws].LN[1].type = 100;
    GT.WS[ws].LN[1].reactionTime = 0.1;
    GT.WS[ws].LN[1].distanceMin = GT.sensor.min_range_finding_target;
    GT.WS[ws].LN[1].distanceMax = GT.sensor.max_range_finding_target;
	GT.WS[ws].LN[1].reflection_limit = 0.049;
    GT.WS[ws].LN[1].min_trg_alt = 5
    GT.WS[ws].LN[1].max_trg_alt = GT.sensor.max_alt_finding_target;
end

GT.Name = "polyana-d4m1 cp"
GT.Aliases = {"Polyana-D4M1 C2 node"}
GT.DisplayName = _("Polyana-D4M1 C2 node")
GT.Rate = 3


GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000212";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_NoWeapon,wsType_GenericVehicle,
				"SAM CC",
				"Trucks",
				};
GT.category = "Air Defence";
GT.tags = { "Air Defence", "Command & Control" };
GT.Countries = {"Algeria", "Russia"}