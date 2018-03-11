array = [1,2,3,4]
reverse_array = []
count = 0

while count <= array.length + 1
  reverse_array.push(array.pop)
  count += 1
end

puts reverse_array