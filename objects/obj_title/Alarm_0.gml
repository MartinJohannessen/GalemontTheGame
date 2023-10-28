//Animate and reset~~
if anim >= sprite_get_number(spr) - 1 anim = 0;
else anim++;

alarm_set(0, 20);