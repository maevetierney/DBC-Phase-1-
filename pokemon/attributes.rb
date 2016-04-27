module Attributes

	MINIMUM_HIT_POINTS = 10
	MINIMUM_ATTACK_OR_DEFENSE_STRENGTH = 5

	def attack_strength
    	calculate_strength(base_attack_strength)
  	end
  	
  	def fainted?
    	health < 1
 	end
end 