function scr_randomizer() {
	//put all dung 0 values into a ds list, shuffle it, and return this to a new global array.


	//Dungeon Stuff
	var dung = ds_list_create();
	var f = 10;
	var b = 0;
	for (var i = 0; i < f; i++;)
		{
		if (i-b) < array_height_2d(global.dung)
			{
			if global.dung[(i-b), 1] = 0
				{
				ds_list_add(dung, global.dung[(i-b), 0]);	
				}
			}
			else{
			global.dung = 0;
			var d = 1;
			for (var o = 0; o < d; o++;)
				{
				if room_exists(asset_get_index("rm_dungeon" + string(o)))
					{
					global.dung[o, 0] = asset_get_index("rm_dungeon" + string(o));
					global.dung[o, 1] = 0;
					d++;
					b++;
					}
				}
			}
		}
	ds_list_shuffle(dung);

	global.floors = 0;
	global.floor_num = 0;
	for (var i = 0; i < f; i++;)
		{
		global.floors[i] = ds_list_find_value(dung, i);
		}
	room_goto(global.floors[global.floor_num]);


}
