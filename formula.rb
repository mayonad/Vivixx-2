def dollar
  pesotodollar = 49.45
  dollarconversion = (1 / pesotodollar.to_f).to_f
  money = 1000
   puts "My 1000 pesos is equivalent to #{money * dollarconversion}"
end

dollar


def taxi
  distance = 2600
  initialfare = 35
  puts "Taxi fare is #{initialfare + ((distance-1000)*2/400)} pesos"
end

taxi
