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


random_number_array = [1,2,3,4,5,6]

random_number_array.each { | x | puts "This is white with #{number_colour_array[x-1]}".colorize(:white ).colorize( :background => :"#{number_colour_array[x-1]}")}