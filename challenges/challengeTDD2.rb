class InvalidNameError < StandardError
end

def validate_name(num)
  @num = gets.chomp
  raise InvalidNameError, "The #{@num}' is a leap year"
end

begin
  validate_name(2018)
  validate_name(' ')
rescue InvalidNameError => e
  puts e.message
end
