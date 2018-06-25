var _color;
if (disabled) _color = c_gray;
else _color = c_white;

draw_set_font(fnt_small);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_white);

for (var i=-1; i<=1; i++) {
	for (var j=-1; j<=1; j++) {
		var cur_x = x+i*room_width;
		var cur_y = y+j*room_height;
		
		//draw_sprite_ext(sprite_index,image_index,cur_x,cur_y,image_xscale,image_yscale,image_angle,image_blend,_alpha);
		draw_outlined_text(cur_x,cur_y,word,1,1,0,_color,c_black,1,1,8);
	}
}