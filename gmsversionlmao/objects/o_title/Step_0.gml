count++;
c_inputupdate();
c_input();
pos = cycle(pos+down.hit-up.hit, array_length(choices));
if select.hit {
	global.lang = pos+1;
	room_goto(snowfall);
}