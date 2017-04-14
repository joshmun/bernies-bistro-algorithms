# Pseudocode

## Calls the Recipe_System file, adds terminal information

From the recipe system file, it runs through various commands
But then it needs load the csv file

1. Load CSV file (loadrecipes)
  - loader should instantiate a new recipe object
  -return an array of these objects
2. Use this as the input for the Recipe Book
  -recipebook holds this array of obejcts
  -hold all the methods, find recipe by id and listing

  ## Loader
  provide the file to the module method
  the method should parse through each line, matching each header to each row of the csv file

  big picture: you're building an object, initializing it as an object. Therefore, on each row of the csv file, build out that hash, put that in the input of the new recipe object, push it all into an array

  the recipe object needs to be initialized with an options hash

  ## Recipe Book

  ### Needs a list method
  list displays all of the recipes.
  take the recipe_book, in the recipe_book build a method that loops through each recipe in the book
  -print each recipe id and recipe name

  ### Needs a display method
  method receives recipe id
  take the recipes array, and loop through each recipe
  for each recipe, if the queried recipe id matches the objects recipe id, then display that one

