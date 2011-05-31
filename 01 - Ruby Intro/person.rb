class Person
  attr_accessor :name
  attr_accessor :age

  def initialize(name = "John Doe", age = 18)
    @name = name
    @age = age
  end

  def print
    puts "My name is #{@name} and I'm #{@age} years old"
  end

end