class Cocktail
    attr_accessor :name, :ingredients, :glass, :recipe, :measures

    @@all = []

    def initialize(recipe)
        @name = recipe["strDrink"]
        @glass =  recipe["strGlass"]
        @recipe = recipe["strInstructions"]
        @ingredients = recipe["strMeasure1"], recipe["strIngredient1"], recipe["strMeasure2"], recipe["strIngredient2"], recipe["strMeasure3"], recipe["strIngredient3"], recipe["strMeasure4"], recipe["strIngredient4"]
        
        @@all << self
    end

    def self.all
        @@all
    end
end