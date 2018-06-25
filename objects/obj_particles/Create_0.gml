ps = part_system_create();
part_system_automatic_draw(ps,false);

part_sparks = part_type_create();
part_type_color1(part_sparks, c_white);
part_type_alpha1(part_sparks, 0.5);
part_type_shape(part_sparks,pt_shape_spark);
part_type_orientation(part_sparks,0,360,1,0,false);
part_type_size(part_sparks,0.25,0.5,-0.005,0);
part_type_direction(part_sparks,0,360,0,0);
part_type_speed(part_sparks,0.25,1,0,0);
part_type_life(part_sparks,30,180);

part_exhaust = part_type_create();
part_type_color2(part_exhaust, $FFFFC0, $FF0000);
part_type_alpha2(part_exhaust, 0.75, 0);
part_type_shape(part_exhaust,pt_shape_disk);
part_type_size(part_exhaust,0.05,0.1,0.002,0);
part_type_direction(part_exhaust,0,360,0,0);
part_type_speed(part_exhaust,0,0.1,0,0);
part_type_life(part_exhaust,30,180);