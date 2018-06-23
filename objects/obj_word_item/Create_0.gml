dir = random(360);
x_speed = lengthdir_x(max_speed, dir);
y_speed = lengthdir_y(max_speed, dir);

init_clones();
create_clones(obj_word_item_clone);
dt_init_alarms();

dt_alarm[0] = 600;
dt_alarm_scr[0] = obj_word_item_alarm0;