/// Variable declarations upon creation.

current_x = x;
current_y = y;
current_speed = 0;
current_accel = 10;
previous_x = x;
previous_y = y;
previous_speed = 0;
previous_accel = 10;
new_x = x;
new_y = y;

accumulator = 0;

position_at_1 = 0;
position_at_2 = 0;
position_at_3 = 0;

pos_1_marked = false;
pos_2_marked = false;
pos_3_marked = false;

at_marker_1 = false;
at_marker_2 = false;
at_marker_3 = false;
at_marker_4 = false;

marker_1_time = 0;
marker_2_time = 0;
marker_3_time = 0;
marker_4_time = 0;

begin_time = current_time;

// Mode Booleans
mode_no_timestep = false;
mode_fixed_timestep = false;
mode_variable_timestep = false;
mode_semi_fixed_timestep = false;

// Set objects mode.
switch (obj_simulation_inputs.first_selection) {
	case 1:
		mode_no_timestep = true;
		obj_simulation_inputs.first_selection_name = "No Timestep";
		break;
	case 2:
		mode_fixed_timestep = true;
		obj_simulation_inputs.first_selection_name = "Fixed Timestep";
		break;
	case 3:
		mode_variable_timestep = true;
		obj_simulation_inputs.first_selection_name = "Variable Timestep";
		break;
	case 4:
		mode_semi_fixed_timestep = true;
		obj_simulation_inputs.first_selection_name = "Semi-Fixed Timestep";
		break;
}

mode_60_fps = false;
mode_30_fps = false;
mode_15_fps = false;
mode_10_fps = false;
mode_5_fps = false;
mode_120_fps = false;

input_fps = 60;

// Set objects framerate.
switch (obj_simulation_inputs.second_selection) {
	case 1:
		mode_5_fps = true;
		input_fps = 5;
		obj_simulation_inputs.second_selection_name = "5 FPS";
		break;
	case 2:
		mode_10_fps = true;
		input_fps = 10;
		obj_simulation_inputs.second_selection_name = "10 FPS";
		break;
	case 3:
		mode_15_fps = true;
		input_fps = 15;
		obj_simulation_inputs.second_selection_name = "15 FPS";
		break;
	case 4:
		mode_30_fps = true;
		input_fps = 30;
		obj_simulation_inputs.second_selection_name = "30 FPS";
		break;
	case 5:
		mode_60_fps = true;
		input_fps = 60;
		obj_simulation_inputs.second_selection_name = "60 FPS";
		break;
	case 6:
		mode_120_fps = true;
		input_fps = 120;
		obj_simulation_inputs.second_selection_name = "120 FPS";
		break;
}

integ_euler = false;
integ_verlet = false;
integ_rk4 = false;
integ_velo_verlet = false;

if (obj_simulation_inputs.move_1_integ_euler) {
	
	integ_euler = true;
	
} else if (obj_simulation_inputs.move_1_integ_verlet) {
	
	integ_verlet = true;
	
} else if (obj_simulation_inputs.move_1_integ_rk4) {
	
	integ_rk4 = true;
	
} else if (obj_simulation_inputs.move_1_integ_velo_verlet) {
	
	integ_velo_verlet = true;
	
}

game_set_speed(input_fps, gamespeed_fps);