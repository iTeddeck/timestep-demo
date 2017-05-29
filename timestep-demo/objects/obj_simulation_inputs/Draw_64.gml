/// Prompt the user for input.

draw_set_color(c_black);
draw_button(5, 5, 115, 35, !keyboard_check_pressed(vk_escape));
draw_set_color(c_ltgray);
draw_text(10, 10, "ESC to QUIT");

if (room_get_name(room) == "rm_one") {
	// Only update if in the first room.
	
	draw_set_halign(fa_center);
	draw_set_color(c_ltgray);
	draw_text_transformed(window_get_width()/2, 50, "Welcome to TimeStep Demo", 4, 4, 0);
	draw_text_transformed(window_get_width()/2, 150, "Authored by Michael Teddick", 2, 2, 0);

	draw_text(window_get_width()/2, 300, "Navigate with the arrow keys. Select with Enter.");

	
	// Integration selection
	draw_set_halign(fa_left);
	if (move_1_integ_euler) {
		draw_set_color(c_red);
	} else {
		draw_set_color(c_blue);
	}
	draw_text((window_get_width()/4)*3, 300, "E");
	if (move_1_integ_verlet) {
		draw_set_color(c_red);
	} else {
		draw_set_color(c_blue);
	}
	draw_text((window_get_width()/4)*3+30, 300, "V");
	if (move_1_integ_rk4) {
		draw_set_color(c_red);
	} else {
		draw_set_color(c_blue);
	}
	draw_text((window_get_width()/4)*3+60, 300, "R");
	if (move_1_integ_velo_verlet) {
		draw_set_color(c_red);
	} else {
		draw_set_color(c_blue);
	}
	draw_text((window_get_width()/4)*3+90, 300, "Y");
	if (move_2_integ_euler) {
		draw_set_color(c_red);
	} else {
		draw_set_color(c_lime);
	}
	draw_text((window_get_width()/4)*3, 350, "E");
	if (move_2_integ_verlet) {
		draw_set_color(c_red);
	} else {
		draw_set_color(c_lime);
	}
	draw_text((window_get_width()/4)*3+30, 350, "V");
	if (move_2_integ_rk4) {
		draw_set_color(c_red);
	} else {
		draw_set_color(c_lime);
	}
	draw_text((window_get_width()/4)*3+60, 350, "R");
	if (move_2_integ_velo_verlet) {
		draw_set_color(c_red);
	} else {
		draw_set_color(c_lime);
	}
	draw_text((window_get_width()/4)*3+90, 350, "Y");

	draw_set_halign(fa_left);
	draw_set_color(c_blue);
	draw_text(200, 400, "1.  Select the mode you wish to demo for the first room.");
	draw_set_halign(fa_center);
	if (first_question == 1) {
		draw_set_color(c_yellow);
	} else {
		if (first_selection == 1) {
			draw_set_color(c_red);
		} else {
			draw_set_color(c_white);
		}
	}
	draw_text(window_get_width()/5, 470, "No Timestep");
	if (first_question == 2) {
		draw_set_color(c_yellow);
	} else {
		if (first_selection == 2) {
			draw_set_color(c_red);
		} else {
			draw_set_color(c_white);
		}
	}
	draw_text((window_get_width()/5)*2, 470, "Fixed Timestep");
	if (first_question == 3) {
		draw_set_color(c_yellow);
	} else {
		if (first_selection == 3) {
			draw_set_color(c_red);
		} else {
			draw_set_color(c_white);
		}
	}
	draw_text((window_get_width()/5)*3, 470, "Variable Timestep");
	if (first_question == 4) {
		draw_set_color(c_yellow);
	} else {
		if (first_selection == 4) {
			draw_set_color(c_red);
		} else {
			draw_set_color(c_white);
		}
	}
	draw_text((window_get_width()/5)*4, 470, "Semi-Fixed Timestep");



	draw_set_color(c_blue);
	draw_set_halign(fa_left);
	draw_text(200, 540, "2.  Select the framerate for the first room.");
	draw_set_halign(fa_center);
	if (second_question == 1) {
		draw_set_color(c_yellow);
	} else {
		if (second_selection == 1) {
			draw_set_color(c_red);
		} else {
			draw_set_color(c_white);
		}
	}
	draw_text(window_get_width()/7, 610, "5 FPS");
	if (second_question == 2) {
		draw_set_color(c_yellow);
	} else {
		if (second_selection == 2) {
			draw_set_color(c_red);
		} else {
			draw_set_color(c_white);
		}
	}
	draw_text((window_get_width()/7)*2, 610, "10 FPS");
	if (second_question == 3) {
		draw_set_color(c_yellow);
	} else {
		if (second_selection == 3) {
			draw_set_color(c_red);
		} else {
			draw_set_color(c_white);
		}
	}
	draw_text((window_get_width()/7)*3, 610, "15 FPS");
	if (second_question == 4) {
		draw_set_color(c_yellow);
	} else {
		if (second_selection == 4) {
			draw_set_color(c_red);
		} else {
			draw_set_color(c_white);
		}
	}
	draw_text((window_get_width()/7)*4, 610, "30 FPS");
	if (second_question == 5) {
		draw_set_color(c_yellow);
	} else {
		if (second_selection == 5) {
			draw_set_color(c_red);
		} else {
			draw_set_color(c_white);
		}
	}
	draw_text((window_get_width()/7)*5, 610, "60 FPS");
	if (second_question == 6) {
		draw_set_color(c_yellow);
	} else {
		if (second_selection == 6) {
			draw_set_color(c_red);
		} else {
			draw_set_color(c_white);
		}
	}
	draw_text((window_get_width()/7)*6, 610, "120 FPS");



	draw_set_color(c_lime);
	draw_set_halign(fa_left);
	draw_text(200, 680, "3.  Select the mode you wish to demo for the second room.");
	draw_set_halign(fa_center);
	if (third_question == 1) {
		draw_set_color(c_yellow);
	} else {
		if (third_selection == 1) {
			draw_set_color(c_red);
		} else {
			draw_set_color(c_white);
		}
	}
	draw_text(window_get_width()/5, 750, "No Timestep");
	if (third_question == 2) {
		draw_set_color(c_yellow);
	} else {
		if (third_selection == 2) {
			draw_set_color(c_red);
		} else {
			draw_set_color(c_white);
		}
	}
	draw_text((window_get_width()/5)*2, 750, "Fixed Timestep");
	if (third_question == 3) {
		draw_set_color(c_yellow);
	} else {
		if (third_selection == 3) {
			draw_set_color(c_red);
		} else {
			draw_set_color(c_white);
		}
	}
	draw_text((window_get_width()/5)*3, 750, "Variable Timestep");
	if (third_question == 4) {
		draw_set_color(c_yellow);
	} else {
		if (third_selection == 4) {
			draw_set_color(c_red);
		} else {
			draw_set_color(c_white);
		}
	}
	draw_text((window_get_width()/5)*4, 750, "Semi-Fixed Timestep");



	draw_set_color(c_lime);
	draw_set_halign(fa_left);
	draw_text(200, 820, "4.  Select the framerate for the second room.");
	draw_set_halign(fa_center);
	if (fourth_question == 1) {
		draw_set_color(c_yellow);
	} else {
		if (fourth_selection == 1) {
			draw_set_color(c_red);
		} else {
			draw_set_color(c_white);
		}
	}
	draw_text(window_get_width()/7, 890, "5 FPS");
	if (fourth_question == 2) {
		draw_set_color(c_yellow);
	} else {
		if (fourth_selection == 2) {
			draw_set_color(c_red);
		} else {
			draw_set_color(c_white);
		}
	}
	draw_text((window_get_width()/7)*2, 890, "10 FPS");
	if (fourth_question == 3) {
		draw_set_color(c_yellow);
	} else {
		if (fourth_selection == 3) {
			draw_set_color(c_red);
		} else {
			draw_set_color(c_white);
		}
	}
	draw_text((window_get_width()/7)*3, 890, "15 FPS");
	if (fourth_question == 4) {
		draw_set_color(c_yellow);
	} else {
		if (fourth_selection == 4) {
			draw_set_color(c_red);
		} else {
			draw_set_color(c_white);
		}
	}
	draw_text((window_get_width()/7)*4, 890, "30 FPS");
	if (fourth_question == 5) {
		draw_set_color(c_yellow);
	} else {
		if (fourth_selection == 5) {
			draw_set_color(c_red);
		} else {
			draw_set_color(c_white);
		}
	}
	draw_text((window_get_width()/7)*5, 890, "60 FPS");
	if (fourth_question == 6) {
		draw_set_color(c_yellow);
	} else {
		if (fourth_selection == 6) {
			draw_set_color(c_red);
		} else {
			draw_set_color(c_white);
		}
	}
	draw_text((window_get_width()/7)*6, 890, "120 FPS");
	
	
	
	if (first_question == 0 && second_question == 0 && third_question == 0 && fourth_question == 0) {
		// Display directions to start the simulation.
		
		draw_set_halign(fa_center);
		draw_set_color(c_white);
		draw_text(window_get_width()/2, 960, "Press 'S' to start the simulation.");
	}
	
} else if (room_get_name(room) == "rm_two") {
	if (first_simulation_end) {
		draw_set_halign(fa_center);
		draw_set_color(c_black);
		draw_text(window_get_width()/2, 750, "Press 'N' to move to the next simulation.");
	}
} else if (room_get_name(room) == "rm_three") {
	if (second_simulation_end) {
		draw_set_halign(fa_center);
		draw_set_color(c_black);
		draw_text(window_get_width()/2, 750, "Press 'V' to view the results.");
	}
} else if (room_get_name(room) == "rm_four") {
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_text(window_get_width()/2, 890, "Press 'M' to return to the menu.");
	draw_text(window_get_width()/2, 940, "Press 'ESC' to quit.");
}