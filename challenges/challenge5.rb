#Create a banking app, to get customer details : name, email, account, address,
#contact
#Calculate and display balance
#Use attr_accessor to set up the setters & getters

class Bank
  attr_accessor :name, :email, :account, :address, :contact, :balance

  def initialize (name, email, account, address, contact, balance)
    @name = name
    @email = email
    @account = account
    @address = address
    @contact = contact
    @balance = balance
  end
end

@jeff = Bank.new("Geoff","jcwesterndigital",1234,"Megatower",9174910876, 100)

def output
puts "Customer name : #{@jeff.name}"
puts "Email add : #{@jeff.email}"
puts "Account number : #{@jeff.account}"
puts "Address : #{@jeff.address}"
puts "Contact No : #{@jeff.contact}"
puts "Balance : #{@jeff.balance}"


end


output


gets

class Car
  attr_accessor :car

  def initialize (car, model,top_speed, gas_tank_size)
    @car = car.to_s
    @model = model.to_s
    @top_speed = top_speed.to_i
    @gas_tank_size = gas_tank_size.to_i
  end
end

class Driver
  attr_accessor :driver

  def initialize (name, car, age, contact)
    @name = name.to_s
    @car = car.to_s
    @age = age.to_i
    @contact = contact.to_i
  end
end

  @car1 = Car.new("Honda","City", 140, 35)
  @car2 = Car.new("Toyota", "Altis", 100, 20)
  @car3 = Car.new("Mazda","CX5", 300, 40)

  @driver1 = Driver.new("Geoff", "Honda", 20, 914910876)
  @driver2 = Driver.new("Marcus", "Toyota", 30, 859086732)
  @driver3 = Driver.new("Yosef", "Mazda", 15, 814006381)

def list
  puts "List of Drivers".upcase
  puts "-Geoff \n-Marcus \n-Yosef"
  puts "*" *80
end

def driveroutput
      puts "Car Model : #{@driver1.name}. \nAge is #{@driver1.age}. \nContact
      number is #{@driver1.contact}"
    end

    list
    driveroutput
