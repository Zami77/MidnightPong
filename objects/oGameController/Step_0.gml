#region Player Score
if (global.scoreLeft >= global.pointsToWin) {
	global.isMatchOver = true;
	global.isLeftWon = true;
	global.isNight = false;
}
else if (global.scoreRight == global.pointsToWin) {
	global.isMatchOver = true;
	global.isRightWon = true;
	global.isNight = false;
}
else if (global.scoreLeft == global.pointsToWin - 1 or (global.is2PGame and global.scoreRight == global.pointsToWin - 1)) {
	global.isNight = true;	
}
#endregion

#region Handle Controls
if (gamepad_is_connected(0)) {
	gamepad_set_axis_deadzone(0, 0.5);
}

global.control_any_key    = keyboard_check_pressed(vk_anykey);
global.control_menu_up	  = keyboard_check_pressed(vk_up) or gamepad_button_check_pressed(0, gp_padu);
global.control_menu_down  = keyboard_check_pressed(vk_down) or gamepad_button_check_pressed(0, gp_padd);
global.control_up	      = keyboard_check(vk_up) or gamepad_button_check(0, gp_padu) or 
								(gamepad_axis_value(0, gp_axislv) < 0);
global.control_down       = keyboard_check(vk_down) or gamepad_button_check(0, gp_padd) or
								(gamepad_axis_value(0, gp_axislv) > 0);
global.control_accept     = keyboard_check_pressed(ord("Z")) or
							keyboard_check_pressed(vk_space) or
							keyboard_check_pressed(vk_enter) or
							gamepad_button_check_pressed(0, gp_face1);

/* Two Player Controls */
global.control_p1_up  = keyboard_check(ord("W")) or gamepad_button_check(0, gp_padu) or
							(gamepad_axis_value(0, gp_axislv) < 0);
global.control_p1_down = keyboard_check(ord("S")) or gamepad_button_check(0, gp_padd) or
							(gamepad_axis_value(0, gp_axislv) > 0);
global.control_p2_up = keyboard_check(vk_up);
global.control_p2_down = keyboard_check(vk_down);
#endregion

#region Pause Menu
if (room != rMainMenu and keyboard_check_pressed(ord("P"))) {
	isPaused = !isPaused;
	if (!isPaused) {
		instance_activate_all();
		surface_free(pausedSurf);
		pausedSurf = -1;
	}
}

if (isPaused and keyboard_check_pressed(ord("Q"))) {
	audio_stop_all();
	room_goto(rMainMenu);
}
#endregion

#region Match End
if (global.isMatchOver) {
	if (!instance_exists(oNextRoom)) {
		var _oNextRoom = instance_create_depth(room_width / 2, room_height / 2 + 40, 100, oNextRoom);
		if (global.is2PGame) {
			_oNextRoom.roomToGoTo = rMainMenu;
		}
		if (global.isLeftWon) {
			_oNextRoom.roomToGoTo = nextLevel;
		}
		else {
			_oNextRoom.roomToGoTo = room;
		}
	}
}
#endregion