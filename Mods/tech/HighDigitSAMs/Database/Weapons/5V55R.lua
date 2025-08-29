-- Missile
local function calcPiercingMass(warhead)
	warhead.piercing_mass  = warhead.mass;
	if (warhead.expl_mass/warhead.mass > 0.1) then
		warhead.piercing_mass  = warhead.mass/5.0;
	end
end

local function simple_aa_warhead(power, caliber) -- By Saint
    local res = {};

	res.caliber = caliber
	res.mass = power; --old explosion damage effect
    res.expl_mass = power;
    res.other_factors = {1, 1, 1};
    res.obj_factors = {1, 1};
    res.concrete_factors = {1, 1, 1};
    res.cumulative_factor = 0;
    res.concrete_obj_factor = 0.0;
    res.cumulative_thickness = 0.0;
    
	calcPiercingMass(res)
    return res;
end

local SA5V55R2 = {
	Name = SA5V55R2, --5V55R
	display_name = _('5V55R'),
	name = "SA5V55R2",
	Escort = 3, -- Escort(Requires tracking?): 0 - no, 1 - launch aircraft, 2 - another aircraft, 3 - from the ground
	Head_Type = 6, -- Seeker type code, in our case 8 is for TVM (Track via missile). 1 = Passive IR homing, 2 = Active Radar Homing
	sigma = {50, 50, 50}, -- maximum aiming error in meters, in target coordinates. x - longitudinal axis of the target, y - vertical axis of the target, z - transverse axis of the target
	M = 1665.0, -- Mass of the missile at launch
	H_max = 30000.0, -- Maximum target altitude
	H_min = 25.0, -- minimum target altitude
	Diam = 458.0, -- Missile diameter in cm
	Cx_pil = 8, -- "Cx like pendants" - Moment of inertia??
	D_max = 25000.0, -- Maximum range firing at low altitude, in meters
	D_min = 1000.0, -- minimum range in meters
	Head_Form = 1, -- determines shape of the missile head for drag modeling; 0 for hemispherical, 1 for conical
	Life_Time = 70.0, -- Battery life
	Nr_max = 18, -- Maximum g when turning
	v_min = 150.0, -- Minimum speed in m/s
	v_mid = 1300.0, -- average speed in m/s
	Mach_max = 6.5, -- maximum Mach of the missile
	t_b = 0.9, -- Motor start delay
	t_acc = 9.0, -- motor burn time
	t_marsh = 0.0, -- cruise time, 0.0 if not applicable
	Range_max = 75000.0, -- Max range in meters
	H_min_t = 10.0, -- minimum target height above the terrain, m.
	Fi_start = 3.14152, -- angle of tracking and sighting at launch, in radians
	Fi_rak = 3.14152, -- allowable angle of view of the target, in radians
	Fi_excort = 2.0, -- tracking angle (sighting) of the target by the missile.
	Fi_search = 99.9, -- limit angle of free search
	OmViz_max = 99.9, -- line-of-sight speed limit
	warhead = simple_aa_warhead(133.0),
	exhaust1 = {1, 1, 1, 1},
	exhaust_effect_type = 1,
	X_back = -3.681,
	Y_back = 0.0,
	Z_back = 0.0,
	Reflection = 0.2,
	KillDistance = 20.0,
	category = CAT_MISSILES,
	ccm_k0 = 0.5,
	SeekerGen = 3,
	PN_gain = 4,
	PN_coeffs = {7,
				1000.0 ,1.0,
				5000.0, 0.80,
				15000.0, 0.60,
				20000.0, 0.40,
				25000.0, 0.30,
				30000.0, 0.10,
				40000.0, 0};
	ModelData = { 
		58, -- model params count
		2, -- characteristic square
		
		-- Cx dependent parameters
		0.05, -- Cx_k0 bar Cx0 on subsonic (M << 1)
		0.092,  -- Cx_k1 height of the peak of the wave crisis 
		0.014,  -- Cx_k2 steepness of the front on the approach to the wave crisis
		-0.015, -- Cx_k3 bar Cx0 at supersonic (M >> 1)
		0.72,  -- Cx_k4 steepness of the decline after the wave crisis
		1.13, -- coefficient of dumping of a polar

		-- Cy dependent parameters
		0.8, --Cy_k0 bar Сy0 at subsonic (M << 1)
		0.01, -- Cy_k1 bar Cy0 at supersonic (M >> 1)
		0.21, -- Cy_k2 steepness of the decline (front) behind the wave crisis

		0.3, -- 7 Alfa_max maximum balancing angle, radians
		1, -- angular velocity created by the moment of gas rudders
		
		--t_statr 	t_b 	t_accel 	t_march 	t_inertial 	t_break 	t_end
		0.9, 		0, 		9.0, 		0, 			0, 			0, 			1000000000, -- time of stage, sec
		0, 			0, 		125.0, 		0, 			0, 			0, 			0, 			-- fuel flow rate, kg/sec
		0, 			0, 		240000, 	0, 			0, 			0, 			0, 			-- thrust, newtons
		
		1000000000, --self destruct by timer
		70, --onboard power system operation time, sec
		0, -- absolute self-destruction altitude. Altitude of the radio fuse triggering self destruct. 
		1, -- control switch-on delay after launch, sec 

		20000, -- Range to the target at the moment of launch, above which the missile will boost to climb.
		20000, -- The range to the target at any given moment, below which the missile will end the boost phase and switch to pronav
		0, -- sine of the elevation angle of the trajectory of the slide. 
		650, -- longitude acceleration of the fuse cocking
		25, -- speed module reported by the ejection device, expelling charge, etc.
		4, -- characteristic of the ACS-RAKETA system, the coefficient of the second order filter K0
		8,  -- characteristic of the SAU-RAKETA system, second-order filter coefficient K1
		1, -- characteristic of the SAU-RAKETA system, bandwidth of the control loop
		
		-- DLZ. Data for calculating launch ranges (indication on the sight), also used by AI
		0, 
		0, 
		0, 
		0, 
		0, 
		0, 
		0, 
		0, 
		0, 
		0, 
		0, 
		0, 
		0 
	},
 	wsTypeOfWeapon  = {wsType_Missile, wsType_Missile, wsType_SA_Missile};
	shape_table_data = 
	{
		{
			name	 = "ERO_5R55R";
			file  	 = "ERO_5R55R";
			life  	 = 1;
			fire  	 = { 0, 1};
			username = "SA5V55R";
			index = WSTYPE_PLACEHOLDER;
		},
	}
};
declare_weapon(SA5V55R2)

