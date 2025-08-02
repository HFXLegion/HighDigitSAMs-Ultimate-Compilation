-- CHASSIS --

GT_t.CH_t.TORNADO_K53958	= {
	life					= 10.0,
	mass					= 40000,
	length					= 11.4,
	width					= 2.55,
	max_road_velocity		= 65,
	max_slope				= 0.35,
	fordingDepth			= 0.4,
	engine_power			= 1500,
	max_vert_obstacle		= 0.6,
	max_acceleration		= 0.925926,
	min_turn_radius			= 22.0,
	X_gear_1				= 2.411,
	Y_gear_1				= 0,
	Z_gear_1				= 1.04,
	X_gear_2				= -2.549,
	Y_gear_2				= 0,
	Z_gear_2				= 1.04,
	gear_type				= GT_t.GEAR_TYPES.WHEELS,
	r_max					= 0.46,
	armour_thickness		= 0.02,
}

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle);
set_recursive_metatable(GT.chassis, GT_t.CH_t.TORNADO_K53958);

GT.visual.shape			= "ERO_PANTSIR";
GT.visual.shape_dstr	= "ERO_PANTSIR_D";

GT.swing_on_run							= false;
GT.animation_arguments.locator_rotation = 11;
GT.radar_rotation_period				= 1;
GT.snd.radarRotation					= "ERO_RadarRotation";

-- NOUVELLES SECTIONS AJOUTÉES --
GT.aiming = {
    elevation_bias = math.rad(-10.0),  -- Correction de visée
    min_elevation = math.rad(-5),
    max_elevation = math.rad(85),
    stabilization = {
        vertical_bias = -0.5,
        precision = 0.98
    }
};

GT.turret = {
    mass = 1000,
    recoil_mechanism = {
        damping_coeff = 1.00,
        return_force = 35000,
        max_recoil = 0.005,
        recovery_time = 0.01
    },
    drive = {
        elevation = {
            max_speed = math.rad(2),
            torque = 200
        },
        traverse = {
            max_speed = math.rad(2),
            torque = 200
        }
    }
};

GT.fire_control = {
    vertical_offset = -7.0,
    lead_precision = 0.95,
    recoil_compensation = {
        enabled = true,
        vertical_factor = 0.98,
        max_correction_rate = math.rad(12)
    }
};

-- SOUNDS --

GT.sound = {};

-- Engine params
GT.sound.engine			= {};
GT.sound.engine.idle	= "GndTech/BradleyEngineIdle";
GT.sound.engine.max		= "GndTech/BradleyEngineMax";

GT.sound.engine.acc_start	= "GndTech/BradleyEngineAccStart";
GT.sound.engine.acc_end		= "GndTech/BradleyEngineAccEnd";

GT.sound.engine.idle_formula_gain	= "0.625 x * 0.875 +";
GT.sound.engine.idle_formula_pitch	= "0.55 x * 0.89 +";

GT.sound.engine.max_formula_gain	= "0.75 x * 0.25 +";
GT.sound.engine.max_formula_pitch	= "0.7025 x * 0.4195 +";

-- Move params
GT.sound.move				= {};
GT.sound.move.sound			= "GndTech/TankMove";
GT.sound.move.pitch			= {{0.0, 0.6}, {10.0, 1.2}};
GT.sound.move.gain			= {{0.0, 0.01}, {0.5, 0.5}, {12.0, 1.0}};
GT.sound.move.start_move	= "GndTech/TStartMove";
GT.sound.move.end_move		= "GndTech/TEndMove";

GT.sound.noise			= {};
GT.sound.noise.sound	= "Damage/VehHit";

-- SENSORS --

GT.sensor = {};
GT.sensor.max_range_finding_target = 50000;
GT.sensor.min_range_finding_target = 200;
GT.sensor.max_alt_finding_target   = 14000;
GT.sensor.min_alt_finding_target   = 0;
GT.sensor.height 				   = 4.5;

-- DAMAGES --

