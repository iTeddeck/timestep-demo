/// To be drawn to the screen.

// Draw Settings
draw_set_halign(fa_left);
draw_set_valign(fa_top);

if (room_get_name(room) == "rm_two") {
	// Draw blue object's info.

	move_1_current_x = obj_move_1.current_x;
	move_1_current_y = obj_move_1.current_y;
	move_1_current_speed = obj_move_1.current_speed;
	move_1_current_accel = obj_move_1.current_accel;
	move_1_marker_1_time = obj_move_1.marker_1_time;
	move_1_marker_2_time = obj_move_1.marker_2_time;
	move_1_marker_3_time = obj_move_1.marker_3_time;
	move_1_marker_4_time = obj_move_1.marker_4_time;
	move_1_position_at_1 = obj_move_1.position_at_1;
	move_1_position_at_2 = obj_move_1.position_at_2;
	move_1_position_at_3 = obj_move_1.position_at_3;
	
	draw_set_color(c_blue);
	
	draw_set_halign(fa_center);
	draw_text_transformed(window_get_width()/5, 100, "Current X: " + string_format(move_1_current_x, 4, 2), 1.25, 1.25, 0);
	draw_text_transformed((window_get_width()/5)*2, 100, "Current Y: " + string_format(move_1_current_y, 4, 2), 1.25, 1.25, 0);
	draw_text_transformed((window_get_width()/5)*3, 100, "Current Speed: " + string_format(move_1_current_speed, 4, 2), 1.25, 1.25, 0);
	draw_text_transformed((window_get_width()/5)*4, 100, "Current Accel: " + string_format(move_1_current_accel, 4, 2), 1.25, 1.25, 0);
	draw_text_transformed(window_get_width()/5, 200, "Marker 1: " + string_format(move_1_marker_1_time, 4, 2), 1.25, 1.25, 0);
	draw_text_transformed((window_get_width()/5)*2, 200, "Marker 2: " + string_format(move_1_marker_2_time, 4, 2), 1.25, 1.25, 0);
	draw_text_transformed((window_get_width()/5)*3, 200, "Marker 3: " + string_format(move_1_marker_3_time, 4, 2), 1.25, 1.25, 0);
	draw_text_transformed((window_get_width()/5)*4, 200, "Marker 4: " + string_format(move_1_marker_4_time, 4, 2), 1.25, 1.25, 0);
	draw_text_transformed(window_get_width()/4, 300, "Position at 1 sec: " + string_format(move_1_position_at_1, 4, 2), 1.25, 1.25, 0);
	draw_text_transformed((window_get_width()/4)*2, 300, "Position at 2 sec: " + string_format(move_1_position_at_2, 4, 2), 1.25, 1.25, 0);
	draw_text_transformed((window_get_width()/4)*3, 300, "Position at 3 sec: " + string_format(move_1_position_at_3, 4, 2), 1.25, 1.25, 0);
	
	/*
	draw_text_transformed((window_get_width()/4)*3, 800, "8000: " + string_format(one_time, 4, 2), 1.25, 1.25, 0);
	
	if (obj_move_1.x > 8000 && draw_one) {
	
		one_time = (current_time-obj_move_1.begin_time) / 1000;
		draw_one = false;
		
	}
	*/
}

