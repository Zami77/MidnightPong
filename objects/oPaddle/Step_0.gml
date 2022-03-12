if (keyboard_check(vk_up))
	currentSpeed = -maxSpeed
else if (keyboard_check(vk_down))
	currentSpeed = maxSpeed
else
	currentSpeed = 0

y = clamp(y + currentSpeed, sprite_height / 2, room_height - sprite_height / 2)