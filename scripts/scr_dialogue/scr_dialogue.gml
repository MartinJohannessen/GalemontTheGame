function scr_dialogue(argument0) {
	//Set up text settings
	draw_set_color(c_black);
	draw_set_font(fn_nyanko12);
	draw_set_halign(fa_center);

	//Set the coordinates we'll be using
	var dx, dy, wdth;
	dx = global.px;
	dy = global.py + 30;
	wdth = 130;

	//Draw Text box sprite to screen
	draw_sprite(spr_textbox, 0, dx, dy);

	var dx, dy;
	dx = global.px;
	dy = global.py + 32;

	//If the object using this script has the following sprite
	if argument0 = spr_npc01
		{
		msgs = 1; //Make this equal the number of messages! In this case, there's two messages.
		dialogue[1] = "I'm lost.. I sure wish someone would let me join their party o.o"; 
		draw_text_ext(dx, dy, dialogue[msg], 10, wdth); 
		}
	
	//Here, we're checking is the sprite relates to Baba, if it is, we'll play her messages
	if argument0 = spr_baba_down
		{
		if characters[ch.babayaga] = 0 //If I've never talked to baba yaga before
			{
			msgs = 2; //2 because there's 2 messages, as you can see below
			dialogue[1] = "I'm Yaga, ho ho ho, nice to meet ya."; 
			dialogue[2] = "See ya around!";
			draw_text_ext(dx, dy, dialogue[msg], 10, wdth); 
			if msg = msgs characters[ch.babayaga]++; //If I'm down talking, progress my dialogue to the next one	
			}

		if characters[ch.babayaga] = 1 //If I've talked to yaga once, and wanna see her new message
			{
			msgs = 2; //2 because there's 2 messages, as you can see below
			dialogue[1] = "Oh, well hi! I've seen you before haven't you?"; 
			dialogue[2] = "Well this must be fate to meet twice here, mind if I join you?";
			draw_text_ext(dx, dy, dialogue[msg], 10, wdth); 
			if msg = msgs //if done talking
				{
				//add to party
			
				//you can put whatever you want here, or, leave it empty to not do anything.
				//Leaving it empty will just repeat the above message indefinitely.
				//Here you can progress their dialogue, add them to the party, or whatever else.
				}
			}
		}
	
	if argument0 = spr_jebt_down
		{
		if characters[ch.picardo] = 0 //If I've never talked to this NPC before
			{
			msgs = 7; //2 because there's 2 messages, as you can see below
			dialogue[1] = "Picardo the Holographic Maintainance Gnome or, HmG, at your service!";
			dialogue[2] = "A hologram! I'm a being made out of light!";
			dialogue[3] = "I and others like me, maintain this space station. Well there used to be others.";
			dialogue[4] = "Now it's just me and the Master Hologram.";
			dialogue[5] = "Oh. Well after all these years, the Master Hologram needed other parts to maintain him.";
			dialogue[6] = "I have the smallest holographic projector so mine was spared so far.";
			dialogue[7] = "Hey. Thanks for listening. I haven't had anyone to talk to in 1300 years!. It was nice.";
		
			choices[1] = "...";
			choices[2] = "..?";
			choices[3] = "...";
			choices[4] = "..?";
		
			}
		if characters[ch.picardo] = 1 //If I've talked to this NPC once before
			{
			msgs = 2; //2 because there's 2 messages, as you can see below
			dialogue[1] = "Oh. Well after all these years, the Master Hologram needed other parts to maintain him."; 
			dialogue[2] = "I have the smallest holographic projector so mine was spared so far.";
			}
		if choosing = -1 draw_text_ext(dx, dy, dialogue[msg], 10, wdth); //Draw the text
		else{
			draw_set_halign(fa_left);
			draw_sprite(spr_cursor_text, 0, dx-48, dy + (sel * 10) + 9);
			draw_text_ext(dx-40, dy, choices[chce] + "\n" + choices[chce+1], 10, wdth);
			}
		}	

	if argument0 = spr_sign_01
		{
		if characters[ch.sign01] = 0 //If I've never talked to this sign before
			{
			msgs = 2; //2 because there's 2 messages, as you can see below
			dialogue[1] = "Hayo, I'm a talking sign, I tell you what to do in the game!"; 
			dialogue[2] = "Talk to me again and my message will progress to the next one.";	
			}
		if characters[ch.sign01] = 1 //If I've talked to this sign once
			{
			msgs = 2; //2 because there's 2 messages, as you can see below
			dialogue[1] = "Woot, we're now on to the next set of messages."; 
			dialogue[2] = "From now on, I'll just repeat the messae indefinitely, since if msg = msgs is blank.";
			}
		draw_text_ext(dx, dy, dialogue[msg], 10, wdth); //Draw the text
		}


}
