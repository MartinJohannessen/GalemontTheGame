function scr_tension() {
	randomize();

	if room != rm_test
		{
		global.tension++;
		var chnce = irandom_range(global.tension, 100);

		if chnce > 99 //Set to 99
			{
			global.tension = 0;

			instance_create_layer(x, y, "Instances", obj_battle);
			}
		}


}
