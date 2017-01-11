class BankAccount
  # attr_accessor :total_accounts
  attr_accessor :account_number
  @@total_accounts = 0
  def initialize
    @account_number = rand(10 ** 10)
    @checking_balance = 0
    @savings_balance = 0
    @total_balance = 0
    @@total_accounts += 1
  end
  def checking_balance
    @checking_balance
  end
  def savings_balance
    @savings_balance
  end
  def deposit_checking amount
      @checking_balance += amount
      self
  end
  def deposit_savings amount
      @savings_balance += amount
      self
  end
  def withdraw_checking amount
    if amount > @checking_balance
      puts "Insufficient funds available"
    else
      @checking_balance -= amount
    end
  end
  def withdraw_savings amount
    if amount > @savings_balance
      puts "Insufficient funds available"
    elsif  @savings_balance -= amount
    self
    end
  end
  def view_total
    @total_balance = @checking_balance + @savings_balance
    @total_balance
  end
  def account_information
   "Interest rate: %d" % interest_rate
   "Account number: %s" % @account_number
   "Total money: %d" % @total_balance
   "Checking balance: %d" % @checking_balance
   "Savings balance: %d" % @savings_balance
  end
  private
  attr_accessor :interest_rate
  def account_number
    @account_number
  end
end

mine = BankAccount.new

# mine.total_accounts

# puts mine.deposit_savings(50)
#
# puts mine.withdraw_savings(25)
#
# puts mine.savings_balance
#
# puts mine.deposit_checking(150)
#
# puts mine.checking_balance
#
# puts mine.view_total
#
# puts mine.account_information
