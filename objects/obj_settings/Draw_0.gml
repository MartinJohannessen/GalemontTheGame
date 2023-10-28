//animate
if(alarm[0] >= 0) {
	scr_draw_ui_box(spr_ui_box, x, y, width, lerp(0, height, 1 - alarm[0] / 30));
	exit;
}

//draw the box
scr_draw_ui_box(spr_ui_box, x, y, width, height);

draw_set_font(fn_nyanko12);
draw_set_valign(fa_top);
draw_set_halign(fa_center);

//define spaces
var _xoffset = x + width div 2;
var _yoffset = y + 8;
var _yspace = 24;

//get current page
var _page = page;

//draw every setting item
for(var _i = 0, _s = array_length_1d(_page); _i < _s; _i++) {

	var _setting = _page[_i];
	var _type = _setting[SETTINGS_PROP.type];
	var _label = _setting[SETTINGS_PROP.label];
	var _value = "";
	
	switch(_type) {
		case SETTINGS_TYPE.select:
			_value = _setting[SETTINGS_PROP.value];
			var _args = _setting[SETTINGS_PROP.args];
			_value = _args[_value];
		break;
		
		case SETTINGS_TYPE.key:
			_value = _setting[SETTINGS_PROP.value];
			if(waiting_key && setting_index == _i) { _value = "press a key..."; }
			else { _value = string_lettersdigits(chr(_value)) != "" ? string_lower(chr(_value)) : string(_value); }
		break;
	}
	
	if(setting_index == _i) { _label = "[ " + _label + " ]"; } 
	
	draw_set_color(c_dkgray);
	draw_text(_xoffset, _yoffset + _i * _yspace, _label);
	draw_set_color(c_gray);
	draw_text(_xoffset, _yoffset + _i * _yspace + 10, _value);

}