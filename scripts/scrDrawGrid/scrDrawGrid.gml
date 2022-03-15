// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrDrawGrid(){
	var gridSize = 32;
	var lineWidth = 2;
	draw_set_color(c_green);
	draw_set_alpha(.45);
	
	for (var i = 0; i < room_height; i += gridSize) {
		draw_line_width(0, i, room_width, i, lineWidth);
	}
	for (var i = 0; i < room_width; i += gridSize) {
		draw_line_width(i, 0, i, room_height, lineWidth);
	}
	draw_set_alpha(1);
}