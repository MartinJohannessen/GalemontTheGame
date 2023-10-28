///@func	scr_json_load(ds_map, fname, [compress])
///@desc	Saves a ds_map as json file. If compress is true, saves a compressed buffer
///@arg		ds_map
///@arg		fname
///@arg		[compress]
function scr_json_save() {

	var data = argument[0];
	var fname = argument[1];
	var compress = argument_count > 2 ? argument[2] : false;

	//write the data to a buffer and save it to file
	var json_string = json_encode(data);
	var buffer = buffer_create(string_byte_length(json_string), buffer_fixed, 1);
	buffer_write(buffer, buffer_text, json_string);

	//write the file and cleanup
	if(compress) {
		var compressed_buffer = buffer_compress(buffer, 0, buffer_get_size(buffer));
		buffer_save(compressed_buffer, fname);
		buffer_delete(compressed_buffer);
	}
	else {
		buffer_save(buffer, fname);
	}

	buffer_delete(buffer);


}
