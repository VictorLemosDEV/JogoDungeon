
if (flashAlpha > 0) {
	shader_set(sh_flash)
draw_sprite_ext(sprite_index, image_index,x,y,charDirection,image_yscale,image_angle,flashColor,flashAlpha)

shader_reset()
} else {
	
	draw_sprite_ext(sprite_index, image_index,x,y,charDirection,image_yscale,image_angle,c_white,1)
	
}


	

	show_healthbar()
	