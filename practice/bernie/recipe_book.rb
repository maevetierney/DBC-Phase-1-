require_relative 'recipe'
require 'csv'

class RecipeBook

	def initialize(args)
		@filename = args
		@array = []
	end 

	def csv
		csv = CSV.readlines(@filename, :headers => true)
		csv.each do |row|
			@array << Recipe.new(row.to_hash)
    	end
	end

	def list
		csv
    	p @array 
	end  

	def find_recipe_by_id(id)
		@array.each do |recipe|
			if recipe.id == id
				p recipe
			end 
		end  
	end 

end 

