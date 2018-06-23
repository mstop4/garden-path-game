var _other = argument[0];

if (_other.my_owner != team.enemy) {
	if (!disabled) {
		my_hp -= _other.strength;
	
		if (my_hp <= 0) {
			var wi = instance_create_layer(x,y,"Instances",obj_word_item);
			wi.word = word;
			instance_destroy();
		}
	}
	
	instance_destroy(_other);
}