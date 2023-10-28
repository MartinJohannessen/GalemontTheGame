//Save settings and go back

for(var _i = 0; _i < array_length_1d(pages); _i++) {
	var _page = pages[_i];
	
	for(var _j = 0; _j < array_length_1d(_page); _j++) {
		var _setting = _page[_j];
		var _type = _setting[SETTINGS_PROP.type];
		
		if(_type == SETTINGS_TYPE.select || _type == SETTINGS_TYPE.key) {
			var _name = _setting[SETTINGS_PROP.name];
			var _value = _setting[SETTINGS_PROP.value];
			global.settings[? _name] = _value;
		}
	}
}

scr_settings_save();

room_goto(rm_test);