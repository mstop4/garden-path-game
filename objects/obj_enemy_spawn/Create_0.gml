word_list = ds_list_create();
is_fetching = true;

list_pos = 0;
list_size = 1;

fetch_seeds = http_get_ex("/seed/json?limit=" + string(num_seeds));
is_fetching = true;