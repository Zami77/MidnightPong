draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_sprite(sTextBox, 0, x, y);

draw_set_color(c_white);

draw_set_font(CascadiaCode);

draw_text_ext(x, y, boxMsg, 42, boxWidth);