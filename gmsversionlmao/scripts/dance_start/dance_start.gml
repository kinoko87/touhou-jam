function dance_start(song_, submap) {
	var chump = observer_create(o_melodychaser);
	log("dance starting");
	music_set(mus.null);
	music_set(song_);
	chump.mysong = song_;
}