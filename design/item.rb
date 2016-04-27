require_relative 'bridge.rb'
module Item

  include Bridge

  def damaged?
    @damaged
  end

  def record_damage
    @damaged = true
  end

  def repair
    @damaged = false
  end
  
end 