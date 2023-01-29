if x < 160 {
	hspd++;
} else if x > 160 {
	hspd--;
} else hspd /= 3;
hspd = lerp(hspd, 0, .1);
x += hspd;