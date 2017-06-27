#Pair up as one test writer and one implementation writer
#If you had implemented code for updating the name of a customer, what would it look like?
#Write a test for it, and run it — it should error
#Add another method to the Customer class update the name of customer
#Run the test again — it should pass, or fix the implementation until it does
#Use gets.chomp to allow a user to add customer details through the terminal
#and print the result to the terminal screen. Write a test alongside


class Leapyear
  attr_accessor :year

  def initialize (year)
    @year = 0
  end
end

  @num = Leapyear.new(0..2020)

def prog
  puts "Please enter the number"
   @num = gets.chomp.to_i
      case @num%4
      when 0
        puts "Leap year"

      else
        puts "Not leap year"
      end
    end

prog
