if (canStart and (keyboard_check_direct(vk_anykey) or gamepad_button_check_pressed(0, gp_face1))) {
	instance_activate_all();
	instance_destroy();
}
