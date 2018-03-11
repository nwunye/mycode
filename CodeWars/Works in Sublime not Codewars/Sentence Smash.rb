def smash(words)

  words.each do |x|
  if x != words.last
  print String(x) << " "
  else
  puts String(x)
  end
  end

end

smash(["Hello!", "What", "is", "your", "name?"])