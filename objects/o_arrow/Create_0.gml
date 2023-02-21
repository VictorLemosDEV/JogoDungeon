damage = 5;
default_range = 200;
range = default_range
boosted_range = default_range * 2
owner_id = noone
knockback_time = 5;

last_target = noone

fire_effect = instance_create_layer(x,y,"Effects",o_fire_effect)
fire_effect.parent_id = id

function arrow_die(){
	///@desc What happens when the arrow is destroyed


	
	speed = 0
	instance_destroy()
	
	
	
}