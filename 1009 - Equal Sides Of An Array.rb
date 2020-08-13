def find_even_index(arr)
    for i in 0..arr.length - 1
        left = right = 0
        index = -1
        for j in 0..i - 1
            left += arr[j]
        end
      
        for k in i + 1..arr.length - 1
            right += arr[k]
        end
      
        puts "iteration " + i.to_s
        puts left
        puts right
        puts "---------------"
        if left == right
            index = i
            break
        end
        end
    return index
end

def find_even_index_Best_Pratice(arr)
    left_sum = 0
    right_sum = arr.reduce(:+)
    
    arr.each_with_index do |e, ind|
      right_sum -= e
      
      return ind if left_sum == right_sum
  
      left_sum += e
    end
    
    -1  
  end

arr = [1,2,3,4,3,2,1]
arr2 = [20,10,-80,10,10,15,35]
puts find_even_index(arr2)