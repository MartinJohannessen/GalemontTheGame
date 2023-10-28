if selected != -1
	{
	attacker = sprite_index;
	sprite_index = selected.sprite_index;
	selected = -1;
	}
else{
	selected = sprite_index;
	sprite_index = attacker;
	attacker = selected;
	selected = -1;
	}