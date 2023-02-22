
function calc_entity_movement(){
	//@desc moves enemy and apply drag
	
	x += hsp * !global.pause
	y += vsp * !global.pause
	
	create_dust()
	
	hsp *= global.drag;
	vsp *= global.drag;
	
	check_if_stopped();
	
	
	
}

function calc_knockback_movement(){
	
	
	x+= hsp * !global.pause
	y+= vsp * !global.pause
	
	hsp *= 0.91
	vsp *= 0.91
	
	if knockback_time-- <= 0 and state == states.KNOCKBACK {
		
		state = states.MOVE
		
		
		
	}
	
}



function check_facing(){
	
	if knockback_time <= 0 {
	var _facing = sign(x-xp)
	
	if _facing != 0 charDirection = _facing
	
	}
}

function check_for_player(){

var _dis = distance_to_object(o_player)
// Deveríamos calcular o caminho?

if (_dis <= alert_dis or alert) and _dis > attack_dis{
	
	state = states.MOVE
	alert = true;



if (calc_path_timer-- <= 0){
	
	calc_path_timer = calc_path_delay
	
	if x == xp and y == yp var _type = 0 else var _type = 1;;
	
var _found_player = mp_grid_path(global.mp_grid, path,x,y, o_player.x,o_player.y, _type) * !global.pause

if _found_player {
	
	path_start(path,move_spd,path_action_stop,false)
	
}
}

} else {
	
	if _dis <= attack_dis {
		state = states.ATTACK
		
		path_end()
		
		
	}
	
	
}

}


function enemy_anim(){
	
	if (global.pause) {exit;}
	
	switch (state) {
	
	case states.IDLE:
		sprite_index = s_idle
		show_hurt()
	
	break;
	
	case states.MOVE:
		sprite_index = s_walk
		show_hurt()
	break;
	
	case states.ATTACK:
	
	break
	
	case states.KNOCKBACK:
	
		show_hurt()
	
	break;
	
	case states.DEAD:
	
	break;
	

	
	
}

depth = -bbox_bottom

	xp = x;
	yp = y;

}
	
function show_hurt() {
	
	if knockback_time-- > 0 {image_xscale = 3;} else {image_xscale = 1; }
	
	
}
