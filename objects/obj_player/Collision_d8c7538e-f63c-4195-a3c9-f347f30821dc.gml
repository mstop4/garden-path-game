var cur_word = other.word;

with (obj_base) {
	disabled = true;
}
with (obj_enemy_spawn) {	
	fetch_next = http_get_ex("/next/json?query=" + cur_word + "&limit=" + string(max_bases));
	is_fetching = true;
}

obj_MCP.text += other.word + " ";
instance_destroy(other);