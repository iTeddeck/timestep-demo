/// @desc Updating based on different modes.

if (x <= 1800 && x >= 0) {
	// Keep the object within the screen
	
	if (!at_marker_1 && (x+32) > obj_marker_1.x) {
		marker_1_time = (current_time-begin_time) / 1000;
		at_marker_1 = true;
	}
	if (!at_marker_2 && (x+32) > obj_marker_2.x) {
		marker_2_time = (current_time-begin_time) / 1000;
		at_marker_2 = true;
	}
	if (!at_marker_3 && (x+32) > obj_marker_3.x) {
		marker_3_time = (current_time-begin_time) / 1000;
		at_marker_3 = true;
	}
	if (!at_marker_4 && (x+32) > obj_marker_4.x) {
		marker_4_time = (current_time-begin_time) / 1000;
		at_marker_4 = true;
	}
	
	if (((current_time-begin_time) div 1000) == 1 && !pos_1_marked) {
		position_at_1 = x;
		pos_1_marked = true;
	} else if (((current_time-begin_time) div 1000) == 2 && !pos_2_marked) {
		position_at_2 = x;
		pos_2_marked = true;
	} else if (((current_time-begin_time) div 1000) == 3 && !pos_3_marked) {
		position_at_3 = x;
		pos_3_marked = true;
	}
	
	
	// Different modes of testing the timestep.
	
	if (mode_no_timestep) {
		// This mode increments the acceleration every frame regardless of time or lag.
		
		var jerk = .00006;
		
		if (integ_euler) {
			// Using Euler integration.
			
			// Af = Ai + J*t
			current_accel = previous_accel + jerk;
			previous_accel = current_accel;
			// Vf = Vi + Af*t
			current_speed = previous_speed + current_accel;
			previous_speed = current_speed;
			// Xf = Xi + Vf*t
			current_x = previous_x + current_speed;
			previous_x = current_x
		
			x = current_x
		
			previous_y = current_y;
		
			y = current_y;
			
		} else if (integ_verlet) {
			// Using Verlet integration.
			
			// xn = xc + (xc - xp) + a * dt * dt
			// xn = 2xc - xp + a * dt^2
			
			// Update pos, vel, accel in that order.
			
			current_accel = previous_accel + jerk;
			
			current_x = new_x;
			
			new_x = 2 * current_x - previous_x + current_accel;
			
			previous_x = current_x;
			
			x = new_x;
			y = new_y;
			
		} else if (integ_rk4) {
			// Using RK4 integration.
			
			var k1_v = current_speed;
			var k1_a = current_accel;
			var k2_v = current_speed + k1_v * (1/2);
			var k2_a = current_accel + jerk * (1/2);
			var k3_v = current_speed + k2_v * (1/2);
			var k3_a = current_accel + jerk * (1/2);
			var k4_v = current_speed + k3_v;
			var k4_a = current_accel + jerk;
			
			var rk4_speed = (1/6) * (k1_v + 2 * k2_v + 2 * k3_v + k4_v);
			var rk4_accel = (1/6) * (k1_a + 2 * k2_a + 2 * k3_a + k4_a);
			
			previous_x = current_x;
			current_x = previous_x + rk4_speed;
			previous_speed = current_speed;
			current_speed = previous_speed + rk4_accel;
			current_accel = rk4_accel;
			
			x = current_x;
			y = current_y;
			
		} else if (integ_velo_verlet) {
			// Using Velocity Verlet integration.
			
			current_accel = previous_accel + jerk;
				
			previous_x = current_x;
			
			current_x = current_x + current_speed + (1/2) * previous_accel;
			current_speed = current_speed + (current_accel + previous_accel) / 2;
			
			previous_accel = current_accel;
			
			x = current_x;
			y = current_y;
			
		}
		
	}
	
	if (mode_fixed_timestep) {
		// Assumes every machine runs at 60 fps.
		
		var dt = 1/60; // Same as delta_time / 1000000 where delta_time is 16,667 every frame.
		var jerk = 10;
		
		if (integ_euler) {
			// Using Euler integration.
		
			// Af = Ai + J*t
			// J constant
			current_accel = previous_accel + jerk * dt;
			previous_accel = current_accel;
			// Vf = Vi + Af*t
			current_speed = previous_speed + current_accel * dt;
			previous_speed = current_speed;
			// Xf = Xi + Vf*t
			current_x = previous_x + current_speed * dt;
			previous_x = current_x;
		
			x = current_x;
		
			previous_y = current_y;
		
			y = current_y;
			
		} else if (integ_verlet) {
			// Using Verlet integration.
			
			current_accel = previous_accel + jerk * dt;
			
			current_x = new_x;
			
			new_x = 2 * current_x - previous_x + current_accel * dt * dt;
			
			previous_x = current_x;
			
			x = new_x;
			y = new_y;
			
		} else if (integ_rk4) {
			// Using RK4 integration.
			
			// Start with current position, velocity, and acceleration.
			var k1_v = current_speed;
			var k1_a = current_accel;
			var k2_v = current_speed + k1_v * (1/2) * dt;
			var k2_a = current_accel + jerk * (1/2) * dt;
			var k3_v = current_speed + k2_v * (1/2) * dt;
			var k3_a = current_accel + jerk * (1/2) * dt;
			var k4_v = current_speed + k3_v * dt;
			var k4_a = current_accel + jerk * dt;
			
			var rk4_speed = (1/6) * (k1_v + 2 * k2_v + 2 * k3_v + k4_v);
			var rk4_accel = (1/6) * (k1_a + 2 * k2_a + 2 * k3_a + k4_a);
			
			previous_x = current_x;
			current_x = previous_x + rk4_speed * dt;
			previous_speed = current_speed;
			current_speed = previous_speed + rk4_accel * dt;
			current_accel = rk4_accel;
			
			x = current_x;
			y = current_y;
			
		} else if (integ_velo_verlet) {
			// Using Velocity Verlet integration.
			
			current_accel = previous_accel + jerk * dt;
				
			previous_x = current_x;
			
			current_x = current_x + current_speed * dt + (1/2) * previous_accel * dt * dt;
			current_speed = current_speed + (current_accel + previous_accel) / 2 * dt;
			
			previous_accel = current_accel;
			
			x = current_x;
			y = current_y;
			
		}
		
	}
	
	if (mode_variable_timestep) {
		// Updates based on the time passed since the last frame or "deltatime".
			
		var dt = delta_time / 1000000;
		var jerk = 10;
		
		if (integ_euler) {
			// Using Euler integration.
		
			// Af = Ai + J*t
			// J constant
			current_accel = previous_accel + jerk * dt;
			previous_accel = current_accel;
			// Vf = Vi + Af*t
			current_speed = previous_speed + current_accel * dt;
			previous_speed = current_speed;
			// Xf = Xi + Vf*t
			current_x = previous_x + current_speed * dt;
			previous_x = current_x;
		
			x = current_x;
		
			previous_y = current_y;
		
			y = current_y;
			
		} else if (integ_verlet) {
			// Using Verlet integration.
			
			current_accel = previous_accel + jerk * dt;
			
			current_x = new_x;
			
			new_x = 2 * current_x - previous_x + current_accel * dt * dt;
			
			previous_x = current_x;
			
			x = new_x;
			y = new_y;
			
		} else if (integ_rk4) {
			// Using RK4 integration.
			
			var k1_v = current_speed;
			var k1_a = current_accel;
			var k2_v = current_speed + k1_v * (1/2) * dt;
			var k2_a = current_accel + jerk * (1/2) * dt;
			var k3_v = current_speed + k2_v * (1/2) * dt;
			var k3_a = current_accel + jerk * (1/2) * dt;
			var k4_v = current_speed + k3_v * dt;
			var k4_a = current_accel + jerk * dt;
			
			var rk4_speed = (1/6) * (k1_v + 2 * k2_v + 2 * k3_v + k4_v);
			var rk4_accel = (1/6) * (k1_a + 2 * k2_a + 2 * k3_a + k4_a);
			
			previous_x = current_x;
			current_x = previous_x + rk4_speed * dt;
			previous_speed = current_speed;
			current_speed = previous_speed + rk4_accel * dt;
			current_accel = rk4_accel;
			
			x = current_x;
			y = current_y;
			
		} else if (integ_velo_verlet) {
			// Using Velocity Verlet integration.
			
			current_accel = previous_accel + jerk * dt;
				
			previous_x = current_x;
			
			current_x = current_x + current_speed * dt + (1/2) * previous_accel * dt * dt;
			current_speed = current_speed + (current_accel + previous_accel) / 2 * dt;
			
			previous_accel = current_accel;
			
			x = current_x;
			y = current_y;
			
		}
		
	}
	
	if (mode_semi_fixed_timestep) {
		// Will always update 60 times a second regardless of the number of frames.
		
		var dt = 1/60; // Update physics 60 times a second.
		var jerk = 10;
		
		// Time passed since the last frame in seconds.
		var frame_time = delta_time / 1000000; // delta_time / 1000000 = 1 / framerate;
		
		if (frame_time > .25) {
			frame_time = .25; // 1 / 4 = 4 frames a second minimum framerate.
		}
		
		accumulator += frame_time;
		
		if (integ_euler) {
			// Using Euler integration.
		
			while (accumulator >= dt) {
				// Xf = Xi + Vf*t
				previous_x = current_x;
				previous_y = current_y;
				current_x = previous_x + current_speed * dt;
				// Vf = Vi + Af*t
				previous_speed = current_speed;
				current_speed = previous_speed + current_accel * dt;
				// Af = Ai + J*t
				// J constant
				previous_accel = current_accel;
				current_accel = previous_accel + jerk * dt;
			
				accumulator -= dt;
			}
		
			var interp_alpha = accumulator / dt; // Fraction of dt leftover.
		
			x = lerp(previous_x, current_x, interp_alpha);
			y = lerp(previous_y, current_y, interp_alpha);
			
		} else if (integ_verlet) {
			// Using Verlet integration.
			
			while (accumulator >= dt) {
			
				current_accel = previous_accel + jerk * dt;
			
				current_x = new_x;
			
				new_x = 2 * current_x - previous_x + current_accel * dt * dt;
			
				previous_x = current_x;
				
				accumulator -= dt;
			}
			
			var interp_alpha = accumulator / dt; // Fraction of dt leftover.
			
			x = lerp(previous_x, new_x, interp_alpha);
			y = lerp(previous_y, new_y, interp_alpha);
			
		} else if (integ_rk4) {
			// Using RK4 integration.
			
			while (accumulator >= dt) {
			
				var k1_v = current_speed;
				var k1_a = current_accel;
				var k2_v = current_speed + k1_v * (1/2) * dt;
				var k2_a = current_accel + jerk * (1/2) * dt;
				var k3_v = current_speed + k2_v * (1/2) * dt;
				var k3_a = current_accel + jerk * (1/2) * dt;
				var k4_v = current_speed + k3_v * dt;
				var k4_a = current_accel + jerk * dt;
			
				var rk4_speed = (1/6) * (k1_v + 2 * k2_v + 2 * k3_v + k4_v);
				var rk4_accel = (1/6) * (k1_a + 2 * k2_a + 2 * k3_a + k4_a);
			
				previous_x = current_x;
				current_x = previous_x + rk4_speed * dt;
				previous_speed = current_speed;
				current_speed = previous_speed + rk4_accel * dt;
				current_accel = rk4_accel;
				
				accumulator -= dt;
			}
			
			var interp_alpha = accumulator / dt; // Fraction of dt leftover.
			
			x = lerp(previous_x, current_x, interp_alpha);
			y = lerp(previous_y, current_y, interp_alpha);
			
		} else if (integ_velo_verlet) {
			// Using Velocity Verlet integration.
			
			while (accumulator >= dt) {
				
				current_accel = previous_accel + jerk * dt;
				
				previous_x = current_x;
			
				current_x = current_x + current_speed * dt + (1/2) * previous_accel * dt * dt;
				current_speed = current_speed + (current_accel + previous_accel) / 2 * dt;
			
				previous_accel = current_accel;
				
				accumulator -= dt;
			}
			
			var interp_alpha = accumulator / dt; // Fraction of dt leftover.
			
			x = lerp(previous_x, current_x, interp_alpha);
			y = lerp(previous_y, current_y, interp_alpha);
			
		}
		
	}
} else {
	// Simulation finished
	
	if (obj_simulation_inputs.first_simulation_end) {
		if (keyboard_check_pressed(ord("N"))) {
			obj_simulation_inputs.first_simulation_end = false;
			room_goto_next();
		}
	}
	if (obj_simulation_inputs.second_simulation_end) {
		if (keyboard_check_pressed(ord("V"))) {
			obj_simulation_inputs.second_simulation_end = false;
			room_goto_next();
		}
	}
	
	if (room_get_name(room) == "rm_two") {
		// First simulation finished.
		
		obj_simulation_inputs.first_simulation_end = true;
		
	}
	if (room_get_name(room) == "rm_three") {
		// Second simulation finished.
		
		obj_simulation_inputs.second_simulation_end = true;
		
	}
}