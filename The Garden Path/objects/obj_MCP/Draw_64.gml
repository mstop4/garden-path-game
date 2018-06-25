draw_set_font(fnt_default);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_outlined_text(16,16,formatted_text,1,1,0,c_white,c_black,1,1,8);

if (is_paused) {
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0,0,640,360,false);
	draw_set_alpha(1);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_outlined_text(320,180,"Going to Twitter in your browser...\nPress T again to continue when you come back.",1,1,0,c_white,c_black,1,1,8);
}