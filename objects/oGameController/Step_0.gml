#region Player Score
if (global.scoreLeft == global.pointsToWin) {
	global.isMatchOver = true;
	global.isLeftWon = true;
	global.isNight = false;
}
else if (global.scoreRight == global.pointsToWin) {
	global.isMatchOver = true;
	global.isRightWon = true;
	global.isNight = false;
}

if (global.scoreLeft == global.pointsToWin - 1) {
	global.isNight = true;	
}
#endregion

#region Handle Controls
global.control_menu_up	  = keyboard_check_pressed(vk_up) or gamepad_button_check_pressed(0, gp_padu);
global.control_menu_down  = keyboard_check_pressed(vk_down) or gamepad_button_check_pressed(0, gp_padd);
global.control_up	      = keyboard_check(vk_up) or gamepad_button_check(0, gp_padu);
global.control_down       = keyboard_check(vk_down) or gamepad_button_check(0, gp_padd);
global.control_accept     = keyboard_check_pressed(ord("Z")) or
							keyboard_check_pressed(vk_space) or
							keyboard_check_pressed(vk_enter) or
							gamepad_button_check_pressed(0, gp_face1);
#endregion