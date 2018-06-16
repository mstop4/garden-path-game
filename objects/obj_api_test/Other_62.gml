if (ds_map_find_value(async_load, "id") == fetch_seeds) {
	show_debug_message("Response!");
	ds_list_empty(seeds);
	
	if (ds_map_find_value(async_load, "status") == 0) {
      res = ds_map_find_value(async_load, "result");
	  json = json_decode(res);
	  
	  ds_list_copy(seeds,json[? "default"]);
	  show_debug_message(string(ds_list_size(seeds)));
	}
	
	else {
	}
}