require_relative "attributes"

module GroundType
	include Attributes

	BASE_HIT_POINTS = 50

  	ATTACK_TYPES_GROUND_TYPES_SUSCEPTIBLE_TO = [:flying]

  	ATTACK_TYPES_GROUND_TYPES_RESISTANT_TO = [:ground]

	ATTACK_TYPES_GROUND_TYPES_IMMUNE_TO = [:water]

  	GROUND_TYPE_ATTACKS = [:sand_attack, :earthquake]

	def base_hit_point_value
		BASE_HIT_POINTS
	end

 	def hit_points
   	 calculation_base(base_hit_point_value) + minimum_hit_points + level
	end

    def full_health?
        health == hit_points
    end

    def immune_to?(attack_type)
    	ATTACK_TYPES_GROUND_TYPES_IMMUNE_TO.include?(attack_type)
    end

    def knows_attack?(attack_name)
    attacks.include?(attack_name)
	end

	def level
        Math.cbrt(experience).to_i
    end

    def recover
    	self.health = hit_points
  	end

  	def resistant_to?(attack_type)
    ATTACK_TYPES_GROUND_TYPES_RESISTANT_TO.include?(attack_type)
    end

    def susceptible_to?(attack_type)
    ATTACK_TYPES_GROUND_TYPES_SUSCEPTIBLE_TO.include?(attack_type)
    end

    def type
		:ground
	end
	
	def minimum_strength
		MINIMUM_ATTACK_OR_DEFENSE_STRENGTH
	end

	private:minimum_strength	

	def minimum_hit_points
   		MINIMUM_HIT_POINTS
 	end

 	private:minimum_hit_points
end 