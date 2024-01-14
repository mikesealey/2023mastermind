require "colorize"
require "colorized_string"

# Generate Code
def generate_code()
    return [rand(6), rand(6), rand(6), rand(6)]
end

# takes an input and returns a coloured bar as a string
def numbers_to_colours(element)
    case element
    when 0
        return ColorizedString["  0  "].white.on_red
    when 1
        return ColorizedString["  1  "].white.on_green
    when 2
        return ColorizedString["  2  "].white.on_yellow
    when 3
        return ColorizedString["  3  "].white.on_blue
    when 4
        return ColorizedString["  4  "].white.on_cyan
    when 5
        return ColorizedString["  5  "].white.on_magenta
    when "✔"
        return ColorizedString["  ✔  "].white.on_green.blink
    when "="
        return ColorizedString["  =  "].white.on_yellow.blink
    when "✗"
        return ColorizedString["  ✗  "].white.on_red.blink
    else
        return element
    end
end

# Takes an array and prints each value on the same line
# circumnavigates but when printing array whole fails to display properly
def print_coloured_array(array)
    array.each{|element| print element}
    print "\n"
end

# Compare code to guess
def code_guesser(generated_array, guess_array)
    response_array = Array.new(4)
    response_array.each_with_index {|digit, index| 
        if generated_array[index] === guess_array[index]

            response_array[index] = "✔"
        elsif generated_array.include? guess_array[index]
            response_array[index] = "="
        else
            response_array[index] = "✗"
        end
        }

    # Convert array to colours here
    coloured_response_array = response_array.map {|element| numbers_to_colours(element)}



    print_coloured_array(coloured_response_array)
    return coloured_response_array
end

def get_player_name()
    print "Welcome to Mastermind. Please enter your name: "
    player_name = gets.chomp
# TODO sanitize this: length/characters etc
end

def get_player_guess(player_name)
    puts "#{player_name}, please enter your guess"
    this_guess = gets.chomp
    this_guess = this_guess.split(//)
    this_guess = this_guess.map { |digit | digit.to_i }
    # TODO sanitize this: length/characters etc
    return this_guess
end





def play_game()
    # Game start
    # Computer generates a code for the user to guess
    generated_array = generate_code()

    # Fetch player's name
    player_name = get_player_name()

    # fetch player's guess, add it to array of guesses
    user_guess_array = Array.new
    
    # Max number of guesses is 12
    while user_guess_array.length <= 12
        # puts "#{12 - user_guess_array.length} guesses remaining"
        if user_guess_array.length > 0
            # Convert array to colours here
            coloured_user_guess = user_guess_array.last.map {|element| numbers_to_colours(element)}
            print_coloured_array(coloured_user_guess)
        end
        # puts "computer generated array is    #{generated_array}"


        if user_guess_array.length === 12
            puts "You had 12 guesses and failed to correctly decipher the computer's code."
            break
        elsif user_guess_array.last === generated_array
            puts "You deciphered the computer's code in #{user_guess_array.length} guesses." # consider displaying the guess history
            break
        else
            user_guess_array.push(get_player_guess(player_name))
            code_guesser(generated_array, user_guess_array.last)
        end
    end

    #Colourize Array of Guess Array
    user_guess_array.each_with_index {| guess, index |
        coloured_guess = guess.map {| element| numbers_to_colours(element)}
        print_coloured_array(coloured_guess)
        code_guesser(generated_array, guess)
    }
    print "GAME OVER"
    # Consider "Play again option"
end

play_game()


