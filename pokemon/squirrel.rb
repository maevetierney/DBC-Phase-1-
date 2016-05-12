require_relative "mascot"


require_relative "groundtype"

class Squirrel < Mascot

  include GroundType
  BASE_ATTACK_STRENGTH = 50
  BASE_DEFENSE_STRENGTH = 95


  CUSTOM_ATTACKS = [:tail_whip, :thrash]

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

  def calculate_strength(value)
    calculation_base(value) + minimum_strength
  end

  def calculation_base(value)
    value * 2 * level / 100
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