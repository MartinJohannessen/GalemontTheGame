function scr_addparty() {
	var trigger = 0;	
	for (var i = 0; i < 4; i++;)
		{
		if party[i] = -1 //If free spot found in party
			{
			trigger = 1;
			break;
			}
		}
	if trigger = 0 exit;

	if sprite_index = spr_npc01
		{
		party[i] = pty.npc1;    //Party
		index[i, 0] = spr_npc01; //Sprite
		index[i, 1] = 40; //Health
		index[i, 2] = 10; //Stamina
		index[i, 3] = 4; //Strength
		index[i, 4] = 1; //Defense
		index[i, 5] = 5; //Spirit
		index[i, 6] = 1; //Speed
		index[i, 7] = -1; //Charisma
		index[i, 8] = "Fire 1";     //Spell 1
		index[i, 9] = "Recovery 1"; //Spell 2
		}


}
