/*iterate choices to {
	draw_text(100+i*300, 200, choices[i] + (pos == i ? "<" : ""));
}*/draw_set_color(c_black);

draw_text(200, 160, "Pick your rider!");

draw_set_alpha(!pos+.4);
draw_sprite(s_sumirekotalk, 3, WIDTH*.25, MIDHEI);
draw_set_alpha((pos==1)+.4);
draw_sprite(s_mokoutalk, 3, WIDTH*.5, MIDHEI);
draw_set_alpha((pos==2)+.4);
draw_sprite(s_ayatalk, 6, WIDTH*.75, MIDHEI);
draw_set_alpha(1);