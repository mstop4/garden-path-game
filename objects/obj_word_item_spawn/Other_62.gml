/*print("Stuff");
print("id: " + string(async_load[? "id"]));
print("status: " + string(async_load[? "status"]));
print("result: " + async_load[? "result"]);
print("http status: " + string(async_load[? "http_status"]));*/

if (async_load[? "id"] == fetch_seeds) {
	if (async_load[? "status"] == 0) {
		ds_list_clear(word_list);
		
		res = ds_map_find_value(async_load, "result");
		json = json_decode(res);
	  
		if (is_undefined(json[? "status"])) {
			print("Can't connect with server");
			with (obj_base) disabled = false;
		}
		else if (json[? "status"] == "error") {
			print("Connection error: " + json[? "message"]);
			with (obj_base) disabled = false;
		}
		else if (json[? "status"] == "ok") {
			ds_list_copy(word_list,json[? "seedWords"]);
			list_pos = 0;
			list_size = ds_list_size(word_list);
		}
		
		is_fetching = false;
	}
	
	else if (async_load[? "status"] == -1) {
		show_message_async("Could not connect to server.");
	}
}

else if (async_load[? "id"] == fetch_next) {
	if (async_load[? "status"] == 0) {
		ds_list_clear(word_list);
		
		res = ds_map_find_value(async_load, "result");
		json = json_decode(res);
		
		if (is_undefined(json[? "status"])) {
			print("Can't connect with server");
			with (obj_base) disabled = false;
		}
		else if (json[? "status"] == "error") {
			print("Connection error: " + json[? "message"]);
			with (obj_base) disabled = false;
		}
		else if (json[? "status"] == "ok") {
			ds_list_copy(word_list,json[? "nextWords"]);
	  		list_pos = 0;
			list_size = ds_list_size(word_list);
			
			// update enemies
			update_words(obj_word_item_zen,id);
		}
		
		is_fetching = false;
	}
	
	else if (async_load[? "status"] == -1) {
		show_message_async("Could not connect to server.");
	}
}