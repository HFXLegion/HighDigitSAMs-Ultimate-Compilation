-- LEGACY SUPPORT
declare_plugin("SAM Pack",
{
installed 	 	  = true,
displayName   = _("SAM Pack DEV"),
shortName	  =   "SAM Pack DEV",
state		 	  = "installed",
developerName	  = "ERO & Fox",
version		 	  = "0.4",	
info		  =    _("Legacy support for SAM Pack enjoyers"),
})

plugin_done()

declare_plugin("SAM Sites Asset Pack",
{
installed 	 	  = true, 
displayName  	  = _("SAM Sites Asset Pack"),
shortName	 	  =   "2SAP",
state		 	  = "installed",
developerName	  = "ERO, LetMePickThat",
version		 	  = "Beta 1.8.2",
info			  = _("This asset pack adds various 3D props and radars for use along the High Digit SAMs mod. Some vehicles are also included. Made by ERO and LetMePickThat"),
})
plugin_done()
declare_plugin("IDF Assets Pack",

{
displayName   = _("IDF Assets Pack"),
shortName	  =   "IDF Assets Pack",
installed 	 	  = true,
dirName	  	 	= current_mod_path,

encyclopedia_path = current_mod_path .. '/Encyclopedia',

fileMenuName 	= _("IDF Assets Pack"),
version		 	  = "1.0",	
state		 	  = "installed",
developerName	  = "IDF Mods Project",
info		  =    _("IDF Mods Project - IDF Assets Pack"),	 

})