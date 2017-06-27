puts "Hello World!"
puts "Hello Again"
puts "I like typing this."
puts "This is fun."
puts "Yay! Printing."
puts "I'd much rather you 'not'."
puts 'I "said" do not touch this.'


gets

puts "Is it greater? #{5> -2}"
puts "Is it greater or equal? #{5>= -2}"
puts "Is it less or equal? #{5<=2}"

gets

cars = 100
space_in_a_car = 4.0
drivers = 30
passengers = 90
cars_not_driven = cars - drivers
cars_driven = drivers
carpool_capacity = cars_driven - space_in_a_car
average_passengers_per_car = passengers / cars_driven

puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available"
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."

gets

my_name = "Zed A. Shaw"
my_age = 35
my_height = 74
my_weight = 180
my_eyes = "blue"
my_teeth = "white"
my_hair = "brown"

puts "Let's talk about #{my_name}."
puts "He's #{my_height} inches tall."
puts "He's #{my_weight} pounds heavy."
puts "Actually that's not too heavy."
puts "He's got #{my_eyes} and #{my_hair} hair."
puts "His teeth are usually #{my_teeth} depending on the coffee."

puts "If I add #{my_age}, #{my_height}, and #{my_weight},
I get #{my_age +my_height +my_weight}."

gets

types_of_people = 10
x = "There are #{types_of_people} types of people"
binary = "binary"
do_not = "don't"
y = "Those who know #{binary} and those who #{do_not}."

puts x
puts y

puts "I said: #{x}."
puts "I also said: #{x}."

hilarious = false
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"
puts joke_evaluation

w = "This is the left side of..."
e = "a string with a right side."

puts w + e

gets

days = ['Monday', 'Tuesday', 'Wednesday', 'Thursday',
'Friday', 'Saturday', 'Sunday']

days.each do |d|
  puts d
end

gets

puts "Mary had a little lamb."
puts "Its fleece was white as #{'snow'}."
puts "And everywhere that Mary went."
puts "." *10

end1 ='C'
end2 = 'h'
end3 = 'e'
end4 = 'e'
end5 ='s'
end6 ='e'
end7 = 'B'
end8 = 'u'
end9 = 'r'
end10 = 'g'
end11 = 'e'
end12 = 'r'

print end1 + end2 + end3 + end4 + end5 + end6
print end7 + end8 + end9 + end10 + end11 + end12

gets

tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat."


fat_cat = """

\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
"""


puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat

gets

print "How old are you?"
age = gets.chomp.to_i
print "How tall are you?"
height = gets.chomp.to_i
print "How much do you weigh?"
weight = gets.chomp.to_i

puts "So, you're #{age} old, #{height} tall and #{weight} heavy"

gets

print "Give me a number"
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}"

print "Give me another number."
another= gets.chomp.to_i
number = another.to_i


smaller = number / 100
puts "A smaller number is #{smaller}"

def temp
celsius = 23
fahrenheit = (celsius.to_i * 9 / 5).to_f + 32
puts "The fahrenheit equivalent is #{fahrenheit}"
end

temp


def dollar
  pesotodollar = 49.45
  dollarconversion = (1 / pesotodollar.to_f).to_f
  money = 1000
   puts "My 1000 pesos is equivalent to #{money * dollarconversion}"
end

dollar
