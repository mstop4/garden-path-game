if (other.my_owner != team.enemy) {
	instance_destroy(other);
	
	if (!disabled) {
		my_hp -= other.strength;
	
		if (my_hp <= 0) {
			instance_destroy();
			with (obj_base) {
				disabled = true;
			}
			with (obj_enemy_spawn) {	
				fetch_next = http_get_ex("/next/json?query=" + other.word + "&limit=" + string(max_bases));
				is_fetching = true;
			}

			obj_MCP.text += word + " ";
		}
	}
}