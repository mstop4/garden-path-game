var _self = id;

with (obj_base) {
	disabled = true;
}
with (obj_enemy_spawn) {	
	fetch_next = http_get_ex("/next/json?query=" + _self.word + "&limit=" + string(num_next));
	is_fetching = true;
}

obj_MCP.text += word + " ";

with (obj_word_item)
	instance_destroy();