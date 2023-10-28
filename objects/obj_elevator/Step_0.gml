if collision_rectangle(x-32, y, x+16, y+32, obj_player, 0, 0)
	{
	if obj_player.k_move = 0 and cntr < 60 cntr++;
	}
if cntr >= 60
	{
	if !audio_is_playing(snd_chain)
		{
		audio_play_sound(snd_chain, 1, 1);	
		}
	interacting = 1;
	with obj_player y += 1;
	y += 1;
	}