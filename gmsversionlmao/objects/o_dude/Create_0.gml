switch global.playablechoice {
	case "sumireko":
		sprites = {
			normal: s_umireko,
			jump: s_umirekojump,
			miss: s_umirekomiss,
		}
		break;
	case "mokou":
		sprites = {
			normal: s_mokou,
			jump: s_mokoujump,
			miss: s_mokoumiss,
		}
		break;
	case "aya":
		sprites = {
			normal: s_aya,
			jump: s_ayajump,
			miss: s_ayamiss,
		}
		break;
}
//image_speed = .3;
hspd = 0;
x = 160;