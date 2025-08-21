-- CAMO NETTING

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 2

GT.visual.shape = "ERO_Camo_Netting"
GT.visual.shape_dstr = "ERO_Camo_Netting_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Camo_Netting"
GT.DisplayName = _("!Static ERO Camo Netting A")
GT.Rate = 1

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 2

GT.visual.shape = "ERO_Camo_Netting_L"
GT.visual.shape_dstr = "ERO_Camo_Netting_L_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Camo_Netting_L"
GT.DisplayName = _("!Static ERO Camo Netting Large A")
GT.Rate = 1

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)


GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 2

GT.visual.shape = "ERO_Camo_Netting2"
GT.visual.shape_dstr = "ERO_Camo_Netting2_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Camo_Netting2"
GT.DisplayName = _("!Static ERO Camo Netting B")
GT.Rate = 1

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 2

GT.visual.shape = "ERO_Camo_Netting2_L"
GT.visual.shape_dstr = "ERO_Camo_Netting2_L_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Camo_Netting2_L"
GT.DisplayName = _("!Static ERO Camo Netting Large B")
GT.Rate = 1

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 2

GT.visual.shape = "ERO_Camo_Netting3_L"
GT.visual.shape_dstr = "ERO_Camo_Netting3_L_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Camo_Netting3_L"
GT.DisplayName = _("!Static ERO Camo Netting Large C")
GT.Rate = 1

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)


-- SAM SITES REVETMENTS

--[[GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 500

GT.visual.shape = "ERO_Revetment_SAM11"
GT.visual.shape_dstr = "ERO_Revetment_SAM11"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Revetment_SAM11"
GT.DisplayName = _("!Static ERO Revetment O5")
GT.Rate = 10

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 500

GT.visual.shape = "ERO_Revetment_SAM11"
GT.visual.shape_dstr = "ERO_Revetment_SAM11"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Revetment_SAM11"
GT.DisplayName = _("!Static ERO Revetment O5")
GT.Rate = 10

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 500

GT.visual.shape = "ERO_Revetment_D"
GT.visual.shape_dstr = "ERO_Revetment_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Revetment_D"
GT.DisplayName = _("!Static ERO_Revetment_D")
GT.Rate = 10

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 500

GT.visual.shape = "ERO_Revetment_Platform1"
GT.visual.shape_dstr = "ERO_Revetment_Platform1"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Revetment_Platform1"
GT.DisplayName = _("!Static ERO Revetment Platform A")
GT.Rate = 10

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 500

GT.visual.shape = "ERO_Revetment_Platform2"
GT.visual.shape_dstr = "ERO_Revetment_Platform2"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Revetment_Platform2"
GT.DisplayName = _("!Static ERO Revetment Platform B")
GT.Rate = 10

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 500

GT.visual.shape = "ERO_Revetment_SAM_D_elevated"
GT.visual.shape_dstr = "ERO_Revetment_SAM_D_elevated"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Revetment_SAM_D_elevated"
GT.DisplayName = _("!Static ERO Revetment D Elevated")
GT.Rate = 10

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 500

GT.visual.shape = "ERO_Revetment_SAM_O"
GT.visual.shape_dstr = "ERO_Revetment_SAM_O"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Revetment_SAM_O"
GT.DisplayName = _("!Static ERO Revetment O")
GT.Rate = 10

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 500

GT.visual.shape = "ERO_Revetment_SAM_O2"
GT.visual.shape_dstr = "ERO_Revetment_SAM_O2"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Revetment_SAM_O2"
GT.DisplayName = _("!Static ERO Revetment O2")
GT.Rate = 10

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 500

GT.visual.shape = "ERO_Revetment_SAM_O2"
GT.visual.shape_dstr = "ERO_Revetment_SAM_O2"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Revetment_SAM_O2"
GT.DisplayName = _("!Static ERO Revetment O2")
GT.Rate = 10

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 500

GT.visual.shape = "ERO_Revetment_SAM_O3"
GT.visual.shape_dstr = "ERO_Revetment_SAM_O3"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Revetment_SAM_O3"
GT.DisplayName = _("!Static ERO Revetment O3")
GT.Rate = 10

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 500

GT.visual.shape = "ERO_Revetment_SAM_O4"
GT.visual.shape_dstr = "ERO_Revetment_SAM_O4"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Revetment_SAM_O4"
GT.DisplayName = _("!Static ERO Revetment O4")
GT.Rate = 10

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 500

GT.visual.shape = "ERO_Revetment_SAM_OC_elevated"
GT.visual.shape_dstr = "ERO_Revetment_SAM_OC_elevated"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Revetment_SAM_OC_elevated"
GT.DisplayName = _("!Static ERO Revetment O Elevated")
GT.Rate = 10

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 500

GT.visual.shape = "ERO_Revetment_SAM_OC2_elevated"
GT.visual.shape_dstr = "ERO_Revetment_SAM_OC2_elevated"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Revetment_SAM_OC2elevated"
GT.DisplayName = _("!Static ERO Revetment SA-2 Elevated")
GT.Rate = 10

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 500

GT.visual.shape = "ERO_Revetment_SAM_U"
GT.visual.shape_dstr = "ERO_Revetment_SAM_U"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Revetment_SAM_U"
GT.DisplayName = _("!Static ERO Revetment U2")
GT.Rate = 10

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 500

GT.visual.shape = "ERO_Revetment_SAM_UC"
GT.visual.shape_dstr = "ERO_Revetment_SAM_UC"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Revetment_SAM_UC"
GT.DisplayName = _("!Static ERO Revetment U3")
GT.Rate = 10

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 200

GT.visual.shape = "ERO_Revetment_Tank_U"
GT.visual.shape_dstr = "ERO_Revetment_Tank_U"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Revetment_Tank_U"
GT.DisplayName = _("!Static ERO Revetment Tank U2")
GT.Rate = 10

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 200

GT.visual.shape = "ERO_Revetment_Tank_U1"
GT.visual.shape_dstr = "ERO_Revetment_Tank_U1"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Revetment_Tank_U1"
GT.DisplayName = _("!Static ERO Revetment Tank U1")
GT.Rate = 10

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)--]]

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 100

