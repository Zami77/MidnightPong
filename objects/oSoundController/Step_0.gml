if (songPlaying) {
	return;
}

if (isMenu) {
	audio_play_sound(sndMenuMusic, 0, true);
	songPlaying = true;
}
else if (isArcade_1) {
	audio_play_sound(sndMatchMusic, 2, true);
	songPlaying = true;
}