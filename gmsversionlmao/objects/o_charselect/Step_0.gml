c_input();
pos = cycle(pos+right.hit-left.hit, array_length(choices));
if select.hit {
	global.playablechoice = choices[pos];
	switch pos {
		case 0:
			textbox_create(txt_sumirekotutorial);
			break;
		case 1:
		case 2:
			textbox_create(txt_ayaymokoututorial);
			break;
	}

	kys;
}