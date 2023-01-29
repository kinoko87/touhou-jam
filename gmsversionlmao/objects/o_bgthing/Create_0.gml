sprites = [tree1, tree2, tree3, fence, cloud1, cloud2, cloud3];
sprite_index = array_random(sprites);
if sprite_index == cloud1 || sprite_index == cloud2 || sprite_index == cloud3 {
	y -= 200;
}
if sprite_index != fence image_xscale = -1;