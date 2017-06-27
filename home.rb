puts "Welcome to Geoff's restaurant.  May I know your name please?"
$name = gets.chomp
puts "Hi #{$name}!"

puts "Here's the menu."

Menu = [
  {number:'1', item: 'Hamburger',price: 30},
  {number:'2', item: 'Spaghetti',price: 25},
  {number:'3', item: 'Chicken', price: 50}
]

Menu.each do |list|
  puts "#{list [:number]} #{list [:item]} = #{list [:price]}"
end

puts "Please enter the number of your order."
