event_inherited();
create_clones(obj_enemy_clone);
collision_list = ds_list_create();
passthrough = true;
my_owner = noone;
dt_alarm[0] = 30;
dt_alarm_scr[0] = obj_enemy_alarm0;