GT_t.WS_t.S_300PS2 = {} -- S-300PS (SA-10B)
GT_t.WS_t.S_300PS2.angles = {
					{math.rad(180), math.rad(-180), math.rad(-90), math.rad(90)},
					};
GT_t.WS_t.S_300PS2.reference_angle_Z = math.rad(90)
GT_t.WS_t.S_300PS2.LN = {}
GT_t.WS_t.S_300PS2.LN[1] = {}
GT_t.WS_t.S_300PS2.LN[1].type = 4
GT_t.WS_t.S_300PS2.LN[1].distanceMin = 5000
GT_t.WS_t.S_300PS2.LN[1].distanceMax = 75000
GT_t.WS_t.S_300PS2.LN[1].ECM_K = -1;
GT_t.WS_t.S_300PS2.LN[1].reflection_limit = 0.049;
GT_t.WS_t.S_300PS2.LN[1].sensor = {}
set_recursive_metatable(GT_t.WS_t.S_300PS2.LN[1].sensor, GT_t.WSN_t[0])
GT_t.WS_t.S_300PS2.LN[1].beamWidth = 0;
GT_t.WS_t.S_300PS2.LN[1].PL = {}
GT_t.WS_t.S_300PS2.LN[1].PL[1] = {}
GT_t.WS_t.S_300PS2.LN[1].PL[1].type_ammunition = SA5V55R2.wsTypeOfWeapon;