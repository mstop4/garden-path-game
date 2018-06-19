if (!disabled) {
	with (obj_base) {
		disabled = true;
	}
	with (obj_enemy_spawn) {	
		fetch_next = http_get_ex("/next/json?query=" + other.word + "&limit=" + string(max_bases));
		is_fetching = true;
	}

	obj_display.text += word + " ";
	
	instance_destroy();
}