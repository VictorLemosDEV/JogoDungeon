event_inherited()

switch (state) {
	
	case states.IDLE:

		calc_knockback_movement()
		calc_entity_movement()
		check_for_player()
		if path_index != -1 state = states.MOVE
		enemy_anim()
	break;
	
	case states.MOVE:

	
	
	calc_knockback_movement()
		calc_entity_movement()
		check_for_player()
		check_facing()
		if path_index == -1 state = states.IDLE
		enemy_anim()
	break;
	
	case states.ATTACK:
			damage_entity(o_player,id,5,2)
			check_facing()
			enemy_anim()
			check_for_player()
	
	break;
	
	case states.DEAD:
			calc_entity_movement()
			check_facing()
			enemy_anim()
			
	
	break;
	
	case states.KNOCKBACK:
	calc_knockback_movement()
			
	
	
	break;
	
	
}

