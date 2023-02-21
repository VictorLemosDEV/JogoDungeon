function reset_variables() {
	
	left = 0;
	right = 0;
	up = 0;
	down = 0;
	shift = 0;
	
	
}

function get_input(){
	
	if keyboard_check(ord("W")) up   =   1;
	if keyboard_check(ord("A")) left   =   1;
	if keyboard_check(ord("S")) down   =   1;
	if keyboard_check(ord("D")) right   =   1;
	if keyboard_check(vk_shift) {shift   =   1;}
	if mouse_check_button(mb_left) {
		holdLeftCounter++
		
		
		} else holdLeftCounter = 0;
		
	
	
	
	
}



function calc_movement()
{
	
	if (up || down || left || right) {
move_dir = point_direction(0,0, (right - left), (down - up))
Speed = walk_spd
} else {
	
	Speed = lerp(Speed,0,0.1)
	
}
	
	

	
	
	


hSpeed = lengthdir_x(Speed, move_dir)
vSpeed = lengthdir_y(Speed, move_dir)


//Horizontal


var _hSpeed = sign(hSpeed) // 1 ou - 1 ou 0


var _charDirection = (aim_dir < 90 or aim_dir > 270)

if _charDirection == 0 _charDirection = -1
if _charDirection == 0 _charDirection = 1
charDirection = _charDirection
aim_dir = point_direction(x,y,mouse_x,mouse_y)
bow.image_angle = aim_dir
	
	
}

function collision(){



//Horizontal


var _hSpeed = sign(hSpeed) // 1 ou - 1 ou 0
var _vSpeed = sign(vSpeed)


if object_index == o_player {
if holdLeftCounter >= 0.5 * room_speed {
	
	_hSpeed = _hSpeed / 2
	_vSpeed = _vSpeed / 2
	
	shift = 0;
	
}


if shift {
	
	_hSpeed *= 1.5
	_vSpeed *= 1.5
	
	
}

if !shift or dustCooldown == true {
	
	canGenerateDust = false
	
} else {
	
	canGenerateDust = true
	
	
}

	
}





repeat(abs(hSpeed))
{
	
	if (place_meeting(x + _hSpeed,y, o_collision)) {
		
		hSpeed = 0;
		
	} else {
	

x += _hSpeed
	
}

}




//Vertical




repeat(abs(vSpeed))
{
	
	if (place_meeting(x,y + _vSpeed, o_collision)) {
		
		vSpeed = 0;
		
	} else {
	

y += _vSpeed
	
}

}

}
	
function anim(){
	
	if (hSpeed != 0 or vSpeed != 0)
	{
		
		sprite_index = s_player_walk
		
		
		
	} else {
		
		sprite_index = s_player_idle
		
	}
	

}
	
function check_fire() {
	
	if mouse_check_button_released(mb_left){
		
		
		if can_fire {
			
			can_fire = false
			alarm[0] = fire_rate
			
			var _dir = point_direction(x,y,mouse_x,mouse_y)
			


			
			bow_dis = 5;
			
			var _inst = instance_create_layer(bow.x,bow.y,"Arrow",o_arrow)
			
			with (_inst) {
				
				speed = arrow_speed
				damage *= irandom_range(1,1.8)
				direction = _dir
				image_angle = _dir
				owner_id = other
				

			if other.maxedHold {
				boosted = true
				other.maxedHold = false
				
				
				
			}
				
			
			
		}
		
	}
	
	}
	
	
}