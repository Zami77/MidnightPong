if (bbox_bottom > room_height || bbox_top < 0) {
	vSpeed = -vSpeed
	updateHSpeed()
}

x += hSpeed
y += vSpeed

if (x < 0 || x > room_width) {
	hSpeed = random_range(-10, 10)
	vSpeed = random_range(-10, 10)
	x = room_width / 2
	y = room_height / 2
}

function updateHSpeed() {
	if (hSpeed > 0) {
		hSpeed += 1
	}
	else {
		hSpeed -= 1
	}
}