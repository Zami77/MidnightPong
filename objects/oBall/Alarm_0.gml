/// @description Alarm for waiting to reset ball velocity

if (global.isNight) {
	hSpeed = 5;
}
else {
	hSpeed = random_range(-10, 10);
}
vSpeed = random_range(-10, 10);