GT.visual.shape = "ERO_Revetment_Trapeze_blue"
GT.visual.shape_dstr = "ERO_Crater"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 0.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Revetment_Trapeze_blue"
GT.DisplayName = _("!Static ERO Revetment Trapeze Blue")
GT.Rate = 10

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 100

GT.visual.shape = "ERO_Revetment_Trapeze_brown"
GT.visual.shape_dstr = "ERO_Crater"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 0.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Revetment_Trapeze_brown"
GT.DisplayName = _("!Static ERO Revetment Trapeze Brown")
GT.Rate = 10

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 100

GT.visual.shape = "ERO_Revetment_Trapeze_green"
GT.visual.shape_dstr = "ERO_Crater"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 0.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Revetment_Trapeze_green"
GT.DisplayName = _("!Static ERO Revetment Trapeze Green")
GT.Rate = 10

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)


-- SANDBAGS

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 5

GT.visual.shape = "ERO_ZU23_pos"
GT.visual.shape_dstr = "ERO_Crater"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 0.2
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_ZU23_pos"
GT.DisplayName = _("!Static ERO ZU-23 Position")
GT.Rate = 1

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 5

GT.visual.shape = "ERO_Sand_Round"
GT.visual.shape_dstr = "ERO_Sand_Round_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 0.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Sand_Round"
GT.DisplayName = _("!Static ERO Sandbags U")
GT.Rate = 1

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 5

GT.visual.shape = "ERO_Sand_Round2"
GT.visual.shape_dstr = "ERO_Sand_Round2_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 0.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Sand_Round2"
GT.DisplayName = _("!Static ERO Sandbags U2")
GT.Rate = 5

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 5

