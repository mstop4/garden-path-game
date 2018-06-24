if (disabled) draw_set_alpha(0.5);
else draw_set_alpha(1);

draw_set_font(fnt_small);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_white);

for (var i=-1; i<=1; i++) {
	for (var j=-1; j<=1; j++) {
		var cur_x = x+i*room_width;
		var cur_y = y+j*room_height;
		
		draw_sprite(sprite_index,image_index,cur_x,cur_y);
		draw_text(cur_x,cur_y,word);
	}
}
draw_text(x,y-32,string(dt_alarm[0]));

draw_set_alpha(1);