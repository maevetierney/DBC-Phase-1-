class Recipe 

	attr_reader :id

	def initialize(args={})
		@id = args.fetch("id"){" "}
		@name = args.fetch("name"){" "}
		@description = args.fetch("description"){" "}
		@ingredients = args.fetch("ingredients"){" "}
		@directons = args.fetch("directions"){" "}
	end 
end 