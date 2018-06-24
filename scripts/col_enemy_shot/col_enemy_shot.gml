var _other = argument[0];

if (_other.my_owner != team.enemy) {
	instance_destroy();
	instance_destroy(_other);
}