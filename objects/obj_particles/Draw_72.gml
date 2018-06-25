for (var i=-1; i<=1; i++) {
	for (var j=-1; j<=1; j++) {
		part_system_position(ps,room_width*i,room_height*j);
		part_system_drawit(ps);
	}
}