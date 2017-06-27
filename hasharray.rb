profile= {firstname:'Jay',
lastname:'smith'
}

puts "Previous name was #{profile[:firstname]}"
name = gets.chomp
profile[:name] = 'chelle'
puts "now its #{profile[:name]}"
profile.merge!({age: 25, money: 9999})
puts "He's #{profile[:age]} years old"
puts "He has #{profile[:money]} dollars"
puts "But he earned 1000 more"
profile[:money] += 1000
puts "Now he has #{profile[:money]} dollars"
