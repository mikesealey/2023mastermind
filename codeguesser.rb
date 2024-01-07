# Generate Code
def generate_code()
    return [rand(6), rand(6), rand(6), rand(6)]
end

code = generate_code()
print code

def code_guesser(generated_array, guess_array)
    response_array = Array.new(4)
    response_array.each_with_index {|digit, index| 
        if generated_array[index] === guess_array[index]

            response_array[index] = "Correct"
        elsif generated_array.include? guess_array[index]
            response_array[index] = "Present"
        else
            response_array[index] = "Not Found"
        end
        }
    print response_array
    return response_array
end

code_guesser(code, [1,1,1,1])