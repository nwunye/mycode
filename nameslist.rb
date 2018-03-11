def names_list

  names = []
  
  puts "Type the name you'd like to add to the list"
    entry = gets.chomp
  
    names << entry
  
    puts "The list of names are:"
    puts names

  puts "Add another name? (Y/N)"
    ans = gets.chomp

    while ans == 'Y' || ans == 'y'

      puts "Type the name you'd like to add to the list"
      entry = gets.chomp
      names << entry
      puts "The list of names are:"
      puts names
      puts "Add another name? (Y/N)"
      ans = gets.chomp

    end
end

names_list

