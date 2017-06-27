class Person
  def initialize (name, age)
    @name = name
    @age = age
  end


def age
  @age
end
end


john = Person.new("John", 42)
@age = john.age


puts "John's age is #{@age}"


gets

class Rectangle
  def initialize (length, breadth)
    @length = length
    @breadth = breadth
  end

  #getters
  def length
    @length
  end

  def breadth
    @breadth
  end

  #setters
  def length =(length)
    @length = length
  end

  def breadth =(breadth)
   @breadth = breadth
  end
end


#create instance
rect = Rectangle.new (10,20)
rect.length = 30 # Calls: def length=(length)
rect.breadth = 15 #Calls : def breadth=(breadth)
x = rect.length # Calls:def length
y = rect.breadth #calls: def breadth

#Output
puts "Length of the rectangle is #{x}"
puts "Breadth of the rectamble is ##{y}"

##
class Rectangle
  attr_accessor :length, :breadth
  attr_writer :length, :breadth

  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end
end


#Create a rectangular object
rect = Rectangle.new(20,10)

#set the length and breadth
rect.length = 300
rect.breadth = 20

#Retrieve the legth and breadth
length = rect.length
breadth = rect.breadth

puts "Length of the rectangle is #{length}"
puts "Breadth of the rectamble is ##{breadth}"
