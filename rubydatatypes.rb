require 'active_support/all'
# 'active-support' allows us to switch back and forth
# from ruby objects to JSON data. It's included in Rails (not plain Ruby)

num = 1
f = 1.0
string = "Hello!"
symbol = :symbol

array = [1,2,3,4]

# Data Type: Hash Table = A collection of key-value pairs

hash = {
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four"
}

puts hash.to_json
# compare to "puts hash"

# didnt really understand the conversion from ruby object to json and back to ruby object (Lesson 15)