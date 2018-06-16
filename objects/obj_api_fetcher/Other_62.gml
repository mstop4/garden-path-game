if (ds_map_find_value(async_load, "id") == fetch_seeds) {
	instance_destroy(obj_word);
	ds_list_empty(seeds);
	
	if (ds_map_find_value(async_load, "status") == 0) {
		res = ds_map_find_value(async_load, "result");
		json = json_decode(res);
	  
		ds_list_copy(seeds,json[? "default"]);
	  
		var num_words = ds_list_size(seeds);
	  
		for (var i=0; i<num_words; i++) {
			var w = instance_create_layer(128,i*40+32,"Instances",obj_word);
			w.word = seeds[| i];
		}
	}
	
	else {
	}
}