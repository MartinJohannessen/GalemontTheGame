draw_self();
depth = obj_player.depth + 1;

if talking = true
	{
	if keyboard_check_pressed(ord("E"))
		{
		//If I'm not done talking, go to the next message
		if msg < msgs msg++;
		else{ //If I AM done talking
			
			//Reset everything back to default and end dialogue
			msg = 1;
			alph = 0;
			dialogue = -1;
			talking = false;
			interacting = -1;
			alarm_set(0, 60);
			
			scr_addparty();      //add me to the party
			instance_destroy();  //destroy my instance
			}
		}
	scr_dialogue(sprite_index);
	}
	
if talking = false and alarm[0] = -1
	{
	if keyboard_check_pressed(ord("E")) and interact = id
		{
		talking = true;
		interacting = 1;
		}
	}
	