-- CHASSIS --

GT_t.CH_t.TORNADO_K53958	= {
	life					= 10.0,
	mass					= 14850,
	length					= 11.4,
	width					= 2.55,
	max_road_velocity		= 25,
	max_slope				= 0.35,
	fordingDepth			= 0.4,
	engine_power			= 600,
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

GT.visual.fire_size		= 0.8; --relative burning size
GT.visual.fire_pos[1]	= 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2]	= 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3]	= 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time		= 1000; --burning time (seconds)
GT.visual.dust_pos		= {3.6, 0.1, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos		= {-3.3, 0.5, -GT.chassis.Z_gear_2}

GT.driverViewPoint = {0.0, 0.0, 0.0};
GT.driverViewConnectorName = "DRIVER_POINT_01";
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIRandLLTV"


-- WEAPON SYSTEMS --

GT.WS = {};
GT.WS.maxTargetDetectionRange	= 50000;
GT.WS.radar_type				= 104;
GT.WS.radar_rotation_type		= 1;
GT.WS.searchRadarMaxElevation	= math.rad(85);
GT.WS.fire_on_march = true;

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
			ECM_K							= 0.5,
			min_trg_alt						= 1,
			max_trg_alt						= 12000,
			max_number_of_missiles_channels = 1,
			beamWidth						= math.rad(0.5)
		}
	}
};


local RADAR_TRACKERS = {{{'self', ws}}}
for i=2,4 do
	ws = GT_t.inc_ws();
	GT.WS[ws] = {};
	set_recursive_metatable(GT.WS[ws], GT.WS[FIRST_RADAR_TRACKER]);
	table.insert(RADAR_TRACKERS, {{'self', ws}})
end;

local ws				= GT_t.inc_ws();
GT.WS[ws]				= {};
GT.WS[ws].type			= 5;
GT.WS[ws].center		= "CENTER_TOWER";
GT.WS[ws].angles		= {
							{math.rad(180), math.rad(-180), math.rad(-10), math.rad(85)},
						};
GT.WS[ws].drawArgument1	= 0;
GT.WS[ws].omegaY		= math.rad(80);
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaZ		= math.rad(80);
GT.WS[ws].pidY = {p=100, i = 2, d = 10.0, inn = 10};
GT.WS[ws].pidZ = {p=100, i = 2, d = 10.0, inn = 10};
GT.WS[ws].stabilizer	= true;
GT.WS[ws].cockpit 		= {'_1A29/_1A29', {0.0, 0.0, 0.6} }
GT.WS[ws].PPI_view 		= "GenericPPI/GenericPPI";

__LN 													= add_launcher(GT.WS[ws], GT_t.LN_t.automatic_gun_2A38M);
__LN.beamWidth											= math.rad(0.5);
__LN.ECM_K												= 0.9;
__LN.BR 												= {{pos = {0, 1, -1}},{pos = {0, 1, 0.8}}};
__LN.fireAnimationArgument								= 23;
__LN.sightMasterMode									= 1;
__LN.sightIndicationMode								= 1;


__LN													= add_launcher(GT.WS[ws], GT_t.LN_t._96K6);
__LN.BR													= {
															{pos = {0, 1, 0.8}, 		drawArgument = 188},
															{pos = {0, 1, -1},		drawArgument = 191},
															{pos = {0, 1, 0.8}, 		drawArgument = 189},
															{pos = {0, 1, -1},		drawArgument = 190},
															{pos = {0, 1, 0.8}, 		drawArgument = 192},
															{pos = {0, 1, -1},		drawArgument = 195},
															{pos = {0, 1, 0.8}, 		drawArgument = 193},
															{pos = {0, 1, -1},		drawArgument = 194},
															{pos = {0, 1, 0.8}, 		drawArgument = 196},
															{pos = {0, 1, -1},		drawArgument = 199},
															{pos = {0, 1, 0.8}, 		drawArgument = 197},
															{pos = {0, 1, -1},		drawArgument = 198},
														};
__LN.beamWidth											= math.rad(0.5);
__LN.inclination_correction_upper_limit					= math.rad(20);
__LN.inclination_correction_bias						= math.rad(3);
__LN.depends_on_unit									= RADAR_TRACKERS
__LN.sightMasterMode									= 1;
__LN.sightIndicationMode								= 4;


-- MISC --

GT.Name			= "Pantsir_SM";
GT.DisplayName	= _('SAM SA-22 Pantsir-SM "Greyhound"');
GT.DisplayNameShort = _('Pantsir SM') 
GT.Rate 		= 20;

GT.Sensors = { OPTIC = {"TKN-3B day", "TKN-3B night",
                        "Tunguska optic sight"
                        },
			   RADAR = GT.Name
             };

GT.DetectionRange	= GT.sensor.max_range_finding_target;
GT.ThreatRange		= GT_t.LN_t._96K6.distanceMax;
GT.ThreatRangeMin 	= 1200;
GT.mapclasskey		= "P0091000014";
GT.attribute		= {wsType_Ground,wsType_SAM,wsType_Radar_MissGun,WSTYPE_PLACEHOLDER,
						"AA_missile",
						"AA_flak", "Mobile AAA",
						"SR SAM",
						"SAM SR",
						"SAM TR",
						"RADAR_BAND1_FOR_ARM",
						};
GT.tags  =
{
    "Air Defence",
	"SP AAA",
};
GT.Countries = {"Russia"}