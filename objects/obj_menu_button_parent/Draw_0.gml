//draw_self();

draw_set_font(fn_galemont24);
draw_set_halign(fa_center);

draw_set_color(c_white);
draw_text_ext_transformed(x+1, y-33, "Text", 10, 240, 2, 2, 0);
//Again, but with an outline oooooo~~
draw_set_color(c_black);
draw_text_ext_transformed(x, y-32, "Text", 10, 240, 2, 2, 0);