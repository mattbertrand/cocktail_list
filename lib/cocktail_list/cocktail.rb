class Cocktail
    attr_accessor :name, :glass, :recipe, :ingredients

    @@all = []

    def initialize(recipe)
        self.name = recipe["strDrink"]
        self.glass = recipe["strGlass"]
        self.recipe = recipe["strInstructions"]
        self.ingredients = recipe["strMeasure1"], recipe["strIngredient1"], recipe["strMeasure2"], recipe["strIngredient2"], recipe["strMeasure3"], recipe["strIngredient3"], recipe["strMeasure4"], recipe["strIngredient4"]
            
        
        @@all << self
    end

    def self.all
        @@all
    end
end