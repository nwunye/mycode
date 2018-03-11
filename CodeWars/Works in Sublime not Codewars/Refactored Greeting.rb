class Person
  attr_accessor :myName, :yourName 
  
  def initialize(myName)
  @myName = myName
  end

  def greet(yourName)
  puts "Hello #{yourName}, my name is #{@myName}"
  end

  def name
    puts @myName
  end

end

joe = Person.new('Joe')
joe.greet('Kate')
joe.name