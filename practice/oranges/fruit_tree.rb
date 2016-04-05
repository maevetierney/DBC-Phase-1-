class FruitTree
   class NoFruitsError < StandardError
   end

  attr_accessor :age, :height, :fruits

  def initialize(args={})
    @age = args.fetch(age){0}
    @height = args.fetch(height){0}
    @fruits= []
  end 

  def pass_growing_season
    self.age += 1 
  end

  def has_fruits?
    fruits.empty?
  end 

  def pick_a_fruit
    raise NoFruitsError, "This tree has no fruits" unless self.has_fruits?
   self.fruits.pop
  end
end 