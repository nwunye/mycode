# values = [["A", "B", "C"], ["D", "E", "F"], ["G", "H"]]

# values.each_index do |i|
#   subarray = values[i]
#   subarray.each_index do |x|
#     puts "The value at " + "[" + String(i) + "]" + "[" + String(x) + "]" + " is " + values[i][x]
#   end
# end

# 0 0 0 0 0
# 0 0 0 0 0
# 0 0 1 0 0
# 0 0 0 0 0
# 0 0 0 0 0

numbers = [[0,0,0,0,0],[0,0,0,0,0],[0,0,1,0,0],[0,0,0,0,0],[0,0,0,0,0]]

numbers.each_index do |i|
  subarray = numbers[i]
  subarray.each_index do |x|
    if subarray[1] == 0
      subarray[1+1] = 1
    end
    puts numbers
  end
end
