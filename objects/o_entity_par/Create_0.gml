state = states.IDLE

flashAlpha = 0
flashColor = c_white

hsp = 0
vsp = 0
hSpeed = 0;
vSpeed = 0;

xp = x;
yp = y;
charDirection = 1;
knockback_time = 0;

		bloodEffect = instance_create_layer(x,y,"Effects",obj_blood)
		with(bloodEffect) {
			
			parent_id = other.id
		}