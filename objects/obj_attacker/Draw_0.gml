draw_self();

sprite_index = attacker;
if mouse_check_button_pressed(mb_right)
	{
	selected = -1;	
	}
	
if selected != -1 and !instance_exists(obj_selection_big)
	{
	instance_create_layer(x, y, "Instances", obj_selection_big);
	}
	
if input("1")
	{
	selected = bench[0].sprite_index;
	bench[0].sprite_index = sprite_index;
	attacker = selected;
	selected = -1;
	}
if input("2")
	{
	selected = bench[1].sprite_index;
	bench[1].sprite_index = sprite_index;
	attacker = selected;
	selected = -1;
	}
if input("3")
	{
	selected = bench[2].sprite_index;
	bench[2].sprite_index = sprite_index;
	attacker = selected;
	selected = -1;
	}