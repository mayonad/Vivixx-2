#Parking app


require 'CSV'
require 'colorize'
require 'color-console'
require 'io/console'
require 'terminal-table'



class Parking
  attr_accessor :driver, :space, :owner, :price, :username, :password
  def initialize(hash)
    @driver = hash[:driver]
    @space = hash[:space]
    @owner = hash[:owner]
    @price = hash[:price]
    @username = hash[:username]
    @password = hash[:password]
  end


  def self.from_lots_row(row)
  self.new({
    driver: row['driver'],
    space: row['space'],
    owner: row['owner'],
    price: row['price'],
    username:row['username'],
    password: row['password']})
  end

 HEADERS =['driver','space','owner','price','username','password']

 def to_csv_row
   CSV::Row.new(HEADERS,[driver,space,owner,price,username,password])
   end
 end

 lot = Parking.new({
   driver: @driver,
   space: @space,
   owner: @owner,
   price: @price,
   username: @username,
   password: @password})


def logo
  system 'cls'
  puts %q{
                            ^    ^    ^    ^       ^    ^    ^    ^
                           /J\  /U\  /S\  /T\     /P\  /A\  /R\  /K\
                          <___><___><___><___>   <___><___><___><___>

                                  ___..................____.
                            _..--''~_______   _____...----~~~\\
                        __.'    .-'~       \\~      [_`.7     \\
                  .---~~      .'            \\           __..--\\_
                 /             `-._          \\   _...~~~_..---~  ~~~~~~~~~~~~--.._
                \              /  ~~~~~~----_\`-~_-~~__          ~~~~~~~---.._    ~--.__
                 \     _       |==            |   ~--___--------...__          `-   _.--"""|
                  \ __/.-._\   |              |            ~~~~--.  `-._ ___...--~~~_.'|_Y |
                   `--'|/~_\\  |              |     _____           _.~~~__..--~~_.-~~~.-~/
                   | ||| |\\_|__            |.../.----.._.        | Y |__...--~~_.-~  _/
                   ~\\\ || ~|..__---____   |||||  .'~-. \\       |_..-----~~~~   _.~~
                   \`-'/ /     ~~~----...|'''|  |/"_"\ \\   |~~'           __.~
                   `~~~'                 ~~-:  ||| ~| |\\  |        __..~~
                                            ~~|||  | | \\/  _.---~~
                                              \\\  //  | ~~~
                                               \`-'/  / dp
                                               `~~~~'
              }.black.on_white

  puts "\n"
  puts"  ╔══════════╗         ╔═══════════╗         ╔══════════╗   ".center(110).black.on_yellow
  puts"  ║  [V]iew  ║         ║[R]egister ║         ║  [L]ogin ║   ".center(110).black.on_yellow
  puts"  ╚══════════╝         ╚═══════════╝         ╚══════════╝   ".center(110).black.on_yellow
  print "\n\n"

puts "\n"
puts ">>>PLEASE ENTER THE LETTER TO START<<<".center(110)
  @option = STDIN.getch
  case @option
  when @option == ?R || ?r
    register
    login
  when @option == ?L || ?l
    login
  when @option == ?V || ?v
    view
  end
end


def login
    system "cls"
    print "\n" *20
    puts "="*110
    print"Enter your username".prepend.center(110)
    print '>'.prepend(" "*50)
    @username = gets.chomp
    puts "="*110
    print "\n"
    puts "="*110
    puts"Please enter your password".prepend.center(110)
    print '>'.prepend(" "*50)
    @password = STDIN.noecho(&:gets).chomp
     password_check
    print "\n"
    puts "="*110
    puts "Please enter your full name".upcase.center(110)
    print '>'.prepend(" "*50)
    @owner = gets.chomp.strip
    print "\n"
    puts "="*110
    puts "Please enter the location".upcase.center(110)
    print '>'.prepend(" "*50)
    @space = gets.chomp.strip
    print "\n"
    puts "="*110
    puts "Please enter the price".center(110)
    print '>'.prepend(" "*50)
    @price = gets.chomp.to_i
    print "\n"
    puts "="*110
  end

def register
   system "cls"
   print "\n" *80
   puts "="*110
   puts "Please create an account..".prepend.center(110)
   puts "="*110
   print "\n"
   puts "="*110
   puts "Enter your username".prepend.center(110)
   print '>'.prepend(" "*50)
   @username = gets.chomp
     username_check
   puts "="*110
   print "\n"
   puts "Enter your password".center(110)
   print '>'.prepend(" "*50)
   @password = gets.chomp
   print "\n" *20
   puts "="*110
   puts "Registration successful".upcase.center(110).black.on_white
   puts "="*110

   lot = Parking.new({
     driver: @driver,
     space: @space,
     owner: @owner,
     price: @price,
     username: @username,
     password: @password})

     CSV.foreach('practice1.csv', headers:true) do |row|
     if @username != lot.username
       CSV.open('practice1.csv', 'a+') do |csv|
       csv << lot.to_csv_row
         end
     end
   end
 end


 def username_check
   lot = Parking.new({
     driver: @driver,
     space: @space,
     owner: @owner,
     price: @price,
     username: @username,
     password: @password})
      CSV.foreach('practice1.csv', headers:true) do |row|
      end
            if @username == lot.username
                puts "Your username already exists. Please create a new one".center(110)
                puts "Please enter your new username again".center(110)
                print '>'.prepend(" "*50)
                @username = gets.chomp
            end
            if @username != lot.username
               puts "You are logged in already"
            end
    end

 def password_check
   CSV.foreach('practice1.csv', headers:true) do |row|
     lot = Parking.from_lots_row(row)
     if @password != lot.password
       puts "Please reconfirm your password again".center(110)
       print '>'.prepend(" "*50)
       @password = gets.chomp
     end
   end
 end


#def view
  #CSV.foreach('practice1.csv', headers:true) do |row|
  #lot = Parking.from_lots_row(row)
  #@driver1 = lot.driver
  #@space1 = lot.space
  #@owner1 = lot.owner
  #@price1 = lot.price

  #table = Terminal::Table.new :title => "PARKING SPACE LIST",
  #:headings => ['DRIVER','LOCATION','OWNER','PRICE'],
  #:rows => rows
       #rows << [@driver1,@space1,@owner1,@price1]
  #puts table
#end
#end

logo
