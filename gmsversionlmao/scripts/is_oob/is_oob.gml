/*function is_oob(variation=sprite_width/2, horizontal=true, vertical=true) {
	return ((!(x==clamp(x, 0-variation, global.gw+variation)) && vertical) && (!(y==clamp(y, 0-variation, global.gh+variation)) && vertical));
}*/

function is_oob_return(variation=sprite_width/2, horizontal=true, vertical=true) {
	var xdist = (x-clamp(x, 0-variation, global.gw+variation))*horizontal;
	var ydist = (y-clamp(y, 0-variation, global.gh+variation))*vertical;
	return abs(xdist)+abs(ydist);
}

function is_oob(variation=sprite_width/2, horizontal=true, vertical=true) {
	if horizontal && vertical {
		return !(x=clamp(x, 0-variation, global.gw+variation) && y=clamp(y, 0-variation, global.gh+variation));
	} else if horizontal {
		return !(x=clamp(x, 0-variation, global.gw+variation))
	} else if vertical {
		return !(y=clamp(y, 0-variation, global.gh+variation))
	} else {
		log("????????????");
		return true;
	}
}