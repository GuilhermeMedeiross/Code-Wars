def spinWords(string)
    string = string.split(' ')
    newSring = []
    string.each do |c|
        c = c.length > 4 ? c.reverse : c
        newSring << c
    end
    string = newSring.join(' ')
end

def spinWords_Best_Pratice(string)
    string.gsub(/\w{5,}/, &:reverse)
end

string = gets.to_s
puts spinWords(string)