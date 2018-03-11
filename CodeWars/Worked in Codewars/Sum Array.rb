def sum(numbers)
  ans = 0
  numbers.each { |x| ans += x }
  puts ans
end

sum([])