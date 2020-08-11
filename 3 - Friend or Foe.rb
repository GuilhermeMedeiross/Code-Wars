def friend(friends)
    output = []
    for i in friends
      if i.length == 4
        output << i
      end
    end
    return output
end

def friend_Best_Pratice(x)
    friends.select { |name| name.length == 4 }
end

friends = []
loop do
    input = gets.to_s.strip
    if input == '0'
        break
    end
    friends << input
end

puts friend(friends)
