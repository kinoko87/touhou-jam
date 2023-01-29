var sprites = [s_rock1, s_tree, s_lope, s_rock2];
var target = new vec2(100, 100);
iterate notes to {
	draw_set_color(notes[i].color);
	draw_sprite(sprites[notes[i].lane], 0, target.x+notes[i].pos*32*xmod, target.y+notes[i].pos*16*xmod);
	draw_text(MIDWID-30+notes[i].lane*20, notes[i].pos*32*xmod, notes[i].pos);
}
var present_time = audio_sound_get_track_position(global.playingmusicdata);
draw_text(5, HEIGHT-15, present_time);