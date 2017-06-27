
@Mikavote = 0;
@Reggievote = 0;
@Kennethvote = 0;
@Trevorvote = 0;


def banner
  puts "Vivixx Voting System".upcase.center(80, '-')
end

@candidates = [
  { name: 'Mika', votes: @Mikavote },
  { name: 'Reggie', votes: @Reggievote },
  { name: 'Kenneth', votes: @Kennethvote},
  { name: 'Trevor', votes: @Trevorvote},
]

def showcandidates
  puts "List of candidates".upcase.center(80, '-')
  for x in 1..@candidates.length
    puts "#{@candidates[x-1][:name]}".center(80);
  end
end

def castvotes
  puts "-" * 80
  puts "Cast your votes now!".center(80)
  puts "-" * 80
end

def voter
  print "Please enter your name?".center(80)
  @namevoter = gets.chomp.center(80)
end

def voteprocess
  puts "Please enter the name of your candidate".center(80)
  @namecandidate = gets.chomp.center(80)

 voted = false
   @candidates.each do |x|
     if @namecandidate == x[:name]
       x[:votes] += 1
       voted = true
     end
   end

    if voted == true
      puts "Your vote is added"
    else
      puts "Your vote is invalid"
    end
end

gets


banner
showcandidates
castvotes
voter
voteprocess
