draw_set_font(fnt_default);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_text(16,16,text);

draw_text(16,32,string(bg_disp_x) + ", " + string(bg_disp_y));