class Classmate
  def initialize (name,gender, grade)
    @name = name.to_s
    @gender = gender.to_s
    @grade = grade.to_i
end

def about
  puts "+" *20
  puts "#{@name} is #{@gender}"
  if @gender == 'Female'
    puts "Her grade is #{@grade}"
end
if @gender == 'Male'
  puts "His grade is #{@grade}"

end
puts '+' *20
end
end

classmate1 = Classmate.new('William', 'Male', 90)
classmate2 = Classmate.new('Grail', 'Female', 70)
puts "What's your new classmate's name?"
xname = gets.chomp
puts "Gender?"
xgender = gets.chomp
puts "Grade?"
xgrade = gets.chomp
classmate3 = Classmate.new(xname, xgender, xgrade)

classmate1.about
classmate2.about
classmate3.about

gets
