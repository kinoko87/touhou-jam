function txt_ayaymokoututorial() {
	msg = msglang([
	
	txt("you already know who it is"),
	txt("layin it down youkai style"),
	
	],[
	
	txt(""),
	
	]);
	
	endevent = function() {
		if global.playablechoice == "mokou" {
			dance_start(mus.mokou, 0);
		} else {
			dance_start(mus.aya, 0);
		}
	};
}