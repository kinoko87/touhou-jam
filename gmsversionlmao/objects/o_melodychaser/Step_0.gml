var present_time = audio_sound_get_track_position(global.playingmusicdata);
global.beatstates = array_create(4);
global.beatbool = false;
c_input();
var inputs = [left.hit, down.hit, up.hit, right.hit];
if !created {
	notes = sm_parse(mysong.map);
	log(notes[0].time);
	//log(notes[7].time);
	created = true;
}

//log(notes[0].pos);
iterate notes to {
	notes[i].pos = notes[i].time-present_time;
	if abs(notes[i].pos) < timingwindow {
		
	}
	if notes[i].pos < 0 {
		beatpulse(notes[i].lane, 1);
		array_delete(notes, i, 1);
		i--;
	}
}



/*if special.hold && left.hit {
	audio_sound_set_track_position(global.playingmusicdata, audio_sound_get_track_position(global.playingmusicdata)-5);
	created = false;
}
if special.hold && right.hit {
	audio_sound_set_track_position(global.playingmusicdata, audio_sound_get_track_position(global.playingmusicdata)+5);
}*/