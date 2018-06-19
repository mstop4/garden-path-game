draw_set_font(fnt_default);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_white);

switch (my_state) {

	case connectionWindow.prompt:
		draw_text(room_width/2,150,"This game requires an internet connection\nWould you like to connect to the server now?");
		break;
		
	case connectionWindow.connecting:
		draw_text(room_width/2,150,"Connecting to server...");
		break;
		
	case connectionWindow.error:
		draw_text(room_width/2,150,"Couldn't connect to the server.\nWould you like to try again?");
		break;
		
	case connectionWindow.success:
		draw_text(room_width/2,150,"Connection sucessful!");
		break;
}