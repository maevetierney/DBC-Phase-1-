require_relative "groundtype"
require_relative "mascot"

class Bison < Mascot

    include GroundType

    BASE_ATTACK_STRENGTH = 72
    BASE_DEFENSE_STRENGTH = 35

    CUSTOM_ATTACKS = [:bulldoze, :thrash]

    def attacks
    GROUND_TYPE_ATTACKS + CUSTOM_ATTACKS
    end


    def base_attack_strength
        BASE_ATTACK_STRENGTH
    end

    def base_defense_strength
        BASE_DEFENSE_STRENGTH
    end


    def defense_strength
        calculate_strength(base_defense_strength)
    end


    def gain_experience(additional_points)
        self.experience = experience + additional_points
    end

    def increase_health(health_points)
        set_health(health + health_points)
    end


    def receive_damage(damage_amount)
        set_health(health - damage_amount)
    end

    private
    attr_writer :experience, :health

    def calculate_strength(base)
        calculation_base(base) + minimum_strength
    end

    def calculation_base(base)
        base * 2 * level / 100
    end


    def set_health(new_health)
        if new_health < 0
        self.health = 0
        elsif new_health > hit_points
        self.health = hit_points
        else
        self.health = new_health
        end
    end
end