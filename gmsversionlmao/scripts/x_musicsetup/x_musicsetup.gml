#macro mus global.tracklist
global.tracklist = {};
global.playingmusic = new song();
global.playingmusicdata = 0;
global.playingmusictime = 0;


nu song("Descension", "descension", [m_descension], 161, "up there", "./maps/descension.sm");
nu song("null", "null", [m_null], 100, "there's nothing");
nu song("sumireko", "sumireko", [m_sumireko], 170, "almost as cool as clause", "./maps/sumireko.sm");
nu song("mokou", "mokou", [m_okou], 170, "ayayayaya", "./maps/mokou_race.sm");
nu song("aya", "aya", [m_aya], 170, "ayayayaya", "./maps/aya_dnb.sm");
nu song("title", "title", [m_title], 170, "ayayayaya", "./maps/aya_dnb.sm", 19);