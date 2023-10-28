///@func	scr_game_save([slot])
///@desc	saves the game to the specified slot
///@arg		slot
function scr_game_save() {

	var slot = argument_count > 0 ? argument[0] : global.save_slot;
	var data = ds_map_create();

	//set save data
	//data[? "key"] = value;

	//save to file
	scr_json_save(save_data, CONFIG_SAVES_PATH + "/slot_" + string(slot) + ".sav");
	ds_map_destroy(data);


}
