function draw_polygon(x, y, startang, sides, diameter, width, addang=360) {
	if(os_browser != browser_not_a_browser)
		return; //html5 crashes here lol
	var boul;
	var dudes = [];
	var xs = [];
	var ys = [];
	var percents = [];
	var i, dude;
	var myit = 0;
	var lineang = 360/sides;
	var done = false;
	for (i=startang; i<=startang+360; i+=lineang) {
		if i > startang+addang {
			percents[myit] = (addang%lineang)/(lineang);
			done = true;
		} else {
			percents[myit] = 1;
		}
		dude = distabs(i, diameter/2);
		xs[myit] = x+dude.x;
		ys[myit] = y+dude.y;
		myit++;
		if done break;
	}
	dudes = draw_lines(xs, ys, percents, width);
}

function draw_lines(xs, ys, percents, width) {
	var i;
	for (i=1; i<array_length(xs); i++) {
		var guyx = xs[i]-xs[i-1];
		var guyy = ys[i]-ys[i-1];
		guyx *= percents[i];
		guyy *= percents[i];
		draw_stroke_width(xs[i-1], ys[i-1], xs[i-1]+guyx, ys[i-1]+guyy, width);
		//draw_text(xs[i-1], ys[i-1], percents[i]);
	}
}