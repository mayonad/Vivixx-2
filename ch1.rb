class Candidate
  attr_accessor :name
  attr_accessor :count, :total

  def initialize(cname)
    @name = cname
    @vote = Array.new
    @count = []
  end

  def totalVotes
    sum = 0
    if @count.length > 0
      @count.each { |c| sum += c }
      @total = sum
    else
      @total = 0
    end
  end


    def castVote(vote)
      if vote.is_a?(Integer) || vote.is_a?(Float)
      @count.push(vote)
      totalVotes
    end
  end

    #Candidate
    candidate1 = Candidate.new("Donald Duck")
    #Next line is where error occurs
    candidate1.castVote(1)
    candidate1.castVote(1)

    candidate2 = Candidate.new("Minnie Mouse")
    candidate2.castVote(1)

    candidate3 = Candidate.new("Goofy")

    finalResults = Array.new
    finalResults[0] = candidate1
    finalResults[1] = candidate2


    finalResults.each { |candidate| puts "Name: " + candidate.name + "Score " + candidate.totalVotes }
end
