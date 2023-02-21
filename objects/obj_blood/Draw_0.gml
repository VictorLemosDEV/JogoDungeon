if parent_id.deathEffectEnabled == true {
	image_speed = 1
	
	draw_sprite_ext(sprite_index,image_index,parent_id.x,parent_id.y,-parent_id.charDirection,1,0,c_white,1)
}