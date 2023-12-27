require "colorize"
require "colorized_string"

def playGame()
    puts "Hello!"
end

#playGame()

# random number generator
def digit_generator()
    {
        number: rand(6),
        colour: ""
    }
end

# Create a code by running random number generator 6 times
def code_generator()
    #puts "invoked"
    return []
end

# This function will take the array of number-objects and populate the "colour" key with an according value.
def numbers_to_colours(number)

end
result = digit_generator

#puts "Digit generated is #{result[:number]} and #{result[:colour]}"


generator_code = code_generator()

#puts "code: #{generator_code}"

test = ":color => :white, background => :red"

number_colour_array = ["red", "green", "yellow", "blue", "cyan", "magenta"]

#puts String.colors

var1 = number_colour_array[0]
var2 = number_colour_array[1]

puts "This is #{var1} with #{var2}".colorize(:"#{var1}" ).colorize( :background => :"#{var2}")
puts "This is #{var1} text with #{var2} background".colorize(:color => :white, :background => :"#{var2}")
