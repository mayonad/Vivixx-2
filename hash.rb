profile = {first_name:'Roger',
last_name:'Federer',
grand_slam_wins:18,
grand_slam_losses:10,
world_number_one_weeks:302,
country:'Switzerland',
height_cm:185}

puts "#{profile[:first_name]} #{profile[:last_name]}"
puts "Grand slams:#{profile[:grand_slam_wins]} wins,
#{profile[:grand_slam_losses]} losses"
puts "Has been number one for #{profile[:world_number_one_weeks]} weeks"

profile[:prize_money_usd]=101_605_085 #Set value for key
profile.merge!({handed: :left,backhand: :onehanded}) #Add pairs from other hash
profile[:grand_slam_wins] +- 1 #Aus open 2017
profile.delete(:height_cm) #We dont want height anymore
puts "The prize that #{profile[:first_name]} is
#{profile[:prize_money_usd]=101_605_085}"


shop = gets.chomp

shopping_list = [
  {item: 'milk', quantity: 2},
  {item: 'bread', quantity: 1},
  {item: 'bananas', quantity: 5},
  {item: 'flour', quantity: 1},
  {item: 'butter', quantity: 0.250},
  {item: 'tea', quantity: 50}
]

shopping_list.each do |info|
  puts "#{info[:item]} x
  #{info[:quantity]}"
end
