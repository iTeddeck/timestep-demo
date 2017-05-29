/// Draw the fade.

if (obj_next_room.countdown <= 4000000) {
	alpha = clamp(alpha + (fade * .05), 0, .85);
	
	draw_set_color(c_black);
	draw_set_alpha(alpha);
	draw_rectangle(0, 0, window_get_width(), window_get_height(), 0);
	
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_transformed(window_get_width()/2, window_get_height()/2, "Exiting in " + string_format((obj_next_room.countdown div 1000000)+1, 1, 0) + "...", 4, 4, 0);
}

draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);