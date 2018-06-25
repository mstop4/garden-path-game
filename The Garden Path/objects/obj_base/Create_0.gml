disabled = false;
my_hp = my_hp_max;
active_spawn = false;
num_active_enemies = 0;
can_spawn = false;

init_clones();
dt_init_alarms();
create_clones(obj_base_clone);

dt_alarm_scr[0] = obj_base_alarm0;