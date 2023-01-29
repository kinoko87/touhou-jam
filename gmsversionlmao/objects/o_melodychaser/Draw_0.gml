var sprites = [s_rock1, s_tree, s_lope, s_rock2];
var target = new vec2(160, 200);
//o_dude.x = lerp(o_dude.x, target.x, .1);
o_dude.y = target.y-50;
iterate notes to {
	draw_set_color(c_white);
	var pos = new vec2(target.x+notes[i].pos*32*xmod, target.y+notes[i].pos*16*xmod)
	draw_sprite_ext(sprites[notes[i].lane], 0, pos.x, pos.y, .7, .7, 0, c_white, 1);
	draw_set_alpha(1-notes[i].pos/2);
	draw_circle_width(pos.x, pos.y, notes[i].pos*200, 5, true);
	draw_text(pos.x, pos.y, notes[i].pos);
	draw_set_alpha(1);
	draw_sprite_ext(s_arrows, notes[i].lane, pos.x, pos.y, .7, .7, 0, c_white, 1);
}
var present_time = audio_sound_get_track_position(global.playingmusicdata);
draw_text(5, HEIGHT-15, present_time);

draw_sprite_ext(s_judgement, judgement, WIDTH*.7, HEIGHT*.25, 2, 2, judgementshake, c_white, judgementalpha);
draw_set_alpha(judgementalpha);
draw_set_color(c_white);
draw_text_transformed(WIDTH*.8, HEIGHT*.25, combo, 3+combo/50, 3+combo/50, 0);
draw_set_alpha(1);