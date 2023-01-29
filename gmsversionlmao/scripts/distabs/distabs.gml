function distabs(dir, distance) {
	/*if(os_browser != browser_not_a_browser){
		var dist = {
			x: (dsin(dir+90)%360)*distance,
			y: (dcos(dir+90)%360)*distance,
			otherx : (dsin(dir+90)%360)*distance,
			othery: (dcos(dir+90)%360)*distance,
		}
		dist = distabs2(dir,distance,dist);
		return dist;
	}*/
	var dist = {
		x: (dsin(dir+90)%360)*distance,
		y: (dcos(dir+90)%360)*distance,
	}
	return dist;
}

function distabs2(dir,distance,x,y){ //the stupidest shit
	x.x = x.otherx;//honestly so sorry
	x.y = x.othery;
	return x;
}