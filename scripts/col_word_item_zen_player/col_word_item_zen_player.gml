if (!disabled) {
	var _self = id;

	with (obj_word_item_zen) {
		disabled = true;
	}
	
	with (obj_word_item_spawn) {	
		fetch_next = http_get_ex("/next/json?query=" + _self.word + "&limit=" + string(num_next));
		is_fetching = true;
	}

	obj_MCP.text += word + " ";

	instance_destroy();
}