def no_odds(values)
  values.each_index do |x|
    if values[x] % 2 == 0
      puts values[x]
    end
  end 
end

no_odds([2,3,5,6,8,7,9,11,12,16,13])