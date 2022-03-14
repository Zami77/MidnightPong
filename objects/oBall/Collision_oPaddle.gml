if (other.canPushBall) {
	hSpeed = -hSpeed;
	ballBounce();
	other.alarm[0] = 15; // 1/4 a second
	other.canPushBall = false;
}
