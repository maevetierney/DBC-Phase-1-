require_relative "orange"
require_relative "fruit_tree"

class OrangeTree < FruitTree

  def pass_growing_season
    super
    self.height += 2.5 unless height == 25
    if mature? 
      200.times do |i| 
        self.fruits << Orange.new
      end 
    end 
  end

  def mature?
    if self.age >= 6
      true 
    else
      false 
    end 
  end

  def dead?
    self.age >= 100 ? true : false  
  end

end
