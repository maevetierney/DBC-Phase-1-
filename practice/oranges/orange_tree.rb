require_relative "orange"
require_relative "fruit_tree"

class OrangeTree < FruitTree 

  attr_accessor :age, :height, :oranges

  def initialize(args={})
    @age = args.fetch(age){0}
    @height = args.fetch(height){0}
  end 

  def pass_growing_season
    self.height += 2.5 unless height == 25
    if mature? 
      200.times do |i| 
        self.fruits << Orange.new
      end 
    end 
  end

  def dead?
    self.age >= 100 ? true : false  
  end
end
