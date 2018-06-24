var _other = argument[0];

if (_other.my_owner != team.enemy) {
	if (!disabled) {
		my_hp -= _other.strength;
		if (!active_spawn) {
			active_spawn = true;
			can_spawn = true;
			//dt_alarm[0] = obj_base_spawn.cur_esd_active;
		}
		
		if (my_hp <= 0) {
			var wi = instance_create_layer(x,y,"Instances",obj_word_item);
			wi.word = word;
			instance_destroy();
		}
	}
	
	instance_destroy(_other);
}