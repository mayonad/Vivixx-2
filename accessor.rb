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
