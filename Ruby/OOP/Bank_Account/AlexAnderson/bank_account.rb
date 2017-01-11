class BankAccount
  attr_accessor :saving_acct, :saving_acct_bal, :checking_acct, :checking_acct_bal
  @@no_of_accts = 0
  # def initialize
  #   # @saving_acct = gen_acct
  #   # @saving_acct_bal = 0
  #   # @checking_acct = gen_acct
  #   # @checking_acct_bal =0
  # end
  def open_saving
    @saving_acct = gen_acct
    @saving_acct_bal = 0
    @saving_interest_rate = 0.05
    @@no_of_accts += 1
    self
  end
  def open_checking
    @checking_acct = gen_acct
    @checking_acct_bal = 0
    @checking_interest_rate = 0.025
    @@no_of_accts += 1
    self
  end
  def display_saving_acct
    return @saving_acct
  end
  def display_checking_acct
    return @checking_acct
  end
  def display_saving_acct_bal
    return @saving_acct_bal
  end
  def display_checking_acct_bal
    return @checking_acct_bal
  end
  def display_acct_info
  puts "Your saving account interest rate: #{@saving_interest_rate}"
  puts "Your saving account balance is: #{@saving_acct_bal + (@saving_acct_bal * saving_interest_rate)}"
  puts "Your checking account interest rate: #{@checking_interest_rate}"
  puts "Your checking account balance is: #{@checking_acct_bal + (@checking_acct_bal * checking_interest_rate)}"
  puts "Your combined account(s) balance is: #{@saving_acct_bal + (@saving_acct_bal * saving_interest_rate)+ @checking_acct_bal +(@checking_acct_bal * checking_interest_rate) }"
  end
  def num_of_accts
    "You have #{@@no_of_accts} account(s)"
  end
  def deposit account, sum
    if account == "checking"
      @checking_acct_bal += sum
    elsif account == "saving"
      @saving_acct_bal += sum
    else
      puts "Please select a valid account"
    end
    self
  end
  def withdraw account, sum
    if account == "checking" && @checking_acct_bal > sum
      @checking_acct_bal = @checking_acct_bal - sum
    elsif account == "saving" && @saving_acct_bal > sum
      @saving_acct_bal = @saving_acct_bal - sum
    else
      puts "insufficient funds"
    end
    self
  end
  private
    def gen_acct
      @acct = rand.to_s[2..11]
    end
    attr_accessor :saving_interest_rate, :checking_interest_rate

end

x = BankAccount.new

puts x.open_saving.display_saving_acct_bal
puts x.num_of_accts
puts x.deposit("saving",100).display_saving_acct_bal
puts x.withdraw("saving",50).display_saving_acct_bal
puts x.open_checking.display_checking_acct_bal
puts x.num_of_accts
puts x.deposit("checking",100).display_checking_acct_bal
puts x.withdraw("checking",20).display_checking_acct_bal

puts x.display_acct_info
