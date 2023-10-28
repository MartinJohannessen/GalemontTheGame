alph = 1;
alarm_set(0, 50);
depth = obj_player.depth-1;

//Setup Battle
//Eventually a script will setup all this based off of different parameters
enmy = choose(spr_goblin, spr_bluegoblin, spr_redgoblin, spr_goblingrey);
ehp = 20;

tp = 0;
etp = 0;
crit = 0;

spd = 1;
espd = 1;