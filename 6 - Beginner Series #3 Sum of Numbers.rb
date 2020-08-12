def get_sum(a,b)
    if a > b
      a,b = b,a
    end
    sum = a
    for i in a+1..b
      sum = a == b ? sum : sum + i
    end
    return sum
end

def get_sum_Best_Pratice(a,b)
    return a < b ? (a..b).reduce(:+) : (b..a).reduce(:+) 
end

a = gets.to_i
b = gets.to_i

puts get_sum(a, b)