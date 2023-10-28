
//Psst, click the plus to expand this code block!

#region //Assign Player Controls
//k = key pressed
//kr = key released
//kh = key held :)

	k_right = keyboard_check(ord("D"));
	k_left = keyboard_check(ord("A"));
	k_up = keyboard_check(ord("W"));
	k_down = keyboard_check(ord("S"));
	k_shift = keyboard_check(vk_shift);
	kr_shift = keyboard_check_released(vk_shift);
	k_space = keyboard_check_pressed(vk_space);
	k_action = keyboard_check_pressed(ord("E"));
	k_move = k_up or k_down or k_right or k_left;
	
#endregion
	
#region //Movement and Collision and Animation
//Directional Speed
if (target_x > x) //right
	{
	x += spd
	}
if (target_x < x) //left
	{
	x -= spd
	}
if (target_y > y) //down
	{
	y += spd
	}
if (target_y < y) //up
	{
	y -= spd
	}

if moving = false and k_move = 1 image_index = 0;

if moving = false and k_move = 0 and interacting = -1
	{
	image_speed = 0;
	image_index = 1;
	move_press = k_move;
	}
	else{
	move_press = -1;}
	
//Destination Check
if (target_x == x && target_y == y)
	{
	moving = false;
	}

if !instance_exists(obj_battle) and interacting = -1
	{
	//Movement
	if (k_up and !moving) 
		{
		moving = true;
		sprite_index = spr_wu;
		if !place_meeting(x, y-16, par_coll)
			{
			scr_tension();
			target_y -= 16;
			image_speed = 1;
			}
			else image_index = 1;
		}
	
	if (k_down and !moving)
		{
		moving = true;
		sprite_index = spr_wd;
		if !place_meeting(x, y+16, par_coll)
			{
			scr_tension();
			target_y += 16;
			image_speed = 1;
			}
			else image_index = 1;
		}
	if (k_right and !moving)
		{
		moving = true;
		sprite_index = spr_wr;
		if !place_meeting(x+16, y, par_coll)
			{
			scr_tension();
			target_x += 16;
			image_speed = 1;
			}
			else image_index = 1;
		}
	if (k_left and !moving)
		{
		moving = true;
		sprite_index = spr_wl;
		if !place_meeting(x-16, y, par_coll)
			{
			scr_tension();
			target_x -= 16;
			image_speed = 1;
			}
			else image_index = 1;
		}
	}
if instance_exists(obj_elevator)
	{
	if obj_elevator.cntr >= 60 y += 1;	
	}

#endregion

#region //NPC Interaction
if sprite_index = spr_wu
	{
	if collision_rectangle(x, y, x+16, y-16, par_npc, 0, 0)
		{
		interact = instance_nearest(x, y, par_npc);	
		}
	}
if sprite_index = spr_wd
	{
	if collision_rectangle(x, y+16, x+16, y+32, par_npc, 0, 0)
		{
		interact = instance_nearest(x, y, par_npc);	
		}
	}
if sprite_index = spr_wr
	{
	if collision_rectangle(x+16, y, x+32, y+16, par_npc, 0, 0)
		{
		interact = instance_nearest(x, y, par_npc);	
		}
	}
if sprite_index = spr_wl
	{
	if collision_rectangle(x, y, x-16, y+16, par_npc, 0, 0)
		{
		interact = instance_nearest(x, y, par_npc);	
		}
	}








#endregion