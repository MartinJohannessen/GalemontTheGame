///@func	scr_game_init(filename)
///@desc	run before any other code when starting the game
function scr_game_init() {

	gml_pragma("global", "scr_game_init()");

#region //Macros

	//General configuration
#macro CONFIG_SAVES_PATH "saves"
#macro CONFIG_DATA_PATH "data"
#macro CONFIG_SETTINGS_FILE "settings.json"

#endregion

#region //Enums



#endregion

#region //Globals

	//init settings
	global.settings = -1;
	global.save_slot = 0;

#endregion

#region //Load resources

	//load settings
	scr_settings_load();

#endregion


}
