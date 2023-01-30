function msglang(english, whatever=[txt()], whatever2=[txt()], language=global.lang) {
	return array_insert_array_parse(argument[language-1]);
	/*switch language {
		case LANGUAGE.ENGLISH:
			return array_insert_array_parse(english);
			break;
		case LANGUAGE.JAPANESE:
			return array_insert_array_parse(japanese);
			break;
		default:
			return [txt()];
			break;
	}*/
}


enum LANGUAGE {
	NULL,
	ENGLISH,
	PORTUGUESE,
	SPANISH,
	JAPANESE,
	BREAD,
}