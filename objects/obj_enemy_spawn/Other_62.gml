/*print("Stuff");
print("id: " + string(async_load[? "id"]));
print("status: " + string(async_load[? "status"]));
print("result: " + async_load[? "result"]);
print("http status: " + string(async_load[? "http_status"]));*/

if (async_load[? "id"] == fetch_seeds) {
	if (async_load[? "status"] == 0) {
		ds_list_empty(word_list);
		
		res = ds_map_find_value(async_load, "result");
		json = json_decode(res);
	  
		ds_list_copy(word_list,json[? "seedWords"]);
	  
		list_pos = 0;
		list_size = ds_list_size(word_list);
		is_fetching = false;
	}
	
	else if (async_load[? "status"] == -1) {
		show_message_async("Could not connect to server.");
	}
}

else if (async_load[? "id"] == fetch_next) {
	if (async_load[? "status"] == 0) {
		ds_list_empty(word_list);
		
		res = ds_map_find_value(async_load, "result");
		json = json_decode(res);
	  
		ds_list_copy(word_list,json[? "nextWords"]);
	  
		list_pos = 0;
		list_size = ds_list_size(word_list);
	  
		// update enemies
		update_words(obj_base,id);
		
		is_fetching = false;
	}
	
	else if (async_load[? "status"] == -1) {
		show_message_async("Could not connect to server.");
	}
}