if (other.canPushBall) {
	hSpeed = -hSpeed;
	ballBounce();
	other.alarm[0] = 30; // 1/2 a second
	other.canPushBall = false;
}
