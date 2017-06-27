puts "Hi Guys"

def hi (name)
  puts "hi, #{name}"
  gets
end

def TimesTwo(number)
  puts "#{number} X 2 = #{number*2}"
end

TimesTwo(2)
TimesTwo(5)
TimesTwo(1)
TimesTwo(100)



counter = 0

while counter < 10 do
  puts counter
  counter +=1
end
