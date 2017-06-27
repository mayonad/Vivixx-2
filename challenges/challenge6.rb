#Dan has started his own car shop, the customers are demanding for an
#easier way to order and dress up their cars. You are to build a menu system
#that includes the price of a car, given different options like paint color, wheels etc

#list:
  #price
  #paint
  #enginetype

require 'CSV'
require 'colorize'


def banner
  puts "-"*110
  puts "Dan car menu system".upcase.center(110).black.on_white
  puts "-"*110
end

class Menu
  attr_accessor :car, :price, :paint, :enginetype
  def initialize(hash)
    @name = hash[:name]
    @car = hash[:car]
    @brand = hash[:brand]
    @price = hash[:price]
    @paint = hash[:paint]
    @enginetype = hash[:enginetype]
  end

  def self.from_csv_row(row)
  self.new({
    name: row['name'],
    car: row['car'],
    brand: row['brand'],
    price: row['price'],
    paint: row['color'],
    enginetype: row['enginetype']})
  end

   HEADERS =['name','car', 'brand','price','color','enginetype']

   def to_csv_row
     CSV::Row.new(HEADERS,[name, car, brand, price, color, enginetype])
     end
   end



   def banner
     puts "-"*110
     puts "Dan's car menu system".upcase.center(110).black.on_yellow
     puts "-"*110
   end


   choice = Menu.new({
     name: @getname,
     brand: @brand,
     car: @car,
     price: @price,
     color: @color,
     enginetype: @enginetype})


  def menu
    puts "=== Menu options ===".upcase.center(110).black.on_green
    puts "1.Type of car (SEDAN/SUV)".upcase.center(110).blue.on_white
    puts "2.Brand of car (TOYOTA/HONDA)".upcase.center(110).blue.on_white
    puts "3.Color (Black/White/Silver)".upcase.center(110).blue.on_white
    puts "4.Engine type (Auto/Manual)".upcase.center(110).blue.on_white
    puts "\n" *10
    puts "Please enter customer's name".center(110)
    print '>'.prepend(" "*50)
    @getname = gets.chomp
    puts "-" *110
    puts "Hi #{@getname.upcase} Please enter your menu option".center(110).blue
    puts "-" *110
    print '>'.prepend(" "*50)

    loop do
      @ans = gets.chomp.to_i

    case @ans
    when 1
        puts "Please enter the type of car".center(110)
        puts "Please type S if 'Sedan' and V if 'SUV'.".center(110)
        puts "-" *110
        puts "\n" *5
        print '>'.prepend(" "*50)
          @type1 = gets.chomp.to_s
            if @type1 == "S" || "s"
                puts "You have selected for SEDAN".center(110)

            elsif @type1 == "V" || "v"
               puts "You have selected for SUV".center(110)
            end



       when 2
         puts "Which brand do you want? Toyota or Honda".center(110)
         puts "Please type T for 'Toyota' and H for 'Honda'".center(110)
         puts "-" *110
         puts "\n" *5
         @type2 = gets.chomp.to_s
          if @type2 == "T" || "t"
           puts "You have selected Toyota brand".center(110)

         elsif @type2 == "H" || "h"
            puts "You have selected Honda brand".center(110)
         end #



    when 3
          puts "Which color do you prefer? (Black, White or Silver)".center(110)
          puts "Please type B for 'Black', W for 'White' and S for 'Silver'".center(110)
          puts "-" *110
          puts "\n" *5
           @type3 = gets.chomp.to_s
          if @type3 == "B" || "b"
            puts "You have selected BLACK color".center(110)

          elsif @type3 == "W"|| "w"
            puts "You have selected WHITE color".center(110)

          elsif @type3 == "S" || "s"
            puts "You have selected SILVER color".center(110)
          end #


    when 4
      puts "Which engine do you prefer? (Auto or Manual)".center(110)
      puts "Please type A for 'Auto', M for 'Manual".center(110)
      puts "-" *110
      puts "\n" *5
      @type4 = gets.chomp.to_s
      if @type4 == "A" || "a"
        puts "You have selected Automatic transmission engine".center(110)

      elsif @type4 == "M" || "m"
        puts "You have selected Manual transmission engine".center(110)
      end
    end
  end
end

  banner
  menu
