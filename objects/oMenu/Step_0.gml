var arcadeOption = 0, twoPlayerOption = 1, exitOption = 2;

if (global.control_menu_up and image_index > 0) {
	image_index -= 1;
}
if (global.control_menu_down and image_index < image_number - 1) {
	image_index += 1;
}

if (image_index == arcadeOption and global.control_accept) {
	room_goto(Arcade_1);
}

if (image_index == twoPlayerOption and global.control_accept) {
	// TODO: two player game
}

if (image_index == exitOption and global.control_accept) {
	game_end();	
}