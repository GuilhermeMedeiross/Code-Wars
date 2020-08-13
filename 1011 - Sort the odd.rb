def sort_array(source_array)
    array = []
    j = 0
    for i in source_array
        if i.odd?
            array << i
        end
    end
    array = array.sort
    for i in 0..source_array.length - 1
        if source_array[i].odd?
            source_array[i] = array[j]
            j += 1
        end
    end
    return source_array
end

def sort_array_Best_Pratice(xs)
    odd = xs.select(&:odd?).sort.each
    xs.map{ |x| x.odd? ? odd.next : x }
end

array = [5, 3, 2, 8, 1, 4]
puts sort_array([5, 3, 2, 8, 1, 4])