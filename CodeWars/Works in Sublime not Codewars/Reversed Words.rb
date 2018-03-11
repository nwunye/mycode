def solution(sentence)
  
  arr = []
  new_arr = []
  sentence.split().each do |x|
      arr << x
  end

  until arr.empty?
  new_arr << arr.pop
  end

  print "\"" << new_arr.join(" ") << "\""

end

solution("My name is Arit")