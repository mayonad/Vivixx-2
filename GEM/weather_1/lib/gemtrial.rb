

class Thankyou
      def initialize (language)
        @language =language
      end
end
  def menu
        puts "Please type what is your preferred language:"
        puts "Thai"
        puts "Chinese"
        puts "English"
        @language = gets.chomp
           case @language
               when "Thai"
                  puts "Sawasdee"
               when "Chinese"
                  puts "Xie Xie ni"
               when "English"
                 puts "Thank you"
               end
           end

menu
