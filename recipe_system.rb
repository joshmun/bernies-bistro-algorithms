require_relative 'recipe'
require_relative 'recipe_book'
require_relative 'load_recipes'

if ARGV.any?

include LoadRecipes

recipe_book = RecipeBook.new(LoadRecipes.load_recipes("recipes.csv"))

  if ARGV[0] == "list"
    recipe_book.list_recipes
  elsif ARGV[0] == "display"
    recipe_book.find_recipe_by_id(ARGV[1])
  else
    puts "Invalid Command"
  end
end
