/// @description Collision Event with obj_player (or relevant object)

// Declare a variable to hold the paired door instance
var paired_door_instance = noone;

// Find the paired door based on unique IDs
with (obj_door) {
    if (this_door_id == other.other_door_id) {
        paired_door_instance = id;
        break;
    }
}

if (paired_door_instance != noone) 
{
    // Calculate the direction the player is moving
    var entry_direction = point_direction(x, y, obj_player.x, obj_player.y);

    // Based on the entry direction, calculate the exit coordinates
    switch (entry_direction)
    {
        case 0: // Player is moving up, so exit below the paired door
            global.start_x = paired_door_instance.x;
            global.start_y = paired_door_instance.y + some_offset; // Adjust 'some_offset' based on your grid size
            break;

        case 180: // Player is moving down, so exit above the paired door
            global.start_x = paired_door_instance.x;
            global.start_y = paired_door_instance.y - some_offset;
            break;

        case 90: // Player is moving right, so exit to the left of the paired door
            global.start_x = paired_door_instance.x - some_offset;
            global.start_y = paired_door_instance.y;
            break;

        case 270: // Player is moving left, so exit to the right of the paired door
            global.start_x = paired_door_instance.x + some_offset;
            global.start_y = paired_door_instance.y;
            break;

        default:
            // Handle diagonal or other unexpected directions
            global.start_x = paired_door_instance.x;
            global.start_y = paired_door_instance.y;
            break;
    }

    // Send the player to the assigned room
	show_debug_message("Got to the room_goto(other_room) section!");
    room_goto(other_room);
}
