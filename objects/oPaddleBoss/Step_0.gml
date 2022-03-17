if (global.isMatchOver) {
	return;
}

if (bossHP <= 0) {
	global.isMatchOver = true;
}

function shootLaser() {
	var laserCooldown = 180; // 3 seconds
	instance_create_layer(x - 100, y, "Paddles_Ball", oBasicLaser);
	canShoot = false;
	alarm_set(1, laserCooldown);

}

function takeDamage() {
	flashAlpha = 1;
	bossHP -= 1;
	audio_play_sound(sndPaddleTakeDamage, 2, false);
}

if (flashAlpha > 0) {
	flashAlpha -= 0.05;
}