GT.visual.shape = "ERO_Sandbags"
GT.visual.shape_dstr = "ERO_Sandbags_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 0.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Sandbags"
GT.DisplayName = _("!Static ERO Sandbags Wall")
GT.Rate = 1

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 5

GT.visual.shape = "ERO_Sand_End"
GT.visual.shape_dstr = "ERO_Sand_End_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 0.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Sand_End"
GT.DisplayName = _("!Static ERO Sandbags Wall Ending Segment")
GT.Rate = 1

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 5

GT.visual.shape = "ERO_Sand_Middle"
GT.visual.shape_dstr = "ERO_Sand_Middle_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 0.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Sand_Middle"
GT.DisplayName = _("!Static ERO Sandbags Wall Middle Segment")
GT.Rate = 1

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 5

GT.visual.shape = "ERO_Sand_Middle_Large"
GT.visual.shape_dstr = "ERO_Sand_Middle_Large_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 0.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Sand_Middle_Large"
GT.DisplayName = _("!Static ERO Sandbags Wall Large")
GT.Rate = 1

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)


--SAM SITES PROPS

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 5

GT.visual.shape = "ERO_S300_Reload"
GT.visual.shape_dstr = "ERO_Crater"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = true;

GT.Name = "ERO_S300_Reload"
GT.DisplayName = _("!Static ERO S-300 Spare Reloads")
GT.Rate = 25

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 5

GT.visual.shape = "ERO_S75_Reload"
GT.visual.shape_dstr = "ERO_Crater"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = true;

GT.Name = "ERO_S75_Reload"
GT.DisplayName = _("!Static ERO S-75 Spare Missile")
GT.Rate = 25

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 5

GT.visual.shape = "ERO_Mk83"
GT.visual.shape_dstr = "ERO_Crater"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = true;

GT.Name = "ERO_Mk83"
GT.DisplayName = _("!Static ERO Mk-83 Bombs Rack")
GT.Rate = 25

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 5

GT.visual.shape = "ERO_MHU-141"
GT.visual.shape_dstr = "ERO_Crater"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = true;

GT.Name = "ERO_MHU-141"
GT.DisplayName = _("!Static ERO MHU-141")
GT.Rate = 25

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 5

GT.visual.shape = "ERO_MHU-141-AIM-120"
GT.visual.shape_dstr = "ERO_MHU-141-AIM-120_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = true;

GT.Name = "ERO_MHU-141-AIM-120"
GT.DisplayName = _("!Static ERO MHU-141 w. AIM-120")
GT.Rate = 25

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 5

GT.visual.shape = "ERO_Rus_cart_R73"
GT.visual.shape_dstr = "ERO_Rus_cart_R73_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = true;

GT.Name = "ERO_Rus_cart_R73"
GT.DisplayName = _("!Static ERO Russian Cart w. R-73")
GT.Rate = 25

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 5

GT.visual.shape = "ERO_Rus_cart_R77"
GT.visual.shape_dstr = "ERO_Rus_cart_R77_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = true;

GT.Name = "ERO_Rus_cart_R77"
GT.DisplayName = _("!Static ERO Russian Cart w. R-77")
GT.Rate = 25

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 5

GT.visual.shape = "ERO_MHU-141-Mk83"
GT.visual.shape_dstr = "ERO_MHU-141-Mk83_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = true;

GT.Name = "ERO_MHU-141-Mk83"
GT.DisplayName = _("!Static ERO MHU-141 w. Mk83")
GT.Rate = 25

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 5

GT.visual.shape = "ERO_MHU-141-AIM-9"
GT.visual.shape_dstr = "ERO_MHU-141-AIM-9_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = true;

GT.Name = "ERO_MHU-141-AIM-9"
GT.DisplayName = _("!Static ERO MHU-141 w. AIM-9")
GT.Rate = 25

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 5

GT.visual.shape = "ERO_M32A-60A"
GT.visual.shape_dstr = "ERO_M32A-60A_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_M32A-60A"
GT.DisplayName = _("!Static ERO M32A-60A")
GT.Rate = 5

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 5

