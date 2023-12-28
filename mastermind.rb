require "colorize"
require "colorized_string"

def playGame()
    puts "Hello!"
    # greet message
    # generate code
    # while tries < 12 and guess != from code
end

#playGame()

# random number generator
def digit_generator()
    {
        number: rand(6),
        name: "",
        colour: ""
    }
end

# Create a code by running random number generator 6 times
def code_generator()
    code = []
    6.times do
        code.push(digit_generator())
    end
    return code
end

my_code = code_generator()
#puts my_code
# This function will take the array of number-objects and populate the "colour" key with an according value.
def numbers_to_colours(number)

end
result = digit_generator

#puts "Digit generated is #{result[:number]} and #{result[:colour]}"


generator_code = code_generator()

#puts "code: #{generator_code}"

test = ":color => :white, background => :red"

number_colour_array = ["red", "green", "yellow", "blue", "cyan", "magenta"]


my_code.each { | x | puts x[:number] }