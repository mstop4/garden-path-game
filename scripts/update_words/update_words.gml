/// @func update_words(enemy_type, spawner_id)
/// @arg enemy_type
/// @arg spawner_id

var _enemy_type = argument[0];
var _spawner_id = argument[1];

with (_enemy_type) {
	if (_spawner_id.list_size == 0)
		word = "undefined";
	else {
		word = _spawner_id.word_list[| _spawner_id.list_pos];
		_spawner_id.list_pos = (_spawner_id.list_pos + 1) mod _spawner_id.list_size;
	}
	
	disabled = false;
}