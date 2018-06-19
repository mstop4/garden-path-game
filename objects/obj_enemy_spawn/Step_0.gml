if (!is_fetching && !ds_list_empty(word_list) && instance_number(obj_base) < max_bases) {
	var b = instance_create_layer(irandom_range(0,room_width),irandom_range(0,room_height),"Instances",obj_base);
	b.word = word_list[| list_pos];
	list_pos++;
}
	