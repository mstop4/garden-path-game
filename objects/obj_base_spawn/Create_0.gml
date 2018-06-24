word_list = ds_list_create();
is_fetching = true;
list_pos = 0;
list_size = 1;
fetch_seeds = http_get_ex("/seed/json?limit=" + string(num_seeds));
is_fetching = true;

cur_esd_active = init_esd_active;
cur_esd_passive = init_esd_passive;
passive_spawn = false;