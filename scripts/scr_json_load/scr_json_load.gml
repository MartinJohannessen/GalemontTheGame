///@func	scr_json_load(filename, [decompress])
///@desc	loads a json file and returns a ds_map with the data, or -1 if it fails
///@arg		fname
function scr_json_load() {

	var fname = argument[0];
	var decompress = argument_count > 1 ? argument[1] : false;

	if(!file_exists(fname)) { return -1; }

	var buffer = buffer_load(fname);

	if(decompress) {
		var compressed_data = buffer_decompress(buffer);
		var data = json_decode(buffer_read(compressed_data, buffer_text));
		buffer_delete(compressed_data);
	}
	else {
		var data = json_decode(buffer_read(buffer, buffer_text));
	}

	buffer_delete(buffer);

	return data;


}
