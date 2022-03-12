if (other.canPushBall) {
	hSpeed = -hSpeed
	updateHSpeed()
	other.alarm[0] = 30; // 1/4 a second
}
