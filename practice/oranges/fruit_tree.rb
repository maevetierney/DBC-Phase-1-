
class FruitTree
   class NoFruitsError < StandardError
   end

  attr_accessor :age, :height, :fruits

  def initialize(args={})
    @age = args.fetch(age){0}
    @height = args.fetch(height){0}
    @fruits = args.fetch(fruits){[]}
  end 

  def pass_growing_season
    self.age += 1 
  end

  def mature?
    if self.age >= 6 
      true 
    else
      false 
    end 
  end

  def has_fruits?
  	mature?
  end 

  def pick_a_fruit
    raise NoFruitsError, "This tree has no oranges" unless self.has_fruits?
    self.fruits.pop
  end
end 