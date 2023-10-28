///@func	scr_game_load([slot])
///@desc	saves the game to the specified slot
///@arg		slot
function scr_game_load() {

	var slot = argument_count > 0 ? argument[0] : global.save_slot;
	var data = scr_json_load(CONFIG_SAVES_PATH + "/slot_" + string(slot) + ".sav");

	//set loaded data

	//cleanup
	ds_map_destroy(data);


}
