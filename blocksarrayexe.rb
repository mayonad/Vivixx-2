class Cat
  attr_reader :name, :color
  def initialize(name,color)
    @name = name
    @color = color
  end
end


cats = [
  Cat.new('Purry', :black),
  Cat.new('Scratchy', :white),
  Cat.new('Feral', :fawn),
  Cat.new('Tiny', :fawn),
  Cat.new('Leo', :white)
]

all_cat_colors = cats.map {|cat| cat.color}
puts "#{all_cat_colors}".upcase
