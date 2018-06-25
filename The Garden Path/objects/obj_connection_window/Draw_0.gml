draw_set_font(fnt_default);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_white);

switch (my_state) {

	case connectionWindow.prompt:
		draw_outlined_text(room_width/2,150,"This game requires an internet connection\nWould you like to connect to the server now?",
						   1,1,0,c_white,c_black,1,1,8);
		break;
		
	case connectionWindow.connecting:
		draw_outlined_text(room_width/2,150,"Connecting to server...",
						   1,1,0,c_white,c_black,1,1,8);
		draw_sprite_ext(spr_player,0,room_width/2,200,1,1,spinner_angle,c_white,1);
		break;
		
	case connectionWindow.error:
		draw_outlined_text(room_width/2,150,"Couldn't connect to the server.\nWould you like to try again?",
						   1,1,0,c_white,c_black,1,1,8);
		break;
		
	case connectionWindow.success:
		draw_outlined_text(room_width/2,150,"Connection sucessful!",
						   1,1,0,c_white,c_black,1,1,8);
		break;
}