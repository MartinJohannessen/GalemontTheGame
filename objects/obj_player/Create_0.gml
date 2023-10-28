//Set the player's default speed
spd = 1;
moving = false;
target_x = x;
target_y = y;


//Set the player's collision box
mask_index = spr_player_coll;

//Set shortcuts for all of the player's sprites
//This also allows us to easily change all of the player's sprites :)

//Walking Sprites
spr_wu = spr_player_walk_u;
spr_wd = spr_player_walk_d;
spr_wl = spr_player_walk_l;
spr_wr = spr_player_walk_r;