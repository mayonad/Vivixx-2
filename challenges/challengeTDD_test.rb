#Pair up as one test writer and one implementation writer
#If you had implemented code for updating the name of a customer, what would it look like?
#Write a test for it, and run it — it should error
#Add another method to the Customer class update the name of customer
#Run the test again — it should pass, or fix the implementation until it does
#Use gets.chomp to allow a user to add customer details through the terminal
#and print the result to the terminal screen. Write a test alongside


require 'test/unit'

require_relative 'challengeTDD'

class Customertest < Test::Unit::TestCase

  def test_year
    num = Leapyear.new(0..2020)
    assert_equal(0, num.year)
  end

end
