if (disabled) draw_set_alpha(0.5);
else draw_set_alpha(1);

draw_sprite(sprite_index,image_index,x,y);
draw_set_font(fnt_default);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_white);
draw_text(x,y,word);

draw_set_alpha(1);