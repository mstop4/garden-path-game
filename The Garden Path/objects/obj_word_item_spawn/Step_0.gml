if (!is_fetching && !ds_list_empty(word_list) && instance_number(obj_word_item_zen) < max_bases) {
	var b = instance_create_layer(0,0,"Instances",obj_word_item_zen);
	b.word = word_list[| list_pos];
	list_pos = (list_pos + 1) mod list_size;
	
	with (b) {
		do {
		x = irandom_range(0,room_width);
		y = irandom_range(0,room_height);
		} until (!place_meeting(x,y,obj_word_item_zen) && !place_meeting(x,y,obj_player))
	}
}
	