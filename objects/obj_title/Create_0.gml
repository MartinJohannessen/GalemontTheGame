//Sprite we'll be drawing o:
spr = spr_player_walk_r;

//Animation stuffs~~~
anim = 0;
alarm_set(0, 20);

//Uhh, yes
buffer = 0;
trigger = 0.05;

//Latitude and Longitude. Wait, what ?
x = room_width/2;
y = 5;

//Sound the sound
audio_play_sound(snd_intro, 1, 1);