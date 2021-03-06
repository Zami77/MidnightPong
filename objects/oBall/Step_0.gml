#region Ball Functions
function resetBall(initBallSetup = false) {
	if (!initBallSetup) {
		if (x < 0) {
			global.scoreRight += 1;
		}
		else if (x > room_width) {
			global.scoreLeft += 1;
		}
	}
	
	x = room_width / 2;
	y = room_height / 2;
	hSpeed = 0;
	vSpeed = 0;
	
	alarm_set(0, 180)
}

function updateHSpeed() {
	if (hSpeed > 0) {
		hSpeed += 1;
	}
	else {
		hSpeed -= 1;
	}
	hSpeed = clamp(hSpeed, -maxHSpeed, maxHSpeed);
}

function updateVSpeed(wallHit = false) {
	if (wallHit) {
		if (vSpeed > 0) {
			vSpeed += random_range(0.1, 2);
		}
		else {
			vSpeed += random_range(-2, 0.1);
		}
	}
	else {
		vSpeed += random_range(-2, 2);
	}
	vSpeed = clamp(vSpeed, -maxVSpeed, maxVSpeed);
}

function ballBounceSound() {
	bounceSounds = [sndBallHit_01, sndBallHit_02, sndBallHit_03, sndBallHit_04, sndBallHit_05, sndBallHit_06];
	for (var i = 0; i < array_length(bounceSounds); i += 1) {
		audio_stop_sound(bounceSounds[i]);
	}
	curSound = irandom_range(0, array_length(bounceSounds) - 1);
	audio_play_sound(bounceSounds[curSound], 1, false);
}

function ballBounceParticles() {
	for(var i = 0; i < 30; i += 1) {
		part_particles_create(global.partSystem, x, y, global.ptBasic, 1);
	}
}

function ballBounce(wallHit = false) {
	updateHSpeed();
	updateVSpeed(wallHit);
	ballBounceSound();
	ballBounceParticles();
}
#endregion

if (global.isMatchOver) {
	return;
}

if (initGameBall) {
	initGameBall = false
	resetBall(true);
}

x += hSpeed;
y += vSpeed;

if (bbox_bottom > room_height || bbox_top < 0) {
	vSpeed = -vSpeed;
	ballBounce(true);
}



if (x < 0 || x > room_width) {
	if (isMenuBall) {
		hSpeed = -hSpeed;
		ballBounce(true);
		return;
	}
	resetBall()
}