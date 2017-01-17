require_relative 'bank_account'
RSpec.describe BankAccount do
  before do
    @account = BankAccount.new
    @account.open_checking
    @account.open_saving
    @account.deposit("checking",100)

  end
    it 'getter to display bank balance' do
      expect(@account.display_checking_acct_bal).to eq(100)

    end
    it "getter to display total account balance" do
      expect(@account.display_total_acct_bal).to eq("Your combined account(s) balance is: 100")
    end
    it "setter to withdraw from user's checking account" do
      expect(@account.withdraw("checking",20)).to eq(80)
    end
    it "Should raise error if user tries to withdraw more money than what's available in their checking account" do
      expect(@account.withdraw("checking",1000)).to eq("insufficient funds")
    end
    it "Should raise error if user tries to print number of accounts they have" do
      expect{@account.num_of_accts}.to raise_error(NoMethodError)
    end
    it "Should raise error if users to set interest rates" do
      expect{@account.checking_interest_rate=1}.to raise_error(NoMethodError)
    end
    it "should raise error if user tries to set any attribute" do
      expect{@account.checking_acct_bal = 100}.to raise_error(NoMethodError)
      expect{@account.saving_acct_bal = 100}.to raise_error(NoMethodError)
      expect{@account.saving_interest_rate =1}.to raise_error(NoMethodError)
    end

end
