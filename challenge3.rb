
puts "Candidates".upcase.center(80, '#')

puts "--------------------------------------------------------------------------"
candidates = 'Mika', 'Reggie', 'Kenneth', 'Trevor'.split

puts candidates

gets

puts "Votes for Mika?".center(80)
number1 = gets.chomp.to_i

puts "Votes for Reggie?".center(80)
number2 = gets.chomp.to_i

puts "Votes for Kenneth?".center(80)
number3 = gets.chomp.to_i

puts "Votes for Trevor?".center(80)
number4 = gets.chomp.to_i

gets

puts "TOTAL VOTES".upcase.center(80, '#')
puts "Total Votes for Mika: #{number1}".center(80)
puts "Total Votes for Reggie: #{number2}".center(80)
puts "Total Votes for Kenneth: #{number3}".center(80)
puts "Total Votes for Trevor: #{number4}".center(80)
