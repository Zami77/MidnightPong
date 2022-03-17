if (songPlaying) {
	return;
}

switch (room) {
	case rMainMenu:
		audio_play_sound(sndMenuMusic, 2, true);
		songPlaying = true;
		break;
	case rArcade_1:
		audio_play_sound(sndMatchMusic, 2, true);
		songPlaying = true;
		break;
	default:
		audio_play_sound(sndMatchMusic, 2, true);
		songPlaying = true;
		break;
}
