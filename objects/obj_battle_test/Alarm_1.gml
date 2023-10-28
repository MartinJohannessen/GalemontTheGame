///@desc Attack Enemy Vanguard


en_health[enemy] -= 15;
if en_health[enemy] <= 0
	{
	en_health[enemy] = 0;
	enemy--;
	if !instance_exists(obj_enemy)
		{
		room_restart();	
		}
	with instance_position(72, 104, obj_enemy) instance_destroy();
	if instance_exists(obj_enemy)
		{
		with instance_nearest(72, 104, obj_enemy)
			{
			var _xx = x, _yy = y, _rand = choose(0, 1, 2, 3, 4, 5);
			x = 72;
			y = 104;
			
			if _rand = 0
				{
				instance_create_layer(_xx, _yy, "Instances", obj_enemy)	
				}
			}
		}
	else room_restart();
	}
alarm_set(1, _atkspd);