if !surface_exists(surf)
{
    surf = surface_create(room_width, room_height);
    surface_set_target(surf);
    draw_set_colour(c_black);
    draw_set_alpha(0);
    draw_rectangle(0, 0, room_width, room_height, false);
    surface_reset_target();
}
else
{
	if (surface_exists(surf)) {
		surface_set_target(surf);
		draw_set_color(c_black);
		draw_set_alpha(0.8);
		draw_rectangle(0, 0, room_width, room_height, 0);
		gpu_set_blendmode(bm_subtract);
		with (oLightParent)
		{
			var _sw = sprite_width / 2;
			var _sh = sprite_height / 2;
			switch(object_index)
			{
				case oPaddle:
					draw_sprite_ext(sLighting, 0, x + _sw, y + _sh, 0.75, 0.75, 0, c_white, 1);            
				    break;
			}
		}
		gpu_set_blendmode(bm_normal);
		draw_set_alpha(1);
		surface_reset_target();
		draw_surface(surf, room_width, room_height);
	}
}