if (other.canPushBall) {
	hSpeed = -hSpeed
	updateHSpeed()
	other.alarm[0] = 15; // 1/4 a second
}
