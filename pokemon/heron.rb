require_relative "mascot"

class Heron < Mascot
  BASE_HIT_POINTS = 75
  BASE_ATTACK_STRENGTH = 87
  BASE_DEFENSE_STRENGTH = 63

  ATTACK_TYPES_FLYING_TYPES_SUSCEPTIBLE_TO = [:water]
  ATTACK_TYPES_FLYING_TYPES_RESISTANT_TO = [:flying]
  ATTACK_TYPES_FLYING_TYPES_IMMUNE_TO = [:ground]

  FLYING_TYPE_ATTACKS = [:wing_attack, :air_slash]
  CUSTOM_ATTACKS = [:gust, :air_cutter]

  def attacks
    FLYING_TYPE_ATTACKS + CUSTOM_ATTACKS
  end

  def base_attack_strength
    BASE_ATTACK_STRENGTH
  end

  def base_defense_strength
    BASE_DEFENSE_STRENGTH
  end

  def base_hit_point_value
    BASE_HIT_POINTS
  end

  def defense_strength
    calculate_strength(base_defense_strength)
  end

  def fainted?
    health < 1
  end

  def full_health?
    health == hit_points
  end

  def gain_experience(additional_points)
    self.experience = experience + additional_points
  end

  def hit_points
    calculation_base(base_hit_point_value) + minimum_hit_points + level
  end

  def immune_to?(attack_type)
    ATTACK_TYPES_FLYING_TYPES_IMMUNE_TO.include?(attack_type)
  end

  def increase_health(health_points)
    set_health(health + health_points)
  end

  def knows_attack?(attack_name)
    attacks.include?(attack_name)
  end

  def level
    Math.cbrt(experience).to_i
  end

  def receive_damage(damage_amount)
    set_health(health - damage_amount)
  end

  def recover
    self.health = hit_points
  end

  def resistant_to?(attack_type)
    ATTACK_TYPES_FLYING_TYPES_RESISTANT_TO.include?(attack_type)
  end

  def susceptible_to?(attack_type)
    ATTACK_TYPES_FLYING_TYPES_SUSCEPTIBLE_TO.include?(attack_type)
  end

  def type
    :flying
  end

  private
  attr_writer :experience, :health

  def calculate_strength(base)
    calculation_base(base) + minimum_strength
  end

  def calculation_base(base)
    base * 2 * level / 100
  end

  def minimum_strength
    MINIMUM_ATTACK_OR_DEFENSE_STRENGTH
  end

  def minimum_hit_points
    MINIMUM_HIT_POINTS
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