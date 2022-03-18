/// @description Alarm for waiting to reset ball velocity

if (global.isNight and !global.is2PGame) {
	hSpeed = 5;
}
else {
	hDir = sign(irandom_range(-1, 1))
	hSpeed = random_range(5, 7) * hDir;
}
vDir = sign(irandom_range(-1, 1))
vSpeed = random_range(3, 7) * vDir;

if (hSpeed == 0 and vSpeed == 0) {
	hSpeed = 4;
	vSpeed = 4;
}
	

show_debug_message("vSpeed:" + string(vSpeed));
show_debug_message("hSpeed:" + string(hSpeed));