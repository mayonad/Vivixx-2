#ATM

class Bank

  def initialize (pin, fname, lname, money)
    @pin = pin.to_i
    @fname = fname.to_s
    @lname = lname.to_s
    @money = money.to_i
  end

  def about
  puts "The owner of this account is #{@fname} #{@lname} with pin #{@pin}.
    He have total of #{@money} in his account"
  end
end


  account1 = Bank.new(123456,'Geoff','Carreon',500)

    account1.about
