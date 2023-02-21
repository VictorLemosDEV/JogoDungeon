if PierceForce > 0 and last_target != other {
	
	// Se inimigo tiver blindagem maior que força de perfuração
	if other.PierceResistance > PierceForce and boosted{
		
		damage_entity(other,owner_id,damage*0.8,knockback_time)
		arrow_die()
		
		// Caso não tenha
	} else {
		
		if (other.hp > 0 and (other.hp - damage > 0)) {
		
		last_target = other;
		damage_entity(other,owner_id,damage,knockback_time)
		
		} else {
			
			damage_entity(other, owner_id, damage, knockback_time)
			other.deathEffectEnabled = true

			
		}
		
	}
	
	

// Subtrai a força de Perfuração
PierceForce -= other.PierceResistance
show_debug_message(PierceForce)
	
} else if  PierceForce <= 0{
	
	
	damage_entity(other,owner_id,damage,knockback_time)
	arrow_die()
	
} 