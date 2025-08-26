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

local SA9M317 = {
	Name = SA9M317, --9M317 Buk-M1-2
	display_name = _('9M317 Buk-M2 (SA-17 Grizzly)'),
	display_name_short = _('9M317 Buk-M2 (SA-17 Grizzly)'),
	name = "SA9M317",
	Escort = 3,
	Head_Type = 6,
	sigma = {25, 25, 25},
	M = 715,
	H_max = 50000.0,
	H_min = 15.0,
	Diam = 400.0,
	Cx_pil = 4,
	D_max = 38000.0,
	D_min = 3000.0,
	Head_Form = 1,
	Life_Time = 80.0,
	Nr_max = 24,
	v_min = 200.0,
	v_mid = 900.0,
	Mach_max = 4.55,
	t_b = 0.0,
	t_acc = 4.0,
	t_marsh = 11.0,
	Range_max = 50000.0,
	H_min_t = 15.0,
	Fi_start = 3.14152,
	Fi_rak = 3.14152,
	Fi_excort = 1.05,
	Fi_search = 99.9,
	OmViz_max = 99.9,
	warhead = simple_aa_warhead(59.0),
	exhaust1 = { 1, 1, 1, 0.5 },
	exhaust2 = { 0.5, 0.5, 0.5, 0.5 },
	X_back = -2.85,
	Y_back = 0.0,
	Z_back = 0.0,
	Reflection = 0.0918,
	KillDistance = 13,
	ccm_k0       = 0.5,
	loft = 1,
	loft_factor = 4.5,
	ModelData = { 
		58, -- model params count
		0.75, -- characteristic square
		
		-- Cx dependent parameters
		0.05, -- Cx_k0 bar Cx0 on subsonic (M << 1)
		0.092,  -- Cx_k1 height of the peak of the wave crisis 
		0.014,  -- Cx_k2 steepness of the front on the approach to the wave crisis
		-0.015, -- Cx_k3 bar Cx0 at supersonic (M >> 1)
		0.72,  -- Cx_k4 steepness of the decline after the wave crisis
		1.13, -- coefficient of dumping of a polar

		-- Cy dependent parameters
		0.87, --Cy_k0 bar Сy0 at subsonic (M << 1)
		0.01, -- Cy_k1 bar Cy0 at supersonic (M >> 1)
		0.21, -- Cy_k2 steepness of the decline (front) behind the wave crisis

		0.3, -- 7 Alfa_max maximum balancing angle, radians
		0, -- angular velocity created by the moment of gas rudders
		
		--t_statr 	t_b 	t_accel 	t_march 	t_inertial 	t_break 	t_end
		0,	 		0, 		4,	 		11,		0, 			0, 			1000000000, -- time of stage, sec
		0, 			0, 		24.0, 		40.45,	0, 			0, 			0, 			-- fuel flow rate, kg/sec
		0, 			0, 		185000, 	32000,	0, 			0, 			0, 			-- thrust, newtons
		
		1000000000, --self destruct by timer
		60, --onboard power system operation time, sec
		0, -- absolute self-destruction altitude. Altitude of the radio fuse triggering self destruct. 
		1, -- control switch-on delay after launch, sec 

		25000, -- Range to the target at the moment of launch, above which the missile will boost to climb.
		25000, -- The range to the target at any given moment, below which the missile will end the boost phase and switch to pronav
		0.3, -- sine of the elevation angle of the trajectory of the slide. 
		150, -- longitude acceleration of the fuse cocking
		0, -- speed module reported by the ejection device, expelling charge, etc.
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
	PN_gain = 8,
    PN_coeffs = {
        4,                 -- Number of Entries
		0, 1.0,
        7408.0 ,1.0,       -- Less 7.4 km to target Pn = 1
        10000.0, 0.5,      -- Between 10 and 5 km  to target, Pn smoothly changes from 0.5 to 1.0. 
    	25000.0, 0.3
    }; -- Between 25 and 10 km  to target, Pn smoothly changes from 0.3 to 0.5. Longer then 25 km Pn = 0.3.
	category = CAT_MISSILES,
	wsTypeOfWeapon  = {wsType_Missile, wsType_Missile, wsType_SA_Missile};
	shape_table_data = 
	{
		{
			name	 = "9M38M1";
			file  	 = "9M38M1";
			life  	 = 1;
			fire  	 = { 0, 1};
			username = "9M317";
			index = WSTYPE_PLACEHOLDER;
		},
	}
};
declare_weapon(SA9M317)

GT_t.LN_t._9A310M12 = {} -- 9K317 Buk-M1-2 (SA-17 Grizzly)
GT_t.LN_t._9A310M12.type = 4;
GT_t.LN_t._9A310M12.xc = -3.26;
GT_t.LN_t._9A310M12.distanceMin = 3000;
GT_t.LN_t._9A310M12.distanceMax = 50000;
GT_t.LN_t._9A310M12.reactionTime = 1;
GT_t.LN_t._9A310M12.launch_delay = 2;
GT_t.LN_t._9A310M12.maxShootingSpeed = 0;
GT_t.LN_t._9A310M12.show_external_missile = true;
GT_t.LN_t._9A310M12.sensor = {};
set_recursive_metatable(GT_t.LN_t._9A310M12.sensor, GT_t.WSN_t[0]);
GT_t.LN_t._9A310M12.reflection_limit = 0.02;
GT_t.LN_t._9A310M12.ECM_K = -1
GT_t.LN_t._9A310M12.barrels_reload_type = 3 -- BarrelsReloadTypes.SEQUENTIALY;
GT_t.LN_t._9A310M12.PL = {};
GT_t.LN_t._9A310M12.PL[1] = {};
GT_t.LN_t._9A310M12.PL[1].ammo_capacity = 4;
GT_t.LN_t._9A310M12.PL[1].type_ammunition = SA9M317.wsTypeOfWeapon;
GT_t.LN_t._9A310M12.PL[1].reload_time = 13*60; -- 13 minutes
GT_t.LN_t._9A310M12.PL[1].shot_delay = 0.1;
GT_t.LN_t._9A310M12.BR = {
                    {pos = {-1.477, 0.459,-1.08}, drawArgument = 4},
                    {pos = {-1.477, 0.459,-0.38}, drawArgument = 5},
                    {pos = {-1.477, 0.459, 0.43}, drawArgument = 6},
                    {pos = {-1.477, 0.459, 1.15}, drawArgument = 7},
                };