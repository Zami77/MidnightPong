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
}

function updateVSpeed() {
	vSpeed += irandom_range(-1, 1);
}

function ballBounceSound() {
	bounceSounds = [sndBallHit_1, sndBallHit_2, sndBallHit_3];
	curSound = irandom_range(0, array_length(bounceSounds) - 1);
	audio_play_sound(bounceSounds[curSound], 1, false);
}

function ballBounceParticles() {
	for(var i = 0; i < 30; i += 1) {
		part_particles_create(global.partSystem, x, y, global.ptBasic, 1);
	}
}

function ballBounce() {
	updateHSpeed();
	updateVSpeed();
	ballBounceSound();
	ballBounceParticles();
}
#endregion

if (initGameBall) {
	initGameBall = false
	resetBall(true);
}

if (bbox_bottom > room_height || bbox_top < 0) {
	vSpeed = -vSpeed;
	ballBounce();
}

x += hSpeed;
y += vSpeed;

if (x < 0 || x > room_width) {
	resetBall()
}