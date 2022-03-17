if (canGoToNextRoom and global.control_any_key) {
	audio_play_sound(sndButtonConfirm_1, 1, false);
	room_goto(roomToGoTo);
}
