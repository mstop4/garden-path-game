var cur_word = other.word;

with (obj_base) {
	disabled = true;
}
with (obj_enemy_spawn) {	
	fetch_next = http_get_ex("/next/json?query=" + cur_word + "&limit=" + string(num_next));
	is_fetching = true;
}

obj_MCP.text += other.word + " ";

with (obj_word_item)
	instance_destroy();