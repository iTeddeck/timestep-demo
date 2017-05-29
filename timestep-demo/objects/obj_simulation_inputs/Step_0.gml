/// Get user input.

if (room_get_name(room) == "rm_one") {
	// Only update if in the first room.
	
	// Make sure room speed is set to 60.
	game_set_speed(60, gamespeed_fps);
	
	enter_pressed = keyboard_check_pressed(vk_enter);
	left_pressed = keyboard_check_pressed(vk_left);
	right_pressed = keyboard_check_pressed(vk_right);
	
	e_pressed = keyboard_check_pressed(ord("E"));
	v_pressed = keyboard_check_pressed(ord("V"));
	r_pressed = keyboard_check_pressed(ord("R"));
	y_pressed = keyboard_check_pressed(ord("Y"));
	
	if (e_pressed) {
		// Euler integration chosen.
		
		if (!first_chosen) {
			// Choosing for object 1.
			
			move_1_integ_euler = true;
			move_1_integ_verlet = false;
			move_1_integ_rk4 = false;
			move_1_integ_velo_verlet = false;
			first_chosen = true;
		} else {
			// Choosing for object 2.
			
			move_2_integ_euler = true;
			move_2_integ_verlet = false;
			move_2_integ_rk4 = false;
			move_2_integ_velo_verlet = false;
			first_chosen = false;
		}
	} else if (v_pressed) {
		// Verlet integration chosen.
		
		if (!first_chosen) {
			// Choosing for object 1.
			
			move_1_integ_euler = false;
			move_1_integ_verlet = true;
			move_1_integ_rk4 = false;
			move_1_integ_velo_verlet = false;
			first_chosen = true;
		} else {
			// Choosing for object 2.
			
			move_2_integ_euler = false;
			move_2_integ_verlet = true;
			move_2_integ_rk4 = false;
			move_2_integ_velo_verlet = false;
			first_chosen = false;
		}
	} else if (r_pressed) {
		// RK4 integration chosen.
		
		if (!first_chosen) {
			// Choosing for object 1.
			
			move_1_integ_euler = false;
			move_1_integ_verlet = false;
			move_1_integ_rk4 = true;
			move_1_integ_velo_verlet = false;
			first_chosen = true;
		} else {
			// Choosing for object 2.
			
			move_2_integ_euler = false;
			move_2_integ_verlet = false;
			move_2_integ_rk4 = true;
			move_2_integ_velo_verlet = false;
			first_chosen = false;
		}
	} else if (y_pressed) {
		// Velocity verlet integration chosen.
		
		if (!first_chosen) {
			// Choosing for object 1.
			
			move_1_integ_euler = false;
			move_1_integ_verlet = false;
			move_1_integ_rk4 = false;
			move_1_integ_velo_verlet = true;
			first_chosen = true;
		} else {
			// Choosing for object 2.
			
			move_2_integ_euler = false;
			move_2_integ_verlet = false;
			move_2_integ_rk4 = false;
			move_2_integ_velo_verlet = true;
			first_chosen = false;
		}
	}

	if (left_pressed && right_pressed) {
		// Do nothing if both keys are pressed.
	
		left_pressed = false;
		right_pressed = false;
	}

	if (first_question > 0) {
		// On the first question.
	
		// Move the selection.
		if (right_pressed) {
			first_question++;
			if (first_question > 4) {
				first_question = 1;
			}
		} else if (left_pressed) {
			first_question--;
			if (first_question < 1) {
				first_question = 4;
			}
		}
	
		// Select the current choice.
		if (enter_pressed) {
			first_selection = first_question;
			first_question = 0;
			second_question = 1;
		}
	
	} else if (second_question > 0) {
		// On the second question.
	
		// Move the selection.
		if (right_pressed) {
			second_question++;
			if (second_question > 6) {
				second_question = 1;
			}
		} else if (left_pressed) {
			second_question--;
			if (second_question < 1) {
				second_question = 6;
			}
		}
	
		// Select the current choice.
		if (enter_pressed) {
			second_selection = second_question;
			second_question = 0;
			third_question = 1;
		}
	
	} else if (third_question > 0) {
		// On the third question.
	
		// Move the selection.
		if (right_pressed) {
			third_question++;
			if (third_question > 4) {
				third_question = 1;
			}
		} else if (left_pressed) {
			third_question--;
			if (third_question < 1) {
				third_question = 4;
			}
		}
	
		// Select the current choice.
		if (enter_pressed) {
			third_selection = third_question;
			third_question = 0;
			fourth_question = 1;
		}
		
	} else if (fourth_question > 0) {
		// On the fourth question.
	
		// Move the selection.
		if (right_pressed) {
			fourth_question++;
			if (fourth_question > 6) {
				fourth_question = 1;
			}
		} else if (left_pressed) {
			fourth_question--;
			if (fourth_question < 1) {
				fourth_question = 6;
			}
		}
	
		// Select the current choice.
		if (enter_pressed) {
			fourth_selection = fourth_question;
			fourth_question = 0;
		}
	} else {
		// Done with all the questions.
	
		if (keyboard_check(ord("S"))) {
			room_goto_next();
		}
	}
}

if (room_get_name(room) == "rm_four") {
	
	// Make sure room speed is set to 60.
	game_set_speed(60, gamespeed_fps);
}