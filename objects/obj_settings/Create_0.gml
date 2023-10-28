//properties of a single setting
enum SETTINGS_PROP {
	type,
	label,
	name,
	value,
	args
}

//type of setting entries
enum SETTINGS_TYPE {
	title,
	select,
	page,
	key,
	event
}

//pages of the setting menu
enum SETTINGS_PAGE {
	main,
	options,
	controls,
	size
}

//size of the box
width = room_width - x * 2;
height = room_height - y * 2;

//setup pages
pages = array_create(SETTINGS_PAGE.size);

//main page
pages[SETTINGS_PAGE.main] = [
	[SETTINGS_TYPE.title, "- SETTINGS -"],
	[SETTINGS_TYPE.page, "Options", undefined, SETTINGS_PAGE.options, 1],
	[SETTINGS_TYPE.page, "Controls", undefined, SETTINGS_PAGE.controls, 1],
	[SETTINGS_TYPE.event, "Save and exit", undefined, 0],
];

//options page
pages[SETTINGS_PAGE.options] = [
	[SETTINGS_TYPE.title, "- OPTIONS -"],
	[SETTINGS_TYPE.select, "Text speed", "text_speed", global.settings[? "text_speed"], ["slow", "normal", "fast"]],
	[SETTINGS_TYPE.select, "Battle speed", "battle_speed", global.settings[? "battle_speed"], ["slow", "normal", "fast"]],
	[SETTINGS_TYPE.select, "Sound / Music", "sound_enabled", global.settings[? "sound_enabled"], ["disabled", "enabled"]],
	[SETTINGS_TYPE.page, "Back", undefined, SETTINGS_PAGE.main, 1]
];

//controls page
pages[SETTINGS_PAGE.controls] = [
	[SETTINGS_TYPE.title, "- CONTROLS -"],
	[SETTINGS_TYPE.key, "Action", "key_action", global.settings[? "key_action"]],
	[SETTINGS_TYPE.key, "Cancel", "key_cancel", global.settings[? "key_cancel"]],
	[SETTINGS_TYPE.key, "Up", "key_up", global.settings[? "key_up"]],
	[SETTINGS_TYPE.key, "Down", "key_down", global.settings[? "key_down"]],
	[SETTINGS_TYPE.key, "Left", "key_left", global.settings[? "key_left"]],
	[SETTINGS_TYPE.key, "Right", "key_right", global.settings[? "key_right"]],
	[SETTINGS_TYPE.page, "Back", undefined, SETTINGS_PAGE.main, 2]
];

//group pages and assign starting page and setting
page = pages[SETTINGS_PAGE.main];
setting_index = 1;

//extra flags
waiting_key = false;

//animation
alarm[0] = 30;