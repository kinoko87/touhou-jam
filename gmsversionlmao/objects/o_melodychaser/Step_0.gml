var target = new vec2(160, 200);
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
	if abs(notes[i].pos) < timingwindow*2 {
		if inputs[notes[i].lane] {
			if notes[i].pos > timingwindow {
				judgement = 2;
				judgementalpha = 1;
				combo = 0;
				o_dude.sprite_index = o_dude.sprites.miss;
				o_dude.image_index = 0;
			} else if notes[i].pos > timingwindow/2 {
				judgement = 1;
				judgementshake = notes[i].pos*30;
				judgementalpha = 1;
				combo++;
				if notes[i].lane == 2 {
					o_dude.sprite_index = o_dude.sprites.jump;
				} else {
					o_dude.sprite_index = o_dude.sprites.normal;
					o_dude.hspd = 8*-ineg(notes[i].lane);
					//o_dude.x = target.x;
				}
				o_dude.image_index = 0;
			} else {
				judgement = 0;
				judgementshake = notes[i].pos*30;
				judgementalpha = 1;
				combo++;
				if notes[i].lane == 2 {
					o_dude.sprite_index = o_dude.sprites.jump;
				} else {
					o_dude.sprite_index = o_dude.sprites.normal;
					o_dude.hspd = 8*-ineg(notes[i].lane);
					//o_dude.x = target.x;
				}
				o_dude.image_index = 0;
			}
			inputs[notes[i].lane] = false;
			beatpulse(notes[i].lane, 1);
			array_delete(notes, i, 1);
			i--;
			continue;
		}
	}
	if notes[i].pos < -timingwindow {
		beatpulse(notes[i].lane, 1);
		array_delete(notes, i, 1);
		i--;
		judgement = 2;
		judgementalpha = 1;
		combo = 0;
		o_dude.sprite_index = o_dude.sprites.miss;
		o_dude.image_index = 0;
	}
}

judgementalpha -= .05;

count++;

if ncm(60-irandom(30)) {
	instance_create(WIDTH+140, HEIGHT-110, o_bgthing);
}



/*if special.hold && left.hit {
	audio_sound_set_track_position(global.playingmusicdata, audio_sound_get_track_position(global.playingmusicdata)-5);
	created = false;
}
if special.hold && right.hit {
	audio_sound_set_track_position(global.playingmusicdata, audio_sound_get_track_position(global.playingmusicdata)+5);
}*/