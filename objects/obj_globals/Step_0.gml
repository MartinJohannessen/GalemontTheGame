//Player Info
if instance_exists(obj_player)
	{
	//Set "global.px" and "global.py" to the player's coordinates!
	//We'll use this for all kinds of stuff
	global.px = obj_player.x;
	global.py = obj_player.y;
	}

if room = rm_test global.tension = 0;

if global.tension = 100
	{
	instance_create_layer(x, y, "Instances", obj_battle);
	}