GT.visual.shape = "ERO_MD1_TowBar"
GT.visual.shape_dstr = "ERO_MD1_TowBar_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 0.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_MD1_TowBar"
GT.DisplayName = _("!Static ERO MD-1 Tow Bar")
GT.Rate = 5

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 5

GT.visual.shape = "ERO_forklift"
GT.visual.shape_dstr = "ERO_Crater"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 0.5
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_forklift"
GT.DisplayName = _("!Static ERO Small Forklift")
GT.Rate = 5

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 5

GT.visual.shape = "ERO_ladder"
GT.visual.shape_dstr = "ERO_ladder_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 0.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_ladder"
GT.DisplayName = _("!Static ERO Cockpit Ladder")
GT.Rate = 5

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 10

GT.visual.shape = "ERO_Camo_Netting_Oil_Depot"
GT.visual.shape_dstr = "ERO_Crater"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 2.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = true;

GT.Name = "ERO_Camo_Netting_Oil_Depot"
GT.DisplayName = _("!Static ERO Oil Depot with Camo Netting")
GT.Rate = 20

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 5

GT.visual.shape = "ERO_Type_C_WW2_Bomb_trolley"
GT.visual.shape_dstr = "ERO_Crater"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = true;

GT.Name = "ERO_Type_C_WW2_Bomb_trolley"
GT.DisplayName = _("!Static ERO Type-C WW2 Bomb Trolley")
GT.Rate = 20

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)


--BARRIERS, HESCO, MISC

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 20

GT.visual.shape = "ERO_Hedgehog"
GT.visual.shape_dstr = "ERO_Hedgehog_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 0.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Hedgehog"
GT.DisplayName = _("!Static ERO Hedgehog")
GT.Rate = 5

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 20

GT.visual.shape = "ERO_Hesco_Barrier_1x1x1"
GT.visual.shape_dstr = "ERO_Hesco_Barrier_1x1x1_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 0.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Hesco_Barrier_1x1x1"
GT.DisplayName = _("!Static ERO Hesco Barrier 1x1x1")
GT.Rate = 5

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 20

GT.visual.shape = "ERO_Hesco_Barrier_1x1x1_s"
GT.visual.shape_dstr = "ERO_Hesco_Barrier_1x1x1_s_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 0.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Hesco_Barrier_1x1x1_s"
GT.DisplayName = _("!Static ERO Hesco Barrier 1x1x1 w. Sandbags")
GT.Rate = 5

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 20

GT.visual.shape = "ERO_Hesco_Barrier_3x1x1"
GT.visual.shape_dstr = "ERO_Hesco_Barrier_3x1x1_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 0.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Hesco_Barrier_3x1x1"
GT.DisplayName = _("!Static ERO Hesco Barrier 3x1x1")
GT.Rate = 5

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 20

GT.visual.shape = "ERO_Hesco_Barrier_3x1x1_s"
GT.visual.shape_dstr = "ERO_Hesco_Barrier_3x1x1_s_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 0.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Hesco_Barrier_3x1x1_s"
GT.DisplayName = _("!Static ERO Hesco Barrier 3x1x1 w. Sandbags")
GT.Rate = 5

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 20

GT.visual.shape = "ERO_Hesco_Barrier_3x1x2"
GT.visual.shape_dstr = "ERO_Hesco_Barrier_3x1x2_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 0.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Hesco_Barrier_3x1x2"
GT.DisplayName = _("!Static ERO Hesco Barrier 3x1x2")
GT.Rate = 5

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 20

GT.visual.shape = "ERO_Hesco_Barrier_3x2x2"
GT.visual.shape_dstr = "ERO_Hesco_Barrier_3x2x2_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 0.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Hesco_Barrier_3x2x2"
GT.DisplayName = _("!Static ERO Hesco Barrier 3x2x2")
GT.Rate = 5

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 20

