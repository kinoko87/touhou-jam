function array_random(array, randfunc=irandom) {
	return array[randfunc(array_length(array)-1)];
}