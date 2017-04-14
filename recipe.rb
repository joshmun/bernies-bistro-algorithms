class Recipe
attr_reader :id, :name, :description, :ingredients, :directions
  def initialize(options = {})
    @id = options[:id]
    @name = options[:name]
    @description = options[:description]
    @ingredients = options[:ingredients]
    @directions = options[:directions]
  end
end
