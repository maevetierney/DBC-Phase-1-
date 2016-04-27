class Person 

	def initialize(args)
		@first_name = args.fetch("first_name") { " "}
		@last_name = args.fetch("last_name") { " "}
		@email = args.fetch("email") {""}
		@phone = args.fetch("phone") {""}
		@created_at = args.fetch("created_at") {" "}
	end 

end 