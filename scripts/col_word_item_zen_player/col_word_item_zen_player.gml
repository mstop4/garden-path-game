if (!disabled) {
	var _self = id;

	with (obj_word_item_zen) {
		disabled = true;
	}
	
	with (obj_word_item_spawn) {	
		fetch_next = http_get_ex("/next/json?query=" + _self.word + "&limit=" + string(num_next));
		is_fetching = true;
	}

	if (obj_MCP.text == "")
		obj_MCP.text += word;
	else
		obj_MCP.text += " " + word;
	obj_MCP.formatted_text = dialogue_line_breaker(obj_MCP.text + " ",608,fnt_default);

	instance_destroy();
	audio_play_sound(snd_collect_word,50,false);
}