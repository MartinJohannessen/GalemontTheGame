//Dungeoning stuff
if room != rm_test and !instance_exists(obj_battle)
	{
	var tb;
	tb = (global.tension/100) * 100;
	
	draw_set_color(c_white);
	
	draw_sprite(spr_tension, round((global.tension)/10), x, y+90);
	
	draw_set_color(c_black);
	//draw_text(x+1, y-129, "Tension");
	draw_set_color(c_white);
	//draw_text(x, y-130, "Tension");
	}