GT.visual.shape = "ERO_Hesco_Barrier_6x1x2"
GT.visual.shape_dstr = "ERO_Hesco_Barrier_6x1x2_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 0.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Hesco_Barrier_6x1x2"
GT.DisplayName = _("!Static ERO Hesco Barrier 6x1x2")
GT.Rate = 5

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 20

GT.visual.shape = "ERO_Hesco_Barrier_7x1x1"
GT.visual.shape_dstr = "ERO_Hesco_Barrier_7x1x1_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 0.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Hesco_Barrier_7x1x1"
GT.DisplayName = _("!Static ERO Hesco Barrier 7x1x1")
GT.Rate = 5

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 20

GT.visual.shape = "ERO_Hesco_Barrier_7x1x2"
GT.visual.shape_dstr = "ERO_Hesco_Barrier_7x1x2_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 0.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Hesco_Barrier_7x1x2"
GT.DisplayName = _("!Static ERO Hesco Barrier 7x1x2")
GT.Rate = 5

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 20

GT.visual.shape = "ERO_Hesco_Barrier_9x1x1"
GT.visual.shape_dstr = "ERO_Hesco_Barrier_9x1x1_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 0.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Hesco_Barrier_9x1x1"
GT.DisplayName = _("!Static ERO Hesco Barrier 9x1x1")
GT.Rate = 5

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 20

GT.visual.shape = "ERO_Hesco_Barrier_9x2x2"
GT.visual.shape_dstr = "ERO_Hesco_Barrier_9x2x2_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 0.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Hesco_Barrier_9x2x2"
GT.DisplayName = _("!Static ERO Hesco Barrier 9x2x2")
GT.Rate = 5

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)


GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 50

GT.visual.shape = "ERO_Hesco_Barrier_Tower"
GT.visual.shape_dstr = "ERO_Hesco_Barrier_Tower_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 0.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Hesco_Barrier_Tower"
GT.DisplayName = _("!Static ERO Hesco Barrier Tower")
GT.Rate = 50

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)





GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 2

GT.visual.shape = "ERO_Barbed_Wire"
GT.visual.shape_dstr = "ERO_Barbed_Wire_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 0.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Barbed_Wire"
GT.DisplayName = _("!Static ERO Barbed Wire A")
GT.Rate = 1

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 9999

GT.visual.shape = "ERO_Barbed_Wire_Fence"
GT.visual.shape_dstr = "ERO_Barbed_Wire_Fence_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 0.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Barbed_Wire_Fence"
GT.DisplayName = _("!Static ERO Barbed Wire Fence")
GT.Rate = 5

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 2

GT.visual.shape = "ERO_Barbed_Wire2"
GT.visual.shape_dstr = "ERO_Barbed_Wire2_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 0.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Barbed_Wire2"
GT.DisplayName = _("!Static ERO Barbed Wire B")
GT.Rate = 1

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 2

GT.visual.shape = "ERO_Barbed_Wire3"
GT.visual.shape_dstr = "ERO_Barbed_Wire3_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 0.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Barbed_Wire3"
GT.DisplayName = _("!Static ERO Barbed Wire C")
GT.Rate = 1

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 5

GT.visual.shape = "ERO_Container"
GT.visual.shape_dstr = "ERO_Crater"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 0.5
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Container"
GT.DisplayName = _("!Static ERO ISO Container")
GT.Rate = 5

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 2

GT.visual.shape = "ERO_Gate1"
GT.visual.shape_dstr = "ERO_Gate1_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 0.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Gate1"
GT.DisplayName = _("!Static ERO Gate A")
GT.Rate = 1

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 2

GT.visual.shape = "ERO_Gate2"
GT.visual.shape_dstr = "ERO_Gate2_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 0.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Gate2"
GT.DisplayName = _("!Static ERO Gate B")
GT.Rate = 1

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)


-- BUILDINGS

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 50

GT.visual.shape = "ERO_Radio_Tower"
GT.visual.shape_dstr = "ERO_Crater"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Radio_Tower"
GT.DisplayName = _("!Static ERO Radio Tower")
GT.Rate = 150

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 50

