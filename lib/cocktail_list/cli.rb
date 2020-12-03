class CocktailList::CLI

    def call
        puts "Today we are going to discover 25 cocktails starting with the letter 'A'."
        puts "loading..."
        puts "Are you ready to discover the list?"
        Api.load_data
        main_menu_options
    end

    def main_menu_options
        puts "Type 'go' to list the cocktails"
        puts "Type 'exit' to exit program"
        main_menu
    end

    def main_menu
        input = get_input

        if input == "go"
            list_cocktails
            main_menu_options
        elsif input == "exit"
            puts "Thank you for visiting us, cheers!"
            exit
        else
            invalid_choice
            main_menu_options
        end
    end

    def invalid_choice
        puts "Invalid choice. Please try again'"
    end

    def get_input
        print "Enter Choice: "
        gets.chomp
    end

    def list_cocktails
        Cocktail.all.each.with_index(1) do |cocktail, index|
            puts "#{index}. #{cocktail.name}"
        end

        cocktail_detail_menu_option
    end

    def cocktail_detail_menu_option
        puts "Select the number next to the cocktail you wish to know more about"
        puts "Or type 'exit' to exit the program"
        cocktail_detail_menu
    end

    def cocktail_detail_menu
        input = get_input

        if input.to_i.between?(1, Cocktail.all.length)

            index = input.to_i - 1
            cocktail = Cocktail.all[index]
            print cocktail_recipe(cocktail)
            select_again_or_exit
        elsif input == "exit"
            puts "Thank you for visiting us, cheers!"
            exit
        else
            invalid_choice
            cocktail_detail_menu_option
        end
    end

    def cocktail_recipe(cocktail)
        puts "          -----------------           "
        puts "Cocktail Name: #{cocktail.name}"
        puts "Cocktail Ingredient: "
        " #{cocktail.ingredients.each do |ingredients|
        puts "#{ingredients}"
    end
        }"
        puts "Cocktail Glass: #{cocktail.glass}"
        puts "Cocktail Recipe: #{cocktail.recipe}"
        puts "          -----------------           "
    end

    def select_again_or_exit
        puts "Would you like to go back to the main menu, see the list again or exit?"
        puts "'1' for main menu"
        puts "'2' to see the list again"
        puts "'exit' to exit program"
        input = get_input

        if input == '1'
            main_menu_options
        elsif input == '2'
            list_cocktails
        elsif input == 'exit'
            puts "Enjoy your cocktail, see you soon for more cocktail recipes!"
            puts ""
            puts ""
            puts "               -                                            -             "
            puts "                -                                          -             "
            puts "                 -                                        -             "
            puts "                  -                                      -             "
            puts "                   -                                    -             "
            puts "                    -                                  -             "
            puts "                     -                                -             "
            puts "                      -                              -             "
            puts "                       -                            -             "
            puts "                        -                          -             "
            puts "                         -                        -             "
            puts "                          -                      -             "
            puts "                           -                    -             "
            puts "                            -                  -             "
            puts "                             -                -             "
            puts "                             ------------------             "
            puts "                            -                  -             "
            puts "                           -                    -             "
            puts "                           ----------------------                                          "
            exit
        else
            invalid_choice
            select_again_or_exit
        end
    end
end