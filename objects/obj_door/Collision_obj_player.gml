//If the player runs into this object
//Send him to the designated room and coordinates!

if tarx != 0 and tary != 0 //If this door doesn't have the default settings
	{
	//Send me to the assigned coordinates and the correct room :D
	global.start_x = tarx;
	global.start_y = tary;
	room_goto(rm);
	}