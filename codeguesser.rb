# Generate Code
def generate_code()
    return [rand(6), rand(6), rand(6), rand(6)]
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
    print guess_array, "\n", generated_array, "\n", response_array, "\n"
    return response_array
end

def get_player_name()
    puts "Welcome to Mastermind. Please enter your name: "
    player_name = gets.chomp
# TODO sanitize this: length/characters etc
end

def get_player_guess(player_name)
    puts "Please enter your guess"
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
    # 
    while user_guess_array.length <= 12
        puts "user guess array length is #{user_guess_array.length}"
        puts "user guess array last entry is #{user_guess_array.last}"
        puts "computer generated array is    #{generated_array}"


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
    puts "GAME OVER"
    # Consider "Play again option"
end

play_game()