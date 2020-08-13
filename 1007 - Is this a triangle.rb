def isTriangle(a,b,c)
   a < b + c and b < a + c and c < a + b
end

def isTriangle_Best_Pratice(a,b,c)
   a, b, c = [a, b, c].sort
   a + b > c
end

a = gets.to_i
b = gets.to_i
c = gets.to_i

isTriangle(a, b, c)