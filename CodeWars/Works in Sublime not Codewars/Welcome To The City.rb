def say_hello(fullname, city, state)
  
  print "Hello, "
  
  fullname.each do |x|
    if x != fullname.last
      print String(x) << " "
    else
    print String(x) << "! "
    end
  end

  print "Welcome to " << city << ", " << state
  puts "!"

end

say_hello(["Arit", "Amana", "Okwu"], "Raleigh", "North Carolina")