-- SAMP/T Control station by zahnatom

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_stationary);
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);

GT.visual.shape = "sampt_mc";
GT.visual.shape_dstr = "sampt_standard_destroyed";

GT.IR_emission_coeff = 0.08

GT.swing_on_run = false

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

GT.visual.IR = { coeffs = {GT_t.IR_COEFFS_ENGINE_APC, GT_t.IR_COEFFS_WHEELS_Truck, {0.0, 0.0}, GT_t.IR_COEFFS_BODY, {0.1, 0.1/1000}}}

GT.toggle_alarm_state_interval = 10.0;

GT.sensor = {};
GT.sensor.max_range_finding_target = 500000;
GT.sensor.min_range_finding_target = 100;
GT.sensor.max_alt_finding_target = 75000;
GT.sensor.height = 5.895;

GT.WS = {}
GT.WS.maxTargetDetectionRange = 500000;

GT.Name = "SAMPT_MC";
GT.DisplayName = _("SAMP/T C2");
GT.DisplayNameShort = _("SAMP/T C2");
GT.Rate = 10;

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