GT.visual.shape = "ERO_Guard_Booth"
GT.visual.shape_dstr = "ERO_Guard_Booth_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Guard_Booth"
GT.DisplayName = _("!Static ERO Guard Booth")
GT.Rate = 25

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 2

GT.visual.shape = "ERO_Toilet"
GT.visual.shape_dstr = "ERO_Toilet_D"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 0.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Toilet"
GT.DisplayName = _("!Static ERO Mobile Toilet")
GT.Rate = 1

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 2

GT.visual.shape = "ERO_Tent_A"
GT.visual.shape_dstr = "ERO_Crater"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Tent_A"
GT.DisplayName = _("!Static ERO Tent A")
GT.Rate = 1

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 2

GT.visual.shape = "ERO_Tent_B"
GT.visual.shape_dstr = "ERO_Crater"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Tent_B"
GT.DisplayName = _("!Static ERO Tent B")
GT.Rate = 1

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 2

GT.visual.shape = "ERO_Tent_C"
GT.visual.shape_dstr = "ERO_Crater"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Tent_C"
GT.DisplayName = _("!Static ERO Tent C")
GT.Rate = 1

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 2

GT.visual.shape = "ERO_Tent_C2"
GT.visual.shape_dstr = "ERO_Crater"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Tent_C2"
GT.DisplayName = _("!Static ERO Tent C2")
GT.Rate = 1

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 2

GT.visual.shape = "ERO_Tent_D"
GT.visual.shape_dstr = "ERO_Crater"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Tent_D"
GT.DisplayName = _("!Static ERO Tent D")
GT.Rate = 1

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 2

GT.visual.shape = "ERO_Tent_D_UN"
GT.visual.shape_dstr = "ERO_Crater"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Tent_D_UN"
GT.DisplayName = _("!Static ERO Tent D UN")
GT.Rate = 1

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 2

GT.visual.shape = "ERO_Tent_RedCross_A"
GT.visual.shape_dstr = "ERO_Crater"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Tent_RedCross_A"
GT.DisplayName = _("!Static ERO Tent Red Cross A")
GT.Rate = 1

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 2

GT.visual.shape = "ERO_Tent_RedCross_B"
GT.visual.shape_dstr = "ERO_Crater"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = false;

GT.Name = "ERO_Tent_RedCross_B"
GT.DisplayName = _("!Static ERO Tent Red Cross B")
GT.Rate = 1

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle)
set_recursive_metatable(GT.chassis, GT_t.CH_t.UAZ469);

GT.visual.shape = "ERO_MJ-1B_DRIVEABLE"
GT.visual.shape_dstr = "ERO_Crater"  --Displays Destroyed model after explosion.

--chassis
GT.swing_on_run = false
GT.chassis.life = 2; --The higher the value  more damage the unit can take before being destroyed

--Burning after hit
GT.visual.fire_size = 0.4 --relative burning size
GT.visual.fire_pos[1] = 0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 500 --burning time (seconds)

--GT.animation_arguments.headlights = 31; -- Turns on lights at night for Vehicles if animated
--GT.animation_arguments.crew_presence = 50; 
--GT.animation_arguments.stoplights = 30; -- Back/brake lights of the car?
--GT.animation_arguments.markerlights = 32; -- Turns on BANO Lights if animated 

GT.Name = "ERO_MJ-1B_DRIVEABLE" --Will be also the name of your livery folder and the name used for Unit Damage Reports
GT.DisplayName = _("!Static ERO MJ-1B Driveable") --Name in ME
GT.Rate = 3

GT.driverViewConnectorName = "DRIVER_POINT" --Driver Camera position for Combined Arms

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000005"; --Icon type in ME
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsTypeUAZ469,
				"Cars",
				"human_vehicle",
				};
GT.category = "Unarmed";

GT.InternalCargo = {
			nominalCapacity = 600,
			maximalCapacity = 600, --maximum volume of transportable units that can accommodate.
		}
		
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle)
set_recursive_metatable(GT.chassis, GT_t.CH_t.UAZ469);

