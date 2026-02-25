draw_set_font(Font1);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(16, 16, "Speed: " + string(global.speed_level) + "/" + string(global.win_speed_level) + "               Press 'R' to restart");

if (global.speed_level > global.win_speed_level) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_yellow);
	draw_text(display_get_gui_width()/2, display_get_gui_height()/2, "YOU WIN!");
}