if (ds_map_find_value(async_load, "id") == fetch_seeds) {
	ds_list_empty(seeds);
	
	if (ds_map_find_value(async_load, "status") == 0) {
      res = ds_map_find_value(async_load, "result");
	  json = json_decode(res);
	  
	  ds_list_copy(seeds,json[? "default"]);
	}
	
	else {
	}
}