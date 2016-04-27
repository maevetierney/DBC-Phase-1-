require_relative 'recipe_book'
require 'csv'

if ARGV.any?

  recipe_book = RecipeBook.new("recipes.csv")
  
  if ARGV[0] == "list"
    recipe_book.list 
  elsif ARGV[0] == "display"
  	recipe_book.csv
   	recipe_book.find_recipe_by_id(ARGV[1])
  end

end