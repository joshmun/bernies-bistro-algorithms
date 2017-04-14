require_relative "../recipe"

describe Recipe do
  let (:recipes_data) {
  { :id  =>  "567",
  :name => "Peanut Butter Coffee Brownie",
  :description => "Just looking has caused people to gain 10 pounds!",
  :ingredients => "Chocolate, Peanut Butter, Espresso, Cream Cheese",
  :directions => "Chew the espresso beans to a pulp, spit them into the bowl. Now mix in the chocolate, cream cheese, and peanut butter. Bake at 450 for 45 minutes" }
  }
  let (:recipe) { Recipe.new(recipes_data) }

  context 'has attributes' do
    it "has an id" do
      expect(recipe.id).to eq "567"
    end

    it "has a name" do
      expect(recipe.name).to eq "Peanut Butter Coffee Brownie"
    end

    it "has a description" do
      expect(recipe.description).to eq "Just looking has caused people to gain 10 pounds!"
    end

    it "has a ingredients" do
      expect(recipe.ingredients).to eq "Chocolate, Peanut Butter, Espresso, Cream Cheese"
    end

    it "has a directions" do
      expect(recipe.directions).to eq "Chew the espresso beans to a pulp, spit them into the bowl. Now mix in the chocolate, cream cheese, and peanut butter. Bake at 450 for 45 minutes"
    end

  end
end
