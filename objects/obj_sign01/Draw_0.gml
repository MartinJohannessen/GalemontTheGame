draw_self();
depth = obj_player.depth + 1;

if talking = true
	{
	if keyboard_check_pressed(ord("E"))
		{
		//If I'm not done talking, go to the next message
		if msg < msgs msg++;
		else{ //If I AM done talking
			
			//Now we're checking which message we were displaying,
			//and doing things based on which one it was.
			
			switch characters[ch.sign01]
				{
				case 0:
				characters[ch.sign01]++;
				break;
				//Here we asked if it was the first time talking to the sign.
				//If it was, we upped the character variable so that next time
				//we talk to the sign it shows the next set of messages.
				
				//Since there isn't one for the second message, it'll just show
				//the second message every time we talk to it.
				
				//If we wanted to, we could say something like:
				//case 2:
				//scr_addtoparty();
				//break;
				
				//This would say, if I'm on my 3rd set of messages with this character,
				//add this character to my party.
				
				default:
				//do nothing
				}
				
			//Reset everything back to default and end dialogue
			msg = 1;
			alph = 0;
			dialogue = -1;
			talking = false;
			interacting = -1;
			alarm_set(0, 60);
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