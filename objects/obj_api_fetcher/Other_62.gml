/*print("Stuff");
print("id: " + string(async_load[? "id"]));
print("status: " + string(async_load[? "status"]));
print("result: " + async_load[? "result"]);
print("http status: " + string(async_load[? "http_status"]));*/

if (async_load[? "id"] == fetch_seeds) {
	if (async_load[? "status"] == 0) {
		instance_destroy(obj_word);
		ds_list_empty(seeds);
		
		res = ds_map_find_value(async_load, "result");
		json = json_decode(res);
	  
		ds_list_copy(seeds,json[? "seedWords"]);
	  
		var num_words = ds_list_size(seeds);
	  
		for (var i=0; i<num_words; i++) {
			var w = instance_create_layer(128,i*40+32,"Instances",obj_word);
			w.word = seeds[| i];
		}
	}
	
	else if (async_load[? "status"] == -1) {
		show_message_async("Could not connect to server.");
	}
}

else if (async_load[? "id"] == fetch_related) {
	if (async_load[? "status"] == 0) {
		instance_destroy(obj_word);
		ds_list_empty(seeds);
		
		res = ds_map_find_value(async_load, "result");
		json = json_decode(res);
	  
		ds_list_copy(seeds,json[? "nextWords"]);
	  
		var num_words = ds_list_size(seeds);
	  
		for (var i=0; i<num_words; i++) {
			var w = instance_create_layer(128,i*40+32,"Instances",obj_word);
			w.word = seeds[| i];
		}
	}
	
	else if (async_load[? "status"] == -1) {
		show_message_async("Could not connect to server.");
	}
}