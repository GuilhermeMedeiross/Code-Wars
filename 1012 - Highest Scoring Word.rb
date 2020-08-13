def high(x)
    x = x.split(' ')
    total = 0
    highest = ''
    for i in x # x.scan(/\w+/)
        #.max_by{|x|x.sum-x.size*96}
        size = i.length * 96
        puts (i.sum - size).to_s + " " + i
        if i.sum - size > total
            total = i.sum - size
            highest = i
        end
    end
    return highest
end

def high(x)
    x.scan(/\w+/).max_by{|x|x.sum-x.size*96}
end

x = "aaa b"
puts high(x)