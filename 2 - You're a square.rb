def is_square(x)
    if x >= 0
        Math.sqrt(x) % 1 == 0
    else
        false
    end
end

def is_square_Best_Pratice(x) # utilizando operador ternario
    x < 0 ? false : Math.sqrt(x) % 1 == 0
end

input = gets.to_i
puts is_square(input)
