class Cocktail
    attr_accessor :name, :glass, :recipe, :ingredients

    @@all = []

    def initialize(recipe)
        self.name = recipe["strDrink"]
        self.glass = recipe["strGlass"]
        self.recipe = recipe["strInstructions"]
        self.ingredients = recipe["strMeasure1"], recipe["strIngredient1"], recipe["strMeasure2"], recipe["strIngredient2"], recipe["strMeasure3"], recipe["strIngredient3"], recipe["strMeasure4"], recipe["strIngredient4"]
            
        # self.ingredients << "#{recipe["strMeasure2"]} - #{recipe["stringredient2"]}}" if recipe["strMeasure2"]
            # self.ingredients << "#{recipe["strMeasure3"]} - #{recipe["stringredient3"]}}" if recipe["strMeasure3"]
            # self.ingredients << "#{recipe["strMeasure4"]} - #{recipe["stringredient4"]}}" if recipe["strMeasure4"]
            # self.ingredients.each do |ingredients|
            #     puts ingredients
            # end
        
        
        # self.first_ingredient = recipe["strMeasure1"], recipe["strIngredient1"]
        # self.second_ingredient = recipe["strMeasure2"], recipe["strIngredient2"]
        # self.third_ingredient = recipe["strMeasure3"], recipe["strIngredient3"]
        # self.fourth_ingredient = recipe["strMeasure4"], recipe["strIngredient4"]
        @@all << self
    end

    def self.all
        @@all
    end
end