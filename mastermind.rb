require "colorize"
require "colorized_string"

def code_generator()
    number_colour_array = [
        {:number => 0, :colour => "red", :string =>  "__RED__"},
        {:number => 1, :colour => "green", :string =>  "__GREEN__"},
        {:number => 2, :colour => "yellow", :string =>  "__YELLOW__"},
        {:number => 3, :colour => "blue", :string =>  "__BLUE__"},
        {:number => 4, :colour =>"cyan", :string =>  "__CYAN__"},
        {:number => 5, :colour => "magenta", :string =>  "__MAGENTA__"}
    ]

    new_array = []

    6.times do 
        new_array.push(number_colour_array[rand(6)])
    end
    return new_array
end

code = code_generator()

puts code
puts "then"
puts code[0][:string]



