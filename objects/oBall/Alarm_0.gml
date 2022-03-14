/// @description Alarm for waiting to reset ball velocity

if (global.isNight) {
	hSpeed = 5;
}
else {
	hDir = sign(irandom_range(-1, 1))
	hSpeed = random_range(5, 10) * hDir;
}
vDir = sign(irandom_range(-1, 1))
vSpeed = random_range(3, 10) * vDir;

show_debug_message("vSpeed:" + string(vSpeed));
show_debug_message("hSpeed:" + string(hSpeed));