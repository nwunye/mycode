def find_missing_number(sequence)
  sequence.each_index do |x|
    if sequence[x+1] - sequence[x] == 1
    puts "Yes"
    end
  end
    
end

find_missing_number([1,2,3])