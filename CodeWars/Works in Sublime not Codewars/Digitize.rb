def digitize(n)
  
  arr = []
  count = 0
  while count < n.to_s.length
    arr.push(n.to_s[count].to_i)
    count += 1
  end

  print arr
  
  if arr.is_a?(Array)
    puts "Correct!"
  else puts "Wrong!"
  end

end

digitize(34567)