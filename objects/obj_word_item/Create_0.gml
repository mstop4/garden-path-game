var spd = 2;

dir = random(360);
x_speed = lengthdir_x(spd, dir);
y_speed = lengthdir_y(spd, dir);

dt_init_alarms();

dt_alarm[0] = 600;
dt_alarm_scr[0] = obj_word_item_alarm0;