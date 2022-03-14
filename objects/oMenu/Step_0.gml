var up, down, accept;

up		 = keyboard_check_pressed(vk_up) or gamepad_button_check_pressed(0, gp_padu);
down	 = keyboard_check_pressed(vk_down) or gamepad_button_check_pressed(0, gp_padd);
accept	 = keyboard_check_pressed(ord("Z")) or 
			keyboard_check_pressed(vk_space) or 
			keyboard_check_pressed(vk_enter) or 
			gamepad_button_check_pressed(0, gp_face1);

var arcadeOption = 0, twoPlayerOption = 1, exitOption = 2;

if (up and image_index > 0) {
	image_index -= 1;
}
if (down and image_index < image_number - 1) {
	image_index += 1;
}

if (image_index == arcadeOption and accept) {
	room_goto(Arcade_1);
}

if (image_index == twoPlayerOption and accept) {
	// TODO: two player game
}

if (image_index == exitOption and accept) {
	game_end();	
}