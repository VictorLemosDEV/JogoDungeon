function damage_entity(_tid, _sid, _damage ,_time){
	///@desc damage the target, and return the dead status
	///@arg tid     real     target_id
	///@arg sid     real     source_id
	///@arg damage  real     how much damage to deal
	///@arg time    real     how long to knockback the target
	
	with (_tid) {

		
		if DamageCooldown == false {
			
		DamageCooldown = true
		alarm[10] = DamageTimer
		hp -= _damage
		
		
		flashAlpha = 1
		var _dead = is_dead()
		path_end()
		
		if _dead var _dis = 5 else var _dis = 3;
		
		var _dir = point_direction(_sid.x,_sid.y,x,y)
		hsp = lengthdir_x(_dis, _dir)
		vsp = lengthdir_y(_dis, _dir)
		calc_path_delay = _time
		alert = true;
		knockback_time = _time
		if !_dead state = states.KNOCKBACK
		

		
		return _dead;
		
	}
}
	

}

function is_dead(){
///@desc check if the Instance running this is dead	
	
	if state != states.DEAD{
		
		if hp <= 0{
			
			
			
			state = states.DEAD
			hp = 0;
			image_index = 0
			switch (object_index) {
				
				
				default:
				
					//instance_destroy()
				
				break;
				
				case o_player:
				
					room_restart()
				
				break;
				
			}
			
			return true;
		}
		
	} else return true;
	
	
}
	
function check_health_changed() {
	
	if previous_hp != hp {
		
		previous_hp = hp
		return true
		
		
	} else {
		
		return false
		
	}
	
	
}

function check_if_stopped(){
	
	if abs(hsp) < 0.1 hsp = 0
	if abs(vsp) < 0.1 vsp = 0
	
	
}
	
function show_healthbar() {
	///@desc show healthbar above entities
	
	if hp != hp_max and hp > 0 {
		
		draw_healthbar(x-7,y-16,x+7,y-14,hp/hp_max*100,$003300,$3232FF,$00B200,0,1,1)
		
		
	}
	
}


function create_dust(){
	
	
	
	if canGenerateDust and dustCooldown == false{
		if (hSpeed != 0 or vSpeed != 0) or (hsp != 0 or vsp != 0) {
		canGenerateDust = false
		dustCooldown = true
		alarm[11] = particleCooldown

		instance_create_layer(x,bbox_bottom,"Effects",obj_dust)
			
			
	
		}
	
	} 
}