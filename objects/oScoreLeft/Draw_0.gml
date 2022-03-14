draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(LargeFont);
draw_set_color(c_white);

if (global.isNight) {
	draw_set_color(c_purple);
}

draw_text_transformed(x, y, global.scoreLeft, 1, 1, 0);