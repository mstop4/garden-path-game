dir = random(360);
x_speed = lengthdir_x(max_speed, dir);
y_speed = lengthdir_y(max_speed, dir);

init_clones();
create_clones(obj_word_item_zen_clone);
dt_init_alarms();

disabled = false;