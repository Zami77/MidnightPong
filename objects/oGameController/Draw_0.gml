#region Match End
if (global.isMatchOver) {
	scrDrawWinText(room_width / 2, room_height / 2 - 40);
}
#endregion

#region Draw Rooms
	switch (room) {
		case Main_Menu:
			break;
		default:
			if (isPaused) {
				if (!surface_exists(pausedSurf)) {
					if pausedSurf == -1 {
						instance_deactivate_all(true);
					}
					pausedSurf = surface_create(room_width, room_height);
					surface_set_target(pausedSurf);
					draw_surface(application_surface, 0, 0);
					surface_reset_target();
				}
				else {
					draw_surface(pausedSurf, 0, 0);
					draw_set_alpha(0.5);
					draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
					draw_set_alpha(1);
					draw_set_halign(fa_center);
					draw_text_transformed_color(room_width / 2, room_height / 2, "PAUSED", 1, 1, 0, c_purple, c_purple, c_purple, c_purple, 1);
					draw_set_halign(fa_left);
				}
			}
	}
#endregion