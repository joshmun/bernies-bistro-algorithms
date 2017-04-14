require_relative "../recipe"
require_relative "../recipe_book"

describe RecipeBook do
  let(:recipe_book) { RecipeBook.new }
  # 567,Peanut Butter Coffee Brownie,Just looking has caused people to gain 10 pounds!,"Chocolate, Peanut Butter, Espresso, Cream Cheese","Chew the espresso beans to a pulp, spit them into the bowl. Now mix in the chocolate, cream cheese, and peanut butter. Bake at 450 for 45 minutes"
  let(:recipe) { Recipe.new({"id" => "567", "name" => "Peanut Butter Coffee Brownie", "description" => "Just looking has caused people to gain 10 pounds!", "ingredients" => "Chocolate, Peanut Butter, Espresso, Cream Cheese", "directions" => "Now mix in the chocolate, cream cheese, and peanut butter. Bake at 450 for 45 minutes"})}
  describe "#find_recipe_by_id" do
    before(:each) do
      recipe_book.load_recipes('recipes.csv')
    end
    it 'finds a recipe by id' do
      expect(recipe_book.find_recipe_by_id("567").id).to eq(recipe.id)
    end

    xit "raises an exception if it can't find a recipe" do
      #How do I check exceptions? Here's an example
      # expect { my_thing.method_that_raises }.to raise_error
    end
  end

  describe '#load_recipes' do
    it 'returns an array containing recipe objects' do
      recipe_book.load_recipes("recipes.csv")
      expect(recipe_book.recipes).to all( be_a(Recipe) )
    end

  end
end
