//get current page and setting
var _page = page;
var _setting = _page[setting_index];

//wait for a key input
if(waiting_key) {
	if(keyboard_check_pressed(vk_escape)) { waiting_key = false; }
	else if(keyboard_check_pressed(vk_anykey)) {
		_setting[@ SETTINGS_PROP.value] = keyboard_lastkey;
		waiting_key = false;
	}
	
	exit;
}

//change current option
var _change_y = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
if(_change_y != 0) {
	setting_index = clamp(setting_index + _change_y, 1, array_length_1d(_page) - 1);
	_setting = _page[setting_index];
}

//change current setting status
//TODO: use actual game keys instead of hard coded controls
var _type = _setting[SETTINGS_PROP.type];
switch(_type) {

	//if it's a select, switch from all possible values by pressing left / right
	case SETTINGS_TYPE.select:
		var _change_x = keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left);
		
		if(_change_x != 0) {
			var _value = _setting[SETTINGS_PROP.value];	
			var _args = _setting[SETTINGS_PROP.args];
			_setting[@ SETTINGS_PROP.value] = clamp(_value + _change_x, 0, array_length_1d(_args) - 1);
		}
		
	break;
	
	//if it's a link to another page, go there by pressing enter
	case SETTINGS_TYPE.page:
		if(keyboard_check_pressed(vk_enter)) { 
			var _value = _setting[SETTINGS_PROP.value];
			var _args = _setting[SETTINGS_PROP.args];
			page = pages[_value];
			setting_index = _args;
		}
	break;
	
	//if it's an even, run it
	case SETTINGS_TYPE.event:
		if(keyboard_check_pressed(vk_enter)) { 
			var _value = _setting[SETTINGS_PROP.value];
			event_user(_value);
		}
	break;
	
	//if it's a key set, entry key set mode
	case SETTINGS_TYPE.key:
		if(keyboard_check_pressed(vk_enter)) { 
			waiting_key = true;
		}
	break;

}