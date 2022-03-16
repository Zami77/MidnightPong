var arcadeOption = 0, twoPlayerOption = 1, exitOption = 2;

if (global.control_menu_up and image_index > 0) {
	image_index -= 1;
	audio_play_sound(sndButtonChange_1, 1, false);
}
if (global.control_menu_down and image_index < image_number - 1) {
	image_index += 1;
	audio_play_sound(sndButtonChange_1, 1, false);
}

if (image_index == arcadeOption and global.control_accept) {
	audio_play_sound(sndButtonConfirm_1, 1, false);
	room_goto(rArcade_1);
}

if (image_index == twoPlayerOption and global.control_accept) {
	audio_play_sound(sndButtonConfirm_1, 1, false);
	room_goto(r2Player);
}

if (image_index == exitOption and global.control_accept) {
	audio_play_sound(sndButtonConfirm_1, 1, false);
	game_end();
}