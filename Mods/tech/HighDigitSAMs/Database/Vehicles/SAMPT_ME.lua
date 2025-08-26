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
GT.WS.requiredUnits = {{"SAMPT_MGE", 1000, GT_t.REQUIRED_UNIT.NEED_AI_ON}};

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