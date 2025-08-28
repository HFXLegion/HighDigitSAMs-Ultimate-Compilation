-- SAMP/T Engagement station by zahnatom

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_stationary);
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);

GT.visual.shape = "sampt_me";
GT.visual.shape_dstr = "sampt_standard_destroyed";

GT.toggle_alarm_state_interval = 10.0;
GT.IR_emission_coeff = 0.08
GT.visual.IR = { coeffs = {GT_t.IR_COEFFS_ENGINE_APC, GT_t.IR_COEFFS_WHEELS_Truck, {0.0, 0.0}, GT_t.IR_COEFFS_BODY, {0.1, 0.1/1000}}}

GT.visual.fire_size = 1.2; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 2; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 600; --burning time (seconds)
GT.visual.dust_pos = {1.00, 0.05, 0}
GT.visual.dirt_pos = {-1.00, 0.05, 0}

GT.visual.min_time_agony       = 5
GT.visual.max_time_agony       = 120
GT.visual.agony_explosion_size = 5

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 5.895;

GT.WS = {}
GT.WS.maxTargetDetectionRange = 500000;
--GT.WS.requiredUnits = {{"SAMPT_MGE", 1000, GT_t.REQUIRED_UNIT.NEED_AI_ON}};

local ws = 0;
for i = 1,128 do
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
    GT.WS[ws].LN[1].reactionTime = 5.0;
    GT.WS[ws].LN[1].distanceMin = 1200;
    GT.WS[ws].LN[1].distanceMax = 500000;
	GT.WS[ws].LN[1].reflection_limit = 0.02;
    GT.WS[ws].LN[1].min_trg_alt = 5
    GT.WS[ws].LN[1].max_trg_alt = 70000;
    GT.WS[ws].LN[1].depends_on_unit = {{{"SAMPT_MRI_ARABEL"}},{{"SAMPT_MRI_GF300"}}};
end

GT.Name = "SAMPT_ME";
GT.DisplayName = _("SAMP/T ECS");
GT.DisplayNameShort = _("SAMP/T ECS");
GT.Rate = 20;

GT.EPLRS = true;

GT.DetectionRange = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000046";
GT.attribute = {wsType_Ground, wsType_SAM, wsType_NoWeapon, WSTYPE_PLACEHOLDER,
                "Trucks",
                "SAM CC",
                };

GT.category = "Air Defence";
GT.tags = {
    "Air Defence",
    "Command & Control",
}

GT.Countries = {"France", "Italy", "Ukraine"}

add_surface_unit(GT)