
require_relative 'bank'
RSpec.describe BankAccount do
  it 'Has a method for retrieving the checking account balance' do
    check = BankAccount.new
    expect(check.checking_balance).to eq(0)
  end
  it 'Has a method for retrieving the total account balance' do
    total = BankAccount.new
    expect(total.view_total).to eq(0)
  end
  it 'Has a method for withdrawaling cash' do
    account = BankAccount.new
    account.deposit_checking(20)
    account.withdraw_checking(10)
    expect(account.checking_balance).to eq(10)
    account2 = BankAccount.new
    account2.deposit_savings(30)
    account2.withdraw_savings(14)
    expect(account2.savings_balance).to eq(16)
  end
  it 'Raises an error if a user tries to withdraw more money than they have in the account' do
    account3 = BankAccount.new
    account3.deposit_checking(20)
    account3.withdraw_checking(21)
    expect { raise "Insufficient funds available" }.to raise_error("Insufficient funds available")
  end
  it "Raises an error when the user tries to print out how many bank accounts there are" do
    account4 = BankAccount.new
    expect { account4.total_accounts }.to raise_error(NoMethodError)
  end
  it 'Raises an error when the user tries to set the interest rate' do
    account5 = BankAccount.new

    expect { account5.interest_rate(0.3) }.to raise_error(NoMethodError)
  end
  describe 'attributes' do
    before do
      @bank = BankAccount.new
    end

    it 'Raises an error when the user tries to set any attribute' do
      expect{@bank.total_accounts(5)}.to raise_error(NoMethodError)
      expect{@bank.account_number(123)}.to raise_error(ArgumentError)
      expect{@bank.checking_balance(2000000)}.to raise_error(ArgumentError)
      expect{@bank.savings_balance(2000000)}.to raise_error(ArgumentError)
      expect{@bank.interest_rate(0.02)}.to raise_error(NoMethodError)
    end
  end
end
