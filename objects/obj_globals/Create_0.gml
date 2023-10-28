//Assign Globals Variables
randomize();

//Game Cores
global.pause = -1;

//Room transfer Stuff
global.start_x = 32;
global.start_y = 48;

//Player Info
global.px = 0;
global.py = 0;

//Dungeon Stuff
global.dung = 0;
var f = 1;
for (var i = 0; i < f; i++;)
	{
	if room_exists(asset_get_index("rm_dungeon" + string(i)))
		{
		global.dung[i, 0] = asset_get_index("rm_dungeon" + string(i));
		global.dung[i, 1] = 0;
		f++;
		}
		else i = f;
	}
globalvar palette;
palette = 0;

pal_swap_init_system(shd_pal_swapper)

//This sets the amount of floors, and the global array.
//After this runs it would load the save file associated
//to the dungeons. dung[i, 1] represents whether this
//level has been recently played or not. The game will
//only choose levels with a value of 0 until every single
//level is marked as 1, in which they'll all reset to 0

//Game stuff
global.hitpoints = 100;
global.threat = 20;
global.tension = 0;

//Dialogue
globalvar dialogue, interact, interacting, characters;
dialogue = -1;
interact = -1;
interacting = -1;

//This enumerator will keep track of the NPC's
//and other things you can talk to.
enum ch
	{
	picardo,  //This is the first entry, so ch.picardo = 0
	babayaga, //This is the second entry, so ch.babyyaga = 1
	sign01    //This is the third entry, to ch.sign01 = 2, and etc
	}
	
characters[0] = 0; 
//This is picardo. Typing ch.picardo and 0 here is the same thing.
//It's just a lot easier to type his name than remember than picardo is 0.
//This goes for all characters. From now on, when we call the characters
//variable, do it like this: if characters[ch.picardo] = 0 {}
//and etc, same with other characters: if characters[ch.sign01] = 0 {}

characters[1] = 0; //This is babayaga
characters[2] = 0; //This is sign01

//We're setting all of these to 0 bc we haven't met these characters yet,
//so we wanna make sure to play their first message, 0.


//Stats and etc
enum pty
	{
	trav, //0
	npc1  //1
	}

enum ind
	{
	sprite,  //0 = Sprite
	maxhp,   //1 = Max Health
	stam,    //2 = Stamina
	str,     //3 = Strength
	def,     //4 = Defense
	sprt,    //5 = Sprite
	spd,     //6 = Speed
	chrs,    //7 = Charisma
	spll1,   //8 = Spell one
	spll2    //9 = Spell two
	}

globalvar index, party, btlr;
for (var i = 0; i < 4; i++;)
	{
	party[i] = -1;    //Party
	index[i, 0] = -1; //Sprite
	index[i, 1] = -1; //Health
	index[i, 2] = -1; //Stamina
	index[i, 3] = -1; //Strength
	index[i, 4] = -1; //Defense
	index[i, 5] = -1; //Spirit
	index[i, 6] = -1; //Speed
	index[i, 7] = -1; //Charisma
	index[i, 8] = ""; //Spell 1
	index[i, 9] = ""; //Spell 2
	}

//Set Travelers Info
btlr = 0; //Battler
party[0] = 0; //Set First Party slot to traveler
index[0, 0] = spr_player; //Sprite
index[0, 1] = 100; //Health
index[0, 2] = 10; //Stamina
index[0, 3] = 5; //Strength
index[0, 4] = 3; //Defense
index[0, 5] = 0; //Spirit
index[0, 6] = 1; //Speed
index[0, 7] = -1; //Charisma
index[0, 8] = "";
index[0, 9] = "";

var i = 1;

//* testing purposes below

//copy and paste from here
party[1] = 1;    //Party
index[i, 0] = spr_npc01; //Sprite
index[i, 1] = 40; //Health
index[i, 2] = 10; //Stamina
index[i, 3] = 4; //Strength
index[i, 4] = 1; //Defense
index[i, 5] = 5; //Spirit
index[i, 6] = 1; //Speed
index[i, 7] = -1; //Charisma
index[i, 8] = "Fire 1";     //Spell 1
index[i, 9] = "Recovery 1"; //Spell 2
i++
//to here, to add in new party members

/* 

party[1] = 1;    //Party
index[i, 0] = spr_npc01; //Sprite
index[i, 1] = 40; //Health
index[i, 2] = 10; //Stamina
index[i, 3] = 4; //Strength
index[i, 4] = 1; //Defense
index[i, 5] = 5; //Spirit
index[i, 6] = 1; //Speed
index[i, 7] = -1; //Charisma
index[i, 8] = "Fire 1";     //Spell 1
index[i, 9] = "Recovery 1"; //Spell 2

