class Student
  attr_accessor :name, :age, :level

  def initialize(name, age, level)
    @name = name
    @age = age
    @level = level
  end

end
 
arit = Student.new("Arit", 37, "Novice")
estee = Student.new("Estee", 32, "Intermediate")
atim = Student.new("Atim", 34, "Expert")
ikem = Student.new("Ikem", 44, "Intermediate")
victor = Student.new("Victor", 34, "Novice")

students = [arit, estee, atim, ikem, victor]

# puts students.sort.inspect

# def sort_students(students)
#   students.sort do |x,y|
#     x.name <=> y.name
#   end
# end

# puts sort_students(students).inspect

# by_age = lambda do |person|
#   person.age
# end

# by_name = lambda do |person|
#   person.name
# end

# by_level = lambda do |person|
#   person.level
# end


def sort_students(students, comparator)
  students.sort do |x,y|
    comparator.call(x) <=> comparator.call(y)
  end
end


# puts sort_students(students, by_age).inspect

puts sort_students(students, lambda { |person| person.age }).inspect