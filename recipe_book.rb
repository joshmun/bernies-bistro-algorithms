require 'csv'
class RecipeBook
  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def load_recipes(filename)
    CSV.foreach(filename, { headers: true }) do |row|
      recipe_data = {
        :id => row.fetch("id"),
        :name => row.fetch("name"),
        :description => row.fetch("description"),
        :ingredients => row.fetch("ingredients"),
        :directions => row.fetch("directions")
      }
    @recipes << Recipe.new(recipe_data)
    end
  end

  def list_recipes
    @recipes.each do |recipe|
      puts "#{recipe.id} - #{recipe.name}"
    end
  end

  def find_recipe_by_id(recipe_id)
    found_recipe = @recipes.find do |recipe|
      p recipe
      recipe.id == recipe_id
    end
    raise "Can't find a recipe with an id of #{recipe_id.inspect}" unless found_recipe
    found_recipe
  end
end
