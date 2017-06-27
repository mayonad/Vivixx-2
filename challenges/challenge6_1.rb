#Dan has started his own car shop, the customers are demanding for an
#easier way to order and dress up their cars. You are to build a menu system
#that includes the price of a car, given different options like paint color, wheels etc

#list:
  #price
  #paint
  #enginetype

require 'CSV'
require 'colorize'


class Menu
  attr_accessor :name, :car, :brand, :color, :enginetype
  def initialize(hash)
    @name = hash[:name]
    @car = hash[:car]
    @brand = hash[:brand]
    @color = hash[:color]
    @enginetype = hash[:enginetype]
  end

  def self.from_csv_row(row)
    self.new({
    name: row['name'],
    car: row['car'],
    brand: row['brand'],
    color: row['color'],
    enginetype: row['enginetype']
    })
  end

   HEADERS =['name','car', 'brand','color','enginetype']

   def to_csv_row
     CSV::Row.new(HEADERS,[name, car, brand, color, enginetype])
   end
   end

   choice = Menu.new({
     name: @name,
     car: @car,
     brand: @brand,
     color: @color,
     enginetype: @enginetype})


   def banner
     puts "-"*110
     puts "Car shop".upcase.center(110).black.on_yellow
     puts "-"*110
   end

  def menu
    puts "Please enter customer's name".center(110).blue.on_white
    print '>'.prepend(" "*50)
    @name = gets.chomp
    puts "-" *110

    choice = Menu.new({
      name: @name,
      car: @car,
      brand: @brand,
      color: @color,
      enginetype: @enginetype})

      CSV.foreach('challenge6.csv', headers:true) do |row|
        choice = Menu.from_csv_row(row)
            if @name != choice.name
              puts "Hi #{@name.upcase}".center(110).black.on_white

            elsif @name == choice.name
              puts "Username exists already".upcase.center(110).black.on_white

            end
          end
        end



  def process
    puts "\n" *20
    puts "Which type of car do you like?".center(110)
    puts "Please type the number".center(110)
    puts "-" *110
    puts "1. Sedan".center(110).black.on_white
    puts "2. SUV".center(110).black.on_white
    puts "-" *110
    print '>'.prepend(" "*50)
       @car = gets.chomp.to_i

          if @car == 1
             puts "You have selected SEDAN".center(110)
          else
             puts "You have selected SUV".center(110)
          end

     puts "\n" *30
     puts "Which brand do you want (Toyota or Honda)".center(110)
     puts "Please type the number".center(110)
     puts "1. Toyota".center(110).black.on_white
     puts "2. Honda".center(110).black.on_white
     print '>'.prepend(" "*50)
     @brand = gets.chomp.to_i
        if @brand == 1
        puts "You have selected Toyota".center(110)
       else
        puts "You have selected Honda".center(110)
        end


  puts "\n" *30
  puts "Which color do you prefer?".center(110)
  puts "Please type the number".center(110)
  puts "1. Black".center(110).black.on_white
  puts "2. White".center(110).black.on_white
  puts "3. Silver".center(110).black.on_white
  print '>'.prepend(" "*50)
    @color= gets.chomp.to_i

    if @color== 1
      puts "You have selected color BLACK".center(110)
    elsif @color == 2
      puts "You have selected color WHITE".center(110)
    elsif @color == 3
      puts "You have selected color SILVER".center(110)
    end


puts "\n" *30
puts "Which transmission engine do you prefer".center(110)
puts "Please type the number".center(110)
puts "1. Automatic".center(110).black.on_white
puts "2. Manual".center(110).black.on_white
print '>'.prepend(" "*50)
  @enginetype = gets.chomp.to_i

 if @enginetype == 1
   puts "You have selected AUTOMATIC transmission".center(110)
 elsif @enginetype == 2
   puts "You have selected MANUAL transmission".center(110)
  end
end


def total
  puts "\n" *15
  puts "Here's your selection, #{@name.upcase}:".upcase.center(110)
  puts "-" * 110
  puts "#{@car}".center(110).black.on_white
      if @car == 1
        puts "SEDAN".center(110)
      else
        puts "SUV".center(110)
      end
  puts "#{@brand}".center(110).black.on_white
     if @brand == 1
         puts "TOYOTA".center(110)
      else
        puts "HONDA".center(110)
       end
  puts "#{@color}".center(110).black.on_white
     if @color == 1
       puts "BLACK".center(110)
     elsif @color == 2
       puts "WHITE".center(110)
     elsif @color == 3
       puts  "SILVER".center(110)
     end
  puts "#{@enginetype}".center(110).black.on_white
     if @enginetype == 1
       puts "AUTOMATIC".center(110)
     else
       puts "MANUAL".center(110)
     end
   end

def continue
  puts "\n" * 15
  puts "Please proceed transaction, y or n?".center(110)
  print '>'.prepend(" "*50)
    @resp = gets.chomp
       if @resp == "y"
         puts "Your transaction completed".upcase.center(110).black.on_yellow

         choice = Menu.new({
           name: @name,
           car: @car,
           brand: @brand,
           color: @color,
           enginetype: @enginetype})

            CSV.open('challenge6.csv', 'a+') do |csv|
             csv << choice.to_csv_row
            end

       elsif @resp == "n"
        puts "Go back to menu list again".upcase.center(110).black.on_yellow
         puts "\n" *20
         process
         total
         continue
       end
end

def review
  puts "Do you want to review your transaction".center(110)
  puts "Please input y if you want to proceed and n if you want to exit".center(110)
  print '>'.prepend(" "*50)
  @ans = gets.chomp
  case @ans
  when  "y"
         puts "Please enter your name".center(110)
         print '>'.prepend(" "*50)
           @name = gets.chomp
            puts "Here's your selection, #{@name.upcase}:".upcase.center(110)
              puts "-" * 110

                CSV.foreach('challenge6.csv', headers:true) do |row|
                       choice = Menu.from_csv_row(row)

                  if @name == choice.name
                       puts "#{@car}".center(110).black.on_white
                           if @car == 1
                               puts "SEDAN".center(110)
                           else
                               puts "SUV".center(110)
                           end
                       puts "#{@brand}".center(110).black.on_white
                           if @brand == 1
                                puts "TOYOTA".center(110)
                           else
                                puts "HONDA".center(110)
                            end
                      puts "#{@color}".center(110).black.on_white
                           if @color == 1
                                puts "BLACK".center(110)
                          elsif @color == 2
                                puts "WHITE".center(110)
                          elsif @color == 3
                                puts "SILVER".center(110)
                          end
                   puts "#{@enginetype}".center(110).black.on_white
                         if @enginetype == 1
                               puts "AUTOMATIC".center(110)
                         else
                               puts "MANUAL".center(110)
                         end
                       end

      when "n"
       puts "Transaction Completed".upcase.center(110)
     end
   end
 end
 end




  banner
  menu
  process
  total
  continue
  review
