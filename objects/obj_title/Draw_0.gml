//Set up the text stuffs
draw_set_font(fn_galemont24);
draw_set_halign(fa_center);
draw_set_color(c_white);

//Make it move... Cool !
buffer += trigger;
if buffer = 1 or buffer = -1 trigger = -trigger;