GT.visual.fire_size		= 0.8;
GT.visual.fire_pos[1]	= 0;
GT.visual.fire_pos[2]	= 0;
GT.visual.fire_pos[3]	= 0;
GT.visual.fire_time		= 1000;
GT.visual.dust_pos		= {3.6, 0.1, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos		= {-3.3, 0.5, -GT.chassis.Z_gear_2}

GT.driverViewPoint = {0.0, 0.0, 0.0};
GT.driverViewConnectorName	= "DRIVER_POINT"
GT.driverCockpit			= "DriverCockpit/DriverCockpitWithIR"

-- WEAPON SYSTEMS --

GT.WS = {};
GT.WS.maxTargetDetectionRange	= 50000;
GT.WS.radar_type				= 104;
GT.WS.radar_rotation_type		= 1;
GT.WS.searchRadarMaxElevation	= math.rad(85);

ws = GT_t.inc_ws();
local FIRST_RADAR_TRACKER = ws;
GT.WS[ws]	= {
	omegaY	= 2,
	omegaZ	= 2,
	pidY	= {p=100, i=2.0, d=10, inn = 10},
	pidZ	= {p=100, i=2.0, d=10, inn = 10},
	center	= 'CENTER_TOWER',
	pos		= {0.0, 19.0, 0.0},
	angles	= { {math.rad(180), math.rad(-180), math.rad(-90), math.rad(85)} },
	LN	= {
		[1] = {
			type							= 102,
			distanceMin						= 200,
			distanceMax						= 50000,
			reactionTime					= 0.1,
			reflection_limit				= 0.05,
			ECM_K							= 0.6,
			min_trg_alt						= 1,
			max_trg_alt						= 12000,
			max_number_of_missiles_channels = 1,
			beamWidth						= math.rad(0)
		}
	}
};

local RADAR_TRACKERS = {{{'self', ws}}}
for i=2,5 do
	ws = GT_t.inc_ws();
	GT.WS[ws] = {};
	set_recursive_metatable(GT.WS[ws], GT.WS[FIRST_RADAR_TRACKER]);
	table.insert(RADAR_TRACKERS, {{'self', ws}})
end;

local ws = GT_t.inc_ws();  
GT.WS[ws] = {  
    type = 5,  
    center = "CENTER_TOWER",  
    angles = {  
        {math.rad(180), math.rad(-180), math.rad(-10), math.rad(85)},  
    },  
    drawArgument1 = 0,  
    omegaY = math.rad(40),
    drawArgument2 = 1,  
    omegaZ = math.rad(40),
    pidY = {p=20, i=0.05, d=12.0, inn=3},
    pidZ = {p=20, i=0.05, d=12.0, inn=3},  
    stabilizer = true,  
    isoviewOffset = {0.0, 3.5, 0.0},  
    pointer = "POINT_SIGHT_01",  
    cockpit = {"Gepard/Gepard", {0.1, 0.0, 0.0} },  
}  

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.automatic_gun_2A38M);
__LN.beamWidth = math.rad(3);
__LN.ECM_K = 0.9;
__LN.BR = {{connector_name = 'POINT_GUN_01'},{connector_name = 'POINT_GUN_02'}};
__LN.fireAnimationArgument = 23;
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;

__LN = add_launcher(GT.WS[ws], GT_t.LN_t._96K6);
__LN.inclination_correction_upper_limit = math.rad(10);
__LN.inclination_correction_bias = math.rad(3);
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 4;
__LN.depends_on_unit = RADAR_TRACKERS;

-- MISC --

GT.Name = "Pantsir_SM";
GT.Aliases = {"SAM SA-22 Pantsir-SM"}
GT.DisplayName = _('SAM SA-22 Pantsir-SM "Greyhound"');
GT.Rate = 20;

GT.Sensors = { OPTIC = {"TKN-3B day", "TKN-3B night",
                        "Tunguska optic sight"
                        },
			   RADAR = GT.Name
             };

GT.DetectionRange = GT.sensor.max_range_finding_target;
GT.ThreatRange = GT_t.LN_t._96K6.distanceMax;
GT.mapclasskey = "P0091000014";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Radar,Patr_AN_MPQ_53_P,
				"AA_missile",
				"AA_flak", "Mobile AAA",
				"SR SAM",
				"SAM SR",
				"SAM TR",
				"RADAR_BAND1_FOR_ARM",
				};
GT.category = "Air Defence";
GT.Countries = {"Russia", "Syria"};

-- DEBUG OPTIONS (optionnel) --
GT.debug_recoil = true;
GT.debug_aiming = true;