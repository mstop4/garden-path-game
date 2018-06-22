if (!is_fetching && !ds_list_empty(word_list) && instance_number(obj_base) < max_bases) {
	var b = instance_create_layer(0,0,"Instances",obj_base);
	b.word = word_list[| list_pos];
	list_pos = (list_pos + 1) mod list_size;
	
	with (b) {
		while (place_meeting(x,y,obj_base) || place_meeting(x,y,obj_player)) {
			x = irandom_range(0,room_width);
			y = irandom_range(0,room_height);
		}
	}
}
	