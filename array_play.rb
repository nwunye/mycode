array = [[1,1,1,1],[2,2,2,2],[3,3,3,3],[4,4,4,4]]
num = array.count

array_hold = []
  array.each do |item|
  array_hold << item.join
end

puts array_hold