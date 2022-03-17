if (global.isNight) {
	if (surface_exists(surf)) {
		surface_set_target(surf);
		draw_set_color(c_black);
		draw_set_alpha(0.85);
		draw_rectangle(0, 0, room_width, room_height, 0);
		gpu_set_blendmode(bm_subtract);
		with (oLightParent)
		{
			switch(object_index)
			{
				case oPaddle:
					draw_sprite_ext(sLighting, 0, x, y, 1, 1, 0, c_white, 1);            
					break;
				case oScoreLeft:
				case oScoreRight:
					//draw_sprite_ext(sLighting, 0, x, y, 1, 1, 0, c_white, 1);
					break;
				case oBasicLaser:
					draw_sprite_ext(sLighting, 0, x, y, 1, 1, 0, c_white, 1);            
					break;
				default:
					break;
			}
		}
		gpu_set_blendmode(bm_normal);
		draw_set_alpha(1);
		surface_reset_target();
		draw_surface(surf, 0, 0);
	}
	else
	{
	    surf = surface_create(room_width, room_height);
	    surface_set_target(surf);
	    draw_set_colour(c_black);
	    draw_set_alpha(0);
	    draw_rectangle(0, 0, room_width, room_height, false);
	    surface_reset_target();
	}
}
else {
	if surface_exists(surf)
	{
	    surface_free(surf);
	}
}
