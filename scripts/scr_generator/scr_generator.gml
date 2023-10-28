function scr_generator() {
	randomize();
	var rx, ry, rs, cntr, grnd, insts, p, o, c;
	rx = room_width/16;
	ry = room_height/16;
	rs = rx * ry;
	cntr = 0;
	grnd = 0;
	insts = 0;
	p = 0;
	o = 0;
	c = 0;

	var lay_id = layer_get_id("Tiles_1");
	var back_id = layer_get_id("Background");
	var map_id = layer_tilemap_get_id(lay_id);

	var lay_id = layer_get_id("Tiles_1");
	var tile_id = layer_tilemap_get_id(lay_id);

	for (var i = 0; i < rs; i++;)
		{
		var xx, yy;
		xx = p * 16;
		yy = o * 16;

		if tilemap_get_at_pixel(map_id, xx, yy) != 3 and
		tilemap_get_at_pixel(map_id, xx, yy) != 9 and
		tilemap_get_at_pixel(map_id, xx, yy) != 10 and
		tilemap_get_at_pixel(map_id, xx, yy) != 15 and
		tilemap_get_at_pixel(map_id, xx, yy) != 16 and
		tilemap_get_at_pixel(map_id, xx, yy) != 17 and
		tilemap_get_at_pixel(map_id, xx, yy) != 19 and
		tilemap_get_at_pixel(map_id, xx, yy) != 21 and
		tilemap_get_at_pixel(map_id, xx, yy) != 22 and
		tilemap_get_at_pixel(map_id, xx, yy) != 23 and
		tilemap_get_at_pixel(map_id, xx, yy) != 27 and
		tilemap_get_at_pixel(map_id, xx, yy) != 28 and
		tilemap_get_at_pixel(map_id, xx, yy) != 29
			{
			instance_create_layer(xx, yy, "Hidden", par_coll);
			}
			else{
			c++;
			}
		p++;
		cntr++;
		if cntr = rx
			{
			cntr = 0;
			p = 0;
			o++;
			}
		}
	
	//var enms, itms, tls, rand;
	//o = 0;
	//tls = array_height_2d(tiles);
	//enms = floor(tls/50);
	//itms = floor(tls/50);
	//insts = enms + itms;

	var rand;
	var npchnce = 1; //Later on create a roll

	var insts = 1 + npchnce;

	for (var i = 0; i < insts; i++;)
		{
		cntr++;
		insts++;
		var xx, yy;
		rand = irandom(rx);
		xx = 16 * rand;
		rand = irandom(ry);
		yy = 16 * rand;
	
		//tile = tilemap_get_at_pixel(map_id, xx, yy);
	
		if tilemap_get_at_pixel(map_id, xx, yy) = 3 or
			tilemap_get_at_pixel(map_id, xx, yy) = 9 or
			tilemap_get_at_pixel(map_id, xx, yy) = 10 or
			tilemap_get_at_pixel(map_id, xx, yy) = 15 or
			tilemap_get_at_pixel(map_id, xx, yy) = 16 or
			tilemap_get_at_pixel(map_id, xx, yy) = 17 or
			tilemap_get_at_pixel(map_id, xx, yy) = 19 or
			tilemap_get_at_pixel(map_id, xx, yy) = 21 or
			tilemap_get_at_pixel(map_id, xx, yy) = 22 or
			tilemap_get_at_pixel(map_id, xx, yy) = 23 or
			tilemap_get_at_pixel(map_id, xx, yy) = 27 or
			tilemap_get_at_pixel(map_id, xx, yy) = 28 or
			tilemap_get_at_pixel(map_id, xx, yy) = 29
			{
			if !instance_exists(obj_stairs)
				{
				if !place_meeting(xx+2, yy-2, par_coll) and !place_meeting(xx+2, yy+20, par_coll) or 
				!place_meeting(xx-2, yy+2, par_coll) and !place_meeting(xx+20, yy+2, par_coll)
					{
					instance_create_layer(xx, yy, "Instances", obj_stairs);
					}
				}
				else{
				if !instance_exists(obj_player) and point_distance(xx, yy, obj_stairs.x, obj_stairs.y) > 160
					{
					//instance_create_layer(xx, yy, "Instances", obj_camera);
					instance_create_layer(xx, yy, "Instances", obj_player);
					i+=1;
					}
					else{
					if instance_number(par_npc) < npchnce
						{
						instance_create_layer(xx, yy, "Instances", par_npc);
						i+=1;
						}
					/*
					if instance_number(par_enemy) < enms
						{
						instance_create_layer(xx, yy, "Instances", obj_enemy_01);
						i++;
						}
						else{
						instance_create_layer(xx, yy, "Instances", obj_item);
						i++;
						}
						*/
					}
				}
			}
		}

	var lay_id = layer_get_id("Tiles_1");
	var tile_id = layer_tilemap_get_id(lay_id);

	var tileset = choose(tl_dung_caves, tl_dung_castle, tl_dung_forest, tl_dung_space)
		{
	    tilemap_tileset(tile_id, tileset);
		}


	var lay_id = layer_get_id("Tiles_1");
	var tile_id = layer_tilemap_get_id(lay_id);

	var lay_id = layer_get_id("Background");
	var back_id = layer_background_get_id(lay_id);
	switch tilemap_get_tileset(tile_id)
		{
		case tl_dung_forest:
			layer_background_sprite(back_id, spr_bg_forest);
			audio_stop_all();
			audio_play_sound(snd_forest, 1000, true);
			break;
		case tl_dung_caves:
			layer_background_sprite(back_id, spr_bg_caves);
			audio_stop_all();
			audio_play_sound(snd_cave, 1000, true);
			break;
		case tl_dung_space:
			layer_background_sprite(back_id, spr_bg_space);
			audio_stop_all();
			audio_play_sound(snd_spacestation, 1000, true);
			break;
		case tl_dung_castle:
			layer_background_sprite(back_id, spr_bg_castle);
			audio_stop_all();
			audio_play_sound(snd_sewer, 1000, true);
			break;
		}
	
	palette = irandom_range(1, 94);


}
