///@func	scr_settings_load()
///@desc	Loads the game settings. Should only be called once at game start.
function scr_settings_load() {

	global.settings = scr_json_load(CONFIG_SETTINGS_FILE);

	if(global.settings < 0) {
		show_debug_message("Unable to read settings file!");
	}


}
