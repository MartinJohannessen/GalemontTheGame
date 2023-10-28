///@func	scr_ui_box(sprite, x, y, width, height)
///@desc	draws a ui container with the provided 9-slice sprite
///@arg		sprite
///@arg		x
///@arg		y
///@arg		width
///@arg		height
function scr_draw_ui_box(argument0, argument1, argument2, argument3, argument4) {

	//get arguments
	var _sprite = argument0;
	var _x = argument1;
	var _y = argument2;
	var _width = argument3;
	var _height = argument4;

	//set base unit
	var _size = sprite_get_width(_sprite) div 3;
	var _scale_w = _width / _size;
	var _scale_h =_height / _size

	//background
	draw_sprite_part_ext(_sprite, 0, _size, _size, _size, _size, _x, _y, _scale_w, _scale_h, c_white, 1);

	//corners
	draw_sprite_part(_sprite, 0, 0, 0, _size, _size, _x - _size, _y - _size); //top left
	draw_sprite_part(_sprite, 0, _size * 2, 0, _size, _size, _x + _width, _y - _size); //top right
	draw_sprite_part(_sprite, 0, 0, _size * 2, _size, _size, _x - _size, _y + _height); //bottom left
	draw_sprite_part(_sprite, 0, _size * 2, _size * 2, _size, _size, _x + _width, _y + _height); //bottom right

	//borders
	draw_sprite_part_ext(_sprite, 0, _size, 0, _size, _size, _x, _y - _size, _scale_w, 1, c_white, 1); //top
	draw_sprite_part_ext(_sprite, 0, _size * 2, _size, _size, _size, _x + _width, _y, 1, _scale_h, c_white, 1); //right
	draw_sprite_part_ext(_sprite, 0, _size, _size * 2, _size, _size, _x, _y + _height, _scale_w, 1, c_white, 1); //bottom
	draw_sprite_part_ext(_sprite, 0, 0, _size, _size, _size, _x - _size, _y, 1, _scale_h, c_white, 1); //left


}
