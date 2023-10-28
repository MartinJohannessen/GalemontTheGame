draw_self();
depth = obj_player.depth + 1;

if talking = true
	{
	scr_dialogue(sprite_index);
	if keyboard_check_pressed(ord("E"))
		{
		if msg < msgs
			{
			if msg = 1 and choosing = -1
				{
				choosing = 1;
				chce = 1;
				sel = 0;
				exit;
				}
			if msg = 1 and choosing = 1
				{
				if sel = 0
					{
					choosing = -1;
					msg+=2;
					exit;
					}
				if sel = 1
					{
					choosing = -1;
					msg++;
					exit;
					}
				}
			if msg = 4 and choosing = -1
				{
				choosing = 1;
				chce = 1;
				sel = 0;
				exit;
				}
			if msg = 4 and choosing = 1
				{
				if sel = 0
					{
					choosing = -1;
					msg+=2;
					exit;
					}
				if sel = 1
					{
					choosing = -1;
					msg++;
					exit;
					}
				
				}
			msg++;
			}
		else{ //If I AM done talking
			
			//Reset everything back to default and end dialogue
			msg = 1;
			alph = 0;
			dialogue = -1;
			talking = false;
			interacting = -1;
			alarm_set(0, 60);
			}
		}
	}
	
if talking = false and alarm[0] = -1
	{
	if keyboard_check_pressed(ord("E")) and interact = id
		{
		talking = true;
		interacting = 1;
		}
	}
	
if choosing = 1
	{
	if keyboard_check_pressed(vk_up) and sel > 0 sel--;
	if keyboard_check_pressed(vk_down) and sel < 1 sel++;
	
	}