if (room_get_name(room) == "rm_three") {
	// Draw green object's info.

	move_2_current_x = obj_move_2.current_x;
	move_2_current_y = obj_move_2.current_y;
	move_2_current_speed = obj_move_2.current_speed;
	move_2_current_accel = obj_move_2.current_accel;
	move_2_marker_1_time = obj_move_2.marker_1_time;
	move_2_marker_2_time = obj_move_2.marker_2_time;
	move_2_marker_3_time = obj_move_2.marker_3_time;
	move_2_marker_4_time = obj_move_2.marker_4_time;
	move_2_position_at_1 = obj_move_2.position_at_1;
	move_2_position_at_2 = obj_move_2.position_at_2;
	move_2_position_at_3 = obj_move_2.position_at_3;
	
	draw_set_color(c_lime);

	draw_set_halign(fa_center);
	draw_text_transformed(window_get_width()/5, 100, "Current X: " + string_format(move_2_current_x, 4, 2), 1.25, 1.25, 0);
	draw_text_transformed((window_get_width()/5)*2, 100, "Current Y: " + string_format(move_2_current_y, 4, 2), 1.25, 1.25, 0);
	draw_text_transformed((window_get_width()/5)*3, 100, "Current Speed: " + string_format(move_2_current_speed, 4, 2), 1.25, 1.25, 0);
	draw_text_transformed((window_get_width()/5)*4, 100, "Current Accel: " + string_format(move_2_current_accel, 4, 2), 1.25, 1.25, 0);
	draw_text_transformed(window_get_width()/5, 200, "Marker 1: " + string_format(move_2_marker_1_time, 4, 2), 1.25, 1.25, 0);
	draw_text_transformed((window_get_width()/5)*2, 200, "Marker 2: " + string_format(move_2_marker_2_time, 4, 2), 1.25, 1.25, 0);
	draw_text_transformed((window_get_width()/5)*3, 200, "Marker 3: " + string_format(move_2_marker_3_time, 4, 2), 1.25, 1.25, 0);
	draw_text_transformed((window_get_width()/5)*4, 200, "Marker 4: " + string_format(move_2_marker_4_time, 4, 2), 1.25, 1.25, 0);
	draw_text_transformed(window_get_width()/4, 300, "Position at 1 sec: " + string_format(move_2_position_at_1, 4, 2), 1.25, 1.25, 0);
	draw_text_transformed((window_get_width()/4)*2, 300, "Position at 2 sec: " + string_format(move_2_position_at_2, 4, 2), 1.25, 1.25, 0);
	draw_text_transformed((window_get_width()/4)*3, 300, "Position at 3 sec: " + string_format(move_2_position_at_3, 4, 2), 1.25, 1.25, 0);
	
	/*
	draw_text_transformed((window_get_width()/4)*3, 800, "8000: " + string_format(two_time, 4, 2), 1.25, 1.25, 0);
	
	if (obj_move_2.x > 8000 && draw_two) {
	
		two_time = (current_time-obj_move_2.begin_time) / 1000;
		draw_two = false;
		
	}
	*/
}

