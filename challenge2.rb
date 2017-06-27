puts "Hello, this is William's corner. May I know your name, please?"
$name = gets.chomp
puts " Hi #{$name}!"
puts "> Here's the menu! Please put your order."

menu = [
  {item: "Hamburger", price:35},
  {item: "Fried Chicken", price:50},
  {item: "Spaghetti", price:40},
  {item: "Cola", price:20},
  {item: "Bottled Water", price:10}
]

menu.each do |key|
  puts "#{key[:item]} is #{key[:price]}"
end


puts "How many Hamburger/s?"
num = gets.chomp.to_i
price = num* 35

puts "How many Fried Chicken/s?"
numa = gets.chomp.to_i
price1 = numa*50

puts "How many Spaghetti/s?"
numb = gets.chomp.to_i
price2 = numb*40

puts "How many cola/s?"
numc = gets.chomp.to_i
price3 = numc*20

puts "How many bottled water/s?"
numd = gets.chomp.to_i
price4 = numd*10


order = gets.chomp

puts "LIST OF ORDERS"
puts "#{num} X Hamburger = #{price} pesos"
puts "#{numa} X Fried Chicken = #{price1} pesos"
puts "#{numb} X Spaghetti = #{price2} pesos"
puts "#{numc} X cola =  #{price3} pesos"
puts "#{numd} X bottled water = #{price4} pesos"

P = price.to_i + price1.to_i + price2.to_i + price3.to_i + price4.to_i


price = gets.chomp

puts "TOTAL PRICE IS #{P}"
puts "How much money you have?"
money = gets.chomp


  if money.to_i > P.to_i
    change = money.to_i - P.to_i
    puts "Here's your change : #{change} pesos"
  else
    puts "Sorry! You do not have enough money!"
  end

  puts "Do you want to have a printed receipt? yes or no?"
  receipt = gets.chomp

  case receipt
  when "yes"
    puts "Ok, here's your receipt."
  when "no"
    puts ""
    end

  puts "Thank you! Please come again!"
