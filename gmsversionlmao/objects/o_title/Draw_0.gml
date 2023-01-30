draw_set_color(c_black);
//draw_text(10, 10, count);
draw_set_halign(fa_middle);
iterate choices to {
	draw_text_transformed_color(400, 460+i*70, (pos == i ? ">" : "") + choices[i] + (pos == i ? "<" : ""), 2, 2, 0,c_white,c_white,c_white,c_white,1);
}
draw_set_font(ft_secondfont);
draw_set_halign(fa_left);
