require 'csv'
require_relative 'recipe'

module LoadRecipes
  def self.load_recipes(filename)
    recipes = []
    CSV.foreach(filename, { headers: true }) do |row|
      recipe_data = {
        :id => row.fetch("id"),
        :name => row.fetch("name"),
        :description => row.fetch("description"),
        :ingredients => row.fetch("ingredients"),
        :directions => row.fetch("directions")
      }
    recipes << Recipe.new(recipe_data)
    end
    recipes
  end
end
