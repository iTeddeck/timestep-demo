/// Determine when to move to the next room.

if (keyboard_check_pressed(vk_escape)) {
	// Quit the demo.
	
	countdown = 4000000;
}

if (room_get_name(room) == "rm_four") {
	// Check to see if the game is restarting.
	
	if (keyboard_check(ord("M"))) {
		// Restart the game.
		
		game_restart();
	}
	
}

if (countdown <= 4000000 && countdown >= 0) {
	countdown -= delta_time;
}

if (countdown <= 0) {
	game_end();
}