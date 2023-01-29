iterate choices to {
	draw_text(100+i*300, 200, choices[i] + (pos == i ? "<" : ""));
}