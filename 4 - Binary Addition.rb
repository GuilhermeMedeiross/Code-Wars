def add_binary(a, b)
    (a + b).to_s(2)
end

def add_binary_Best_Pratice(a, b)
    add_binary(a, b) # because i did the best pratice ;)
end

a = gets.to_i
b = gets.to_i

puts add_binary(a, b)
puts add_binary_Best_Pratice(a, b)
