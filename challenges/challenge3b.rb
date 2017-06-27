


def banner
  system 'cls'
  puts puts %q{
    8b           d8  88               88                               88888888888  88                                   88
    `8b         d8'  ""               ""                               88           88                            ,d     ""
     `8b       d8'                                                     88           88                            88
      `8b     d8'    88  8b       d8  88  8b,     ,d8  8b,     ,d8     88aaaaa      88   ,adPPYba,   ,adPPYba,  MM88MMM  88   ,adPPYba,   8b,dPPYba,
       `8b   d8'     88  `8b     d8'  88   `Y8, ,8P'    `Y8, ,8P'      88"""""      88  a8P_____88  a8"     ""    88     88  a8"     "8a  88P'   `"8a
        `8b d8'      88   `8b   d8'   88     )888(        )888(        88           88  8PP"""""""  8b            88     88  8b       d8  88       88
         `888'       88    `8b,d8'    88   ,d8" "8b,    ,d8" "8b,      88           88  "8b,   ,aa  "8a,   ,aa    88,    88  "8a,   ,a8"  88       88
          `8'        88      "8"      88  8P'     `Y8  8P'     `Y8     88888888888  88   `"Ybbd8"'   `"Ybbd8"'    "Y888  88   `"YbbdP"'   88       88


}
end

@totalvotes = 1

@candidates = [
  { name: 'Mika', num: 1, votes: 0},
  { name: 'Reggie', num:2, votes: 0},
  { name: 'Kenneth', num: 3, votes: 0},
  { name: 'Trevor', num: 4, votes: 0}
]


def showcandidates
  puts "List of candidates".upcase.center(156, '-')
  puts "Total Votes:#{@totalvotes}".upcase.center(156, '-')
    @candidates.each do |list|
    puts "#{list[:num]} #{list[:name]}".center(156)
  end
    puts "\n"*50 ###
    gets
    puts "Please enter your name".center(156, '-')
   @name = gets.chomp
      puts "#{@name.upcase}!".center(156, '-')
      puts "You may now cast your vote. Please enter the number of your candidate".center(156, '-')
  @ent = gets.chomp.to_i
  @candidates.each do |list|
  if @ent.to_i == list[:num]
      puts "You have selected #{list[:name]}. Your vote is counted".center(156)
            list[:votes] += 1
            @totalvotes += 1
    end
  end
end

def voteprocess
  puts "Next voter, y or n".center(156)
    @ans = gets.chomp
    while @ans == "y"
      @ans = gets.chomp
       puts " " * 50
         showcandidates
         voteprocess
       end

    if @ans == "n"
      @ans = gets.chomp
    end
    votesum
  end

def votesum
  puts "Tally of votes".upcase.center(156, '-')
  @candidates.each do |list|
    puts "#{list[:name]} is #{list[:votes]}".center(156)
  end
end

def progstart
banner
showcandidates
voteprocess
end

progstart
