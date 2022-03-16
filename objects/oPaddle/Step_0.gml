if (global.isMatchOver) {
	return;
}

if (isAI) {
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

