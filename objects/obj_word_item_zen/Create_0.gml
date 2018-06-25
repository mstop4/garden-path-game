dir = random(360);
x_speed = lengthdir_x(max_speed, dir);
y_speed = lengthdir_y(max_speed, dir);

init_clones();
create_clones(obj_word_item_zen_clone);
dt_init_alarms();

disabled = false;

emit = part_emitter_create(obj_particles.ps);
part_emitter_region(obj_particles.ps,emit,x,x,y,y,ps_shape_rectangle,ps_distr_linear);
part_emitter_stream(obj_particles.ps,emit,obj_particles.part_sparks,part_rate);