if (room_get_name(room) == "rm_four") {
	// Draw results.

	draw_set_color(c_blue);
	draw_set_halign(fa_center);
	draw_text_transformed((window_get_width()/24)*7, 100, "BLUE", 4, 4, 0);
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_text((window_get_width()/24)*4, 250, "Mode: ");
	draw_text((window_get_width()/24)*4, 300, "Final X Position: ");
	draw_text((window_get_width()/24)*4, 350, "Final Y Position: ");
	draw_text((window_get_width()/24)*4, 400, "Final Speed: ");
	draw_text((window_get_width()/24)*4, 450, "Final Acceleration: ");
	draw_text((window_get_width()/24)*4, 500, "Marker 1 Time: ");
	draw_text((window_get_width()/24)*4, 550, "Marker 2 Time: ");
	draw_text((window_get_width()/24)*4, 600, "Marker 3 Time: ");
	draw_text((window_get_width()/24)*4, 650, "Marker 4 Time: ");
	draw_text((window_get_width()/24)*4, 700, "Position at 1 Second: ");
	draw_text((window_get_width()/24)*4, 750, "Position at 2 Seconds: ");
	draw_text((window_get_width()/24)*4, 800, "Position at 3 Seconds: ");
	draw_set_halign(fa_right);
	draw_text((window_get_width()/24)*10, 250, obj_simulation_inputs.first_selection_name + " - " + obj_simulation_inputs.second_selection_name);
	draw_text((window_get_width()/24)*10, 300, string_format(move_1_current_x, 4, 3));
	draw_text((window_get_width()/24)*10, 350, string_format(move_1_current_y, 4, 3));
	draw_text((window_get_width()/24)*10, 400, string_format(move_1_current_speed, 4, 3));
	draw_text((window_get_width()/24)*10, 450, string_format(move_1_current_accel, 4, 3));
	draw_text((window_get_width()/24)*10, 500, string_format(move_1_marker_1_time, 4, 3));
	draw_text((window_get_width()/24)*10, 550, string_format(move_1_marker_2_time, 4, 3));
	draw_text((window_get_width()/24)*10, 600, string_format(move_1_marker_3_time, 4, 3));
	draw_text((window_get_width()/24)*10, 650, string_format(move_1_marker_4_time, 4, 3));
	draw_text((window_get_width()/24)*10, 700, string_format(move_1_position_at_1, 4, 3));
	draw_text((window_get_width()/24)*10, 750, string_format(move_1_position_at_2, 4, 3));
	draw_text((window_get_width()/24)*10, 800, string_format(move_1_position_at_3, 4, 3));
	
	draw_set_color(c_lime);
	draw_set_halign(fa_center);
	draw_text_transformed((window_get_width()/24)*17, 100, "GREEN", 4, 4, 0);
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_text((window_get_width()/24)*14, 250, "Mode: ");
	draw_text((window_get_width()/24)*14, 300, "Final X Position: ");
	draw_text((window_get_width()/24)*14, 350, "Final Y Position: ");
	draw_text((window_get_width()/24)*14, 400, "Final Speed: ");
	draw_text((window_get_width()/24)*14, 450, "Final Acceleration: ");
	draw_text((window_get_width()/24)*14, 500, "Marker 1 Time: ");
	draw_text((window_get_width()/24)*14, 550, "Marker 2 Time: ");
	draw_text((window_get_width()/24)*14, 600, "Marker 3 Time: ");
	draw_text((window_get_width()/24)*14, 650, "Marker 4 Time: ");
	draw_text((window_get_width()/24)*14, 700, "Position at 1 Second: ");
	draw_text((window_get_width()/24)*14, 750, "Position at 2 Seconds: ");
	draw_text((window_get_width()/24)*14, 800, "Position at 3 Seconds: ");
	draw_set_halign(fa_right);
	draw_text((window_get_width()/24)*20, 250, obj_simulation_inputs.third_selection_name + " - " + obj_simulation_inputs.fourth_selection_name);
	draw_text((window_get_width()/24)*20, 300, string_format(move_2_current_x, 4, 3));
	draw_text((window_get_width()/24)*20, 350, string_format(move_2_current_y, 4, 3));
	draw_text((window_get_width()/24)*20, 400, string_format(move_2_current_speed, 4, 3));
	draw_text((window_get_width()/24)*20, 450, string_format(move_2_current_accel, 4, 3));
	draw_text((window_get_width()/24)*20, 500, string_format(move_2_marker_1_time, 4, 3));
	draw_text((window_get_width()/24)*20, 550, string_format(move_2_marker_2_time, 4, 3));
	draw_text((window_get_width()/24)*20, 600, string_format(move_2_marker_3_time, 4, 3));
	draw_text((window_get_width()/24)*20, 650, string_format(move_2_marker_4_time, 4, 3));
	draw_text((window_get_width()/24)*20, 700, string_format(move_2_position_at_1, 4, 3));
	draw_text((window_get_width()/24)*20, 750, string_format(move_2_position_at_2, 4, 3));
	draw_text((window_get_width()/24)*20, 800, string_format(move_2_position_at_3, 4, 3));
	
	draw_set_halign(fa_center);
	draw_text(window_get_width()/2, 250, "Blue | Green");
	
	var diff = move_1_current_x-move_2_current_x;
	if (round(diff) > 0) {
		draw_set_color(c_blue);
	} else if (round(diff) < 0) {
		draw_set_color(c_lime);
	} else {
		draw_set_color(c_yellow);
	}
	draw_text(window_get_width()/2, 300, string_format(abs(diff), 4, 3));
	diff = move_1_current_y-move_2_current_y;
	if (round(diff) > 0) {
		draw_set_color(c_blue);
	} else if (round(diff) < 0) {
		draw_set_color(c_lime);
	} else {
		draw_set_color(c_yellow);
	}
	draw_text(window_get_width()/2, 350, string_format(abs(diff), 4, 3));
	diff = move_1_current_speed-move_2_current_speed;
	if (round(diff) > 0) {
		draw_set_color(c_blue);
	} else if (round(diff) < 0) {
		draw_set_color(c_lime);
	} else {
		draw_set_color(c_yellow);
	}
	draw_text(window_get_width()/2, 400, string_format(abs(diff), 4, 3));
	diff = move_1_current_accel-move_2_current_accel;
	if (round(diff) > 0) {
		draw_set_color(c_blue);
	} else if (round(diff) < 0) {
		draw_set_color(c_lime);
	} else {
		draw_set_color(c_yellow);
	}
	draw_text(window_get_width()/2, 450, string_format(abs(diff), 4, 3));
	diff = move_1_marker_1_time-move_2_marker_1_time;
	if (round(diff) > 0) {
		draw_set_color(c_blue);
	} else if (round(diff) < 0) {
		draw_set_color(c_lime);
	} else {
		draw_set_color(c_yellow);
	}
	draw_text(window_get_width()/2, 500, string_format(abs(diff), 4, 3));
	diff = move_1_marker_2_time-move_2_marker_2_time;
	if (round(diff) > 0) {
		draw_set_color(c_blue);
	} else if (round(diff) < 0) {
		draw_set_color(c_lime);
	} else {
		draw_set_color(c_yellow);
	}
	draw_text(window_get_width()/2, 550, string_format(abs(diff), 4, 3));
	diff = move_1_marker_3_time-move_2_marker_3_time;
	if (round(diff) > 0) {
		draw_set_color(c_blue);
	} else if (round(diff) < 0) {
		draw_set_color(c_lime);
	} else {
		draw_set_color(c_yellow);
	}
	draw_text(window_get_width()/2, 600, string_format(abs(diff), 4, 3));
	diff = move_1_marker_4_time-move_2_marker_4_time;
	if (round(diff) > 0) {
		draw_set_color(c_blue);
	} else if (round(diff) < 0) {
		draw_set_color(c_lime);
	} else {
		draw_set_color(c_yellow);
	}
	draw_text(window_get_width()/2, 650, string_format(abs(diff), 4, 3));
	diff = move_1_position_at_1-move_2_position_at_1;
	if (round(diff) > 0) {
		draw_set_color(c_blue);
	} else if (round(diff) < 0) {
		draw_set_color(c_lime);
	} else {
		draw_set_color(c_yellow);
	}
	draw_text(window_get_width()/2, 700, string_format(abs(diff), 4, 3));
	diff = move_1_position_at_2-move_2_position_at_2;
	if (round(diff) > 0) {
		draw_set_color(c_blue);
	} else if (round(diff) < 0) {
		draw_set_color(c_lime);
	} else {
		draw_set_color(c_yellow);
	}
	draw_text(window_get_width()/2, 750, string_format(abs(diff), 4, 3));
	diff = move_1_position_at_3-move_2_position_at_3;
	if (round(diff) > 0) {
		draw_set_color(c_blue);
	} else if (round(diff) < 0) {
		draw_set_color(c_lime);
	} else {
		draw_set_color(c_yellow);
	}
	draw_text(window_get_width()/2, 800, string_format(abs(diff), 4, 3));
	
	// Default configuration info.
	draw_set_halign(fa_left);
	draw_set_color(c_white);
	draw_text(window_get_width()/96, 50, "Default refers to a simulation running with fixed timestep and 60 fps.");
	
	// Comparison to 60 fps, fixed timestep with blue.
	draw_set_halign(fa_center);
	draw_text((window_get_width()/24)*2, 250, "Blue | Default");
	diff = 1804.677-move_1_current_x;
	if (round(diff) > 0) {
		draw_set_color(c_red);
	} else if (round(diff) < 0) {
		draw_set_color(c_blue);
	} else {
		draw_set_color(c_yellow);
	}
	draw_text((window_get_width()/24)*2, 300, string_format(abs(diff), 4, 3));
	diff = 576.00-move_1_current_y;
	if (round(diff) > 0) {
		draw_set_color(c_red);
	} else if (round(diff) < 0) {
		draw_set_color(c_blue);
	} else {
		draw_set_color(c_yellow);
	}
	draw_text((window_get_width()/24)*2, 350, string_format(abs(diff), 4, 3));
	diff = 507.528-move_1_current_speed;
	if (round(diff) > 0) {
		draw_set_color(c_red);
	} else if (round(diff) < 0) {
		draw_set_color(c_blue);
	} else {
		draw_set_color(c_yellow);
	}
	draw_text((window_get_width()/24)*2, 400, string_format(abs(diff), 4, 3));
	diff = 100.667-move_1_current_accel;
	if (round(diff) > 0) {
		draw_set_color(c_red);
	} else if (round(diff) < 0) {
		draw_set_color(c_blue);
	} else {
		draw_set_color(c_yellow);
	}
	draw_text((window_get_width()/24)*2, 450, string_format(abs(diff), 4, 3));
	diff = 2.684-move_1_marker_1_time;
	if (round(diff) > 0) {
		draw_set_color(c_red);
	} else if (round(diff) < 0) {
		draw_set_color(c_blue);
	} else {
		draw_set_color(c_yellow);
	}
	draw_text((window_get_width()/24)*2, 500, string_format(abs(diff), 4, 3));
	diff = 3.651-move_1_marker_2_time;
	if (round(diff) > 0) {
		draw_set_color(c_red);
	} else if (round(diff) < 0) {
		draw_set_color(c_blue);
	} else {
		draw_set_color(c_yellow);
	}
	draw_text((window_get_width()/24)*2, 550, string_format(abs(diff), 4, 3));
	diff = 4.268-move_1_marker_3_time;
	if (round(diff) > 0) {
		draw_set_color(c_red);
	} else if (round(diff) < 0) {
		draw_set_color(c_blue);
	} else {
		draw_set_color(c_yellow);
	}
	draw_text((window_get_width()/24)*2, 600, string_format(abs(diff), 4, 3));
	diff = 4.736-move_1_marker_4_time;
	if (round(diff) > 0) {
		draw_set_color(c_red);
	} else if (round(diff) < 0) {
		draw_set_color(c_blue);
	} else {
		draw_set_color(c_yellow);
	}
	draw_text((window_get_width()/24)*2, 650, string_format(abs(diff), 4, 3));
	diff = 109.669-move_1_position_at_1;
	if (round(diff) > 0) {
		draw_set_color(c_red);
	} else if (round(diff) < 0) {
		draw_set_color(c_blue);
	} else {
		draw_set_color(c_yellow);
	}
	draw_text((window_get_width()/24)*2, 700, string_format(abs(diff), 4, 3));
	diff = 201.337-move_1_position_at_2;
	if (round(diff) > 0) {
		draw_set_color(c_red);
	} else if (round(diff) < 0) {
		draw_set_color(c_blue);
	} else {
		draw_set_color(c_yellow);
	}
	draw_text((window_get_width()/24)*2, 750, string_format(abs(diff), 4, 3));
	diff = 453.006-move_1_position_at_3;
	if (round(diff) > 0) {
		draw_set_color(c_red);
	} else if (round(diff) < 0) {
		draw_set_color(c_blue);
	} else {
		draw_set_color(c_yellow);
	}
	draw_text((window_get_width()/24)*2, 800, string_format(abs(diff), 4, 3));
	
	// Comparison to 60 fps, fixed timestep with green.
	draw_set_color(c_white);
	draw_text((window_get_width()/24)*22, 250, "Green | Default");
	diff = 1804.677-move_2_current_x;
	if (round(diff) > 0) {
		draw_set_color(c_red);
	} else if (round(diff) < 0) {
		draw_set_color(c_blue);
	} else {
		draw_set_color(c_yellow);
	}
	draw_text((window_get_width()/24)*22, 300, string_format(abs(diff), 4, 3));
	diff = 576.00-move_2_current_y;
	if (round(diff) > 0) {
		draw_set_color(c_red);
	} else if (round(diff) < 0) {
		draw_set_color(c_blue);
	} else {
		draw_set_color(c_yellow);
	}
	draw_text((window_get_width()/24)*22, 350, string_format(abs(diff), 4, 3));
	diff = 507.528-move_2_current_speed;
	if (round(diff) > 0) {
		draw_set_color(c_red);
	} else if (round(diff) < 0) {
		draw_set_color(c_blue);
	} else {
		draw_set_color(c_yellow);
	}
	draw_text((window_get_width()/24)*22, 400, string_format(abs(diff), 4, 3));
	diff = 100.667-move_2_current_accel;
	if (round(diff) > 0) {
		draw_set_color(c_red);
	} else if (round(diff) < 0) {
		draw_set_color(c_blue);
	} else {
		draw_set_color(c_yellow);
	}
	draw_text((window_get_width()/24)*22, 450, string_format(abs(diff), 4, 3));
	diff = 2.684-move_2_marker_1_time;
	if (round(diff) > 0) {
		draw_set_color(c_red);
	} else if (round(diff) < 0) {
		draw_set_color(c_blue);
	} else {
		draw_set_color(c_yellow);
	}
	draw_text((window_get_width()/24)*22, 500, string_format(abs(diff), 4, 3));
	diff = 3.651-move_2_marker_2_time;
	if (round(diff) > 0) {
		draw_set_color(c_red);
	} else if (round(diff) < 0) {
		draw_set_color(c_blue);
	} else {
		draw_set_color(c_yellow);
	}
	draw_text((window_get_width()/24)*22, 550, string_format(abs(diff), 4, 3));
	diff = 4.268-move_2_marker_3_time;
	if (round(diff) > 0) {
		draw_set_color(c_red);
	} else if (round(diff) < 0) {
		draw_set_color(c_blue);
	} else {
		draw_set_color(c_yellow);
	}
	draw_text((window_get_width()/24)*22, 600, string_format(abs(diff), 4, 3));
	diff = 4.736-move_2_marker_4_time;
	if (round(diff) > 0) {
		draw_set_color(c_red);
	} else if (round(diff) < 0) {
		draw_set_color(c_blue);
	} else {
		draw_set_color(c_yellow);
	}
	draw_text((window_get_width()/24)*22, 650, string_format(abs(diff), 4, 3));
	diff = 109.669-move_2_position_at_1;
	if (round(diff) > 0) {
		draw_set_color(c_red);
	} else if (round(diff) < 0) {
		draw_set_color(c_blue);
	} else {
		draw_set_color(c_yellow);
	}
	draw_text((window_get_width()/24)*22, 700, string_format(abs(diff), 4, 3));
	diff = 201.337-move_2_position_at_2;
	if (round(diff) > 0) {
		draw_set_color(c_red);
	} else if (round(diff) < 0) {
		draw_set_color(c_blue);
	} else {
		draw_set_color(c_yellow);
	}
	draw_text((window_get_width()/24)*22, 750, string_format(abs(diff), 4, 3));
	diff = 453.006-move_2_position_at_3;
	if (round(diff) > 0) {
		draw_set_color(c_red);
	} else if (round(diff) < 0) {
		draw_set_color(c_blue);
	} else {
		draw_set_color(c_yellow);
	}
	draw_text((window_get_width()/24)*22, 800, string_format(abs(diff), 4, 3));
}