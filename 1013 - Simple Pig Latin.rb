def pig_it text
    words = text.split(' ')
    words = words.map do |word|
        firstLetter = word.slice! 0
        if firstLetter.match? /\A[a-zA-Z]\z/ 
            word = word + firstLetter + "ay"
        else
            word = firstLetter
        end
    end
    words = words.join(' ')
    return words
end

def pig_it_Best_Pratice text
    text.gsub(/(\w)(\w+)*/, '\2\1ay')
end

text = "O Pig latin is cool !"
puts pig_it text