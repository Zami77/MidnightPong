if (global.isMatchOver) {
	return;
}

if (global.bossHP <= 0) {
	global.bossHP = 0;
	global.scoreLeft = 9001;
	global.isMatchOver = true;
	instance_destroy();
}

function shootLaser() {
	var laserCooldown = 180; // 3 seconds
	instance_create_layer(x - 100, oPaddle.y, "Paddles_Ball", oBasicLaser);
	canShoot = false;
	alarm_set(1, laserCooldown);
}

function takeDamage() {
	flashAlpha = 1;
	global.bossHP -= 1;
	audio_play_sound(sndPaddleTakeDamage, 2, false);
}

if (canShoot) {
	alarm_set(1, 180);
	shootLaser();
}

if (flashAlpha > 0) {
	flashAlpha -= 0.05;
}