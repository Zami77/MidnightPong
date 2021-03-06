if (global.isMatchOver) {
	return;
}

if (isInitSetup) {
	isInitSetup = false;
	if (isBoss) {
		image_yscale *= 7;
	}
}

function shootLaser() {
	var laserCooldown = 180; // 3 seconds
	if (isAI) {
		instance_create_layer(x - 100, y, "Paddles_Ball", oBasicLaser);
		canShoot = false;
		alarm_set(1, laserCooldown);
	}
}

function takeDamage() {
	flashAlpha = 1;
	audio_play_sound(sndPaddleTakeDamage, 2, false);
	image_yscale *= 0.9;
}

if (isAI) {
	if (global.isNight and canShoot) {
		shootLaser();
	}
	var reachedDestination = y >= destination - maxSpeed  && y <= destination + maxSpeed;
	var topWall = sprite_height / 2;
	var bottomWall = room_height - sprite_height / 2;
	
	if (reachedDestination) {
		if (oBall.y < y) {
			destination = clamp(oBall.y - random(aiErrorMargin), topWall, bottomWall)
		}
		else {
			destination = clamp(oBall.y + random(aiErrorMargin), topWall, bottomWall)
		}
	}
	else {
		if (destination < y) {
			currentSpeed = -maxSpeed
		}
		else {
			currentSpeed = maxSpeed
		}
		y = clamp(y + currentSpeed, sprite_height / 2, room_height - sprite_height / 2);
	}
}
else if (is1P) {
	if (global.control_p1_up) {
		currentSpeed = -maxSpeed
	}
	else if (global.control_p1_down) {
		currentSpeed = maxSpeed
	}
	else {
		currentSpeed = 0
	}
	
	y = clamp(y + currentSpeed, sprite_height / 2, room_height - sprite_height / 2);
}
else if (is2P) {
	if (global.control_p2_up) {
		currentSpeed = -maxSpeed
	}
	else if (global.control_p2_down) {
		currentSpeed = maxSpeed
	}
	else {
		currentSpeed = 0
	}
	
	y = clamp(y + currentSpeed, sprite_height / 2, room_height - sprite_height / 2);
}
/* Normal Single player controls */
else {
	if (global.control_up) {
		currentSpeed = -maxSpeed
	}
	else if (global.control_down) {
		currentSpeed = maxSpeed
	}
	else {
		currentSpeed = 0
	}
	
	y = clamp(y + currentSpeed, sprite_height / 2, room_height - sprite_height / 2);
}

if (flashAlpha > 0) {
	flashAlpha -= 0.05;
}