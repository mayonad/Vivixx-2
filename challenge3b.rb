#steps
#showcandidates
#choosecandidate
#summary

@vote = 0

def banner
  puts "Vivixx Voting System".upcase.center(80, '-')
end

@candidates = [
  { name: 'Mika', num: 1},
  { name: 'Reggie', num:2},
  { name: 'Kenneth', num: 3},
  { name: 'Trevor', num: 4}
]


def showcandidates
  puts "List of candidates. Total votes : #{@votecount}".upcase.center(80, '-')
  @candidates.each do |list|
    puts "#{list[:num]} #{list[:name]}".center(80)
  end
    puts "-" * 80
    puts "Please enter your name"
    @name = gets.chomp

    puts "Hi #{@name.upcase}. You may now cast your vote. Please enter the
    number of your candidate"
    @num = gets.chomp.to_i
end

def voteprocess
      @candidates.each do |list|
        @num = gets.2echomp.to_i
        if @num == list[:num]
    puts "You have selected #{list[:name]}. Please press 'C' if you want to continue,
    'E'if you want to End and get the winner"
    puts "-" * 80

    #countervotes
    @votecount.to_1 = gets.chomp.strip
    case @votecount == 1
    when 'Mika'
      @votes[0] += 1
      @votecount += 1
    when 'Reggie'
      @votes[1] += 1
      @votecount += 1
    when 'Kenneth'
      @votes[2] += 1
      @votecount += 1
    when 'Trevor'
      @votes[3] += 1
      @votecount[4] += 1
  end
end
end

def programstart
banner
showcandidates
voteprocess
end

programstart
