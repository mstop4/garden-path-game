if (other.my_owner != team.enemy) {
	instance_destroy(other);
	
	if (!disabled) {
		my_hp -= other.strength;
	
		if (my_hp <= 0) {
			var wi = instance_create_layer(x,y,"Instances",obj_word_item);
			wi.word = word;
			instance_destroy();
		}
	}
}