
require 'test/unit'

require_relative 'customer'

class Customertest < Test::Unit::TestCase

def test_first_name
  customer = Customer.new('John', 'Smith', 57)
  assert_equal('John', customer.first_name)
end

def test_full_name
  customer = Customer.new('John', 'Smith', 57)
  assert_equal('John Smith', customer.full_name)
end

def test_last_name
  customer = Customer.new('John', 'Smith', 57)
  assert_equal('Smith', customer.last_name)
end
def age
  customer = Customer.new('John', 'Smith', 57)
  assert_equal('57', customer.age)
end
end
