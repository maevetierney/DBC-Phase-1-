require_relative 'cookie'
class ChocolateChip < Cookie

	attr_accessor :flavor, :bake_temp, :bake_time

	def initialize(args)
		@flavor = args.fetch(:flavor) {"chocolate_chip"}
		@bake_temp = args.fetch(:bake_temp) {425}
		@bake_time = args.fetch(:bake_time) {10}
	end 

end 


# As a baker, I want to make different types of cookies (peanut butter, chocolate chip, etc.).
# As a baker, I want to place batches of cookies in an oven.
# As a baker, I want to know when a batch of cookies is ready to be removed from the oven.