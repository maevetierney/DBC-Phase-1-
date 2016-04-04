# require_relative "apple"
# require_relative "fruit_tree"

# class AppleTree < FruitTree
#   # Define a custom exception class
 

#   # attr_accessor :age, :height, :apples

#   # def initialize(args={})
#   #   # @age = args.fetch(age){0}
#   #   # @height = args.fetch(height){0}
#   #   # @apples = args.fetch(apples){[]}
#   # end 

#   def pass_growing_season
#     # self.age += 1 
#     self.height += 2 unless height == 26
#     if mature? 
#       500.times do |i| 
#         self.fruits << Apple.new
#       end 
#     end 
#   end

#   def mature?
#     if self.age >= 5 
#       true 
#     else
#       false 
#     end 
#   end

#   def dead?
#     self.age >= 45 ? true : false  
#   end 
#   # Returns +true+ if there are any oranges on the tree, +false+ otherwise
#   # def has_apples?
#   #   mature? 
#   # end

#   # Returns an Orange if there are any
#   # Raises a NoOrangesError otherwise
#   # def pick_a_fruit
#   #   raise NoApplesError, "This tree has no apples" unless self.has_apples?
#   #   self.apples.pop
#   # end
# end