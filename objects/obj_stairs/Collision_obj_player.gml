global.floor_num++;
if global.floor_num <= array_length_1d(global.floors)
	{
	room_goto(global.floors[global.floor_num]);
	}
	else{
	room_goto(rm_test);	
	}