# Define the unique method that removes duplicates
def unique(integers)
  integers.each_index do |x|
    if integers[x] == integers[x+1]
      integers.delete_at(x+1)
    end
  end
end

unique([]), [])
unique([5, 2, 1, 3]), [5, 2, 1, 3])
unique([1, 5, 2, 0, 2, -3, 1, 10]), [1, 5, 2, 0, -3, 10])

# URL: http://www.codewars.com/kata/53e30ec0116393fe1a00060b/train/ruby