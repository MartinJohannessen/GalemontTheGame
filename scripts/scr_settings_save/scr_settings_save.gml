///@func	scr_settings_save()
///@desc	saves the current game settings
function scr_settings_save() {

	scr_json_save(global.settings, CONFIG_SETTINGS_FILE);


}
