names = []

  puts "Type the name you'd like to add to the list"
  entry = gets.chomp
  names << entry
  puts "The list of names are:"
  puts names

puts "Add another name? (Y/N)"
ans = gets.chomp

if ans == 'Y'

  puts "Type the name you'd like to add to the list"
  entry = gets.chomp
  names << entry
  puts "The list of names are:"
  puts names

end