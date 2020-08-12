def find_outlier(integers)
    outlierEven = outlierOdd = even = odd = 0
    for i in integers
      if i % 2 == 0
        even += 1
        outlierEven = i
      else
        odd += 1
        outlierOdd = i
      end
    end
    outlier = odd == 1 ? outlierOdd : outlierEven
    return outlier
end

def find_outlier_Best_Pratice(integers)
    integers.partition(&:odd?).find(&:one?).first
end

input = gets.to_i
integers = []
for i in 1..input
    integer = gets.to_i
    integers << integer
end

puts find_outlier(integers)