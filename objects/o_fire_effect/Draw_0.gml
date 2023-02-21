if instance_exists(parent_id) {
	
	draw_sprite_ext(sprite_index,image_index,parent_id.x,parent_id.y,parent_id.image_xscale,parent_id.image_yscale,parent_id.image_angle,c_white,image_alpha)
} else {
	
	instance_destroy()
	
}