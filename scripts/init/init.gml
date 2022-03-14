#region Particle Types
var _p = part_type_create()

part_type_shape(_p, pt_shape_disk);
part_type_life(_p, 20, 40);
part_type_scale(_p, 0.5, 0.5);

part_type_alpha2(_p, 1, 0);
part_type_color2(_p, c_red, c_white);
part_type_size(_p, 0.1, 0.2, 0.025, 0);

part_type_speed(_p, 2, 4, 0, 0);
part_type_direction(_p, 0, 360, 0, 0);
//part_type_gravity(_p, 0.2, 270);

global.ptBasic = _p;

// Trail Particle
var _p = part_type_create();

part_type_shape(_p, pt_shape_disk);
part_type_life(_p, 30, 50);
part_type_alpha2(_p, 1, 0);
part_type_color2(_p, c_purple, c_white);
part_type_size(_p, 0.1, 0.2, -0.02, 0);

global.ptTrail = _p;

part_type_step(global.ptBasic, 1, global.ptTrail);

#endregion