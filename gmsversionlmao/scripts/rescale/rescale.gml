function rescale(instance, scale) {
	instance.image_xscale = scale;
	instance.image_yscale = scale;
	instance.scale = scale;
	audio_sound_pitch(instance.gravity_direction, 1/scale);
}