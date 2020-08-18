def max_sequence(arr)
    if arr == []
        return 0
    else
        sum = 0
        soma = []
        for i in 0..arr.length - 1
            if sum + arr[i] > 0
                sum += arr[i]
            elsif arr[i] > sum
                sum = arr[i]
            else
                sum = 0
            end
            soma[i] = sum
        end
        return soma.max
    end
end

#arr = [-2, 1, -3, 4, -1, 2, 1, -5, 4]
arr = [-2, 1, -7, 4, -10, 2, 1, 5, 4]
puts max_sequence(arr)