GT.visual.shape = "ERO_SM-340_ROOFED_GREY_DRIVEABLE"
GT.visual.shape_dstr = "ERO_Crater"  --Displays Destroyed model after explosion.

--chassis
GT.swing_on_run = false
GT.chassis.life = 2; --The higher the value  more damage the unit can take before being destroyed

--Burning after hit
GT.visual.fire_size = 0.4 --relative burning size
GT.visual.fire_pos[1] = 0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 500 --burning time (seconds)

--GT.animation_arguments.headlights = 31; -- Turns on lights at night for Vehicles if animated
--GT.animation_arguments.crew_presence = 50; 
--GT.animation_arguments.stoplights = 30; -- Back/brake lights of the car?
--GT.animation_arguments.markerlights = 32; -- Turns on BANO Lights if animated 

GT.Name = "ERO_SM-340_ROOFED_GREY_DRIVEABLE" --Will be also the name of your livery folder and the name used for Unit Damage Reports
GT.DisplayName = _("!Static ERO SM-340 DRIVEABLE") --Name in ME
GT.Rate = 3

GT.driverViewConnectorName = "DRIVER_POINT" --Driver Camera position for Combined Arms

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000005"; --Icon type in ME
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsTypeUAZ469,
				"Cars",
				"human_vehicle",
				};
GT.category = "Unarmed";

GT.InternalCargo = {
			nominalCapacity = 600,
			maximalCapacity = 600, --maximum volume of transportable units that can accommodate.
		}
		
add_surface_unit(GT)


GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 5

GT.visual.shape = "ERO_MHU-141-Hellfire"
GT.visual.shape_dstr = "ERO_Crater"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = true;

GT.Name = "ERO_MHU-141-Hellfire"
GT.DisplayName = _("!Static ERO_MHU-141-Hellfire")
GT.Rate = 25

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)


GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 5

GT.visual.shape = "SM-340"
GT.visual.shape_dstr = "ERO_Crater"
GT.CustomAimPoint = {0,0,0}
GT.visual.fire_size = 1.0
GT.visual.fire_pos = {0,0,0};
GT.visual.fire_time = 0
GT.time_agony = 0;
GT.canExplode = true;

GT.Name = "ERO_SM-340"
GT.DisplayName = _("!Static ERO_SM-340")
GT.Rate = 25

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Trucks",
				"SAM CC",
                };
GT.category = "Air Defence";
                
add_surface_unit(GT)


GT = {};
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle)
set_recursive_metatable(GT.chassis, GT_t.CH_t.UAZ469);

GT.visual.shape = "ERO_1985_Groove_MB-2"
GT.visual.shape_dstr = "ERO_Crater"  --Displays Destroyed model after explosion.

--chassis
GT.swing_on_run = false
GT.chassis.life = 2; --The higher the value  more damage the unit can take before being destroyed

--Burning after hit
GT.visual.fire_size = 0.4 --relative burning size
GT.visual.fire_pos[1] = 0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 500 --burning time (seconds)

--GT.animation_arguments.headlights = 31; -- Turns on lights at night for Vehicles if animated
--GT.animation_arguments.crew_presence = 50; 
--GT.animation_arguments.stoplights = 30; -- Back/brake lights of the car?
--GT.animation_arguments.markerlights = 32; -- Turns on BANO Lights if animated 

GT.Name = "ERO_1985_Groove_MB-2" --Will be also the name of your livery folder and the name used for Unit Damage Reports
GT.DisplayName = _("!Static ERO_1985_Groove_MB-2") --Name in ME
GT.Rate = 3

GT.driverViewConnectorName = "DRIVER_POINT" --Driver Camera position for Combined Arms

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000005"; --Icon type in ME
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsTypeUAZ469,
				"Cars",
				"human_vehicle",
				};
GT.category = "Unarmed";

GT.InternalCargo = {
			nominalCapacity = 600,
			maximalCapacity = 600, --maximum volume of transportable units that can accommodate.
		}
		
add_surface_unit(GT)
