//Set coords
x = obj_camera.x;
y = obj_camera.y;

//Draw background
draw_sprite(spr_battle_bg_01, 0, x, y);

//Current hp divided by max hp
var hp = (global.hitpoints / 100) * 100;
draw_sprite_ext(spr_player, 0, x+28, y+50, 2, 2, 0, -1, 1);
draw_healthbar(x+20, y+40, x+66, y+42, hp, c_black, c_gray, c_gray, 0, 1, 0);
var teepee = (tp / 100) * 100;
draw_healthbar(x+20, y+42, x+66, y+44, teepee, c_black, c_gray, c_gray, 0, 1, 0);

draw_sprite_ext(enmy, 0, x-59, y-74, 1, 1, 0, -1, 1);

//Enemy current hp divided by enemy max hp
var hp = (ehp / 20) * 100;
draw_healthbar(x-67, y-83, x-21, y-81, hp, c_black, c_gray, c_gray, 0, 1, 0);
var teepee = (etp / 100) * 100;
draw_healthbar(x-67, y-81, x-21, y-79, teepee, c_black, c_gray, c_gray, 0, 1, 0);

var critbar = (crit / 100) * 81;
draw_sprite_part_ext(spr_bar, 0, 0, 0, 12, critbar, x+54, y+31, 1, -1, -1, 1);

//Draw other party members
if party[1] != -1 draw_sprite_ext(index[1, 0], 0, x, y+92, 2, 2, 0, -1, 1);

//Set currently selected index members stats
spd = index[party[btlr], ind.spd];

//Escelate battle if transition is finished
if alph = 0
	{
	tp += spd;
	etp += espd;
	}

//If "TP" reaches max (if I'm ready to attack, attack)
if tp >= 100
	{
	ehp -= index[party[btlr], ind.str]; //deal damage
	crit += index[party[btlr], ind.str];
	tp = 0;   //reset tp
	}

if etp >= 100
	{
	//subtract our health by our enemy's damage (currently flat 4)
	global.hitpoints -= 4;
	etp = 0;
	}

if ehp <= 0
	{
	with obj_battle instance_destroy();
	}


draw_set_alpha(alph);
draw_set_color(c_black);
draw_rectangle(global.px-200, global.py-300, global.px+200, global.py+300, 0);
draw_set_color(c_white);
draw_set_alpha(1);
if alph > 0 and alarm[0] = -1 alph-= 0.005;

