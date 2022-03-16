// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrDrawWinText(cur_x = x, cur_y = y){
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_set_font(LargeFont);
	draw_set_color(c_white);

	winMsg = "";
	
	if (global.isLeftWon) {
		winMsg = "Player Won!";
	}
	else {
		winMsg = "Player Lost!";
	}
	
	draw_text_transformed(cur_x, cur_y, winMsg, 1, 1, 0);
}