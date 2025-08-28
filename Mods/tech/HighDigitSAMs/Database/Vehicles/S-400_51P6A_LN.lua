GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle);
set_recursive_metatable(GT.chassis, GT_t.CH_t.MAZ543M);
GT.chassis.life = 2;

GT.visual.shape = "ERO_51P6A_LN";
GT.visual.shape_dstr = "ERO_51P6A_LN_D";

--chassis

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 8.225;

GT.EPLRS = true;

--Burning after hit
GT.visual.fire_size = 1.1; --relative burning size
GT.visual.fire_pos[1] = 2; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1100; --burning time (seconds)

-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 400000;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.S_400_48N6DM);
GT.WS[ws].pos = {-4.915, 2.036,0};
GT.WS[ws].moveable = false;
GT.WS[ws].LN[1].barrels_reload_type = 3; -- BarrelsReloadTypes.SEQUENTIALY
GT.WS[ws].LN[1].depends_on_unit = {{{"S-400 92N6E tr"},},{{"S-400 92N6E mast tr"},}};
GT.WS[ws].LN[1].reactionTime = 0.1;
GT.WS[ws].LN[1].PL[1].ammo_capacity = 4;
GT.WS[ws].LN[1].PL[1].shot_delay = 0.1;
GT.WS[ws].LN[1].PL[1].reload_time = 2000;
GT.WS[ws].LN[1].BR = {};
--GT.WS[ws].LN[1].BR[1] = {pos = {10.05, 0.216,-1.045}, drawArgument = 4 };
--GT.WS[ws].LN[1].BR[2] = {pos = {10.05, 1.204,-0.614}, drawArgument = 5 };
--GT.WS[ws].LN[1].BR[3] = {pos = {10.05, 1.204, 0.614}, drawArgument = 6 };
--GT.WS[ws].LN[1].BR[4] = {pos = {10.05, 0.216, 1.045}, drawArgument = 7 };
GT.WS[ws].LN[1].BR[1] = {pos = {10.05, 0.216,-1.045}, drawArgument = 188 };
GT.WS[ws].LN[1].BR[2] = {pos = {10.05, 1.204,-0.614}, drawArgument = 189 };
GT.WS[ws].LN[1].BR[3] = {pos = {10.05, 1.204, 0.614}, drawArgument = 190 };
GT.WS[ws].LN[1].BR[4] = {pos = {10.05, 0.216, 1.045}, drawArgument = 191 };
GT.Name = "S-400 51P6A ln";
GT.DisplayName = _('SAM SA-21 S-400 "Growler" TEL A');
GT.DisplayNameShort = _("SA-21 TEL A");
GT.Rate = 10;

GT.DetectionRange  = 0;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000079";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Miss,PU_5P85D,
				"AA_missile",
				"SAM LL",
				"Datalink",
				};
GT.category = "Air Defence";
GT.tags  =
{
    "Air Defence",
	"Launcher",
};
GT.Countries = {"Russia", "Turkey",}
