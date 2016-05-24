require_relative 'cookie'
class Oatmeal < Cookie

	attr_accessor :flavor, :bake_temp, :bake_time

	def initialize(args)
		@flavor = args.fetch(:flavor) {"chocolate_chip"}
		@bake_temp = args.fetch(:bake_temp) {425}
		@bake_time = args.fetch(:bake_time) {10}
	end 

end 
