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

#Pick only white cats
white_cats = cats.select do |cat|
  cat.color == :white
end

# ==> [Cat ('Scratchy' :white), Cat('Leo', :white)]

puts "#{white_cats}"

#pick only :white cats
white_cats = cats.select do |cat|
  cat.color == :white  #true if color is :white, false if not
end

#can also be written as
white_cats = cats.select {|cat| cat.color == :white}

#what if we want to know all the different colours of the cat
cats = [Cat.new('Purry'), :black), Cat.new('Scratchy', :white), Cat.new('Feral', :fawn),
  Cat.new('Tiny', :fawn), Cat.new('Leo', :white)]

  #Get corresponding color for each cat
  all_cat_colors = cats.map {|cat| cat.color}
  # ==> [:black, :white, :fawn, :fawn, :white]

  #Filter out multiple by uniquing the colours
  unique_cat_colors = all_cat_colors_uniq
  # ==> [:black, :white, :fawn]

  #chaining
  #We could write the same thing in one line
  #Get corresponding color for each cat
  all_cat_colors = cats.map {|cat| cat.color}
    #==> {:black, :white, :fawn, :fawn, :white}

    unique_cat_colors = all_cat_colors.uniq
    #==> [:black, :white, :fawn]

    #Can be written in one line
    unique_cat_colors = cats.map {|cat| cat.color}.uniq
    # ==>   #==> [:black, :white, :fawn]
