/// @func update_words(enemy_type, spawner_id)
/// @arg enemy_type
/// @arg spawner_id

with (argument[0]) {
	if (argument[1].list_size == 0)
		word = "undefined";
	else {
		word = argument[1].word_list[| argument[1].list_pos];
		argument[1].list_pos = (argument[1].list_pos + 1) mod argument[1].list_size;
	}
	
	disabled = false;
}