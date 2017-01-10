class BankAccount
  @@total_accounts = 0
  def initialize
    @account_number = rand(10 ** 10)
    @checking_balance = 0
    @savings_balance = 0
    @total_balance = 0
    @@total_accounts += 1
  end
  def checking_balance
    puts "#{@checking_balance}"
    self
  end
  def savings_balance
    puts "#{@savings_balance}"
    self
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
    elsif  @checking_balance -= amount
    self
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
    puts "#{@total_balance}"
    self
  end
  def account_information
    puts "Interest rate: %d" p interest_rate
    puts "Account number: %s" % @account_number
    puts "Total money: %d" % @total_balance
    puts "Checking balance: %d" % @checking_balance
    puts "Savings balance: %d" % @savings_balance
    self
  end
  private
  def account_number
    puts "#{@account_number}"
    self
  end
  attr_accessor :interest_rate
end

mine = BankAccount.new

puts mine.deposit_savings(50)

puts mine.withdraw_savings(25)

puts mine.savings_balance

puts mine.deposit_checking(150)

puts mine.checking_balance

puts mine.view_total

puts mine.account_information
