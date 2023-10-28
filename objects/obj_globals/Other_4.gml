//Dungeon Stuff
var f = 1;
for (var i = 0; i < f; i++;)
	{
	if room_exists(asset_get_index("rm_dungeon" + string(i)))
		{
		if room = asset_get_index("rm_dungeon" + string(i))
			{
			scr_generator();
			exit;
			}
		f++;
		}
	}