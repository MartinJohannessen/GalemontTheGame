//If we're in a dungeon, exit
var f = 1;
for (var i = 0; i < f; i++;)
	{
	if room_exists(asset_get_index("rm_dungeon" + string(i)))
		{
		if room = asset_get_index("rm_dungeon" + string(i))
			{
			target_x = x;
			target_y = y;
			exit;
			}
		f++;
		}
	}
//If not, continue as per usual~~

//Let's make sure I spawn into the correct spot !
//These variables are set by the creation code of obj_door ;)
x = global.start_x;
y = global.start_y;
target_x = x;
target_y = y;