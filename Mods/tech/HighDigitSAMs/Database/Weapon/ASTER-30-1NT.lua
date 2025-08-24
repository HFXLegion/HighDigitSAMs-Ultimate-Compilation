-- aster 30 block 1 nt by zahnatom

local nameaster301 = "Aster 30 Blk 1NT"
SAMPT_ASTER_30_Blk_1NT = {
    category        = CAT_MISSILES,
    name            = nameaster301,
    user_name       = _(nameaster301),
    model           = 'aster_30_blk_1nt',
    mass            = 450.0,
    wsTypeOfWeapon  =  {wsType_Weapon,wsType_Missile,wsType_AA_Missile,WSTYPE_PLACEHOLDER},

    Escort 			= 0,
    Head_Type 		= 2,
	sigma 			= {10, 10, 10},
    M 				= 450.0,
    H_max 			= 25000.0,
    H_min 			= 3.0,
    Diam 			= 180.0,
    Cx_pil 			= 1,
    D_max 			= 100000.0,
    D_min 			= 2000.0,
    Head_Form 		= 1,
    Life_Time 		= 240.0,
    Nr_max 			= 60,
    v_min 			= 50.0,
    v_mid 			= 1800.0,
    Mach_max 		= 4.5,
    t_b 			= 0.0,
    t_acc 			= 4.0,
    t_marsh 		= 14.5,
    Range_max 		= 150000.0,
    H_min_t 		= 3.0,
    Fi_start     	= 3.14152, -- angle of tracking at firing
    Fi_rak       	= 3.14152,
    Fi_excort    	= 2.0,
    Fi_search    	= 99.9, --search angle limit
    OmViz_max    	= 99.9, --search line speed limit
	exhaust1 	 	= { 1, 0.9, 0.6, 1},
    X_back       	= -0.55,
    Y_back       	= 0.0,
    Z_back       	= 0.0,	
	exhaust2 	 	= { 0.63, 0.67, 0.75, 0.2 },
	X_back_acc 	 	= -2.88,
    Y_back_acc 	 	= 0.0,
    Z_back_acc 	 	= 0.0,	
    Reflection 		= 0.1,
    KillDistance 	= 15.0,
	tail_scale 	 	= 1.4,		
	ccm_k0 			= 0.2,	
	
	active_radar_lock_dist	= 25500.0,
	go_active_by_default	= 1,
	SeekerGen				= 4,

	PN_gain = 6.5,
	PN_coeffs = {3, 				-- Number of Entries
				5000.0 ,1.0,		-- Less 5 km to target Pn = 1
				100000.0, 0.5,		-- Between 10 and 5 km  to target, Pn smoothly changes from 0.5 to 1.0. 
				200000.0, 0.25};		-- Between 20 and 10 km  to target, Pn smoothly changes from 0.2 to 0.5. Longer then 30 km Pn = 0.2.
	ModelData = { 
		58, -- model params count
		0.7, -- characteristic square
		
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
		6, -- angular velocity created by the moment of gas rudders
		
		--t_statr 	t_b 	t_accel 	t_march 	t_inertial 	t_break 	t_end
		0,   		0,		4,   		14.5,		0, 			0, 			1000000000, -- time of stage, sec
		0, 			0, 		47.143,		6.66,		0, 			0, 			0, 			-- fuel flow rate, kg/sec
		0, 			0, 		100000, 	21500,		0, 			0, 			0, 			-- thrust, newtons
		
		1000000000, --self destruct by timer
		240, --onboard power system operation time, sec
		0, -- absolute self-destruction altitude. Altitude of the radio fuse triggering self destruct. 
		0.6, -- control switch-on delay after launch, sec 

		20000, -- Range to the target at the moment of launch, above which the missile will boost to climb.
		20000, -- The range to the target at any given moment, below which the missile will end the boost phase and switch to pronav
		0, -- sine of the elevation angle of the trajectory of the slide. 
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
	warhead = enhanced_a2a_warhead(15.0); 

    shape_table_data = {
        {
            name     = nameaster301,
            file     = 'aster_30_blk_1',
            life     = 1,
            fire     = {0, 1},
            username = "Aster 30 Blk 1NT",
            index    = WSTYPE_PLACEHOLDER,
        },
    },

};

declare_weapon(SAMPT_ASTER_30_Blk_1NT)

GT_t.WS_t.Aster30_1NT = {name = "Aster 30 Blk 1NT", display_name = _("Aster 30 Blk 1NT")};

GT_t.LN_t.Aster30_1NT = {}; 
GT_t.LN_t.Aster30_1NT.type = 4;
GT_t.LN_t.Aster30_1NT.distanceMin = 1000;
GT_t.LN_t.Aster30_1NT.distanceMax = 150000;
GT_t.LN_t.Aster30_1NT.reactionTime = 1.0;
GT_t.LN_t.Aster30_1NT.launch_delay = 0.1;
GT_t.LN_t.Aster30_1NT.reflection_limit = 0.0001;
GT_t.LN_t.Aster30_1NT.ECM_K = 0.1
GT_t.LN_t.Aster30_1NT.max_number_of_missiles_channels = 1;
GT_t.LN_t.Aster30_1NT.sensor = {};

set_recursive_metatable(GT_t.LN_t.Aster30_1NT.sensor, GT_t.WSN_t[0]);

GT_t.LN_t.Aster30_1NT.external_tracking_awacs = false;
GT_t.LN_t.Aster30_1NT.show_external_missile = true
GT_t.LN_t.Aster30_1NT.PL = {};
GT_t.LN_t.Aster30_1NT.PL[1] = {};
GT_t.LN_t.Aster30_1NT.PL[1].switch_on_delay = 0.1;
GT_t.LN_t.Aster30_1NT.PL[1].shot_delay = 0.1;
GT_t.LN_t.Aster30_1NT.PL[1].ammo_capacity = 8;
GT_t.LN_t.Aster30_1NT.PL[1].type_ammunition = SAMPT_ASTER_30_Blk_1NT.wsTypeOfWeapon;
GT_t.LN_t.Aster30_1NT.PL[1].reload_time = 3600;
GT_t.LN_t.Aster30_1NT.BR = { {pos = {0,0,0}}};