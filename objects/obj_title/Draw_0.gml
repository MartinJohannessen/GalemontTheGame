//Set up the text stuffs
draw_set_font(fn_galemont24);
draw_set_halign(fa_center);
draw_set_color(c_white);

//Make it move... Cool !
buffer += trigger;
if buffer = 1 or buffer = -1 trigger = -trigger;

//Let's draw our beautiful title~~
//draw_text_ext(x+1, y+1+buffer, "Galemont", 10, 240);

//And an outline too, beautiful !
draw_set_color(c_black);
//draw_text_ext(x, y+buffer, "Galemont", 10, 240);

//Next let's draw our player too!
//draw_sprite_ext(spr, anim, x-18, y+40, 2, 2, 0, c_white, 1);

//Boring variable setup
var xx, yy;
xx = room_width/2;
yy = y+640;

//Draw text box
draw_sprite_ext(spr_uilong, 0, xx, yy+32, 2, 2, 0, -1, 1);

//Start Game. Game Start. Link Start. Yes...
draw_set_color(c_white);
draw_text_ext_transformed(xx+1, yy+1, "Start Game", 10, 240, 2, 2, 0);
//Again, but with an outline oooooo~~
draw_set_color(c_black);
draw_text_ext_transformed(xx, yy, "Start Game", 10, 240, 2, 2, 0);

