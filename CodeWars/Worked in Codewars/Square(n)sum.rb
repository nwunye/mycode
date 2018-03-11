def squareSum(numbers)
  
  sum = 0
  numbers.each_index { |x| sum+=numbers[x]*numbers[x] }
  puts sum

end

squareSum([1,2,2])