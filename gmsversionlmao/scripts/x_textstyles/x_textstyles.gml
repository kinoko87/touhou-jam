global.textstyles = {};
global.gw = 1280;
global.gh = 720;
global.textstyles.adv = {
	x: MIDWID,
	y: 480,
	width: 1000,
	height: 160,
	spriteposy: 150,
	namepos: new vec2(147, 250-24),
	sprite: s_textbox,
	type: st_textadv,
	font: ft_thefont,
}

global.textstyles.nvl = {
	x: 320,
	y: 24,
	width: 400,
	height: 284,
	spriteposy: 150,
	namepos: new vec2(-216, 7),
	sprite: s_null,
	type: st_textnvl,
	font: ft_thefont,
}