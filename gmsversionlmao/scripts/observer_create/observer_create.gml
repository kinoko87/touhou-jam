function observer_create(obj, overwrite=false) {
	var chump = instance_create(0, 0, obj);
	with chump only_one(overwrite);
	return obj;
}