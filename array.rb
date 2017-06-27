alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
  'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']

  number_of_letters = alphabet.length
  puts "There are #{number_of_letters} letters in the alphabet"

  last_letter = alphabet[number_of_letters - 1]
  puts "Last letter : #{last_letter}"

  numbers = gets.chomp

  numbers = ['1','2','3','4','5']
  how_many_numbers = numbers.length
  puts "There are total of #{how_many_numbers}"

  arrayofnumbers = [1,2,3,4,5,6,7,8,9,10]
  addtwo = arrayofnumbers[0]+arrayofnumbers[8]
  getmin = arrayofnumbers.min
  getmax = arrayofnumbers.max
  getminmax = arrayofnumbers.minmax
  puts addtwo
  puts getmin
  puts getmax
  puts getminmax
  puts arrayofnumbers.sample

arrayofme =['TO CODE', 'NOT TO CODE']
code = gets.chomp
puts arrayofme.sample

ourmenu = ['coke', 'coffee', 'water']
puts "what is your order?"
order = gets.chomp.to_i
puts "Here's your order #{ourmenu}"
