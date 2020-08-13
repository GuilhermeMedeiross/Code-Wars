def towerBuilder(n_floors)
    size = (n_floors - 1 ) * 2 + 1
    array = []
    asterix = 1
    for i in 0..n_floors - 1
        floor = ''
        blank = (size - asterix) / 2 
        for j in 1..blank
            floor << ' '
        end

        for j in 1..asterix
            floor << '*'
        end

        for j in 1..blank
            floor << ' '
        end
        asterix += 2
        array[i] = floor
    end
    return array
end

def towerBuilder_Best_Pratice(n)
    (1..n).map do |i|
        space = ' ' * (n - i)
        stars = '*' * (i * 2 - 1)
        space + stars + space
    end
end

n_floors = gets.to_i
puts towerBuilder(n_floors)
