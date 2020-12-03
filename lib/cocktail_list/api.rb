require 'json'

class Api
    
    def self.load_data
        load_cocktails
    end

    def self.load_cocktails

        response = RestClient.get("https://www.thecocktaildb.com/api/json/v1/1/search.php?f=a")
            data = JSON.parse(response.body)

            data["drinks"].each do |cocktail_data|
                # binding.pry
                Cocktail.new(cocktail_data)
            end
    end
end