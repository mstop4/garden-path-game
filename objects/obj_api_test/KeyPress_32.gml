show_debug_message("GET seeds");
fetch_seeds = http_get(DEV_SERVER_ADDRESS + "/seed/json?limit=" + string(num_seeds));