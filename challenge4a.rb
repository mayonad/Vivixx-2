
$total =

@selection = [
  { num: 1, name: 'BALINQUIRY'},
  { num: 2, name: 'WITHDRAW'},
  { num: 3, name: 'DEPOSIT'},
  { num: 4,name: 'QUIT'}
]

@userinfo = [firstname: 'Geoff', lastname: 'Carreon', pin: 123456, money: 500]


def showatm
  puts '-' *80
  puts "atm machine".upcase.center(80, '-')
  puts '-' *80
  puts'-' *80
  puts "Welcome to BPI, your trusted bank company".upcase.center(80, '-')
  puts'-' *80
end

def enterpin
  puts '-' *80
  puts "Please enter your 6 digit pin number".center(80, '-')
  @getpin = gets.chomp.strip.to_i
  @userinfo.each do |x|
      if @getpin == x[:pin]
      puts "Please proceed on the next step.".center(80, '-')
    end
     if @getpin != x[:pin]
      puts "Your pin is incorrect. Please try it again.".center(80, '-')
    end
  end
end

def showtrans
  puts '-' *80
  puts "Please select your transaction"
  @selection.each do |y|
    puts "#{y[:num]} . #{y[:name]}".center(80)
    end
    @ent= gets.chomp.to_i
    @selection.each do |y|
      if @ent == y[:num]
    puts "You have selected #{y[:name]}"
 end
end
end

def bal
  if @ent == 1
   @userinfo.each do |x|
   puts "Here's your balance #{x[:money]}"
   puts '-' *80
     end
   end
 end

 def withdraw
   if @ent == 2
   @userinfo.each do |x|
   puts "Your current balance is #{x[:money]} pesos."
   puts "How much do you want to withdraw?"
   @amount = gets.chomp.to_i
      currentbal = x[:money] - @amount.to_i
      puts "Your current balance is #{currentbal}"
      if x[:money] < @amount
        puts "Insufficient fund"
    puts '-' *80
      end
    end
  end
end

def deposit
  if @ent == 3
  @userinfo.each do |x|
  puts "How much do you want to deposit?"
  @amount = gets.chomp.to_i
  newbal = x[:money] + @amount.to_i
  puts "Your current balance is #{newbal}"
  puts '-' *80
end
end
end


def last
  puts "Do you want another transaction. y or n?"
  @ans = gets.chomp
  case @ans
  when "y"
    puts "Please proceed further"
  when "n"
    puts "Thank you for banking with us! Have a pleasant day!"
  end
  puts '-' *80
end

def prog
showatm
enterpin
showtrans
bal
withdraw
deposit
last
  while @ans == "y"
    showtrans
    bal
    withdraw
    deposit
    last

end
end

prog
