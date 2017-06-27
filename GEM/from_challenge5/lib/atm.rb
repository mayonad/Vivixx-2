#Create a car app which has a car and a driver
#The car should have a make, age, top_speed ang gas_tank_size
#A driver should have a name, a car, age and contact
#Use attr_accessor to set up getters and setters
#Create the app so that we can have the car's make and age output the terminal


class Car
  attr_accessor :car, :model, :top_speed, :gas_tank_size

  def initialize (car, model,top_speed, gas_tank_size)
    @car = car.to_s
    @model = model.to_s
    @top_speed = top_speed.to_i
    @gas_tank_size = gas_tank_size.to_i
  end
end

class Driver
  attr_accessor :driver, :name, :car, :age, :contact

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

  @driver1 = Driver.new("Geoff", "Honda", 20, 917910876)
  @driver2 = Driver.new("Marcus", "Toyota", 30, 859086732)
  @driver3 = Driver.new("Yosef", "Mazda", 15, 814006381)


def banner
puts %q{
  ___  ___  _ __ (_) ___  | |_| |__   ___  | |__   ___  __| | __ _  ___| |__   ___   __ _
  / __|/ _ \| '_ \| |/ __| | __| '_ \ / _ \ | '_ \ / _ \/ _` |/ _` |/ _ \ '_ \ / _ \ / _` |
  \__ \ (_) | | | | | (__  | |_| | | |  __/ | | | |  __/ (_| | (_| |  __/ | | | (_) | (_| |
  |___/\___/|_| |_|_|\___|  \__|_| |_|\___| |_| |_|\___|\__,_|\__, |\___|_| |_|\___/ \__, |
                                                              |___/                  |___/

                                                              ______
                                                      _.-*'"      "`*-._
                                                   _.-*'                  `*-._
                                                .-'                            `-.
                                     /`-.    .-'                  _.              `-.
                                    :    `..'                  .-'_ .                `.
                                    |    .'                 .-'_.' \ .                 \
                                    |   /                 .' .*     ;               .-'"
                                    :   L                    `.     | ;          .-'
                                     \.' `*.          .-*"*-.  `.   ; |        .'
                                     /      \        '       `.  `-'  ;      .'
                                    : .'"`.  .       .-*'`*-.  \     .      (_
                                    |              .'        \  .             `*-.
                                    |.     .      /           ;                   `-.
                                    :    db      '       d$b  |                      `-.
                                    .   :PT;.   '       :P"T; :                         `.
                                    :   :bd;   '        :b_d; :                           \
                                    |   :$$; `'         :$$$; |                            \
                                    |    TP              T$P  '                             ;
                                    :                        /.-*'"`.                       |
                                   .sdP^T$bs.               /'       \
                                   $$$._.$$$$b.--._      _.'   .--.   ;
                                   `*$$$$$$P*'     `*--*'     '  / \  :
                                      \                        .'   ; ;   [bug]
                                       `.                  _.-'    ' /
                                         `*-.                      .'
                                             `*-._            _.-*'
                                                  `*=--..--=*'

}
end

def driverlist
  puts "-" *80
  puts "List of Drivers".upcase
  puts "-Geoff \n-Marcus \n-Yosef"
  puts "*" *80
end

def driveroutput
  puts "-" *80
  puts "Please select the drivers"
  driver = gets.chomp
   if driver == @driver1.name
  puts "Car Model : #{@driver1.car}."
  puts "Age is #{@driver1.age}"
  puts "Contact number is #{@driver1.contact}"
  puts "-" *80
  end

  if driver == @driver2.name
 puts "Car Model : #{@driver2.car}."
 puts "Age is #{@driver2.age}."
 puts "Contact nois #{@driver2.contact}"
  end

  if driver == @driver3.name
 puts "Car Model : #{@driver3.car}"
 puts "Age is #{@driver3.age}."
 puts "Contact no is #{@driver3.contact}"
  end
end

def carlist
puts "-" *80
puts "List of cars".upcase
puts "-Honda \n-Toyota \n-Mazda"
puts "-" *80
end

def caroutput
puts "Please select on the available cars"
car = gets.chomp
   if car == @car1.car
    puts "Model is #{@car1.model} with top speed of
    #{@car1.top_speed} and tank size of #{@car1.gas_tank_size}"
   end

   if car == @car2.car
    puts "Model is #{@car2.model} with top speed of
    #{@car2.top_speed} and tank size of #{@car2.gas_tank_size}"
   end

   if car == @car3.car
    puts "Model is #{@car3.model} with \ntop speed of
   #{@car3.top_speed} and tank size of #{@car3.gas_tank_size}"
    end
    puts "-" *80
end

def x
  puts "Do you want to go to the carlist available, y or n?"
  @ans = gets.chomp.to_s
    if @ans == "y"
     carlist
     caroutput
  end
   if @ans != "y"
     driverlist
     driveroutput
   end
 end


def last
  puts "Please enter 'E' to exit. Please 'C' continue"
        @E = gets.chomp.to_s
        if @E == "C"
          driverlist
          driveroutput
        end
        if @E == "E"
          puts "EXIT"
        end
      end


def progstart
  banner
  driverlist
  driveroutput
  x
 last
 end

progstart
