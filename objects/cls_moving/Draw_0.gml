for (var i=-1; i<=1; i++) {
	for (var j=-1; j<=1; j++) {
		var cur_x = x+i*room_width;
		var cur_y = y+j*room_height;
		
		draw_sprite_ext(sprite_index,image_index,cur_x,cur_y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	}
}
